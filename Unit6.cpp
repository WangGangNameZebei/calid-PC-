//---------------------------------------------------------------------------

#include <vcl.h>
#include <vcl\registry.hpp>
#include <Registry.hpp>
#include <stdio.h>
#include <windows.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit6.h"
#include "Unit16.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma resource "*.dfm"
TForm6 *Form6;
extern "C" BOOL pascal pwdpoc(String Temp);
extern "C" BOOL pascal openscom();
extern "C" BOOL pascal closecom();
extern "C" BOOL pascal write14data0s(String Temp);
//---------------------------------------------------------------------------
__fastcall TForm6::TForm6(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm6::sButton1Click(TObject *Sender)
{
String qstr,ins,conpwd,Temp;
sButton1->Enabled=false; //关
 if(!openscom())
 {
 sButton1->Enabled=true; //关
 return;
 }


   ins="select conpwd from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   conpwd=tcon1->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
if(sButton1->Caption=="确定")
{
   if(Edit2->Text==Edit1->Text)
   {
     if(Edit1->Text==conpwd)
     {
     Label24->Caption="请输入新密码：";
     Label25->Caption="请确认新密码：";
     sButton1->Caption="确认";
     sButton1->Enabled=true; //
     }
     else
      MessageBox(0, "密码错误!!","信息",MB_OK);
   }
   else
   MessageBox(0, "请重新确认密码！!!","信息",MB_OK);
}
else
if(sButton1->Caption=="确认")
{
 if(Edit2->Text==Edit1->Text)
  {
    if(Edit1->Text.Length()!=6)  {
    Application->MessageBoxA("请输入6位数字密码!!","信息",MB_OK);
    sButton1->Enabled=true; //
    return;
    }

 Temp="6D696661726507"+conpwd+Edit1->Text+"655360";
  if (write14data0s(Temp))
  {
/////////////////////---------------------------------------------------
    qstr="update other set conpwd='";
    qstr+=Edit1->Text;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
  //  Edit20->Enabled=false;
  //  Edit21->Enabled=false;
  //  Button19->Caption="重新设置";
  }
  else
   Application->MessageBoxA("保存失败！!!","信息",MB_OK);
  }
  else
   Application->MessageBoxA("请重新确认密码！!!","信息",MB_OK);

closecom();
Form6->Close();
}


closecom();
sButton1->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm6::Edit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;          
}
//---------------------------------------------------------------------------
void __fastcall TForm6::Edit2KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;          
}
//---------------------------------------------------------------------------

