// ----------------------------------------------------------------
// This file is part of Remote-Assembly-Engine RTL.
//
// (c) Copyright 2022 Jens Kallup - <paule32.jk@gmail.com>
// all rights reserved.
//
// only for non-profit, and/or education usage !!!
// ----------------------------------------------------------------
unit remoteAssembly;

interface
uses
  Classes, SysUtils, Dialogs;

type
  // listing specified stuff
  TListingKind  = set of (
    lkOffset,     // offset of the instruction
    lkOpCode,     // hex presentation of instruction
    lkMenomic     // human readable text
  );

type
  // ----------------------------------------------------------------
  // x86 16/32-bit remote assembler runtime
  // ----------------------------------------------------------------
  TAsmJIT_RunTime = class
  public
    constructor Create;
    destructor Destroy; override;
  end;

type
  // ----------------------------------------------------------------
  // x86 16/32-bit diss-assembly
  // ----------------------------------------------------------------
  TAsmJIT_DeCode = class
  private
    FASM_Source : TStrings;     // assembly generator
    FPAS_Source : TStrings;     // pascal
    FCPP_Source : TStrings;     // C++
    FJIT_Source : TStrings;     // asmJIT remote assembly

    FStream     : TStream;      // binary source stream
    FListing    : TListingKind; // print a listing
    FError      : Boolean;      // run session contains error(s)

    FopCode     : string;       // byte opCode stored in memory
    debugMode   : Byte;         // type of debug mode (16/32 bit)

    FOffsetPosition : Integer;  // position/len of opcode

    // ----------------------------------------------------------------
    // static placeholder's:
    // ----------------------------------------------------------------
    FArrayFormat0: array of string;
    FArrayFormat : array of string;

  public
    function  readByte : Byte;  // read a byte from source stream
    function  start    : Boolean;

    // ----------------------------------------------------------------
    // static placeholder's:
    // ----------------------------------------------------------------
    function fmt0(b1,b2,b3,b4,b5,b6,b7: Byte): String; overload;
    function fmt0(b1,b2,b3,b4,b5,b6   : Byte): String; overload;
    function fmt0(b1,b2,b3,b4,b5      : Byte): String; overload;
    function fmt0(b1,b2,b3,b4         : Byte): String; overload;
    function fmt0(b1,b2,b3            : Byte): String; overload;
    function fmt0(b1,b2               : Byte): String; overload;
    function fmt0(b1                  : Byte): string; overload;
    //
    function fmt(b1,b2,b3,b4,b5,b6,b7 : Byte): String; overload;
    function fmt(b1,b2,b3,b4,b5,b6    : Byte): String; overload;
    function fmt(b1,b2,b3,b4,b5       : Byte): String; overload;
    function fmt(b1,b2,b3,b4          : Byte): String; overload;
    function fmt(b1,b2,b3             : Byte): String; overload;
    function fmt(b1,b2                : Byte): String; overload;
    function fmt(b1                   : Byte): String; overload;

    // code emiter
    procedure emit_asm(AString: string);  // assembly
    procedure emit_pas(AString: String);  // pascal
    procedure emit_cpp(AString: String);  // C++
    procedure emit_jit(AString: string);  // asmJIT remote assembly

    constructor Create(AStream: TStream);
    destructor Destroy; override;
  published
    property Listing: TListingKind read FListing write FListing;
    property OpCode : String       read FopCode  write FopCode;
  end;

type
  // ----------------------------------------------------------------
  // x86 16/32-bit assembly
  // ----------------------------------------------------------------
  TAsmJIT_Assembler = class
  private
    FRunTime: TAsmJIT_RunTime;
  public
    constructor Create(rt: TAsmJIT_RunTime); overload;
    constructor Create; overload;
    destructor Destroy; override;
  end;

implementation

// ----------------------------------------------------------------
// Exception's
// ----------------------------------------------------------------
type
  Exception_noError   = class(Exception);
  Exception_debugMode = class(Exception);

// ----------------------------------------------------------------
// resourcestring's: TODO !!!
// ----------------------------------------------------------------
const
  debugModeError_notIn16BitMode = 'not in 16-bit mode.';
  debugModeError_notIn32BitMode = 'not in 32-bit mode.';
  //
  parserError_critical     = 'ParserError (critcal):';
  parserError_warning      = 'ParserError (warning):';
  parserError_opCodeWrong  = 'detected opcode wrong.';
  //
  infoText_noAvailableData = 'no more data available.';
  //
  exception_ErrorCTOR      = 'Exception occur:';

// ----------------------------------------------------------------
// constructor: initialize a diss-assembly session.
// ----------------------------------------------------------------
constructor TAsmJIT_DeCode.Create(AStream: TStream);
var
  index: Integer;
  s: string;
begin
  try
    FASM_Source := TStringList.Create;
    FPAS_Source := TStringList.Create;
    FCPP_Source := TStringList.Create;
    FJIT_Source := TStringList.Create;

    FListing        := [];      // defualt: print listing: menom
    FOffsetPosition := 0;       // turing machine: start at 0x00
    debugMode       := 16;      // default: 16-bit mode
    FError          := False;   // default: no error

    // -------------------------------------
    // static placeholder's:
    // -------------------------------------
    SetLength(FArrayFormat0,16);
    SetLength(FArrayFormat ,16);

    s := '0x'; for index := 1 to 15 do begin s := s + '%02x'; FArrayFormat0[index] := s; end;
    s := ''  ; for index := 1 to 15 do begin s := s + '%02x'; FArrayFormat [index] := s; end;

  except
    on E: Exception do
    begin
      ShowMessage(
      exception_ErrorCTOR + #13#10 +
      E.Message);
      Exit;
    end;
  end;
end;

// ----------------------------------------------------------------
// dtor: tries to clear/remove allocated memory blocks.
// ----------------------------------------------------------------
destructor TAsmJIT_DeCode.Destroy;
begin
  FASM_Source.Clear;
  FPAS_Source.Clear;
  FCPP_Source.Clear;
  FJIT_Source.Clear;

  FASM_Source.Free;
  FPAS_Source.Free;
  FCPP_Source.Free;
  FJIT_Source.Free;

  FArrayFormat0 := nil;
  inherited Destroy;
end;

// ----------------------------------------------------------------
// static placeholder's:
// ----------------------------------------------------------------
function TAsmJIT_DeCode.fmt0(b1,b2,b3,b4,b5,b6,b7: Byte): String; begin result := Format(FArrayFormat0[7],[b1,b2,b3,b4,b5,b6,b7]); end;
function TAsmJIT_DeCode.fmt0(b1,b2,b3,b4,b5,b6   : Byte): String; begin result := Format(FArrayFormat0[6],[b1,b2,b3,b4,b5,b6]); end;
function TAsmJIT_DeCode.fmt0(b1,b2,b3,b4,b5      : Byte): String; begin result := Format(FArrayFormat0[5],[b1,b2,b3,b4,b5]); end;
function TAsmJIT_DeCode.fmt0(b1,b2,b3,b4         : Byte): String; begin result := Format(FArrayFormat0[4],[b1,b2,b3,b4]); end;
function TAsmJIT_DeCode.fmt0(b1,b2,b3            : Byte): String; begin result := Format(FArrayFormat0[3],[b1,b2,b3]); end;
function TAsmJIT_DeCode.fmt0(b1,b2               : Byte): String; begin result := Format(FArrayFormat0[2],[b1,b2]); end;
function TAsmJIT_DeCode.fmt0(b1                  : Byte): String; begin result := Format(FArrayFormat0[1],[b1]); end;
//
function TAsmJIT_DeCode.fmt(b1,b2,b3,b4,b5,b6,b7 : Byte): String; begin result := Format(FArrayFormat [7],[b1,b2,b3,b4,b5,b6,b7]); end;
function TAsmJIT_DeCode.fmt(b1,b2,b3,b4,b5,b6    : Byte): String; begin result := Format(FArrayFormat [6],[b1,b2,b3,b4,b5,b6]); end;
function TAsmJIT_DeCode.fmt(b1,b2,b3,b4,b5       : Byte): String; begin result := Format(FArrayFormat [5],[b1,b2,b3,b4,b5]); end;
function TAsmJIT_DeCode.fmt(b1,b2,b3,b4          : Byte): String; begin result := Format(FArrayFormat [4],[b1,b2,b3,b4]); end;
function TAsmJIT_DeCode.fmt(b1,b2,b3             : Byte): String; begin result := Format(FArrayFormat [3],[b1,b2,b3]); end;
function TAsmJIT_DeCode.fmt(b1,b2                : Byte): String; begin result := Format(FArrayFormat [2],[b1,b2]); end;
function TAsmJIT_DeCode.fmt(b1                   : Byte): String; begin result := Format(FArrayFormat [1],[b1]); end;

// ----------------------------------------------------------------
// read "one" byte from FSource stream
// ----------------------------------------------------------------
function TAsmJIT_DeCode.readByte: Byte;
var
  buffer : Byte;
begin
  result := 0;
  if FStream.Position >= FStream.Size then
  raise Exception.Create('end buffer.');

  FStream.Read(buffer, SizeOf(Byte));
  result := buffer;
end;

// ----------------------------------------------------------------
// emit assembly code - formated or raw:
//
// offset   opcode menomic
// 00000000 90     nop
// 00000001 90     nop
// ...
// ----------------------------------------------------------------
procedure TAsmJIT_DeCode.emit_asm(AString: string);
var
  s: string;
begin
  if (lkOffset in FListing) then
  begin
    if debugMode = 16 then
    begin
      s := s + Format('0x%04x',[FOffsetPosition]);
      s := s + #9;
    end else
    if debugMode = 32 then
    begin
      s := s + Format('0x%08x',[FOffsetPosition]);
      s := s + #9;
    end;
  end;

  // print hex formated opCode
  if (lkOpCode in FListing) then
  begin
    s := s + FopCode;
  end;

  // increment offset for next opcode
  Inc(FOffsetPosition,Length(FopCode));

  // add formated string
  s := s + AString;
  FASM_Source.Add(s);
end;

procedure TAsmJIT_DeCode.emit_pas(AString: string); begin FPAS_Source.Add(AString); end;
procedure TAsmJIT_DeCode.emit_cpp(AString: string); begin FCPP_Source.Add(AString); end;
procedure TAsmJIT_DeCode.emit_jit(AString: string); begin FJIT_Source.Add(AString); end;

function TAsmJIT_DeCode.Start: Boolean;
var
  byte_arr: Array of Byte;
begin
  result := false;
  try
  SetLength(byte_arr,5);

  while true do
  begin
    case readByte of
      $00: begin
        case readByte of
          $00: begin
            if debugMode = 16 then
            begin
              FopCode := fmt($00,$00);
              emit_asm('add [bx+si],al');

              Continue;
            end else
            begin
              FopCode := fmt($00,$00);
              emit_asm('add [eax],al');

              Continue;
            end;
          end;
          $f7: begin
            FopCode := fmt($0,$f7);
            emit_asm('add bh,dh');

            Continue;
          end;
        end;
      end;
      $0d: begin
        byte_arr[0] := readByte;
        byte_arr[1] := readByte;

        FopCode := fmt($0d,byte_arr[0],byte_arr[1]);
        emit_asm('or ax,' + fmt0(byte_arr[0],byte_arr[1]));

        Continue;
      end;
      $0e: begin
        FopCode := fmt($0e);
        emit_asm('push cs');

        Continue;
      end;
      $14: begin
        byte_arr[0] := readByte;

        FopCode := fmt($14,byte_arr[0]);
        emit_asm('adc al,' + fmt0(byte_arr[0]));

        Continue;
      end;
      $15: begin
        byte_arr[0] := readByte;
        byte_arr[1] := readByte;

        FopCode := fmt($15,byte_arr[0],byte_arr[1] );
        emit_asm('adc ax,' + fmt0(byte_arr[0],byte_arr[1]));

        Continue;
      end;
      $16: begin FopCode := fmt($16); emit_asm('push ss'); Continue; end;
      $17: begin FopCode := fmt($17); emit_asm('pop ss' ); Continue; end;
      $18: begin
        byte_arr[0] := readByte;
        if byte_arr[0] = $f6 then
        begin
          FopCode := fmt($18,$f6);
          emit_asm('sbb dh, dh');

          Continue;
        end else
        raise Exception.Create(parserError_opCodeWrong);
      end;
      $1e: begin FopCode := fmt($1a); emit_asm('push ds'); Continue; end;
      $1f: begin FopCode := fmt($1f); emit_asm('pop cx' ); Continue; end;
      $37: begin
        FopCode := fmt($37);
        emit_asm('aaa');

        Continue;
      end;
      $3f: begin
        FopCode := fmt($3f);
        emit_asm('aas');

        Continue;
      end;
      $44: begin
        case readByte of
          $0a: begin
            FopCode := fmt($44,$0a);
            emit_asm('aam');

            Continue;
          end;
        end;
      end;
      $50: begin
        FopCode := fmt($50);

        emit_asm('push ax');
        emit_jit('a.push(x86::ax);');

        Continue;
      end;
      $51: begin
        if debugMode = 16 then
        begin
          FopCode := fmt($51);
          emit_asm('push cx');
          emit_jit('a.push(x86::cx);');

          Continue;
        end else
        raise Exception_debugMode.Create(debugModeError_notIn32BitMode);
      end;
      $52: begin
        if debugMode = 16 then
        begin
          FopCode := fmt($52);
          emit_asm('push dx');
          emit_jit('a.push(x86::dx);');

          Continue;
        end else
        raise Exception_debugMode.Create(debugModeError_notIn16BitMode);
      end;
      $53: begin
        FopCode := fmt($53);
        emit_asm('push bx');
        emit_jit('a.push(x86::bx);');

        Continue;
      end;
      $54: begin
        FopCode := fmt($54);

        emit_asm('push sp');
        emit_jit('a.push(x86::sp);');

        Continue;
      end;
      $56: begin
        FopCode := fmt($56);

        emit_asm('push si');
        emit_jit('a.push(x86::si);');

        Continue;
      end;
      //
      $58: begin
        if debugMode = 16 then
        begin
          FopCode := fmt($58);

          emit_asm('pop ax');
          emit_jit('a.pop(x86::ax);');

          Continue;
        end else
        if debugMode = 32 then
        begin
          FopCode := fmt($58);

          emit_asm('pop eax');
          emit_jit('a.pop(x86::eax);');

          Continue;
        end;
      end;
      $59: begin
        if debugMode = 16 then
        begin
          FopCode := fmt($59);

          emit_asm('pop cx');
          emit_jit('a.pop(x86::cx);');

          Continue;
        end else
        if debugMode = 32 then
        begin
          FopCode := fmt($59);

          emit_asm('pop ecx');
          emit_jit('a.pop(x86::eax);');

          Continue;
        end;
      end;
      $5a: begin
        FopCode := fmt($5a);

        if debugMode = 16 then emit_asm('pop dx' ) else
        if debugMode = 32 then emit_asm('pop edx') ;

        Continue;
      end;
      $5b: begin
        FopCode := fmt($5b);

        if debugMode = 16 then emit_asm('pop bx' ) else
        if debugMode = 32 then emit_asm('pop ebx') ;

        Continue;
      end;
      $5c: begin
        FopCode := fmt($5c);

        if debugMode = 16 then emit_asm('pop sp' ) else
        if debugMode = 32 then emit_asm('pop esp') ;

        Continue;
      end;
      $5e: begin
        FopCode := fmt($5e);

        if debugMode = 16 then emit_asm('pop si' ) else
        if debugMode = 32 then emit_asm('pop esi') ;

        Continue;
      end;
      $66: begin
        case readByte of
          $f7: begin
            case readByte of
              $15: begin    // 32-Bit
                if (debugMode = 16) then
                raise Exception_debugMode.Create(
                debugModeError_notIn32BitMode);

                byte_arr[0] := readByte;
                byte_arr[1] := readByte;
                byte_arr[2] := readByte;
                byte_arr[3] := readByte;

                FopCode := fmt($66,$f7,$15 ,
                byte_arr[0],   byte_arr[1] ,
                byte_arr[2],   byte_arr[3]);

                emit_asm('not word [dword ' + fmt0(
                byte_arr[0],byte_arr[1],
                byte_arr[2],byte_arr[3]));

                Continue;
              end;
              $16: begin    // 16-Bit
                if (debugMode = 32) then
                raise Exception_debugMode.Create(
                debugModeError_notIn16BitMode);

                byte_arr[0] := readByte;
                byte_arr[1] := readByte;

                FopCode := fmt($66,$f7,$16 ,
                byte_arr[0],byte_arr[1]);

                emit_asm('not dword ['   + fmt0(
                byte_arr[0],byte_arr[1]) + ']');

                Continue;
              end;
            end;
          end;
        end;
      end;
      // -----------------------------------------
      // NOP  => xchg ax,ax  or:  => xchg eax,eax
      // -----------------------------------------
      $90: begin
        FopCode := fmt($90);
        emit_asm('nop');

        Continue;
      end;
      $b0: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b0,byte_arr[0]);

        emit_asm('mov al,'   + fmt0(byte_arr[0]));
        emit_pas('L_al := $' + fmt (byte_arr[0]));
        emit_cpp('L_al  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::al, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b1: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b1,byte_arr[0]);

        emit_asm('mov cl,'   + fmt0(byte_arr[0]));
        emit_pas('L_cl := $' + fmt (byte_arr[0]));
        emit_cpp('L_cl  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::cl, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b2: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b2,byte_arr[0]);

        emit_asm('mov dl,'   + fmt0(byte_arr[0]));
        emit_pas('L_dl := $' + fmt (byte_arr[0]));
        emit_cpp('L_dl  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::dl, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b3: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b3,byte_arr[0]);

        emit_asm('mov bl,'   + fmt0(byte_arr[0]));
        emit_pas('L_bl := $' + fmt (byte_arr[0]));
        emit_cpp('L_bl  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::bl, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b4: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b4,byte_arr[0]);

        emit_asm('mov ah,'   + fmt0(byte_arr[0]));
        emit_pas('L_ah := $' + fmt (byte_arr[0]));
        emit_cpp('L_ah  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::ah, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b5: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b5,byte_arr[0]);

        emit_asm('mov ch,'   + fmt0(byte_arr[0]));
        emit_pas('L_ch := $' + fmt (byte_arr[0]));
        emit_cpp('L_ch  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::ch, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b6: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b6,byte_arr[0]);

        emit_asm('mov dh,'   + fmt0(byte_arr[0]));
        emit_pas('L_dh := $' + fmt (byte_arr[0]));
        emit_cpp('L_dh  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::ah, %d);', [byte_arr[0]]));
        Continue;
      end;
      $b7: begin
        byte_arr[0] := readByte;
        FopCode := fmt($b7,byte_arr[0]);

        emit_asm('mov bh,'   + fmt0(byte_arr[0]));
        emit_pas('L_bh := $' + fmt (byte_arr[0]));
        emit_cpp('L_bh  =  ' + fmt0(byte_arr[0]));

        emit_jit(Format('a.mov(x86::bh, %d);', [byte_arr[0]]));
        Continue;
      end;
      $d4: begin
        if readByte = $0a then
        begin
          FopCode := fmt($d4,$0a);
          emit_asm('AAM');

          Continue;
        end else
        raise Exception.Create(parserError_opCodeWrong);
      end;
      $d5: begin
        if readByte = $0a then
        begin
          FopCode := fmt($d5,$0a);
          emit_asm('AAD');

          Continue;
        end else
        raise Exception.Create(parserError_opCodeWrong);
      end;
      $f6: begin
        case readByte of
          $15: begin    // 32-Bit
            if (debugMode = 16) then
            begin
              FopCode := fmt($f6,$15);
              emit_asm('not byte [di]');

              Continue;
            end;

            byte_arr[0] := readByte;
            byte_arr[1] := readByte;
            byte_arr[2] := readByte;
            byte_arr[3] := readByte;

            FopCode := fmt($f6,$15,
            byte_arr[0] ,
            byte_arr[1] ,
            byte_arr[2] ,
            byte_arr[3]);

            emit_asm('not byte [dword ' + fmt0(
            byte_arr[0],byte_arr[1],
            byte_arr[2],byte_arr[3]));

            Continue;
          end;
          $16: begin    // 16-Bit
            if (debugMode = 32) then
            raise Exception_debugMode.Create(
            debugModeError_notIn16BitMode);

            byte_arr[0] := readByte;
            byte_arr[1] := readByte;

            FopCode := fmt($f6,$16,
            byte_arr[0],
            byte_arr[1]);

            emit_asm('not byte [' + fmt0(
            byte_arr[0],
            byte_arr[1]) + ']');

            Continue;
          end;
          $d0: begin FopCode := fmt($f6,$d0); emit_asm('not al'); Continue; end;
          $d1: begin FopCode := fmt($f6,$d1); emit_asm('not cl'); Continue; end;
          $d2: begin FopCode := fmt($f6,$d2); emit_asm('not dl'); Continue; end;
          $d3: begin FopCode := fmt($f6,$d3); emit_asm('not bl'); Continue; end;
          $d4: begin FopCode := fmt($f6,$d4); emit_asm('not ah'); Continue; end;
          $d5: begin FopCode := fmt($f6,$d5); emit_asm('not ch'); Continue; end;
          $d6: begin FopCode := fmt($f6,$d6); emit_asm('not dh'); Continue; end;
          $d7: begin FopCode := fmt($f6,$d7); emit_asm('not bh'); Continue; end;
        end;
      end;
      $f7: begin
        case readByte of
          $15: begin    // 32-Bit
            if (debugMode = 16) then
            raise Exception_debugMode.Create(
            debugModeError_notIn32BitMode);

            byte_arr[0] := readByte;
            byte_arr[1] := readByte;
            byte_arr[2] := readByte;
            byte_arr[3] := readByte;

            FopCode := fmt($17,$15,
            byte_arr[0],
            byte_arr[1],
            byte_arr[2],
            byte_arr[3]);

            emit_asm('not dword [dword ' + fmt0(
            byte_arr[0],byte_arr[1],
            byte_arr[2],byte_arr[3]) + ']');

            Continue;
          end;
          $16: begin    // 16-Bit
            if (debugMode = 32) then
            raise Exception_debugMode.Create(
            debugModeError_notIn16BitMode);

            byte_arr[0] := readByte;
            byte_arr[1] := readByte;

            FopCode := fmt($f7,$16,
            byte_arr[0],
            byte_arr[0]);

            emit_asm('not word [' + fmt0(
            byte_arr[0],
            byte_arr[1]));

            Continue;
          end;
        end;
      end;
    end;
  end;
  except
    on E: Exception_noError do
    begin
      ShowMessage(infoText_noAvailableData);
      FError := False;
    end;
    on E: Exception_debugMode do
    begin
      ShowMessage(parserError_warning +
      #13#10 + E.Message);
      FError := True;
    end;
    on E: Exception do
    begin
      ShowMessage(parserError_critical +
      #13#10 + E.Message);
      FError := True;
    end;
  end;

  SetLength(byte_arr,0);
  ShowMessage(FASM_Source.Text);
end;


// ----------------------------------------------------------------
// x86 16/32-bit remote assembler runtime
// ----------------------------------------------------------------
constructor TAsmJIT_RunTime.Create;
begin

end;

// ----------------------------------------------------------------
// dtor: tries to clear/remove allocated memory blocks.
// ----------------------------------------------------------------
destructor TAsmJIT_RunTime.Destroy;
begin
  inherited Destroy;
end;

// ----------------------------------------------------------------
// x86 16/32-bit remote assembly
// ----------------------------------------------------------------
constructor TAsmJIT_Assembler.Create(rt: TAsmJIT_RunTime);
begin
  if rt = nil then
  raise Exception.Create('TAsmJIT_RunTime: not initialized.');

  FRunTime := rt;
end;

constructor TAsmJIT_Assembler.Create;
begin
  FRunTime := TAsmJIT_RunTime.Create;
end;

// ----------------------------------------------------------------
// dtor: tries to clear/remove allocated memory blocks.
// ----------------------------------------------------------------
destructor TAsmJIT_Assembler.Destroy;
begin
  FRunTime.Free;

  inherited Destroy;
end;

end.

