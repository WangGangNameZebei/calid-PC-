//---------------------------------------------------------------------------

#ifndef Unit13H
#define Unit13H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "CGAUGES.h"
//---------------------------------------------------------------------------
class TFrmBar : public TForm
{
__published:	// IDE-managed Components
        TCGauge *CGauge1;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall FormKeyPress(TObject *Sender, char &Key);
private:	// User declarations
public:		// User declarations
        __fastcall TFrmBar(TComponent* Owner);
        void __fastcall PBarOpen(int nn);
        void __fastcall PBarGo(void);
        void __fastcall PBarClose(void);
};
//---------------------------------------------------------------------------
extern PACKAGE TFrmBar *FrmBar;
//---------------------------------------------------------------------------
#endif
