//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit7.h"
#include "Unit13.h"
#include "Unit17.h"
#include "Unit18.h"
#include "Unit19.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sEdit"
#pragma link "sLabel"
#pragma link "sGroupBox"
#pragma link "sRadioButton"
#pragma link "CGAUGES"
#pragma resource "*.dfm"
TForm19 *Form19;
extern "C" BOOL pascal opencom(String coms);
extern String outser(String addr,String outdata,String comnos);
extern "C" BOOL pascal StrToHexYN(String aa);
extern "C" BOOL pascal closecomss(String coms);
extern String timepoc(String atime);
extern "C" BOOL pascal Strnumberyn(String aa);
extern String win7;

String readCOMS;
int jiluduqu=1,txtcount=0;
//---------------------------------------------------------------------------
__fastcall TForm19::TForm19(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm19::sButton62Click(TObject *Sender)
{
String COM,sp,addr,outdata;
String yy,mm,dd,hh,mm1,ss,scom,stcount,ww;

FrmBar->Caption="正在处理中.....................";
        FrmBar->PBarOpen(32);
for (int i=1;i<=32;i=i+1){
      FrmBar->PBarGo();
   //   scom=IntToHex(StrToInt(i),2);
      scom=IntToStr(i);
      COM="COM"+scom;  //sEdit18->Text.Trim();
      
       if(opencom(COM))
       {
       addr="01";
       outdata="03B1c601";
       sp=outser(addr,outdata,COM);
       if(sp!="ff"){
       yy=sp.SubString(11,2);
       mm=sp.SubString(13,2);
       dd=sp.SubString(15,2);
       ww=sp.SubString(17,2);
       hh=sp.SubString(19,2);
       mm1=sp.SubString(21,2);
       ss=sp.SubString(23,2);
    //   stcount=sp.SubString(25,4);   //这个是4位，只用后三位有用
       stcount=sp.SubString(26,3);
       txtcount=("0x"+("00"+stcount))^00;
       sEdit2->Text=IntToStr(txtcount);
       StaticText2->Caption ="连接时控制器时间为："+yy+"-"+mm+"-"+dd+"  "+hh+":"+mm1+":"+ss+" 周"+ww;
       readCOMS=COM;
       closecomss(COM);
       FrmBar->PBarClose();
       Application->MessageBoxA("连接成功!!","恭喜",MB_OK);
       Form19->Caption = "打开串口成功";
       sButton61->Enabled=true;
       sButton1->Enabled=true;
       sButton2->Enabled=true;
       sButton3->Enabled=true;
      // closecomss(COM);
       return;
        }
       closecomss(COM);
       }

    }
  //  closecomss(COM);
        FrmBar->PBarClose();
       Application->MessageBoxA("连接失败!!","警告",MB_OK);
}
//---------------------------------------------------------------------------
// 获取StringGrid中指定列字符串最长的宽度
int CrnGetMaxLenOfStringGridCol(TStringGrid *sg, int nCol)
{
    int nWidth(0), n,m;
    String strText;
 //   for (int i = sg->FixedRows; i < sg->RowCount; i++)
    for (int i = sg->FixedCols; i < sg->ColCount; i++)
    {
        m=sg->ColWidths[i];
        strText = sg->Cells[i][nCol];
        n = sg->Canvas->TextWidth(strText);
        if (n > m)
        {
        nWidth = n;
        sg->ColWidths[i]=nWidth + 4;
        }
    }
    return nWidth + 4; // 这个值可以自己调整
}
//-----------------------------------------------------------------------------------
String displaytxt(String ccnt,String uccid,String usersktime)
 {
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,usersno,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney;
int n,dlong,bf,imonth,iday;



////--------------------------------------------------------------------------------------------------
//姓名 单元（部门） 电话 备注 发卡次数 当前卡号 限制时间 注册日期 发卡日期
//有效日期 限制次数 当前冲次数 当前卡次数 上回卡次数 当前冲金额 内部编号 处理码
/*
Form19->StringGrid3->ColCount=18;
Form19->StringGrid3->Cells[0][0]="编号";
Form19->StringGrid3->Cells[1][0]="姓名";
Form19->StringGrid3->Cells[2][0]="单元/部门";
Form19->StringGrid3->Cells[3][0]="联系方式";
Form19->StringGrid3->Cells[4][0]="备注";
Form19->StringGrid3->Cells[5][0]="发卡次数";
Form19->StringGrid3->Cells[6][0]="当前卡号";
Form19->StringGrid3->Cells[7][0]="用户刷卡时间";
Form19->StringGrid3->Cells[8][0]="限制时间";
Form19->StringGrid3->Cells[9][0]="注册日期";
Form19->StringGrid3->Cells[10][0]="发卡日期";

Form19->StringGrid3->Cells[11][0]="有效日期";
Form19->StringGrid3->Cells[12][0]="限制次数";
Form19->StringGrid3->Cells[13][0]="当前冲次数";
Form19->StringGrid3->Cells[14][0]="当前卡次数";
Form19->StringGrid3->Cells[15][0]="上回卡次数";
Form19->StringGrid3->Cells[16][0]="当前冲金额";
Form19->StringGrid3->Cells[17][0]="内部编号";
Form19->StringGrid3->Cells[18][0]="处理码";
*/
/*
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
  */
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from userinfotxt where [ucardid]='";
       ins+=uccid;
       ins+="'";

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

       n=Form19->StringGrid3->RowCount;
   //  n=lineno;
   //  Form19->StringGrid3->RowCount=n;
     Form19->StringGrid3->Cells[0][n-1]=usersno;
     Form19->StringGrid3->Cells[1][n-1]=name;
     Form19->StringGrid3->Cells[2][n-1]=Address;
     Form19->StringGrid3->Cells[3][n-1]=MobilePhone;
     Form19->StringGrid3->Cells[4][n-1]=note;
     Form19->StringGrid3->Cells[5][n-1]=fakacount;
     Form19->StringGrid3->Cells[6][n-1]=ucardid;
     Form19->StringGrid3->Cells[7][n-1]=usersktime;
     Form19->StringGrid3->Cells[8][n-1]=ccnt;
     Form19->StringGrid3->Cells[9][n-1]=useyxqyn;//yxqyn1;  //限制时间
     Form19->StringGrid3->Cells[10][n-1]=RegisterDate;
     Form19->StringGrid3->Cells[11][n-1]=fkdate;  //发卡日期

     Form19->StringGrid3->Cells[12][n-1]=endtime;
     Form19->StringGrid3->Cells[13][n-1]=usecountyn;
     Form19->StringGrid3->Cells[14][n-1]=nowsendcnt;   // 当前冲次数
     Form19->StringGrid3->Cells[15][n-1]=nowcrdcnt; //当前卡次数
     Form19->StringGrid3->Cells[16][n-1]=lastcrdcnt; //上回卡次数
     Form19->StringGrid3->Cells[17][n-1]=nowmoney;  //当前冲金额
     Form19->StringGrid3->Cells[18][n-1]=UserCID;
     Form19->StringGrid3->Cells[19][n-1]=UserCID;

//     Form19->StringGrid3->ColWidths[1]=100;
     Form19->StringGrid3->RowCount=n+1;
     Form19->StringGrid3->Rows[n+1]->Clear();

   }
   else
   {
//   n=lineno;
     n=Form19->StringGrid3->RowCount;
  //   Form19->StringGrid3->RowCount=n;
     Form19->StringGrid3->Cells[6][n-1]=uccid;
     Form19->StringGrid3->Cells[7][n-1]=usersktime;
     Form19->StringGrid3->Cells[8][n-1]=ccnt;

     Form19->StringGrid3->RowCount=n+1;
     Form19->StringGrid3->Rows[n+1]->Clear();
   }
   
CrnGetMaxLenOfStringGridCol(Form19->StringGrid3, n-1);

}
////////////////////--------------------------------------------------------------------------
int timecompare(String yy1,String mm1,String dd1,String yy,String mm,String dd) //返回0 为没到，1为时间已过
{
if(StrToInt(yy1)<StrToInt(yy))   //返回0 为没到，1为时间已过
        {
        return 1;
        }
        else
          if(StrToInt(yy1)==StrToInt(yy))
          {
           if(StrToInt(mm1)<StrToInt(mm))
             {
             return 1;
             }
             else
             if(StrToInt(mm1)==StrToInt(mm))
             {
               if(StrToInt(dd1)<=StrToInt(dd))
               {
               return 1;
               }
               else
               {
               return 0;
               }
             }
             else
             return 0;
          }
          else
          return  0;
}
int readcontimecompare(int currentaddr,String starttime,String stoptime)
{
  String ctaddr,usersktime,yy,mm,dd,yy1,mm1,dd1,yy2,mm2,dd2,addr,outdata,sp;

       yy1=starttime.SubString(3,2);
       mm1=starttime.SubString(6,2);
       dd1=starttime.SubString(9,2);

       yy2=stoptime.SubString(3,2);
       mm2=stoptime.SubString(6,2);
       dd2=stoptime.SubString(9,2);

  ctaddr=IntToHex(currentaddr,4);
  ctaddr=ctaddr.SubString(ctaddr.Length()-3,4);
  addr="01";
  outdata="08B1c501"+ctaddr;
  sp=outser(addr,outdata,readCOMS);
  usersktime=sp.SubString(21,12);

     if(!Strnumberyn(usersktime))
       {
       return 3;
       }
       yy=usersktime.SubString(1,2);
       mm=usersktime.SubString(3,2);
       dd=usersktime.SubString(5,2);   //返回0 为没到，1为两时间之间，2为时间已过，3为时间出错；

       if(timecompare(yy1,mm1,dd1,yy,mm,dd)==1) //返回0 为没到，1为时间已过
       {
         if(timecompare(yy2,mm2,dd2,yy,mm,dd)==1)
          {
          return 2;
          }
          else
          return 1;
       }
       return 0;


}

void __fastcall TForm19::sButton61Click(TObject *Sender)
{
String addr,comnos,outdata,t,waddr,sp,uccid,usersktime,ccnt,ccnt1;
String yy,mm,dd,hh,mm1,ss,starttime,stoptime,syy1,smm1,sdd1;
int i,jlcnt,castr,txtloop,txtloopbat,txtloopbat1,jlstartcnt,barcnt,bcnt;
sButton61->Enabled=false;
Form19->StringGrid3->ColCount=18;
Form19->StringGrid3->Cells[0][0]="编号";
Form19->StringGrid3->Cells[1][0]="姓名";
Form19->StringGrid3->Cells[2][0]="单元/部门";
Form19->StringGrid3->Cells[3][0]="联系方式";
Form19->StringGrid3->Cells[4][0]="备注";
Form19->StringGrid3->Cells[5][0]="发卡次数";
Form19->StringGrid3->Cells[6][0]="当前卡号";
Form19->StringGrid3->Cells[7][0]="用户刷卡时间";
Form19->StringGrid3->Cells[8][0]="用户刷卡次数";
Form19->StringGrid3->Cells[9][0]="限制时间";
Form19->StringGrid3->Cells[10][0]="注册日期";
Form19->StringGrid3->Cells[11][0]="发卡日期";

Form19->StringGrid3->Cells[12][0]="有效日期";
Form19->StringGrid3->Cells[13][0]="限制次数";
Form19->StringGrid3->Cells[14][0]="当前冲次数";
Form19->StringGrid3->Cells[15][0]="当前卡次数";
Form19->StringGrid3->Cells[16][0]="上回卡次数";
Form19->StringGrid3->Cells[17][0]="当前冲金额";
Form19->StringGrid3->Cells[18][0]="内部编号";
Form19->StringGrid3->Cells[19][0]="处理码";
Form19->StringGrid3->RowCount=2;
Form19->StringGrid3->Rows[1]->Clear();



if(!opencom(readCOMS))
  {
  sButton61->Enabled=true;
  return;
  }
addr="01";
//////////////////////////////////////////
//1B 01 05 B2 62 01 00 01 D4 1B  取消
//1B 01 18 B2 c5 01 00 04 80 81 82 03 04 05 06 07 08 09 0a 0b 0c 0d 0e 0f 6f 1B
i=0;//StrToInt(Edit10->Text.Trim());
  if(sRadioButton1->Checked==true)
   {
jlstartcnt=StrToInt(sEdit1->Text.Trim());
jlcnt=StrToInt(sEdit2->Text.Trim());
if(jlstartcnt>=jlcnt)
   {
   closecomss(readCOMS);
   Application->MessageBoxA("起始条数不可以大于或等于终止条数!!","警告",MB_OK);
   sButton61->Enabled=true;
   return;
   }
barcnt=jlcnt- jlstartcnt;
  CGauge1->MaxValue=barcnt;
  CGauge1->Progress=0;
  CGauge1->Visible=True;
//FrmBar->PBarOpen(barcnt);


for(;i<=4096;i++){
  if(jlcnt<=jlstartcnt)
     break;
  waddr=IntToHex(jlstartcnt,4);
  waddr=waddr.SubString(waddr.Length()-3,4);
  jlstartcnt=jlstartcnt+1;
  outdata="08B1c501"+waddr;
  sp=outser(addr,outdata,readCOMS);
  uccid=sp.SubString(13,8);
  usersktime=sp.SubString(21,12);
       ccnt=sp.SubString(33,2);
       ccnt1=sp.SubString(35,2);
       ccnt=ccnt1+ccnt;
       if(StrToHexYN(ccnt))
         bcnt=("0x"+("00"+ccnt))^00;
       else
         bcnt=0;
       ccnt=IntToStr(bcnt);

        yy=usersktime.SubString(1,2);
       mm=usersktime.SubString(3,2);
       dd=usersktime.SubString(5,2);
       hh=usersktime.SubString(7,2);
       mm1=usersktime.SubString(9,2);
       ss=usersktime.SubString(11,2);
       usersktime = yy+"-"+mm+"-"+dd+"  "+hh+":"+mm1+":"+ss;


  displaytxt(ccnt,uccid,usersktime);
//  Form7->Memo1->Lines->Add(sp);
//  FrmBar->PBarGo();
  CGauge1->Progress=CGauge1->Progress+1;
  if(jiluduqu==0)
     break;
       }
jiluduqu=1;
//closecomss(readCOMS);
//FrmBar->PBarClose();
CGauge1->Visible=False;
/*
 try
         {
         Form7=new TForm7(Application);
         Form7->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form7;
           Application->ShowException(&exception);
           }
           */

   }
  else{
  CGauge1->MaxValue=100;
  CGauge1->Progress=0;
  CGauge1->Visible=True;

  starttime=DateTimePicker1->Date.DateString();
  starttime=timepoc(starttime);
  stoptime=DateTimePicker2->Date.DateString();
  stoptime=timepoc(stoptime);
       syy1=stoptime.SubString(3,2);
       smm1=stoptime.SubString(6,2);
       sdd1=stoptime.SubString(9,2);

  castr=readcontimecompare(txtcount-1,starttime,stoptime); //返回0 为没到，1为两时间之间，2为时间已过，3为时间出错；
  CGauge1->Progress=CGauge1->Progress+1;
   if(castr==0)
      ;
      else
       if((castr==1)||(castr==2))
         {
          castr=readcontimecompare(0,starttime,stoptime); //返回0 为没到，1为两时间之间，2为时间已过，3为时间出错；
          CGauge1->Progress=CGauge1->Progress+1;
          if(castr==0)
            {
             txtloop=txtcount;
             txtloop=txtloop/2;
             txtloopbat=txtloop;
             txtloopbat1=txtcount;
             while(1)
              {
               castr=readcontimecompare(txtloop,starttime,stoptime);
               CGauge1->Progress=CGauge1->Progress+1;
               if(castr==0)
                 {
                 txtloop=txtloop+(txtloopbat1-txtloop)/2;
                 if(txtloopbat==txtloop)
                    break;
                 txtloopbat=txtloop;
                 }
               else
                 {
                 txtloopbat1=txtloop;
                 txtloop=txtloop/2;
                 if(txtloopbat==txtloop)
                    break;
                 txtloopbat=txtloop;
                 }
              }
            }
            else
            if((castr==1)||(castr==2))
            {
            castr=readcontimecompare(0,starttime,stoptime); //返回0 为没到，1为两时间之间，2为时间已过，3为时间出错；
            CGauge1->Progress=CGauge1->Progress+1;
          if(castr==0)
            {
             txtloop=4095;
             txtloopbat1=txtloop;
             txtloop=txtloop/2;
             txtloopbat=txtloop;

             while(1)
              {
               castr=readcontimecompare(txtloop,starttime,stoptime);
               CGauge1->Progress=CGauge1->Progress+1;
               if(castr==0)
                 {
                 txtloop=txtloop+(txtloopbat1-txtloop)/2;
                 if(txtloopbat==txtloop)
                    break;
                 txtloopbat=txtloop;
                 }
               else
                 {
                 txtloopbat1=txtloop;
                 txtloop=txtloop/2;
                 if(txtloopbat==txtloop)
                    break;
                 txtloopbat=txtloop;
                 }
              }
            }
            }
         }
  txtloop=txtloop+1;
  while(1)
  {
  waddr=IntToHex(txtloop,4);
  waddr=waddr.SubString(waddr.Length()-3,4);
  txtloop=txtloop+1;
  outdata="08B1c501"+waddr;
  sp=outser(addr,outdata,readCOMS);
  uccid=sp.SubString(13,8);
  usersktime=sp.SubString(21,12);
       ccnt=sp.SubString(33,2);
       ccnt1=sp.SubString(35,2);
       ccnt=ccnt1+ccnt;
       if(StrToHexYN(ccnt))
         bcnt=("0x"+("00"+ccnt))^00;
       else
         bcnt=0;
       ccnt=IntToStr(bcnt);
  if(!Strnumberyn(usersktime))
     {
     break;
     }

        yy=usersktime.SubString(1,2);
       mm=usersktime.SubString(3,2);
       dd=usersktime.SubString(5,2);
       hh=usersktime.SubString(7,2);
       mm1=usersktime.SubString(9,2);
       ss=usersktime.SubString(11,2);
       usersktime = yy+"-"+mm+"-"+dd+"  "+hh+":"+mm1+":"+ss;

      if(timecompare(syy1,smm1,sdd1,yy,mm,dd)==0) //返回0 为没到，1为时间已过
       {
       displaytxt(ccnt,uccid,usersktime);
       i++;
       }
       else
       break;
      
  }

  }


CGauge1->Visible=False;
closecomss(readCOMS);


Application->MessageBoxA("数据读取完成!!","恭喜",MB_OK);
sButton61->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm19::sButton1Click(TObject *Sender)
{
jiluduqu=0;
}
//---------------------------------------------------------------------------


void __fastcall TForm19::sButton2Click(TObject *Sender)
{

String hour,minute,second,yy,mm,dd,addr,sp,resp,outdata,week;
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);

        yy="0"+String(GTL->wYear);
        yy=yy.SubString(yy.Length()-1,2);
        mm="0"+String(GTL->wMonth);
        mm=mm.SubString(mm.Length()-1,2);
        dd="0"+String(GTL->wDay);
        dd=dd.SubString(dd.Length()-1,2);

        hour="0"+String(GTL->wHour);
        hour=hour.SubString(hour.Length()-1,2);
        minute="0"+String(GTL->wMinute);
        minute=minute.SubString(minute.Length()-1,2);
        second="0"+String(GTL->wSecond);
        second=second.SubString(second.Length()-1,2);
        week="0"+String(GTL->wDayOfWeek);
        week=week.SubString(week.Length()-1,2);
sButton2->Enabled=false;
if(!opencom(readCOMS))
  {
  sButton2->Enabled=true;
  return;
  }

  addr="01";
  outdata="0AB2c701"+yy+mm+dd+hour+minute+second+week;
  sp=outser(addr,outdata,readCOMS);
  if(sp!="ff")
  {
  resp=sp.SubString(11,2);
  Application->MessageBoxA("同步时间成功！!!","恭喜",MB_OK);
  }


closecomss(readCOMS);
sButton2->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm19::sButton3Click(TObject *Sender)
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
          }
  Strings->SaveToFile(ppd);     delete   Strings;
}
//---------------------------------------------------------------------------

void __fastcall TForm19::sEdit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm19::sEdit2KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm19::FormShow(TObject *Sender)
{
String syear,month;
int imonth;
// ***********************************************************
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        month=String(GTL->wMonth);
        imonth=StrToInt(month);
        if(imonth>3)
          {
          syear=String(GTL->wYear);
          imonth=imonth-3;
          month=IntToStr(imonth);
          }
        else
          {
          syear=String(GTL->wYear);
          syear=IntToStr(StrToInt(syear)-1);
          imonth=imonth+12-3;
          month=IntToStr(imonth);
          }
   //     day=String(GTL->wDay);
   //     iday=StrToInt(day);
   //     if(imonth==2&&iday==29)  {
   //     day=IntToStr(StrToInt(day)-1);
   //     }
   //     syear=String(GTL->wYear);
   //     syear=IntToStr(StrToInt(syear)+1);
   //     sdate=syear+'-'+String(GTL->wMonth)+'-'+day;

if(win7=="0")
     {
     //   sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        DateTimePicker2->Date=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
        DateTimePicker1->Date=syear+'-'+month+'-'+String(GTL->wDay);
     }
if(win7=="1")
{
        DateTimePicker2->Date=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        DateTimePicker1->Date=syear+'/'+month+'/'+String(GTL->wDay);
}
if(win7=="2")
{
        DateTimePicker2->Date=String(GTL->wYear)+'.'+String(GTL->wMonth)+'.'+String(GTL->wDay);
        DateTimePicker1->Date=syear+'.'+month+'.'+String(GTL->wDay);
}
//**********************************************8
}
//---------------------------------------------------------------------------

