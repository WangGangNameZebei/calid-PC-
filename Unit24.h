//---------------------------------------------------------------------------

#ifndef Unit24H
#define Unit24H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "sButton.hpp"
#include "sEdit.hpp"
#include "sLabel.hpp"
//---------------------------------------------------------------------------
class TForm24 : public TForm
{
__published:	// IDE-managed Components
        TsLabel *sLabel1;
        TsEdit *sEdit1;
        TsButton *sButton1;
        void __fastcall sButton1Click(TObject *Sender);
        void __fastcall sEdit1KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit1Change(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm24(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm24 *Form24;
//---------------------------------------------------------------------------
#endif
