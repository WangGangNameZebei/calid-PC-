//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit7.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma resource "*.dfm"
TForm7 *Form7;
extern String usersearchno;
extern "C" BOOL pascal StrToHexYN(String aa);
//---------------------------------------------------------------------------
__fastcall TForm7::TForm7(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm7::sButton1Click(TObject *Sender)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney,temp;
int n,dlong,bf,imonth,iday;

//Form1->Caption=Versionnumber;
Form1->Label10->Caption = "系统时间：                     ";
Form1->Timer1->Enabled=true;
Form1->StaticText5->Caption ="-";
Form1->sEdit1->Text = "";
Form1->sEdit2->Text = "";
Form1->sComboBox1->Text = "";
Form1->StaticText1->Caption="";
Form1->sEdit9->Text = "";
Form1->sEdit11->Text = "0";
Form1->Label59->Caption="0000";
Form1->Edit41->Text = "";
Form1->sButton2->Enabled = false;
Form1->sButton3->Enabled = false;
// ***********************************************************
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        month=String(GTL->wMonth);
        imonth=StrToInt(month);
        day=String(GTL->wDay);
        iday=StrToInt(day);
        if(imonth==2&&iday==29)  {
        day=IntToStr(StrToInt(day)-1);
        }
        syear=String(GTL->wYear);
        syear=IntToStr(StrToInt(syear)+1);
        sdate=syear+'-'+String(GTL->wMonth)+'-'+day;
try
     {
        Form1->DateTimePicker1->Date=sdate;

     }
catch(...)
{
       try
       {
        sdate=syear+'/'+String(GTL->wMonth)+'/'+day;
        Form1->DateTimePicker1->Date=sdate;

        }
        catch(...)
        {
        sdate=syear+'.'+String(GTL->wMonth)+'.'+day;
        Form1->DateTimePicker1->Date=sdate;

        }
}
/*
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        month=String(GTL->wMonth);
        imonth=StrToInt(month);
        day=String(GTL->wDay);
        iday=StrToInt(day);
        if(imonth==2&&iday==29)  {
        day=IntToStr(StrToInt(day)-1);
        }
        syear=String(GTL->wYear);
        syear=IntToStr(StrToInt(syear)+1);

if(win7=="0")
     {
     //   sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        Form1->DateTimePicker1->Date=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
     }
if(win7=="1")
{
        Form1->DateTimePicker1->Date=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
}
if(win7=="2")
{
        Form1->DateTimePicker1->Date=String(GTL->wYear)+'.'+String(GTL->wMonth)+'.'+String(GTL->wDay);
}
  */
//**********************************************8
for(int j=0;j<Form1->ListView2->Items->Count;j++)
        Form1->ListView2->Items->Item[j]->Checked=false;
for(int j=0;j<Form1->ListView1->Items->Count;j++)
        Form1->ListView1->Items->Item[j]->Checked=false;

Form1->StringGrid3->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
//姓名 单元（部门） 电话 备注 发卡次数 当前卡号 限制时间 注册日期 发卡日期
//有效日期 限制次数 当前冲次数 当前卡次数 上回卡次数 当前冲金额 挂失码 处理码

Form1->StringGrid3->ColCount=18;
Form1->StringGrid3->Cells[0][0]="编号";
Form1->StringGrid3->Cells[1][0]="姓名";
Form1->StringGrid3->Cells[2][0]="单元/部门";
Form1->StringGrid3->Cells[3][0]="联系方式";
Form1->StringGrid3->Cells[4][0]="备注";
Form1->StringGrid3->Cells[5][0]="发卡次数";
Form1->StringGrid3->Cells[6][0]="当前卡号";
Form1->StringGrid3->Cells[7][0]="限制时间";
Form1->StringGrid3->Cells[8][0]="注册日期";
Form1->StringGrid3->Cells[9][0]="发卡日期";

Form1->StringGrid3->Cells[10][0]="有效日期";
Form1->StringGrid3->Cells[11][0]="限制次数";
Form1->StringGrid3->Cells[12][0]="当前冲次数";
Form1->StringGrid3->Cells[13][0]="当前卡次数";
Form1->StringGrid3->Cells[14][0]="上回卡次数";
Form1->StringGrid3->Cells[15][0]="当前冲金额";
Form1->StringGrid3->Cells[16][0]="挂失码";
Form1->StringGrid3->Cells[17][0]="处理码";


  Form1->StringGrid3->RowCount=18;
  Form1->StringGrid3->Rows[1]->Clear();
  Form1->StringGrid3->Rows[2]->Clear();
  Form1->StringGrid3->Rows[3]->Clear();
  Form1->StringGrid3->Rows[4]->Clear();
  Form1->StringGrid3->Rows[5]->Clear();
  Form1->StringGrid3->Rows[6]->Clear();
  Form1->StringGrid3->Rows[7]->Clear();
  Form1->StringGrid3->Rows[8]->Clear();
  Form1->StringGrid3->Rows[9]->Clear();
  Form1->StringGrid3->Rows[10]->Clear();
  Form1->StringGrid3->Rows[11]->Clear();
  Form1->StringGrid3->Rows[12]->Clear();
  Form1->StringGrid3->Rows[13]->Clear();
  Form1->StringGrid3->Rows[14]->Clear();
  Form1->StringGrid3->Rows[15]->Clear();
  Form1->StringGrid3->Rows[16]->Clear();
  Form1->StringGrid3->Rows[17]->Clear();
  Form1->StringGrid3->Rows[18]->Clear();
  Form1->StringGrid3->Rows[19]->Clear();
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找

   ins="select * from userinfo where [no]=";

   ins+=usersearchno;


   ins+=" ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 name=tcon->adoquery->FieldByName("name")->AsString.Trim();
// idcard=tcon->adoquery->FieldByName("idcard")->AsString.Trim();
 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
// Telephone=tcon->adoquery->FieldByName("Telephone")->AsString.Trim();
 MobilePhone=tcon->adoquery->FieldByName("MobilePhone")->AsString.Trim();
// Email=tcon->adoquery->FieldByName("Email")->AsString.Trim();
// sex=tcon->adoquery->FieldByName("sex")->AsString.Trim();
// Birthday=tcon->adoquery->FieldByName("Birthday")->AsString.Trim();
 RegisterDate=tcon->adoquery->FieldByName("RegisterDate")->AsString.Trim();
 endtime=tcon->adoquery->FieldByName("EndTime")->AsString.Trim();
// Dept=tcon->adoquery->FieldByName("Dept")->AsString.Trim();
// duties=tcon->adoquery->FieldByName("duties")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
// cardaddr=tcon->adoquery->FieldByName("cardaddr")->AsString.Trim();
 UserCID=tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
 usecountyn=tcon->adoquery->FieldByName("usecountyn")->AsString.Trim();
 useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim();
 fakacount=tcon->adoquery->FieldByName("fakacount")->AsString.Trim();

ucardid=tcon->adoquery->FieldByName("ucardid")->AsString.Trim();
yxqyn1=tcon->adoquery->FieldByName("yxqyn1")->AsString.Trim();
fkdate=tcon->adoquery->FieldByName("fkdate")->AsString.Trim();
nowcrdcnt=tcon->adoquery->FieldByName("nowcrdcnt")->AsString.Trim();
lastcrdcnt=tcon->adoquery->FieldByName("lastcrdcnt")->AsString.Trim();
nowmoney=tcon->adoquery->FieldByName("nowmoney")->AsString.Trim();

//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
       if(usecountyn=="1")
           usecountyn="是";
       else
           usecountyn="否";

       if(useyxqyn=="1")
           useyxqyn="是";
       else
           useyxqyn="否";

       a1=usecount.SubString(1,2);
       a2=usecount.SubString(3,2);
       a3=usecount.SubString(5,2);
       a4=usecount.SubString(7,2);
       a5=a4+a3+a2+a1;
       if(StrToHexYN(a5))
         bf=("0x"+("00"+a5))^00;
       else
         bf=0;
       nowsendcnt=IntToStr(bf);

     n=Form1->StringGrid3->RowCount;
     Form1->StringGrid3->RowCount=n+1;
     Form1->StringGrid3->Cells[0][n-17]=no;
     Form1->StringGrid3->Cells[1][n-17]=name;
     Form1->StringGrid3->Cells[2][n-17]=Address;
     Form1->StringGrid3->Cells[3][n-17]=MobilePhone;
     Form1->StringGrid3->Cells[4][n-17]=note;
     Form1->StringGrid3->Cells[5][n-17]=fakacount;
     Form1->StringGrid3->Cells[6][n-17]=ucardid;
     Form1->StringGrid3->Cells[7][n-17]=useyxqyn;//yxqyn1;  //限制时间
     Form1->StringGrid3->Cells[8][n-17]=RegisterDate;
     Form1->StringGrid3->Cells[9][n-17]=fkdate;  //发卡日期

     Form1->StringGrid3->Cells[10][n-17]=endtime;
     Form1->StringGrid3->Cells[11][n-17]=usecountyn;
     Form1->StringGrid3->Cells[12][n-17]=nowsendcnt;   // 当前冲次数
     Form1->StringGrid3->Cells[13][n-17]=nowcrdcnt; //当前卡次数
     Form1->StringGrid3->Cells[14][n-17]=lastcrdcnt; //上回卡次数
     Form1->StringGrid3->Cells[15][n-17]=nowmoney;  //当前冲金额
     Form1->StringGrid3->Cells[16][n-17]=UserCID;
     Form1->StringGrid3->Cells[17][n-17]=UserCID;

     Form1->StringGrid3->Rows[n]->Clear();
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 name=tcon->adoquery->FieldByName("name")->AsString.Trim();
// idcard=tcon->adoquery->FieldByName("idcard")->AsString.Trim();
 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
// Telephone=tcon->adoquery->FieldByName("Telephone")->AsString.Trim();
 MobilePhone=tcon->adoquery->FieldByName("MobilePhone")->AsString.Trim();
// Email=tcon->adoquery->FieldByName("Email")->AsString.Trim();
// sex=tcon->adoquery->FieldByName("sex")->AsString.Trim();
// Birthday=tcon->adoquery->FieldByName("Birthday")->AsString.Trim();
 RegisterDate=tcon->adoquery->FieldByName("RegisterDate")->AsString.Trim();
 endtime=tcon->adoquery->FieldByName("EndTime")->AsString.Trim();
// Dept=tcon->adoquery->FieldByName("Dept")->AsString.Trim();
// duties=tcon->adoquery->FieldByName("duties")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
// cardaddr=tcon->adoquery->FieldByName("cardaddr")->AsString.Trim();
 UserCID=tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
 usecountyn=tcon->adoquery->FieldByName("usecountyn")->AsString.Trim();
 useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim();
 fakacount=tcon->adoquery->FieldByName("fakacount")->AsString.Trim();

ucardid=tcon->adoquery->FieldByName("ucardid")->AsString.Trim();
yxqyn1=tcon->adoquery->FieldByName("yxqyn1")->AsString.Trim();
fkdate=tcon->adoquery->FieldByName("fkdate")->AsString.Trim();
nowcrdcnt=tcon->adoquery->FieldByName("nowcrdcnt")->AsString.Trim();
lastcrdcnt=tcon->adoquery->FieldByName("lastcrdcnt")->AsString.Trim();
nowmoney=tcon->adoquery->FieldByName("nowmoney")->AsString.Trim();
}
while(nos!=no);
//}
}
////////////////////--------------------------------------------------------------------------
Form1->StringGrid3->OnSelectCell=Form1->StringGrid3SelectCell;
Form7->sButton1->Visible=false;
Close();  
}
//---------------------------------------------------------------------------
