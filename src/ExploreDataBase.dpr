// ----------------------------------------------------------------------------
// Free BASE 1.0.0
//
// (c) 2022 by Jens Kallup - <paule32.jk@gmail.com>
// all rights reserved.
// ----------------------------------------------------------------------------
program ExploreDataBase;

uses
  Windows,
  SysUtils,
  Forms,
  Dialogs,
  IniFiles,
  Classes,
  Graphics,
  Controls,
  StdCtrls,
  Unit2 in 'Unit2.pas' {Form2},
  Unit1 in 'Unit1.pas' {DataBaseExplorer: TAppletModule},
  SetupLocale in 'SetupLocale.pas' {SetupLocaleFrame: TFrame},
  parseDBASE in 'parseDBASE.pas',
  NewTableDialog in 'NewTableDialog.pas' {OKRightDlg};

{$R *.res}

resourcestring
  test_string = 'testung';
  initial_lang =
  'The default .ini file could not be found !'      + #13#10 +
  'As such, you have the option to choose between:' + #13#10 + #13#10 +
  '- default Language (English), or'                + #13#10 +
  '- your operating system Language, or'            + #13#10 +
  '- a customized language (see ListBox below).';

var
  s1, s2 , userLang: String;
var
  userTransLate : TResStringRec;

  userHelpPascal: String;
  userHelpdBASE : String;
  userHelpLisp  : String;

  FLabelText : TLabel = nil;
  FComboBox  : TComboBox;
  FHLangMod  : THandle;
type
  TdummyButtonClass = class(TCustomForm)
  private
    FEngButton: TButton;
    FSysButton: TButton;
    FUsrButton: TButton;

    FSysFlag  : Boolean;
    FOptFlag  : Boolean;
  public
    procedure ButtonEngOnClick(Sender: TObject);
    procedure ButtonSysOnClick(Sender: TObject);
    procedure ButtonUsrOnClick(Sender: TObject);

    procedure FormOnClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxOnChange(Sender: TObject);

    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

var
  iniFile    : TIniFile  = nil;
  initDialog : TForm = nil;
  initButton : TdummyButtonClass = nil;

function GetUserDefaultUILanguage: LANGID; stdcall; external 'kernel32';
function GetUsersWindowsLanguage: string;
var
  WinLanguage: array [0..50] of char;
begin
  VerLanguageName(GetUserDefaultUILanguage, WinLanguage, 50);
  Result := WinLanguage;
end;

procedure LoadTranslationModule(lang: String; flag: Boolean);
var
  modFile: String;
begin
exit;
  modFile := ExtractFilePath(ParamStr(0)) + 'assets\common\runtime.' + lang;
  ShowMessage(modFile);

  if not FileExists(modFile) then
  begin
    if flag then
    begin
      ShowMessage(   test_string + #13#10+
      'Translation file "' + lang + '" not found !' + #13#10 +
      'Application will stop running.');
      Halt(1);
    end else
    begin
      ShowMessage(
      'Translation file "' + lang + '" not found !' + #13#10 +
      'Using default English text''s');
      userLang := 'ENG';
      exit;
    end;
  end;
  FHLangMod := LoadResourceModule(PChar(modFile), false);
  if FHLangMod = 0 then
  begin
    ShowMessage(
    'Could not load DEU module !' + #13#10 +
    'Using default trnslation text''s');
  end;
end;

// ----------------------------------------------------------------------------
// make sure, this procedure is called after memory initialization !!!
// ----------------------------------------------------------------------------
procedure SetTranslateText;
begin
  if FHLangMod < 1 then
  exit;

  userTransLate.Module     := @FHLangMod;
  userTransLate.Identifier := 14;
end;

constructor TdummyButtonClass.Create(AOwner: TComponent);
begin
  FEngButton := TButton.Create(AOwner);
  with FEngButton do
  begin
    Parent  := TWinControl(AOwner);
    Top     := TWinControl(AOwner).Height - 120;
    Left    := 20;
    Height  := 20;
    Caption := 'English';
    Visible := true;
    OnClick := ButtonEngOnClick;
  end;

  FSysButton := TButton.Create(AOwner);
  with FSysButton do
  begin
    Parent  := TWinControl(AOwner);
    Top     := TWinControl(AOwner).Height - 120;
    Left    := FEngButton.Left + FEngButton.Width + 20;;
    Height  := 20;
    Visible := true;
    Caption := 'System';
    OnClick := ButtonSysOnClick;
  end;

  FUsrButton := TButton.Create(AOwner);
  with FUsrButton do
  begin
    Parent  := TWinControl(AOwner);
    Top     := TWinControl(AOwner).Height - 120;
    Left    := FSysButton.Left + FSysButton.Width + 20;;
    Height  := 20;
    Visible := true;
    Caption := 'User';
    OnClick := ButtonUsrOnClick;
  end;

  FSysFlag := false;
  FOptFlag := false;
end;

destructor TdummyButtonClass.Destroy;
begin
  FEngButton.Free;
  FSysButton.Free;
  FUsrButton.Free;

  inherited Destroy;
end;

procedure TdummyButtonClass.ButtonEngOnClick(Sender: TObject);
begin
  userLang := 'ENG';
  FOptFlag := true;
  initDialog.Close;
end;

procedure TdummyButtonClass.ButtonSysOnClick(Sender: TObject);
begin
  If (FComboBox.ItemIndex < 0) and (FSysFlag = true) then
  begin
    ShowMessage(
    'no option selected in the combo list !' + #13#10 +
    'Please select on of the 3 options.');
    FSysFlag := false;
    exit;
  end;
  FOptFlag := true;
  initDialog.Close;
end;

procedure TdummyButtonClass.ButtonUsrOnClick(Sender: TObject);
begin
  if FComboBox.ItemIndex = 0 then
  begin
    userLang := 'ENG';
    LoadTranslationModule(userLang,false);
    FOptFlag := true;
    initDialog.Close;
  end else
  if FComboBox.ItemIndex = 1 then
  begin
    userLang := 'SYS';
    FOptFlag := true;
    initDialog.Close;
  end else
  begin
    userLang := 'DEU';
    FSysFlag := true;
    ButtonSysOnClick(Sender);
  end;
end;

procedure TdummyButtonClass.ComboBoxOnChange(Sender: TObject);
begin
  LoadTranslationModule('DEU',false);
end;

procedure TdummyButtonClass.FormOnClose(Sender: TObject; var Action: TCloseAction);
begin
  if FOptFlag = false then
  begin
    Action := caFree;
  end else
  begin
    Action := caHide;

    userHelpPascal := s1 + 'assets\help\' + userLang + '\Pascal.chm';
    userHelpdBASE  := s1 + 'assets\help\' + userLang + '\FreeBASE.chm';
    userHelpLisp   := s1 + 'assets\help\' + userLang + '\Lisp.chm';

    Application.Initialize;
    Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TDataBaseExplorer, DataBaseExplorer);
  Application.CreateForm(TOKRightDlg, OKRightDlg);
  Application.Run;

  end;
end;

// ----------------------------------------------------------------------------
// entry point of out application:
// ----------------------------------------------------------------------------
begin
  try
    try
      s1 := ExtractFilePath(ParamStr(0));
      s2 := s1 + 'assets\common\config.ini';
      if not FileExists(s2) then
      begin
        try
          initDialog := TForm.Create(nil);
          with initDialog do
          begin
            Caption := 'Free BASE 1.0 (c) 2022 paule32';
            Width   := 400;
            Height  := 300;
            Left    := (Screen.Width  - Width)  div 2;
            Top     := (Screen.Height - Height) div 2;
          end;

          FLabelText := TLabel.Create(initDialog);
          with FLabelText do
          begin
            Parent   := initDialog;
            WordWrap := true;
            AutoSize := false;
            Width    := 300;
            Height   := 200;

            Font.Style := [];
            Font.Name  := 'Arial';
            Font.Size  := 10;

            Caption := initial_lang;

            Top     := 20;
            Left    := 20;
            Visible := true;
          end;

          initButton := TdummyButtonClass.Create(initDialog);
          initDialog.OnClose := initButton.FormOnclose;

          FComboBox := TComboBox.Create(initDialog);
          with FComboBox do
          begin
            Parent  := initDialog;
            Top     := initDialog.Height - 84;
            Style   := csDropDownList;
            Left    := 20;
            Height  := 21;
            Width   := 265;
            Visible := true;

            Items.Add('English');
            Items.Add('System: ' + GetUsersWindowsLanguage);
            Items.Add('German');

            OnChange := initButton.ComboBoxOnChange;
          end;

          initDialog.ShowModal;
        finally
          FLabelText.Free;

          FComboBox.Items.Clear;
          FComboBox.Free;

          initDialog.Free;
        end;
      end else
      begin
        iniFile := TiniFile.Create(s2);
        userLang := iniFile.ReadString('common','userlang','ENG');
        if Length(Trim(userLang)) < 3 then
        begin
          userLang := 'ENG';
        end;
        iniFile.Free;

        Application.Initialize;
        Application.CreateForm(TForm2, Form2);
        Application.CreateForm(TDataBaseExplorer, DataBaseExplorer);
        Application.Run;
      end;
    except
      on E: Exception do
      begin
        ShowMessage('Exception-Error in Application: ' + #13#10 + E.Message);
      end;
    end;
  finally
  end;
end.
