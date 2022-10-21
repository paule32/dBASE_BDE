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

#pragma hdrstop
#pragma package(smart_init)
//---------------------------------------------------------------------------

#pragma argsused
int WINAPI DllEntryPoint(HINSTANCE hinst, unsigned long reason, void*)
{
        return 1;
}
//---------------------------------------------------------------------------
static TForm        * myParentForm    = NULL;
static TPanel       * myPanel_1       = NULL;
static TPanel       * myPanel_2       = NULL;
static TSpeedButton * mySpeedButton_1 = NULL;

static TScrollBox   * myScrollBox_1   = NULL;
static TTreeView    * myTreeView_1    = NULL;
static TSplitter    * mySplitter      = NULL;

static TPageControl * myPageControl   = NULL;
static TTabSheet    * myTabSheet_1    = NULL;
static TScrollBox   * myTabSheetBox_1 = NULL;

class MyOpenFileClass: public TObject
{
public:
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
    LPVOID fileData = NULL;
    PIMAGE_DOS_HEADER dosHeader;
    PIMAGE_NT_HEADERS imageNTHeaders;
    PIMAGE_SECTION_HEADER sectionHeader;
    PIMAGE_SECTION_HEADER importSection;
    IMAGE_IMPORT_DESCRIPTOR* importDescriptor;
    PIMAGE_THUNK_DATA thunkData;
    DWORD thunk = NULL;
    DWORD rawOffset = NULL;

    try
    {
      file = CreateFile(
        fileName.c_str(),       // name of file
        GENERIC_READ,           // open for reading
        FILE_SHARE_READ,        // shared for reading
        NULL,                   // default security
        OPEN_EXISTING,          // open if exists
        FILE_ATTRIBUTE_NORMAL |  FILE_FLAG_OVERLAPPED,  // normal file
        NULL);                  // no attr. template

      if (file == INVALID_HANDLE_VALUE) {
        ShowMessage("Could not read file");
        return;
      }

      // display page
      myTabSheet_1 = new TTabSheet(myPageControl);
      myTabSheet_1->PageControl = myPageControl;
      myTabSheet_1->Caption = fileName;
      myTabSheet_1->Visible = true;

      myTabSheetBox_1 = new TScrollBox(myTabSheet_1);
      myTabSheetBox_1->Parent  = myTabSheet_1;
      myTabSheetBox_1->Align   = alClient;
      myTabSheetBox_1->Visible = true;

      myTreeView_1->Items->Clear();

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


      fileSize = GetFileSize(file, NULL);
      fileData = HeapAlloc(GetProcessHeap(), 0, fileSize);

      ReadFile(file, fileData, fileSize, &bytesRead, NULL);

      // dos header
      dosHeader = (PIMAGE_DOS_HEADER)fileData;

      // nt headers
      imageNTHeaders = (PIMAGE_NT_HEADERS)((DWORD)fileData + dosHeader->e_lfanew);

      // file header

      // optional header

      // data directories

      // section headers
      DWORD sectionLocation =
        (DWORD)imageNTHeaders + sizeof(DWORD) +
        (DWORD)(sizeof(IMAGE_FILE_HEADER)) +
        (DWORD)imageNTHeaders->FileHeader.SizeOfOptionalHeader;

      DWORD sectionSize =
        (DWORD)sizeof(IMAGE_SECTION_HEADER);

      // get offset to the import directory RVA
      DWORD importDirectoryRVA =
      imageNTHeaders->OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress;

      if (file != NULL)
      CloseHandle(file);
    }
    catch (...) {
      if (file != NULL)
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
    myParentForm->BorderStyle = bsNone;
    myParentForm->Width       = rect.right;
    myParentForm->Height      = rect.bottom;

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
    myPageControl->Width   = 800;
    myPageControl->Align   = alLeft;
    myPageControl->Visible = true;

    myParentForm->Visible = true;
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

