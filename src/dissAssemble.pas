// ----------------------------------------------------------------
// This file is part of Pascal-Engine RTL.
//
// (c) Copyright 2022 Jens Kallup - <paule32.jk@gmail.com>
// all rights reserved.
//
// only for non-profit, and/or education usage !!!
// ----------------------------------------------------------------
unit dissAssemble;

interface
uses
  Classes, SysUtils, Dialogs;

type
  TDissAssemble = class
  private
    FSource: TStrings;
    FStream: TStream;
    opByte : Byte;
  public
    function  readByte : Byte;
    function  Start    : Boolean;
    procedure emit(AString: String);

    constructor Create(AStream: TStream);
    destructor Destroy;
  end;

implementation

constructor TDissAssemble.Create(AStream: TStream);
begin
  try
    FSource := TStringList.Create;

  except
    on E: Exception do
    begin
      ShowMessage(E.Message);
      Exit;
    end;
  end;
end;

destructor TDissAssemble.Destroy;
begin
  FSource.Clear;
  FSource.Free;
end;

function TDissAssemble.readByte: Byte;
var
  buffer : Byte;
begin
  result := 0;
  if FStream.Position >= FStream.Size then
  raise Exception.Create('end buffer.');

  FStream.Read(opByte, SizeOf(Byte));
  result := opByte;
end;

procedure TDissAssemble.Emit(AString: string);
begin
  FSource.Add(AString);
end;

function TDissAssemble.Start: Boolean;
var
  byte_0: Byte;
  byte_1: Byte;
begin
  result := false;
  try
  while true do
  begin
    readByte;
    case opByte of
      // --------------------
      // ADC AL, ib
      // --------------------
      $14: begin
        readByte;
        emit(Format('adc' + #9 + '0x%02x', [opByte]));
      end;
      // --------------------
      // ADC AX, iw
      // --------------------
      $15: begin
        byte_0 := readByte;
        byte_1 := readByte;
        emit(Format('adc' + #9 + '0x%02x%02x',
        [byte_0, byte_1]));
      end;
      // --------------------
      // AAA
      // --------------------
      $37: begin
        emit('aaa');
      end;
      // --------------------
      // AAS
      // --------------------
      $3f: begin
        emit('aas');
      end;
      // --------------------
      // AAM
      // --------------------
      $44: begin
        case readByte of
          $0a: begin
            emit('aam');
          end;
        end;
      end;
      // -----------------------------------------
      // NOP  => xchg ax,ax  or:  => xchg eax,eax
      // -----------------------------------------
      $90: begin
        emit("nop");
      end;
      // --------------------
      // NOT r/m8
      // --------------------
      $f6: begin
        case readByte of
          $d0: begin emit('not al'); end;
          $d1: begin emit('not cl'); end;
          $d2: begin emit('not dl'); end;
          $d3: begin emit('not bl'); end;
          $d4: begin emit('not ah'); end;
          $d5: begin emit('not ch'); end;
          $d6: begin emit('not dh'); end;
          $d7: begin emit('not bh'); end;
        end;
      end;
    end;
  end;
  except
    on E: Exception do
    begin
      ShowMessage('ParserError: ' + E.Message);
    end;
  end;
  ShowMessage(FSource.Text);
end;

end.

