//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit20.h"
extern "C" BOOL pascal StrToHexYN(String aa);
extern "C" BOOL pascal write14data0s1s(String Blonr,String Blonr1);
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sEdit"
#pragma resource "*.dfm"
TForm20 *Form20;
extern  String inipwdpoc,conpwd;
extern  fun_USB_DevInit USB_DevInit;
extern  fun_USB_DevClose USB_DevClose;
extern  fun_USB_BeepExA USB_BeepExA;
extern  void jiamityn(void);    ////IC卡14扇区0块用户卡专用

//---------------------------------------------------------------------------
__fastcall TForm20::TForm20(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm20::FormShow(TObject *Sender)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney;
int n,dlong,bf,imonth,iday;


Form20->StringGrid3->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
//姓名 单元（部门） 电话 备注 发卡次数 当前卡号 限制时间 注册日期 发卡日期
//有效日期 限制次数 当前冲次数 当前卡次数 上回卡次数 当前冲金额 挂失码 处理码

Form20->StringGrid3->ColCount=18;
Form20->StringGrid3->Cells[0][0]="编号";
Form20->StringGrid3->Cells[1][0]="姓名";
Form20->StringGrid3->Cells[2][0]="单元/部门";
Form20->StringGrid3->Cells[3][0]="联系方式";
Form20->StringGrid3->Cells[4][0]="备注";
Form20->StringGrid3->Cells[5][0]="发卡次数";
Form20->StringGrid3->Cells[6][0]="当前卡号";
Form20->StringGrid3->Cells[7][0]="限制时间";
Form20->StringGrid3->Cells[8][0]="注册日期";
Form20->StringGrid3->Cells[9][0]="发卡日期";

Form20->StringGrid3->Cells[10][0]="有效日期";
Form20->StringGrid3->Cells[11][0]="限制次数";
Form20->StringGrid3->Cells[12][0]="当前冲次数";
Form20->StringGrid3->Cells[13][0]="当前卡次数";
Form20->StringGrid3->Cells[14][0]="上回卡次数";
Form20->StringGrid3->Cells[15][0]="当前冲金额";
Form20->StringGrid3->Cells[16][0]="挂失码";
Form20->StringGrid3->Cells[17][0]="处理码";


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
   ins="select * from userinfo where jijiangguashi='1' ";
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

     n=Form20->StringGrid3->RowCount;
     Form20->StringGrid3->RowCount=n+1;
     Form20->StringGrid3->Cells[0][n-17]=no;
     Form20->StringGrid3->Cells[1][n-17]=name;
     Form20->StringGrid3->Cells[2][n-17]=Address;
     Form20->StringGrid3->Cells[3][n-17]=MobilePhone;
     Form20->StringGrid3->Cells[4][n-17]=note;
     Form20->StringGrid3->Cells[5][n-17]=fakacount;
     Form20->StringGrid3->Cells[6][n-17]=ucardid;
     Form20->StringGrid3->Cells[7][n-17]=useyxqyn;//yxqyn1;  //限制时间
     Form20->StringGrid3->Cells[8][n-17]=RegisterDate;
     Form20->StringGrid3->Cells[9][n-17]=fkdate;  //发卡日期

     Form20->StringGrid3->Cells[10][n-17]=endtime;
     Form20->StringGrid3->Cells[11][n-17]=usecountyn;
     Form20->StringGrid3->Cells[12][n-17]=nowsendcnt;   // 当前冲次数
     Form20->StringGrid3->Cells[13][n-17]=nowcrdcnt; //当前卡次数
     Form20->StringGrid3->Cells[14][n-17]=lastcrdcnt; //上回卡次数
     Form20->StringGrid3->Cells[15][n-17]=nowmoney;  //当前冲金额
     Form20->StringGrid3->Cells[16][n-17]=UserCID;
     Form20->StringGrid3->Cells[17][n-17]=UserCID;

     StringGrid3->Rows[n]->Clear();
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
Form20->StringGrid3->OnSelectCell=StringGrid3SelectCell;
}
//---------------------------------------------------------------------------

void __fastcall TForm20::sButton1Click(TObject *Sender)
{
if(MessageDlg("确认要移除挂失用户吗？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String sp,qstr,nos;
int n,j;
sp=sEdit1->Text;
if(sp=="")
  {
  Application->MessageBoxA("请选择用户！!!","问题",MB_OK);
  return;
  }

 qstr="update userinfo set [jijiangguashi]='0";

    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();


n=StringGrid3->RowCount;
for( j=0;j<n;j=j+1)
{
  nos=StringGrid3->Cells[0][j];
  if(sp==nos){
     StringGrid3->Rows[j]->Clear();
      break;
     }
}
}
}
//---------------------------------------------------------------------------
void __fastcall TForm20::StringGrid3SelectCell(TObject *Sender, int ACol,
      int ARow, bool &CanSelect)
{
String no;
int id;
  id=ARow;
          CanSelect=true;
          no=StringGrid3->Cells[0][id];
          if(no=="")
          {
          sButton1->Enabled=false;
             return;
          }
          sEdit1->Text=no;
          sButton1->Enabled=true;
          sButton2->Enabled=true;
          sButton3->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm20::sButton2Click(TObject *Sender)
{
String nok,ins,UserCID,Temp,Temp1,qstr,tp1,tp2,data1,data2;
nok=sEdit1->Text;
sButton2->Enabled=false; //
unsigned char returnSign;   //写入 反正标记
unsigned char newData1[7]={0xaa,0x01,0x01,0x01,0x02,0x01,0xff};           //数据存放数组
//if(sEdit1->Text =="")
//  {
//  Application->MessageBoxA("请选择用户!!","问题",MB_OK);
//  sButton2->Enabled=true;
//  return;
//  }
//nok1=Edit23->Text;
  if(Form1->CurrentDevice == NULL) {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton2->Enabled=true; //
        return;
        }
 }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
ins="select * from userinfo where jijiangguashi='1' ";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   UserCID="";
   for (int i=0;i<tcon->adoquery->RecordCount;i++)
     {
     UserCID=UserCID+tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
     tcon->adoquery->Next();
     }
   UserCID=UserCID+"000000000000000000000000000000000000000000000000";
   if(Form1->CurrentDevice == NULL) {
   tp1=UserCID.SubString(1,8);
   tp2=UserCID.SubString(9,32);

  Temp="6D696661726503"+conpwd+tp1+"0000";
  //                                这四个0预留
  Temp1=tp2;

  // if (write14data0s(Temp))  {
    if (write14data0s1s(Temp,Temp1)) {
  //  tcon->UserSetado->Active =false;
    qstr="update userinfo set ";
    qstr+="[carduse]='2'";
//    qstr+=",[jijiangguashi]=''";
    qstr+=" where jijiangguashi='1'";
  //  qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
    }
 if (!USB_DevClose())
         Caption = "关闭串口失败";
  } else {      // HID USB
   data2=UserCID.SubString(1,24);
    Form1->erase(0x02,0x03); // 擦除
    data1 = "ABC003" + data2;
    returnSign = Form1->DataWrite(newData1,data1);
     if (returnSign != 0x00){Application->MessageBoxA("数据发送超时!!","问题",MB_OK);}
               else{ Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);}
  }
sButton2->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm20::sButton3Click(TObject *Sender)
{
String nok,ins,UserCID,Temp,Temp1,qstr,tp1,tp2,data1,data2;
nok=sEdit1->Text;
unsigned char returnSign;   //写入 反正标记
unsigned char newData1[7]={0xaa,0x01,0x01,0x01,0x02,0x01,0xff};           //数据存放数组
sButton3->Enabled=false; //
//if(sEdit1->Text =="")
//  {
//  Application->MessageBoxA("请选择用户!!","问题",MB_OK);
//  sButton2->Enabled=true;
//  return;
//  }
//nok1=Edit23->Text;
if(Form1->CurrentDevice == NULL) {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton3->Enabled=true; //
        return;
        }
     }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
ins="select * from userinfo where jijiangguashi='1' ";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   UserCID="";
   for (int i=0;i<tcon->adoquery->RecordCount;i++)
     {
     UserCID=UserCID+tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
     tcon->adoquery->Next();
     }
   UserCID=UserCID+"000000000000000000000000000000000000000000000000";
   if(Form1->CurrentDevice == NULL) {
   tp1=UserCID.SubString(1,8);
   tp2=UserCID.SubString(9,32);

  Temp="6D696661726505"+conpwd+tp1+"0000";
  //                                这四个0预留
  Temp1=tp2;

  // if (write14data0s(Temp))  {
    if (write14data0s1s(Temp,Temp1)) {
  //  tcon->UserSetado->Active =false;
    qstr="update userinfo set ";
    qstr+="[carduse]='1'";
//    qstr+=",[jijiangguashi]=''";
    qstr+=" where jijiangguashi='1'";
  //  qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
    }
 if (!USB_DevClose())
         Caption = "关闭串口失败";
       } else {
           data2=UserCID.SubString(1,24);
           Form1->erase(0x02,0x03); // 擦除
           data1 = "ABC005" + data2;
           returnSign = Form1->DataWrite(newData1,data1);
           if (returnSign != 0x00){Application->MessageBoxA("数据发送超时!!","问题",MB_OK);}
               else{ Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);}
         }
sButton3->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm20::N1Click(TObject *Sender)
{
String qstr;
 qstr="update userinfo set [jijiangguashi]='0";

    qstr+="'";
    qstr+=" where jijiangguashi='1' ";
//    qstr+=" where [no]=";
//    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
Form20->StringGrid3->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
//姓名 单元（部门） 电话 备注 发卡次数 当前卡号 限制时间 注册日期 发卡日期
//有效日期 限制次数 当前冲次数 当前卡次数 上回卡次数 当前冲金额 挂失码 处理码

Form20->StringGrid3->ColCount=18;
Form20->StringGrid3->Cells[0][0]="编号";
Form20->StringGrid3->Cells[1][0]="姓名";
Form20->StringGrid3->Cells[2][0]="单元/部门";
Form20->StringGrid3->Cells[3][0]="联系方式";
Form20->StringGrid3->Cells[4][0]="备注";
Form20->StringGrid3->Cells[5][0]="发卡次数";
Form20->StringGrid3->Cells[6][0]="当前卡号";
Form20->StringGrid3->Cells[7][0]="限制时间";
Form20->StringGrid3->Cells[8][0]="注册日期";
Form20->StringGrid3->Cells[9][0]="发卡日期";

Form20->StringGrid3->Cells[10][0]="有效日期";
Form20->StringGrid3->Cells[11][0]="限制次数";
Form20->StringGrid3->Cells[12][0]="当前冲次数";
Form20->StringGrid3->Cells[13][0]="当前卡次数";
Form20->StringGrid3->Cells[14][0]="上回卡次数";
Form20->StringGrid3->Cells[15][0]="当前冲金额";
Form20->StringGrid3->Cells[16][0]="挂失码";
Form20->StringGrid3->Cells[17][0]="处理码";


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
Form20->StringGrid3->OnSelectCell=StringGrid3SelectCell;
  
}
//---------------------------------------------------------------------------

