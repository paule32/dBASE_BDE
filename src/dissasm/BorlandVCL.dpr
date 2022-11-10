// ---------------------------------------------------------------------
// BorlandVCL.pas - Graphics user interface for diss.exe
//
// (c) 2022 by Jens Kallup - paule32
// all rights reserved.
// ---------------------------------------------------------------------
library BorlandVCL;

uses
  Forms,
  Dialogs,
  SysUtils,
  Classes,
  BorlandVCLApplicationForm in 'BorlandVCLApplicationForm.pas' {ApplicationForm};

{$R *.res}

procedure BorlandVCL_Init; stdcall export;
begin
  ApplicationForm := TApplicationForm.Create(nil);
end;

procedure BorlandVCL_Run; stdcall export;
begin
  if ApplicationForm = nil then
  begin
    ShowMessage('Application Window not initialized.');
    exit;
  end;
  ApplicationForm.ShowModal;
end;

procedure BorlandVCL_Done; stdcall export;
begin
end;

exports
  BorlandVCL_Init,
  BorlandVCL_Run,
  BorlandVCL_Done;

begin
end.
