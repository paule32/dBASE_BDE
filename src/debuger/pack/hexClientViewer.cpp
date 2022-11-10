//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "hexClientViewer.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "ATBinHex"
#pragma link "SynEdit"
#pragma resource "*.dfm"
TBCB6_hexForm *BCB6_hexForm;
//---------------------------------------------------------------------------
__fastcall TBCB6_hexForm::TBCB6_hexForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



