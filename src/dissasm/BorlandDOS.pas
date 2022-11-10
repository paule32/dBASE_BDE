// ---------------------------------------------------------------------
// BorlandDOS.pas - Textual user interface for diss.exe
//
// (c) 2022 by Jens Kallup - paule32
// all rights reserved.
// ---------------------------------------------------------------------
{$mode delphi}
library BorlandDOS;

uses
  App;

var
  MyApp: TApplication;

procedure BorlandDOS_Init; stdcall export;
begin
  MyApp.Init;
end;

procedure BorlandDOS_Run; stdcall export;
begin
  MyApp.Run;
end;

procedure BorlandDOS_Done; stdcall export;
begin
  MyApp.Done;
end;

exports
  BorlandDOS_Init,
  BorlandDOS_Run,
  BorlandDOS_Done;

begin
  WriteLn('outtter');
end.
