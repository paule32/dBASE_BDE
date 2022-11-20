// ---------------------------------------------------------------------
// parseDBase.pas - dBase for Windows parser
//
// (c) 2022 by Jens Kallup - paule32
// all rights reserved.
// ---------------------------------------------------------------------
unit parseDBASE;

interface
uses
  Classes, Contnrs, SysUtils, Forms, SynEdit, Dialogs;

type
  ENoError = class(Exception);

  tokenContext = (
      tokenUnknown,
      tokenWHITESPACE,
      tokenCOMMA,
      tokenIDENT,
      tokenPARAMETER
  );

  parameterType = (
      paramBoolean,
      paramInteger,
      paramString
  );

type
  TdBaseParameterStackRecord = class(TObject)
  public
     pBoolean : Boolean;
     pInteger : Integer;
     pString  : String;

     pType    : parameterType;
  end;

type
  TdBaseCmdParameter = class(TStringList);
  TdBaseCmdLocal     = class(TStringList);
  TdBaseCmdClassForm = class(TObject);

  TdBaseParser = class(TObject)
  private
     FSourceCode : WideString;
     FStream     : TMemoryStream;

     line_col  : Integer;
     line_row  : Integer;

     parameterList : TdBaseCmdParameter;
     localList     : TdBaseCmdLocal;
     classForm     : TdBaseCmdClassForm;
  public
     procedure HandleFreeMemory;

     function Parse: Boolean;
     function Run  : Boolean;

     constructor Create(AStr: TSynEdit);
     destructor Destroy; override;
  end;

var
  dBaseAST: TObjectList;

var
  parameterRecord: TdBaseParameterStackRecord;
  flag: Boolean;

implementation

const tokNEWLINE = 1000;

var
  TokenKeywords : Array[1..8] of String = (
     'parameter',
     'local',
     'new',
     'mdi',
     'class', 'endclass',
     'of',
     'form'
  );

function TdBaseParser.Parse: Boolean;
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
        if wc = WideChar('*') then
        begin
           wc := _getch;
           if wc = WideChar('*') then  // dBase comment
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
        if wc = WideChar('&') then
        begin
           wc := _getch;
           if wc = WideChar('&') then  // dBase comment
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

  function expect(tc: tokenContext): Boolean;
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

  procedure paramCmd(AClass: TObject);
  begin
     expect(tokenWHITESPACE);

     while true do
     begin
        ident := '';
        if not expect(tokenIDENT) then
        raise Exception.Create('AlphaNum expr. expected.');

        // check, if token number
        try
        i := StrToInt(ident);
        haveError := false  ; except
        haveError := true   ; end;
        if not haveError then
        raise Exception.Create('A number can not be a ident.');

        if TokenIsKeyWord(ident) then
        raise Exception.Create(
        'Token: ' + UpperCase(ident) + ' can not be keyword.');

        if AClass.ClassType = TdBaseCmdParameter then
        begin
           ShowMessage('PARAMETER: ' + ident);

           parameterRecord := TdBaseParameterStackRecord.Create;
           parameterRecord.pType    := paramBoolean;
           parameterRecord.pBoolean := true;

           parameterList.AddObject(ident,parameterRecord);
           dBaseAST.Add(parameterList);
        end else
        if AClass.ClassType = TdBaseCmdLocal then
        begin
           ShowMessage('LOCAL: ' + ident);

           parameterRecord := TdBaseParameterStackRecord.Create;
           parameterRecord.pType    := paramBoolean;
           parameterRecord.pBoolean := true;

           localList.AddObject(ident,parameterRecord);
           dBaseAST.Add(localList);
        end;

        if not expect(tokenCOMMA) then
        break;

        while true do
        begin
           wc := getch;
           if isWhiteSpace(wc) then continue else
           if isAlphaNum  (wc) then
           begin
              flag := true;
              break;
           end;

           if wc = WideChar(',') then
           raise Exception.Create('too many commas.');

           flag := false;
           break;
        end;
        if flag then continue else
        break;
     end;
  end;
begin
  result := true;

  // initialize some stuff
  line_row := 1;
  line_col := 1;

  dBaseAST := TObjectList.Create;

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

             if ident = 'class' then
             begin
                ident := '';
                while true do
                begin
                   wc := getch;
                   if isWhiteSpace(wc) then continue else
                   if isAlphaNum  (wc) then
                   begin
                      // class name
                      if not expect(tokenIDENT) then
                      raise Exception.Create('AlphaNum expr. expected.');
                      ident := LowerCase(ident);

                      ident := '';
                      while true do
                      begin
                         wc := getch;
                         if isWhiteSpace(wc) then continue else
                         if isAlphaNum  (wc) then
                         begin
                            if not expect(tokenIDENT) then
                            raise Exception.Create('AlphaNum expr. expected.');
                            ident := LowerCase(ident);
                            if not (ident = 'of') then
                            raise Exception.Create('keyword OF expected.');

                            ident := '';
                            while true do
                            begin
                               wc := getch;
                               if isWhiteSpace(wc) then continue else
                               if isAlphaNum  (wc) then
                               begin
                                  if not expect(tokenIDENT) then
                                  raise Exception.Create('AlphaNum expr. expected.');
                                  ident := LowerCase(ident);

                                  if (ident = 'form') then
                                  begin
                                     classForm := TdBaseCmdClassForm.Create;
                                     dBaseAST.Add(classForm);

                                     // todo: class handle
                                  end else
                                  raise Exception.Create('unknown class: ' +
                                  UpperCase(ident) + '.');
                                  break;
                               end;
                            end;
                            break;
                         end;
                      end;
                      break;
                   end;
                end;
             end else
             if ident = 'local' then
             begin
                localList := TdBaseCmdLocal.Create;
                localList.Clear;

                paramCmd(localList);
                continue;
             end else
             if ident = 'parameter' then
             begin
                parameterList := TdBaseCmdParameter.Create;
                parameterList.Clear;

                paramCmd(parameterList);
                continue;
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
          HandleFreeMemory;
          ShowMessage('Error in Source file:' + #13#10 +
          'Row: '     + IntToStr(line_row)    + #13#10 +
          'Col: '     + IntToStr(line_col)    + #13#10 + #13#10 +
          'Message: ' + E.Message             + #13#10 +
          'Aborted.');
          result := false;
          exit;
       end;
    end;
    HandleFreeMemory;
    ShowMessage('Source Lines: ' + IntToStr(line_row) + #13#10 +
    'Compiled.' + #13#10#13#10 +
    'No Error''s.');
    result := true;
  finally
  end;
end;

function TdBaseParser.Run: Boolean;
var
   i: Integer;
   frm: TForm;
begin
   result := true;

   for i := 0 to dBaseAST.Count - 1 do
   begin
      showmessage (dBaseAST[i].ClassName);
      if dBaseAST[i].ClassName = 'TdBaseCmdClassForm' then
      begin
         frm := TForm.Create(Application);
         frm.ShowModal;
      end;
   end;
end;

procedure TdBaseParser.HandleFreeMemory;
begin

end;

constructor TdBaseParser.Create(AStr: TSynEdit);
var
   wc: WideChar;
begin
   inherited Create;

   // sace source text to memory stream:
   try
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
   except
      ShowMessage('internal memory error.');
   end;
end;

// try to free allocated memory
destructor TdBaseParser.Destroy;
begin
  FStream.Clear;
  FStream.Free;

  inherited Destroy;
end;

end.

