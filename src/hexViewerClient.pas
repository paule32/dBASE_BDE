unit hexViewerClient;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, StdCtrls, ExtCtrls, ATBinHex;

type
  TFrame3 = class(TFrame)
    ATBinHex1: TATBinHex;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

procedure add_hexViewer(par: Integer); stdcall;

implementation

{$R *.dfm}

procedure add_hexViewer(par: Integer);
begin

end;

exports
  add_hexViewer;

end.
