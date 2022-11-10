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
#include <ComCtrls.hpp>
#include <Grids.hpp>
#include "SynEdit.hpp"
//---------------------------------------------------------------------------
class TBCB6_hexForm : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label1;
        TPageControl *PageControl1;
        TTabSheet *hexViewTabSheet;
        TScrollBox *ScrollBox1;
        TATBinHex *ATBinHex1;
        TTabSheet *TabSheet1;
        TScrollBox *ScrollBox2;
        TSynEdit *SynEdit1;
private:	// User declarations
public:		// User declarations
        __fastcall TBCB6_hexForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TBCB6_hexForm *BCB6_hexForm;
//---------------------------------------------------------------------------
#endif
