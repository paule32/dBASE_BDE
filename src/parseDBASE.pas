unit parseDBASE;

interface
uses
  Windows, Forms, SysUtils, Classes, Dialogs;

  function TranspileBorlandDelphi   (path: String; source: WideString): Boolean;
  function TranspileBorlandCBuilder (path: String; source: WideString): Boolean;
  function TranspileGnuCC           (path: String; source: WideString): Boolean;

  procedure parse_file;

var
  dBASEparseStream: TMemoryStream;

type
  RaiseNoError = class(Exception);
  RaiseOverReadError = class(Exception);

type
  DoubleByte = packed record
    byte1: Byte;
    byte2: Byte;
  end;
var
  WideCharDB: DoubleByte;

implementation

var
  outputBuffer: String;
  TokenIdent: String;

  codeOpen: Boolean;

  parseBuffer         : WideString;
  parseBufferChar     : WideChar;
  parseBufferPosition : Integer;

  yy_row: Integer;  // line
  yy_col: Integer;  // column

const
  tokCLASS    = 1000;
  tokOF       = 1001;
  tokENDCLASS = 1002;
  tokFORM     = 1003;
  tokIDENT    = 1004;

function TranspileBorlandDelphi (path: String; source: WideString): Boolean;
var
  fh: Integer;
begin
  source :=
  source + '  ';

  parseBuffer  := source;
  outputBuffer :=
  '// ----------------------------------------------' + #13#10 +
  '// This source code was automatic create by:'      + #13#10 +
  '// dBASE Transpiler v1.0'                          + #13#10 +
  '// (c) 2022 by Jens Kallup <paule32.jk@gmail.com>' + #13#10 +
  '// all rights reserved.'                           + #13#10 +
  '// ----------------------------------------------' + #13#10 +
  '{$IFDEF FPC}'                                      + #13#10 +
  '{$mode delphi}{$H+}'                               + #13#10 +
  '{$ENDIF}'                                          + #13#10 +
  ''                                                  + #13#10 +
  'program output;' + #13#10;

  fh := FileCreate('output.pas');
  try
    parse_file;
  finally
    FileWrite(fh,PChar(outputBuffer)^,Length(outputBuffer));
    FileClose(fh);
  end;
  result := true;
end;

function TranspileBorlandCBuilder (path: String; source: WideString): Boolean;
begin
  ShowMessage('Transpile to C++ Builder');
  result := true;
end;

function TranspileGnuCC (path: String; source: WideString): Boolean;
begin
  ShowMessage('Transpile to GNU C++ Qt5');
  result := true;
end;

procedure parse_file;
var
  CurrentChar: WideChar;
  upIdent: String;

  function readChar: WideChar;
  begin
    if (parseBufferPosition >= Length(parseBuffer)) then
    raise RaiseOverReadError.Create('parse ends.');

    WideCharDB.byte1 := Byte(parseBuffer[parseBufferPosition  ]);
    WideCharDB.byte2 := Byte(parseBuffer[parseBufferPosition+1]);

    parseBufferChar := WideChar(WideCharDB);

    parseBufferPosition :=
    parseBufferPosition + 1;
    yy_col :=    yy_col + 1;

    result := parseBufferChar;
  end;
  function skipWhiteSpaces: Integer;
  begin
    while true do
    begin
      readChar;
      if WideCharDB.byte1 = Byte('*') then
      begin
        readChar;
        if WideCharDB.byte1 = Byte('*') then
        begin
          while true do
          begin
            readChar;
            if Chr(WideCharDB.byte1) = #13 then
            begin
              readChar;
              if Chr(WideCharDB.byte1) <> #10 then
              raise Exception.Create('newline char error.');
              break;
            end else
            if Chr(WideCharDB.byte1) = #10 then
            break else
            continue;
          end;
          yy_row := yy_row + 1;
          yy_col := 1;
        end;
      end else
      if WideCharDB.byte1 = Byte('/') then
      begin
        readChar;
        if WideCharDB.byte1 = Byte('/') then
        begin
          while true do
          begin
            readChar;
            if Chr(WideCharDB.byte1) = #13 then
            begin
              readChar;
              if Chr(WideCharDB.byte1) <> #10 then
              raise Exception.Create('newline char error.');
              break;
            end else
            if Chr(WideCharDB.byte1) = #10 then
            break else
            continue;
          end;
          yy_row := yy_row + 1;
          yy_col := 1;
        end;
        continue;
      end else
      if WideCharDB.byte1 = Byte('&') then
      begin
        readChar;
        if WideCharDB.byte1 = Byte('&') then
        begin
          while true do
          begin
            readChar;
            if Chr(WideCharDB.byte1) = #13 then
            begin
              readChar;
              if Chr(WideCharDB.byte1) <> #10 then
              raise Exception.Create('newline char error.');
              break;
            end else
            if Chr(WideCharDB.byte1) = #10 then
            break else
            continue;
          end;
          yy_row := yy_row + 1;
          yy_col := 1;
        end;
        continue;
      end else
      if (WideCharDB.byte1 = Byte(#9 ))
      or (WideCharDB.byte1 = Byte(#32)) then
      begin
        // do nothing
      end else
      if Chr(WideCharDB.byte1) = #13 then
      begin
        readChar;
        if Chr(WideCharDB.byte1) <> #10 then
        raise Exception.Create('newline char error.');
        yy_row := yy_row + 1;
        yy_col := 1;
      end else
      if WideCharDB.byte1 = Byte(#10) then
      begin
        yy_row := yy_row + 1;
        yy_col := 1;
      end else
      if  (UpperCase(Chr(WideCharDB.byte1)) >= 'A')
      and (UpperCase(Chr(WideCharDB.byte1)) <= 'Z') then
      begin
        TokenIdent := Chr(WideCharDB.byte1);
        while true do
        begin
          readChar;
          if  ((UpperCase(Chr(WideCharDB.byte1)) >= 'A')
          and  (UpperCase(Chr(WideCharDB.byte1)) <= 'Z'))
          or  ((         (Chr(WideCharDB.byte1)) >= '0')
          and (          (Chr(WideCharDB.byte1)) <= '9'))
          or  ((         (Chr(WideCharDB.byte1))  = '_')) then
          begin
            TokenIdent := TokenIdent + Chr(WideCharDB.byte1);
            continue;
          end else
          if (Chr(WideCharDB.byte1) = #09)
          or (Chr(WideCharDB.byte1) = #32)       then break else

          if (Chr(WideCharDB.byte1) = '(')
          or (Chr(WideCharDB.byte1) = ')')
          or (Chr(WideCharDB.byte1) = '.')
          or (Chr(WideCharDB.byte1) = '=') then break else

          if (Chr(WideCharDB.byte1) = #13) then
          begin
            readChar;
            if Chr(WideCharDB.byte1) <> #10 then
            raise Exception.Create('newline char error.');
            yy_row := yy_row + 1;
            yy_col := 1;
            break;
          end else
          if WideCharDB.byte1 = Byte(#10) then
          begin
            yy_col := 1;
            break;
          end else
          raise Exception.Create('Syntac Error');
        end;
        upIdent := UpperCase(TokenIdent);
        if upIdent = 'CLASS'    then result := tokCLASS    else
        if upIdent = 'OF'       then result := tokOF       else
        if upIdent = 'FORM'     then result := tokFORM     else
        if upIdent = 'ENDCLASS' then result := tokENDCLASS else
        result := tokIDENT;
        exit;
      end else
      if  (WideCharDB.byte1 >= Byte('0'))
      and (WideCharDB.byte1 <= Byte('9')) then
      begin
        TokenIdent := Chr(WideCharDB.byte1);
        while true do
        begin
          readChar;
          if  (WideCharDB.byte1 >= Byte('0'))
          and (WideCharDB.byte1 <= Byte('9')) then
          begin
            TokenIdent := TokenIdent + Chr(WideCharDB.byte1);
            continue;
          end else
          if Chr(WideCharDB.byte1) = #13 then
          begin
            readChar;
            if Chr(WideCharDB.byte1) <> #10 then
            raise Exception.Create('newline char error.');
            yy_row := yy_row + 1;
            yy_col := 1;
            break;
          end else
          if WideCharDB.byte1 = Byte(#10) then
          begin
            yy_col := 1;
            break;
          end else
          begin
            break;
          end;
        end;
        ShowMessage(TokenIdent);
        break;
      end;
    end;
  end;
var
  className: String;
begin
  parseBufferPosition := 1;
  codeOpen := false;

  yy_row := 1;
  yy_row := 1;

  try
    while true do
    begin
      codeOpen := false;
      if skipWhiteSpaces = tokCLASS then
      begin
        codeOpen := true;
        if skipWhiteSpaces = tokIDENT then
        begin
          codeOpen := true;
          className := TokenIdent;
          if skipWhiteSpaces = tokOF then
          begin
            codeOpen := true;
            if skipWhiteSpaces = tokFORM then
            begin
              codeOpen := true;
              outputBuffer := outputBuffer +
              'type'                                        + #13#10 +
              '  TdBASE_' + className + ' = class(TForm)'   + #13#10 +
              '  public'                                    + #13#10 +
              '    constructor Create(AOwner: TComponent);' + #13#10 +
              '    destructor Destroy;'                     + #13#10 +
              '  end;'                                      + #13#10 +

              'implementation'                              + #13#10 +

              'constructor TdBASE_' + className  + '.Create(AOwner: TComponent);' + #13#10 +
              'begin'                            + #13#10 +
              '  inherited Create(AOwner);'      + #13#10 +
              'end;'                             + #13#10 + #13#10 +

              'destructor TdBASE_'   + className + '.Destroy;' + #13#10 +
              'begin'                + #13#10    +
              '  inherited Destroy;' + #13#10    +
              'end;'                 + #13#10    ;

              if skipWhiteSpaces = tokENDCLASS then
              begin
                codeOpen := false;
                continue;
              end else
              raise Exception.Create('syntax error.');
            end else
            raise Exception.Create('keyword >FORM< requiered.');
          end else
          raise Exception.Create('keyword >OF< requiered.');
        end else
        raise Exception.Create('ident required.');
      end;
    end;
  except
    on e: RaiseOverReadError do
    begin
      if codeOpen = false then
      begin
        ShowMessage(
        'Transpiled Lines : '   + IntToStr(yy_row) + #13#10 +
        'Error''s : no' + #13#10 +
        'message: '     + e.Message);
      end else
      begin
        ShowMessage('Syntax Error'    + #13#10 +
        'Line: ' + IntToStr(yy_row-1));
      end;
    end;
    on e: RaiseNoError do
    begin
      if codeOpen = false then
      begin
        ShowMessage(
        'Transpiled Lines : '   + IntToStr(yy_row) + #13#10 +
        'Error''s : no' + #13#10 +
        'message : done.');
      end else
      begin
        ShowMessage('SYntax Error');
      end;
    end;
    on e: Exception do
    begin
      ShowMessage('unhandled exception occur: ' + e.Message);
    end;
  end;
end;

end.
