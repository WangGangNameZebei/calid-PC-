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
extern  void jiamityn(void);    ////IC��14����0���û���ר��

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
//���� ��Ԫ�����ţ� �绰 ��ע �������� ��ǰ���� ����ʱ�� ע������ ��������
//��Ч���� ���ƴ��� ��ǰ����� ��ǰ������ �ϻؿ����� ��ǰ���� ��ʧ�� ������

Form20->StringGrid3->ColCount=18;
Form20->StringGrid3->Cells[0][0]="���";
Form20->StringGrid3->Cells[1][0]="����";
Form20->StringGrid3->Cells[2][0]="��Ԫ/����";
Form20->StringGrid3->Cells[3][0]="��ϵ��ʽ";
Form20->StringGrid3->Cells[4][0]="��ע";
Form20->StringGrid3->Cells[5][0]="��������";
Form20->StringGrid3->Cells[6][0]="��ǰ����";
Form20->StringGrid3->Cells[7][0]="����ʱ��";
Form20->StringGrid3->Cells[8][0]="ע������";
Form20->StringGrid3->Cells[9][0]="��������";

Form20->StringGrid3->Cells[10][0]="��Ч����";
Form20->StringGrid3->Cells[11][0]="���ƴ���";
Form20->StringGrid3->Cells[12][0]="��ǰ�����";
Form20->StringGrid3->Cells[13][0]="��ǰ������";
Form20->StringGrid3->Cells[14][0]="�ϻؿ�����";
Form20->StringGrid3->Cells[15][0]="��ǰ����";
Form20->StringGrid3->Cells[16][0]="��ʧ��";
Form20->StringGrid3->Cells[17][0]="������";


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
///////////////////////////////////////////////////////////////////////������������
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

//////////////////////////////////////////////////////////////////���������������
do
{
       if(usecountyn=="1")
           usecountyn="��";
       else
           usecountyn="��";

       if(useyxqyn=="1")
           useyxqyn="��";
       else
           useyxqyn="��";

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
     Form20->StringGrid3->Cells[7][n-17]=useyxqyn;//yxqyn1;  //����ʱ��
     Form20->StringGrid3->Cells[8][n-17]=RegisterDate;
     Form20->StringGrid3->Cells[9][n-17]=fkdate;  //��������

     Form20->StringGrid3->Cells[10][n-17]=endtime;
     Form20->StringGrid3->Cells[11][n-17]=usecountyn;
     Form20->StringGrid3->Cells[12][n-17]=nowsendcnt;   // ��ǰ�����
     Form20->StringGrid3->Cells[13][n-17]=nowcrdcnt; //��ǰ������
     Form20->StringGrid3->Cells[14][n-17]=lastcrdcnt; //�ϻؿ�����
     Form20->StringGrid3->Cells[15][n-17]=nowmoney;  //��ǰ����
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
if(MessageDlg("ȷ��Ҫ�Ƴ���ʧ�û���",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String sp,qstr,nos;
int n,j;
sp=sEdit1->Text;
if(sp=="")
  {
  Application->MessageBoxA("��ѡ���û���!!","����",MB_OK);
  return;
  }

 qstr="update userinfo set [jijiangguashi]='0";

    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //������д��
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
String nok,ins,UserCID,Temp,Temp1,qstr,tp1,tp2;
nok=sEdit1->Text;
sButton2->Enabled=false; //
//if(sEdit1->Text =="")
//  {
//  Application->MessageBoxA("��ѡ���û�!!","����",MB_OK);
//  sButton2->Enabled=true;
//  return;
//  }
//nok1=Edit23->Text;
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "�򿪴���ʧ��";
        sButton2->Enabled=true; //
        return;
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
   tp1=UserCID.SubString(1,8);
   tp2=UserCID.SubString(9,32);

  Temp="6D696661726503"+conpwd+tp1+"0000";
  //                                ���ĸ�0Ԥ��
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
    tcon->adoquery->ExecSQL();       //������д��
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("д���ɹ���!!","��ϲ",MB_OK);
    }
 if (!USB_DevClose())
         Caption = "�رմ���ʧ��";
sButton2->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm20::sButton3Click(TObject *Sender)
{
String nok,ins,UserCID,Temp,Temp1,qstr,tp1,tp2;
nok=sEdit1->Text;
sButton3->Enabled=false; //
//if(sEdit1->Text =="")
//  {
//  Application->MessageBoxA("��ѡ���û�!!","����",MB_OK);
//  sButton2->Enabled=true;
//  return;
//  }
//nok1=Edit23->Text;
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "�򿪴���ʧ��";
        sButton3->Enabled=true; //
        return;
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
   tp1=UserCID.SubString(1,8);
   tp2=UserCID.SubString(9,32);

  Temp="6D696661726505"+conpwd+tp1+"0000";
  //                                ���ĸ�0Ԥ��
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
    tcon->adoquery->ExecSQL();       //������д��
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("д���ɹ���!!","��ϲ",MB_OK);
    }
 if (!USB_DevClose())
         Caption = "�رմ���ʧ��";
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
    tcon->adoquery->ExecSQL();       //������д��
    tcon->adoquery->Close();
Form20->StringGrid3->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
//���� ��Ԫ�����ţ� �绰 ��ע �������� ��ǰ���� ����ʱ�� ע������ ��������
//��Ч���� ���ƴ��� ��ǰ����� ��ǰ������ �ϻؿ����� ��ǰ���� ��ʧ�� ������

Form20->StringGrid3->ColCount=18;
Form20->StringGrid3->Cells[0][0]="���";
Form20->StringGrid3->Cells[1][0]="����";
Form20->StringGrid3->Cells[2][0]="��Ԫ/����";
Form20->StringGrid3->Cells[3][0]="��ϵ��ʽ";
Form20->StringGrid3->Cells[4][0]="��ע";
Form20->StringGrid3->Cells[5][0]="��������";
Form20->StringGrid3->Cells[6][0]="��ǰ����";
Form20->StringGrid3->Cells[7][0]="����ʱ��";
Form20->StringGrid3->Cells[8][0]="ע������";
Form20->StringGrid3->Cells[9][0]="��������";

Form20->StringGrid3->Cells[10][0]="��Ч����";
Form20->StringGrid3->Cells[11][0]="���ƴ���";
Form20->StringGrid3->Cells[12][0]="��ǰ�����";
Form20->StringGrid3->Cells[13][0]="��ǰ������";
Form20->StringGrid3->Cells[14][0]="�ϻؿ�����";
Form20->StringGrid3->Cells[15][0]="��ǰ����";
Form20->StringGrid3->Cells[16][0]="��ʧ��";
Form20->StringGrid3->Cells[17][0]="������";


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
