//---------------------------------------------------------------------------

#ifndef Unit9H
#define Unit9H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "sButton.hpp"
#include <ComCtrls.hpp>
#include <Menus.hpp>
#include "sCheckBox.hpp"
//---------------------------------------------------------------------------
class TForm9 : public TForm
{
__published:	// IDE-managed Components
        TListView *ListView2;
        TsButton *sButton1;
        TsButton *sButton2;
        TPopupMenu *PopupMenu1;
        TMenuItem *N1;
        TMenuItem *N2;
        TsCheckBox *sCheckBox1;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall sButton1Click(TObject *Sender);
        void __fastcall sButton2Click(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall N1Click(TObject *Sender);
        void __fastcall sCheckBox1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm9(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm9 *Form9;
//---------------------------------------------------------------------------
#endif
