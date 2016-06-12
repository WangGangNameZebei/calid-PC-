//---------------------------------------------------------------------------

#ifndef Unit22H
#define Unit22H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "sButton.hpp"
#include "sEdit.hpp"
#include "sLabel.hpp"
//---------------------------------------------------------------------------
class TForm22 : public TForm
{
__published:	// IDE-managed Components
        TsButton *sButton2;
        TsEdit *sEdit1;
        TsButton *sButton3;
        TsLabel *sLabel1;
        TMemo *Memo1;
        void __fastcall sButton3Click(TObject *Sender);
        void __fastcall sButton2Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm22(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm22 *Form22;
//---------------------------------------------------------------------------
#endif
