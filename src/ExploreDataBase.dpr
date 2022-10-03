program ExploreDataBase;

uses
  Forms,
  Unit2 in 'Unit2.pas' {Form2},
  Unit1 in 'Unit1.pas' {DataBaseExplorer: TAppletModule},
  SetupLocale in 'SetupLocale.pas' {SetupLocaleFrame: TFrame};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataBaseExplorer, DataBaseExplorer);
  Application.Run;
end.
