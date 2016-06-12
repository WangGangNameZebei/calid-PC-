//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit17.h"
#include "Unit18.h"
#include "Unit19.h"
#include "Unit11.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sComboBox"
#pragma link "sEdit"
#pragma resource "*.dfm"
TForm18 *Form18;
extern int passwordyn;
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal StrToHexYN(String aa)
{
String a;
for (int i=1;i<=aa.Length();i++)
{a=aa.SubString(i,1).Trim();
if(a!="0")
 if(a!="1")
   if(a!="2")
      if(a!="3")
        if(a!="4")
          if(a!="5")
            if(a!="6")
              if(a!="7")
                if(a!="8")
                  if(a!="9")
                    if(a!="A")
                      if(a!="B")
                        if(a!="C")
                          if(a!="D")
                            if(a!="E")
                              if(a!="F")
                    if(a!="a")
                      if(a!="b")
                        if(a!="c")
                          if(a!="d")
                            if(a!="e")
                              if(a!="f")
                                 {
				  return FALSE;
                                 }


}
return TRUE;
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal StrToIntYN(String aa)
{
String a;
for (int i=1;i<=aa.Length();i++)
{a=aa.SubString(i,1).Trim();
if(a!="0")
 if(a!="1")
   if(a!="2")
      if(a!="3")
        if(a!="4")
          if(a!="5")
            if(a!="6")
              if(a!="7")
                if(a!="8")
                  if(a!="9")
                    if(a!="A")
                      if(a!="B")
                        if(a!="C")
                          if(a!="D")
                            if(a!="E")
                              if(a!="F")
                  {
				  return FALSE;
                  }


}
return TRUE;
}
////////////////////////////////////////////////////////////////////////////////
//---------------------------------------------------------------------------
__fastcall TForm18::TForm18(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm18::sComboBox16Change(TObject *Sender)
{
sEdit42->Text="";
if(sComboBox16->Text=="全部")
   sEdit42->Enabled=false;
else
   sEdit42->Enabled=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm18::sComboBox16KeyPress(TObject *Sender, char &Key)
{
Key=0;        
}
//---------------------------------------------------------------------------
void __fastcall TForm18::sEdit42KeyPress(TObject *Sender, char &Key)
{
if(sComboBox16->Text=="编号")
   if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
        Key=0;        
}
//---------------------------------------------------------------------------
void __fastcall TForm18::sButton34Click(TObject *Sender)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,usersno,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney,temp;
int n,dlong,bf,imonth,iday;



////--------------------------------------------------------------------------------------------------
//姓名 单元（部门） 电话 备注 发卡次数 当前卡号 限制时间 注册日期 发卡日期
//有效日期 限制次数 当前冲次数 当前卡次数 上回卡次数 当前冲金额 挂失码 处理码

Form18->StringGrid3->ColCount=18;
Form18->StringGrid3->Cells[0][0]="编号";
Form18->StringGrid3->Cells[1][0]="姓名";
Form18->StringGrid3->Cells[2][0]="单元/部门";
Form18->StringGrid3->Cells[3][0]="联系方式";
Form18->StringGrid3->Cells[4][0]="备注";
Form18->StringGrid3->Cells[5][0]="发卡次数";
Form18->StringGrid3->Cells[6][0]="当前卡号";
Form18->StringGrid3->Cells[7][0]="限制时间";
Form18->StringGrid3->Cells[8][0]="注册日期";
Form18->StringGrid3->Cells[9][0]="发卡日期";

Form18->StringGrid3->Cells[10][0]="有效日期";
Form18->StringGrid3->Cells[11][0]="限制次数";
Form18->StringGrid3->Cells[12][0]="当前冲次数";
Form18->StringGrid3->Cells[13][0]="当前卡次数";
Form18->StringGrid3->Cells[14][0]="上回卡次数";
Form18->StringGrid3->Cells[15][0]="当前冲金额";
Form18->StringGrid3->Cells[16][0]="挂失码";
Form18->StringGrid3->Cells[17][0]="处理码";


  StringGrid3->RowCount=18;
  StringGrid3->Rows[1]->Clear();
  StringGrid3->Rows[2]->Clear();
  StringGrid3->Rows[3]->Clear();
  StringGrid3->Rows[4]->Clear();
  StringGrid3->Rows[5]->Clear();
  StringGrid3->Rows[6]->Clear();
  StringGrid3->Rows[7]->Clear();
  StringGrid3->Rows[8]->Clear();
  StringGrid3->Rows[9]->Clear();
  StringGrid3->Rows[10]->Clear();
  StringGrid3->Rows[11]->Clear();
  StringGrid3->Rows[12]->Clear();
  StringGrid3->Rows[13]->Clear();
  StringGrid3->Rows[14]->Clear();
  StringGrid3->Rows[15]->Clear();
  StringGrid3->Rows[16]->Clear();
  StringGrid3->Rows[17]->Clear();
  StringGrid3->Rows[18]->Clear();
  StringGrid3->Rows[19]->Clear();
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找
if(sComboBox16->Text=="全部")
   ins="select * from userinfotxt ";
else if(sComboBox16->Text=="编号") {
   ins="select * from userinfotxt where [usersno]='";
   if(sEdit42->Text.Trim()=="") return;
    if(StrToIntYN(sEdit42->Text.Trim())){
       ins+=sEdit42->Text.Trim();
       ins+="'";
       }
    else
      return;
   }
   else if(sComboBox16->Text=="姓名") {
   ins="select * from userinfotxt where [name] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="单元（部门）") {
   ins="select * from userinfotxt where [Address] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="联系方式") {
   ins="select * from userinfotxt where [MobilePhone] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="备注") {
   ins="select * from userinfotxt where [note] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="注册日期") {
   ins="select * from userinfotxt where [RegisterDate] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="发卡日期") {
   ins="select * from userinfotxt where [fkdate] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="有效日期") {
   ins="select * from userinfotxt where [endtime] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="限制时间") {
   ins="select * from userinfotxt where [yxqyn1] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="限制次数") {
   ins="select * from userinfotxt where [usecountyn] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="挂失码") {
   ins="select * from userinfotxt where [UserCID] like '";
   temp="0000"+sEdit42->Text.Trim();
   temp=temp.SubString(temp.Length()-3,4 );
   ins+=temp;
   ins+="%'";
   }
   ins+=" ORDER BY [no]";
   tcon2->adoquery->Close();
   tcon2->adoquery->SQL->Clear();
   tcon2->adoquery->SQL->Add(ins);
   tcon2->adoquery->Open();
         if(tcon2->adoquery->RecordCount!=0)
         {
 no=tcon2->adoquery->FieldByName("no")->AsString.Trim();
 usersno=tcon2->adoquery->FieldByName("usersno")->AsString.Trim();
 name=tcon2->adoquery->FieldByName("name")->AsString.Trim();
 Address=tcon2->adoquery->FieldByName("Address")->AsString.Trim();
 MobilePhone=tcon2->adoquery->FieldByName("MobilePhone")->AsString.Trim();
 RegisterDate=tcon2->adoquery->FieldByName("RegisterDate")->AsString.Trim();
 endtime=tcon2->adoquery->FieldByName("EndTime")->AsString.Trim();
 note=tcon2->adoquery->FieldByName("note")->AsString.Trim();
 UserCID=tcon2->adoquery->FieldByName("UserCID")->AsString.Trim();
 usecountyn=tcon2->adoquery->FieldByName("usecountyn")->AsString.Trim();
  useyxqyn=tcon2->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecount=tcon2->adoquery->FieldByName("usecount")->AsString.Trim();
 fakacount=tcon2->adoquery->FieldByName("fakacount")->AsString.Trim();

ucardid=tcon2->adoquery->FieldByName("ucardid")->AsString.Trim();
yxqyn1=tcon2->adoquery->FieldByName("yxqyn1")->AsString.Trim();
fkdate=tcon2->adoquery->FieldByName("fkdate")->AsString.Trim();
nowcrdcnt=tcon2->adoquery->FieldByName("nowcrdcnt")->AsString.Trim();
lastcrdcnt=tcon2->adoquery->FieldByName("lastcrdcnt")->AsString.Trim();
nowmoney=tcon2->adoquery->FieldByName("nowmoney")->AsString.Trim();

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

     n=Form18->StringGrid3->RowCount;
     Form18->StringGrid3->RowCount=n+1;
     Form18->StringGrid3->Cells[0][n-17]=usersno;
     Form18->StringGrid3->Cells[1][n-17]=name;
     Form18->StringGrid3->Cells[2][n-17]=Address;
     Form18->StringGrid3->Cells[3][n-17]=MobilePhone;
     Form18->StringGrid3->Cells[4][n-17]=note;
     Form18->StringGrid3->Cells[5][n-17]=fakacount;
     Form18->StringGrid3->Cells[6][n-17]=ucardid;
     Form18->StringGrid3->Cells[7][n-17]=useyxqyn;//yxqyn1;  //限制时间
     Form18->StringGrid3->Cells[8][n-17]=RegisterDate;
     Form18->StringGrid3->Cells[9][n-17]=fkdate;  //发卡日期

     Form18->StringGrid3->Cells[10][n-17]=endtime;
     Form18->StringGrid3->Cells[11][n-17]=usecountyn;
     Form18->StringGrid3->Cells[12][n-17]=nowsendcnt;   // 当前冲次数
     Form18->StringGrid3->Cells[13][n-17]=nowcrdcnt; //当前卡次数
     Form18->StringGrid3->Cells[14][n-17]=lastcrdcnt; //上回卡次数
     Form18->StringGrid3->Cells[15][n-17]=nowmoney;  //当前冲金额
     Form18->StringGrid3->Cells[16][n-17]=UserCID;
     Form18->StringGrid3->Cells[17][n-17]=UserCID;

     StringGrid3->Rows[n]->Clear();
   nos=no;
 tcon2->adoquery->Next();
 no=tcon2->adoquery->FieldByName("no")->AsString.Trim();
 usersno=tcon2->adoquery->FieldByName("usersno")->AsString.Trim();
 name=tcon2->adoquery->FieldByName("name")->AsString.Trim();
 Address=tcon2->adoquery->FieldByName("Address")->AsString.Trim();
 MobilePhone=tcon2->adoquery->FieldByName("MobilePhone")->AsString.Trim();
 RegisterDate=tcon2->adoquery->FieldByName("RegisterDate")->AsString.Trim();
 endtime=tcon2->adoquery->FieldByName("EndTime")->AsString.Trim();
 note=tcon2->adoquery->FieldByName("note")->AsString.Trim();
 UserCID=tcon2->adoquery->FieldByName("UserCID")->AsString.Trim();
 usecountyn=tcon2->adoquery->FieldByName("usecountyn")->AsString.Trim();
  useyxqyn=tcon2->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecount=tcon2->adoquery->FieldByName("usecount")->AsString.Trim();
 fakacount=tcon2->adoquery->FieldByName("fakacount")->AsString.Trim();

ucardid=tcon2->adoquery->FieldByName("ucardid")->AsString.Trim();
yxqyn1=tcon2->adoquery->FieldByName("yxqyn1")->AsString.Trim();
fkdate=tcon2->adoquery->FieldByName("fkdate")->AsString.Trim();
nowcrdcnt=tcon2->adoquery->FieldByName("nowcrdcnt")->AsString.Trim();
lastcrdcnt=tcon2->adoquery->FieldByName("lastcrdcnt")->AsString.Trim();
nowmoney=tcon2->adoquery->FieldByName("nowmoney")->AsString.Trim();
}
while(nos!=no);
//}
}
////////////////////--------------------------------------------------------------------------

}
//---------------------------------------------------------------------------
void __fastcall TForm18::sButton1Click(TObject *Sender)
{
String as,as1,as2,as3,as4,as5,as6,as7,as8,as9,as10,ppd;
TStringList*   Strings   =   new   TStringList;

/////////////////////////////////////////////////////////////
//Button17->Enabled=false;
SaveDialog1->Filter="TXT files (*.csv)|*.csv";
    SaveDialog1->FileName="";
    if (SaveDialog1->Execute())
       {
          ppd=SaveDialog1->FileName;
          if(ppd=="")
          {
        //  Button4->Enabled=true;
          return;
          }
          ppd+=".csv";
       }
if(ppd=="")
{
//Button17->Enabled=true;
return;
}
///////////////////////////////////////////////////////////////

//  as=(as="编号,");
//  as1=(as1="姓名,");
//  as2=(as2="卡号,");
//  as3=(as3="门牌号,");
//  as4=(as4="备注,");
//  as5=(as5="群组,");
//  as6=(as6="有效期限,");
//  as7=(as7="有效期限,");
//  as8=(as8="进入时间,");
//  as9=(as9="出去时间,");
//  as10=(as10="应收金额,");
//  Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);

  as=(as=",");
  as1=(as1=",");
  as2=(as2=",");
  as3=(as3=",");
  as4=(as4=",");
  as5=(as5=",");
  as6=(as6=",");
  as7=(as7=",");
  as8=(as8=",");
  as9=(as9=",");
  as10=(as10=",");
  Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);
  as=(as=",");
  as1=(as1=",");
  as2=(as2=",");
  as3=(as3=",");
  as4=(as4=",");
  as5=(as5=",");
  as6=(as6=",");
  as7=(as7=",");
  as8=(as8=",");
  as9=(as9=",");
  as10=(as10=",");
  Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);


  as="";
  for(int n=0;n<StringGrid3->RowCount;n++)
          {
    for(int m=0;m<StringGrid3->ColCount ;m++)
          {
          as +=(StringGrid3->Cells[m][n]+",");
          }
          Strings->Add(as);
          as="";
         /*
           as =(StringGrid3->Cells[m][n]+",");
           if(StringGrid3->ColCount>1)
           as1=(StringGrid3->Cells[1][n]+",");
           if(StringGrid3->ColCount>2)
           as2=(StringGrid3->Cells[2][n]+",");
           if(StringGrid3->ColCount>3)
           as3=(StringGrid3->Cells[3][n]+",");
           if(StringGrid3->ColCount>4)
           as4=(StringGrid3->Cells[4][n]+",");
           if(StringGrid3->ColCount>5)
           as5=(StringGrid3->Cells[5][n]+",");
           if(StringGrid3->ColCount>6)
           as6=(StringGrid3->Cells[6][n]+", ");
           if(StringGrid3->ColCount>7)
           as7=(StringGrid3->Cells[7][n]+",");
           if(StringGrid3->ColCount>8)
           as8=(StringGrid3->Cells[8][n]+",");
           */
//           if(ListView5->Columns->Count>10)
//           as9=(Item->SubItems->Strings[8]+",");
//           if(ListView5->Columns->Count>11)
//           as10=(Item->SubItems->Strings[9]+",");
//          Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);
  }
  Strings->SaveToFile(ppd);     delete   Strings;
//Button17->Enabled=true;        
}
//---------------------------------------------------------------------------
void __fastcall TForm18::Excel1Click(TObject *Sender)
{
String as,as1,as2,as3,as4,as5,as6,as7,as8,as9,as10,ppd;
TStringList*   Strings   =   new   TStringList;

/////////////////////////////////////////////////////////////
//Button17->Enabled=false;
SaveDialog1->Filter="TXT files (*.csv)|*.csv";
    SaveDialog1->FileName="";
    if (SaveDialog1->Execute())
       {
          ppd=SaveDialog1->FileName;
          if(ppd=="")
          {
        //  Button4->Enabled=true;
          return;
          }
          ppd+=".csv";
       }
if(ppd=="")
{
//Button17->Enabled=true;
return;
}
///////////////////////////////////////////////////////////////

//  as=(as="编号,");
//  as1=(as1="姓名,");
//  as2=(as2="卡号,");
//  as3=(as3="门牌号,");
//  as4=(as4="备注,");
//  as5=(as5="群组,");
//  as6=(as6="有效期限,");
//  as7=(as7="有效期限,");
//  as8=(as8="进入时间,");
//  as9=(as9="出去时间,");
//  as10=(as10="应收金额,");
//  Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);

  as=(as=",");
  as1=(as1=",");
  as2=(as2=",");
  as3=(as3=",");
  as4=(as4=",");
  as5=(as5=",");
  as6=(as6=",");
  as7=(as7=",");
  as8=(as8=",");
  as9=(as9=",");
  as10=(as10=",");
  Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);
  as=(as=",");
  as1=(as1=",");
  as2=(as2=",");
  as3=(as3=",");
  as4=(as4=",");
  as5=(as5=",");
  as6=(as6=",");
  as7=(as7=",");
  as8=(as8=",");
  as9=(as9=",");
  as10=(as10=",");
  Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);


  as="";
  for(int n=0;n<StringGrid3->RowCount;n++)
          {
    for(int m=0;m<StringGrid3->ColCount ;m++)
          {
          as +=(StringGrid3->Cells[m][n]+",");
          }
          Strings->Add(as);
          as="";
         /*
           as =(StringGrid3->Cells[m][n]+",");
           if(StringGrid3->ColCount>1)
           as1=(StringGrid3->Cells[1][n]+",");
           if(StringGrid3->ColCount>2)
           as2=(StringGrid3->Cells[2][n]+",");
           if(StringGrid3->ColCount>3)
           as3=(StringGrid3->Cells[3][n]+",");
           if(StringGrid3->ColCount>4)
           as4=(StringGrid3->Cells[4][n]+",");
           if(StringGrid3->ColCount>5)
           as5=(StringGrid3->Cells[5][n]+",");
           if(StringGrid3->ColCount>6)
           as6=(StringGrid3->Cells[6][n]+", ");
           if(StringGrid3->ColCount>7)
           as7=(StringGrid3->Cells[7][n]+",");
           if(StringGrid3->ColCount>8)
           as8=(StringGrid3->Cells[8][n]+",");
           */
//           if(ListView5->Columns->Count>10)
//           as9=(Item->SubItems->Strings[8]+",");
//           if(ListView5->Columns->Count>11)
//           as10=(Item->SubItems->Strings[9]+",");
//          Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);
  }
  Strings->SaveToFile(ppd);     delete   Strings;
//Button17->Enabled=true;               
}
//---------------------------------------------------------------------------

void __fastcall TForm18::N13Click(TObject *Sender)
{
 String ins;
 try
         {
         Form11=new TForm11(Application);
         Form11->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form11;
           Application->ShowException(&exception);
           }

 if(passwordyn==0){
        return;
  }
  else{
  if(MessageDlg("是否将数据全部删除？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
        {
     ins="delete * from userinfotxt";
     tcon2->adoquery->SQL->Clear();
     tcon2->adoquery->SQL->Add(ins);
     tcon2->adoquery->ExecSQL();
     Form18->StringGrid3->RowCount=2;
     Form18->StringGrid3->Rows[1]->Clear();
        }
}


}
//---------------------------------------------------------------------------

