unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, CtlPanel;

type
  TDataBaseExplorer = class(TAppletModule)
    procedure AppletModuleActivate(Sender: TObject; Data: Integer);
  private
  { private declarations }
  protected
  { protected declarations }
  public
  { public declarations }
  end;

var
  DataBaseExplorer: TDataBaseExplorer;

implementation

{$R *.DFM}

uses unit2;

procedure TDataBaseExplorer.AppletModuleActivate(Sender: TObject;
  Data: Integer);
begin
  Form2 := TForm2.Create(nil);
  Form2.ShowModal;
end;

end.
