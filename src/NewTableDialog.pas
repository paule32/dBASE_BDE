unit NewTableDialog;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, Dialogs,
  Unit2;

type
  TOKRightDlg = class(TForm)
    OKBtn: TButton;
    CancelBtn: TButton;
    Bevel1: TBevel;
    Edit1: TEdit;
    Label1: TLabel;
    procedure CancelBtnClick(Sender: TObject);
  private
  public
    FormServer : TForm2;
  end;

var
  OKRightDlg: TOKRightDlg;

implementation

{$R *.dfm}

procedure TOKRightDlg.CancelBtnClick(Sender: TObject);
begin
  if Length(Trim(Edit1.Text)) < 1 then
  begin
    ShowMessage('Warning: No table name set.' + #13#10 +
    'Not able to create a new table with empty string.');
    FormServer.FNewTableName := '';
    Close;
  end;

  FormServer.FNewTableName := Trim(Edit1.Text);
  Close;
end;

end.
