//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit14.h"
#include "Unit16.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sComboBox"
#pragma link "sEdit"
#pragma link "sGroupBox"
#pragma link "sLabel"
#pragma resource "*.dfm"
TForm14 *Form14;
//---------------------------------------------------------------------------
__fastcall TForm14::TForm14(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------


void __fastcall TForm14::sButton8Click(TObject *Sender)
{
   String qstr,money,note,keydelay,subbcountyn,nos,sp;
   int n,j;
if(sEdit1->Text!="")
{
          money=sEdit2->Text.Trim();
        //  floorno=sComboBox1->Text.Trim();
      //    note=Memo1->Text;
      //    keydelay=ComboBox9->Text;
     //     if(keydelay=="")
    //         keydelay="02";

     //     if(CheckBox12->Checked==true)
     //     subbcountyn="是";
     //     else
    //      subbcountyn="否";

//    tcon->elevatorinfoado->Active =false;
    qstr="update floor set [money] = '";
    qstr+=money;
 //   qstr+="',[money] = '";
//    qstr+=money;
     /*
    qstr+="',[lim1] = '";
    qstr+=ComboBox9->Text;
    qstr+="',[lim2] = '";
    qstr+=ComboBox10->Text;
    qstr+="',[lim3] = '";
    qstr+=ComboBox11->Text;
    qstr+="',[lim4] = '";
    qstr+=ComboBox12->Text;
    qstr+="',[lim5] = '";
    qstr+=ComboBox13->Text;
 */
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
//    tcon->elevatorinfoado->Active =true;

    n=StringGrid2->RowCount;
    sp=sEdit1->Text;
for( j=0;j<n;j=j+1)
{
  nos=StringGrid2->Cells[0][j];
  if(sp==nos){
 //    StringGrid1->Cells[1][j]=floorname;
     StringGrid2->Cells[2][j]=money;

      break;
     }
}
 //    n=sComboBox1->ItemIndex;
 //    sComboBox1->Items->Delete(sComboBox1->ItemIndex);
  //   Form8->sComboBox1->ItemIndex=n;
     Application->MessageBoxA("修改成功","恭喜",MB_OK);
//    conchangeyn=1;
    }
}
//---------------------------------------------------------------------------
void __fastcall TForm14::FormShow(TObject *Sender)
{
String ins,floorname,money,no,nos,nofloormoney;
int n;
///////////////////////////////////////////////////电梯处理
StringGrid2->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
StringGrid2->ColCount=16;
StringGrid2->Cells[0][0]="编号";
StringGrid2->Cells[1][0]="电梯层数名称";
StringGrid2->Cells[2][0]="所扣钱数";
StringGrid2->Cells[3][0]="";
StringGrid2->Cells[4][0]="";
StringGrid2->Cells[5][0]="";



  StringGrid2->RowCount=2;
  StringGrid2->Rows[1]->Clear();
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找


   ins="select * from floor ";
   ins+=" ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
 money=tcon->adoquery->FieldByName("money")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{

     n=StringGrid2->RowCount;
     StringGrid2->RowCount=n+1;
     StringGrid2->Cells[0][n-1]=no;
     StringGrid2->Cells[1][n-1]=floorname;
     StringGrid2->Cells[2][n-1]=money;

     StringGrid2->Rows[n]->Clear();
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
 money=tcon->adoquery->FieldByName("money")->AsString.Trim();
}
while(nos!=no);
//}
}
////////////////////--------------------------------------------------------------------------
StringGrid2->OnSelectCell=StringGrid2SelectCell;

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   nofloormoney=tcon1->adoquery->FieldByName("nofloormoney")->AsString.Trim();
   }
   sEdit3->Text=nofloormoney;
/*
for(int j=1;j<=64;j=j+1)
 {

   ins="select * from floor where floorno='";
   ins+=IntToStr(j);
   ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount ==0)
         {
         sComboBox1->Items->Add(IntToStr(j));
         }
 }
 sComboBox1->ItemIndex=0;
 */
}
//---------------------------------------------------------------------------
void __fastcall TForm14::StringGrid2SelectCell(TObject *Sender, int ACol,
      int ARow, bool &CanSelect)
{
String ins,floorname,money,note,no;
String  keydelay,subbcountyn;
sButton8->Enabled=true; //修改开
sButton9->Enabled=true; //删除开
sButton10->Enabled=false; //保存关
sEdit1->ReadOnly=true; //编号写关
no="";
floorname="";
money="";
note="";

int id;
  id=ARow;
          CanSelect=true;
          no=StringGrid2->Cells[0][id];
          if(no=="")
             return;
          sEdit1->Text=no;
   ins="select * from floor where [no]=";
   ins+=StrToInt(sEdit1->Text);
 //  ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

  no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
 money=tcon->adoquery->FieldByName("money")->AsString.Trim();
 }
sEdit1->Text = no;
sEdit2->Text = money;

}
//---------------------------------------------------------------------------
void __fastcall TForm14::sButton1Click(TObject *Sender)
{
String qstr;
qstr="update other set nofloormoney='";
    qstr+=sEdit3->Text;
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
Application->MessageBoxA("保存成功","恭喜",MB_OK);
}
//---------------------------------------------------------------------------

