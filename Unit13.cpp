//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit13.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "CGAUGES"
#pragma resource "*.dfm"
TFrmBar *FrmBar;
//---------------------------------------------------------------------------
__fastcall TFrmBar::TFrmBar(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TFrmBar::FormClose(TObject *Sender, TCloseAction &Action)
{
//Form1->PageControl1->Enabled=true;
//FrmBaroff="00";
}
//---------------------------------------------------------------------------
void __fastcall TFrmBar::FormKeyPress(TObject *Sender, char &Key)
{
  if(Key==27)Close();
}
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
void __fastcall TFrmBar::PBarOpen(int nn)
{
  CGauge1->MaxValue=nn;
  CGauge1->Progress=0;
  CGauge1->Visible=True;
//  Form1->PageControl1->Enabled=false;
//  FrmBaroff="ff";
  Show();
//  ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TFrmBar::PBarGo(void)
{
  CGauge1->Progress=CGauge1->Progress+1;
}
//---------------------------------------------------------------------------
void __fastcall TFrmBar::PBarClose(void)
{
  CGauge1->Visible=False;
//  Form1->PageControl1->Enabled=true;
//  Form1->PageControl1->Enabled=true;
//  FrmBaroff="00";
  Close();
}
//---------------------------------------------------------------------------