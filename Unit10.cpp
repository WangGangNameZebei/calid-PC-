//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit10.h"
#include "Unit2.h"
#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sLabel"
#pragma link "sEdit"
#pragma link "sCheckBox"
#pragma resource "*.dfm"
TForm10 *Form10;

extern String timepoc(String atime);
extern String useyouxiaoqi;
extern int countselect;


//---------------------------------------------------------------------------
__fastcall TForm10::TForm10(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm10::sButton1Click(TObject *Sender)
{
useyouxiaoqi=sEdit1->Text;
if(useyouxiaoqi=="")
    useyouxiaoqi="0";

if(sCheckBox1->Checked==true)
      countselect=1;
   else
      countselect=0;
Form10->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm10::FormShow(TObject *Sender)
{
useyouxiaoqi="ff";        
}
//---------------------------------------------------------------------------

void __fastcall TForm10::sEdit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;
        
}
//---------------------------------------------------------------------------

