unit XMLmainMenu;

interface

uses Windows, Forms, Classes, Controls, ExtCtrls, Dialogs, Menus, JvMenus;

type
  TxmlMainMenu = class(TCustomPanel)
  private
    FOwnerForm: TForm;
    FmenuItems: Array of TMenuItem;
  protected
    procedure PanelOnMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState;
      X, Y  : Integer);
    procedure menuItemSubOnClick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  unit2;

constructor TxmlMainMenu.Create(AOwner: TComponent);
var
  menuItems    : Array of TMenuItem;
  menuItemSub1 : Array of TMenuItem;
begin
  inherited Create(AOwner);
  Left   := 0;
  Top    := 0;
  Height := 42;
  Align  := alTop;
  onMouseDown := PanelOnMouseDown;

  FOwnerForm := Form2;
  Form2.HTMLdesignerMenu.Items.Clear;

  SetLength(menuItems,2);
  menuItems[0] := TMenuItem.Create(self);
  menuItems[0].Caption := 'Add menu Item';

  menuItems[1] := TMenuItem.Create(self);
  menuItems[1].Caption := 'Add sub-menu Item';

  SetLength(menuItemSub1,1);
  menuItemSub1[0] := TMenuItem.Create(menuItems[0]);
  menuItemSub1[0].Caption := 'menu 1';
  menuItemSub1[0].OnClick := menuItemSubOnClick;

  menuItems[0].Add(menuItemSub1);
  Form2.HTMLdesignerMenu.Items.Add(menuItems);

end;

procedure TxmlMainMenu.menuItemSubOnClick(Sender: TObject);
var
  submenu: TxmlMainMenu;
begin
  submenu := TxmlMainMenu.Create(self);
  submenu.Parent  := self;
  submenu.Align   := alLeft;
  submenu.Left    := 10;
  submenu.Top     := 10;
  submenu.Width   := 84;
  submenu.Height  := 21;
  submenu.Visible := true;
end;

procedure TxmlMainMenu.PanelOnMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState;
  X, Y  : Integer);
begin
  if Button = mbRight then
  begin
    Form2.HTMLdesignerMenu.Popup(
    Mouse.CursorPos.X,
    Mouse.CursorPos.Y);
  end;
end;

destructor TxmlMainMenu.Destroy;
begin
  inherited Destroy;
end;

end.
