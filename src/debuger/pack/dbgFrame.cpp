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
static TTreeView    * myTreeView_1    = NULL;
static TSplitter    * mySplitter      = NULL;
static TPageControl * myPageControl   = NULL;

class MyOpenFileClass: public TObject
{
public:
  void __fastcall SpeedButtonClick(System::TObject* Sender) {
    ShowMessage("ooioiox ssdfdfs ");
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

    myTreeView_1 = new TTreeView(myPanel_1);
    myTreeView_1->Parent  = myPanel_1;
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
    myParentForm->Height = rect.bottom;
  }
}

extern "C"
__declspec(dllexport) void
__stdcall destroy_MyCppFrame(void)
{
  delete myOpenFileClass;
  delete myPageControl;

  delete myTreeView_1;

  delete myPanel_2;
  delete myPanel_1;

  delete myParentForm;
}

