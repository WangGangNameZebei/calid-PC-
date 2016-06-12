//---------------------------------------------------------------------------

#include <vcl.h>
#include "SysUtils.hpp"
#include <stdlib.h>
#include <math.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit15.h"
#include "Unit16.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sEdit"
#pragma link "sLabel"
#pragma link "sButton"
#pragma link "sCheckBox"
#pragma resource "*.dfm"
TForm15 *Form15;
String money_t;
String addlastcntyn;
//---------------------------------------------------------------------------
__fastcall TForm15::TForm15(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm15::FormShow(TObject *Sender)
{
String pa,floorname,ins,money,nok,addlastcntyn,floorlock,nofloormoney;
Double money_d=0;
nok=Form1->sEdit1->Text;
if(nok!="")
{
 ins="select * from userinfo where [no]=";
 ins+=nok;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {
         addlastcntyn=tcon->adoquery->FieldByName("addlastcntyn")->AsString.Trim();
         }
         if(addlastcntyn=="1")
         {
          sCheckBox1->Checked=true;
         }
         else
         {
         sCheckBox1->Checked=false;
         }
}
///////////////////////////////////////////////////////////////////
   for(int j=0;j<Form1->ListView2->Items->Count;j++)
	   {
		 if(Form1->ListView2->Items->Item[j]->Checked==true)
		   {
			pa=Form1->ListView2->Items->Item[j]->SubItems->Strings[1];
                        if(pa=="JBUS"){
                           ins="select * from floor ORDER BY floorno='";
                           ins+=pa;
                           ins+="'";
                           }
                        else {
                           ins="select * from floor ORDER BY [no]=";
                           ins+=pa;
                           }
                           tcon->adoquery->Close();
                           tcon->adoquery->SQL->Clear();
                           tcon->adoquery->SQL->Add(ins);
                           tcon->adoquery->Open();
                           if(!tcon->adoquery->Eof )
	                       {
                                    floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
	                            money=tcon->adoquery->FieldByName("money")->AsString.Trim();
                                    if(money!=""&&money!="0")
                                      money_t=FloatToStr(money.ToDouble());
                               }
                     }
            }
///////////////////////////////////////////////////////////////////

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   floorlock=tcon1->adoquery->FieldByName("floorlock")->AsString.Trim();
   nofloormoney=tcon1->adoquery->FieldByName("nofloormoney")->AsString.Trim();
   }
   if(floorlock=="true") {
   floorname="��";
   money_t=nofloormoney;
   }

if(money_t==""||money_t=="0")
{
money_t=nofloormoney;
}

if(floorname=="")
{
floorname="��";
}


StaticText1->Caption=floorname+" "+money_t+"Ԫ";
}
//---------------------------------------------------------------------------
void __fastcall TForm15::sEdit2Change(TObject *Sender)
{
String money_ss,yue,ya,yb;

money_ss=sEdit2->Text;
if(money_ss=="")
   money_ss="1";

if(money_t!=""&&money_t!="0")
{
   sEdit1->Text=IntToStr((unsigned int )((money_ss.ToDouble()/money_t.ToDouble())));

   yue=IntToStr((unsigned int )((money_ss.ToDouble()*10)-((money_t.ToDouble()*10) * ((unsigned int ) ((money_ss.ToDouble()*10)/(money_t.ToDouble()*10))))));

   ya=yue.SubString(1,yue.Length()-1);
   if(ya=="")
       ya="0";
   yb=yue.SubString(yue.Length(),1);
   StaticText2->Caption=ya+"."+yb+" Ԫ";

}

  if(sEdit2->Text!="")
   {
    if(StrToInt(sEdit2->Text)>65535)
       {
       Application->MessageBoxA("���ܴ���65535!!","ע��",MB_OK);
       sEdit2->Text="65535";
       }
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm15::sButton1Click(TObject *Sender)
{
String qstr,usecount;
Form1->sEdit11->Text=sEdit1->Text;
if(sCheckBox1->Checked==true)
          addlastcntyn=1;
   else
          addlastcntyn=0;
String sHex = IntToHex(StrToInt64(sEdit1->Text),8);
       usecount = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);

tcon->UserSetado->Active =false;
    qstr="update userinfo set [usecount]='";
    qstr+=usecount;

    qstr+="',[nowmoney]='";
    qstr+=sEdit2->Text;

    if(sCheckBox1->Checked==true)
      qstr+="',[addlastcntyn]='1";
   else
      qstr+="',[addlastcntyn]='0";

    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(Form1->sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //������д��
    tcon->adoquery->Close();
Form1->StaticText4->Caption="��ǰ�����";   
Form15->Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm15::sEdit2KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //ֻ������0-9�����ֺͻس���
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm15::sButton2Click(TObject *Sender)
{
Form15->Close();        
}
//---------------------------------------------------------------------------

