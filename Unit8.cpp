//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit8.h"
#include "Unit16.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sComboBox"
#pragma link "sEdit"
#pragma link "sCheckBox"
#pragma link "sGroupBox"
#pragma resource "*.dfm"
TForm8 *Form8;
//---------------------------------------------------------------------------
__fastcall TForm8::TForm8(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
////----------------------------------------
void floorpoc(void)
{
String ins,floorname,floorno,no,nos;
int n;
///////////////////////////////////////////////////电梯处理
Form8->StringGrid1->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
Form8->StringGrid1->ColCount=16;
Form8->StringGrid1->Cells[0][0]="编号";
Form8->StringGrid1->Cells[1][0]="电梯层数名称";
Form8->StringGrid1->Cells[2][0]="实际位置";
Form8->StringGrid1->Cells[3][0]="";
Form8->StringGrid1->Cells[4][0]="";
Form8->StringGrid1->Cells[5][0]="";



  Form8->StringGrid1->RowCount=2;
  Form8->StringGrid1->Rows[1]->Clear();
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
 floorno=tcon->adoquery->FieldByName("floorno")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{

     n=Form8->StringGrid1->RowCount;
     Form8->StringGrid1->RowCount=n+1;
     Form8->StringGrid1->Cells[0][n-1]=no;
     Form8->StringGrid1->Cells[1][n-1]=floorname;
     Form8->StringGrid1->Cells[2][n-1]=floorno;

     Form8->StringGrid1->Rows[n]->Clear();
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
 floorno=tcon->adoquery->FieldByName("floorno")->AsString.Trim();
}
while(nos!=no);
//}
}
////////////////////--------------------------------------------------------------------------
Form8->StringGrid1->OnSelectCell=Form8->StringGrid1SelectCell;

}
///---------------------------------------------
void __fastcall TForm8::sButton7Click(TObject *Sender)
{
String kk,no;  //常关
sButton8->Enabled=false; //修改关
sButton9->Enabled=false; //删除关

kk="select *from floor where [No]>=all(select max([NO]) from floor)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
no=tcon->adoquery->FieldByName("No")->AsString.Trim();
if(no=="")
no=1;
else
no=IntToStr(StrToInt(no)+1);
sEdit1->Text=no;
sButton10->Enabled=true; //保存开
sEdit1->ReadOnly=false; //编号写开
sComboBox1->Text =sComboBox1->Items->Strings[0];
//conchangeyn=1;        
}
//---------------------------------------------------------------------------

void __fastcall TForm8::sButton8Click(TObject *Sender)
{
   String qstr,floorname,floorno,note,keydelay,subbcountyn,nos,sp;
   int n,j;
if(sEdit1->Text!="")
{
          floorname=sEdit2->Text.Trim();
          floorno=sComboBox1->Text.Trim();
      //    note=Memo1->Text;
      //    keydelay=ComboBox9->Text;
     //     if(keydelay=="")
    //         keydelay="02";

     //     if(CheckBox12->Checked==true)
     //     subbcountyn="是";
     //     else
    //      subbcountyn="否";

//    tcon->elevatorinfoado->Active =false;
    qstr="update floor set [floorname] = '";
    qstr+=floorname;
    qstr+="',[floorno] = '";
    qstr+=floorno;
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

    n=StringGrid1->RowCount;
    sp=sEdit1->Text;
for( j=0;j<n;j=j+1)
{
  nos=StringGrid1->Cells[0][j];
  if(sp==nos){
     StringGrid1->Cells[1][j]=floorname;
     StringGrid1->Cells[2][j]=floorno;

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
void __fastcall TForm8::FormShow(TObject *Sender)
{
String ins,floorname,floorno,no,nos,floorlock;
int n;
///////////////////////////////////////////////////电梯处理
StringGrid1->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
StringGrid1->ColCount=16;
StringGrid1->Cells[0][0]="编号";
StringGrid1->Cells[1][0]="电梯层数名称";
StringGrid1->Cells[2][0]="实际位置";
StringGrid1->Cells[3][0]="";
StringGrid1->Cells[4][0]="";
StringGrid1->Cells[5][0]="";



  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
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
 floorno=tcon->adoquery->FieldByName("floorno")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{

     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=floorname;
     StringGrid1->Cells[2][n-1]=floorno;

     StringGrid1->Rows[n]->Clear();
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
 floorno=tcon->adoquery->FieldByName("floorno")->AsString.Trim();
}
while(nos!=no);
//}
}
////////////////////--------------------------------------------------------------------------
StringGrid1->OnSelectCell=StringGrid1SelectCell;
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

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   floorlock=tcon1->adoquery->FieldByName("floorlock")->AsString.Trim();
   }
   if(floorlock=="true")
   sCheckBox28->Checked=true;
   else
   sCheckBox28->Checked=false;

}
//---------------------------------------------------------------------------
void __fastcall TForm8::StringGrid1SelectCell(TObject *Sender, int ACol,
      int ARow, bool &CanSelect)
{
String ins,floorname,floorno,note,no;
String  keydelay,subbcountyn;
sButton8->Enabled=true; //修改开
sButton9->Enabled=true; //删除开
sButton10->Enabled=false; //保存关
sEdit1->ReadOnly=true; //编号写关
no="";
floorname="";
floorno="";
note="";

int id;
  id=ARow;
          CanSelect=true;
          no=StringGrid1->Cells[0][id];
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
 floorno=tcon->adoquery->FieldByName("floorno")->AsString.Trim();
 }
sEdit1->Text = no;
sEdit2->Text = floorname;
sComboBox1->Text = floorno;

}
//---------------------------------------------------------------------------
void __fastcall TForm8::sButton9Click(TObject *Sender)
{
if(MessageDlg("确认要删除记录吗？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String sp,ins,nos;
int n,j;
sp=sEdit1->Text;
if(sp=="")
  {
  Application->MessageBoxA("编号不能为空！!!","提示",MB_OK);
  return;
  }

ins="delete * from floor where [no]=";
ins+=sp;
//ins+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(ins);
tcon->adoquery->ExecSQL();


n=StringGrid1->RowCount;
for( j=0;j<n;j=j+1)
{
  nos=StringGrid1->Cells[0][j];
  if(sp==nos){
     StringGrid1->Rows[j]->Clear();
      break;
     }
}
    //    conchangeyn=1;
 floorpoc();
}
sButton8->Enabled=false; //修改关
sButton9->Enabled=false; //删除关        
}
//---------------------------------------------------------------------------
void __fastcall TForm8::sButton10Click(TObject *Sender)
{
String yhcx,no,qstr,DeptNo,deno,duno,inc,pd="1",floorname,floorno,ins,bname;
int e,f,saddr;
int noi,n;
sButton10->Enabled=false;



if(sEdit1->Text =="")
  {
  Application->MessageBoxA("编号不能为空！!!","提示",MB_OK);
  return;
  }else{}

if(sComboBox1->Text.Trim() =="")
  {
  Application->MessageBoxA("实际位置不能为空！!!","提示",MB_OK);
  return;
  }else{}




qstr="select * from floor where [no]=";
qstr+=sEdit1->Text.Trim();
//qstr+="'";
tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
if(tcon->adoquery->RecordCount!=0)
{
    Application->MessageBoxA("编号重复！!!","提示",MB_OK);
}
  else
  {





          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from floor");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("no")->AsString=sEdit1->Text.Trim();
          tcon->adoquery->FieldByName("floorname")->AsString=sEdit2->Text.Trim();
          tcon->adoquery->FieldByName("floorno")->AsString=sComboBox1->Text.Trim();

         tcon->adoquery->Post();
         tcon->adoquery->Close();

          no=sEdit1->Text.Trim();
          floorname=sEdit2->Text.Trim();
          floorno=sComboBox1->Text.Trim();



     StringGrid1->OnSelectCell=NULL;
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=floorname;
     StringGrid1->Cells[2][n-1]=floorno;
     StringGrid1->Rows[n]->Clear();

     StringGrid1->OnSelectCell=StringGrid1SelectCell;

      //   tcon->elevatorinfoado->Active=false;
      //   tcon->elevatorinfoado->Active=true;
       //  pp="";
         noi=StrToInt(sEdit1->Text.Trim());
         noi=noi++;
         sEdit1->Text=IntToStr(noi);
         n=sComboBox1->ItemIndex;
sComboBox1->Items->Delete(sComboBox1->ItemIndex);
         Form8->sComboBox1->ItemIndex=n;
     //    floorpoc();  
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
         Form8->sComboBox1->Items->Add(IntToStr(j));
         }
 }
 */

    //     MessageBox(0, "保存成功！!!","rrr",MB_OK);
        sButton8->Enabled=false; //修改关
        sButton9->Enabled=false; //删除关
        sButton10->Enabled=true; //保存关
        sEdit1->ReadOnly=true; //编号写关
  }
sButton10->Enabled=true;
//conchangeyn=1;           
}
//---------------------------------------------------------------------------

void __fastcall TForm8::sComboBox1KeyPress(TObject *Sender, char &Key)
{
    Key=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm8::sEdit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;                    
}
//---------------------------------------------------------------------------

void __fastcall TForm8::sComboBox1DropDown(TObject *Sender)
{
String ins;
Form8->sComboBox1->Items->Clear();
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
         Form8->sComboBox1->Items->Add(IntToStr(j));
         }
 }

 ins="select * from floor where floorno='";
   ins+="JBUS";
   ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount ==0)
                Form8->sComboBox1->Items->Add("JBUS");
}
//---------------------------------------------------------------------------

void __fastcall TForm8::FormClose(TObject *Sender, TCloseAction &Action)
{
String ins,floorname,floorno,no;
int n;
Form1->ListView2->Items->Clear();
//////*********************************************************************************************
   ins="select * from floor ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   while (!tcon->adoquery->Eof )
	 {
	 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
	 floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
         floorno=tcon->adoquery->FieldByName("floorno")->AsString.Trim();
     ////////////////////////////////////////////////////////////////////
	 Form1->ListView2->Items->Add();
         n=Form1->ListView2->Items->Count;
	// m=ListView1->Items->Count;
  //	if(StrToIntYN(no))
  //	  m=StrToInt(no);
  //	  else
  //	    break;
      	 Form1->ListView2->Items->Item[n-1]->Caption=floorname;
	 Form1->ListView2->Items->Item[n-1]->SubItems->Add(floorno);
	 Form1->ListView2->Items->Item[n-1]->SubItems->Add(floorno);
     ////////////////////////////////////////////////////////////////////
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;
if(sCheckBox28->Checked==true)
{
Form1->ListView2->Enabled=false;
}
else
{
Form1->ListView2->Enabled=true;
}
}
//---------------------------------------------------------------------------

void __fastcall TForm8::sButton1Click(TObject *Sender)
{
String qstr;
///////////////
if(sCheckBox28->Checked==true)
 {
qstr="update other set floorlock='true'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
  }
  else
  {
  qstr="update other set floorlock='false'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
  }
///////////////
 Application->MessageBoxA("保存成功","恭喜",MB_OK);
}
//---------------------------------------------------------------------------

