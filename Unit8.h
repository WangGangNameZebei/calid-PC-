//---------------------------------------------------------------------------

#ifndef Unit8H
#define Unit8H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Grids.hpp>
#include "sButton.hpp"
#include "sComboBox.hpp"
#include "sEdit.hpp"
#include "sCheckBox.hpp"
#include "sGroupBox.hpp"
//---------------------------------------------------------------------------
class TForm8 : public TForm
{
__published:	// IDE-managed Components
        TStringGrid *StringGrid1;
        TLabel *Label15;
        TLabel *Label16;
        TLabel *Label17;
        TsButton *sButton7;
        TsButton *sButton8;
        TsButton *sButton9;
        TsButton *sButton10;
        TsComboBox *sComboBox1;
        TsEdit *sEdit1;
        TsEdit *sEdit2;
        TsGroupBox *sGroupBox1;
        TsCheckBox *sCheckBox28;
        TsButton *sButton1;
        void __fastcall sButton7Click(TObject *Sender);
        void __fastcall sButton8Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall StringGrid1SelectCell(TObject *Sender, int ACol,
          int ARow, bool &CanSelect);
        void __fastcall sButton9Click(TObject *Sender);
        void __fastcall sButton10Click(TObject *Sender);
        void __fastcall sComboBox1KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit1KeyPress(TObject *Sender, char &Key);
        void __fastcall sComboBox1DropDown(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall sButton1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm8(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm8 *Form8;
//---------------------------------------------------------------------------
#endif
