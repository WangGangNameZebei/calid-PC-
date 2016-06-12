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
sButton1->Enabled=false; //��
 if(!openscom())
 {
 sButton1->Enabled=true; //��
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
if(sButton1->Caption=="ȷ��")
{
   if(Edit2->Text==Edit1->Text)
   {
     if(Edit1->Text==conpwd)
     {
     Label24->Caption="�����������룺";
     Label25->Caption="��ȷ�������룺";
     sButton1->Caption="ȷ��";
     sButton1->Enabled=true; //
     }
     else
      MessageBox(0, "�������!!","��Ϣ",MB_OK);
   }
   else
   MessageBox(0, "������ȷ�����룡!!","��Ϣ",MB_OK);
}
else
if(sButton1->Caption=="ȷ��")
{
 if(Edit2->Text==Edit1->Text)
  {
    if(Edit1->Text.Length()!=6)  {
    Application->MessageBoxA("������6λ��������!!","��Ϣ",MB_OK);
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
    tcon1->adoquery->ExecSQL();       //������д��
    tcon1->adoquery->Close();
    Application->MessageBoxA("���ͳɹ���!!","��ϲ",MB_OK);
  //  Edit20->Enabled=false;
  //  Edit21->Enabled=false;
  //  Button19->Caption="��������";
  }
  else
   Application->MessageBoxA("����ʧ�ܣ�!!","��Ϣ",MB_OK);
  }
  else
   Application->MessageBoxA("������ȷ�����룡!!","��Ϣ",MB_OK);

closecom();
Form6->Close();
}


closecom();
sButton1->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm6::Edit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //ֻ������0-9�����ֺͻس���
    Key=0;          
}
//---------------------------------------------------------------------------
void __fastcall TForm6::Edit2KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //ֻ������0-9�����ֺͻس���
    Key=0;          
}
//---------------------------------------------------------------------------
