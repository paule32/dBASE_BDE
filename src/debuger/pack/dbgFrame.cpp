// ---------------------------------------------------------------------------
// (c) 2022 by Jens Kallup <paule32.jk@gmail.com>
// all rights reserved.
// ---------------------------------------------------------------------------

#include <basepch.h>

#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include <iostream>

#include <vcl.h>

#include <Classes.hpp>
#include <Graphics.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Grids.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include <Dialogs.hpp>
#include <ComCtrls.hpp>

#include <dstring.h>
#include "hexClientViewer.h"

#pragma hdrstop
#pragma package(smart_init)
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------
VOID CALLBACK FileIOcomplete(
  DWORD dwErrorCode,
  DWORD dwNumberOfBytesTransfered,
  LPOVERLAPPED lpOverlapped
);

DWORD g_BytesTransferred = 0;

VOID CALLBACK FileIOcomplete(
  DWORD dwErrorCode,
  DWORD dwNumberOfBytesTransfered,
  LPOVERLAPPED lpOverlapped )
{
  char* buffer = new char[126];

  if (dwErrorCode > 0) {
    sprintf(buffer,"Error code: 0x%x", dwErrorCode);
    AnsiString s1 = buffer;

    sprintf(buffer,"Number of bytes: 0x%x",dwNumberOfBytesTransfered);
    AnsiString s2 = buffer;

    AnsiString s3 = s1 + "\n" + s2;
    ShowMessage(s3);
    return;
  }

  g_BytesTransferred = dwNumberOfBytesTransfered;
}

static TForm        * myParentForm    = NULL;
static TPanel       * myPanel_1       = NULL;
static TPanel       * myPanel_2       = NULL;
static TSpeedButton * mySpeedButton_1 = NULL;

static TScrollBox   * myScrollBox_1   = NULL;
static TTreeView    * myTreeView_1    = NULL;
static TSplitter    * mySplitter      = NULL;

static TPageControl * myPageControl   = NULL;
static TTabSheet    * myTabSheet_1    = NULL;

static TTabSheet    * myTabSheet_2    = NULL;
static TScrollBox   * myTabSheet_2_SB = NULL;
static TTabSheet    * myTabSheet_3    = NULL;
static TScrollBox   * myTabSheet_3_SB = NULL;

static TScrollBox   * myTabSheetBox_1 = NULL;

static BOOL           isFlaged        = FALSE;

class MyEntryField: public TObject
{
public:
  AnsiString  EditLabel;
  int         field_int;
  TLabel *       Edit_label;
  MyEntryField * Edit_next;
  MyEntryField * Edit_prev;
  TEdit  *       Edit_current;
  char   *    buffer;
public:
  __fastcall MyEntryField(
    TScrollBox*    AOwner,
    AnsiString     _label,
    TRect          _rectLabel,
    TRect          _rectEdit,
    WORD           _field_int)
  {
    EditLabel  = _label;
    field_int  = _field_int;

    buffer     = new char[128];
    Edit_label = new TLabel(AOwner);

    Edit_label->Parent  = AOwner;
    Edit_label->Caption = EditLabel;
    Edit_label->Left    = _rectLabel.left;
    Edit_label->Top     = _rectLabel.top;
    Edit_label->Width   = _rectLabel.right;
    Edit_label->Height  = _rectLabel.bottom;
    Edit_label->Visible = true;

    sprintf(buffer,"0x%x", field_int);
    Edit_current = new TEdit(AOwner);
    Edit_current->Parent  = AOwner ;
    Edit_current->Text    = buffer;
    Edit_current->Left    = _rectEdit.left;
    Edit_current->Top     = _rectEdit.top;
    Edit_current->Width   = _rectEdit.right;
    Edit_current->Height  = _rectEdit.Bottom;

    Edit_current->TabStop = true;
    Edit_current->Visible = true;
    Edit_current->Enabled = true;

    Edit_current->OnEnter    = MyEntryField_OnEnter;
    Edit_current->OnExit     = MyEntryField_OnLeave;
    Edit_current->OnKeyDown  = MyEntryField_OnKeyDown;
    Edit_current->OnKeyPress = MyEntryField_OnKeyPress;
  }
  __fastcall ~MyEntryField() {
    delete    Edit_current;
    delete    Edit_label;
    delete [] buffer;
  }
  void __fastcall MyEntryField_OnEnter(System::TObject* Sender) {
    if (Edit_current->Tag == 1) {
      Edit_current->Font->Color = clYellow;
      Edit_current->Font->Style = TFontStyles() << fsBold;
      Edit_current->Color = clRed;
    } else {
      Edit_current->Font->Color = clBlack;
      Edit_current->Font->Style = TFontStyles();
      Edit_current->Color = clYellow;
    }
  }
  void __fastcall MyEntryField_OnLeave(System::TObject* Sender) {
    if (Edit_current->Tag == 1) {
      Edit_current->Font->Color = clYellow;
      Edit_current->Font->Style = TFontStyles() << fsBold;
      Edit_current->Color = clRed;
    } else {
      Edit_current->Font->Color = clBlack;
      Edit_current->Font->Style = TFontStyles();
      Edit_current->Color = clWhite;
    }
  }
  void __fastcall MyEntryField_OnKeyDown (System::TObject* Sender, WORD &key, TShiftState shift) {
    try {
      if (key == VK_TAB) {
        if (Edit_next != NULL) {
          Edit_next->Edit_current->SetFocus();
          return;
        } return;
      }
      switch (key) {
      case '0': case '1': case '2': case '3': case '4':
      case '5': case '6': case '7': case '8': case '9':
      case 'a': case 'A': case 'b': case 'B':
      case 'c': case 'C': case 'd': case 'D':
      case 'e': case 'E': case 'f': case 'F':
      case 'x': case 'X':
      case 10 : case 13 : // Enter/Return
      case 127:           // Delete 1
      case VK_DELETE:     // Delete 2
      case VK_BACK:       // Backspace
      case VK_LEFT:       // Cursor left
      case VK_RIGHT:      // Cursor right

      { if ((key == 13) || (key == 10)) {
          if (Edit_next != NULL) {
            Edit_next->Edit_current->SetFocus();
            return;
          } return;
        }

        Edit_current->Modified = true;
        Edit_current->Tag = 1;

        Edit_current->Font->Style = TFontStyles() << fsBold;
        Edit_current->Font->Color = clWhite;
        Edit_current->Color = clRed;

        if ((key == 8) || (key == 'X') || (key == 'x')) {
          Edit_current->Text = "0x";
          return;
        }

        sprintf(buffer,"%s%c",Edit_current->Text.c_str(),key);
        if (strlen(buffer) > 10) {
          Beep();
          sprintf(buffer,"0x");
          return;
        }

        Edit_current->Text = buffer;
      }
      break;
      default: {
        throw new Exception("input error.");
      }
      break;
      }
    }
    catch (...) {
      Edit_current->Text = "0x";
    }
  }
  void __fastcall MyEntryField_OnKeyPress(System::TObject* Sender, char &key) {
    if ((key == 13) || (key == 10)) {
      if (Edit_next != NULL) {
        Edit_next->Edit_current->SetFocus();
        key = 0x00; // no beep !
        return;
      } return;
    }
    Edit_current->Tag = 1;
    key = 0x00; // no beep !
  }
};

class MyOpenFileClass: public TObject
{
private:
  PIMAGE_DOS_HEADER dosHeader;
  PIMAGE_NT_HEADERS imageNTHeaders;
  PIMAGE_SECTION_HEADER sectionHeader;
  PIMAGE_SECTION_HEADER importSection;
  IMAGE_IMPORT_DESCRIPTOR* importDescriptor;
  PIMAGE_THUNK_DATA thunkData;

  LPVOID fileData;

  MyEntryField * eMagicEdit;
  MyEntryField * eLastPageEdit;
  MyEntryField * ePagesEdit;
  MyEntryField * eRelocEdit;
  MyEntryField * eSizeHdrEdit;
  MyEntryField * eMinNeedEdit;
  MyEntryField * eMaxNeedEdit;
  MyEntryField * eStackSegEdit;
  MyEntryField * eStackPtrEdit;
  MyEntryField * eCheckSumEdit;
  MyEntryField * eInitIPEdit;
  MyEntryField * eInitCSEdit;
  MyEntryField * eRelocAddrEdit;
  MyEntryField * eOverlayEdit;
  MyEntryField * eOEMidentEdit;
  MyEntryField * eOEMinfoEdit;
  MyEntryField * eNewExeEdit;

  MyEntryField * NThdrSignatureEdit;

  TButton * NewExeButton;
  TMemoryStream  * MS;

  char  * buffer;
private:

public:
  void __fastcall myFormActivate(System::TObject* Sender) {
    ShowWindow(Application->Handle, SW_HIDE);
  }
  __fastcall ~MyOpenFileClass()
  {
    if (isFlaged == TRUE)
    {
      delete [] buffer;

      delete eMagicEdit;
      delete eLastPageEdit;
      delete ePagesEdit;
      delete eRelocEdit;
      delete eSizeHdrEdit;
      delete eMinNeedEdit;
      delete eMaxNeedEdit;
      delete eStackSegEdit;
      delete eStackPtrEdit;
      delete eCheckSumEdit;
      delete eInitIPEdit;
      delete eInitCSEdit;
      delete eRelocAddrEdit;
      delete eOverlayEdit;
      delete eOEMidentEdit;
      delete eOEMinfoEdit;
      delete eNewExeEdit;
      delete NewExeButton;

      delete NThdrSignatureEdit;

      delete BCB6_hexForm;
    }
  }
  void __fastcall NewExeButton_OnClick(System::TObject* Sender) {
    myPageControl->ActivePage = myTabSheet_3;
  }
  void __fastcall TreeViewOnChange(System::TObject* Sender, TTreeNode* Node)
  {
    if (Node->Text == "DOS Header") myPageControl->ActivePage = myTabSheet_2; else
    if (Node->Text == "NT Header" ) myPageControl->ActivePage = myTabSheet_3; else
                                    myPageControl->ActivePage = myTabSheet_1;

    if (Node->Text == "File Header") {
    }
    if (Node->Text == "Optional Header") {
    }
    if (Node->Text == "Data Directories") {
    }
    if (Node->Text == "Section Headers") {
    }
    if (Node->Text == "Import Directory") {
    }
    if (Node->Text == "Resouce Directory") {
    }
    isFlaged = TRUE;
  }

  void __fastcall SpeedButtonClick(System::TObject* Sender) {
    TOpenDialog* opendlg = new TOpenDialog(Application);
    if (!opendlg->Execute()) {
      ShowMessage("Error during open file occur.");
      return;
    }

    AnsiString fileName = opendlg->FileName;
    HANDLE file = NULL;
    DWORD fileSize = NULL;
    DWORD bytesRead = NULL;

    DWORD thunk = NULL;
    DWORD rawOffset = NULL;

    try
    {
      OVERLAPPED ol = {0};
      buffer        = new char[255];

      // check file
      if (!FileExists(fileName)) {
        AnsiString s = "file: " + fileName + "\n does not exists !";
        ShowMessage(s);
        return;
      }
      // open file
      file = CreateFile(
          fileName.c_str(),
          GENERIC_READ,
          FILE_SHARE_READ,
          NULL,
          OPEN_EXISTING,
          FILE_ATTRIBUTE_NORMAL | FILE_FLAG_OVERLAPPED,
          NULL);
      if (file == INVALID_HANDLE_VALUE) {
          ShowMessage("Could not read file");
          return;
      }

      // get file size
      if ((fileSize = GetFileSize(file, NULL)) == 0xffffffff) {
          CloseHandle(file);
          sprintf(buffer,
          "GetFileSize fail: 0x%08x", GetLastError());
          ShowMessage(buffer);
          delete [] buffer;
          return;
      }
      // allocate heap
      fileData = HeapAlloc(GetProcessHeap(), 0, fileSize);

      // read bytes to memory
      if (ReadFileEx(
          file,
          fileData,
          fileSize, &ol,
          FileIOcomplete) == FALSE)
      {
          CloseHandle(file);
          sprintf(buffer,
          "Terminal failure: Unable to read file from.\n"
          "GetLastError: 0x%08x.",
          GetLastError());
          ShowMessage(buffer);
          delete [] buffer;
          return;
      }
      SleepEx(2750, TRUE);
      bytesRead = g_BytesTransferred;

      if (bytesRead == 0) {
          CloseHandle(file);
          ShowMessage("No data read from file");
          return;
      }

      // display page
      myTabSheet_1 = new TTabSheet(myPageControl);
      myTabSheet_1->PageControl = myPageControl;
      myTabSheet_1->Caption = ExtractFileName(fileName);
      myTabSheet_1->TabStop = true;
      myTabSheet_1->Visible = true;

      myTabSheetBox_1 = new TScrollBox(myTabSheet_1);
      myTabSheetBox_1->Parent  = myTabSheet_1;
      myTabSheetBox_1->Align   = alClient;
      myTabSheetBox_1->TabStop = true;
      myTabSheetBox_1->Visible = true;


      // DOS header
      myTabSheet_2 = new TTabSheet(myPageControl);
      myTabSheet_2->PageControl = myPageControl;
      myTabSheet_2->Caption = "DOS Header";
      myTabSheet_2->TabStop = true;
      myTabSheet_2->Visible = true;

      myTabSheet_2_SB = new TScrollBox(myTabSheet_2);
      myTabSheet_2_SB->Parent  = myTabSheet_2;
      myTabSheet_2_SB->Align   = alClient;
      myTabSheet_2_SB->TabStop = true;
      myTabSheet_2_SB->Visible = true;

      // NT header
      myTabSheet_3 = new TTabSheet(myPageControl);
      myTabSheet_3->PageControl = myPageControl;
      myTabSheet_3->Caption = "NT Header";
      myTabSheet_3->TabStop = true;
      myTabSheet_3->Visible = true;

      myTabSheet_3_SB = new TScrollBox(myTabSheet_3);
      myTabSheet_3_SB->Parent  = myTabSheet_3;
      myTabSheet_3_SB->Align   = alClient;
      myTabSheet_3_SB->TabStop = true;
      myTabSheet_3_SB->Visible = true;


      myTreeView_1->Items->Clear();
      myTreeView_1->TabStop  = true;
      myTreeView_1->OnChange = &TreeViewOnChange;

      AnsiString s1 = "File: " + fileName;
      TTreeNode *nodeRoot = myTreeView_1->Items->Add(NULL, s1);

      TTreeNode *nodeRoot_dos = myTreeView_1->Items->AddChild(nodeRoot,"DOS Header");

      TTreeNode *nodeRoot_nt  = myTreeView_1->Items->AddChild(nodeRoot,"NT Header");
      TTreeNode *nodeRoot_nt_file  = myTreeView_1->Items->AddChild(nodeRoot_nt,"File Header");

      TTreeNode *nodeRoot_optional = myTreeView_1->Items->AddChild(nodeRoot_nt,"Optional Header");
      TTreeNode *nodeRoot_opt_data = myTreeView_1->Items->AddChild(nodeRoot_optional,"Data Directories");

      TTreeNode *nodeRoot_sections = myTreeView_1->Items->AddChild(nodeRoot,"Section Headers");
      TTreeNode *nodeRoot_import   = myTreeView_1->Items->AddChild(nodeRoot,"Import Directory");
      TTreeNode *nodeRoot_resource = myTreeView_1->Items->AddChild(nodeRoot,"Resouce Directory");

      nodeRoot->Expand(true);
      //===


      TStringGrid *myStringGrid_1 = new TStringGrid(myTabSheet_1);
      myStringGrid_1->Parent    = myTabSheet_1;
      myStringGrid_1->FixedRows = 3;
      myStringGrid_1->FixedCols = 0;
      myStringGrid_1->ColCount  = 7;
      myStringGrid_1->DefaultColWidth = 100;
      myStringGrid_1->Height    = 320;
      myStringGrid_1->Width     = myTabSheetBox_1->Width - 10;
      myStringGrid_1->Visible   = true;

      myStringGrid_1->Cells[0][0] = "Module Name";
      myStringGrid_1->Cells[1][0] = "Imports";
      myStringGrid_1->Cells[2][0] = "Offsets";
      myStringGrid_1->Cells[3][0] = "Time Stamp";
      myStringGrid_1->Cells[4][0] = "Forward Chain";
      myStringGrid_1->Cells[5][0] = "Name RVA";
      myStringGrid_1->Cells[6][0] = "FTs (IAT)";
      //===


      // DOS header
      dosHeader = (PIMAGE_DOS_HEADER)fileData;
      if (eMagicEdit == NULL) {
          eMagicEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Magic number",
          TRect(    10, 10,100,20),
          TRect(100+10, 10,100,20),
          dosHeader->e_magic);
          //---
          eLastPageEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Last Page of File:",
          TRect(    10, eMagicEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eMagicEdit->Edit_current->Top + 24,100,20),
          dosHeader->e_cblp);
          //---
          ePagesEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Pages in File:",
          TRect(    10, eLastPageEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eLastPageEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_cblp));
          //---
          eRelocEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Relocations:",
          TRect(    10, ePagesEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, ePagesEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_crlc));
          //---
          eSizeHdrEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Size Of Heder:",
          TRect(    10, eRelocEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eRelocEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_cparhdr * 0xf));
          //---
          eMinNeedEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Minimum alloc:",
          TRect(    10, eSizeHdrEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eSizeHdrEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_minalloc ));
          //---
          eMaxNeedEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Maximum alloc:",
          TRect(    10, eMinNeedEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eMinNeedEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_maxalloc));
          //---
          eStackSegEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Initial SS value:",
          TRect(    10, eMaxNeedEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eMaxNeedEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_ss));
          //---
          eStackPtrEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Initial SP value:",
          TRect(    10, eStackSegEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eStackSegEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_sp));
          //---
          eCheckSumEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Check-Sum:",
          TRect(    10, eStackPtrEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eStackPtrEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_csum));
          //---
          eInitIPEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Initial IP value:",
          TRect(    10, eCheckSumEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eCheckSumEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_ip));
          //---
          eInitCSEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Initial CS value:",
          TRect(    10, eInitIPEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eInitIPEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_cs));
          //---
          eRelocAddrEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Relocation Table:",
          TRect(    10, eInitCSEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eInitCSEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_lfarlc));
          //---
          eOverlayEdit = new MyEntryField(
          myTabSheet_2_SB,
          "Overlay number:",
          TRect(    10, eRelocAddrEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eRelocAddrEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_ovno));
          //---
          eOEMidentEdit = new MyEntryField(
          myTabSheet_2_SB,
          "OEM ident:",
          TRect(    10, eOverlayEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eOverlayEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_oemid));
          //---
          eOEMinfoEdit = new MyEntryField(
          myTabSheet_2_SB,
          "OEM info:",
          TRect(    10, eOEMidentEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eOEMidentEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_oeminfo));
          //---
          eNewExeEdit = new MyEntryField(
          myTabSheet_2_SB,
          "New EXE header:",
          TRect(    10, eOEMinfoEdit->Edit_current->Top + 24,100,20),
          TRect(100+10, eOEMinfoEdit->Edit_current->Top + 24,100,20),
          WORD(dosHeader->e_lfanew));

          NewExeButton = new TButton(myTabSheet_2_SB);
          NewExeButton->Parent = myTabSheet_2_SB;
          NewExeButton->OnClick = NewExeButton_OnClick;
          NewExeButton->Caption = "Visit";
          NewExeButton->Top = eOEMinfoEdit->Edit_current->Top + 24;
          NewExeButton->Left = 240;
          NewExeButton->Width = 64;
          NewExeButton->Height = 20;
          //---

          eMagicEdit     -> Edit_next = eLastPageEdit;
          eLastPageEdit  -> Edit_next = ePagesEdit;
          ePagesEdit     -> Edit_next = eRelocEdit;
          eRelocEdit     -> Edit_next = eSizeHdrEdit;
          eSizeHdrEdit   -> Edit_next = eMinNeedEdit;
          eMinNeedEdit   -> Edit_next = eMaxNeedEdit;
          eMaxNeedEdit   -> Edit_next = eStackSegEdit;
          eStackSegEdit  -> Edit_next = eStackPtrEdit;
          eStackPtrEdit  -> Edit_next = eCheckSumEdit;
          eCheckSumEdit  -> Edit_next = eInitIPEdit;
          eInitIPEdit    -> Edit_next = eInitCSEdit;
          eInitCSEdit    -> Edit_next = eRelocAddrEdit;
          eRelocAddrEdit -> Edit_next = eOverlayEdit;
          eOverlayEdit   -> Edit_next = eOEMidentEdit;
          eOEMidentEdit  -> Edit_next = eOEMinfoEdit;
          eOEMinfoEdit   -> Edit_next = eNewExeEdit;
          eNewExeEdit    -> Edit_next = eMagicEdit;


          //if (BCB6_hexForm == NULL)
          BCB6_hexForm = new TBCB6_hexForm(myTabSheet_2_SB);

          BCB6_hexForm->Parent  = myTabSheet_2_SB;
          BCB6_hexForm->BorderStyle = bsNone;
          BCB6_hexForm->Top     =   10;
          BCB6_hexForm->Left    =  230;
          BCB6_hexForm->Width   =  670;
          BCB6_hexForm->Height  =  320;
          BCB6_hexForm->Visible = true;

          MS = new TMemoryStream();
          MS->SetSize(0x100);
          MS->Position = 0;
          MS->WriteBuffer(dosHeader, 0x100);

          BCB6_hexForm->ATBinHex1->Mode = vbmodeHex;
          BCB6_hexForm->ATBinHex1->OpenStream(MS);

          BCB6_hexForm->ATBinHex1->Redraw();
          BCB6_hexForm->ATBinHex1->Invalidate();
      }

      // NT header
      imageNTHeaders = (PIMAGE_NT_HEADERS)((DWORD)fileData + dosHeader->e_lfanew);
      if (NThdrSignatureEdit == NULL) {
          NThdrSignatureEdit = new MyEntryField(
          myTabSheet_3_SB,
          "Signature:",
          TRect(    10, 10,100,20),
          TRect(100+10, 10,100,20),
          imageNTHeaders->Signature);
          //---


          BCB6_hexForm = new TBCB6_hexForm(myTabSheet_3_SB);

          BCB6_hexForm->Parent  = myTabSheet_3_SB;
          BCB6_hexForm->BorderStyle = bsNone;
          BCB6_hexForm->Top     =   10;
          BCB6_hexForm->Left    =  230;
          BCB6_hexForm->Width   =  670;
          BCB6_hexForm->Height  =  320;
          BCB6_hexForm->Visible = true;

          MS = new TMemoryStream();
          MS->SetSize(0x100);
          MS->Position = 0;
          MS->WriteBuffer(imageNTHeaders, 0x100);

          BCB6_hexForm->ATBinHex1->Mode = vbmodeHex;
          BCB6_hexForm->ATBinHex1->OpenStream(MS);

          BCB6_hexForm->ATBinHex1->Redraw();
          BCB6_hexForm->ATBinHex1->Invalidate();
      }

      // file header

      // optional header

      // data directories

      // section headers
      DWORD sectionLocation =
        (DWORD)imageNTHeaders + sizeof(DWORD) +
        (DWORD)(sizeof(IMAGE_FILE_HEADER))    +
        (DWORD)imageNTHeaders->FileHeader.SizeOfOptionalHeader;

      DWORD sectionSize =
        (DWORD)sizeof(IMAGE_SECTION_HEADER);

      // get offset to the import directory RVA
      DWORD importDirectoryRVA =
      imageNTHeaders->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress;

      CloseHandle(file);
    }
    catch (...) {
      CloseHandle(file);
      ShowMessage("Error in External module during read header structures.");
    }
  }
};
static MyOpenFileClass * myOpenFileClass = NULL;

extern "C"
__declspec(dllexport) void
__stdcall create__MyCppFrame(
  int ParentForm,

  int X,
  int Y,
  int W,
  int H)
{
  try {
    myOpenFileClass = new MyOpenFileClass();

    RECT rect;
    HWND parw = (HWND)ParentForm;
    GetWindowRect(parw,&rect);
    MapWindowPoints(HWND_DESKTOP, GetParent(parw), (LPPOINT)&rect, 2);

    myParentForm = new TForm((HWND)ParentForm);
    myParentForm->OnActivate   = &(myOpenFileClass->myFormActivate);
    myParentForm->BorderStyle  = bsNone;
    myParentForm->TabStop      = true;
    myParentForm->Width        = rect.right;
    myParentForm->Height       = rect.bottom;

    TPanel *myPanel_1  = new TPanel(myParentForm);
    myPanel_1->Parent  = myParentForm;
    myPanel_1->Align   = alLeft;
    myPanel_1->Font    = new TFont();
    myPanel_1->Visible = true;

    mySplitter = new TSplitter(myParentForm);
    mySplitter->Parent  = myParentForm;
    mySplitter->Left    = myPanel_1->Left + 2;
    mySplitter->Width   = 4;
    mySplitter->Align   = alLeft;
    mySplitter->Visible = true;

    myPanel_2 = new TPanel(myPanel_1);
    myPanel_2->Parent  = myPanel_1;
    myPanel_2->Height  = 42;
    myPanel_2->Align   = alTop;
    myPanel_2->Visible = true;

    //===
    Graphics::TBitmap *myBitmap_1 = new Graphics::TBitmap();
    Graphics::TBitmap *myBitmap_2 = new Graphics::TBitmap();

    myBitmap_2->Width  = 21;
    myBitmap_2->Height = 21;

    myBitmap_1->LoadFromFile("assets\\images\\open.bmp");
    myBitmap_2->Canvas->StretchDraw(TRect(0,0,21,21), myBitmap_1);
    //===

    mySpeedButton_1 = new TSpeedButton(myPanel_2);
    mySpeedButton_1->Parent  = myPanel_2;
    mySpeedButton_1->Left    =  5;
    mySpeedButton_1->Top     =  5;
    mySpeedButton_1->Width   = 32;
    mySpeedButton_1->Height  = 32;
    mySpeedButton_1->Glyph   = myBitmap_2;
    mySpeedButton_1->Visible = true;
    mySpeedButton_1->OnClick = &(myOpenFileClass->SpeedButtonClick);

    delete myBitmap_1;
    delete myBitmap_2;

    //===
    myScrollBox_1 = new TScrollBox(myPanel_1);
    myScrollBox_1->Parent  = myPanel_1;
    myScrollBox_1->Align   = alClient;
    myScrollBox_1->Visible = true;
    //===

    myTreeView_1 = new TTreeView(myScrollBox_1);
    myTreeView_1->Parent  = myScrollBox_1;
    myTreeView_1->Height  = 230;
    myTreeView_1->Align   = alTop;
    myTreeView_1->Visible = true;

    myPageControl = new TPageControl(myParentForm);
    myPageControl->Parent  = myParentForm;
    myPageControl->Left    = mySplitter->Left + 2;
    myPageControl->Width   = 923;
    myPageControl->Align   = alLeft;
    myPageControl->Visible = true;

    myParentForm->Visible = true;

    DWORD dwExStyle = GetWindowLong(Application->Handle, GWL_EXSTYLE);
    dwExStyle      &= ~WS_EX_APPWINDOW ;
    dwExStyle      |=  WS_EX_TOOLWINDOW;

    SetWindowLong(Application->Handle, GWL_EXSTYLE, dwExStyle);
    ShowWindow   (Application->Handle, SW_HIDE);
  }
  catch (Exception &e) {
    AnsiString s1 = "Error in external module: \r\n";
    AnsiString s2 = e.Message;
    AnsiString s3 = s1 + s2;
    ShowMessage(s3);
  }
}

extern "C"
__declspec(dllexport) void
__stdcall resize__MyCppFrame(int ParentForm)
{
  if ((ParentForm != NULL) && (myParentForm != NULL))
  {
    RECT rect;
    HWND parw = (HWND)ParentForm;
    GetWindowRect(parw,&rect);
    MapWindowPoints(HWND_DESKTOP, GetParent(parw), (LPPOINT)&rect, 2);

    myParentForm->Width  = rect.right;
    myParentForm->Height = rect.bottom-5;
  }
}

extern "C"
__declspec(dllexport) void
__stdcall destroy_MyCppFrame(void)
{
  delete myOpenFileClass;
  delete myPageControl;

  delete myTreeView_1;
  delete myScrollBox_1;

  delete myPanel_2;
  delete myPanel_1;

  delete myParentForm;
}

