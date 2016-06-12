//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit22.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sEdit"
#pragma link "sLabel"
#pragma resource "*.dfm"
TForm22 *Form22;
extern "C" BOOL pascal writekztime(String Temp);
extern "C" BOOL pascal writekzcount(String Temp);
extern String reincidbianma(String Temp);
extern String userkzfig;
extern String userkztishi;
//---------------------------------------------------------------------------
__fastcall TForm22::TForm22(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm22::sButton3Click(TObject *Sender)
{
String Temp,ss;


String ins,fkqid,sector,userCID,qstr;
sButton3->Enabled=false; //

String syear,month,day,yy,mm,dd;
// ***********************************************************
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        syear="00"+String(GTL->wYear);
        month="00"+String(GTL->wMonth);
        day="00"+String(GTL->wDay);

        yy=syear.SubString(syear.Length()-1,2);
       mm=month.SubString(month.Length()-1,2);
       dd=day.SubString(day.Length()-1,2);

       yy=yy+mm+dd;



ss=sEdit1->Text.Trim();

Temp=reincidbianma(ss);

       if(Temp=="ff")
        {
        sButton3->Enabled=true; //
        Application->MessageBoxA("您输入的数据有错误!!","错误",MB_OK);
        userkzfig="ff";
        return;
        }

     if(StrToInt(Temp)<StrToInt(yy))
        {
        sButton3->Enabled=true; //
        Application->MessageBoxA("您输入的数据有错误!!","错误",MB_OK);
        userkzfig="ff";
        return;
        }
        else
        {
        userkzfig=Temp;
        }
/*
if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
if(writekztime(Temp))
 {
 Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
 userkzfig="00";
 }

}
*/
sButton3->Enabled=true; //
Close();
      
}
//---------------------------------------------------------------------------

void __fastcall TForm22::sButton2Click(TObject *Sender)
{
userkzfig="ff";
Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm22::FormShow(TObject *Sender)
{
Memo1->Lines->Clear();
Memo1->Lines->Add(userkztishi);        
}
//---------------------------------------------------------------------------

