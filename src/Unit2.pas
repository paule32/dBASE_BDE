unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ComCtrls, DBCtrls, Grids, DBGrids,
  Menus, ExtCtrls, Mask, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, OleCtnrs, IniFiles, DateUtils,
  ImgList, Buttons, TypInfo, JvComponentBase, JvTabBarXPPainter,
  JvExComCtrls, JvTabBar, JvExControls, JvArrowButton, JvComCtrls,
  JvExExtCtrls, JvExtComponent, JvComponentPanel, JvSplitter, ToolWin,
  JvCoolBar, JvBevel, JvPanel, JvItemsPanel, JvExStdCtrls, JvListBox,
  JvComboListBox, JvXPCore, JvBDELists, SynEdit, JvDesignSurface,
  JvInspector, JvPageListTreeView, JvCombobox, JvListComb, JvPageList,
  JvSpeedButton, JvButton, JvCtrls, TeeProcs, TeEngine, Chart, JvDesignUtils,
  JclRTTI, JvInspExtraEditors;

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
    DataSource1: TDataSource;
    Table1: TTable;
    ScrollBox2: TScrollBox;
    ScrollView: TScrollBox;
    IdTCPClient1: TIdTCPClient;
    IdAntiFreeze1: TIdAntiFreeze;
    LocationPopupMenu: TPopupMenu;
    LocationListTimer: TTimer;
    ImageList1: TImageList;
    Panel2: TPanel;
    TasksPageControl: TPageControl;
    TabSheet24: TTabSheet;
    TabSheet25: TTabSheet;
    TabSheet26: TTabSheet;
    TabSheet27: TTabSheet;
    TabSheet28: TTabSheet;
    ScrollBox23: TScrollBox;
    Splitter3: TSplitter;
    Panel22: TPanel;
    PageControl13: TPageControl;
    TabSheet29: TTabSheet;
    Splitter9: TSplitter;
    TreeView2: TTreeView;
    PageControl14: TPageControl;
    TabSheet30: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet31: TTabSheet;
    ScrollBox24: TScrollBox;
    Splitter10: TSplitter;
    Splitter15: TSplitter;
    StringGrid6: TStringGrid;
    Panel23: TPanel;
    StringGrid7: TStringGrid;
    Panel26: TPanel;
    Panel35: TPanel;
    StringGrid8: TStringGrid;
    ScrollBox1: TScrollBox;
    Splitter7: TSplitter;
    Splitter8: TSplitter;
    Panel7: TPanel;
    Label1: TLabel;
    Panel8: TPanel;
    PageControl5: TPageControl;
    TabSheet3: TTabSheet;
    ScrollBox7: TScrollBox;
    ConnectionListGrid: TStringGrid;
    Panel12: TPanel;
    Button_SendWarning: TJvArrowButton;
    JvArrowButton1: TJvArrowButton;
    JvArrowButton2: TJvArrowButton;
    JvArrowButton4: TJvArrowButton;
    JvArrowButton3: TJvArrowButton;
    ConnectionFilterPanel: TPanel;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    UserLogGrid: TStringGrid;
    TabSheet5: TTabSheet;
    Panel10: TPanel;
    StringGrid2: TStringGrid;
    PageControl4: TPageControl;
    TabSheet2: TTabSheet;
    Panel9: TPanel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    TabSheet10: TTabSheet;
    ScrollBox4: TScrollBox;
    Label2: TLabel;
    Label3: TLabel;
    Button2: TButton;
    DBEdit5: TDBEdit;
    Button5: TButton;
    TreeView3: TTreeView;
    Edit1: TEdit;
    Edit2: TEdit;
    Button22: TButton;
    ScrollBox22: TScrollBox;
    SystemViewGrid: TStringGrid;
    StaticText1: TStaticText;
    ScrollBox5: TScrollBox;
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
    ScrollBox8: TScrollBox;
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
    ScrollBox25: TScrollBox;
    PageControl1: TPageControl;
    TabSheet11: TTabSheet;
    ScrollBox26: TScrollBox;
    ScrollBox19: TScrollBox;
    PageControl2: TPageControl;
    TabSheet21: TTabSheet;
    ScrollBox27: TScrollBox;
    ScrollBox20: TScrollBox;
    PageControl11: TPageControl;
    TabSheet23: TTabSheet;
    ScrollBox21: TScrollBox;
    PageControl9: TPageControl;
    TabSheet22: TTabSheet;
    TabSheet32: TTabSheet;
    ScrollBox28: TScrollBox;
    StaticText2: TStaticText;
    JvPanel1: TJvPanel;
    JvArrowButton6: TJvArrowButton;
    JvArrowButton7: TJvArrowButton;
    BackgroundViewPanel: TJvPanel;
    JvSplitter1: TJvSplitter;
    JvPanel2: TJvPanel;
    data1: TMenuItem;
    dududa1: TMenuItem;
    JvDatabaseItems1: TJvDatabaseItems;
    Week14: TMenuItem;
    Monday4: TMenuItem;
    N0001AM1: TMenuItem;
    N0001am2: TMenuItem;
    N0001am3: TMenuItem;
    N0001am4: TMenuItem;
    N0001am5: TMenuItem;
    N0001am6: TMenuItem;
    N0001am7: TMenuItem;
    N0001am8: TMenuItem;
    N0001am9: TMenuItem;
    N0001am10: TMenuItem;
    N0001am11: TMenuItem;
    N0001am12: TMenuItem;
    N10001100pm1: TMenuItem;
    N09001000pm1: TMenuItem;
    N11001200pm1: TMenuItem;
    N07000800am1: TMenuItem;
    N8000900am1: TMenuItem;
    N09001000am1: TMenuItem;
    N10001100am1: TMenuItem;
    N11001200am1: TMenuItem;
    N07000800pm1: TMenuItem;
    N10001100pm2: TMenuItem;
    AfterMeridan1: TMenuItem;
    PastMeridian1: TMenuItem;
    N02000300pm1: TMenuItem;
    N05000600pm1: TMenuItem;
    Monday5: TMenuItem;
    PastMeridian2: TMenuItem;
    N11001200pm2: TMenuItem;
    N10001100pm3: TMenuItem;
    N09001000pm2: TMenuItem;
    N08000900pm1: TMenuItem;
    N07000800pm2: TMenuItem;
    N06000700pm1: TMenuItem;
    N05000600pm2: TMenuItem;
    N04000500pm1: TMenuItem;
    N03000400pm1: TMenuItem;
    N02000300pm2: TMenuItem;
    N01000200pm1: TMenuItem;
    N12000100pm1: TMenuItem;
    AfterMeridan2: TMenuItem;
    N11001200am2: TMenuItem;
    N10001100am2: TMenuItem;
    N09001000am2: TMenuItem;
    N08000900am1: TMenuItem;
    N07000800am2: TMenuItem;
    N06000700am1: TMenuItem;
    N05000600am1: TMenuItem;
    N04000500am1: TMenuItem;
    N03000400am1: TMenuItem;
    N02000300am1: TMenuItem;
    N01000200am1: TMenuItem;
    N00000100am1: TMenuItem;
    Monday6: TMenuItem;
    PastMeridian3: TMenuItem;
    N11001200pm3: TMenuItem;
    N10001100pm4: TMenuItem;
    N09001000pm3: TMenuItem;
    N08000900pm2: TMenuItem;
    N07000800pm3: TMenuItem;
    N06000700pm2: TMenuItem;
    N05000600pm3: TMenuItem;
    N04000500pm2: TMenuItem;
    N03000400pm2: TMenuItem;
    N02000300pm3: TMenuItem;
    N01000200pm2: TMenuItem;
    N12000100pm2: TMenuItem;
    AfterMeridan3: TMenuItem;
    N11001200am3: TMenuItem;
    N10001100am3: TMenuItem;
    N09001000am3: TMenuItem;
    N08000900am2: TMenuItem;
    N07000800am3: TMenuItem;
    N06000700am2: TMenuItem;
    N05000600am2: TMenuItem;
    N04000500am2: TMenuItem;
    N03000400am2: TMenuItem;
    N02000300am2: TMenuItem;
    N01000200am2: TMenuItem;
    N00000100am2: TMenuItem;
    Monday7: TMenuItem;
    PastMeridian4: TMenuItem;
    N11001200pm4: TMenuItem;
    N10001100pm5: TMenuItem;
    N09001000pm4: TMenuItem;
    N08000900pm3: TMenuItem;
    N07000800pm4: TMenuItem;
    N06000700pm3: TMenuItem;
    N05000600pm4: TMenuItem;
    N04000500pm3: TMenuItem;
    N03000400pm3: TMenuItem;
    N02000300pm4: TMenuItem;
    N01000200pm3: TMenuItem;
    N12000100pm3: TMenuItem;
    AfterMeridan4: TMenuItem;
    N11001200am4: TMenuItem;
    N10001100am4: TMenuItem;
    N09001000am4: TMenuItem;
    N08000900am3: TMenuItem;
    N07000800am4: TMenuItem;
    N06000700am3: TMenuItem;
    N05000600am3: TMenuItem;
    N04000500am3: TMenuItem;
    N03000400am3: TMenuItem;
    N02000300am3: TMenuItem;
    N01000200am3: TMenuItem;
    N00000100am3: TMenuItem;
    Monday8: TMenuItem;
    PastMeridian5: TMenuItem;
    N11001200pm5: TMenuItem;
    N10001100pm6: TMenuItem;
    N09001000pm5: TMenuItem;
    N08000900pm4: TMenuItem;
    N07000800pm5: TMenuItem;
    N06000700pm4: TMenuItem;
    N05000600pm5: TMenuItem;
    N04000500pm4: TMenuItem;
    N03000400pm4: TMenuItem;
    N02000300pm5: TMenuItem;
    N01000200pm4: TMenuItem;
    N12000100pm4: TMenuItem;
    AfterMeridan5: TMenuItem;
    N11001200am5: TMenuItem;
    N10001100am5: TMenuItem;
    N09001000am5: TMenuItem;
    N08000900am4: TMenuItem;
    N07000800am5: TMenuItem;
    N06000700am4: TMenuItem;
    N05000600am4: TMenuItem;
    N04000500am4: TMenuItem;
    N03000400am4: TMenuItem;
    N02000300am4: TMenuItem;
    N01000200am4: TMenuItem;
    N00000100am4: TMenuItem;
    Monday9: TMenuItem;
    PastMeridian6: TMenuItem;
    N11001200pm6: TMenuItem;
    N10001100pm7: TMenuItem;
    N09001000pm6: TMenuItem;
    N08000900pm5: TMenuItem;
    N07000800pm6: TMenuItem;
    N06000700pm5: TMenuItem;
    N05000600pm6: TMenuItem;
    N04000500pm5: TMenuItem;
    N03000400pm5: TMenuItem;
    N02000300pm6: TMenuItem;
    N01000200pm5: TMenuItem;
    N12000100pm5: TMenuItem;
    AfterMeridan6: TMenuItem;
    N11001200am6: TMenuItem;
    N10001100am6: TMenuItem;
    N09001000am6: TMenuItem;
    N08000900am5: TMenuItem;
    N07000800am6: TMenuItem;
    N06000700am5: TMenuItem;
    N05000600am5: TMenuItem;
    N04000500am5: TMenuItem;
    N03000400am5: TMenuItem;
    N02000300am5: TMenuItem;
    N01000200am5: TMenuItem;
    N00000100am5: TMenuItem;
    Monday10: TMenuItem;
    PastMeridian7: TMenuItem;
    N11001200pm7: TMenuItem;
    N10001100pm8: TMenuItem;
    N09001000pm7: TMenuItem;
    N08000900pm6: TMenuItem;
    N07000800pm7: TMenuItem;
    N06000700pm6: TMenuItem;
    N05000600pm7: TMenuItem;
    N04000500pm6: TMenuItem;
    N03000400pm6: TMenuItem;
    N02000300pm7: TMenuItem;
    N01000200pm6: TMenuItem;
    N12000100pm6: TMenuItem;
    AfterMeridan7: TMenuItem;
    N11001200am7: TMenuItem;
    N10001100am7: TMenuItem;
    N09001000am7: TMenuItem;
    N08000900am6: TMenuItem;
    N07000800am7: TMenuItem;
    N06000700am6: TMenuItem;
    N05000600am6: TMenuItem;
    N04000500am6: TMenuItem;
    N03000400am6: TMenuItem;
    N02000300am6: TMenuItem;
    N01000200am6: TMenuItem;
    N00000100am6: TMenuItem;
    Week11: TMenuItem;
    Sonntag1: TMenuItem;
    PastMeridian8: TMenuItem;
    N11001200pm8: TMenuItem;
    N10001100pm9: TMenuItem;
    N09001000pm8: TMenuItem;
    N08000900pm7: TMenuItem;
    N07000800pm8: TMenuItem;
    N06000700pm7: TMenuItem;
    N05000600pm8: TMenuItem;
    N04000500pm7: TMenuItem;
    N03000400pm7: TMenuItem;
    N02000300pm8: TMenuItem;
    N01000200pm7: TMenuItem;
    N12000100pm7: TMenuItem;
    AfterMeridan8: TMenuItem;
    N11001200am8: TMenuItem;
    N10001100am8: TMenuItem;
    N09001000am8: TMenuItem;
    N08000900am7: TMenuItem;
    N07000800am8: TMenuItem;
    N06000700am7: TMenuItem;
    N05000600am7: TMenuItem;
    N04000500am7: TMenuItem;
    N03000400am7: TMenuItem;
    N02000300am7: TMenuItem;
    N01000200am7: TMenuItem;
    N00000100am7: TMenuItem;
    Samstag1: TMenuItem;
    PastMeridian9: TMenuItem;
    N11001200pm9: TMenuItem;
    N10001100pm10: TMenuItem;
    N09001000pm9: TMenuItem;
    N08000900pm8: TMenuItem;
    N07000800pm9: TMenuItem;
    N06000700pm8: TMenuItem;
    N05000600pm9: TMenuItem;
    N04000500pm8: TMenuItem;
    N03000400pm8: TMenuItem;
    N02000300pm9: TMenuItem;
    N01000200pm8: TMenuItem;
    N12000100pm8: TMenuItem;
    AfterMeridan9: TMenuItem;
    N11001200am9: TMenuItem;
    N10001100am9: TMenuItem;
    N09001000am9: TMenuItem;
    N08000900am8: TMenuItem;
    N07000800am9: TMenuItem;
    N06000700am8: TMenuItem;
    N05000600am8: TMenuItem;
    N04000500am8: TMenuItem;
    N03000400am8: TMenuItem;
    N02000300am8: TMenuItem;
    N01000200am8: TMenuItem;
    N00000100am8: TMenuItem;
    Freitag1: TMenuItem;
    PastMeridian10: TMenuItem;
    N11001200pm10: TMenuItem;
    N10001100pm11: TMenuItem;
    N09001000pm10: TMenuItem;
    N08000900pm9: TMenuItem;
    N07000800pm10: TMenuItem;
    N06000700pm9: TMenuItem;
    N05000600pm10: TMenuItem;
    N04000500pm9: TMenuItem;
    N03000400pm9: TMenuItem;
    N02000300pm10: TMenuItem;
    N01000200pm9: TMenuItem;
    N12000100pm9: TMenuItem;
    AfterMeridan10: TMenuItem;
    N11001200am10: TMenuItem;
    N10001100am10: TMenuItem;
    N09001000am10: TMenuItem;
    N08000900am9: TMenuItem;
    N07000800am10: TMenuItem;
    N06000700am9: TMenuItem;
    N05000600am9: TMenuItem;
    N04000500am9: TMenuItem;
    N03000400am9: TMenuItem;
    N02000300am9: TMenuItem;
    N01000200am9: TMenuItem;
    N00000100am9: TMenuItem;
    Donnerstag1: TMenuItem;
    PastMeridian11: TMenuItem;
    N11001200pm11: TMenuItem;
    N10001100pm12: TMenuItem;
    N09001000pm11: TMenuItem;
    N08000900pm10: TMenuItem;
    N07000800pm11: TMenuItem;
    N06000700pm10: TMenuItem;
    N05000600pm11: TMenuItem;
    N04000500pm10: TMenuItem;
    N03000400pm10: TMenuItem;
    N02000300pm11: TMenuItem;
    N01000200pm10: TMenuItem;
    N12000100pm10: TMenuItem;
    AfterMeridan11: TMenuItem;
    N11001200am11: TMenuItem;
    N10001100am11: TMenuItem;
    N09001000am11: TMenuItem;
    N08000900am10: TMenuItem;
    N07000800am11: TMenuItem;
    N06000700am10: TMenuItem;
    N05000600am10: TMenuItem;
    N04000500am10: TMenuItem;
    N03000400am10: TMenuItem;
    N02000300am10: TMenuItem;
    N01000200am10: TMenuItem;
    N00000100am10: TMenuItem;
    Mittwoch1: TMenuItem;
    PastMeridian12: TMenuItem;
    N11001200pm12: TMenuItem;
    N10001100pm13: TMenuItem;
    N09001000pm12: TMenuItem;
    N08000900pm11: TMenuItem;
    N07000800pm12: TMenuItem;
    N06000700pm11: TMenuItem;
    N05000600pm12: TMenuItem;
    N04000500pm11: TMenuItem;
    N03000400pm11: TMenuItem;
    N02000300pm12: TMenuItem;
    N01000200pm11: TMenuItem;
    N12000100pm11: TMenuItem;
    AfterMeridan12: TMenuItem;
    N11001200am12: TMenuItem;
    N10001100am12: TMenuItem;
    N09001000am12: TMenuItem;
    N08000900am11: TMenuItem;
    N07000800am12: TMenuItem;
    N06000700am11: TMenuItem;
    N05000600am11: TMenuItem;
    N04000500am11: TMenuItem;
    N03000400am11: TMenuItem;
    N02000300am11: TMenuItem;
    N01000200am11: TMenuItem;
    N00000100am11: TMenuItem;
    Dienstag1: TMenuItem;
    PastMeridian13: TMenuItem;
    N11001200pm13: TMenuItem;
    N10001100pm14: TMenuItem;
    N09001000pm13: TMenuItem;
    N08000900pm12: TMenuItem;
    N07000800pm13: TMenuItem;
    N06000700pm12: TMenuItem;
    N05000600pm13: TMenuItem;
    N04000500pm12: TMenuItem;
    N03000400pm12: TMenuItem;
    N02000300pm13: TMenuItem;
    N01000200pm12: TMenuItem;
    N12000100pm12: TMenuItem;
    AfterMeridan13: TMenuItem;
    N11001200am13: TMenuItem;
    N10001100am13: TMenuItem;
    N09001000am13: TMenuItem;
    N08000900am12: TMenuItem;
    N07000800am13: TMenuItem;
    N06000700am12: TMenuItem;
    N05000600am12: TMenuItem;
    N04000500am12: TMenuItem;
    N03000400am12: TMenuItem;
    N02000300am12: TMenuItem;
    N01000200am12: TMenuItem;
    N00000100am12: TMenuItem;
    Monday1: TMenuItem;
    PastMeridian14: TMenuItem;
    N11001200pm14: TMenuItem;
    N10001100pm15: TMenuItem;
    N09001000pm14: TMenuItem;
    N08000900pm13: TMenuItem;
    N07000800pm14: TMenuItem;
    N06000700pm13: TMenuItem;
    N05000600pm14: TMenuItem;
    N04000500pm13: TMenuItem;
    N03000400pm13: TMenuItem;
    N02000300pm14: TMenuItem;
    N01000200pm13: TMenuItem;
    N12000100pm13: TMenuItem;
    AfterMeridan14: TMenuItem;
    N11001200am14: TMenuItem;
    N10001100am14: TMenuItem;
    N09001000am14: TMenuItem;
    N08000900am13: TMenuItem;
    N07000800am14: TMenuItem;
    N06000700am13: TMenuItem;
    N05000600am13: TMenuItem;
    N04000500am13: TMenuItem;
    N03000400am13: TMenuItem;
    N02000300am13: TMenuItem;
    N01000200am13: TMenuItem;
    N00000100am13: TMenuItem;
    Week12: TMenuItem;
    Sonntag2: TMenuItem;
    PastMeridian15: TMenuItem;
    N11001200pm15: TMenuItem;
    N10001100pm16: TMenuItem;
    N09001000pm15: TMenuItem;
    N08000900pm14: TMenuItem;
    N07000800pm15: TMenuItem;
    N06000700pm14: TMenuItem;
    N05000600pm15: TMenuItem;
    N04000500pm14: TMenuItem;
    N03000400pm14: TMenuItem;
    N02000300pm15: TMenuItem;
    N01000200pm14: TMenuItem;
    N12000100pm14: TMenuItem;
    AfterMeridan15: TMenuItem;
    N11001200am15: TMenuItem;
    N10001100am15: TMenuItem;
    N09001000am15: TMenuItem;
    N08000900am14: TMenuItem;
    N07000800am15: TMenuItem;
    N06000700am14: TMenuItem;
    N05000600am14: TMenuItem;
    N04000500am14: TMenuItem;
    N03000400am14: TMenuItem;
    N02000300am14: TMenuItem;
    N01000200am14: TMenuItem;
    N00000100am14: TMenuItem;
    Samstag2: TMenuItem;
    PastMeridian16: TMenuItem;
    N11001200pm16: TMenuItem;
    N10001100pm17: TMenuItem;
    N09001000pm16: TMenuItem;
    N08000900pm15: TMenuItem;
    N07000800pm16: TMenuItem;
    N06000700pm15: TMenuItem;
    N05000600pm16: TMenuItem;
    N04000500pm15: TMenuItem;
    N03000400pm15: TMenuItem;
    N02000300pm16: TMenuItem;
    N01000200pm15: TMenuItem;
    N12000100pm15: TMenuItem;
    AfterMeridan16: TMenuItem;
    N11001200am16: TMenuItem;
    N10001100am16: TMenuItem;
    N09001000am16: TMenuItem;
    N08000900am15: TMenuItem;
    N07000800am16: TMenuItem;
    N06000700am15: TMenuItem;
    N05000600am15: TMenuItem;
    N04000500am15: TMenuItem;
    N03000400am15: TMenuItem;
    N02000300am15: TMenuItem;
    N01000200am15: TMenuItem;
    N00000100am15: TMenuItem;
    Freitag2: TMenuItem;
    PastMeridian17: TMenuItem;
    N11001200pm17: TMenuItem;
    N10001100pm18: TMenuItem;
    N09001000pm17: TMenuItem;
    N08000900pm16: TMenuItem;
    N07000800pm17: TMenuItem;
    N06000700pm16: TMenuItem;
    N05000600pm17: TMenuItem;
    N04000500pm16: TMenuItem;
    N03000400pm16: TMenuItem;
    N02000300pm17: TMenuItem;
    N01000200pm16: TMenuItem;
    N12000100pm16: TMenuItem;
    AfterMeridan17: TMenuItem;
    N11001200am17: TMenuItem;
    N10001100am17: TMenuItem;
    N09001000am17: TMenuItem;
    N08000900am16: TMenuItem;
    N07000800am17: TMenuItem;
    N06000700am16: TMenuItem;
    N05000600am16: TMenuItem;
    N04000500am16: TMenuItem;
    N03000400am16: TMenuItem;
    N02000300am16: TMenuItem;
    N01000200am16: TMenuItem;
    N00000100am16: TMenuItem;
    Donnerstag2: TMenuItem;
    PastMeridian18: TMenuItem;
    N11001200pm18: TMenuItem;
    N10001100pm19: TMenuItem;
    N09001000pm18: TMenuItem;
    N08000900pm17: TMenuItem;
    N07000800pm18: TMenuItem;
    N06000700pm17: TMenuItem;
    N05000600pm18: TMenuItem;
    N04000500pm17: TMenuItem;
    N03000400pm17: TMenuItem;
    N02000300pm18: TMenuItem;
    N01000200pm17: TMenuItem;
    N12000100pm17: TMenuItem;
    AfterMeridan18: TMenuItem;
    N11001200am18: TMenuItem;
    N10001100am18: TMenuItem;
    N09001000am18: TMenuItem;
    N08000900am17: TMenuItem;
    N07000800am18: TMenuItem;
    N06000700am17: TMenuItem;
    N05000600am17: TMenuItem;
    N04000500am17: TMenuItem;
    N03000400am17: TMenuItem;
    N02000300am17: TMenuItem;
    N01000200am17: TMenuItem;
    N00000100am17: TMenuItem;
    Mittwoch2: TMenuItem;
    PastMeridian19: TMenuItem;
    N11001200pm19: TMenuItem;
    N10001100pm20: TMenuItem;
    N09001000pm19: TMenuItem;
    N08000900pm18: TMenuItem;
    N07000800pm19: TMenuItem;
    N06000700pm18: TMenuItem;
    N05000600pm19: TMenuItem;
    N04000500pm18: TMenuItem;
    N03000400pm18: TMenuItem;
    N02000300pm19: TMenuItem;
    N01000200pm18: TMenuItem;
    N12000100pm18: TMenuItem;
    AfterMeridan19: TMenuItem;
    N11001200am19: TMenuItem;
    N10001100am19: TMenuItem;
    N09001000am19: TMenuItem;
    N08000900am18: TMenuItem;
    N07000800am19: TMenuItem;
    N06000700am18: TMenuItem;
    N05000600am18: TMenuItem;
    N04000500am18: TMenuItem;
    N03000400am18: TMenuItem;
    N02000300am18: TMenuItem;
    N01000200am18: TMenuItem;
    N00000100am18: TMenuItem;
    Dienstag2: TMenuItem;
    PastMeridian20: TMenuItem;
    N11001200pm20: TMenuItem;
    N10001100pm21: TMenuItem;
    N09001000pm20: TMenuItem;
    N08000900pm19: TMenuItem;
    N07000800pm20: TMenuItem;
    N06000700pm19: TMenuItem;
    N05000600pm20: TMenuItem;
    N04000500pm19: TMenuItem;
    N03000400pm19: TMenuItem;
    N02000300pm20: TMenuItem;
    N01000200pm19: TMenuItem;
    N12000100pm19: TMenuItem;
    AfterMeridan20: TMenuItem;
    N11001200am20: TMenuItem;
    N10001100am20: TMenuItem;
    N09001000am20: TMenuItem;
    N08000900am19: TMenuItem;
    N07000800am20: TMenuItem;
    N06000700am19: TMenuItem;
    N05000600am19: TMenuItem;
    N04000500am19: TMenuItem;
    N03000400am19: TMenuItem;
    N02000300am19: TMenuItem;
    N01000200am19: TMenuItem;
    N00000100am19: TMenuItem;
    Monday2: TMenuItem;
    PastMeridian21: TMenuItem;
    N11001200pm21: TMenuItem;
    N10001100pm22: TMenuItem;
    N09001000pm21: TMenuItem;
    N08000900pm20: TMenuItem;
    N07000800pm21: TMenuItem;
    N06000700pm20: TMenuItem;
    N05000600pm21: TMenuItem;
    N04000500pm20: TMenuItem;
    N03000400pm20: TMenuItem;
    N02000300pm21: TMenuItem;
    N01000200pm20: TMenuItem;
    N12000100pm20: TMenuItem;
    AfterMeridan21: TMenuItem;
    N11001200am21: TMenuItem;
    N10001100am21: TMenuItem;
    N09001000am21: TMenuItem;
    N08000900am20: TMenuItem;
    N07000800am21: TMenuItem;
    N06000700am20: TMenuItem;
    N05000600am20: TMenuItem;
    N04000500am20: TMenuItem;
    N03000400am20: TMenuItem;
    N02000300am20: TMenuItem;
    N01000200am20: TMenuItem;
    N00000100am20: TMenuItem;
    Week13: TMenuItem;
    Sonntag3: TMenuItem;
    PastMeridian22: TMenuItem;
    N11001200pm22: TMenuItem;
    N10001100pm23: TMenuItem;
    N09001000pm22: TMenuItem;
    N08000900pm21: TMenuItem;
    N07000800pm22: TMenuItem;
    N06000700pm21: TMenuItem;
    N05000600pm22: TMenuItem;
    N04000500pm21: TMenuItem;
    N03000400pm21: TMenuItem;
    N02000300pm22: TMenuItem;
    N01000200pm21: TMenuItem;
    N12000100pm21: TMenuItem;
    AfterMeridan22: TMenuItem;
    N11001200am22: TMenuItem;
    N10001100am22: TMenuItem;
    N09001000am22: TMenuItem;
    N08000900am21: TMenuItem;
    N07000800am22: TMenuItem;
    N06000700am21: TMenuItem;
    N05000600am21: TMenuItem;
    N04000500am21: TMenuItem;
    N03000400am21: TMenuItem;
    N02000300am21: TMenuItem;
    N01000200am21: TMenuItem;
    N00000100am21: TMenuItem;
    Samstag3: TMenuItem;
    PastMeridian23: TMenuItem;
    N11001200pm23: TMenuItem;
    N10001100pm24: TMenuItem;
    N09001000pm23: TMenuItem;
    N08000900pm22: TMenuItem;
    N07000800pm23: TMenuItem;
    N06000700pm22: TMenuItem;
    N05000600pm23: TMenuItem;
    N04000500pm22: TMenuItem;
    N03000400pm22: TMenuItem;
    N02000300pm23: TMenuItem;
    N01000200pm22: TMenuItem;
    N12000100pm22: TMenuItem;
    AfterMeridan23: TMenuItem;
    N11001200am23: TMenuItem;
    N10001100am23: TMenuItem;
    N09001000am23: TMenuItem;
    N08000900am22: TMenuItem;
    N07000800am23: TMenuItem;
    N06000700am22: TMenuItem;
    N05000600am22: TMenuItem;
    N04000500am22: TMenuItem;
    N03000400am22: TMenuItem;
    N02000300am22: TMenuItem;
    N01000200am22: TMenuItem;
    N00000100am22: TMenuItem;
    Freitag3: TMenuItem;
    PastMeridian24: TMenuItem;
    N11001200pm24: TMenuItem;
    N10001100pm25: TMenuItem;
    N09001000pm24: TMenuItem;
    N08000900pm23: TMenuItem;
    N07000800pm24: TMenuItem;
    N06000700pm23: TMenuItem;
    N05000600pm24: TMenuItem;
    N04000500pm23: TMenuItem;
    N03000400pm23: TMenuItem;
    N02000300pm24: TMenuItem;
    N01000200pm23: TMenuItem;
    N12000100pm23: TMenuItem;
    AfterMeridan24: TMenuItem;
    N11001200am24: TMenuItem;
    N10001100am24: TMenuItem;
    N09001000am24: TMenuItem;
    N08000900am23: TMenuItem;
    N07000800am24: TMenuItem;
    N06000700am23: TMenuItem;
    N05000600am23: TMenuItem;
    N04000500am23: TMenuItem;
    N03000400am23: TMenuItem;
    N02000300am23: TMenuItem;
    N01000200am23: TMenuItem;
    N00000100am23: TMenuItem;
    Donnerstag3: TMenuItem;
    PastMeridian25: TMenuItem;
    N11001200pm25: TMenuItem;
    N10001100pm26: TMenuItem;
    N09001000pm25: TMenuItem;
    N08000900pm24: TMenuItem;
    N07000800pm25: TMenuItem;
    N06000700pm24: TMenuItem;
    N05000600pm25: TMenuItem;
    N04000500pm24: TMenuItem;
    N03000400pm24: TMenuItem;
    N02000300pm25: TMenuItem;
    N01000200pm24: TMenuItem;
    N12000100pm24: TMenuItem;
    AfterMeridan25: TMenuItem;
    N11001200am25: TMenuItem;
    N10001100am25: TMenuItem;
    N09001000am25: TMenuItem;
    N08000900am24: TMenuItem;
    N07000800am25: TMenuItem;
    N06000700am24: TMenuItem;
    N05000600am24: TMenuItem;
    N04000500am24: TMenuItem;
    N03000400am24: TMenuItem;
    N02000300am24: TMenuItem;
    N01000200am24: TMenuItem;
    N00000100am24: TMenuItem;
    Mittwoch3: TMenuItem;
    PastMeridian26: TMenuItem;
    N11001200pm26: TMenuItem;
    N10001100pm27: TMenuItem;
    N09001000pm26: TMenuItem;
    N08000900pm25: TMenuItem;
    N07000800pm26: TMenuItem;
    N06000700pm25: TMenuItem;
    N05000600pm26: TMenuItem;
    N04000500pm25: TMenuItem;
    N03000400pm25: TMenuItem;
    N02000300pm26: TMenuItem;
    N01000200pm25: TMenuItem;
    N12000100pm25: TMenuItem;
    AfterMeridan26: TMenuItem;
    N11001200am26: TMenuItem;
    N10001100am26: TMenuItem;
    N09001000am26: TMenuItem;
    N08000900am25: TMenuItem;
    N07000800am26: TMenuItem;
    N06000700am25: TMenuItem;
    N05000600am25: TMenuItem;
    N04000500am25: TMenuItem;
    N03000400am25: TMenuItem;
    N02000300am25: TMenuItem;
    N01000200am25: TMenuItem;
    N00000100am25: TMenuItem;
    Dienstag3: TMenuItem;
    PastMeridian27: TMenuItem;
    N11001200pm27: TMenuItem;
    N10001100pm28: TMenuItem;
    N09001000pm27: TMenuItem;
    N08000900pm26: TMenuItem;
    N07000800pm27: TMenuItem;
    N06000700pm26: TMenuItem;
    N05000600pm27: TMenuItem;
    N04000500pm26: TMenuItem;
    N03000400pm26: TMenuItem;
    N02000300pm27: TMenuItem;
    N01000200pm26: TMenuItem;
    N12000100pm26: TMenuItem;
    AfterMeridan27: TMenuItem;
    N11001200am27: TMenuItem;
    N10001100am27: TMenuItem;
    N09001000am27: TMenuItem;
    N08000900am26: TMenuItem;
    N07000800am27: TMenuItem;
    N06000700am26: TMenuItem;
    N05000600am26: TMenuItem;
    N04000500am26: TMenuItem;
    N03000400am26: TMenuItem;
    N02000300am26: TMenuItem;
    N01000200am26: TMenuItem;
    N00000100am26: TMenuItem;
    Monday3: TMenuItem;
    PastMeridian28: TMenuItem;
    N11001200pm28: TMenuItem;
    N10001100pm29: TMenuItem;
    N09001000pm28: TMenuItem;
    N08000900pm27: TMenuItem;
    N07000800pm28: TMenuItem;
    N06000700pm27: TMenuItem;
    N05000600pm28: TMenuItem;
    N04000500pm27: TMenuItem;
    N03000400pm27: TMenuItem;
    N02000300pm28: TMenuItem;
    N01000200pm27: TMenuItem;
    N12000100pm27: TMenuItem;
    AfterMeridan28: TMenuItem;
    N11001200am28: TMenuItem;
    N10001100am28: TMenuItem;
    N09001000am28: TMenuItem;
    N08000900am27: TMenuItem;
    N07000800am28: TMenuItem;
    N06000700am27: TMenuItem;
    N05000600am27: TMenuItem;
    N04000500am27: TMenuItem;
    N03000400am27: TMenuItem;
    N02000300am27: TMenuItem;
    N01000200am27: TMenuItem;
    N00000100am27: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    TabSheet33: TTabSheet;
    TabSheet34: TTabSheet;
    ScrollBox29: TScrollBox;
    ScrollBox6: TScrollBox;
    PageControl6: TPageControl;
    TabSheet6: TTabSheet;
    TabSheet35: TTabSheet;
    ScrollBox30: TScrollBox;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Splitter1: TSplitter;
    Panel6: TPanel;
    SynEdit1: TSynEdit;
    Splitter2: TSplitter;
    Panel13: TPanel;
    ListBox19: TListBox;
    JvDesignSurface1: TJvDesignSurface;
    BorlandPainter: TJvInspectorBorlandPainter;
    ScrollBox31: TScrollBox;
    Panel16: TPanel;
    Splitter4: TSplitter;
    Panel17: TPanel;
    PageControl10: TPageControl;
    TabSheet36: TTabSheet;
    TabSheet37: TTabSheet;
    JvInspector1: TJvInspector;
    JvInspector2: TJvInspector;
    Splitter5: TSplitter;
    Panel18: TPanel;
    Panel21: TPanel;
    Panel24: TPanel;
    ListView1: TListView;
    Panel25: TPanel;
    JvDesignScrollBox1: TJvDesignScrollBox;
    DevelopmentDesignerPanel: TJvDesignPanel;
    Splitter6: TSplitter;
    ScrollBox32: TScrollBox;
    Splitter11: TSplitter;
    PageControl12: TPageControl;
    TabSheet38: TTabSheet;
    ScrollBox33: TScrollBox;
    Panel27: TPanel;
    Splitter12: TSplitter;
    Panel30: TPanel;
    ScrollBox34: TScrollBox;
    SynEdit2: TSynEdit;
    ScrollBox35: TScrollBox;
    JvSettingsTreeView1: TJvSettingsTreeView;
    Splitter13: TSplitter;
    JvPageList1: TJvPageList;
    JvStandardPage1: TJvStandardPage;
    JvStandardPage2: TJvStandardPage;
    JvImageComboBox1: TJvImageComboBox;
    Panel28: TPanel;
    ListBox20: TListBox;
    RichEdit1: TRichEdit;
    ChatSendTextButton: TJvImgBtn;
    PageControl15: TPageControl;
    TabSheet39: TTabSheet;
    ScrollBox36: TScrollBox;
    ListBox21: TListBox;
    PageControl3: TPageControl;
    TabSheet1: TTabSheet;
    Panel5: TPanel;
    Button3: TButton;
    Button4: TButton;
    DBGrid3: TDBGrid;
    ScrollBox3: TScrollBox;
    UserNameLabel: TLabel;
    UserPasswordLabel: TLabel;
    UserLocationLabel: TLabel;
    LastActiveLabel: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Image1: TImage;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    ScrollBox37: TScrollBox;
    Chart1: TChart;
    DBNavigator1: TDBNavigator;
    Panel14: TPanel;
    Splitter14: TSplitter;
    Panel29: TPanel;
    Panel31: TPanel;
    Splitter16: TSplitter;
    Panel32: TPanel;
    Splitter17: TSplitter;
    StringGrid1: TStringGrid;
    Panel33: TPanel;
    Splitter18: TSplitter;
    Panel34: TPanel;
    Splitter19: TSplitter;
    JvSettingsTreeView2: TJvSettingsTreeView;
    JvPageList2: TJvPageList;
    JvStandardPage3: TJvStandardPage;
    JvStandardPage4: TJvStandardPage;
    JvImageComboBox2: TJvImageComboBox;
    PageControl16: TPageControl;
    TabSheet40: TTabSheet;
    PageScroller1: TPageScroller;
    DevelopmentMenuPanel: TPanel;
    BackgroundViewButton: TJvImgBtn;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton3: TJvSpeedButton;
    JvSpeedButton4: TJvSpeedButton;
    JvSpeedButton5: TJvSpeedButton;
    JvSpeedButton6: TJvSpeedButton;
    TabSheet41: TTabSheet;
    TabSheet42: TTabSheet;
    DotNETPainter: TJvInspectorDotNETPainter;
    procedure FormCreate(Sender: TObject);
    procedure DesktopApplicationOLEActivate(Sender: TObject);
    procedure TimeTableGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure TimeTableGridDblClick(Sender: TObject);
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
    procedure SystemViewGridDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure data1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure JvComboListBox1MeasureItem(Control: TWinControl;
      Index: Integer; var Height: Integer);
    procedure Week11MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Week21MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Week31MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Week41MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure JvArrowButton6Click(Sender: TObject);
    procedure AfterMeridan1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Week13MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Donnerstag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan25MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan28MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan27MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan26MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Freitag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Samstag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Sonntag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian28MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian27MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian26MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian25MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan24MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian24MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan23MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian23MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure AfterMeridan22Click(Sender: TObject);
    procedure AfterMeridan22MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure PastMeridian22MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Dienstag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Mittwoch3MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure dududa1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Dienstag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Mittwoch2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Donnerstag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Freitag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Samstag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Sonntag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Dienstag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Mittwoch1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Donnerstag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Freitag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Samstag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Sonntag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday10MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday9MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday8MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday7MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday6MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday5MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure Monday4MeasureItem(Sender: TObject; ACanvas: TCanvas;
      var Width, Height: Integer);
    procedure TasksPageControlChange(Sender: TObject);
    procedure BackgroundViewButtonClick(Sender: TObject);
    procedure DevelopmentDesignerPanel_Paint(Sender: TObject);
    procedure DevelopmentDesignerPanelGetAddClass(Sender: TObject;
      var ioClass: String);
    procedure JvSpeedButton6Click(Sender: TObject);
    procedure JvSpeedButton5Click(Sender: TObject);
    procedure JvSpeedButton4Click(Sender: TObject);
    procedure JvInspector1AfterItemCreate(Sender: TObject;
      Item: TJvCustomInspectorItem);
    procedure DevelopmentDesignerPanelSelectionChange(Sender: TObject);
    procedure JvInspector1DataValueChanged(Sender: TObject;
      Data: TJvCustomInspectorData);
    procedure FormDestroy(Sender: TObject);
  protected
//    procedure ButtonA_Paint(Sender: TObject; Button: TMouseButton;  Shift: TShiftState; X, Y: Integer);
  private
    iniFile: TIniFile;
    strList: TStringList;
    locListRect: TRect;
    locListItemString: String;

    MiscToolsPanelWidth   : Integer;
    DNServerPanelWidth    : Integer;
    ProxyServerPanelWidth : Integer;
    HttpServerPanelWidth  : Integer;

    BoolsAsChecks: Boolean;
    ActiveDesignerControl : TControl;

    procedure AddInspectorSettings;
    procedure AddInspectorDimension;

    procedure GetBoolsAsChecks(Sender: TJvInspectorEventData; var Value: Int64);
    procedure SetBoolsAsChecks(Sender: TJvInspectorEventData; var Value: Int64);

    procedure ChangeChkState(const Item: TJvCustomInspectorItem);
  public
    DesignClass: string;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

var
  VerInfoStr: string = 'Version 0.1';

  dim_left  : String = '0';
  dim_top   : String = '0';
  dim_width : string = '0';
  dim_height: string = '0';

  comp_dim_left   : TJvCustomInspectorItem;
  comp_dim_top    : TJvCustomInspectorItem;
  comp_dim_width  : TJvCustomInspectorItem;
  comp_dim_height : TJvCustomInspectorItem;

type
  TMyPainter = class(TComponent)
  private
    FString: String;
  public
    constructor Create(AOwner: TComponent);
  published
    property Text: String read FString write FString;
  end;


procedure TForm2.ChangeChkState(const Item: TJvCustomInspectorItem);
var
  I: Integer;
begin
  if Item is TJvInspectorBooleanItem then
    TJvInspectorBooleanItem(Item).ShowAsCheckbox := BoolsAsChecks;
  for I := 0 to Item.Count - 1 do
    ChangeChkState(Item[I]);
end;

procedure TForm2.GetBoolsAsChecks(Sender: TJvInspectorEventData; var Value: Int64);
begin
  Value := Ord(BoolsAsChecks);
end;

procedure TForm2.SetBoolsAsChecks(Sender: TJvInspectorEventData; var Value: Int64);
begin
  if (Value <> 0) <> BoolsAsChecks then
  begin
    BoolsAsChecks := Value <> 0;
    JvInspector1.BeginUpdate;
    try
      ChangeChkState(JvInspector1.Root);
    finally
      JvInspector1.EndUpdate;
    end;
  end;
end;



constructor TMyPainter.Create(AOwner: TComponent);
begin
//  inherited Create(AOwner);
end;

procedure TForm2.AddInspectorSettings;
var
  InspCat: TJvInspectorCustomCategoryItem;
begin
  InspCat := TJvInspectorCustomCategoryItem.Create(JvInspector1.Root, nil);
  InspCat.DisplayName := 'Inspector Settings';

  TJvInspectorPropData.New(InspCat, JvInspector1, GetPropInfo(JvInspector1, 'Painter')).DisplayName := 'Style';
  TJvInspectorVarData .New(InspCat, 'AboutJVCL', TypeInfo(string), @VerInfoStr).DisplayName := 'About';

  with TJvInspectorEventData(TJvInspectorEventData.New(InspCat, 'Use check marks', System.TypeInfo(Boolean)).Data) do
  begin
    OnGetAsOrdinal := GetBoolsAsChecks;
    OnSetAsOrdinal := SetBoolsAsChecks;
  end;
  InspCat.Expanded := True;
end;

procedure TForm2.AddInspectorDimension;
var
  Cat: TJvInspectorCustomCategoryItem;
begin
  Cat := TJvInspectorCustomCategoryItem.Create(JvInspector1.Root, nil);
  Cat.DisplayName  := 'Dimension';

  comp_dim_width  := TJvInspectorVarData.New(Cat, '0', TypeInfo(String), @dim_width );
  comp_dim_width.DisplayName   := 'Width';
  comp_dim_width.DisplayValue  := '0';

  comp_dim_top    := TJvInspectorVarData.New(Cat, '0', TypeInfo(String), @dim_top   );
  comp_dim_top.DisplayName     := 'Top';
  comp_dim_top.DisplayValue    := '0';

  comp_dim_height := TJvInspectorVarData.New(Cat, '0', TypeInfo(String), @dim_height);
  comp_dim_height.DisplayName  := 'Height';
  comp_dim_height.DisplayValue := '0';

  comp_dim_left   := TJvInspectorVarData.New(Cat, '0', TypeInfo(String), @dim_left  );
  comp_dim_left.DisplayName    := 'Left';
  comp_dim_left.DisplayValue   := '0';
end;

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

      with SystemViewGrid do
      begin
        DefaultRowHeight := 24;
        ColWidths[0] := 24;
        ColWidths[1] := 100;
        ColWidths[2] := 84;
      end;

      with DevelopmentDesignerPanel do
      begin
        Surface.Active := true;
        Color := clBtnFace;
        DrawRules := false;
        Clear;
        OnPaint := DevelopmentDesignerPanel_Paint;
        Invalidate;
      end;

      BoolsAsChecks := false;
      AddInspectorSettings;
      AddInspectorDimension;

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

//  LocationListTimer.Enabled := true;
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

procedure TForm2.SystemViewGridDrawCell(
  Sender: TObject;
  ACol,   ARow: Integer;
  Rect:   TRect;
  State:  TGridDrawState);
  procedure drawSymbol(i: Integer);
  var
    img: TImage;
    pic: TGraphic;
  begin
    try
      img := TImage.Create(nil);
      img.Width          := 24;
      img.Height         := 24;
      img.Stretch        := true;
      img.Proportional   := true;
      img.Picture.Bitmap := nil;
      ImageList1.GetBitmap(i,img.Picture.Bitmap);
      SystemViewGrid.Canvas.Draw(rect.Left,rect.Top,img.Picture.Bitmap);
    finally
      img.Free;
    end;
  end;
  procedure drawText(AString: String); begin
    SystemViewGrid.Canvas.TextOut(rect.Left+2,rect.Top+4,AString);
  end;
begin
  with SystemViewGrid.Canvas do
  begin
    if (ACol = 0) then
    begin
      case ARow of
      0: begin drawSymbol(0); end;
      1: begin drawSymbol(4); end;
      2: begin drawSymbol(5); end;
      3: begin drawSymbol(7); end;
      4: begin drawSymbol(6); end;
      5: begin drawSymbol(3); end;
      end;
    end;

    if (ACol = 1) or (ACol = 2) then
    begin
      if (gdSelected in State) and (ACol = 1) then
      begin
        Brush.Color := clBlue;
        Font.Color  := clWhite;
        Font.Style  := [fsBold];
      end else
      if (gdSelected in State) and (ACol = 2) then
      begin
        Brush.Color := clAqua;
        Font.Color  := clBlack;
        Font.Style  := [fsBold];
      end else
      begin
        Brush.Color := clWhite;
        Font.Color  := clBlack;
        Font.Style  := [];
      end;
      FillRect(Rect);
      if (ACol = 1) then
      begin
        case ARow of
        0: begin drawText('Warning'     ); end;
        1: begin drawText('Connection'  ); end;
        2: begin drawText('User'        ); end;
        3: begin drawText('SYSTEM TABLE'); end;
        4: begin drawText('SYSTEM VIEW' ); end;
        5: begin drawText('Tables'      ); end;
        end;
      end;
    end;
  end;
end;

procedure TForm2.data1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Height := 26;
  Width  := 110;
end;

procedure TForm2.JvComboListBox1MeasureItem(Control: TWinControl;
  Index: Integer; var Height: Integer);
begin
  Height := 26;
  Width  := 110;
end;

procedure TForm2.Week11MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 64;
end;

procedure TForm2.Week21MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 64;
end;

procedure TForm2.Week31MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 64;
end;

procedure TForm2.Week41MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 64;
end;

procedure TForm2.JvArrowButton6Click(Sender: TObject);
begin
(*  if JvComboListBox1.Enabled = true then
  begin
    JvComboListBox1.Enabled := false;
    JvComboListBox1.Visible := false;
  end else
  begin
    JvComboListBox1.Enabled := true;
    JvComboListBox1.Visible := true;
    JvComboListBox1.Top := 48;
    JvComboListBox1.Left := 1;
  end;*)
end;

procedure TForm2.AfterMeridan1MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 84;
end;

procedure TForm2.Week13MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 74;
end;

procedure TForm2.Donnerstag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100
end;

procedure TForm2.AfterMeridan25MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan28MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan27MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan26MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.Freitag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TForm2.Samstag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TForm2.Sonntag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TForm2.PastMeridian28MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.PastMeridian27MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.PastMeridian26MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.PastMeridian25MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan24MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.PastMeridian24MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan23MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.PastMeridian23MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan22Click(Sender: TObject);
begin
  Width := 96;
end;

procedure TForm2.AfterMeridan22MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.PastMeridian22MeasureItem(Sender: TObject;
  ACanvas: TCanvas; var Width, Height: Integer);
begin
  Width := 96;
end;

procedure TForm2.Monday3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TForm2.Dienstag3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TForm2.Mittwoch3MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width := 100;
end;

procedure TForm2.dududa1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Height := 26;
  Width  := 110;
end;

procedure TForm2.Monday2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Width  := 100;
end;

procedure TForm2.Dienstag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Mittwoch2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Donnerstag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Freitag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Samstag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Sonntag2MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Dienstag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Mittwoch1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Donnerstag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Freitag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Samstag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Sonntag1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday10MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday9MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday8MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday7MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday6MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday5MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.Monday4MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
Width  := 110;
end;

procedure TForm2.TasksPageControlChange(Sender: TObject);
begin
  if TasksPageControl.TabIndex = 6 then
  begin
    Panel1.Visible    := false;
    Splitter2.Visible := false;
  end else
  begin
    Panel1.Visible := true;
    Splitter2.Visible := true;
    Splitter2.Top := Panel1.Height;
  end;
end;

procedure TForm2.BackgroundViewButtonClick(Sender: TObject);
begin
  if BackgroundViewButton.Color = $008080FF then
  begin
    BackgroundViewButton.Color := $0080FF80;
    BackgroundViewPanel.Height := 20;
    showmessage('xxxx');
  end else
  begin
    BackgroundViewButton.Color := $008080FF;
    BackgroundViewPanel.Height := 200;
  end;
end;

procedure TForm2.DevelopmentDesignerPanel_Paint(Sender: TObject);
begin
  with DevelopmentDesignerPanel do
    DesignPaintGrid(Canvas, ClientRect, Color);
end;

procedure TForm2.DevelopmentDesignerPanelGetAddClass(Sender: TObject;
  var ioClass: String);
begin
  ioClass := DesignClass;

  DesignClass := '';
  jvSpeedButton1.Down := true;
end;

procedure TForm2.JvSpeedButton6Click(Sender: TObject);
begin
  DesignClass := 'TEdit';
end;

procedure TForm2.JvSpeedButton5Click(Sender: TObject);
begin
  DesignClass := 'TButton';
end;

procedure TForm2.JvSpeedButton4Click(Sender: TObject);
begin
  DesignClass := 'TLabel';
end;

var
  MyPaint: TMyPainter;
procedure TForm2.JvInspector1AfterItemCreate(
  Sender: TObject;
  Item: TJvCustomInspectorItem);
begin
  if (Item.Data <> nil) and (CompareText(Item.Data.Name, 'Painter') = 0) then
  with Item as TJvInspectorComponentItem do
  begin
    AddOwner(self);
  end
end;
procedure TForm2.DevelopmentDesignerPanelSelectionChange(Sender: TObject);
var
  idx,cnt: Integer;
  s : String;
  tc: TControl;
begin
  with DevelopmentDesignerPanel do
  begin
    for idx := 0 to ControlCount - 1 do
    begin
      tc := Controls[idx];
      ActiveDesignerControl := tc;
      if Surface.Selector.IsSelected(tc) then
      begin
        if tc.ClassName = 'TButton' then
        begin
          comp_dim_left  .DisplayValue := IntToStr(TButton(tc).Left  );
          comp_dim_top   .DisplayValue := IntToStr(TButton(tc).Top   );
          comp_dim_width .DisplayValue := IntToStr(TButton(tc).Width );
          comp_dim_height.DisplayValue := IntToStr(TButton(tc).Height);
        end else
        if tc.ClassName = 'TEdit' then
        begin
          comp_dim_left  .DisplayValue := IntToStr(TEdit(tc).Left  );
          comp_dim_top   .DisplayValue := IntToStr(TEdit(tc).Top   );
          comp_dim_width .DisplayValue := IntToStr(TEdit(tc).Width );
          comp_dim_height.DisplayValue := IntToStr(TEdit(tc).Height);
        end else
        if tc.ClassName = 'TLabel' then
        begin
          comp_dim_left  .DisplayValue := IntToStr(TLabel(tc).Left  );
          comp_dim_top   .DisplayValue := IntToStr(TLabel(tc).Top   );
          comp_dim_width .DisplayValue := IntToStr(TLabel(tc).Width );
          comp_dim_height.DisplayValue := IntToStr(TLabel(tc).Height);
        end;
        break;
      end;
    end;
  end;
end;

procedure TForm2.JvInspector1DataValueChanged(
  Sender: TObject;
  Data: TJvCustomInspectorData);
var
  idx: Integer;
  dn: String;
  dv: Integer;
begin
  with DevelopmentDesignerPanel do
  begin
    for idx := 0 to Data.ItemCount - 1 do
    begin
      dn := LowerCase(Data.Items[idx].DisplayName);
      dv := StrToInt (Data.AsString);

      if Data.Items[idx].Parent.DisplayName = 'Dimension' then
      begin
        if ActiveDesignerControl is TButton then
        begin
          if dn = 'width'  then TButton(ActiveDesignerControl).width  := dv else
          if dn = 'height' then TButton(ActiveDesignerControl).height := dv else
          if dn = 'top'    then TButton(ActiveDesignerControl).top    := dv else
          if dn = 'left'   then TButton(ActiveDesignerControl).left   := dv;
        end else
        if ActiveDesignerControl is TButton then
        begin
          if dn = 'width'  then TEdit(ActiveDesignerControl).width  := dv else
          if dn = 'height' then TEdit(ActiveDesignerControl).height := dv else
          if dn = 'top'    then TEdit(ActiveDesignerControl).top    := dv else
          if dn = 'left'   then TEdit(ActiveDesignerControl).left   := dv;
        end else
        if ActiveDesignerControl is TLabel then
        begin
          if dn = 'width'  then TLabel(ActiveDesignerControl).width  := dv else
          if dn = 'height' then TLabel(ActiveDesignerControl).height := dv else
          if dn = 'top'    then TLabel(ActiveDesignerControl).top    := dv else
          if dn = 'left'   then TLabel(ActiveDesignerControl).left   := dv;
        end;
      end

    end;
  end;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
  iniFile.Free;
end;

initialization
  RegisterClass(TMainMenu);
  RegisterClass(TPopupMenu);
  RegisterClass(TLabel);
  RegisterClass(TButton);
  RegisterClass(TButton);
  RegisterClass(TEdit);

  TJvInspectorAlignItem.RegisterAsDefaultItem;
  TJvInspectorAnchorsItem.RegisterAsDefaultItem;
  TJvInspectorColorItem.RegisterAsDefaultItem;
  TJvInspectorTImageIndexItem.RegisterAsDefaultItem;

end.
