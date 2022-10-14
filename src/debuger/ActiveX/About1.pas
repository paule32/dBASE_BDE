unit About1;

{$WARN SYMBOL_PLATFORM OFF}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons;

type
  TActiveXDebugFormAbout = class(TForm)
    CtlImage: TSpeedButton;
    NameLbl: TLabel;
    OkBtn: TButton;
    CopyrightLbl: TLabel;
    DescLbl: TLabel;
  end;

procedure ShowActiveXDebugFormAbout;

implementation

{$R *.DFM}

procedure ShowActiveXDebugFormAbout;
begin
  with TActiveXDebugFormAbout.Create(nil) do
    try
      ShowModal;
    finally
      Free;
    end;
end;

end.
