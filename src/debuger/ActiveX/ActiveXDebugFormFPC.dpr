library ActiveXDebugFormFPC;

uses
  ComServ,
  ActiveXDebugFormFPC_TLB in 'ActiveXDebugFormFPC_TLB.pas',
  ActiveXDebugFormImpl1 in 'ActiveXDebugFormImpl1.pas' {ActiveXDebugForm: TActiveForm} {ActiveXDebugForm: CoClass},
  About1 in 'About1.pas' {ActiveXDebugFormAbout};

{$E ocx}

exports
  DllGetClassObject,
  DllCanUnloadNow,
  DllRegisterServer,
  DllUnregisterServer;

{$R *.TLB}

{$R *.RES}

begin
end.
