//---------------------------------------------------------------------------

#ifndef Unit14H
#define Unit14H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "sButton.hpp"
#include "sComboBox.hpp"
#include "sEdit.hpp"
#include <Grids.hpp>
#include "sGroupBox.hpp"
#include "sLabel.hpp"
//---------------------------------------------------------------------------
class TForm14 : public TForm
{
__published:	// IDE-managed Components
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
        TStringGrid *StringGrid2;
        TLabel *Label1;
        TsGroupBox *sGroupBox1;
        TsButton *sButton1;
        TsEdit *sEdit3;
        TsLabel *sLabel1;
        void __fastcall sButton8Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall StringGrid2SelectCell(TObject *Sender, int ACol,
          int ARow, bool &CanSelect);
        void __fastcall sButton1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm14(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm14 *Form14;
//---------------------------------------------------------------------------
#endif
