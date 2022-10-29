unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, DBTables, ComCtrls, DBCtrls, Grids, DBGrids,
  Menus, ExtCtrls, Mask, IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IniFiles, DateUtils,
  ImgList, Buttons, TypInfo, JvComponentBase, JvTabBarXPPainter,
  JvExComCtrls, JvTabBar, JvExControls, JvArrowButton, JvComCtrls,
  JvExExtCtrls, JvExtComponent, JvComponentPanel, JvSplitter, ToolWin,
  JvCoolBar, JvBevel, JvPanel, JvItemsPanel, JvExStdCtrls, JvListBox,
  JvComboListBox, JvXPCore, JvBDELists, SynEdit, JvDesignSurface,
  JvPageListTreeView, JvCombobox, JvListComb, JvPageList,
  JvSpeedButton, JvButton, JvCtrls, TeeProcs, TeEngine, Chart, JvDesignUtils,
  JclRTTI, JvInspExtraEditors, JvExMask, JvToolEdit, JvColorCombo,
  JvDialogs, JvInspector, SetupLocale, SynEditMiscClasses, SynEditSearch,
  SynEditRegexSearch, JvDataSource, JvDBGridFooter, JvExDBGrids, JvDBGrid,
  JvDBUltimGrid, JvDBCheckBox, JvExGrids, JvStringGrid, JvCheckBox,
  JvBDEQuery, JvBaseDlg, JvSelectDirectory, JvWaitingGradient, OleCtrls,
  ActiveXDebuggerFormProj1_TLB, ActiveXDebugFormFPC_TLB, JvMenus, AppEvnts,
  JvStringHolder, JvNavigationPane, JvEditorCommon, JvEditor, JvHLEditor,
  JvHLEditorPropertyForm, SHDocVw, mshtml, ActiveX, JvEdit, JvSpin,
  JvDBControls, JvToolBar, SynEditHighlighter, SynHighlighterHtml, xmldom,
  MyHintWindow, xmlMainMenu, XMLIntf, msxmldom, XMLDoc, JvInterpreter,
  Console;

(*var
  CppModule: HMODULE = 0;
type
  TFrameClassFunc =  procedure(frm: TForm; scr: TScrollBox; x,y,w,h:Integer); stdcall;
  *)

  procedure create__MyCppFrame(frm: Integer; scr: TScrollBox; x,y,w,h:Integer); stdcall; external 'dbgFrame.dll' name 'create__MyCppFrame';
  procedure destroy_MyCppFrame;               stdcall; external 'dbgFrame.dll'  name 'destroy_MyCppFrame';
  procedure resize__MyCppFrame(frm: Integer); stdcall; external 'dbgFrame.dll'  name 'resize__MyCppFrame';

// Commands to pass to HtmlHelp()
const
  HH_DISPLAY_TOPIC        = $0000;
  HH_HELP_FINDER          = $0000;  // WinHelp equivalent
  HH_DISPLAY_TOC          = $0001;
  HH_DISPLAY_INDEX        = $0002;
  HH_DISPLAY_SEARCH       = $0003;
  HH_SET_WIN_TYPE         = $0004;
  HH_GET_WIN_TYPE         = $0005;
  HH_GET_WIN_HANDLE       = $0006;
  HH_ENUM_INFO_TYPE       = $0007;  // Get Info type name, call repeatedly to enumerate, -1 at end
  HH_SET_INFO_TYPE        = $0008;  // Add Info type to filter.
  HH_SYNC                 = $0009;
  HH_RESERVED1            = $000A;
  HH_RESERVED2            = $000B;
  HH_RESERVED3            = $000C;
  HH_KEYWORD_LOOKUP       = $000D;
  HH_DISPLAY_TEXT_POPUP   = $000E;  // display string resource id or text in a popup window
  HH_HELP_CONTEXT         = $000F;  // display mapped numeric value in dwData
  HH_TP_HELP_CONTEXTMENU  = $0010;  // text popup help, same as WinHelp HELP_CONTEXTMENU
  HH_TP_HELP_WM_HELP      = $0011;  // text popup help, same as WinHelp HELP_WM_HELP
  HH_CLOSE_ALL            = $0012;  // close all windows opened directly or indirectly by the caller
  HH_ALINK_LOOKUP         = $0013;  // ALink version of HH_KEYWORD_LOOKUP
  HH_GET_LAST_ERROR       = $0014;  // not currently implemented // See HHERROR.h
  HH_ENUM_CATEGORY        = $0015;	// Get category name, call repeatedly to enumerate, -1 at end
  HH_ENUM_CATEGORY_IT     = $0016;  // Get category info type members, call repeatedly to enumerate, -1 at end
  HH_RESET_IT_FILTER      = $0017;  // Clear the info type filter of all info types.
  HH_SET_INCLUSIVE_FILTER = $0018;  // set inclusive filtering method for untyped topics to be included in display
  HH_SET_EXCLUSIVE_FILTER = $0019;  // set exclusive filtering method for untyped topics to be excluded from display
  HH_INITIALIZE           = $001C;  // Initializes the help system.
  HH_UNINITIALIZE         = $001D;  // Uninitializes the help system.
  HH_PRETRANSLATEMESSAGE  = $00FD;  // Pumps messages. (NULL, NULL, MSG*).
  HH_SET_GLOBAL_PROPERTY  = $00FC;  // Set a global property. (NULL, NULL, HH_GPROP)

  function HtmlHelp(hwndCaller: THandle; pszFile: PChar; uCommand: cardinal; dwData: longint): THandle; stdcall;
           external 'hhctrl.ocx' name 'HtmlHelpA';

type
  TForm2 = class(TForm)
    StatusBar1: TStatusBar;
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
    MenuEdit: TJvArrowButton;
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
    ScrollBox6: TScrollBox;
    JvDesignSurface1: TJvDesignSurface;
    BorlandPainter: TJvInspectorBorlandPainter;
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
    Panel33: TPanel;
    Splitter18: TSplitter;
    Panel34: TPanel;
    Splitter19: TSplitter;
    SetupPageTreeView: TJvSettingsTreeView;
    DotNETPainter: TJvInspectorDotNETPainter;
    SetupPageList: TJvPageList;
    SetupPageLanguage: TJvStandardPage;
    LangPage0: TJvStandardPage;
    ScrollBox38: TScrollBox;
    SetupLangPageControl: TPageControl;
    SetupPageLangENU: TTabSheet;
    SetupPageLangDEU: TTabSheet;
    ScrollBox40: TScrollBox;
    SetupLangInfoLabel: TLabel;
    TabSheet43: TTabSheet;
    ScrollBox41: TScrollBox;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FindDialog1: TFindDialog;
    SynEditSearch1: TSynEditSearch;
    JvTableItems1: TJvTableItems;
    JvBDEItems1: TJvBDEItems;
    JvDataSource1: TJvDataSource;
    JvQuery1: TJvQuery;
    Panel23: TPanel;
    Panel45: TPanel;
    Splitter15: TSplitter;
    Panel35: TPanel;
    Panel46: TPanel;
    Splitter20: TSplitter;
    Panel42: TPanel;
    Panel44: TPanel;
    JvStringGrid3: TJvStringGrid;
    JvStringGrid4: TJvStringGrid;
    JvStringGrid5: TJvStringGrid;
    JvSelectDirectory1: TJvSelectDirectory;
    JvOpenDialog1: TJvOpenDialog;
    TaskPageDevelopment: TTabSheet;
    DevPanelBar: TJvTabBar;
    DevPageList: TJvPageList;
    DesignerPage: TJvStandardPage;
    EditorPage: TJvStandardPage;
    TableDataPage: TJvStandardPage;
    DebugPage: TJvStandardPage;
    ScrollBox31: TScrollBox;
    Splitter4: TSplitter;
    Panel16: TPanel;
    Splitter5: TSplitter;
    Panel17: TPanel;
    DesignerControlsComboBox: TJvCheckedComboBox;
    PageControl10: TPageControl;
    TabSheet36: TTabSheet;
    JvInspector1: TJvInspector;
    TabSheet37: TTabSheet;
    JvInspector2: TJvInspector;
    Panel24: TPanel;
    ListView1: TListView;
    Panel18: TPanel;
    Splitter6: TSplitter;
    Panel21: TPanel;
    AppSwitchButton: TJvImgBtn;
    Panel25: TPanel;
    JvDesignScrollBox1: TJvDesignScrollBox;
    DevelopmentDesignerPanel: TJvDesignPanel;
    ScrollBox32: TScrollBox;
    ScrollBox30: TScrollBox;
    Panel4: TPanel;
    Splitter10: TSplitter;
    Splitter11: TSplitter;
    PageControl12: TPageControl;
    TabSheet38: TTabSheet;
    ScrollBox33: TScrollBox;
    Splitter12: TSplitter;
    Panel27: TPanel;
    ScrollBox35: TScrollBox;
    Splitter13: TSplitter;
    JvSettingsTreeView1: TJvSettingsTreeView;
    JvPageList1: TJvPageList;
    JvStandardPage1: TJvStandardPage;
    JvStandardPage2: TJvStandardPage;
    JvImageComboBox1: TJvImageComboBox;
    Panel28: TPanel;
    Panel30: TPanel;
    ScrollBox34: TScrollBox;
    SynEdit2: TSynEdit;
    Panel1: TPanel;
    Splitter1: TSplitter;
    ListBox18: TJvSettingsTreeView;
    Panel3: TPanel;
    JvCheckedComboBox1: TJvCheckedComboBox;
    Panel13: TPanel;
    ListBox19: TListBox;
    Panel6: TPanel;
    Splitter2: TSplitter;
    EditorScrollBox: TScrollBox;
    Panel26: TPanel;
    ScrollBox42: TScrollBox;
    DataTablePageControl: TPageControl;
    DataPage: TTabSheet;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    Panel36: TPanel;
    JvCheckedComboBox2: TJvCheckedComboBox;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    Panel37: TPanel;
    Panel38: TPanel;
    FieldPage: TTabSheet;
    ToolBar2: TToolBar;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton15: TToolButton;
    ToolButton16: TToolButton;
    ToolButton17: TToolButton;
    Panel39: TPanel;
    JvCheckedComboBox3: TJvCheckedComboBox;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    Panel40: TPanel;
    Panel41: TPanel;
    DataPageGrid2: TJvStringGrid;
    TabSheet47: TTabSheet;
    TabSheet48: TTabSheet;
    JvModernTabBarPainter1: TJvModernTabBarPainter;
    ProgressBar1: TJvWaitingGradient;
    ScrollBox29: TScrollBox;
    Panel43: TPanel;
    Panel47: TPanel;
    JvTabBar1: TJvTabBar;
    JvModernTabBarPainter2: TJvModernTabBarPainter;
    JvSpeedButton7: TJvSpeedButton;
    JvSpeedButton8: TJvSpeedButton;
    modusButton: TJvArrowButton;
    JvPopupMenu1: TJvPopupMenu;
    dBASE1: TMenuItem;
    Pascal1: TMenuItem;
    JvXPMenuItemPainter1: TJvXPMenuItemPainter;
    JvSpeedButton9: TJvSpeedButton;
    ISOLISP1: TMenuItem;
    dBase4DOS1: TMenuItem;
    N17: TMenuItem;
    Timer1: TTimer;
    JvImgBtn4: TJvImgBtn;
    JvImgBtn5: TJvImgBtn;
    SourceCodeGrid: TStringGrid;
    Panel48: TPanel;
    Splitter21: TSplitter;
    SourceTextEditor: TSynEdit;
    JvSpeedButton10: TJvSpeedButton;
    JvSpeedButton11: TJvSpeedButton;
    SelectionTimer: TTimer;
    SourceTextEditorStringHolder: TJvStrHolder;
    TabSheet6: TTabSheet;
    TaskPageHelpAuthoring: TTabSheet;
    ScrollBox43: TScrollBox;
    ScrollBox44: TScrollBox;
    ComponentPageControl: TPageControl;
    TabSheet40: TTabSheet;
    PageScroller1: TPageScroller;
    DevelopmentMenuPanel: TPanel;
    JvSpeedButton1: TJvSpeedButton;
    JvSpeedButton2: TJvSpeedButton;
    JvSpeedButton3: TJvSpeedButton;
    JvSpeedButton4: TJvSpeedButton;
    JvSpeedButton5: TJvSpeedButton;
    JvSpeedButton6: TJvSpeedButton;
    BackgroundViewButton: TJvImgBtn;
    TabSheet41: TTabSheet;
    JvImgBtn2: TJvImgBtn;
    TabSheet42: TTabSheet;
    JvImgBtn3: TJvImgBtn;
    HelpAuthoringPageControl: TPageControl;
    TabSheet35: TTabSheet;
    TabSheet44: TTabSheet;
    TabSheet49: TTabSheet;
    TabSheet51: TTabSheet;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    JvArrowButton6: TJvArrowButton;
    TopicPopupMenu: TJvPopupMenu;
    TopicPopupMenuPainter: TJvXPMenuItemPainter;
    InsertNewTopic1: TMenuItem;
    InsertAfter1: TMenuItem;
    InsertBefore1: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    InsertSubTopic1: TMenuItem;
    JvPanel3: TJvPanel;
    JvSplitter4: TJvSplitter;
    Panel50: TPanel;
    Splitter22: TSplitter;
    Panel51: TPanel;
    Panel52: TPanel;
    Edit14: TEdit;
    Splitter23: TSplitter;
    TreeView1: TTreeView;
    Panel53: TPanel;
    Panel54: TPanel;
    Panel55: TPanel;
    Splitter24: TSplitter;
    Panel56: TPanel;
    Panel57: TPanel;
    Edit15: TEdit;
    TreeView4: TTreeView;
    JvSpeedButton12: TJvSpeedButton;
    TopicSettingButton: TJvArrowButton;
    TopicSettingPopupMenu: TJvPopupMenu;
    TopicSettingMenuItemPainter: TJvXPMenuItemPainter;
    opicSymbol1: TMenuItem;
    opicKind1: TMenuItem;
    N20: TMenuItem;
    HeadLine1: TMenuItem;
    FoorLine1: TMenuItem;
    N21: TMenuItem;
    Status1: TMenuItem;
    ContaininBuilds1: TMenuItem;
    HiddenTopic1: TMenuItem;
    NormalTopic1: TMenuItem;
    EmptyTopic1: TMenuItem;
    ExternalURL1: TMenuItem;
    ExternalFile1: TMenuItem;
    N23: TMenuItem;
    ShowTopicTitle1: TMenuItem;
    ShowHeadLine1: TMenuItem;
    N24: TMenuItem;
    ShowcustomizedText1: TMenuItem;
    CustomizedText1: TMenuItem;
    ShowCopyright1: TMenuItem;
    ShowFootLine1: TMenuItem;
    N25: TMenuItem;
    ShowcustomizedText2: TMenuItem;
    CustomizedText2: TMenuItem;
    Complete1: TMenuItem;
    NeedsReview1: TMenuItem;
    InProgress1: TMenuItem;
    OutofDate1: TMenuItem;
    AllBuilds1: TMenuItem;
    N26: TMenuItem;
    chm1: TMenuItem;
    html1: TMenuItem;
    pdf1: TMenuItem;
    Hidden1: TMenuItem;
    Hidden2: TMenuItem;
    HiddeninTopicList1: TMenuItem;
    Panel58: TPanel;
    N22: TMenuItem;
    DatabaseButtonPopupMenu: TJvPopupMenu;
    DatabaseButtonPopupMenuPainter: TJvXPMenuItemPainter;
    DatabaseListButton1: TJvArrowButton;
    DatabaseListButton2: TJvArrowButton;
    JvDatabaseItems1NAME: TStringField;
    JvDatabaseItems1FILENAME: TStringField;
    JvDatabaseItems1EXTENSION: TStringField;
    JvDatabaseItems1TYPE: TStringField;
    JvDatabaseItems1DATE: TDateField;
    JvDatabaseItems1TIME: TTimeField;
    JvDatabaseItems1SIZE: TIntegerField;
    JvDatabaseItems1VIEW: TBooleanField;
    JvDatabaseItems1SYNONYM: TBooleanField;
    TableListMenuPopup: TJvPopupMenu;
    TableListMenuPopupPainter: TJvXPMenuItemPainter;
    DatabaseTableListButton1: TJvArrowButton;
    JvPopupMenu2: TJvPopupMenu;
    JvXPMenuItemPainter2: TJvXPMenuItemPainter;
    DatabaseTableListButton2: TJvArrowButton;
    NavigatorPageControl: TPageControl;
    TabSheet52: TTabSheet;
    JvToolBar1: TJvToolBar;
    NavigatorAdd: TToolButton;
    NavigatorDelete: TToolButton;
    NavigatorSave: TToolButton;
    NavigatorCancel: TToolButton;
    JvToolBar2: TJvToolBar;
    NavigatorFirst: TToolButton;
    NavigatorPrev: TToolButton;
    NavigatorNext: TToolButton;
    NavigatorLast: TToolButton;
    JvToolBar3: TJvToolBar;
    NavigatorRefresh: TToolButton;
    Table1: TTable;
    DataSource1: TDataSource;
    DataPageGrid1: TDBGrid;
    JvCheckBox1: TCheckBox;
    DBComboBox1: TComboBox;
    ScrollBox39: TScrollBox;
    SourceTextEditorRedo: TJvImgBtn;
    SourceTextEditorUndo: TJvImgBtn;
    SourceTextEditorSelectAll: TJvImgBtn;
    SourceTextEditorDelete: TJvImgBtn;
    SourceTextEditorPaste: TJvImgBtn;
    SourceTextEditorCopy: TJvImgBtn;
    SourceTextEditorCut: TJvImgBtn;
    SpeedButton1: TSpeedButton;
    TranspileOutputEdit: TEdit;
    Label12: TLabel;
    RadioGroup1: TRadioGroup;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton1: TRadioButton;
    JvImgBtn6: TJvImgBtn;
    JvImgBtn1: TJvImgBtn;
    CompileButton: TJvImgBtn;
    ScrollBox45: TScrollBox;
    Label13: TLabel;
    Edit16: TEdit;
    Label14: TLabel;
    Edit17: TEdit;
    Label15: TLabel;
    JvSpinEdit1: TJvSpinEdit;
    HTMLEditorView: TPageControl;
    TabSheet34: TTabSheet;
    TabSheet45: TTabSheet;
    ScrollBox46: TScrollBox;
    WebBrowser1: TWebBrowser;
    ScrollBox47: TScrollBox;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    TabSheet46: TTabSheet;
    JvSpeedButton13: TJvSpeedButton;
    PageControl6: TPageControl;
    TabSheet50: TTabSheet;
    PageScroller2: TPageScroller;
    XMLDesignButton: TJvSpeedButton;
    HtmlMenuSpeedButton: TJvSpeedButton;
    JvImgBtn7: TJvImgBtn;
    ScrollBox48: TScrollBox;
    HtmlDesignPanel: TJvDesignPanel;
    XMLDocument1: TXMLDocument;
    HintTimer: TTimer;
    JvXPMenuItemPainter3: TJvXPMenuItemPainter;
    N27: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    Exit2: TMenuItem;
    Open2: TMenuItem;
    Save2: TMenuItem;
    SaveAs2: TMenuItem;
    dBaseForm2: TMenuItem;
    dBaseTestModule1: TMenuItem;
    dBaseSQL2: TMenuItem;
    MenuFilePopup: TJvPopupMenu;
    MenuFile: TJvArrowButton;
    HTMLdesignerMenu: TJvPopupMenu;
    JvXPMenuItemPainter4: TJvXPMenuItemPainter;
    AddmenuItem1: TMenuItem;
    JvInterpreterProgram1: TJvInterpreterProgram;
    Console1: TConsole;
    Panel49: TPanel;
    procedure FormCreate(Sender: TObject);

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
    procedure JvInspector1ItemValueChanging(Sender: TObject;
      Item: TJvCustomInspectorItem; var NewValue: String;
      var AllowChange: Boolean);
    procedure SetupPageTreeViewClick(Sender: TObject);
    procedure AppSwitchButtonClick(Sender: TObject);
    procedure CompileButtonClick(Sender: TObject);
    procedure SourceTextEditorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FindDialog1Find(Sender: TObject);
    procedure DataTablePageControlChange(Sender: TObject);
    procedure JvDBUltimGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure JvDBUltimGrid1ColExit(Sender: TObject);
    procedure DataPageGrid2DrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SourceTextEditorMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure New1MeasureItem(Sender: TObject; ACanvas: TCanvas; var Width,
      Height: Integer);
    procedure DevelopPageDrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure StatusBar1DrawPanel(StatusBar: TStatusBar;
      Panel: TStatusPanel; const Rect: TRect);
    procedure FormResize(Sender: TObject);
    procedure dBASE1Click(Sender: TObject);
    procedure Pascal1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure JvPopupMenu1Popup(Sender: TObject);
    procedure dBase4DOS1Click(Sender: TObject);
    procedure ISOLISP1Click(Sender: TObject);
    procedure SourceTextEditorKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SelectionTimerTimer(Sender: TObject);
    procedure SourceTextEditorSelectAllClick(Sender: TObject);
    procedure SourceTextEditorDeleteClick(Sender: TObject);
    procedure SourceTextEditorClick(Sender: TObject);
    procedure SourceTextEditorKeyPress(Sender: TObject; var Key: WideChar);
    procedure SourceTextEditorChange(Sender: TObject);
    procedure SourceTextEditorUndoClick(Sender: TObject);
    procedure SourceTextEditorCopyClick(Sender: TObject);
    procedure SourceTextEditorPasteClick(Sender: TObject);
    procedure SourceTextEditorCutClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DatabaseListButton1Click(Sender: TObject);
    procedure DatabaseTableListButton1Click(Sender: TObject);
    procedure DatabaseTableListButton2Click(Sender: TObject);
    procedure DatabaseListButton2Click(Sender: TObject);
    procedure TableDataPageShow(Sender: TObject);
    procedure DesignerPageShow(Sender: TObject);
    procedure EditorPageShow(Sender: TObject);
    procedure DevPanelBarTabSelected(Sender: TObject; Item: TJvTabBarItem);
    procedure NavigatorNextClick(Sender: TObject);
    procedure DataPageGrid1Click(Sender: TObject);
    procedure NavigatorPrevClick(Sender: TObject);
    procedure NavigatorFirstClick(Sender: TObject);
    procedure NavigatorLastClick(Sender: TObject);
    procedure DataPageGrid1DblClick(Sender: TObject);
    procedure NavigatorAddClick(Sender: TObject);
    procedure NavigatorDeleteClick(Sender: TObject);
    procedure NavigatorSaveClick(Sender: TObject);
    procedure DataPageGrid1DrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DataPageGrid1ColExit(Sender: TObject);
    procedure DataPageGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox1Change(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DataPageGrid1CellClick(Column: TColumn);
    procedure DBComboBox1Click(Sender: TObject);
    procedure DBComboBox1Select(Sender: TObject);
    procedure HtmlDesignPanelPaint(Sender: TObject);
    procedure HtmlMenuSpeedButtonClick(Sender: TObject);
    procedure HtmlDesignPanelGetAddClass(Sender: TObject;
      var ioClass: String);
    procedure JvImgBtn7Click(Sender: TObject);
    procedure HintTimerTimer(Sender: TObject);
    procedure XMLDesignButtonMouseEnter(Sender: TObject);
    procedure XMLDesignButtonMouseLeave(Sender: TObject);
    procedure HtmlMenuSpeedButtonMouseEnter(Sender: TObject);
    procedure HtmlMenuSpeedButtonMouseLeave(Sender: TObject);
    procedure JvSpeedButton1MouseEnter(Sender: TObject);
    procedure JvSpeedButton1MouseLeave(Sender: TObject);
    procedure JvSpeedButton2MouseEnter(Sender: TObject);
    procedure JvSpeedButton2MouseLeave(Sender: TObject);
    procedure JvSpeedButton3MouseEnter(Sender: TObject);
    procedure JvSpeedButton3MouseLeave(Sender: TObject);
    procedure JvSpeedButton4MouseEnter(Sender: TObject);
    procedure JvSpeedButton4MouseLeave(Sender: TObject);
    procedure MenuEditClick(Sender: TObject);
    procedure MenuFileClick(Sender: TObject);
    procedure MenuEditMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure MenuFileMouseMove(Sender: TObject; Shift: TShiftState;
      X, Y: Integer);
    procedure HtmlDesignPanelSelectionChange(Sender: TObject);
    procedure JvInterpreterProgram1GetValue(Sender: TObject;
      Identifier: String; var Value: Variant; Args: TJvInterpreterArgs;
      var Done: Boolean);
    procedure Console1GetPrompt(Sender: TCustomConsole; var APrompt,
      ADefaultText: String; var ADefaultCaretPos: Integer);
    procedure Console1PromptKeyPress(Sender: TCustomConsole;
      var AKey: Char);
  protected
//    procedure ButtonA_Paint(Sender: TObject; Button: TMouseButton;  Shift: TShiftState; X, Y: Integer);
  private
    FBooting: Boolean;
    FPrompt: String;
    FCustomCommand: Boolean;
    FLastCommand: String;

    iniFile: TIniFile;
    strList: TStringList;
    locListRect: TRect;
    locListItemString: String;

    PopupMenu_TimeAccess: TPopupMenu;
    BoolsAsChecks: Boolean;
    NewControlOnDesigner  : Boolean;
    AliasListFlag: Boolean;
    TableNamePath: String;

    DBComboBox1Selected: Boolean;

    DataPageGrid1ActiveRow: Integer;
    DataPageGrid2ActiveRow: Integer;
    DataPageGrid1Modified : Integer;

    SourceNew: Boolean;
    SourceFileNAme : String;

    function  getSelectedHTMLdesignerComponent: TComponent;
    procedure setLastCommand(const AValue: String);

    procedure DatabaseButtonPopupMenuOnClick(Sender: TObject);

    procedure TableListItemNewTableOnClick(Sender: TObject);
    procedure TableListItemOnClick(Sender: TObject);

    procedure AddInspectorSettings;
    procedure AddInspectorDimension;
    procedure AddInspectorAppearence;

    procedure GetBoolsAsChecks(Sender: TJvInspectorEventData; var Value: Int64);
    procedure SetBoolsAsChecks(Sender: TJvInspectorEventData; var Value: Int64);

    procedure GetStringAsColor(Sender: TJvInspectorEventData; var Value: String);
    procedure SetStringAsColor(Sender: TJvInspectorEventData; var Value: String);


    procedure HideSetupLangPages;
    procedure CreatePopupMenu;

    procedure ChangeChkState(const Item: TJvCustomInspectorItem);
  public
    FFrame: TCustomFrame;
    FNewTableName: String;

    ApplicationBalloonHint: TMyHintWindow;

    DesignClass: string;
    in_insp: Boolean;

  property LastCommand: string read FLastCommand write SetLastCommand;
  end;

var
  Form2: TForm2;

type
  TUseHTMLHelp = class(TObject)
    function ApplicationHelp(Command: Word; Data: Longint; var CallHelp: Boolean): Boolean;
  end;
var
  HTMLHelpUser: TUseHTMLHelp;

implementation

{$R *.dfm}

uses
  NewTableDialog, parseDBASE;

var
  VerInfoStr: string = 'Version 0.1';

  dim_left  : String = '0';
  dim_top   : String = '0';
  dim_width : string = '0';
  dim_height: string = '0';

  // Position
  comp_dim_left   : TJvCustomInspectorItem;
  comp_dim_top    : TJvCustomInspectorItem;
  comp_dim_width  : TJvCustomInspectorItem;
  comp_dim_height : TJvCustomInspectorItem;

  // Appearence
  comp_btn_color_item : TJvCustomInspectorItem;
  comp_btn_text_item  : TJvCustomInspectorItem;

  Comp_ColorBox   : String;

procedure TForm2.setLastCommand(const AValue: String);
begin
  FLastCommand := AValue;
end;

function TUseHTMLHelp.ApplicationHelp(Command: Word; Data: Longint; var CallHelp: Boolean): Boolean;
var
  helpWindow: THandle;
  aWindow: HWND;
begin
  // Make sure VCL doesn't activate WinHelp
  CallHelp := false;
  Result := true;

  try
    if (Length(Trim(Application.HelpFile)) < 3)
    or (FileExists(Trim(Application.HelpFile)) = false) then
    begin
      ShowMessage('Help file: ' + Application.HelpFile + #13#10 + ' could not open !');
      result := false;
      exit;
    end;

    if Command in [HELP_CONTEXT, HELP_CONTEXTPOPUP] then
    begin
      // Ordinary context jump
      helpWindow := HtmlHelp(Application.Handle, PChar(Application.HelpFile), HH_DISPLAY_TOC, Data)
    end else
    if Command = HELP_KEY then
    begin
      // Keyword lookup
      helpWindow := HtmlHelp(Application.Handle, PChar(Application.HelpFile), HH_DISPLAY_INDEX, Data)
    end else
    if Command = HELP_QUIT then
    begin
      // Application quits -> close all its help files
      helpWindow := HtmlHelp(Application.Handle, nil, HH_CLOSE_ALL, 0)
    end else
    begin
      // Any other command -> display table of contents
      helpWindow := HtmlHelp(Application.Handle, PChar(Application.HelpFile), HH_HELP_FINDER, 0)
    end;
  except
    on E: Exception do
    begin
      ShowMessage('Help file Exception in Application:' + #13#10 +
      E.Message);
    end;
  end;
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

procedure TForm2.GetStringAsColor(Sender: TJvInspectorEventData; var Value: String);
begin
  Value := ColorToString(comp_btn_color);
end;
procedure TForm2.SetStringAsColor(Sender: TJvInspectorEventData; var Value: String);
begin
  TJvInspectorStringItem(comp_btn_color_item).Data.AsString := ColorToString(comp_btn_color);
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
  Cat.DisplayName  := 'Position';

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

procedure TForm2.AddInspectorAppearence;
var
  Cat: TJvInspectorCustomCategoryItem;
begin
  Cat := TJvInspectorCustomCategoryItem.Create(JvInspector1.Root, nil);
  Cat.DisplayName  := 'Appearence';

  Comp_ColorBox  := 'Color';

  comp_btn_color_item := TJvInspectorEventData.New(Cat, 'Color', System.TypeInfo(String));
  with TJvInspectorEventData(comp_btn_color_item.Data) do
  begin
    OnGetAsString := GetStringAsColor;
    OnSetAsString := SetStringAsColor;
  end;
  comp_btn_text_item := TJvInspectorEventData.New(Cat, 'Text', System.TypeInfo(String));
  Cat.Expanded := True;

//  comp_btn_color := TJvInspectorVarData.New(Cat, '0', TypeInfo(string), @Comp_ColorBox);
//  comp_btn_color.DisplayName   := 'Color';

//  in_insp := true;
//  comp_btn_color.DisplayValue  := '$ff0';
end;

procedure TForm2.HideSetupLangPages;
var
  idx : Integer;
begin
  with SetupLangPageControl do
  begin
    for idx := 0 to PageCount - 1 do
    Pages[idx].TabVisible := false;
    ActivePageIndex := 0;
  end;
end;

var
  mi_day: Array [0..6] of String = (
  'Montag', 'Dienstag', 'Mittwoch', 'Donnerstag', 'Freitag', 'Samstag', 'Sonntag');

procedure TForm2.CreatePopupMenu;
var
  mi_date: TMenuItem;

  mi_date_Week1,  mi_date_Week2,
  mi_date_Week3,  mi_date_Week4: TMenuItem;

  mi_date_day: Array of TMenuItem;
  mi_date_am : Array of TMenuItem;
  mi_date_pm : Array of TMenuItem;

  idx: Integer;
begin
  try
    PopupMenu_TimeAccess := TPopupMenu.Create(Application);

    mi_date := TMenuItem.Create(PopupMenu_TimeAccess);
    mi_date.Caption := 'Date';

    mi_date_Week1 := TMenuItem.Create(mi_date); mi_date_Week1.Caption := 'Week 1';
    mi_date_Week2 := TMenuItem.Create(mi_date); mi_date_Week2.Caption := 'Week 2';
    mi_date_Week3 := TMenuItem.Create(mi_date); mi_date_Week3.Caption := 'Week 3';
    mi_date_Week4 := TMenuItem.Create(mi_date); mi_date_Week4.Caption := 'Week 4';

    SetLength(mi_date_day,28);
    for idx := 0 to 27 do
    mi_date_day[idx] := TMenuItem.Create(PopupMenu_TimeAccess);

    SetLength(mi_date_am,28);
    SetLength(mi_date_pm,28);
    for idx := 0 to 27 do
    begin
      mi_date_am[idx] := TMenuItem.Create(PopupMenu_TimeAccess);
      mi_date_am[idx].Caption := 'After Meridan';

      mi_date_pm[idx] := TMenuItem.Create(PopupMenu_TimeAccess);
      mi_date_pm[idx].Caption := 'Past Meridan';
    end;

    for idx :=  0 to  6 do
    begin
      mi_date_day[idx].Caption := mi_day[idx];
      mi_date_day[idx].Add(mi_date_am[idx]);
      mi_date_day[idx].Add(mi_date_pm[idx]);
    end;

    for idx :=  7 to 13 do
    begin
      mi_date_day[idx].Caption := mi_day[idx - 7];
      mi_date_day[idx].Add(mi_date_am[idx]);
      mi_date_day[idx].Add(mi_date_pm[idx]);
    end;

    for idx := 14 to 20 do
    begin
      mi_date_day[idx].Caption := mi_day[idx - 14];
      mi_date_day[idx].Add(mi_date_am[idx]);
      mi_date_day[idx].Add(mi_date_pm[idx]);
    end;

    for idx := 21 to 27 do
    begin
      mi_date_day[idx].Caption := mi_day[idx - 21];
      mi_date_day[idx].Add(mi_date_am[idx]);
      mi_date_day[idx].Add(mi_date_pm[idx]);
    end;

    for idx :=  0 to  6 do mi_date_Week1.Add(mi_date_day[idx]);
    for idx :=  7 to 13 do mi_date_Week2.Add(mi_date_day[idx]);
    for idx := 14 to 20 do mi_date_Week3.Add(mi_date_day[idx]);
    for idx := 21 to 27 do mi_date_Week4.Add(mi_date_day[idx]);

    mi_date.Add(mi_date_Week1);
    mi_date.Add(mi_date_Week2);
    mi_date.Add(mi_date_Week3);
    mi_date.Add(mi_date_Week4);

    PopupMenu_TimeAccess.Items.Add(mi_date);

    SourceTextEditor.PopupMenu := PopupMenu_TimeAccess;
  finally
  end;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  FileHandle: Integer;
  dateString: String;

  x, y: Integer;
  len : Integer;
  chk : TCheckBox;
  cnf : String;
  b   : Boolean;
  sl  : TStringList;
  idx : Integer;

  ProgressBarStyle: integer;
  ctrl: TPanel;
  edit: TEdit;
begin
  try
    try
      cnf := ExtractFilePath(Application.ExeName);
      if not DirectoryExists(cnf + 'assets') then
      begin
        if not CreateDir(cnf + 'assets') then
        raise Exception.Create('cannot create "assets" directory.');
        if not CreateDir(cnf + 'assets\common') then
        raise Exception.Create('cannot create "assets\common" directory.');
      end;

      if not FileExists(cnf + 'assets\common\config.ini') then
      begin
        FileHandle := FileCreate(cnf + 'assets\common\config.ini');
        if FileHandle < 0 then
        raise Exception.Create('unable to create default config.ini file.');

        dateString :=
        '; config.ini'      + #13#10 +
        '; created on: '    + DateToStr(Date) + #13#10 +
        '[Terminal]'        + #13#10 +
        '[Locations]'       + #13#10 +
        '[UserList]'        + #13#10 +
        '[TimeTableAccess]' + #13#10 ;

        if FileWrite(FileHandle,dateString[1],Length(dateString)) < 0 then
        raise Exception.Create('could not write config.ini file.');
        FileClose(FileHandle);
      end;

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

      with HtmlDesignPanel do
      begin
        Surface.Active := true;
        Color := clBtnFace;
        DrawRules := false;
        Clear;
        Invalidate;
      end;

      // source edit/grid
      with SourceCodeGrid do
      begin
        ColCount  := 3;
        RowCount  := 2;
        FixedRows := 1;
        FixedCols := 1;

        DefaultRowHeight := 21;

        ColWidths[0] :=  74;
        ColWidths[1] :=  79;
        ColWidths[2] := 519;

        Cells[0,0] := 'Line';
        Cells[1,0] := 'Error Code';
        Cells[2,0] := 'Message';
      end;

      // init some stuff
      NewControlOnDesigner := false;
      BoolsAsChecks := false;


      FCustomCommand := false;
      FPrompt := 'C:\';

      Console1.Boot;
      FBooting := true;

      DataPageGrid1ActiveRow  := 1;
      DevPageList.ActivePage := EditorPage;
      DevPanelBar.Tabs[1].Selected := true;


      ApplicationBalloonHint := TMyHintWindow.Create(Form2);
      ApplicationBalloonHint.Parent := Form2;

//      JvEdit1.Parent := n22;

//      AddInspectorSettings;
      AddInspectorDimension;
      AddInspectorAppearence;

      HideSetupLangPages;
      CreatePopupMenu;

      SourceNew := true;
      SourceFileName := 'unknown.prg';

      // statusbar
      StatusBar1.Panels[1].Style := psOwnerDraw;
      ProgressBar1.Parent := StatusBar1;
      ProgressBar1.Active := false;
      ProgressBarStyle := GetWindowLong(ProgressBar1.Parent.Handle, GWL_EXSTYLE);
      ProgressBarStyle := ProgressBarStyle - WS_EX_STATICEDGE;
      SetWindowLong(ProgressBar1.Parent.Handle, GWL_EXSTYLE, ProgressBarStyle);

      // html authoring
//      (WebBrowser1.Document as IHTMLDocument2).designMode := 'on';

      // database/files
      AliasListFlag := false;
      DataPageGrid1Modified := 0;



      // frame
(*
      with SetupLangFrame.LangTextStringGrid do
      begin
        EditorMode := false;
        Options    := Options - [goEditing];

        Cells[0,0] := 'Text';
        Cells[1,0] := 'Translation';
      end;*)

      // debug
(*      if CppModule = 0 then
      begin
        CppModule := LoadPackage('dbgFrame.bpl');
        if CppModule < 1 then
        begin
          ShowMessage('can''t load: dbgFrame.bpl');
          exit;
        end;
      end;

      FrameClassFunc := TFrameClassFunc(
      GetProcAddress(CppModule, 'getMyCppFrameClass'));

      if not Assigned(FrameClassFunc) then
      raise Exception.Create(
      'can not find export symbol:  ' +
      'getMyCppFrameClass() in:'      + #13#10 +
      'dbgFrame.bpl');
*)

      create__MyCppFrame(
        ScrollBox29.Handle,
        ScrollBox29, 0,0,
        ScrollBox29.Width  + 200 ,
        ScrollBox29.Height + 200); //.CreateParented(ScrollBox29.Handle);
//      FFrame.Parent := Form2;

(*
      showmessage('controls: ' + inttostr(FFrame.ComponentCount));
      for idx := 0 to FFrame.ComponentCount - 1 do
      begin
        if FFrame.Components[idx].Name = 'Panel1' then
        begin
          ShowMessage('Panel1 <---');
          ctrl := TPanel(FFrame.Components[idx]);
          ctrl.Parent := ScrollBox29;
        end else
        if FFrame.Components[idx].Name = 'BCB6_Splitter1' then
        begin
          ShowMessage('Splitter <===');
          TSplitter(FFrame.Components[idx]).Parent := ctrl;
        end;
      end;
      *)
    except
      on E: Exception do
      begin
        ShowMessage('Exception in Unit2 occur:' + #13#10 + e.Message);
        exit;
      end;
    end;
  finally
  end;


  with ConnectionListGrid do
  begin
    ColWidths[0] := 21;
    ColWidths[5] := 113;

    Cells[1,0] := 'Date / Time';
    Cells[2,0] := 'Log-Code';
    Cells[3,0] := 'Location';
    Cells[4,0] := 'User';
    Cells[5,0] := 'Action';
  end;

  TimeTableGrid_WeekList.Text := IntToStr(WeekOfTheYear(Now));

  UserLogGrid.ColWidths[0] := 21;

  UserLogGrid.Cells[1,0] := 'Date / Time';
  UserLogGrid.Cells[2,0] := 'Log-Code';
  UserLogGrid.Cells[3,0] := 'Action';

  with TimeTableGrid do
  begin
    ColWidths[0] := 74;
    Cells[0, 0] := 'Time';
    Cells[0, 1] := '00:00 - 01:00';
    Cells[0, 2] := '01:00 - 02:00';
    Cells[0, 3] := '03:00 - 04:00';
    Cells[0, 4] := '05:00 - 06:00';
    Cells[0, 5] := '07:00 - 08:00';
    Cells[0, 6] := '09:00 - 10:00';
    Cells[0, 7] := '11:00 - 12:00';
    Cells[0, 8] := '13:00 - 14:00';
    Cells[0, 9] := '15:00 - 16:00';
    Cells[0,10] := '17:00 - 18:00';
    Cells[0,11] := '19:00 - 20:00';
    Cells[0,12] := '21:00 - 22:00';
    Cells[0,13] := '23:00 - 00:00';

    Cells[1,0] := 'Mo';
    Cells[2,0] := 'Ts';
    Cells[3,0] := 'We';
    Cells[4,0] := 'Th';
    Cells[5,0] := 'Fr';
    Cells[6,0] := 'Sa';
    Cells[7,0] := 'Su';
  end;

//  LocationListTimer.Enabled := true;
end;

procedure TForm2.FormDestroy(Sender: TObject);
begin
//  UnLoadPackage(CppModule);

  ApplicationBalloonHint.Free;
  destroy_MyCppFrame;

  PopupMenu_TimeAccess.Items.Clear;
//  FFrame.Free;

  iniFile.Free;
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
  ComponentPageControl.Enabled := false;
  ComponentPageControl.Visible := false;

  HelpAuthoringPageControl.Enabled := false;
  HelpAuthoringPageControl.Visible := false;

  NavigatorPageControl.Enabled := false;
  NavigatorPageControl.Visible := false;

  if TasksPageControl.ActivePage = TaskPageDevelopment then
  begin
    if (DevPanelBar.SelectedTab.Caption = 'Tables') then
    begin
      NavigatorPageControl.Enabled := true;
      NavigatorPageControl.Visible := true;
    end else
    if (DevPanelBar.SelectedTab.Caption = 'Design')
    or (DevPanelBar.SelectedTab.Caption = 'Editor') then
    begin
      ComponentPageControl.Enabled := true;
      ComponentPageControl.Visible := true;
    end else
    if (DevPanelBar.SelectedTab.Caption = 'DEBUG') then
    begin
    end;
  end else
  if TasksPageControl.ActivePage = TaskPageHelpAuthoring then
  begin
    HelpAuthoringPageControl.Enabled := true;
    HelpAuthoringPageControl.Visible := true;
  end;

  (*
  if (TasksPageControl.TabIndex = 7)
  or (TasksPageControl.TabIndex = 8) then
  begin
    ComponentPageControl.Enabled := false;
    ComponentPageControl.Visible := false;

    HelpAuthoringPageControl.Enabled := false;
    HelpAuthoringPageControl.Visible := false;

    NavigatorPageControl.Enabled := false;
    NavigatorPageControl.Visible := false;
  end else
  begin
    HelpAuthoringPageControl.Enabled := false;
    HelpAuthoringPageControl.Visible := false;

    ComponentPageControl.Visible := true;
    ComponentPageControl.Enabled := false;
  end;

  if (TasksPageControl.TabIndex = 8) then
  begin
    HelpAuthoringPageControl.Visible := true;
    HelpAuthoringPageControl.Enabled := true;
    HelpAuthoringPageControl.Align   := alClient;
  end;*)
end;

procedure TForm2.BackgroundViewButtonClick(Sender: TObject);
begin
  if BackgroundViewButton.Color = $008080FF then
  begin
    BackgroundViewButton.Color := $0080FF80;
    BackgroundViewPanel.Height := 20;
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

procedure TForm2.DevelopmentDesignerPanelGetAddClass(
  Sender: TObject;
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
  DesignClass := 'TJvImgBtn';
end;

procedure TForm2.JvSpeedButton4Click(Sender: TObject);
begin
  DesignClass := 'TLabel';
end;

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
label label_1;
var
  idx,cnt: Integer;
  s : String;
  tc: TControl;
begin
  DesignerControlsComboBox.Clear;
  DesignerControlsComboBox.Items.Add('Form');

  with DevelopmentDesignerPanel do
  begin
    for idx := 0 to ControlCount - 1 do
    begin
      tc := Controls[idx];
      if Length(Trim(tc.Name)) > 0 then
      DesignerControlsComboBox.Items.Add(tc.Name);
    end;
  end;
  DesignerControlsComboBox.SetUnCheckedAll(nil);

  with DevelopmentDesignerPanel do
  begin
    for idx := 0 to ControlCount - 1 do
    begin
      tc := Controls[idx];
      ActiveDesignerControl := tc;
      if Surface.Selector.IsSelected(tc) then
      begin
        if tc.ClassName = 'TJvImgBtn' then
        begin
          comp_btn_color := TJvImgBtn(tc).Color;
          comp_btn_color_item .Data.AsString := ColorToString(comp_btn_color);

          if ActiveSelectedInspectorItem <> nil then
          ActiveSelectedInspectorItem.GetEditCtrl.Text := ColorToString(comp_btn_color);
        end;
      end;
    end;

    for idx := 0 to ControlCount - 1 do
    begin
      tc := Controls[idx];
      ActiveDesignerControl := tc;
      if Surface.Selector.IsSelected(tc) then
      begin
        DesignerControlsComboBox.Checked[idx+1] := true;
        if tc.ClassName = 'TJvImgBtn' then
        begin
          dim_left   := IntToStr(TJvImgBtn(tc).Left  );
          dim_width  := IntToStr(TJvImgBtn(tc).width );
          dim_top    := IntToStr(TJvImgBtn(tc).top   );
          dim_height := IntToStr(TJvImgBtn(tc).height);

          comp_dim_left  .Data.AsString := IntToStr(TJvImgBtn(tc).Left  );
          comp_dim_top   .Data.AsString := IntToStr(TJvImgBtn(tc).Top   );
          comp_dim_width .Data.AsString := IntToStr(TJvImgBtn(tc).Width );
          comp_dim_height.Data.AsString := IntToStr(TJvImgBtn(tc).Height);
          break;
        end else
        if tc.ClassName = 'TEdit' then
        begin
          dim_left   := IntToStr(TEdit(tc).Left  );
          dim_width  := IntToStr(TEdit(tc).width );
          dim_top    := IntToStr(TEdit(tc).top   );
          dim_height := IntToStr(TEdit(tc).height);

          comp_dim_left  .DisplayValue := IntToStr(TEdit(tc).Left  );
          comp_dim_top   .DisplayValue := IntToStr(TEdit(tc).Top   );
          comp_dim_width .DisplayValue := IntToStr(TEdit(tc).Width );
          comp_dim_height.DisplayValue := IntToStr(TEdit(tc).Height);
        end else
        if tc.ClassName = 'TLabel' then
        begin
          dim_left   := IntToStr(TLabel(tc).Left  );
          dim_width  := IntToStr(TLabel(tc).width );
          dim_top    := IntToStr(TLabel(tc).top   );
          dim_height := IntToStr(TLabel(tc).height);

          comp_dim_left  .DisplayValue := IntToStr(TLabel(tc).Left  );
          comp_dim_top   .DisplayValue := IntToStr(TLabel(tc).Top   );
          comp_dim_width .DisplayValue := IntToStr(TLabel(tc).Width );
          comp_dim_height.DisplayValue := IntToStr(TLabel(tc).Height);
        end;
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

      //if Data.TypeInfo.Kind = tkInteger then
      //dv := StrToInt (Data.AsString);

      if Data.Items[idx].Parent.DisplayName = 'Position' then
      begin
        if ActiveDesignerControl is TJvImgBtn then
        begin
          if dn = 'width'  then TJvImgBtn(ActiveDesignerControl).width  := StrToInt(dim_width)  else
          if dn = 'height' then TJvImgBtn(ActiveDesignerControl).height := StrToInt(dim_height) else
          if dn = 'top'    then TJvImgBtn(ActiveDesignerControl).top    := StrToInt(dim_top)    else
          if dn = 'left'   then TJvImgBtn(ActiveDesignerControl).left   := StrToInt(dim_left);
        end else
        if ActiveDesignerControl is TEdit then
        begin
          if dn = 'width'  then TEdit(ActiveDesignerControl).width  := StrToInt(dim_width)  else
          if dn = 'height' then TEdit(ActiveDesignerControl).height := StrToInt(dim_height) else
          if dn = 'top'    then TEdit(ActiveDesignerControl).top    := StrToInt(dim_top)    else
          if dn = 'left'   then TEdit(ActiveDesignerControl).left   := StrToInt(dim_left);
        end else
        if ActiveDesignerControl is TLabel then
        begin
          if dn = 'width'  then TLabel(ActiveDesignerControl).width  := StrToInt(dim_width)  else
          if dn = 'height' then TLabel(ActiveDesignerControl).height := StrToInt(dim_height) else
          if dn = 'top'    then TLabel(ActiveDesignerControl).top    := StrToInt(dim_top)    else
          if dn = 'left'   then TLabel(ActiveDesignerControl).left   := StrToInt(dim_left);
        end;
      end else
      begin
      end;
    end;
  end;
end;

procedure TForm2.JvInspector1ItemValueChanging(Sender: TObject;
  Item: TJvCustomInspectorItem; var NewValue: String;
  var AllowChange: Boolean);
begin
  AllowChange := true;
end;

procedure TForm2.SetupPageTreeViewClick(Sender: TObject);
var
  tn: TTreeNode;
begin
  HideSetupLangPages;

  tn := SetupPageTreeView.Selected;

  if tn.Text = 'Languages' then
  begin
    SetupLangInfoLabel.Caption :=
    'Here, You can define, and/or change the settings for locales for various types of Languages.';
    exit;
  end else
  if tn.Text = 'Manifest' then
  begin
    SetupLangInfoLabel.Caption :=
    'Here, You can define, and/or change application meta data';
    exit;
  end;

  if tn.Parent <> nil then
  if tn.Parent.Text = 'Languages' then
  begin
    if tn.Text = 'English' then
    begin
      SetupLangPageControl.Pages[0].TabVisible := true;
//      SetupLangFrame.Parent := SetupLangPageControl.Pages[0];
//      SetupLangFrame.Show;
    end else
    if tn.Text = 'German' then
    begin
      SetupLangPageControl.Pages[1].TabVisible := true;
    end;
  end;
end;

procedure TForm2.AppSwitchButtonClick(Sender: TObject);
begin
  with AppSwitchButton do
  begin
    if Tag = 1 then
    begin
      Caption := 'GUI-App';
      Tag := 0;
    end else
    begin
      Caption := 'DOS-App';
      Tag := 1;
    end;
  end;
end;

procedure TForm2.CompileButtonClick(Sender: TObject);
begin
  if  (RadioButton1.Checked = false)
  and (RadioButton2.Checked = false)
  and (RadioButton3.Checked = false) then
  begin
    ShowMessage('No Transpile target specified.');
    exit;
  end;
  if Length(Trim(TranspileOutputEdit.Text)) < 1 then
  begin
    ShowMessage('No output directory specified.');
    exit;
  end;
  if RadioButton1.Checked then TranspileBorlandDelphi   (TranspileOutputEdit.Text, SourceTextEditor.Text) else
  if RadioButton2.Checked then TranspileBorlandCBuilder (TranspileOutputEdit.Text, SourceTextEditor.Text) else
  if RadioButton3.Checked then TranspileGnuCC           (TranspileOutputEdit.Text, SourceTextEditor.Text) ;
end;

procedure TForm2.SourceTextEditorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  rc : TPoint;
begin
  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;

  rc := TPoint(SourceTextEditor.CaretXY);
  StatusBar1.Panels[2].Text :=
  'Row: ' + IntToStr(rc.Y)  + ', ' +
  'Col: ' + IntToStr(rc.X)  ;

  SelectionTimer.Enabled := true;
  
  if Key = VK_F2 then
  begin
    if modusButton.Caption = 'Pascal Mode' then
    begin
      BackGroundViewPanel.Height := 280;
      with JvInterpreterProgram1 do
      begin
        Pas.Clear;
        Pas.Add(SourceTextEditor.Text);
        Run;
        if VResult = 0 then
        ShowMessage('no error.');
      end;
    end;
    exit;
  end;

  if ssCtrl in Shift then
  begin
    if (Char(key) = 'f') or (Char(key) = 'F') then
    begin
      if FindDialog1.Execute then
      begin
      end;
    end else
    if (Char(key) = 's') or (Char(key) = 'S') then
    begin
      if SourceTextEditor.Modified = true then
      if SourceNew then
      begin
        if SaveDialog1.Execute then
        begin
          SourceTextEditor.Lines.SaveToFile(SaveDialog1.FileName);
          SourceFileName := SaveDialog1.FileName;
          SourceNew := false;
        end;
      end else
      begin
        SourceTextEditor.Lines.SaveToFile(SourceFileName);
        SourceNew := false;
      end;
    end else
    if (Char(key) = 'o') or (Char(key) = 'O') then
    begin
      if OpenDialog1.Execute then
      begin
        SourceTextEditor.Lines.LoadFromFile(OpenDialog1.FileName);
        SourceTextEditor.Modified := true;
        SourceFileName := OpenDialog1.FileName;
        SourceNew := false;
      end;
    end;
  end;
end;

procedure TForm2.FindDialog1Find(Sender: TObject);
var
  FoundAt: Integer;
begin
  with SourceTextEditor do
  begin
    SynEditSearch1.Pattern := finddialog1.FindText;
    SynEditSearch1.FindAll(SourceTextEditor.Lines.Text);

    SetFocus;
    SelStart := SynEditSearch1.Results[0]-1;
    SelLength := Length(FindDialog1.FindText);
  end;
end;

procedure TForm2.DataTablePageControlChange(Sender: TObject);
var
  idx: Integer;
  AliasList: TStrings;
  menuItems: Array of TMenuItem;
begin
  if AliasListFlag = true then exit;
  AliasListFlag := true;

  AliasList := TStringList.Create;
  JvDatabaseItems1.DBSession.GetDatabaseNames(AliasList);

  DatabaseButtonPopupMenu.Items.Clear;
  SetLength(menuItems,AliasList.Count);
  for idx := 0 to AliasList.Count - 1 do
  begin
    menuItems[idx] := TMenuItem.Create(DatabaseButtonPopupMenu);
    menuItems[idx].Caption := Format('%03d - %s',[idx+1,AliasList.Strings [idx]]);
    menuItems[idx].OnClick := DatabaseButtonPopupMenuOnClick;
  end;

  DatabaseButtonPopupMenu.Items.Add(menuItems);

//    JvComboBox1.Items.AddStrings(AliasList);
//    JvComboBox4.Items.AddStrings(AliasList);
//  end;
end;

procedure TForm2.DatabaseButtonPopupMenuOnClick (Sender: TObject);
var
  s: String;
begin
  s := TMenuItem(Sender).Caption;
  s := Copy(s,8,Length(s));

  DatabaseListButton1.Caption := s;
  DatabaseListButton2.Caption := s;
end;

procedure TForm2.JvDBUltimGrid1DrawColumnCell(
  Sender    : TObject;
  const Rect: TRect;
  DataCol   : Integer;
  Column    : TColumn;
  State     : TGridDrawState);
const
  IsChecked : array[Boolean] of Integer = (DFCS_BUTTONCHECK, DFCS_BUTTONCHECK or DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if (gdFocused in State) then
  begin
(*    if (Column.Field.FieldName = JvDBCheckBox1.DataField) then
    begin
      JvDBCheckBox1.Left    := Rect.Left   + JvStringGrid1.Left + 2;
      JvDBCheckBox1.Top     := Rect.Top    + JvStringGrid1.Top  + 2;
      JvDBCheckBox1.Width   := Rect.Right  - Rect.Left;
      JvDBCheckBox1.Height  := Rect.Bottom - Rect.Top;
      JvDBCheckBox1.Visible := True;
    end;*)
  end else
  begin
(*    if (Column.Field.FieldName = JvDBCheckBox1.DataField) then
    begin
      DrawRect := Rect;
      InflateRect(DrawRect,-1,-1);
      DrawState := ISChecked[Column.Field.AsBoolean];
      JvStringGrid1.Canvas.FillRect(Rect);
      DrawFrameControl(JvStringGrid1.Canvas.Handle,DrawRect,DFC_BUTTON,DrawState);
   end;*)
 end;
end;

procedure TForm2.JvDBUltimGrid1ColExit(Sender: TObject);
begin
//  if JvStringGrid1.SelectedField.FieldName = JvDBCheckBox1.DataField then
//  JvDBCheckBox1.Visible := false;
end;

procedure TForm2.DataPageGrid2DrawCell(
  Sender    : TObject;
  ACol, ARow: Integer;
  Rect      : TRect;
  State     : TGridDrawState);
var
  s : String;

  function CheckBox(Value: String): Cardinal;
  begin
    if LowerCase(Value) = 't' then // Checked
    result:= DFCS_BUTTONCHECK or DFCS_CHECKED else
    result:= DFCS_BUTTONCHECK;
  end;
begin
  if (gdFocused in State) then
  begin
    if (ACol = 12) and (ARow > 0) then
    begin
      JvCheckBox1.Caption := '';

      JvCheckBox1.Left    := Rect.Left   + DataPageGrid1.Left + 2;
      JvCheckBox1.Top     := Rect.Top    + DataPageGrid1.Top  + 2;
      JvCheckBox1.Width   := Rect.Right  - Rect.Left;
      JvCheckBox1.Height  := Rect.Bottom - Rect.Top;

    end;
  end else
  begin
    if (ACol = 3) and (ARow > 0) then
    begin
      with DataPageGrid2 do
      begin
        s := Cells[ACol,ARow];
        if s = '1' then Canvas.TextOut(rect.Left+2,rect.Top+4,'CHAR') else
        if s = '2' then Canvas.TextOut(rect.Left+2,rect.Top+4,'DATE') else
        if s = '3' then Canvas.TextOut(rect.Left+2,rect.Top+4,'BLOB') else
        if s = '5' then Canvas.TextOut(rect.Left+2,rect.Top+4,'DECIMAL') else
        if s = '7' then Canvas.TextOut(rect.Left+2,rect.Top+4,'FLOAT');
      end;
    end;
    if (ACol = 12) and (ARow > 0) then
    begin
      JvCheckBox1.Caption := '';
      InflateRect(Rect,-1,-1);
      DataPageGrid2.Canvas.FillRect(Rect);
      DrawFrameControl(DataPageGrid2.Canvas.Handle, Rect, DFC_BUTTON,
      CheckBox(Trim(DataPageGrid2.Cells[ACol, ARow])));
    end;
  end;
end;

procedure TForm2.SourceTextEditorMouseDown(
  Sender: TObject;
  Button: TMouseButton;
  Shift : TShiftState;
  X, Y  : Integer);
var
  buffer : String;
  i : Integer;
  c : String;
  wc: PWideChar;
  rc: TPoint;
begin
  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;

  rc := TPoint(SourceTextEditor.CaretXY);
  StatusBar1.Panels[2].Text :=
  'Row: ' + IntToStr(rc.Y)  + ', ' +
  'Col: ' + IntToStr(rc.X)  ;

  SelectionTimer.Enabled := true;

  if JvSpeedButton4.Down then
  begin
    buffer :=
    '  Label = new Label(this)' + #13#10 +
    '  with Label'              + #13#10 +
    '    Top    = 20'           + #13#10 +
    '    Left   = 20'           + #13#10 +
    '    Width  = 50'           + #13#10 +
    '    Height = 48'           + #13#10 +
    '    Text   = "Label1"'     + #13#10 +
    '  endwith'                 + #13#10 ;
    try
      try
        i := Length(buffer) * sizeof(WideChar);
        GetMem(wc, i+1);
        wc := StringToWideChar(buffer,wc,i);
        with SourceTextEditor do
        InsertLine(CaretXY,CaretXY, wc, true);
      except
        on EOutOfMemory do
        begin
          ShowMessage('out of memory');
          ExitProcess(1);
        end;
      end;
    finally
      FreeMem(wc);
      JvSpeedButton1.Down := true;
    end;
  end else
  if JvSpeedButton5.Down then
  begin
    buffer :=
    '  PushButton1 = new PushButton(this)' + #13#10 +
    '  with (this.PushButton1)' + #13#10 +
    '    Top    = 20'           + #13#10 +
    '    Left   = 20'           + #13#10 +
    '    Width  = 50'           + #13#10 +
    '    Height = 48'           + #13#10 +
    '    Text   = "Button1"'    + #13#10 +
    '  endwith'                 + #13#10 ;
    try
      try
        i := Length(buffer) * sizeof(WideChar);
        GetMem(wc, i+1);
        wc := StringToWideChar(buffer,wc,i);
        with SourceTextEditor do
        InsertLine(CaretXY,CaretXY, wc, true);
      except
        on EOutOfMemory do
        begin
          ShowMessage('out of memory');
          ExitProcess(1);
        end;
      end;
    finally
      FreeMem(wc);
      JvSpeedButton1.Down := true;
    end;
  end else
  if JvSpeedButton6.Down then
  begin
    buffer :=
    '  EntryField1 = new Entryfield(this)' + #13#10 +
    '  with (this.EntryField1)' + #13#10 +
    '    Top    = 20'           + #13#10 +
    '    Left   = 20'           + #13#10 +
    '    Width  = 50'           + #13#10 +
    '    Height = 48'           + #13#10 +
    '    Text   = "Edit1"'      + #13#10 +
    '  endwith'                 + #13#10 ;
    try
      try
        i := Length(buffer) * sizeof(WideChar);
        GetMem(wc, i+1);
        wc := StringToWideChar(buffer,wc,i);
        with SourceTextEditor do
        InsertLine(CaretXY,CaretXY, wc, true);
      except
        on EOutOfMemory do
        begin
          ShowMessage('out of memory');
          ExitProcess(1);
        end;
      end;
    finally
      FreeMem(wc);
      JvSpeedButton1.Down := true;
    end;
  end;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  if JvSelectDirectory1.Execute then
  begin
    TranspileOutputEdit.Text := JvSelectDirectory1.Directory
  end;
end;

procedure TForm2.New1MeasureItem(Sender: TObject; ACanvas: TCanvas;
  var Width, Height: Integer);
begin
  Height := 16;
  Width := 100;
end;

procedure TForm2.DevelopPageDrawTab(
  Control   : TCustomTabControl;
  TabIndex  : Integer;
  const Rect: TRect;
  Active    : Boolean);
var
  R: TRect;
  s1: String;
begin
  R := Rect;
  with Control.Canvas do
  begin
    Brush.Color := clYellow;

    Font.Name  := 'Arial';
    Font.Size  := 10;
    Font.Color := clBlack;
    Font.Style := [fsBold];

    s1 := 'DEBUG';
    TextOut(2,2,s1);
  end;
end;

procedure TForm2.StatusBar1DrawPanel(
  StatusBar : TStatusBar;
  Panel     : TStatusPanel;
  const Rect: TRect);
begin
  if Panel = StatusBar.Panels[1] then
  with ProgressBar1 do begin
    Top    := Rect.Top;
    Left   := Rect.Left;
    Width  := Rect.Right  - Rect.Left - 15;
    Height := Rect.Bottom - Rect.Top;
  end;
end;

procedure TForm2.FormResize(Sender: TObject);
begin
  resize__MyCppFrame(ScrollBox29.Handle);
end;

procedure TForm2.dBASE1Click(Sender: TObject);
begin
  modusButton.Caption := 'dBASE Mode 1';
  SourceTextEditor.Lines.Clear;
  SourceTextEditor.Lines.Text :=
  '** END HEADER -- do not remove this line' + #13#10 +
  '//'                                       + #13#10 +
  '// Generated on 09/28/97'                 + #13#10 +
  '//'                                       + #13#10 +
  'parameter bModal'                         + #13#10 +
  'local f'                                  + #13#10 +
  'f = new AboutForm()'                      + #13#10 +
  'if (bModal)'                              + #13#10 +
  '  f.mdi = .f.   // ensure not MDI'        + #13#10 +
  '  f.readModal()'                          + #13#10 +
  'else'                                     + #13#10 +
  '  f.open()'                               + #13#10 +
  'endif'                                    + #13#10 +
  ''                                         + #13#10 +
  'CLASS AboutForm OF FORM'                  + #13#10 +
  ''                                         + #13#10 +
  'ENDCLASS'                                 + #13#10;
end;

procedure TForm2.Pascal1Click(Sender: TObject);
begin
  modusButton.Caption := 'Pascal Mode';
  with SourceTextEditor.Lines do
  begin
    Clear;
    Text :=
    '// Pascal/Delphi'           + #13#10#13#10  +
    'unit test1;'                + #13#10        +
    'interface'                  + #13#10        +
    '  procedure main;'          + #13#10        +
    'implementation'             + #13#10#13#10  +
    '  procedure main;'          + #13#10        +
    '  begin'                    + #13#10        +
    '    WriteLn(''ddddd'',42);' + #13#10        +
    '  end;'                     + #13#10#13#10  +
    'end.'                       + #13#10        ;
  end;
end;

procedure TForm2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  callHelp: Boolean;
  rc : TPoint;
begin
  if SourceTextEditor.Focused then
  begin
    rc := TPoint(SourceTextEditor.CaretXY);
    StatusBar1.Panels[2].Text :=
    'Row: ' + IntToStr(rc.Y)  + ', ' +
    'Col: ' + IntToStr(rc.X)  ;
  end;

  if key = VK_F1 then
  begin
    callHelp := true;
    Timer1.Enabled := true;
    HTMLHelpUser.ApplicationHelp(HELP_CONTEXT, 1, callHelp);
  end;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
var
  aWindow: HWND;
begin
  aWindow := FindWindow('Windows-Hilfe', nil);
  if aWindow < 1 then
  aWindow := FindWindow('Windows-Help', nil);

  if aWindow > 0 then
  begin
  showmessage('434');
    ShowWindow(awindow, SW_SHOW);
    SetForegroundWindow(aWindow);
  end;
end;

procedure TForm2.JvPopupMenu1Popup(Sender: TObject);
var
  point: TPoint;
begin
  Timer1.Enabled := true;
end;

procedure TForm2.dBase4DOS1Click(Sender: TObject);
begin
  modusButton.Caption := 'dBASE Mode 2';
  SourceTextEditor.Lines.Clear;
  SourceTextEditor.Lines.Text := '// dBase 4 DOS' + #13#10;
end;

procedure TForm2.ISOLISP1Click(Sender: TObject);
begin
  modusButton.Caption := 'LISP Mode';
  SourceTextEditor.Lines.Clear;
  SourceTextEditor.Lines.Text := ';; LISP mode' + #13#10;
end;

procedure TForm2.SourceTextEditorKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  rc : TPoint;
begin
  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;

  rc := TPoint(SourceTextEditor.CaretXY);
  StatusBar1.Panels[2].Text :=
  'Row: ' + IntToStr(rc.Y)  + ', ' +
  'Col: ' + IntToStr(rc.X)  ;

  SelectionTimer.Enabled := false;
end;

procedure TForm2.SelectionTimerTimer(Sender: TObject);
begin
  if SourceTextEditor.SelLength > 0 then
  begin
    SourceTextEditorCut .Color := clLime;
    SourceTextEditorCopy.Color := clLime;

    SourceTextEditorSelectAll.Caption := 'De-Select All';
    SourceTextEditorSelectAll.Tag := 1;

    SourceTextEditorDelete.Color := clLime;
    SourceTextEditorDelete.Tag   := 1;
  end else
  begin
    SourceTextEditorCut   .Color := $0080FF80;
    SourceTextEditorCopy  .Color := $0080FF80;
    SourceTextEditorDelete.Color := $0080FF80;
    
    SourceTextEditorSelectAll.Caption := 'Select All';
  end;

  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;
end;

procedure TForm2.SourceTextEditorSelectAllClick(Sender: TObject);
begin
  if SourceTextEditorSelectAll.Tag = 0 then
  begin
    SourceTextEditorSelectAll.Caption := 'De-Select All';
    SourceTextEditorSelectAll.Tag := 1;
    SourceTextEditorDelete   .Tag := 1;

    SourceTextEditor.SelectAll;
  end else
  begin
    SourceTextEditorSelectAll.Caption := 'Select All';
    SourceTextEditorSelectAll.Tag := 0;
    SourceTextEditorDelete   .Tag := 0;

    SourceTextEditor.SelStart := 1;
    SourceTextEditor.SelEnd   := 1;
  end;
end;

procedure TForm2.SourceTextEditorDeleteClick(Sender: TObject);
begin
  if SourceTextEditorDelete.Tag = 0 then
  begin
    if SourceTextEditor.SelLength > 1 then
    begin
      SourceTextEditorDelete.Tag := 0;
      SourceTextEditor.ClearSelection;
      SourceTextEditorDelete.SetFocus;
    end else
    begin
      SourceTextEditorDelete.Tag := 0;
      SourceTextEditor.SetFocus;
      SourceTextEditor.SelLength := 1;
      SourceTextEditor.ClearSelection;
      SourceTextEditorDelete.SetFocus;
    end;
  end else
  begin
    SourceTextEditorDelete.Tag := 0;
    SourceTextEditor.ClearSelection;
    SourceTextEditor.SelLength := 1;

    SourceTextEditorSelectAll.Caption := 'Select All';
    SourceTextEditorSelectAll.Tag := 0;

    SourceTextEditor.SetFocus;
  end;
end;

procedure TForm2.SourceTextEditorClick(Sender: TObject);
var
  rc : TPoint;
begin
  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;

  rc := TPoint(SourceTextEditor.CaretXY);
  StatusBar1.Panels[2].Text :=
  'Row: ' + IntToStr(rc.Y)  + ', ' +
  'Col: ' + IntToStr(rc.X)  ;
end;

procedure TForm2.SourceTextEditorKeyPress(Sender: TObject;
  var Key: WideChar);
var
  rc : TPoint;
begin
  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;

  rc := TPoint(SourceTextEditor.CaretXY);
  StatusBar1.Panels[2].Text :=
  'Row: ' + IntToStr(rc.Y)  + ', ' +
  'Col: ' + IntToStr(rc.X)  ;
end;

procedure TForm2.SourceTextEditorChange(Sender: TObject);
begin
  if SourceTextEditor.Modified then
  begin
    SourceTextEditorUndo.Color := clLime;
  end;
end;

procedure TForm2.SourceTextEditorUndoClick(Sender: TObject);
begin
  if not SourceTextEditor.UndoList.CanUndo then
  begin
    SourceTextEditorUndo.Color := $0080FF80;
    SourceTextEditor.Modified  := false;
  end else
  begin
    SourceTextEditor.Undo;
    if SourceTextEditor.UndoList.CanUndo then
    begin
      SourceTextEditorUndo.Color := clLime;
      SourceTextEditor.Modified  := true;
    end else
    begin
      SourceTextEditorUndo.Color := $0080FF80;
      SourceTextEditor.Modified  := false;
    end;
  end;
end;

procedure TForm2.SourceTextEditorCopyClick(Sender: TObject);
begin
  if SourceTextEditor.SelLength > 0 then
  begin
    SourceTextEditorStringHolder.Strings.Add('plain text');
    SourceTextEditorStringHolder.Strings.Add(SourceTextEditor.SelText);
  end;
end;

procedure TForm2.SourceTextEditorPasteClick(Sender: TObject);
var
  str0: String;
  len0: Integer;
  str1: PWideChar;
  str2: PWideChar;
begin
  if SourceTextEditorStringHolder.Strings.Count > 1 then
  begin
    if SourceTextEditorStringHolder.Strings[0] = 'plain text' then
    begin
      str0 := SourceTextEditorStringHolder.Strings[1];
      len0 := Length(str0) * 3;

      GetMem(str2,   len0) ;
      str1 := StringToWideChar(str0,str2,len0);

      SourceTextEditor.InsertBlock(
      SourceTextEditor.CaretXY,
      SourceTextEditor.CaretXY, str2, true);
    end;
  end;
end;

procedure TForm2.SourceTextEditorCutClick(Sender: TObject);
begin
  SourceTextEditorCopyClick   (Sender);
  SourceTextEditorDeleteClick (Sender);
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  all: IHTMLElementCollection;
  doc: IHTMLDocument2;
  win: IHTMLWindow2;
  fc: IHTMLFramesCollection2;
  u: IUnknown;
  i: Integer;
  v: OleVariant;
  s: String;
begin
end;

procedure FileSearch(FileList: TStringList; const dirName: string; ext: String);
var
  searchResult: TSearchRec;
begin
  if FindFirst(dirName+'\*', faAnyFile, searchResult)=0 then begin
    try
      repeat
        if (searchResult.Attr and faDirectory)=0 then
        begin
          if SameText(ExtractFileExt(searchResult.Name), ext) then
          begin
            FileList.Add(searchResult.Name);
          end;
        end;
      until FindNext(searchResult)<>0
    finally
      FindClose(searchResult);
    end;
  end;
end;

procedure TForm2.DatabaseListButton1Click(Sender: TObject);
var
  TableNames: TStringList;
  idx: Integer;
  menuItems: Array of TMenuItem;
begin
  if Length(Trim(DatabaseListButton1.Caption)) < 1 then
  exit;

  try
    TableNames := TStringList.Create;

    JvDatabaseItems1.DBSession.OpenDatabase(DatabaseListButton1.Caption);
    FileSearch(TableNames,JvDatabaseItems1.DBSession.Databases[0].Directory,'.dbf');

    TableListMenuPopup.Items.Clear;
    SetLength(menuItems,TableNames.Count+1);

    for idx := 0 to TableNames.Count - 1 do
    begin
      menuItems[idx] := TMenuItem.Create(TableListMenuPopup);
      menuItems[idx].Caption := TableNames.Strings[idx];
      menuItems[idx].OnClick := TableListItemOnClick;
    end;
    showmessage('count: ' + inttostr(tablenames.count));
    menuItems[TableNames.Count] := TMenuItem.Create(TableListMenuPopup);
    menuItems[TableNames.Count].Caption := 'lulu';

    TableListMenuPopup.Items.Add(menuItems);
  except
    on E: Exception do
    begin
      TableNames .Clear;
      TableNames .Free;
      ShowMessage('Error occur: ' +
      DatabaseListButton1.Caption + #13#10 + E.Message);
    end;
  end;
end;

procedure TForm2.TableListItemOnClick(Sender: TObject);
var
  s: String;
begin
  s := TMenuItem(Sender).Caption;
  s := Copy(s,2,Length(s));

  DatabaseTableListButton1.Caption := s;
  DatabaseTableListButton2.Caption := s;
end;

procedure TForm2.DatabaseTableListButton1Click(Sender: TObject);
var
  idx, i,j: Integer;
  FieldNames: TStrings;
begin
  if Length(Trim(DatabaseTableListButton1.Caption)) < 1 then
  exit;

  FieldNames := TStringList.Create;
    with JvTableItems1 do
    begin
      if Active then Close;
      DatabaseName := DatabaseListButton1.Caption;
      TableName    := DatabaseTableListButton1.Caption;
      Open;
      First;
      with DataPageGrid2 do
      begin
        ColWidths[0] := 12;

        RowCount  := RecordCount + 1;
        ColCount  := FieldCount  + 1;
        FixedRows := 1;
        FixedCols := 1;

        GetFieldNames(FieldNames);

        for idx := 0 to FieldNames.Count - 1 do
        Cells[idx+1,0] := FieldNames[idx];

        for i := 1 to RecordCount do begin
        for j := 1 to FieldCount  do begin
        Cells[j,i] := FieldByName(FieldNames[j-1]).AsString;
        end; Next; end;

        if DataTablePageControl.ActivePage = FieldPage then
        begin inc(
          DataPageGrid2ActiveRow  );
          DataPageGrid2.Selection := TGridRect(Rect(0,

          DataPageGrid2ActiveRow, DataPageGrid2.Width,
          DataPageGrid2ActiveRow));
        end;

        Visible := true;
      end;
    end;
end;

procedure TForm2.DatabaseTableListButton2Click(Sender: TObject);
var
  idx, i,j,k,rec: Integer;
  s1, s2: String;
begin
  if Length(Trim(DatabaseTableListButton2.Caption)) < 1 then
  exit;

  Table1.Close;

  Table1.DatabaseName := DatabaseListButton2.Caption;

  Table1.TableName :=
  JvDatabaseItems1.DBSession.Databases[0].Directory +
  DatabaseTableListButton2.Caption;

  Table1.Open;
  Table1.First;

  DataSource1.DataSet.Open;
  DataSource1.DataSet.First;

  NavigatorFirst  .Enabled := false;
  NavigatorLast   .Enabled := true;
  NavigatorPrev   .Enabled := false;
  NavigatorNext   .Enabled := true;
  NavigatorAdd    .Enabled := true;
  NavigatorDelete .Enabled := true;
  NavigatorSave   .Enabled := true; // todo
  NavigatorCancel .Enabled := false;
  NavigatorRefresh.Enabled := false;
end;

procedure TForm2.DatabaseListButton2Click(Sender: TObject);
var
  TableNames: TStringList;
  idx: Integer;
  menuItems: Array of TMenuItem;
begin
  if Length(Trim(DatabaseListButton2.Caption)) < 1 then
  exit;

  try
    TableNames := TStringList.Create;

    JvDatabaseItems1.DBSession.OpenDatabase(DatabaseListButton2.Caption);
    FileSearch(TableNames,JvDatabaseItems1.DBSession.Databases[0].Directory,'.dbf');

    TableListMenuPopup.Items.Clear;
    SetLength(menuItems,TableNames.Count+2);

    for idx := 0 to TableNames.Count - 1 do
    begin
      menuItems[idx] := TMenuItem.Create(TableListMenuPopup);
      menuItems[idx].Caption := TableNames.Strings[idx];
      menuItems[idx].OnClick := TableListItemOnClick;
    end;

    menuItems[TableNames.Count] := TMenuItem.Create(TableListMenuPopup);
    menuItems[TableNames.Count].Caption := '-';

    menuItems[TableNames.Count+1] := TMenuItem.Create(TableListMenuPopup);
    menuItems[TableNames.Count+1].Caption := 'Create New Table';
    menuItems[TableNames.Count+1].OnClick := TableListItemNewTableOnClick;

    TableListMenuPopup.Items.Add(menuItems);
  except
    on E: Exception do
    begin
      TableNames .Clear;
      TableNames .Free;
      ShowMessage('Error occur: ' +
      DatabaseListButton2.Caption + #13#10 + E.Message);
    end;
  end;
end;

procedure TForm2.TableListItemNewTableOnClick(Sender: TObject);
begin
  Application.CreateForm(TOKRightDlg, OKRightDlg);
  OkRightDlg.FormServer := Form2;
  OKRightDlg.ShowModal;

  if Length(Form2.FNewTableName) < 1 then
  exit;

  with Table1 do
  begin
    Close;
    if Exists then DeleteTable;

    DatabaseName := DatabaseListButton2.Caption;
    TableName    := Form2.FNewTableName;
    TableType    := ttDBASE;
    with FieldDefs do
    begin
      Clear;
      with AddFieldDef do
      begin
        Name     := 'FIELD_NAME';
        DataType := ftString;
        Size     := 25;
      end;
      with AddFieldDef do
      begin
        Name     := 'FIELD_TYPE';
        DataType := ftString;
        Size     := Length(' Auto Increment ');
      end;
      with AddFieldDef do
      begin
        Name     := 'FIELD_LENGTH';
        DataType := ftInteger;
      end;
      with AddFieldDef do
      begin
        Name     := 'FIELD_PRECISION';
        DataType := ftInteger;
      end;
    end;
    CreateTable;
    Open;
    Append;
    Post;
  end;
end;

procedure TForm2.TableDataPageShow(Sender: TObject);
begin
  ComponentPageControl.Enabled := false;
  ComponentPageControl.Visible := false;

  HelpAuthoringPageControl.Enabled := false;
  HelpAuthoringPageControl.Visible := false;

  NavigatorPageControl.Visible := true;
  NavigatorPageControl.Enabled := true;
end;

procedure TForm2.DesignerPageShow(Sender: TObject);
begin
  HelpAuthoringPageControl.Enabled := false;
  HelpAuthoringPageControl.Visible := false;

  NavigatorPageControl.Enabled := false;
  NavigatorPageControl.Visible := false;

  ComponentPageControl.Enabled := true;
  ComponentPageControl.Visible := true;
end;

procedure TForm2.EditorPageShow(Sender: TObject);
begin
  HelpAuthoringPageControl.Enabled := false;
  HelpAuthoringPageControl.Visible := false;

  NavigatorPageControl.Enabled := false;
  NavigatorPageControl.Visible := false;

  ComponentPageControl.Enabled := true;
  ComponentPageControl.Visible := true;
end;

procedure TForm2.DevPanelBarTabSelected(Sender: TObject;
  Item: TJvTabBarItem);
begin
  TasksPageControlChange(Sender);

  if Item.Caption = 'Tables' then
  begin
    DataTablePageControl.TabIndex := 1; DataTablePageControlChange(Sender);
    DataTablePageControl.TabIndex := 0; DataTablePageControlChange(Sender);
  end;
end;

procedure TForm2.NavigatorNextClick(Sender: TObject);
var
  row: Integer;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    DataSource1.DataSet.Next;

    if DataSource1.DataSet.Eof then
    begin
      NavigatorFirst.Enabled := true;
      NavigatorPrev .Enabled := true;
      NavigatorLast .Enabled := false;
      NavigatorNext .Enabled := false;
      Beep;
    end else
    begin
      NavigatorFirst.Enabled := true;
      NavigatorPrev .Enabled := true;
      NavigatorLast .Enabled := true;
      NavigatorNext .Enabled := true;
    end;
  end;
end;

procedure TForm2.DataPageGrid1Click(Sender: TObject);
var
  row: Integer;
begin
(*  DataPageGrid1ActiveRow := DataPageGrid1.Row;
  if (DataPageGrid1ActiveRow = 1) then
  begin
    NavigatorPrev.Enabled := false;
  end;

  if DataPageGrid1Modified > 0 then
  begin
    DataPageGrid1Modified := 0;
    row := DataPageGrid1.RowCount;
    DataPageGrid1.RowCount := row - 1;
  end;*)
end;

procedure TForm2.NavigatorPrevClick(Sender: TObject);
var
  row: Integer;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    DataSource1.DataSet.Prior;

    if DataSource1.DataSet.Bof then
    begin
      NavigatorFirst.Enabled := false;
      NavigatorPrev .Enabled := false;
      NavigatorNext .Enabled := true;
      NavigatorLast .Enabled := true;
    end else
    begin
      NavigatorFirst.Enabled := true;
      NavigatorPrev .Enabled := true;
      NavigatorNext .Enabled := true;
      NavigatorLast .Enabled := true;
    end;
  end;
end;

procedure TForm2.NavigatorFirstClick(Sender: TObject);
var
  row: Integer;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    DataSource1.DataSet.First;

    if DataSource1.DataSet.Bof then
    begin
      NavigatorFirst.Enabled := false;
      NavigatorPrev .Enabled := false;
      NavigatorLast .Enabled := true;
      NavigatorNext .Enabled := true;
    end else
    begin
      NavigatorPrev .Enabled := true;
      NavigatorFirst.Enabled := true;
      NavigatorNext .Enabled := true;
      NavigatorLast .Enabled := true;
    end;
  end;
end;

procedure TForm2.NavigatorLastClick(Sender: TObject);
var
  row: Integer;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    DataSource1.DataSet.Last;

    if DataSource1.DataSet.Eof then
    begin
      NavigatorFirst.Enabled := true;
      NavigatorPrev .Enabled := true;
      NavigatorNext .Enabled := false;
      NavigatorLast .Enabled := false;
    end;
  end;
end;

procedure TForm2.DataPageGrid1DblClick(Sender: TObject);
begin
  DBComboBox1.Visible := false;
  DBComboBox1.Enabled := false;

  if DataTablePageControl.ActivePage = DataPage then
  begin
  end;
end;

procedure TForm2.NavigatorAddClick(Sender: TObject);
var
  idx: Integer;
  row: Integer;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    if not Table1.Active then Table1.Open;
    Table1.Append;
    Table1.Post;
  end;
end;

procedure TForm2.NavigatorDeleteClick(Sender: TObject);
var
  row, idx: Integer;
  delSQL  : String;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    if not Table1.Active then Table1.Open;
    Table1.Delete;
    Table1.Edit;
    Table1.Post;
  end;
end;

procedure TForm2.NavigatorSaveClick(Sender: TObject);
var
  i, row, col: Integer;
  fieldString: Array of String;
begin
  if DataTablePageControl.ActivePage = DataPage then
  begin
    ProgressBar1.Active := true;
    ProgressBar1.Active := false;
  end;
end;

procedure TForm2.DataPageGrid1DrawColumnCell(
  Sender    : TObject;
  const Rect: TRect;
  DataCol   : Integer;
  Column    : TColumn;
  State     : TGridDrawState);
begin
  if (gdFocused in State) and (Column.Title.Caption = 'FIELD_TYPE') then
  begin
    with dbComboBox1 do
    begin
      Left    := Rect.Left   + DataPageGrid1.Left + 2;
      Top     := Rect.Top    + DataPageGrid1.Top  + 2;

      Width   := Rect.Right  - Rect.Left;
      Height  := Rect.Bottom - Rect.Top;

      Visible := true;
      Enabled := true;
    end;
  end else
  begin
    dbComboBox1.Enabled := false;
    dbComboBox1.Visible := false;
  end;
end;

procedure TForm2.DataPageGrid1ColExit(Sender: TObject);
begin
//  if DataPageGrid1.SelectedField.FieldName = 'FIELD_TYPE' then
  begin
    DBComboBox1.Visible := false;
    DBComboBox1.Enabled := false;
  end;
end;

procedure TForm2.DataPageGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = chr(9)) then
  exit;

  if (DataPageGrid1.SelectedField.FieldName = 'FIELD_TYPE') then
  begin
    DBComboBox1.SetFocus;
    SendMessage(DBComboBox1.Handle, WM_CHAR, WORD(key), 0);
  end
end;

procedure TForm2.DBComboBox1Change(Sender: TObject);
var
  col: Integer;
begin
  Table1.Edit;
  Table1.FieldByName('FIELD_TYPE').AsString := DBComboBox1.Text;
  Table1.Post;

  DBComboBox1.Visible := false;
  DataPageGrid1.SelectedIndex := 2;
end;

procedure TForm2.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
//  if key = #9 then
  begin
    Table1.Edit;
    Table1.FieldByName('FIELD_TYPE').AsString := DBComboBox1.Text;
    Table1.Post;

    DataPageGrid1.SelectedIndex := 2;

    DBComboBox1.Visible := false;
    DBComboBox1.Enabled := false;
  end;
end;

procedure TForm2.DataPageGrid1CellClick(Column: TColumn);
begin
  DBComboBox1.Visible := false;
  DBComboBox1.Enabled := false;
end;

procedure TForm2.DBComboBox1Click(Sender: TObject);
begin
  Table1.Edit;
  Table1.FieldByName('FIELD_TYPE').AsString := DBComboBox1.Text;
  Table1.Post;

  DataPageGrid1.SelectedIndex := 2;

  DBComboBox1.Visible := false;
  DBComboBox1.Enabled := false;
end;

procedure TForm2.DBComboBox1Select(Sender: TObject);
begin
  Table1.Edit;
  Table1.FieldByName('FIELD_TYPE').AsString := DBComboBox1.Text;
  Table1.Post;

  DataPageGrid1.SelectedIndex := 2;

  DBComboBox1.Visible := false;
  DBComboBox1.Enabled := false;
end;

procedure TForm2.HtmlDesignPanelPaint(Sender: TObject);
begin
  with HtmlDesignPanel do
    DesignPaintGrid(Canvas, ClientRect, Color);
end;

procedure TForm2.HtmlMenuSpeedButtonClick(Sender: TObject);
begin
  DesignClass := 'TxmlMainMenu';
end;

procedure TForm2.HtmlDesignPanelGetAddClass(Sender: TObject;
  var ioClass: String);
begin
  ioClass := DesignClass;

  DesignClass := '';
  XmlDesignButton.Down := true;
end;

procedure TForm2.JvImgBtn7Click(Sender: TObject);
var
  XMLrootNode : IXMLnode;
  XMLnode     : IXMLnode;

  XMLattribute: string;
  XMLindex    : Integer;

  XMLfile, XMLcss, XMLtitle : String;

  HTMLstream  : TMemoryStream;
  HTMLbuffer  : String;
begin
  XMLfile := ExtractFilePath(Application.ExeName) + 'index.xml';
  if not FileExists(XMLfile) then
  begin
    ShowMessage('file does not exists: ' + #13#10 + XMLfile);
    exit;
  end;

  XMLdocument1.LoadFromFile(XMLfile);
  XMLrootNode := XMLdocument1.ChildNodes.FindNode('html');

  if XMLrootNode = nil then
  begin
    ShowMessage('no valid html xml document.');
    exit;
  end;

  // cascading style sheet template
  if XMLrootNode.HasAttribute('css') then
     XMLcss   := XMLrootNode.Attributes['css'];
  if XMLrootNode.HasAttribute('title') then
     XMLtitle := XMLrootNode.Attributes['title'];


  HTMLbuffer :=
  '<!DOCTYPE html>'    + #13#10 +
  '<html>'  + #13#10#9 +
  '<head>'  + #13#10#9 ;

  if Length(Trim(XMLtitle)) > 0 then
  HTMLbuffer := HTMLbuffer  + #9  +
  '<title>' + XMLtitle + '</title>' + #13#10#9;

  if Length(Trim(XMLcss)) > 0 then
  HTMLbuffer := HTMLbuffer + #9 +
  '<link rel="stylesheet" href="'   + XMLcss + '">' + #13#10#9;

  HTMLbuffer := HTMLbuffer +
  '</head>' + #13#10 +
  '<body>'  + #13#10 ;

  // traverse child nodes ...
  for XMLindex := 0 to XMLrootNode.ChildNodes.Count - 1 do
  begin
    XMLnode := XMLrootNode.ChildNodes.Get(XMLindex);
    if XMLnode.NodeType = ntText then
    begin
      ShowMessage('ATEXT: ' + XMLnode.Text);
    end else
    if XMLnode.IsTextElement then
    begin
      ShowMessage('ETEXT: ' + #13#10 + XMLnode.Text);
    end;
  end;

  HTMLbuffer := HTMLbuffer +
  '</body>' + #13#10 +
  '</html>' + #13#10 ;

  HTMLstream := TMemoryStream.Create;
  HTMLstream.WriteBuffer(HTMLbuffer[1],Length(HTMLbuffer));
  HTMLstream.SaveToFile(ChangeFileExt(XMLfile,'.html'));
  HTMLstream.Free;
end;

procedure TForm2.HintTimerTimer(Sender: TObject);
begin
  if ApplicationBalloonHint.Enabled then
  begin
    ApplicationBalloonHint.HideHint;
    HintTimer.Enabled := false;
  end;
end;

procedure TForm2.XMLDesignButtonMouseEnter(Sender: TObject);
begin
  with ApplicationBalloonHint do
  begin
    Description := 'Mouse Cursor / Selector';
    Caption     := 'Mouse';
    ShowHint(Mouse.CursorPos);
  end;
  HintTimer.Enabled := true;
end;

procedure TForm2.XMLDesignButtonMouseLeave(Sender: TObject);
begin
  HintTimer.Enabled := false;
  ApplicationBalloonHint.Visible := false;
end;

procedure TForm2.HtmlMenuSpeedButtonMouseEnter(Sender: TObject);
begin
  with ApplicationBalloonHint do
  begin
    Description := 'HTML Main-Menu';
    Caption     := 'MainMenu';
    ShowHint(Mouse.CursorPos);
  end;
  HintTimer.Enabled := true;
end;

procedure TForm2.HtmlMenuSpeedButtonMouseLeave(Sender: TObject);
begin
  HintTimer.Enabled := false;
  ApplicationBalloonHint.Visible := false;
end;

procedure TForm2.JvSpeedButton1MouseEnter(Sender: TObject);
begin
  with ApplicationBalloonHint do
  begin
    Description := 'TMouse Cursor / Selector';
    Caption     := 'Mouse';
    ShowHint(Mouse.CursorPos);
  end;
  HintTimer.Enabled := true;
end;

procedure TForm2.JvSpeedButton1MouseLeave(Sender: TObject);
begin
  HintTimer.Enabled := false;
  ApplicationBalloonHint.Visible := false;
end;

procedure TForm2.JvSpeedButton2MouseEnter(Sender: TObject);
begin
  with ApplicationBalloonHint do
  begin
    Description := 'Create / Edit the application main menu';
    Caption     := 'TMainMenu';
    ShowHint(Mouse.CursorPos);
  end;
  HintTimer.Enabled := true;
end;

procedure TForm2.JvSpeedButton2MouseLeave(Sender: TObject);
begin
  HintTimer.Enabled := false;
  ApplicationBalloonHint.Visible := false;
end;

procedure TForm2.JvSpeedButton3MouseEnter(Sender: TObject);
begin
  with ApplicationBalloonHint do
  begin
    Description := 'Create / Edit the application popup menu';
    Caption     := 'TMainPopupMenu';
    ShowHint(Mouse.CursorPos);
  end;
  HintTimer.Enabled := true;
end;

procedure TForm2.JvSpeedButton3MouseLeave(Sender: TObject);
begin
  HintTimer.Enabled := false;
  ApplicationBalloonHint.Visible := false;
end;

procedure TForm2.JvSpeedButton4MouseEnter(Sender: TObject);
begin
  with ApplicationBalloonHint do
  begin
    Description := 'Create a Text-Label';
    Caption     := 'TLabel';
    ShowHint(Mouse.CursorPos);
  end;
  HintTimer.Enabled := true;
end;

procedure TForm2.JvSpeedButton4MouseLeave(Sender: TObject);
begin
  HintTimer.Enabled := false;
  ApplicationBalloonHint.Visible := false;
end;

procedure TForm2.MenuEditClick(Sender: TObject);
begin
  MenuFilePopup.Popup(
  ScreenToClient(Mouse.CursorPos).X, Form2.Top + 10 +
  ScreenToClient(Mouse.CursorPos).Y);
end;

procedure TForm2.MenuFileClick(Sender: TObject);
begin
  MenuFilePopup.Popup(
  ScreenToClient(Mouse.CursorPos).X, Form2.Top + 10 +
  ScreenToClient(Mouse.CursorPos).Y);
end;

procedure TForm2.MenuEditMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  MenuFile.FillFont.Style := [];
  MenuFile.Font.Style := [];

  MenuEdit.FillFont.Style := [fsBold];
  MenuEdit.Font.Style := [fsBold];
end;

procedure TForm2.MenuFileMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  MenuEdit.FillFont.Style := [];
  MenuEdit.Font.Style := [];

  MenuFile.FillFont.Style := [fsBold];
  MenuFile.Font.Style := [fsBold];
end;

procedure TForm2.HtmlDesignPanelSelectionChange(Sender: TObject);
var
  tc: TComponent;
begin
  tc := getSelectedHTMLdesignerComponent;
end;

function TForm2.getSelectedHTMLdesignerComponent: TComponent;
var
  idx: Integer;
  tc: TControl;
begin
  result := nil;
  with HtmlDesignPanel do
  begin
    for idx := 0 to ControlCount - 1 do
    begin
      tc := Controls[idx];
      ActiveDesignerControl := tc;
      if Surface.Selector.IsSelected(tc) then
      begin
        if tc.ClassName = 'TxmlMainMenu' then
        begin
          with TxmlMainMenu(tc) do
          begin
            Align := alTop;
            result := tc;
            exit;
          end;
        end;
      end;
    end;
  end;
end;

procedure TForm2.JvInterpreterProgram1GetValue(
  Sender     : TObject;
  Identifier : String;
  var Value  : Variant;
  Args       : TJvInterpreterArgs;
  var Done   : Boolean);
  var
  idx: Integer;
begin
  if LowerCase(identifier) = 'writeln' then
  begin
  Console1.Writeln('xxxx');
    for idx := 0 to Args.Count - 1 do
    begin
      Console1.Writeln(Args.Values[idx]);
    end;
    Done := true;
  end;
end;

procedure TForm2.Console1GetPrompt(
  Sender: TCustomConsole;
  var APrompt, ADefaultText: String;
  var ADefaultCaretPos: Integer);
begin
  APrompt := 'C:\';
end;

procedure TForm2.Console1PromptKeyPress(
  Sender: TCustomConsole;
  var AKey: Char);
begin
  if (AKey = Chr(VK_UP)) then
  begin
    Sender.CurrLine.Text := FLastCommand;
    Sender.CaretX := Length(FLastCommand);
    Sender.Invalidate;
  end;
end;

initialization
  HTMLHelpUser       := TUseHTMLHelp.Create;
  Application.OnHelp := HTMLHelpUser.ApplicationHelp;

  RegisterClass(TMainMenu);
  RegisterClass(TPopupMenu);
  RegisterClass(TLabel);
  RegisterClass(TJvImgBtn);
  RegisterClass(TButton);
  RegisterClass(TEdit);

  RegisterClass(TxmlMainMenu);

  TJvInspectorAlignItem.RegisterAsDefaultItem;
  TJvInspectorAnchorsItem.RegisterAsDefaultItem;
  TJvInspectorColorItem.RegisterAsDefaultItem;
  TJvInspectorTImageIndexItem.RegisterAsDefaultItem;

finalization
  Application.OnHelp := nil;
  HTMLHelpUser.Free;

end.

