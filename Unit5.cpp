//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit5.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma resource "*.dfm"
TForm5 *Form5;
//---------------------------------------------------------------------------
__fastcall TForm5::TForm5(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm5::sButton1Click(TObject *Sender)
{
String qstr;
int n;
String hour,minute,second, strdata,sydate,userno,username;
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        strdata=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
        hour="0"+String(GTL->wHour);
        hour=hour.SubString(hour.Length()-1,2);
        minute="0"+String(GTL->wMinute);
        minute=minute.SubString(minute.Length()-1,2);
        second="0"+String(GTL->wSecond);
        second=second.SubString(second.Length()-1,2);
        sydate=strdata+' '+hour+':'+minute+':'+second;

StringGrid1->OnSelectCell=NULL;
if(Edit1->Text =="")
  {
  MessageBox(0, "请确认用户编号!!","Comm Error",MB_OK);
  return;
  }
if(Edit2->Text =="")
  {
  MessageBox(0, "请确认用户姓名!!","Comm Error",MB_OK);
  return;
  }
if(Edit3->Text =="")
  {
  MessageBox(0, "请输入金额!!","Comm Error",MB_OK);
  return;
  }
  userno=Edit1->Text.Trim();
  username=Edit2->Text.Trim();
qstr="select * from userinfo where [no]=";
qstr+=Edit1->Text.Trim();
qstr+=" and [name]='";
qstr+=Edit2->Text.Trim();
qstr+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
if(tcon->adoquery->RecordCount!=0)
{
          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from usercash");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("userno")->AsString=Edit1->Text.Trim();
          tcon->adoquery->FieldByName("username")->AsString=Edit2->Text.Trim();
          tcon->adoquery->FieldByName("cash")->AsString=Edit3->Text.Trim();
          tcon->adoquery->FieldByName("gettime")->AsString=sydate;

         tcon->adoquery->Post();
         tcon->adoquery->Close();

n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=Edit3->Text.Trim();
     StringGrid1->Cells[4][n-1]=sydate;
     StringGrid1->Rows[n]->Clear();

qstr="select * from usercash where [username]='";
qstr+=username;
qstr+="' and [gettime]='";
qstr+=sydate;
qstr+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
if(tcon->adoquery->RecordCount!=0)
{
StringGrid1->Cells[0][n-1]=tcon->adoquery->FieldByName("no")->AsString.Trim();
}



     
MessageBox(0, "保存成功！!!","信息",MB_OK);
}
  else
  {
    MessageBox(0, "没有这个用户!!","Comm Error",MB_OK);
    return;
  }
  
StringGrid1->OnSelectCell=StringGrid1SelectCell;

}
//---------------------------------------------------------------------------

void __fastcall TForm5::FormShow(TObject *Sender)
{
String ins,no,nos,userno,username,cash,gettime;
int n,dlong;

StringGrid1->OnSelectCell=NULL;
Edit1->OnChange=NULL;

StringGrid1->ColCount=5;
StringGrid1->Cells[0][0]="总编号";
StringGrid1->Cells[1][0]="用户编号";
StringGrid1->Cells[2][0]="用户姓名";
StringGrid1->Cells[3][0]="已交钱数";
StringGrid1->Cells[4][0]="交款时间";



  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from usercash ";  // where [UserCID]!=NULL";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
  if((Form1->sEdit1->Text==userno)&&(Form1->sEdit2->Text==username))
  {
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=cash;
     StringGrid1->Cells[4][n-1]=gettime;

     StringGrid1->Rows[n]->Clear();
  }
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
}
while(nos!=no);
}
///Button1->Enabled=false;
sButton2->Enabled=false;
Edit1->Text=Form1->sEdit1->Text;
Edit2->Text=Form1->sEdit2->Text;
Edit1->OnChange=Edit1Change;
StringGrid1->OnSelectCell=StringGrid1SelectCell;
}
//---------------------------------------------------------------------------
void __fastcall TForm5::StringGrid1SelectCell(TObject *Sender, int ACol,
      int ARow, bool &CanSelect)
{
int id;
  id=ARow;
          CanSelect=true;
          if(StringGrid1->Cells[1][id]!="")
          {
      //    Edit1->OnChange=NULL;
     //     Edit1->Text="";
     //     Edit1->OnChange=Edit1Change;
          Edit1->Text=StringGrid1->Cells[1][id];
          Edit2->Text=StringGrid1->Cells[2][id];
          StaticText1->Caption=StringGrid1->Cells[4][id];
          StaticText2->Caption=StringGrid1->Cells[0][id];
          sButton1->Enabled=true;
          sButton2->Enabled=true;
          }

}
//---------------------------------------------------------------------------
void __fastcall TForm5::sButton2Click(TObject *Sender)
{
String qstr;
String ins,no,nos,userno,username,cash,gettime,userno1,username1;
int n,dlong;
StringGrid1->OnSelectCell=NULL;
if(Edit1->Text =="")
  {
  MessageBox(0, "请确认用户编号!!","Comm Error",MB_OK);
  return;
  }
if(Edit2->Text =="")
  {
  MessageBox(0, "请确认用户姓名!!","Comm Error",MB_OK);
  return;
  }
if(MessageDlg("确认要删除吗？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
  userno1=Edit1->Text.Trim();
  username1=Edit2->Text.Trim();
qstr="delete from usercash where [no]=";
qstr+=StaticText2->Caption;
//qstr+=" and [username]='";
//qstr+=Edit2->Text.Trim();
//qstr+="' and [gettime]='";
//qstr+=StaticText1->Caption;
//qstr+="'";
/*
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
    */
   tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
//////*****************************************************************************************************

StringGrid1->ColCount=5;
StringGrid1->Cells[0][0]="总编号";
StringGrid1->Cells[1][0]="用户编号";
StringGrid1->Cells[2][0]="用户姓名";
StringGrid1->Cells[3][0]="已交钱数";
StringGrid1->Cells[4][0]="交款时间";



  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from usercash ";  // where [UserCID]!=NULL";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
  if((userno1==userno)&&(username1==username))
  {
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=cash;
     StringGrid1->Cells[4][n-1]=gettime;

     StringGrid1->Rows[n]->Clear();
  }
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
}
while(nos!=no);
}
Edit1->Text=Form1->sEdit1->Text;
Edit2->Text=Form1->sEdit2->Text;
}
StringGrid1->OnSelectCell=StringGrid1SelectCell;
 //   tcon->adoquery->Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm5::Edit1Change(TObject *Sender)
{

String ins,no,nos,userno,username,cash,gettime;
int n,dlong;

StringGrid1->OnSelectCell=NULL;

StringGrid1->ColCount=5;
StringGrid1->Cells[0][0]="总编号";
StringGrid1->Cells[1][0]="用户编号";
StringGrid1->Cells[2][0]="用户姓名";
StringGrid1->Cells[3][0]="已交钱数";
StringGrid1->Cells[4][0]="交款时间";

userno=Edit1->Text.Trim();
if(userno =="")
  {
  StringGrid1->OnSelectCell=StringGrid1SelectCell;
  return;
  }

  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
///////////////////////////////////////////////////////////////////////按控制器查找
ins="select * from usercash where [userno] like '";
   ins+=userno;
   ins+="%'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
//   ins="select * from usercash ";  // where [UserCID]!=NULL";
 //  tcon->adoquery->Close();
 //  tcon->adoquery->SQL->Clear();
 //  tcon->adoquery->SQL->Add(ins);
 //  tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
//  if(Edit1->Text==userno)    ///&&(Edit2->Text==username))
//  {
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=cash;
     StringGrid1->Cells[4][n-1]=gettime;

     StringGrid1->Rows[n]->Clear();
//  }
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
}
while(nos!=no);
}
StringGrid1->OnSelectCell=StringGrid1SelectCell;
//Edit1->Text=Form1->Edit1->Text;
//Edit2->Text=Form1->Edit2->Text;

}
//---------------------------------------------------------------------------
void __fastcall TForm5::sButton3Click(TObject *Sender)
{
String as,as1,as2,as3,as4,as5,as6,as7,as8,as9,as10,as11,as12,as13,as14,as15,ppd;
int n;

TStringList*   Strings   =   new   TStringList;

/////////////////////////////////////////////////////////////
sButton3->Enabled=false;
SaveDialog1->Filter="TXT files (*.csv)|*.csv";
    SaveDialog1->FileName="";
    if (SaveDialog1->Execute())
       {
          ppd=SaveDialog1->FileName;
          if(ppd=="")
          {
          sButton3->Enabled=true;
          return;
          }
          ppd+=".csv";
       }
if(ppd=="")
{
sButton3->Enabled=true;
return;
}
///////////////////////////////////////////////////////////////
  for(int n=0;n<StringGrid1->RowCount-1;n++)
          {
   //       as=StringGrid1->Cells[0][n]+",";
          as1=StringGrid1->Cells[1][n]+",";
          as2=StringGrid1->Cells[2][n]+",";
          as3=StringGrid1->Cells[3][n]+",";
          as4=StringGrid1->Cells[4][n];
   //       as5=StringGrid1->Cells[5][n]+",";
   //       as6=StringGrid1->Cells[6][n]+",";
   //       as7=StringGrid1->Cells[7][n]+",";
   //       as8=StringGrid1->Cells[8][n]+",";
   //       as9=StringGrid1->Cells[9][n]+",";
   //       as10=StringGrid1->Cells[10][n]+",";
   //       as11=StringGrid1->Cells[11][n]+",";
   //       as12=StringGrid1->Cells[12][n]+",";
   //       as13=StringGrid1->Cells[13][n]+",";
   //       as14=StringGrid1->Cells[14][n]+",";
   //       as15=StringGrid1->Cells[15][n];
          Strings->Add(as1+as2+as3+as4);
          }
  Strings->SaveToFile(ppd);     delete   Strings;
sButton3->Enabled=true;
MessageBox(0, "导出成功!!","OK",MB_OK);        
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit4Change(TObject *Sender)
{
String ins,no,nos,userno,username,cash,gettime,finddata;
int n,dlong;

//StringGrid1->OnSelectCell=NULL;

StringGrid1->ColCount=5;
StringGrid1->Cells[0][0]="总编号";
StringGrid1->Cells[1][0]="用户编号";
StringGrid1->Cells[2][0]="用户姓名";
StringGrid1->Cells[3][0]="已交钱数";
StringGrid1->Cells[4][0]="交款时间";

//userno=Edit1->Text.Trim();
//if(userno =="")
//  {
//  StringGrid1->OnSelectCell=StringGrid1SelectCell;
//  return;
//  }
if(Edit4->Text!="")
{
   finddata=Edit4->Text.Trim();
   if(Edit5->Text!="")
   {
   finddata+="-"+Edit5->Text.Trim();
    if(Edit6->Text!="")
         finddata+="-"+Edit6->Text.Trim();
   }
}
else
  return;

  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from usercash where [gettime] like '";
   ins+=finddata;
   ins+="%'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {


 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
//  if(Edit1->Text==userno)    ///&&(Edit2->Text==username))
//  {
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=cash;
     StringGrid1->Cells[4][n-1]=gettime;

     StringGrid1->Rows[n]->Clear();
//  }
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
}
while(nos!=no);
}
//StringGrid1->OnSelectCell=StringGrid1SelectCell;
//Edit1->Text=Form1->Edit1->Text;
//Edit2->Text=Form1->Edit2->Text;               
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit5Change(TObject *Sender)
{
String ins,no,nos,userno,username,cash,gettime,finddata;
int n,dlong;

//StringGrid1->OnSelectCell=NULL;

StringGrid1->ColCount=5;
StringGrid1->Cells[0][0]="总编号";
StringGrid1->Cells[1][0]="用户编号";
StringGrid1->Cells[2][0]="用户姓名";
StringGrid1->Cells[3][0]="已交钱数";
StringGrid1->Cells[4][0]="交款时间";

//userno=Edit1->Text.Trim();
//if(userno =="")
//  {
//  StringGrid1->OnSelectCell=StringGrid1SelectCell;
//  return;
//  }
if(Edit4->Text!="")
{
   finddata=Edit4->Text.Trim();
   if(Edit5->Text!="")
   {
   finddata+="-"+Edit5->Text.Trim();
    if(Edit6->Text!="")
         finddata+="-"+Edit6->Text.Trim();
   }
}
else
  return;

  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from usercash where [gettime] like '";
   ins+=finddata;
   ins+="%'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {


 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
//  if(Edit1->Text==userno)    ///&&(Edit2->Text==username))
//  {
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=cash;
     StringGrid1->Cells[4][n-1]=gettime;

     StringGrid1->Rows[n]->Clear();
//  }
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
}
while(nos!=no);
}
//StringGrid1->OnSelectCell=StringGrid1SelectCell;
//Edit1->Text=Form1->Edit1->Text;
//Edit2->Text=Form1->Edit2->Text;               
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit6Change(TObject *Sender)
{
String ins,no,nos,userno,username,cash,gettime,finddata;
int n,dlong;

//StringGrid1->OnSelectCell=NULL;

StringGrid1->ColCount=5;
StringGrid1->Cells[0][0]="总编号";
StringGrid1->Cells[1][0]="用户编号";
StringGrid1->Cells[2][0]="用户姓名";
StringGrid1->Cells[3][0]="已交钱数";
StringGrid1->Cells[4][0]="交款时间";

//userno=Edit1->Text.Trim();
//if(userno =="")
//  {
//  StringGrid1->OnSelectCell=StringGrid1SelectCell;
//  return;
//  }
if(Edit4->Text!="")
{
   finddata=Edit4->Text.Trim();
   if(Edit5->Text!="")
   {
   finddata+="-"+Edit5->Text.Trim();
    if(Edit6->Text!="")
         finddata+="-"+Edit6->Text.Trim();
   }
}
else
  return;

  StringGrid1->RowCount=2;
  StringGrid1->Rows[1]->Clear();
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from usercash where [gettime] like '";
   ins+=finddata;
   ins+="%'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {


 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
//  if(Edit1->Text==userno)    ///&&(Edit2->Text==username))
//  {
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=userno;
     StringGrid1->Cells[2][n-1]=username;
     StringGrid1->Cells[3][n-1]=cash;
     StringGrid1->Cells[4][n-1]=gettime;

     StringGrid1->Rows[n]->Clear();
//  }
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 userno=tcon->adoquery->FieldByName("userno")->AsString.Trim();
 username=tcon->adoquery->FieldByName("username")->AsString.Trim();
 cash=tcon->adoquery->FieldByName("cash")->AsString.Trim();
 gettime=tcon->adoquery->FieldByName("gettime")->AsString.Trim();
}
while(nos!=no);
}
//StringGrid1->OnSelectCell=StringGrid1SelectCell;
//Edit1->Text=Form1->Edit1->Text;
//Edit2->Text=Form1->Edit2->Text;               
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8&&Key!='%')  //只能输入0-9的数字和回车键
    Key=0;              
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit2KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;              
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit3KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;              
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit4KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;              
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit5KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;              
}
//---------------------------------------------------------------------------

void __fastcall TForm5::Edit6KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;              
}
//---------------------------------------------------------------------------





