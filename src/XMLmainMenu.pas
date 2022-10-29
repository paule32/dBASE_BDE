unit XMLmainMenu;

interface

uses
  Windows, Forms, Classes, Controls, ExtCtrls, Dialogs, Menus,
  Graphics, JvMenus, SysUtils;

type
  TxmlMainMenuItem = class(TCustomPanel)
  private
    FsubMenu: Array of TxmlMainMenuItem;
    FsubMenuFont: TFont;
    FsubMenuText: String;
  protected
    procedure Paint; override;
    procedure PanelOnMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState;
      X, Y  : Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TxmlMainMenu = class(TCustomPanel)
  private
    FOwnerForm: TForm;
    FmenuItems: Array of TMenuItem;
    FsubMenu  : Array of TxmlMainMenuItem;
  protected
    procedure PanelOnMouseDown(
      Sender: TObject;
      Button: TMouseButton;
      Shift : TShiftState;
      X, Y  : Integer);
    procedure menuItemSubOnClick(Sender: TObject);
    procedure menuItemDeleteOnClick(Sender: TObject);
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

uses
  unit2;

var
  FmenuPanel: TxmlMainMenuItem;
  FsubMenuNum : Integer;

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

  SetLength(menuItems,4);

  menuItems[0] := TMenuItem.Create(self); menuItems[0].Caption := 'Add menu Item';
  menuItems[1] := TMenuItem.Create(self); menuItems[1].Caption := 'Add sub-menu Item';
  menuItems[2] := TMenuItem.Create(self); menuItems[2].Caption := '-';
  menuItems[3] := TMenuItem.Create(self); menuItems[3].Caption := 'Delete menu Item';

  menuItems[3].OnClick := menuItemDeleteOnClick;

  SetLength(menuItemSub1,1);
  menuItemSub1[0] := TMenuItem.Create(menuItems[0]);
  menuItemSub1[0].Caption := 'menu 1';
  menuItemSub1[0].OnClick := menuItemSubOnClick;

  menuItems[0].Add(menuItemSub1);
  Form2.HTMLdesignerMenu.Items.Add(menuItems);


  //---
  SetLength(FsubMenu,High(FsubMenu)+1);
  FsubMenuNum := 0;
end;

procedure TxmlMainMenu.menuItemDeleteOnClick(Sender: TObject);
begin
  try FmenuPanel.Free; except end;
end;

procedure TxmlMainMenu.menuItemSubOnClick(Sender: TObject);
begin
  if High(FsubMenu) < 1 then
  SetLength(FsubMenu,1) else
  SetLength(FsubMenu,High(FsubMenu)+1);

  Fsubmenu[ High(FsubMenu) ] := TxmlMainMenuItem.Create(self);
  Fsubmenu[ High(FsubMenu) ].Parent   := self;
  Fsubmenu[ High(FsubMenu) ].Align    := alLeft;
  Fsubmenu[ High(FsubMenu) ].Width    := 84;
  Fsubmenu[ High(FsubMenu) ].Visible  := true;
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

{ TxmlMainMenuItem }

constructor TxmlMainMenuItem.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  OnMouseDown  := PanelOnMouseDown;;

  FsubMenuFont := TFont.Create;
  FsubMenuFont.Style := [fsBold];
  FsubMenuFont.Size  := 10;
  FsubMenuFont.Color := clBlue;

  inc(FsubMenuNum);
  FsubMenuText := 'Menu' + IntToStr(FsubMenuNum);
end;

procedure TxmlMainMenuItem.Paint;
begin
  inherited Paint;

  Canvas.Font.Assign(FsubMenuFont);
  Canvas.TextOut(
  (Canvas.TextWidth(FsubMenuText)) div 2,
  (Height - Canvas.Font.Size -  4) div 2,
  FsubMenuText);
end;

procedure TxmlMainMenuItem.PanelOnMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState;
  X, Y  : Integer);
begin
  if Button = mbRight then
  begin
    FmenuPanel := self;
    Form2.HTMLdesignerMenu.Popup(
    Mouse.CursorPos.X,
    Mouse.CursorPos.Y);
  end;
end;

destructor TxmlMainMenuItem.Destroy;
begin
  FsubMenuFont.Free;
  inherited Destroy;
end;

end.
