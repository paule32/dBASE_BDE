//---------------------------------------------------------------------------

#ifndef hexClientViewerH
#define hexClientViewerH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "ATBinHex.hpp"
#include <ExtCtrls.hpp>
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TBCB6_hexForm : public TForm
{
__published:	// IDE-managed Components
        TButton *Button1;
        TATBinHex *ATBinHex1;
        TLabel *Label1;
private:	// User declarations
public:		// User declarations
        __fastcall TBCB6_hexForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TBCB6_hexForm *BCB6_hexForm;
//---------------------------------------------------------------------------
#endif
