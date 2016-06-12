//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit16.h"
#include "Unit24.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sEdit"
#pragma link "sLabel"
#pragma resource "*.dfm"
TForm24 *Form24;
//---------------------------------------------------------------------------
__fastcall TForm24::TForm24(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm24::sButton1Click(TObject *Sender)
{
String qstr;
if(StrToInt(sEdit1->Text)>65535){
       Application->MessageBoxA("��ֵ���ܴ���65535!!","ע��",MB_OK);
       sEdit1->Text="";
       }

qstr="update other set chulimaini='";
    qstr+=sEdit1->Text;
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //������д��
    tcon1->adoquery->Close();
    
    Application->MessageBoxA("���óɹ�!!","��ʾ",MB_OK);

}
//---------------------------------------------------------------------------

void __fastcall TForm24::sEdit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //ֻ������0-9�����ֺͻس���
        Key=0;        
}
//---------------------------------------------------------------------------
void __fastcall TForm24::sEdit1Change(TObject *Sender)
{
if(StrToInt(sEdit1->Text)>65535){
       Application->MessageBoxA("��ֵ���ܴ���65535!!","ע��",MB_OK);
       sEdit1->Text="";
       }        
}
//---------------------------------------------------------------------------
void __fastcall TForm24::FormShow(TObject *Sender)
{
String chulimaini,ins;
ins="select chulimaini from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   chulimaini=tcon1->adoquery->FieldByName("chulimaini")->AsString.Trim();
   }
   sEdit1->Text= chulimaini;
}
//---------------------------------------------------------------------------