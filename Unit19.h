//---------------------------------------------------------------------------

#ifndef Unit19H
#define Unit19H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "sButton.hpp"
#include "sEdit.hpp"
#include "sLabel.hpp"
#include "sGroupBox.hpp"
#include <Grids.hpp>
#include <Dialogs.hpp>
#include "sRadioButton.hpp"
#include <ComCtrls.hpp>
#include "CGAUGES.h"
//---------------------------------------------------------------------------
class TForm19 : public TForm
{
__published:	// IDE-managed Components
        TsGroupBox *sGroupBox22;
        TsButton *sButton62;
        TStringGrid *StringGrid3;
        TsButton *sButton2;
        TStaticText *StaticText2;
        TsButton *sButton3;
        TSaveDialog *SaveDialog1;
        TsGroupBox *sGroupBox1;
        TsButton *sButton61;
        TsButton *sButton1;
        TDateTimePicker *DateTimePicker1;
        TDateTimePicker *DateTimePicker2;
        TsEdit *sEdit1;
        TsRadioButton *sRadioButton1;
        TsRadioButton *sRadioButton2;
        TsLabel *sLabel1;
        TsLabel *sLabel2;
        TsLabel *sLabel3;
        TsEdit *sEdit2;
        TsLabel *sLabel4;
        TCGauge *CGauge1;
        void __fastcall sButton62Click(TObject *Sender);
        void __fastcall sButton61Click(TObject *Sender);
        void __fastcall sButton1Click(TObject *Sender);
        void __fastcall sButton2Click(TObject *Sender);
        void __fastcall sButton3Click(TObject *Sender);
        void __fastcall sEdit1KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit2KeyPress(TObject *Sender, char &Key);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TForm19(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm19 *Form19;
//---------------------------------------------------------------------------
#endif
