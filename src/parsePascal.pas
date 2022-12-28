// ----------------------------------------------------------------
// This file is part of Pascal-Engine RTL.
//
// (c) Copyright 2022 Jens Kallup - <paule32.jk@gmail.com>
// all rights reserved.
//
// only for non-profit, and/or education usage !!!
// ----------------------------------------------------------------
unit parsePascal;

interface

uses
  Windows,
  Classes, Contnrs, SysUtils, Forms, SynEdit, Dialogs,
  parseExceptions;

type
  pascalTokenContext = (
      tokenUnknown,
      tokenWHITESPACE,
      tokenCOMMA,
      tokenIDENT,
      tokenPARAMETER
  );

  pascalParameterType = (
      paramBoolean,
      paramInteger,
      paramString
  );

type
  TpascalParser = class
  private
    FSourceCode   : WideString;
    FStream       : TMemoryStream;
    FFileStream   : TFileStream;
    FFolderOut    : String;
    FModuleName   : String;

    FImportDesc   : TStringList;
    FHintNames    : TStringList;
    FImportByName : TStringList;
    FHintNameIAT  : TStringList;
    FUsedDLL      : TStringList;

    FCodeBase     : TStringList;
    FDataBase     : TStringList;


    line_col  : Integer;
    line_row  : Integer;

  public
    function Parse: Boolean;
    function Run  : Boolean;

    constructor Create(AStr: TSynEdit);
    destructor Destroy; override;
  end;

var
  pascalAST: TObjectList;

implementation
uses Unit2, MiscTools;

var
  TokenKeywords : Array[1..7] of String = (
     'unit',
     'program',
     'library',
     'begin',
     'end',
     'procedure',
     'function'
  );

constructor TpascalParser.Create(Astr: TSynEdit);
var
   wc: WideChar;
   i: Integer;
begin
   inherited Create;

   // save source text to memory stream:
   try
      // check temporary directory, where the assembler, and
      // program output code goes.
      // is it not exists, then we try to create it.
      // can not be created => exception.
      FFolderOut := ExtractFilePath(Application.ExeName);
      FFolderOut := FFolderOut + 'temp';
      if not DirectoryExists(FFolderOut) then
      CreateDir(FFolderOut);

      // commonly, memory access is faster than
      // disk io like "read", so we use memory:
      FStream := TMemoryStream.Create;
      FStream.Clear;

      // Append Null-Line, if line ends with 0:
      // and save the source text to mem stream
      AStr.Lines.Add('');
      AStr.Lines.SaveToStream(FStream);

      // seek to first offset
      FStream.Seek(0,0);

      // AnsiString ref. first Byte:
      FStream.Read(wc,sizeof(WideChar));


      // prepare output file: import descriptor's
      FImportDesc   := TStringList.Create;
      FHintNames    := TStringList.Create;
      FImportByName := TStringList.Create;
      FHintNameIAT  := TStringList.Create;
      FUsedDLL      := TStringList.Create;

      with FImportDesc do
      begin
        Add('_import_descriptor kernel32.dll');
        Add('_import_descriptor msvcrt.dll'  );
        Add('istruc IMAGE_IMPORT_DESCRIPTOR' );
        Add('iend');
        Add('_d'  );
      end;

      with FHintNames do
      begin
        Add('kernel32.dll_hintnames dd hnExitProcess - IMAGEBASE, 0');
        Add('msvcrt.dll_hintnames   dd hnprintf - IMAGEBASE, 0');
        Add('_d');
      end;

      with FImportByName do
      begin
        Add('hnExitProcess _IMAGE_IMPORT_BY_NAME ''ExitProcess''');
        Add('hnprintf      _IMAGE_IMPORT_BY_NAME ''printf''');
        Add('_d');
      end;

      with FHintNameIAT do
      begin
        Add('kernel32.dll_iat:');
        Add('__imp__ExitProcess dd hnExitProcess - IMAGEBASE');
        Add('dd 0');

        Add('msvcrt.dll_iat:');
        Add('__imp__printf dd hnprintf - IMAGEBASE');
        Add('dd 0');
        Add('_d');
      end;

      with FUsedDLL do
      begin
        Add('kernel32.dll db ''kernel32.dll'', 0');
        Add('msvcrt.dll   db ''msvcrt.dll'', 0');
        Add('_d');
      end;

      // the follow list hold the code
      FCodeBase := TStringList.Create;
      with FCodeBase do
      begin
        Add('push 0');
        Add('call [__imp__ExitProcess]');
      end;

      // the follow list hold the data
      FDataBase := TStringList.Create;
      with FDataBase do
      begin
      end;
   except
      on E: Exception do
      begin
         ShowMessage('Error: internal memory error.' + #13#10+
         E.Message);
         Exit;
      end;
   end;
end;

destructor TpascalParser.Destroy;
begin
  pascalAST.Clear;
  pascalAST.Free;

  // clear/free output code lists ...
  FImportDesc  .Clear; FImportDesc  .Free;
  FHintNames   .Clear; FHintNames   .Free;
  FImportByName.Clear; FImportByName.Free;
  FHintNameIAT .Clear; FHintNameIAT .Free;
  FUsedDLL     .Clear; FUsedDLL     .Free;

  FCodeBase.Clear; FCodeBase.Free;
  FDataBase.Clear; FDataBase.Free;

  inherited Destroy;
end;

function TpascalParser.Parse: Boolean;
var
  ident: WideString;
  wc, lastChar: WideChar;
  i: Integer;
  haveError : Boolean;

  // get a char from input stream:
  function _getch: WideChar;
  begin
     result := WideChar(0);

     if FStream.Position >= Fstream.Size then
     raise ENoError.Create('no errora');

     // read new charcter:
     FStream.Read(wc,sizeof(WideChar));
     line_col := line_col + 1;

     // save last character:
     lastChar := wc;

     if wc = WideChar(#32) then
     begin
        result := wc;
        exit;
     end else

     if wc = WideChar(#09) then
     begin
        line_col := line_col + 8;
        result := wc;
        exit;
     end else

     if wc = WideChar(#10) then
     begin
        line_row := line_row + 1;
        line_col := 1;
        result := wc;
        exit;
     end else

     if wc = WideChar(#13) then
     begin
        FStream.Read(wc,sizeof(WideChar));

        if wc <> WideChar(#10) then
        raise Exception.Create('line ending error.');

        line_row := line_row + 1;
        line_col := 1;

        result := wc;
        exit;
     end;

     result := wc;
  end;

  function ungetch: WideChar;
  begin
     line_col := line_col - 1;
     if line_col < 1 then
        line_col := 1;

     FStream.Seek(
     FStream.Position - sizeOf(WideChar),
     soFromBeginning);

     result := wc;
  end;

  // get a char from input stream:
  function getch: WideChar;
  begin
     while true do
     begin
        wc := _getch;
        if wc = WideChar('(') then
        begin
           wc := _getch;
           if wc = WideChar('*') then  // pascal comment
           begin
              while true do
              begin
                 wc := _getch;
                 if wc = WideChar('*') then
                 begin
                    wc := _getch;
                    if (wc = WideChar(')')) then break;
                 end;
              end;
              Continue;
           end else
           begin
             ShowMessage('todo pas comment');
           end;
        end else
        if wc = WideChar('/') then
        begin
           wc := _getch;
           if wc = WideChar('*') then  // c   comment
           begin
              while true do
              begin
                 wc := _getch;
                 if wc = WideChar('*') then
                 begin
                    wc := _getch;
                    if (wc = WideChar('/')) then break;
                 end;
              end;
              continue;
           end else
           if wc = WideChar('/') then  // c++ comment
           begin
              while true do
              begin
                 FStream.Read(wc,sizeof(WideChar));
                 if FStream.Position >= FStream.Size then
                    break else
                 if (wc = WideChar(#10)) then
                 begin
                    line_col := 1;
                    break;
                 end else
                 if (wc = WideChar(#13)) then
                 begin
                    line_col := 1;
                    break;
                 end;
              end;
           end;
        end else
        begin
          result := wc;
          exit;
        end;
     end;
     result := WideChar(0);
  end;

  function isWhiteSpace(id: WideChar): Boolean;
  begin
     if (id = WideChar(#09)) or (id = WideChar(#10))
     or (id = WideChar(#13)) or (id = WideChar(#32)) then
     result := true else
     result := false;
  end;

  function isAlphaNum(id: WideChar): Boolean;
  begin
     if ((id >= WideChar('A')) and (id <= WideChar('Z')))
     or ((id >= WideChar('a')) and (id <= WideChar('z')))
     or ((id >= WideChar('0')) and (id <= WideChar('9')))
     or ((id >= WideChar('_'))) then
     result := true else
     result := false;
  end;

  function expect(tc: pascalTokenContext): Boolean;
  begin
     result := false;
     if (tc = tokenIDENT) then
     begin
        ident := ident + wc;
        while true do
        begin
           wc := _getch;
           if isWhiteSpace(wc) then
           begin
              wc := ungetch;
              break;
           end else
           if isAlphaNum  (wc) then
           begin
              ident := ident + wc;
              continue;
           end else
           begin
              ungetch;
              break;
           end;
        end;
        result := true;
     end else
     if (tc = tokenWHITESPACE) then
     begin
        wc := _getch;
        if not (wc in [
        WideChar(#32),WideChar(#10),WideChar(#09)]) then
        raise Exception.Create('white space expected.');
        result := true;
     end else
     if (tc = tokenCOMMA) then
     begin
        while true do
        begin
           wc := getch;
           if (wc = WideChar(',')) then
           begin
              result := true;
              exit;
           end else
           if (wc in [WideChar(#32),WideChar(#10),WideChar(#09)]) then
           continue else
           begin
              ungetch;
              result := false;
              exit;
           end;
        end;
     end;
  end;

  function TokenIsKeyWord(id: String): Boolean;
  var
     idx: Integer;
  begin
     result := false;
     for idx := 1 to High(TokenKeywords) do
     begin
        if id = TokenKeywords[idx] then
        begin
           result := true;
           exit;
        end;
     end;
  end;

  procedure emitProgramCode(AString: string);
  var
    OutString: String;
  begin
    try
      try
        // try to open new program code file,
        // and write the header of it ...
        FFileStream := TFileStream.Create(
        FFolderOut  +  '\' +
        FModuleName + '.asm' , fmCreate or fmOpenWrite);

        // this code was used with nasm for windows
        // 32-bit PE image files
        OutString   :=
        'progammmma ' + #13#10;
        FFileStream.Write(PChar(OutString)^,Length(OutString));
      except
        on E: Exception do
        begin
          raise Exception.Create(E.Message);
          Exit;
        end;
      end;
    finally
      FFileStream.Free;
    end;
  end;

var
  ProcID: PCardinal;
var
  old_folder: string;
  new_folder: string;
var
  mem_stream: TMemoryStream;
  mem_string: string;
begin
  result := true;

  // initialize some stuff
  line_row := 1;
  line_col := 1;

  pascalAST := TObjectList.Create;

  // finally
  try
    // except
    try
       while true do
       begin
          ident := '';
          wc := getch;
          if isWhiteSpace(wc) then continue else
          if isAlphaNum  (wc) then
          begin
             if not expect(tokenIDENT) then
             raise Exception.Create('AlphaNum expr. expected.');
             ident := LowerCase(ident);

             if ident = 'program' then
             begin
                ident := '';
                while true do
                begin
                   wc := getch;
                   if isWhiteSpace(wc) then continue else
                   if isAlphaNum  (wc) then
                   begin
                      // program name;
                      if not expect(tokenIDENT) then
                      raise Exception.Create('AlphaNum expr. expected.');
                      ident := LowerCase(ident);

                      FModuleName := ident;

                      ident := '';
                      while true do
                      begin
                         wc := getch;
                         if WideChar(wc) = ';' then
                         begin
                            Break;
                         end else
                         raise Exception.Create('semicolon expected.');
                      end;
                      Break;
                   end;
                end;
                continue;
             end else
             if ident = 'library' then
             begin
               Break;
             end else
             if ident = 'unit' then
             begin
               Break;
             end else
             begin
                ShowMessage('ident: ' + ident);
             end;
          end;
       end;
    except
       on E: ENoError do
       begin
          // dummy
       end;
       on E: Exception do
       begin
          ShowMessage('Error in Source file:' + #13#10 +
          'Row: '     + IntToStr(line_row)    + #13#10 +
          'Col: '     + IntToStr(line_col)    + #13#10 + #13#10 +
          'Message: ' + E.Message             + #13#10 +
          'Aborted.');
          result := false;
          exit;
       end;
    end;

    try
      // write assembly code:
      // first, the MZ/PE header stuff
      if not DirectoryExists(
      ExtractFilePath(Application.ExeName) + 'temp') then CreateDir(
      ExtractFilePath(Application.ExeName) + 'temp') ;    Form2.
      JvDataEmbedded1.DataSaveToFile(
      ExtractFilePath(Application.ExeName) + 'temp\headers.inc');

      // second, the import stuff:
      mem_string   :=    'Import_Descriptor:' +
      FImportDesc  .Text +
      FHintNames   .Text +
      FImportByName.Text +
      FHintNameIAT .Text +
      FUsedDLL     .Text ;

      mem_stream   := TMemoryStream.Create;
      mem_stream.Write(PChar(
      mem_string)^, Length(
      mem_string));

      mem_stream.SaveToFile(FFolderOut + '\imports.inc');
      mem_stream.Clear;
      mem_stream.Free;

      // third, the code stuff:
      mem_string :=
      '%include "headers.inc"' + #13#10 +
      'EntryPoint:'            + #13#10 +
      FCodeBase.Text           + #13#10 + '_c' + #13#10 +
      FDataBase.Text           + #13#10 + '_d' + #13#10 +
      '%include "imports.inc"' + #13#10 +
      'align FILEALIGN, db 0'  + #13#10 ;

      // try to open new program code file,
      // and write the header of it ...
      FFileStream := TFileStream.Create(
      FFolderOut  +  '\' +
      FModuleName + '.asm' , fmCreate or fmOpenWrite);

      FFileStream.Write(PChar(
      mem_string)^,Length(
      mem_string));

      FFileStream.Free;

      // now assemble all together ...
      old_folder := GetCurrentDir; ChDir(FFolderOut);
      new_folder := GetCurrentDir;

      ShowMessage(
      ExtractFilePath(Application.ExeName) + '\yasm.exe -mx86 ' +
      FFolderOut  + '\' + FModuleName      + '.asm -o '         +
      FFolderOut  + '\' + FModuleName      + '.exe' ) ;

      RunProcess(
      ExtractFilePath(Application.ExeName) + '\yasm.exe -mx86 ' +
      FFolderOut  + '\' + FModuleName      + '.asm -o '         +
      FFolderOut  + '\' + FModuleName      + '.exe'   ,
      SW_MINIMIZE , true, ProcID);

      ChDir(old_folder);
      new_folder := GetCurrentDir;

    except
      on E: Exception do
      begin
        raise Exception.Create(E.Message);
        Exit;
      end;
    end;
  finally
    // done.
    ShowMessage('Source Lines: ' + IntToStr(line_row) + #13#10 +
    'Compiled.' + #13#10#13#10 +
    'No Error''s.');
    result := true;
  end;
end;

function TpascalParser.Run: Boolean;
begin
  result := true;
end;
end.
