unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ComCtrls, DBCtrls, Grids, DBGrids,
  Menus, ExtCtrls, Mask, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, OleCtnrs, IniFiles, DateUtils;

type
  TForm2 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    Table1: TTable;
    ScrollBox2: TScrollBox;
    ScrollView: TScrollBox;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    Splitter4: TSplitter;
    Splitter3: TSplitter;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Splitter6: TSplitter;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Button3: TButton;
    Button4: TButton;
    DBGrid3: TDBGrid;
    ScrollBox1: TScrollBox;
    Panel6: TPanel;
    DBNavigator1: TDBNavigator;
    Panel7: TPanel;
    Label1: TLabel;
    TreeView2: TTreeView;
    Panel8: TPanel;
    Splitter7: TSplitter;
    Splitter8: TSplitter;
    PageControl4: TPageControl;
    TabSheet2: TTabSheet;
    Panel9: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    PageControl5: TPageControl;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel10: TPanel;
    Panel11: TPanel;
    UserLogGrid: TStringGrid;
    StringGrid2: TStringGrid;
    PageControl6: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet10: TTabSheet;
    ScrollBox4: TScrollBox;
    Button2: TButton;
    DBEdit5: TDBEdit;
    Button5: TButton;
    TreeView3: TTreeView;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    IdTCPClient1: TIdTCPClient;
    IdAntiFreeze1: TIdAntiFreeze;
    ScrollBox6: TScrollBox;
    StringGrid1: TStringGrid;
    ScrollBox7: TScrollBox;
    ConnectionListGrid: TStringGrid;
    Panel12: TPanel;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Panel3: TPanel;
    PageControl1: TPageControl;
    DataBases: TTabSheet;
    Splitter5: TSplitter;
    TreeView1: TTreeView;
    PageControl2: TPageControl;
    Definition: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet11: TTabSheet;
    ScrollBox8: TScrollBox;
    Splitter12: TSplitter;
    Splitter13: TSplitter;
    StringGrid3: TStringGrid;
    Panel16: TPanel;
    StringGrid4: TStringGrid;
    Panel17: TPanel;
    Panel18: TPanel;
    StringGrid5: TStringGrid;
    Button22: TButton;
    LocationPopupMenu: TPopupMenu;
    LocationListTimer: TTimer;
    Panel27: TPanel;
    Label12: TLabel;
    Panel13: TPanel;
    MiscToolsPanel: TPanel;
    Splitter14: TSplitter;
    PageControl7: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    ScrollBox11: TScrollBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    TimeTableGrid: TStringGrid;
    ComboBox1: TComboBox;
    TimeTableGrid_SelectAllButton: TButton;
    TimeTableGrid_deSelectButton: TButton;
    TimeTableGrid_SelectMark: TButton;
    TimeTableGrid_deSelectMark: TButton;
    TimeTableGrid_MultipleCheck: TCheckBox;
    TimeTableGrid_Location_List: TComboBox;
    TimeTableGrid_WeekList: TComboBox;
    ListBox4: TListBox;
    ListBox5: TListBox;
    TabSheet9: TTabSheet;
    ScrollBox5: TScrollBox;
    Panel15: TPanel;
    Button6: TButton;
    Edit3: TEdit;
    Button7: TButton;
    Edit4: TEdit;
    Button8: TButton;
    Edit5: TEdit;
    ListBox1: TListBox;
    TabSheet12: TTabSheet;
    ScrollBox9: TScrollBox;
    Panel19: TPanel;
    Button14: TButton;
    Edit6: TEdit;
    Button15: TButton;
    Edit7: TEdit;
    Button16: TButton;
    Edit8: TEdit;
    ListBox2: TListBox;
    Button17: TButton;
    Edit9: TEdit;
    TabSheet13: TTabSheet;
    ScrollBox10: TScrollBox;
    Panel20: TPanel;
    Button18: TButton;
    Edit10: TEdit;
    Button19: TButton;
    Edit11: TEdit;
    Button20: TButton;
    Edit12: TEdit;
    ListBox3: TListBox;
    Button21: TButton;
    Edit13: TEdit;
    TabSheet20: TTabSheet;
    ScrollBox18: TScrollBox;
    Label11: TLabel;
    PageControl8: TPageControl;
    TabSheet14: TTabSheet;
    ScrollBox12: TScrollBox;
    Memo1: TMemo;
    ListBox16: TListBox;
    ListBox17: TListBox;
    TabSheet15: TTabSheet;
    ScrollBox13: TScrollBox;
    Memo2: TMemo;
    ListBox14: TListBox;
    ListBox15: TListBox;
    TabSheet16: TTabSheet;
    ScrollBox14: TScrollBox;
    Memo3: TMemo;
    ListBox12: TListBox;
    ListBox13: TListBox;
    TabSheet17: TTabSheet;
    ScrollBox15: TScrollBox;
    Memo4: TMemo;
    ListBox10: TListBox;
    ListBox11: TListBox;
    TabSheet18: TTabSheet;
    ScrollBox16: TScrollBox;
    Memo5: TMemo;
    ListBox8: TListBox;
    ListBox9: TListBox;
    TabSheet19: TTabSheet;
    ScrollBox17: TScrollBox;
    Memo6: TMemo;
    ListBox6: TListBox;
    ListBox7: TListBox;
    Panel28: TPanel;
    Panel29: TPanel;
    Label13: TLabel;
    Panel21: TPanel;
    DNServerPanel: TPanel;
    Splitter11: TSplitter;
    Panel30: TPanel;
    PageControl9: TPageControl;
    TabSheet21: TTabSheet;
    ScrollBox19: TScrollBox;
    Panel31: TPanel;
    Label14: TLabel;
    Panel32: TPanel;
    ProxyServerPanel: TPanel;
    Splitter16: TSplitter;
    Panel24: TPanel;
    PageControl10: TPageControl;
    TabSheet22: TTabSheet;
    ScrollBox20: TScrollBox;
    Panel33: TPanel;
    Label15: TLabel;
    Panel25: TPanel;
    HttpServerPanel: TPanel;
    Splitter18: TSplitter;
    Panel34: TPanel;
    PageControl11: TPageControl;
    TabSheet23: TTabSheet;
    ScrollBox21: TScrollBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    ScrollBox3: TScrollBox;
    UserNameLabel: TLabel;
    UserPasswordLabel: TLabel;
    UserLocationLabel: TLabel;
    LastActiveLabel: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Panel14: TPanel;
    Label20: TLabel;
    DBEdit7: TDBEdit;
    Label21: TLabel;
    DBEdit8: TDBEdit;
    Label22: TLabel;
    DBEdit9: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure DesktopApplicationOLEActivate(Sender: TObject);
    procedure TimeTableGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TimeTableGridDblClick(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure TimeTableGrid_deSelectButtonClick(Sender: TObject);
    procedure TimeTableGrid_SelectAllButtonClick(Sender: TObject);
    procedure TimeTableGrid_SelectMarkClick(Sender: TObject);
    procedure TimeTableGrid_deSelectMarkClick(Sender: TObject);
    procedure TimeTableGrid_Location_ListMeasureItem(Control: TWinControl;
      Index: Integer; var Height: Integer);
    procedure TimeTableGrid_Location_ListDrawItem(Control: TWinControl;
      Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure TimeTableGrid_Location_ListSelect(Sender: TObject);
    procedure LocationListTimerTimer(Sender: TObject);
    procedure Panel29DblClick(Sender: TObject);
    procedure Panel31DblClick(Sender: TObject);
    procedure Panel27DblClick(Sender: TObject);
    procedure Panel33DblClick(Sender: TObject);
  private
    iniFile: TIniFile;
    strList: TStringList;
    locListRect: TRect;
    locListItemString: String;

    MiscToolsPanelWidth   : Integer;
    DNServerPanelWidth    : Integer;
    ProxyServerPanelWidth : Integer;
    HttpServerPanelWidth  : Integer;
  public

  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormCreate(Sender: TObject);
var
  x, y: Integer;
  len : Integer;
  chk : TCheckBox;
  cnf : String;
  b   : Boolean;
  sl  : TStringList;
begin
  cnf := ExtractFilePath(Application.ExeName);
  cnf := cnf + 'config.ini';
  if not FileExists(cnf) then
  begin
    ShowMessage('Warning: "config.ini"' + #13#10 +
    'could not be open !');
    exit;
  end;
  try
    try
      iniFile := TIniFile.Create(cnf);
      strList := TStringList.Create;
      strList.Delimiter := '=';
      iniFile.ReadSectionValues('Locations',strList);
      TimeTableGrid_Location_List.Items.Add('ALL');
      for len := 1 to strList.Count - 1 do
      begin
        TimeTableGrid_Location_List.Items.Add(
        strList.Values[IntToStr(len)]);
      end;

      MiscToolsPanelWidth   := MiscToolsPanel.Width;
      DNServerPanelWidth    := DNServerPanel.Width;
      ProxyServerPanelWidth := ProxyServerPanel.Width;
      HttpServerPanelWidth  := HttpServerPanel.Width;
    except
      ShowMessage('Exception in Unit2 occur.');
      exit;
    end;
  finally
  end;

  ConnectionListGrid.ColWidths[0] := 21;
  ConnectionListGrid.ColWidths[5] := 113;

  ConnectionListGrid.Cells[1,0] := 'Date / Time';
  ConnectionListGrid.Cells[2,0] := 'Log-Code';
  ConnectionListGrid.Cells[3,0] := 'Location';
  ConnectionListGrid.Cells[4,0] := 'User';
  ConnectionListGrid.Cells[5,0] := 'Action';

  TimeTableGrid_WeekList.Text := IntToStr(WeekOfTheYear(Now));

  UserLogGrid.ColWidths[0] := 21;

  UserLogGrid.Cells[1,0] := 'Date / Time';
  UserLogGrid.Cells[2,0] := 'Log-Code';
  UserLogGrid.Cells[3,0] := 'Action';

  TimeTableGrid.ColWidths[0] := 74;
  TimeTableGrid.Cells[0, 0] := 'Time';
  TimeTableGrid.Cells[0, 1] := '00:00 - 01:00';
  TimeTableGrid.Cells[0, 2] := '01:00 - 02:00';
  TimeTableGrid.Cells[0, 3] := '03:00 - 04:00';
  TimeTableGrid.Cells[0, 4] := '05:00 - 06:00';
  TimeTableGrid.Cells[0, 5] := '07:00 - 08:00';
  TimeTableGrid.Cells[0, 6] := '09:00 - 10:00';
  TimeTableGrid.Cells[0, 7] := '11:00 - 12:00';
  TimeTableGrid.Cells[0, 8] := '13:00 - 14:00';
  TimeTableGrid.Cells[0, 9] := '15:00 - 16:00';
  TimeTableGrid.Cells[0,10] := '17:00 - 18:00';
  TimeTableGrid.Cells[0,11] := '19:00 - 20:00';
  TimeTableGrid.Cells[0,12] := '21:00 - 22:00';
  TimeTableGrid.Cells[0,13] := '23:00 - 00:00';

  TimeTableGrid.Cells[1,0] := 'Mo';
  TimeTableGrid.Cells[2,0] := 'Ts';
  TimeTableGrid.Cells[3,0] := 'We';
  TimeTableGrid.Cells[4,0] := 'Th';
  TimeTableGrid.Cells[5,0] := 'Fr';
  TimeTableGrid.Cells[6,0] := 'Sa';
  TimeTableGrid.Cells[7,0] := 'Su';

  TimeTableGrid.Cells[2,2] := 't';

  LocationListTimer.Enabled := true;
end;

procedure TForm2.DesktopApplicationOLEActivate(Sender: TObject);
begin
  ShowMessage('test');
end;

procedure TForm2.TimeTableGridDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var
  x, y: Integer;
  function CheckBox(Value: String): Cardinal;
  begin
    if LowerCase(Value) = 't' then // Checked
    result:= DFCS_BUTTONCHECK or DFCS_CHECKED else
    result:= DFCS_BUTTONCHECK;
  end;
begin
  for   y := 1 to 13 do begin
    for x := 1 to  7 do begin
      if (Arow = y) and (ACol = x) then
      begin
        if (LowerCase(TimeTableGrid.Cells[ACol,ARow]) = 't') then
        TimeTableGrid.Canvas.Brush.Color := $00EAFFEA else
        TimeTableGrid.Canvas.Brush.Color := clRed;

        if gdSelected in State then
        TimeTableGrid.Canvas.Brush.Color := clBlue;

        TimeTableGrid.Canvas.FillRect(Rect);
        InflateRect(Rect, -4, -4);
        DrawFrameControl(TimeTableGrid.Canvas.Handle, Rect,DFC_Button,
        CheckBox(Trim(TimeTableGrid.Cells[ACol, ARow])));
      end;
    end;
  end;
end;

procedure TForm2.TimeTableGridDblClick(Sender: TObject);
var
  col, row: Integer;
begin
  col := TimeTableGrid.Col;
  row := TimeTableGrid.Row;

  if TimeTableGrid.Cells[col,row] = 't' then
     TimeTableGrid.Cells[col,row] := 'f' else
     TimeTableGrid.Cells[col,row] := 't' ;
end;

procedure TForm2.FormClick(Sender: TObject);
begin
  iniFile.Free;
end;

procedure TForm2.TimeTableGrid_deSelectButtonClick(Sender: TObject);
var
  x, y: Integer;
begin
  for   y := 1 to 13 do begin
    for x := 1 to  7 do begin
      begin
        TimeTableGrid.Cells[x,y] := 'f';
      end;
    end;
  end;
  TimeTableGrid.Repaint;
end;

procedure TForm2.TimeTableGrid_SelectAllButtonClick(Sender: TObject);
var
  x, y: Integer;
begin
  for   y := 1 to 13 do begin
    for x := 1 to  7 do begin
      begin
        TimeTableGrid.Cells[x,y] := 't';
      end;
    end;
  end;
  TimeTableGrid.Repaint;
end;

procedure TForm2.TimeTableGrid_SelectMarkClick(Sender: TObject);
var
  x, y: Integer;
begin
//  if (TimeTableGrid.Selection.Top <> TimeTableGrid.Selection.Bottom) then
  begin
    if not TimeTableGrid_MultipleCheck.Checked then
    begin
      for   y := 1 to 13 do begin
        for x := 1 to  7 do begin
          begin
            TimeTableGrid.Cells[x,y] := 'f';
          end;
        end;
      end;
    end;
    for y :=
      TimeTableGrid.Selection.Top     to
      TimeTableGrid.Selection.Bottom  do begin
      for x :=
        TimeTableGrid.Selection.Left  to
        TimeTableGrid.Selection.Right do begin
        begin
          TimeTableGrid.Cells[x,y] := 't';
        end;
      end;
    end;
    TimeTableGrid.Repaint;
  end;
end;

procedure TForm2.TimeTableGrid_deSelectMarkClick(Sender: TObject);
var
  x, y: Integer;
begin
  for y :=
    TimeTableGrid.Selection.Top     to
    TimeTableGrid.Selection.Bottom  do begin
    for x :=
      TimeTableGrid.Selection.Left  to
      TimeTableGrid.Selection.Right do begin
      begin
        TimeTableGrid.Cells[x,y] := 'f';
      end;
    end;
  end;
  TimeTableGrid.Repaint;
end;

procedure TForm2.TimeTableGrid_Location_ListMeasureItem(
  Control: TWinControl; Index: Integer; var Height: Integer);
begin
  Height := 21;
end;

procedure TForm2.TimeTableGrid_Location_ListDrawItem(Control: TWinControl;
  Index: Integer; Rect: TRect; State: TOwnerDrawState);
var
  tb: TButton;
begin
  with TimeTableGrid_Location_List do
  begin
    locListItemString := Items[Index];

    Canvas.FillRect(Rect);
    Canvas.TextOut(
    Rect.Left + 2,
    Rect.Top  + 4,
    locListItemString);

    Canvas.Font.Name := 'WingDings 3';
    Canvas.TextOut(
    Rect.Right - 16,
    Rect.Top   + 4, Chr($75));

    locListRect := Rect;
  end;
end;

procedure TForm2.TimeTableGrid_Location_ListSelect(Sender: TObject);
var
  MousePos: TPoint;
  r1, r2: TRect;
begin
  MousePos := TimeTableGrid_Location_List.
  ScreenToClient(Mouse.CursorPos);

  if ((MousePos.X-(locListRect.Right-15)) >=  8) and
     ((MousePos.X-(locListRect.Right-15)) <= 32) then
  begin
    ShowMessage(locListItemString);
    TimeTableGrid_Location_List.Invalidate;
  end;
end;

procedure TForm2.LocationListTimerTimer(Sender: TObject);
var
  MousePos: TPoint;
begin
  LocationListTimer.Enabled := false;
  MousePos := TimeTableGrid_Location_List.
  ScreenToClient(Mouse.CursorPos);
  LocationPopupMenu.Popup(MousePos.X,MousePos.Y);
  LocationListTimer.Interval := 5000;
end;

procedure TForm2.Panel29DblClick(Sender: TObject);
begin
  if MiscToolsPanel.Visible  then
  begin
    MiscToolsPanel.Visible := false;
    MiscToolsPanel.Width   := 0;
    Panel28.Width := 0;
    Panel13.Width := 0;
  end else
  begin
    MiscToolsPanel.Visible := true;
    MiscToolsPanel.Width   := MiscToolsPanelWidth;
    Panel28.Width          := MiscToolsPanelWidth;
    Panel13.Width          := MiscToolsPanelWidth;
  end;
end;

procedure TForm2.Panel31DblClick(Sender: TObject);
begin
  if DNServerPanel.Visible then
  begin
    DNServerPanel.Visible := false;
    DNServerPanel.Width   := 0;
    Panel21.Width := 0;
  end else
  begin
    DNServerPanel.Visible := true;
    DNServerPanel.Width   := DNServerPanelWidth;
    Panel21.Width         := DNServerPanelWidth;
  end;
end;

procedure TForm2.Panel27DblClick(Sender: TObject);
begin
  if ProxyServerPanel.Visible then
  begin
    ProxyServerPanel.Visible := false;
    ProxyServerPanel.Width   := 0;
    Panel32.Width := 0;
  end else
  begin
    ProxyServerPanel.Visible := true;
    ProxyServerPanel.Width   := ProxyServerPanelWidth;
    Panel32.Width            := ProxyServerPanelWidth;
  end;
end;

procedure TForm2.Panel33DblClick(Sender: TObject);
begin
  if HttpServerPanel.Visible then
  begin
    HttpServerPanel.Visible := false;
    HttpServerPanel.Width   := 0;
    Panel25.Width := 0;
  end else
  begin
    HttpServerPanel.Visible := true;
    HttpServerPanel.Width   := HttpServerPanelWidth;
    Panel25.Width           := HttpServerPanelWidth;
  end;
end;

end.