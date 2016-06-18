//---------------------------------------------------------------------------
#define NO_WIN32_LEAN_AND_MEAN
#include <vcl.h>
#include <vcl\registry.hpp>
#include <Registry.hpp>
#include <stdio.h>
#include <windows.h>
#pragma hdrstop
#include <time.h>
#include <stdlib.h>

#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit4.h"
#include "Unit5.h"
#include "Unit6.h"
#include "Unit7.h"
#include "Unit8.h"
#include "Unit9.h"
#include "Unit10.h"
#include "Unit11.h"
#include "Unit12.h"
#include "Unit13.h"
#include "Unit14.h"
#include "Unit15.h"
#include "Unit16.h"
#include "Unit17.h"
#include "Unit18.h"
#include "Unit19.h"
#include "Unit20.h"
#include "Unit22.h"
#include "Unit23.h"
#include "Unit24.h"
#include "BridgeMini.H"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sComboBox"
#pragma link "sEdit"
#pragma link "sButton"
#pragma link "sAlphaListBox"
#pragma link "sFontCtrls"
#pragma link "sPageControl"
#pragma link "sLabel"
#pragma link "sMaskEdit"
#pragma link "sGroupBox"
#pragma link "sCheckBox"
#pragma link "sComboBoxes"
#pragma link "sRadioButton"
#pragma link "sSpinEdit"
#pragma link "CSPIN"
#pragma resource "*.dfm"
#pragma link "JvHidControllerClass"
TForm1 *Form1;


HANDLE hComm1,hComm2,hComm3,hComm4,hComm5,hComm6,hComm7,hComm8,hComm9; // 将给串行端口使用的Handle声明
HANDLE hComm10,hComm11,hComm12,hComm13,hComm14,hComm15,hComm16; // 将给串行端口使用的Handle声明

extern "C" BOOL pascal opencom(String coms);
extern String outser(String addr,String outdata,String comnos);
extern "C" BOOL pascal StrToHexYN(String aa);
extern "C" BOOL pascal closecomss(String coms);
extern String timepoc(String atime);
extern String reincidbianma(String Temp);

HINSTANCE dllHandle;
fun_USB_DevInit USB_DevInit;
fun_USB_DevClose USB_DevClose;
fun_USB_RequestEx USB_RequestEx;
fun_USB_BeepExA USB_BeepExA;
fun_USB_Authentication USB_Authentication;
fun_USB_Read USB_Read;
fun_USB_Write USB_Write;
fun_USB_ValueInit USB_ValueInit;
fun_USB_Value USB_Value;
fun_USB_BackUp USB_BackUp;
fun_USB_Request USB_Request;
fun_USB_Anticoll USB_Anticoll;
fun_USB_Select USB_Select;
fun_USB_Halt USB_Halt;
fun_ClearData ClearData;
fun_GetTimeExA GetTimeExA;
fun_SetTimeExA SetTimeExA;
fun_SetManagerCard SetManagerCard;
fun_GetManagerCard GetManagerCard;
fun_SetMaxConsume SetMaxConsume;
fun_GetMaxConsume GetMaxConsume;
fun_SetMaxSumConsume SetMaxSumConsume;
fun_GetMaxSumConsume GetMaxSumConsume;
fun_SetSaleStyle SetSaleStyle;
fun_GetSaleStyle GetSaleStyle;
fun_SetMachStyle SetMachStyle;
fun_GetMachStyle GetMachStyle;
fun_GetSumConsume GetSumConsume;
fun_GetRecordCount GetRecordCount;
fun_SetMachNo SetMachNo;
fun_InitMach InitMach;
fun_RestoreMachEx RestoreMachEx;
fun_GetRecord GetRecord;
fun_abc abc;

sst *MyThread;
HANDLE hComm;
int k,conchangeyn=0,adminpyn=0,zhanting=0;
String opendoor,msfig,Versionnumber,bindcon="",bindsoft,Allowedtimeyn,userCID123;
String cn1,cn2,cn3,cn4,cn5,cn6,cn7,cn8,cn9,cn10,cn11,functionfig;  ///操作时自动处理初始化;
String inipwdpoc,conpwd;
int wzsector=13,firstsector=14,secondsector=15,addsector=12,add1sector=11,add2sector=10,is=0,now;
int xorsector=13;
int wexe;
int displaylayeryn=0;   //是否用层数选择，1为用，0为不用
int tishiyn=1; //是否出到提示，1为是
int card0spoc=0;//是否把0扇区写死  1为是
int card0sguanlian=0;  ///全部卡号关联处理  1为是
int mangguoka=0;  ///防超级UID
int qudiaoshijian=0; ///去掉时间控制  0为去掉，1为启动
int qudiaochishu=0;  ///去掉次数控制  0为去掉，1为启动
int fuzhijiuyanshitingka=0;
String addlastcntyn;
String floorselect="0";

extern String addlastcntyn;
String win7;
extern String useyouxiaoqi="ff",userkzfig="ff";
extern int countselect=1;

extern String usersearchno="0";

extern int passwordyn=0;
extern String userkztishi="";

String getkey;
//unsigned char crctemp[96];
unsigned int CRC32_table[256] =
{
  0x00000000, 0x77073096, 0xEE0E612C, 0x990951BA,
  0x076DC419, 0x706AF48F, 0xE963A535, 0x9E6495A3,
  0x0EDB8832, 0x79DCB8A4, 0xE0D5E91E, 0x97D2D988,
  0x09B64C2B, 0x7EB17CBD, 0xE7B82D07, 0x90BF1D91,
  0x1DB71064, 0x6AB020F2, 0xF3B97148, 0x84BE41DE,
  0x1ADAD47D, 0x6DDDE4EB, 0xF4D4B551, 0x83D385C7,
  0x136C9856, 0x646BA8C0, 0xFD62F97A, 0x8A65C9EC,
  0x14015C4F, 0x63066CD9, 0xFA0F3D63, 0x8D080DF5,
  0x3B6E20C8, 0x4C69105E, 0xD56041E4, 0xA2677172,
  0x3C03E4D1, 0x4B04D447, 0xD20D85FD, 0xA50AB56B,
  0x35B5A8FA, 0x42B2986C, 0xDBBBC9D6, 0xACBCF940,
  0x32D86CE3, 0x45DF5C75, 0xDCD60DCF, 0xABD13D59,
  0x26D930AC, 0x51DE003A, 0xC8D75180, 0xBFD06116,
  0x21B4F4B5, 0x56B3C423, 0xCFBA9599, 0xB8BDA50F,
  0x2802B89E, 0x5F058808, 0xC60CD9B2, 0xB10BE924,
  0x2F6F7C87, 0x58684C11, 0xC1611DAB, 0xB6662D3D,
  0x76DC4190, 0x01DB7106, 0x98D220BC, 0xEFD5102A,
  0x71B18589, 0x06B6B51F, 0x9FBFE4A5, 0xE8B8D433,
  0x7807C9A2, 0x0F00F934, 0x9609A88E, 0xE10E9818,
  0x7F6A0DBB, 0x086D3D2D, 0x91646C97, 0xE6635C01,
  0x6B6B51F4, 0x1C6C6162, 0x856530D8, 0xF262004E,
  0x6C0695ED, 0x1B01A57B, 0x8208F4C1, 0xF50FC457,
  0x65B0D9C6, 0x12B7E950, 0x8BBEB8EA, 0xFCB9887C,
  0x62DD1DDF, 0x15DA2D49, 0x8CD37CF3, 0xFBD44C65,
  0x4DB26158, 0x3AB551CE, 0xA3BC0074, 0xD4BB30E2,
  0x4ADFA541, 0x3DD895D7, 0xA4D1C46D, 0xD3D6F4FB,
  0x4369E96A, 0x346ED9FC, 0xAD678846, 0xDA60B8D0,
  0x44042D73, 0x33031DE5, 0xAA0A4C5F, 0xDD0D7CC9,
  0x5005713C, 0x270241AA, 0xBE0B1010, 0xC90C2086,
  0x5768B525, 0x206F85B3, 0xB966D409, 0xCE61E49F,
  0x5EDEF90E, 0x29D9C998, 0xB0D09822, 0xC7D7A8B4,
  0x59B33D17, 0x2EB40D81, 0xB7BD5C3B, 0xC0BA6CAD,
  0xEDB88320, 0x9ABFB3B6, 0x03B6E20C, 0x74B1D29A,
  0xEAD54739, 0x9DD277AF, 0x04DB2615, 0x73DC1683,
  0xE3630B12, 0x94643B84, 0x0D6D6A3E, 0x7A6A5AA8,
  0xE40ECF0B, 0x9309FF9D, 0x0A00AE27, 0x7D079EB1,
  0xF00F9344, 0x8708A3D2, 0x1E01F268, 0x6906C2FE,
  0xF762575D, 0x806567CB, 0x196C3671, 0x6E6B06E7,
  0xFED41B76, 0x89D32BE0, 0x10DA7A5A, 0x67DD4ACC,
  0xF9B9DF6F, 0x8EBEEFF9, 0x17B7BE43, 0x60B08ED5,
  0xD6D6A3E8, 0xA1D1937E, 0x38D8C2C4, 0x4FDFF252,
  0xD1BB67F1, 0xA6BC5767, 0x3FB506DD, 0x48B2364B,
  0xD80D2BDA, 0xAF0A1B4C, 0x36034AF6, 0x41047A60,
  0xDF60EFC3, 0xA867DF55, 0x316E8EEF, 0x4669BE79,
  0xCB61B38C, 0xBC66831A, 0x256FD2A0, 0x5268E236,
  0xCC0C7795, 0xBB0B4703, 0x220216B9, 0x5505262F,
  0xC5BA3BBE, 0xB2BD0B28, 0x2BB45A92, 0x5CB36A04,
  0xC2D7FFA7, 0xB5D0CF31, 0x2CD99E8B, 0x5BDEAE1D,
  0x9B64C2B0, 0xEC63F226, 0x756AA39C, 0x026D930A,
  0x9C0906A9, 0xEB0E363F, 0x72076785, 0x05005713,
  0x95BF4A82, 0xE2B87A14, 0x7BB12BAE, 0x0CB61B38,
  0x92D28E9B, 0xE5D5BE0D, 0x7CDCEFB7, 0x0BDBDF21,
  0x86D3D2D4, 0xF1D4E242, 0x68DDB3F8, 0x1FDA836E,
  0x81BE16CD, 0xF6B9265B, 0x6FB077E1, 0x18B74777,
  0x88085AE6, 0xFF0F6A70, 0x66063BCA, 0x11010B5C,
  0x8F659EFF, 0xF862AE69, 0x616BFFD3, 0x166CCF45,
  0xA00AE278, 0xD70DD2EE, 0x4E048354, 0x3903B3C2,
  0xA7672661, 0xD06016F7, 0x4969474D, 0x3E6E77DB,
  0xAED16A4A, 0xD9D65ADC, 0x40DF0B66, 0x37D83BF0,
  0xA9BCAE53, 0xDEBB9EC5, 0x47B2CF7F, 0x30B5FFE9,
  0xBDBDF21C, 0xCABAC28A, 0x53B39330, 0x24B4A3A6,
  0xBAD03605, 0xCDD70693, 0x54DE5729, 0x23D967BF,
  0xB3667A2E, 0xC4614AB8, 0x5D681B02, 0x2A6F2B94,
  0xB40BBE37, 0xC30C8EA1, 0x5A05DF1B, 0x2D02EF8D
};

unsigned int crc32( String buf, int len)
{
    unsigned int ret = 0xFFFFFFFF;
    int   i,ttc;
    String ttd;

    for(i = 1; i < len*2+1;i=i+2)
    {
         ttd = buf.SubString(i,2);
         ttd = "0x"+ttd;
         ttc =StrToInt(ttd);
         ret = CRC32_table[((ret & 0xFF) ^ ttc)] ^ (ret >> 8);
    }
     ret = ~ret;
    return ret;
}
String add_onefushudizhi(String elevatoraddr,String faddr)
{
   String pa,d="0",pd="1",pe,nos;
int m,n,di,e,f,g,pes,pfs;
			pa=faddr;
			e=pa.ToInt();
f=e/8;
g=f;
f=f*8;
e=e-f;
f=0;
pd="1";
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	g=g-1;
	pd="128";
}

pe=elevatoraddr.SubString(g*2+1,2);
pe=("0x"+pe)^"0x00";

pd=pd|pe;

pd=IntToHex(StrToInt(pd),2);


		   elevatoraddr=elevatoraddr.Delete(g*2+1,2);
		   elevatoraddr=elevatoraddr.Insert(pd,g*2+1);

		d="0";
/////////////////////////////////
return elevatoraddr;
}
String add_fushudizhi(String elevatoraddr)
{
String ins,no,faddr1,faddr2,faddr3,faddr4,nos;

    ins="select * from elevatorinfo ";
   ins+=" ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 faddr1=tcon->adoquery->FieldByName("faddr1")->AsString.Trim();
 faddr2=tcon->adoquery->FieldByName("faddr2")->AsString.Trim();
 faddr3=tcon->adoquery->FieldByName("faddr3")->AsString.Trim();
 faddr4=tcon->adoquery->FieldByName("faddr4")->AsString.Trim();

//////////////////////////////////////////////////////////////////按控制器查找完成
do
{
if((faddr1!=""))
{
elevatoraddr=add_onefushudizhi(elevatoraddr,faddr1);
}
if((faddr2!=""))
{
elevatoraddr=add_onefushudizhi(elevatoraddr,faddr2);
}
if((faddr3!=""))
{
elevatoraddr=add_onefushudizhi(elevatoraddr,faddr3);
}
if((faddr4!=""))
{
elevatoraddr=add_onefushudizhi(elevatoraddr,faddr4);
}
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 faddr1=tcon->adoquery->FieldByName("faddr1")->AsString.Trim();
 faddr2=tcon->adoquery->FieldByName("faddr2")->AsString.Trim();
 faddr3=tcon->adoquery->FieldByName("faddr3")->AsString.Trim();
 faddr4=tcon->adoquery->FieldByName("faddr4")->AsString.Trim();
}
while(nos!=no);
}
 return elevatoraddr;
}
String shebeifresh(void)
{
String no,elevatorname,addr,keydelay,note,subbcountyn,ins,nos,bindcardyn,yxqyn;
int n;
///////////////////////////////////////////////////电梯处理
Form1->StringGrid1->OnSelectCell=NULL;
////--------------------------------------------------------------------------------------------------
Form1->StringGrid1->ColCount=16;
Form1->StringGrid1->Cells[0][0]="设备地址";
Form1->StringGrid1->Cells[1][0]="设备名称";
Form1->StringGrid1->Cells[2][0]="设备位置";
Form1->StringGrid1->Cells[3][0]="按键延时";
Form1->StringGrid1->Cells[4][0]="次数处理";
Form1->StringGrid1->Cells[5][0]="有效期处理";
if(bindsoft=="1"){
Form1->StringGrid1->Cells[6][0]="绑定卡片";
Form1->StringGrid1->Cells[7][0]="备注";
}
else
  Form1->StringGrid1->Cells[6][0]="备注";


  Form1->StringGrid1->RowCount=2;
  Form1->StringGrid1->Rows[1]->Clear();
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找
  if(bindsoft=="1")
     Form1->sCheckBox2->Visible=true;

   ins="select * from elevatorinfo ";
   ins+=" ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
 addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
 keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
 subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
 bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
 yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
//////////////////////////////////////////////////////////////////按控制器查找完成
do
{

     if(subbcountyn=="1")
           subbcountyn="是";
       else
           subbcountyn="否";

     if(bindcardyn=="1")
           bindcardyn="是";
       else
           bindcardyn="否";

     if(yxqyn=="1")
           yxqyn="是";
       else
           yxqyn="否";

     n=Form1->StringGrid1->RowCount;
     Form1->StringGrid1->RowCount=n+1;
     Form1->StringGrid1->Cells[0][n-1]=no;
     Form1->StringGrid1->Cells[1][n-1]=elevatorname;
     Form1->StringGrid1->Cells[2][n-1]=addr;
     Form1->StringGrid1->Cells[3][n-1]=keydelay;
     Form1->StringGrid1->Cells[4][n-1]=subbcountyn;
     Form1->StringGrid1->Cells[5][n-1]=yxqyn;
     if(bindsoft=="1"){
     Form1->StringGrid1->Cells[6][n-1]=bindcardyn;
     Form1->StringGrid1->Cells[7][n-1]=note;
     }
     else
      Form1->StringGrid1->Cells[6][n-1]=note;


     Form1->StringGrid1->Rows[n]->Clear();
   nos=no;
 tcon->adoquery->Next();
 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
 addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
 keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
 subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
 bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
 yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
}
while(nos!=no);
//}
}
////////////////////--------------------------------------------------------------------------
Form1->StringGrid1->OnSelectCell=Form1->StringGrid1SelectCell;
}
/////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
void delay(DWORD DT)
{
long tt;
DWORD a;
COMSTAT cbInQue;
tt=GetTickCount();
//char inbuff[1024]="0";
//DWORD nBytesRead, dwEvent, dwError;
//String Temp;

while(GetTickCount()-tt<DT)
{
ClearCommError(hComm,&a,&cbInQue);
int pp=cbInQue.cbInQue;
if(pp>=10)
{
while(GetTickCount()-tt<200)
{}
int pp1=cbInQue.cbInQue;
if(pp==pp1)
{
//pp=32;
//DCBlength=32;
//ReadFile(hComm, inbuff,64,&nBytesRead,NULL); // 接收COM 的数据
//Temp=inbuff;
//   if(fhxor(Temp))
 //  {
//   tsp=Temp;
//ClearCommError(hComm,&a,&cbInQue);
//int pp=cbInQue.cbInQue;
//if(pp>=32)
//{
//pp=32;
return;
//}
}
}
Application->ProcessMessages();
if((GetTickCount()-tt)<=0)
  tt=GetTickCount();
  }
}
/////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
bool quanfhxor(String aa)
{ bool z;

String a,b,c,d,g;
int e,f;
//aa="\n7878\nib\rjdk\r";
aa=aa.Trim();
if(aa=="")
    {
    z=false;
    return (z);
    }
if(aa.Length()<=2)
    {
    z=false;
    return (z);
    }
e=6;//aa.Length();
b="0x00";
for (int i=1;i<=e;i++)
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
                                z=false;
                                return (z);
                               }


}
for (int i=1;i<=e;i=i+2)
{ a=aa.SubString(i,2).Trim();


// if (aa.SubString(i,2).Trim()>'256'||aa.SubString(i,2).Trim()<'0')
//     {
//     z=false;
//     return (z);
//     }
c="0x"+aa.SubString(i,2).Trim();
d=b^c;
b=d;
}
//f=StrToInt(b);
if (b=="0")
{z=true;
}
else
{z=false;}
return (z);
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
/*
void delay(DWORD DT)
{
long tt;
DWORD a;
COMSTAT cbInQue;
tt=GetTickCount();
//char inbuff[1024]="0";
//DWORD nBytesRead, dwEvent, dwError;
//String Temp;

while(GetTickCount()-tt<DT)
{
ClearCommError(hComm,&a,&cbInQue);
int pp=cbInQue.cbInQue;
if(pp>=10)
{
while(GetTickCount()-tt<100)
{}
int pp1=cbInQue.cbInQue;
if(pp==pp1)
{
//pp=32;
//DCBlength=32;
//ReadFile(hComm, inbuff,64,&nBytesRead,NULL); // 接收COM 的数据
//Temp=inbuff;
//   if(fhxor(Temp))
 //  {
//   tsp=Temp;
//ClearCommError(hComm,&a,&cbInQue);
//int pp=cbInQue.cbInQue;
//if(pp>=32)
//{
//pp=32;
return;
//}
}
}
if(wexe==0)
  Application->ProcessMessages();
if((GetTickCount()-tt)<=0)
  tt=GetTickCount();
  }
}

*/
/////////////////////////////////////////////////////////////////////////////////
// 转换2字节16进制的字符串到ASCII字符串
extern "C" BOOL pascal HextoAscii(char* sHex)//,char* sReply)
{
unsigned long lrc,BS;
int iLen,i,j=0;
BYTE * lsData;
BYTE * lsReply;

if(sHex==NULL)
{
return FALSE;
}
iLen=strlen(sHex);
if((iLen%2!=0)||(iLen>1024))
{
return FALSE;
}
//if(sReply==NULL)
//{
//return FALSE;
//}

iLen=strlen(sHex);
lsData=new BYTE[iLen];
lsReply=new BYTE[iLen/2+1];
memcpy(lsData,sHex,iLen);
for(i=0;i<iLen;i+=2)
{
if(((lsData[i]>='0'&&lsData[i]<='9')||
(lsData[i]>='a'&&lsData[i]<='f')||
(lsData[i]>='A'&&lsData[i]<='F'))&&
((lsData[i+1]>='0'&&lsData[i+1]<='9')||
(lsData[i+1]>='a'&&lsData[i+1]<='f')||
(lsData[i+1]>='A'&&lsData[i+1]<='F'))
)
{
if(lsData[i]>='0'&&lsData[i]<='9')
lsReply[j] = lsData[i]-'0';
if(lsData[i]>='a'&&lsData[i]<='f')
lsReply[j] = lsData[i]-'a'+10;
if(lsData[i]>='A'&&lsData[i]<='F')
lsReply[j] = lsData[i]-'A'+10;
lsReply[j]=(lsReply[j]<<4)&0xf0;
if(lsData[i+1]>='0'&&lsData[i+1]<='9')
lsReply[j] |= lsData[i+1]-'0';
if(lsData[i+1]>='a'&&lsData[i+1]<='f')
lsReply[j] |= lsData[i+1]-'a'+10;
if(lsData[i+1]>='A'&&lsData[i+1]<='F')
lsReply[j] |= lsData[i+1]-'A'+10;
j++;
}
else
break;
}
lsReply[j]=0x00;
BS =iLen/2;
WriteFile(hComm,lsReply,BS, &lrc,NULL); // 送出数据
delete lsReply;
delete lsData;
return TRUE;
}

// 转换ASCII字符串到2字节16进制的字符串
//extern "C" BOOL pascal AsciitoHex(char* sAsc,int iLength,char inbuff[64])
extern String AsciitoHex(char* sAsc,int iLength,char inbuff[64])

{
int i,j=0;
String ssa;
BYTE ch1,ch2;
BYTE * lsData;
BYTE * lsReply;

if(sAsc==NULL)
{
return FALSE;
}
if(iLength>512)
{
return FALSE;
}

lsData=new BYTE[iLength];
lsReply=new BYTE[iLength*2+1];
memcpy(lsData,sAsc,iLength);
for(i=0;i<iLength;i++)
{
ch1=lsData[i]>>4; //高四位
ch2=lsData[i]&0x0f; //低四位
lsReply[j++]=(ch1>=0&&ch1<=9)?(ch1+0x30):(ch1+0x37);
lsReply[j++]=(ch2>=0&&ch2<=9)?(ch2+0x30):(ch2+0x37);
}
lsReply[j]=0x00;
inbuff=lsReply;
ssa=inbuff;
//memcpy(inbuff,lsReply,strlen(lsReply));
delete lsReply;
delete lsData;
return (ssa); //TRUE;
}
///////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////
String xorstr(String aa)
{String a,b,c,d;
int e,f;
e=aa.Length()+2;
b="0x00";
for (int i=1;i<=e-2;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
a=aa.Insert(IntToHex(f,2),e);
return (a);
}
bool fhxorstr(String aa)
{ bool z;

String a,b,c,d,g;
int e,f;
e=aa.Length()-2;
b="0x00";
for (int i=1;i<=e+1;i=i+2)  //第一个1D和最后一个1D可以抵消，之外的都是0，所以从1到最后都异或就可以了
{
c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
//f=StrToInt(b);
if (b=="0")
{z=true;
}
else
{z=false;}
return (z);
}
//////////***********************************************************************

String xor(String aa)
{String a,b,c,d;
int e,f;
e=aa.Length()+2;
b="0x00";
for (int i=1;i<=e-2;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
a=aa.Insert(IntToHex(f,2),e);
return (a);
}
//========================================= 2
String seeddatazy(String aa)
{
String a,saa;
aa=aa.Trim();
aa=aa.SubString(3,aa.Length()-4);
for (int i=1;i<=aa.Length();i=i+2)
{
a=aa.SubString(i,2).Trim();
if(a=="1A")
     saa=saa+"1A01";
else if(a=="1B")
     saa=saa+"1A02";
else if(a=="1C")
     saa=saa+"1C01";
else if(a=="1D")
     saa=saa+"1C02";
else
  saa=saa+a;
}
saa="1B"+saa+"1B";
return (saa);
}
//=========================================  2
//========================================= 2
String revdatazy(String aa)
{
String a,saa;
aa=aa.Trim();
aa=aa.SubString(3,aa.Length()-2);
for (int i=1;i<=aa.Length();i=i+2)
{
a=aa.SubString(i,2).Trim();
if(a=="1A")
  {
  a=aa.SubString(i+2,2).Trim();
  if(a=="01")
     {
     saa=saa+"1A";
     i=i+2;
     }
  else if(a=="02")
     {
     saa=saa+"1B";
     i=i+2;
     }
  }
else if(a=="1C")
  {
  a=aa.SubString(i+2,2).Trim();
  if(a=="01")
     {
     saa=saa+"1C";
     i=i+2;
     }
  else if(a=="02")
     {
     saa=saa+"1D";
     i=i+2;
     }
  }
else
  saa=saa+a;
}
saa="1D"+saa;
return (saa);
}
//=========================================  2
bool fhxor(String aa)
{ bool z;

String a,b,c,d,g,t,sen;
int e,f,tz;
//aa="\n7878\nib\rjdk\r";
aa=aa.Trim();
if(aa=="")
    {
    z=false;
    return (z);
    }
if(aa.Length()<=2)
    {
    z=false;
    return (z);
    }


e=aa.Length();
b="0x00";
for (int i=1;i<=e;i++)
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
                                z=false;
                                return (z);
                               }


}
sen=aa.SubString(5,2);
tz=("0x"+("00"+sen))^00;
t=IntToStr(tz*2+7);
for (int i=3;i<=e-2;i=i+2)
{ a=aa.SubString(i,2).Trim();
if(a=="1D")
  if(i==StrToInt(t))
    break;


// if (aa.SubString(i,2).Trim()>'256'||aa.SubString(i,2).Trim()<'0')
//     {
//     z=false;
//     return (z);
//     }
c="0x"+aa.SubString(i,2).Trim();
d=b^c;
b=d;
}
//f=StrToInt(b);
if (b=="0")
{z=true;
}
else
{z=false;}
return (z);
}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal closecomss(String coms)
{
int com;
  String comp;
  if(coms.Length()==4)
  comp=coms.SubString(4,1);
  if(coms.Length()==5)
  comp=coms.SubString(4,2);
  com= StrToInt(comp);
  switch(com)
{
case 1:
  hComm=hComm1;
  break;
case 2:
  hComm=hComm2;
  break;
case 3:
  hComm=hComm3;
  break;
case 4:
  hComm=hComm4;
  break;
case 5:
  hComm=hComm5;
  break;
case 6:
  hComm=hComm6;
  break;
case 7:
  hComm=hComm7;
  break;
case 8:
  hComm=hComm8;
  break;
default:
   break;
}
CloseHandle(hComm);

}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal opencom(String coms)
{
   char *ComNo;
  DCB dcb;
  int com;
  String Temp,comp;
  //取得要打开的通信端口
//  Temp = "COM"+IntToStr(rdCOM->ItemIndex +1);
  // 转换到指针类型的Char
//  Temp="////.//"+coms;
  Temp="//./"+coms;
//  Temp=IntToHex(StrToInt(coms),2);
 // if (hComm!=INVALID_HANDLE_VALUE) CloseHandle(hComm);
 // EXIT_SUCCESS;
  ComNo = Temp.c_str();
  hComm = CreateFile(ComNo,GENERIC_READ | GENERIC_WRITE,
       0, NULL, OPEN_EXISTING, 0, 0);
  if(coms.Length()==4)
  comp=coms.SubString(4,1);
  if(coms.Length()==5)
  comp=coms.SubString(4,2);
  com= StrToInt(comp);
  switch(com)
{
case 1:
  hComm1=hComm;
  break;
case 2:
  hComm2=hComm;
  break;
case 3:
  hComm3=hComm;
  break;
case 4:
  hComm4=hComm;
  break;
case 5:
  hComm5=hComm;
  break;
case 6:
  hComm6=hComm;
  break;
case 7:
  hComm7=hComm;
  break;
case 8:
  hComm8=hComm;
  break;
default:
  hComm8=hComm;
   break;
}
  if (hComm == INVALID_HANDLE_VALUE) // 如果COM未打开
  {
//    Application->MessageBoxA("打开通信端口错误!!","Comm Error",MB_OK);
    return FALSE;
   }
  // 将dcb地址传入，以取得通信参数
  GetCommState(hComm,&dcb);                         // 得知目前COM的状态
  dcb.BaudRate = CBR_9600;                          // 设置波特率为9600
  dcb.ByteSize = 8;                                 // 字节为8 bit
  dcb.Parity = NOPARITY;                            // Parity 为 None
  dcb.StopBits = ONESTOPBIT;                        // 1个Stop bit
  // 通信端口设置
  if (!SetCommState(hComm, &dcb)) {       // 设置COM的状态
//    Application->MessageBoxA("通信端口设置错误!!!","Set Error",MB_OK);
    CloseHandle(hComm);
    return FALSE;
   }

return TRUE;
}
////////////////////////////////////////////////////////////////////////////////
String outser(String addr,String outdata,String comnos)
{
  String temp1,Temp,a,b,ss,tsp,c,f,e,tsval,retval,p,pd,da,da1,da2,da3,data,data1,data2,data3,dataok;
  String taddr,Temps,ss1,Temps1,comp,Tempbat;
  char *SendData;
  char sReply[64];
  char inbuff1[64];
  char inbuff[1024]="0";
  DWORD nBytesRead, dwEvent, dwError;
  COMSTAT cs;
  int  ln,d,sl,dt,com,resendcount=0;
  unsigned long lrc,BS;
//  if (hComm==0) return; // 检查Handle值
  //Temp = mSend->Text;//取得传送的字符串
//***************************************************

  if(comnos.Length()==4)
  comp=comnos.SubString(4,1);
  if(comnos.Length()==5)
  comp=comnos.SubString(4,2);
  com= StrToInt(comp);
  switch(com)
{
case 1:
  hComm=hComm1;
  break;
case 2:
  hComm=hComm2;
  break;
case 3:
  hComm=hComm3;
  break;
case 4:
  hComm=hComm4;
  break;
case 5:
  hComm=hComm5;
  break;
case 6:
  hComm=hComm6;
  break;
case 7:
  hComm=hComm7;
  break;
case 8:
  hComm=hComm8;
  break;
default:
  hComm=hComm8;
   break;
}

if (hComm == INVALID_HANDLE_VALUE)
   {
   addr="ff";
   outdata="ff";
   return (addr,outdata);
   }

a="11221122334433445566556677887788";
e="01";    //addr
if(outdata=="")
     {
     addr="ff";
     outdata="ff";
     return (addr,outdata);
     }
if(addr=="")
     {
     addr="ff";
     outdata="ff";
     return (addr,outdata);
     }
dt=StrToInt(addr);
if(dt>128)
    addr="01";
e=IntToHex(StrToInt(addr),2);
f=addr;
f=IntToHex(StrToInt(f),2);
f=("0x"+f)^0xff;
f=IntToHex(StrToInt(f),2);
//a=mSend->Text;
a=outdata;
sl=a.Length();
if(sl<32)
{sl=32-sl;
for(;0<sl;sl--)
a=a+"0";
}
else{}
//p="1b"+e+f+data_lr(a)+"1b";   //全部处理完成
//Temp =p;//取得传送的字符串
//SendData = p.c_str(); //字符串转换

Temp="1B"+xorstr(e+outdata)+"1B";   //全部处理完成
//Temp="1B0304051A1B1C1D0607081B";
Temp=seeddatazy(Temp);
Tempbat=Temp;
resend:
PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
SendData=Temp.c_str();
HextoAscii(SendData);
//BS=Temp.Length();
//AsciitoHex(SendData,BS,inbuff1);
//SendData=inbuff1;
//BS=Temp.Length();
//WriteFile(hComm,SendData,BS, &lrc,NULL); // 送出数据
//HextoAscii(SendData,sReply);

delay(600);

//     addr="ff";
//     outdata="ff";
//     return (addr,outdata);






//8888888888888888888888888接收
 // char inbuff[1024]="0";
//  DWORD nBytesRead, dwEvent, dwError;
//  COMSTAT cs;
   if (hComm == INVALID_HANDLE_VALUE)
   {
   addr="ff";
   outdata="ff";
   return (addr,outdata);
   }
    //取得状态
   ClearCommError(hComm,&dwError,&cs);
   // 数据是否大于我们所准备的Buffer
   if (cs.cbInQue> sizeof(inbuff))
   {
     PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
     addr="ff";
     outdata="ff";
     return (addr,outdata);
    }
  //  PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
  // ReadFile(hComm, inbuff,cs.cbInQue*2,&nBytesRead,NULL); // 接收COM 的数据

   ReadFile(hComm,inbuff,cs.cbInQue,&nBytesRead,NULL); // 接收COM 的数据
   // 转移数据到变量中
   inbuff[cs.cbInQue]= '\0';
   ss=inbuff;
   if(ss=="")
   {
   a="ff";
   tsp="ff";
   return (addr,tsp);
   }
   BS=ss.Length()*2+20;
   ss=AsciitoHex(inbuff,BS,inbuff1);
   Temp=ss;
 //  ss=ss.SubString(1,BS*2);
   PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
   ss=ss.SubString(3,2);
   if(ss=="0A")ss="10";
   if(ss=="0B")ss="11";
   if(ss=="0C")ss="12";
   if(ss=="0D")ss="13";
   if(ss=="0E")ss="14";
   if(ss=="0F")ss="15";
//   Temp=inbuff1;
//   a=Temp.SubString(StrToInt(ss)*2+10,1);
   //aa="1D0506071A011A021C011C023278";
   Temp=revdatazy(Temp);
//   return (addr,Temp);//////////////////////////////////测试用
   if(fhxorstr(Temp))
   {
   delay(60);
   tsp=Temp.Trim();
   }
   else
   {
   resendcount++;
   if(resendcount==10)
     {
     a="ff";
     tsp="ff";
     }
     else
     {
     Temp=Tempbat;
     goto resend;
     }
   }
//  Form1->mReceive->Clear();
//  Form1->mReceive->Text =tsp;
  return (addr,tsp);

}


//////////////////////////////////////////////////////////////////////////////////////////////////
String pprefresh(void)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney;
//////////////////////////////////////////////////////////
int p,i,n,bf;
String sstg,sp;
int pbclm=-1,pbno=-1,pbname=-1,pbdybm=-1,pbdianhua=-1,pbbeizhu=-1,pbfkcs=-1,pbdqkh=-1,pbxzsj=-1,pbzcrc=-1,pbfkrc=-1;
int pbyxrc=-1,pbxzcs=-1,pbdqccs=-1,pbdqkcs=-1,pbshkcs=-1,pbdqcje=-1,pbnbbh=-1;
for(i=0;i<Form1->StringGrid3->ColCount;i++)
     {
     sstg=Form1->StringGrid3->Cells[i][0];
      if(sstg=="编号")
          pbno=i;
      if(sstg=="姓名")
          pbname=i;
      if(sstg=="单元/部门")
         pbdybm=i;
      if(sstg=="联系方式")
          pbdianhua=i;
      if(sstg=="备注")
          pbbeizhu=i;
      if(sstg=="发卡次数")
          pbfkcs=i;
      if(sstg=="当前卡号")
          pbdqkh=i;
      if(sstg=="限制时间")
          pbxzsj=i;
      if(sstg=="注册日期")
          pbzcrc=i;
      if(sstg=="发卡日期")
          pbfkrc=i;
      if(sstg=="有效日期")
          pbyxrc=i;
      if(sstg=="限制次数")
          pbxzcs=i;
      if(sstg=="当前充次数")
          pbdqccs=i;
      if(sstg=="当前卡次数")
          pbdqkcs=i;
      if(sstg=="上回卡次数")
          pbshkcs=i;
      if(sstg=="当前充金额")
          pbdqcje=i;
      if(sstg=="挂失码")
          pbnbbh=i;
      if(sstg=="处理码")
          pbclm=i;
        }
    n=Form1->StringGrid3->RowCount;
    n=n-1;
    sp=Form1->sEdit1->Text;
for(p=0;p<n;p=p+1)
{
  nos=Form1->StringGrid3->Cells[0][p];
  if(sp==nos)
    {
    break;
    }
}
if(sp!=nos)
{
  p=n-16;

//  nos=Form1->StringGrid3->Cells[0][p];
//  if(nos!="")
//     p=p+1;
}

   ins="select * from userinfo where [no]=";
   ins+=Form1->sEdit1->Text.Trim();
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
    //   if(StrToHexYN(a5))
         bf=("0x"+("00"+a5))^00;
     //  else
     //    bf=0;
       nowsendcnt=IntToStr(bf);
     Form1->StringGrid3->OnSelectCell=NULL;
 //    n=Form1->StringGrid3->RowCount;
     Form1->StringGrid3->RowCount=n+1;
     if(pbno!=-1)
     Form1->StringGrid3->Cells[pbno][p]=no;
     if(pbname!=-1)
     Form1->StringGrid3->Cells[pbname][p]=name;
     if(pbdybm!=-1)
     Form1->StringGrid3->Cells[pbdybm][p]=Address;
     if(pbdianhua!=-1)
     Form1->StringGrid3->Cells[pbdianhua][p]=MobilePhone;
     if(pbbeizhu!=-1)
     Form1->StringGrid3->Cells[pbbeizhu][p]=note;
     if(pbfkcs!=-1)
     Form1->StringGrid3->Cells[pbfkcs][p]=fakacount;
     if(pbdqkh!=-1)
     Form1->StringGrid3->Cells[pbdqkh][p]=ucardid;
     if(pbxzsj!=-1)
     Form1->StringGrid3->Cells[pbxzsj][p]=useyxqyn;//yxqyn1;  //限制时间
     if(pbzcrc!=-1)
     Form1->StringGrid3->Cells[pbzcrc][p]=RegisterDate;
     if(pbfkrc!=-1)
     Form1->StringGrid3->Cells[pbfkrc][p]=fkdate;  //发卡日期
     if(pbyxrc!=-1)
     Form1->StringGrid3->Cells[pbyxrc][p]=endtime;
     if(pbxzcs!=-1)
     Form1->StringGrid3->Cells[pbxzcs][p]=usecountyn;
     if(pbdqccs!=-1)
     Form1->StringGrid3->Cells[pbdqccs][p]=nowsendcnt;   // 当前冲次数
     if(pbdqkcs!=-1)
     Form1->StringGrid3->Cells[pbdqkcs][p]=nowcrdcnt; //当前卡次数
     if(pbno!=-1)
     Form1->StringGrid3->Cells[pbshkcs][p]=lastcrdcnt; //上回卡次数
     if(pbdqcje!=-1)
     Form1->StringGrid3->Cells[pbdqcje][p]=nowmoney;  //当前冲金额
     if(pbnbbh!=-1)
     Form1->StringGrid3->Cells[pbnbbh][p]=UserCID;
     if(pbclm!=-1)
     Form1->StringGrid3->Cells[pbclm][p]=UserCID;

     Form1->StringGrid3->Rows[n]->Clear();
     }
 Form1->StringGrid3->OnSelectCell=Form1->StringGrid3SelectCell;
///////////////////////////////////////////////////////////
}
///////////////////////////////////////////////////////////////////////////////////////
String accesspoc(void)
{
TStringList *pTables = new TStringList;
String VisiblePoc="0";
String qstr,ss,ins,kk,no,openjbus="0";
String Allowedtimeyn="0",lockcomm="0",testcarddata="0",opencardd="0",jmshanqu0007="0",jmshanqu0815="0",chulimaini="0";
String userlimtype="0",userlim1="0",userlim2="0",userlim3="0",userlim4="0",JBUS="0",huifumima="0",huifumimayn="0";
String addlastcntyn="0",ucardid="0",yxqyn1="0",fkdate="0",nowcrdcnt="0",lastcrdcnt="0",nowmoney="0",addrguanlian="0";
String yxqyn="0",money="0",fangqianfan="0",userpuid="0",nofloormoney="0",floorlock="0",jbusyns="0",floorselects="0",gonggongceng="0";
String faddr1="0",faddr2="0",faddr3="0",faddr4="0",zjsd_enyn="0",Intotimeyn="0",Intotime1="0",Intotime2="0",Intotime3="0",Intotime4="0";
///--------------------------------

  //  tcon->ADOConnection1->GetTableNames("SYDT.mdb","*.*",False,False,Form1->sListBox1->Items);

    tcon1->ADOConnection1->GetTableNames(pTables);
    for(int i=0; i<pTables->Count; i++)
{
    // 依次取出Sheet名称
    ss=pTables->Strings[i];
    if(ss=="VisiblePoc")
          VisiblePoc="1";
}
if(VisiblePoc=="0"){

 qstr="CREATE TABLE VisiblePoc([no] counter PRIMARY KEY,vcname CHAR(50),vcn1 CHAR(50),vcn2 CHAR(50)";
 qstr=qstr+",vcn3 CHAR(50),vcn4 CHAR(50),vcn5 CHAR(50),vcn6 CHAR(50),vcn7 CHAR(50),vcn8 CHAR(50)";
 qstr=qstr+",vcn9 CHAR(50),vcn10 CHAR(50),vcn11 CHAR(50),vcn12 CHAR(50),vcn13 CHAR(50),vcn14 CHAR(50)";
 qstr=qstr+",vcn15 CHAR(50),vcn16 CHAR(50),vcn17 CHAR(50),vcn18 CHAR(50),vcn19 CHAR(50),vcn20 CHAR(50)";
 qstr=qstr+",vcn21 CHAR(50),vcn22 CHAR(50),vcn23 CHAR(50),vcn24 CHAR(50),vcn25 CHAR(50),vcn26 CHAR(50)";
 qstr=qstr+",vcn27 CHAR(50),vcn28 CHAR(50),vcn29 CHAR(50),vcn30 CHAR(50),vcn31 CHAR(50),vcn32 CHAR(50)";
 qstr=qstr+",vcn33 CHAR(50),vcn34 CHAR(50),vcn35 CHAR(50),vcn36 CHAR(50),vcn37 CHAR(50),vcn38 CHAR(50))";
// qstr=qstr+",vcn39 CHAR(50),vcn40 CHAR(50),vcn41 CHAR(50),vcn42 CHAR(50),vcn43 CHAR(50),vcn44 CHAR(50))";
// qstr=qstr+",vcn45 CHAR(50),vcn46 CHAR(50),vcn47 CHAR(50),vcn48 CHAR(50),vcn49 CHAR(50),vcn50 CHAR(50))";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入

    tcon1->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon1->adoquery->SQL->Clear();
          tcon1->adoquery->SQL->Add("Select * from VisiblePoc");
          tcon1->adoquery->Open();
          tcon1->adoquery->Insert();

          tcon1->adoquery->FieldByName("vcname")->AsString="admin";
          tcon1->adoquery->FieldByName("vcn1")->AsString="0";
          tcon1->adoquery->FieldByName("vcn2")->AsString="0";
          tcon1->adoquery->FieldByName("vcn3")->AsString="1";
          tcon1->adoquery->FieldByName("vcn4")->AsString="1";
          tcon1->adoquery->FieldByName("vcn5")->AsString="1";


         tcon1->adoquery->Post();
         tcon1->adoquery->Close();

//    ins="ALTER TABLE VisiblePoc ADD  ";
//    ins=ins+"vcn39 CHAR(50),vcn40 CHAR(50),vcn41 CHAR(50),vcn42 CHAR(50),vcn43 CHAR(50),vcn44 CHAR(50)";
//    ins=ins+",vcn45 CHAR(50),vcn46 CHAR(50),vcn47 CHAR(50),vcn48 CHAR(50),vcn49 CHAR(50),vcn50 CHAR(50)";
//    tcon->adoquery->SQL->Clear();
//    tcon->adoquery->SQL->Add(ins);
//    tcon->adoquery->ExecSQL();       //将卡号写入
}
///------------------------------------------------
qstr="select * from other ";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->Open();

  if(tcon1->adoquery->FieldCount !=0){

//    tcon->adoquery->GetFieldNames(sListBox1->Items);
    for (int i=0;i<tcon1->adoquery->FieldCount;i++)
    {
     ss=tcon1->adoquery->Fields->Fields[i]->FieldName;
     if(ss=="Allowedtimeyn")
          Allowedtimeyn="1";
     if(ss=="lockcomm")
          lockcomm="1";
     if(ss=="testcarddata")
          testcarddata="1";
     if(ss=="opencardd")
          opencardd="1";
     if(ss=="jmshanqu0007")
          jmshanqu0007="1";
     if(ss=="jmshanqu0815")
          jmshanqu0815="1";
     if(ss=="nofloormoney")
          nofloormoney="1";
     if(ss=="floorlock")
          floorlock="1";
     if(ss=="huifumima")
          huifumima="1";
     if(ss=="huifumimayn")
          huifumimayn="1";
     if(ss=="chulimaini")
          chulimaini="1";
     if(ss=="openjbus")
          openjbus="1";


    }
  }

 ////////--------------------------------
 if(Allowedtimeyn=="0"){
    qstr="ALTER TABLE other ADD Allowedtimeyn char(50)";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
 if(lockcomm=="0"){
    qstr="ALTER TABLE other ADD lockcomm char(50)";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
 if(testcarddata=="0"){
    qstr="ALTER TABLE other ADD testcarddata char(50)";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
 if(opencardd=="0"){
    qstr="ALTER TABLE other ADD opencardd char(50)";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入

    qstr="update other set opencardd='FFFFFFFFFFFFFFFF";
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
 }
 if(jmshanqu0007=="0"){
    qstr="ALTER TABLE other ADD jmshanqu0007 char(50)"; //default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入

    qstr="update other set jmshanqu0007='255";
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
 }
 if(jmshanqu0815=="0"){
    qstr="ALTER TABLE other ADD jmshanqu0815 char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入

    qstr="update other set jmshanqu0815='255";
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
 }
  if(nofloormoney=="0"){
    qstr="ALTER TABLE other ADD nofloormoney char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入

    qstr="update other set nofloormoney='1";
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
 }
  if(nofloormoney=="0"){
    qstr="ALTER TABLE other ADD floorlock char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
  if(huifumima=="0"){
    qstr="ALTER TABLE other ADD huifumima char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入  
 }
  if(huifumimayn=="0"){
    qstr="ALTER TABLE other ADD huifumimayn char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
  if(chulimaini=="0"){
    qstr="ALTER TABLE other ADD chulimaini char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
  if(openjbus=="0"){
    qstr="ALTER TABLE other ADD openjbus char(50)"; // default 255";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
 }
///////////****************************************************************
///////////****************************************************************

qstr="select * from userinfo ";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->Open();

  if(tcon->adoquery->FieldCount !=0){

//    tcon->adoquery->GetFieldNames(sListBox1->Items);
    for (int i=0;i<tcon->adoquery->FieldCount;i++)
    {
     ss=tcon->adoquery->Fields->Fields[i]->FieldName;
     if(ss=="userlimtype")
          userlimtype="1";
     if(ss=="userlim1")
          userlim1="1";
     if(ss=="userlim2")
          userlim2="1";
     if(ss=="userlim3")
          userlim3="1";
     if(ss=="userlim4")
          userlim4="1";
     if(ss=="JBUS")
          JBUS="1";
     if(ss=="addlastcntyn")
          addlastcntyn="1";
     if(ss=="ucardid")
          ucardid="1";
     if(ss=="yxqyn1")
          yxqyn1="1";
     if(ss=="fkdate")
          fkdate="1";
     if(ss=="nowcrdcnt")
          nowcrdcnt="1";
     if(ss=="lastcrdcnt")
          lastcrdcnt="1";
     if(ss=="nowmoney")
          nowmoney="1";
     if(ss=="userpuid")
          userpuid="1";
    }
  }

 ////////--------------------------------
 if(userlimtype=="0"){
    qstr="ALTER TABLE userinfo ADD userlimtype char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(userlim1=="0"){
    qstr="ALTER TABLE userinfo ADD userlim1 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(userlim2=="0"){
    qstr="ALTER TABLE userinfo ADD userlim2 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(userlim3=="0"){
    qstr="ALTER TABLE userinfo ADD userlim3 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(userlim4=="0"){
    qstr="ALTER TABLE userinfo ADD userlim4 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(JBUS=="0"){
    qstr="ALTER TABLE userinfo ADD JBUS char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(addlastcntyn=="0"){
    qstr="ALTER TABLE userinfo ADD addlastcntyn char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(ucardid=="0"){
    qstr="ALTER TABLE userinfo ADD ucardid char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(yxqyn1=="0"){
    qstr="ALTER TABLE userinfo ADD yxqyn1 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(fkdate=="0"){
    qstr="ALTER TABLE userinfo ADD fkdate char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(nowcrdcnt=="0"){
    qstr="ALTER TABLE userinfo ADD nowcrdcnt char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(lastcrdcnt=="0"){
    qstr="ALTER TABLE userinfo ADD lastcrdcnt char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
 if(nowmoney=="0"){
    qstr="ALTER TABLE userinfo ADD nowmoney char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
 }
kk="select *from userinfo where [No]>=all(select max([NO]) from  userinfo)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
no=tcon->adoquery->FieldByName("No")->AsString.Trim();
if(no=="")
    no="0";

 if(userpuid=="0"){
    qstr="ALTER TABLE userinfo ADD userpuid int "; // default '";
//    qstr+=no;
//    qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    ///////////////////////////////////////////////////////////////////
  // tcon->UserSetado->Active =false;
    ins="update userinfo set [userpuid]='";
    ins+=no;
    ins+="' where [no]=";
    ins+=no;
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(ins);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////////////////////////////////////////////
 }

///////////****************************************************************
///////////****************************************************************

qstr="select * from elevatorinfo ";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->Open();

  if(tcon->adoquery->FieldCount !=0){

//    tcon->adoquery->GetFieldNames(sListBox1->Items);
    for (int i=0;i<tcon->adoquery->FieldCount;i++)
    {
     ss=tcon->adoquery->Fields->Fields[i]->FieldName;
     if(ss=="yxqyn")
          yxqyn="1";
     if(ss=="fangqianfan")
       fangqianfan="1";
     if(ss=="jbusyns")
       jbusyns="1";

     if(ss=="faddr1")
       faddr1="1";
     if(ss=="faddr2")
       faddr2="1";
     if(ss=="faddr3")
       faddr3="1";
     if(ss=="faddr4")
       faddr4="1";
     if(ss=="zjsd_enyn")
       zjsd_enyn="1";

     if(ss=="Intotimeyn")
        Intotimeyn="1";
     if(ss=="Intotime1")
        Intotime1="1";
     if(ss=="Intotime2")
        Intotime2="1";
     if(ss=="Intotime3")
        Intotime3="1";
     if(ss=="Intotime4")
        Intotime4="1";
     if(ss=="floorselects")
        floorselects="1";
     if(ss=="gonggongceng")
        gonggongceng="1";
     if(ss=="addrguanlian")
        addrguanlian="1";

    }
  }

 ////////--------------------------------
 if(yxqyn=="0"){
    qstr="ALTER TABLE elevatorinfo ADD yxqyn char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(fangqianfan=="0"){
    qstr="ALTER TABLE elevatorinfo ADD fangqianfan char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
 if(jbusyns=="0"){
    qstr="ALTER TABLE elevatorinfo ADD jbusyns char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
 if(faddr1=="0"){
    qstr="ALTER TABLE elevatorinfo ADD faddr1 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
 if(faddr2=="0"){
    qstr="ALTER TABLE elevatorinfo ADD faddr2 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
 if(faddr3=="0"){
    qstr="ALTER TABLE elevatorinfo ADD faddr3 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
 if(faddr4=="0"){
    qstr="ALTER TABLE elevatorinfo ADD faddr4 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(zjsd_enyn=="0"){
    qstr="ALTER TABLE elevatorinfo ADD zjsd_enyn char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(Intotimeyn=="0"){
    qstr="ALTER TABLE elevatorinfo ADD Intotimeyn char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(Intotime1=="0"){
    qstr="ALTER TABLE elevatorinfo ADD Intotime1 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(Intotime2=="0"){
    qstr="ALTER TABLE elevatorinfo ADD Intotime2 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(Intotime3=="0"){
    qstr="ALTER TABLE elevatorinfo ADD Intotime3 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(Intotime4=="0"){
    qstr="ALTER TABLE elevatorinfo ADD Intotime4 char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(floorselects=="0"){
    qstr="ALTER TABLE elevatorinfo ADD floorselects char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(gonggongceng=="0"){
    qstr="ALTER TABLE elevatorinfo ADD gonggongceng char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
  if(addrguanlian=="0"){
    qstr="ALTER TABLE elevatorinfo ADD addrguanlian char(50)";        
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }

///////////****************************************************************
///////////****************************************************************

qstr="select * from floor ";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->Open();

  if(tcon->adoquery->FieldCount !=0){

//    tcon->adoquery->GetFieldNames(sListBox1->Items);
    for (int i=0;i<tcon->adoquery->FieldCount;i++)
    {
     ss=tcon->adoquery->Fields->Fields[i]->FieldName;
     if(ss=="money")
          money="1";
    }
  }

 ////////--------------------------------
 if(money=="0"){
    qstr="ALTER TABLE floor  ADD  [money]  char(50)";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
 }
}
///////////////////////////////////////////////////////////////////////////////////
String enincidbianma(String Temp)
{
String ss,yy,mm,dd,ta,tb,tc,td,ins,userCID123xor;
String tas1,tas2,tas3,tas4,tas5,tas6,tas7,tas8,tas9,tds;
int sts;
int te,idpi,te1;
    String tte,tta,idps,sdp;
int ti,bf,bf1,bf2;
int dsang=0,dzhong=0,dxia=0;
String stsang,stzhong,stxia,c,b,d,scdid,scdidxor,spoid,spoidxor,retta;

char datalist[256]=
{
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01 ,0x4E ,0x04 ,0xB4 ,0x32 ,0x53 ,0x4D ,0xD6 ,0x08 ,0xC6 ,0x76 ,0x38,
0x62 ,0xA8 ,0xCB ,0x78 ,0xB6 ,0xF1 ,0xB8 ,0x49 ,0xF0 ,0x95 ,0xCD ,0x5C ,0x7D ,0xCA ,0x2B ,0x31,
0xB2 ,0xB0 ,0x59 ,0x39 ,0x15 ,0x1B ,0xE0 ,0xBB ,0x0D ,0x9B ,0x8B ,0xE5 ,0xC8 ,0x90 ,0x6E ,0xCF,
0xAC ,0x1C ,0x2E ,0x5D ,0xE9 ,0x9D ,0x65 ,0xA9 ,0x7E ,0xBD ,0x63 ,0x23 ,0x19 ,0x5F ,0x9A ,0xA4
};

Temp="000000"+Temp;
Temp=Temp.SubString(Temp.Length()-5,6);


    ins="select userCID from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   userCID123=tcon1->adoquery->FieldByName("userCID")->AsString.Trim();
   userCID123=userCID123+"000000000000";
   userCID123=userCID123.SubString(1,6);
   }
      tb="0x"+userCID123.SubString(1,2);
        ta="0x"+userCID123.SubString(3,2);
        tc=tb^ta;
        ta="0x"+userCID123.SubString(5,2);
        tc=tc^ta;
        userCID123xor=IntToHex(StrToInt(tc),2);

ss=Temp;
yy=ss.SubString(1,2);
mm=ss.SubString(3,2);
dd=ss.SubString(5,2);

        tb="0x"+yy;
        ta="0x"+mm;
        tc=tb^ta;
        ta="0x"+dd;
        tc=tc^ta;
        tc=IntToHex(StrToInt(tc),2);
        tta=yy+mm+dd+tc;

        bf=("0x"+("00"+yy))^00;
        bf1=("0x"+("00"+mm))^00;
        bf2=("0x"+("00"+dd))^00;


        tc=IntToHex(bf+bf1+bf2,2);
        tc=tc.SubString(tc.Length()-1,2);
        tc=tta+tc+userCID123xor+userCID123;


        tas1=tc.SubString(1,2);
        tas2=tc.SubString(3,2);
        tas3=tc.SubString(5,2);
        tas4=tc.SubString(7,2);
        tas5=tc.SubString(9,2);
        tas6=tc.SubString(11,2);
        tas7=tc.SubString(13,2);
        tas8=tc.SubString(15,2);
        tas9=tc.SubString(17,2);

        tta=tas1+tas7+tas2+tas8+tas3+tas9+tas4+tas6+tas5;



////------------------------------------
      //      tta="910033951129923459";
      stsang=tta.SubString(1,6);
      stzhong=tta.SubString(7,6);
      stxia =tta.SubString(13,6);
      dsang=0;
      dzhong=0;
      dxia=0;
      tte=stsang.SubString(6,1);
      te1=("0x"+("00"+tte))^00;
      tte=IntToHex(te1<<7,2);
      tte=tte.SubString(tte.Length()-1,2);
       if(tte=="80")
       {
       dsang=1;
       }
       tte=stzhong.SubString(6,1);
      te1=("0x"+("00"+tte))^00;
       tte=IntToHex(te1<<7,2);
      tte=tte.SubString(tte.Length()-1,2);
       if(tte=="80")
       {
       dzhong=1;
       }
      tte=stxia.SubString(6,1);
      te1=("0x"+("00"+tte))^00;
      tte=IntToHex(te1<<7,2);
      tte=tte.SubString(tte.Length()-1,2);
       if(tte=="80")
       {
       dxia=1;
       }

      te=("0x"+("00"+stsang))^00;
      te=te>>1;
      if(dxia==1)
        te=te+8388608;
      stsang=IntToHex(te,6);
   //   stsang=stsang.SubString(stsang.Length()-5,6);

      te=("0x"+("00"+stzhong))^00;
      te=te>>1;
      if(dzhong==1)
        te=te+8388608;
      stzhong=IntToHex(te,6);
//      stzhong=stzhong.SubString(stzhong.Length()-5,6);

      te=("0x"+("00"+stxia))^00;
      te=te>>1;
      if(dsang==1)
        te=te+8388608;
      stxia=IntToHex(te,6);
//      stxia=stxia.SubString(stxia.Length()-5,6);


      tta=stsang+stzhong+stxia;
      tc="";
sts=tta.Length();
    for(int i=1;sts>i;i=i+2)
      {
        sdp=tta.SubString(i,2);
        if(sdp=="")
         {
           tta="ff";
           return (tta);
         }
        idps="0x"+sdp;
        idpi=StrToInt(idps);
        te=datalist[idpi];
        tc=tc+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
     }
      tta=tc;
return (tta);
}
/////////////////////////////////////////////////////////////////////////////////////////
String reincidbianma(String Temp)
{
String ss,yy,mm,dd,ta,tb,tc,td,ins,userCID123xor;
String tas1,tas2,tas3,tas4,tas5,tas6,tas7,tas8,tas9,tds;
int sts;
int te,idpi,te1;
    String tte,tta,idps,sdp;
int ti,bf,bf1,bf2;
int dsang=0,dzhong=0,dxia=0;
String stsang,stzhong,stxia,c,b,d,scdid,scdidxor,spoid,spoidxor,retta;

char datalist[256]=
{
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01 ,0x4E ,0x04 ,0xB4 ,0x32 ,0x53 ,0x4D ,0xD6 ,0x08 ,0xC6 ,0x76 ,0x38,
0x62 ,0xA8 ,0xCB ,0x78 ,0xB6 ,0xF1 ,0xB8 ,0x49 ,0xF0 ,0x95 ,0xCD ,0x5C ,0x7D ,0xCA ,0x2B ,0x31,
0xB2 ,0xB0 ,0x59 ,0x39 ,0x15 ,0x1B ,0xE0 ,0xBB ,0x0D ,0x9B ,0x8B ,0xE5 ,0xC8 ,0x90 ,0x6E ,0xCF,
0xAC ,0x1C ,0x2E ,0x5D ,0xE9 ,0x9D ,0x65 ,0xA9 ,0x7E ,0xBD ,0x63 ,0x23 ,0x19 ,0x5F ,0x9A ,0xA4
};

Temp="000000000000000000"+Temp;
Temp=Temp.SubString(Temp.Length()-17,18);

      tc="";
sts=Temp.Length();
tta="";
retta="";
//Temp="F98AA470";  /////////////////////////////////////////////////////////////////////////////
sts=Temp.Length();
    for(int i=1;sts>i;i=i+2)
      {
        sdp=Temp.SubString(i,2);
        if(sdp=="")
           {
           tta="ff";
           return (tta);
           }
           for(int j=0;256>=j;j++)
            {
            te=datalist[j];
            tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
            if(tta==sdp)
             {
             retta=retta+IntToHex(j,2);
             break;
             }
            }
     }
      tta=retta;

//      tta="910033951129123456";
      stsang=tta.SubString(1,6);
      stzhong=tta.SubString(7,6);
      stxia =tta.SubString(13,6);
      dsang=0;
      dzhong=0;
      dxia=0;
      tte=stsang.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dsang=1;
       }
       tte=stzhong.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dzhong=1;
       }
      tte=stxia.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dxia=1;
       }

      te=("0x"+("00"+stsang))^00;
      te=te<<1;
      if(dxia==1)
        te=te+1;
      stsang=IntToHex(te,8);
      stsang=stsang.SubString(stsang.Length()-5,6);

      te=("0x"+("00"+stzhong))^00;
      te=te<<1;
      if(dzhong==1)
        te=te+1;
      stzhong=IntToHex(te,8);
      stzhong=stzhong.SubString(stzhong.Length()-5,6);

      te=("0x"+("00"+stxia))^00;
      te=te<<1;
      if(dsang==1)
        te=te+1;
      stxia=IntToHex(te,8);
      stxia=stxia.SubString(stxia.Length()-5,6);

      tc=stsang+stzhong+stxia;

        tas1=tc.SubString(1,2);
        tas2=tc.SubString(3,2);
        tas3=tc.SubString(5,2);
        tas4=tc.SubString(7,2);
        tas5=tc.SubString(9,2);
        tas6=tc.SubString(11,2);
        tas7=tc.SubString(13,2);
        tas8=tc.SubString(15,2);
        tas9=tc.SubString(17,2);

        tta=tas1+tas3+tas5+tas7+tas9+tas8+tas2+tas4+tas6;



    ins="select userCID from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   userCID123=tcon1->adoquery->FieldByName("userCID")->AsString.Trim();
   userCID123=userCID123+"000000000000";
   userCID123=userCID123.SubString(1,6);    
   }
   tds=tta.SubString(13,6);
   if(tds!=userCID123)
   {
   tta="ff";
   return (tta);
   }
        tb="0x"+userCID123.SubString(1,2);
        ta="0x"+userCID123.SubString(3,2);
        tc=tb^ta;
        ta="0x"+userCID123.SubString(5,2);
        tc=tc^ta;
        userCID123xor=IntToHex(StrToInt(tc),2);
   tds=tta.SubString(11,2);
   if(tds!=userCID123xor)
   {
   tta="ff";
   return (tta);
   }

ss=tta.SubString(1,6);
yy=ss.SubString(1,2);
mm=ss.SubString(3,2);
dd=ss.SubString(5,2);

        tb="0x"+yy;
        ta="0x"+mm;
        tc=tb^ta;
        ta="0x"+dd;
        tc=tc^ta;
        tc=IntToHex(StrToInt(tc),2);

        tds=tta.SubString(7,2);
   if(tds!=tc)
   {
   tta="ff";
   return (tta);
   }


        bf=("0x"+("00"+yy))^00;
        bf1=("0x"+("00"+mm))^00;
        bf2=("0x"+("00"+dd))^00;


        tc=IntToHex(bf+bf1+bf2,2);
        tc=tc.SubString(tc.Length()-1,2);

     //   tc=IntToHex((StrToInt(yy)+StrToInt(mm)+StrToInt(dd)),2);

        tds=tta.SubString(9,2);
   if(tds!=tc)
   {
   tta="ff";
   return (tta);
   }
        tta=tta.SubString(1,6);
return (tta);
}
/////////////////////////////////////////////////////////////////////////////////////
String userjilu(String userno)
{
String ins,no,name,Address,MobilePhone,RegisterDate,endtime,selectin,note,useyxqyn;
String usecountyn,usecount,UserCID,carduse,cardid,elevatoraddr,fakacount,bindcon;
String userlimtype,userlim1,userlim2,userlim3,userlim4,JBUS,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney,userpuid;
   ins="select * from userinfo where [no]=";
   ins+=userno;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 name=tcon->adoquery->FieldByName("name")->AsString.Trim();
 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
 MobilePhone=tcon->adoquery->FieldByName("MobilePhone")->AsString.Trim();

 RegisterDate=tcon->adoquery->FieldByName("RegisterDate")->AsString.Trim();
 endtime=tcon->adoquery->FieldByName("EndTime")->AsString.Trim();
 selectin=tcon->adoquery->FieldByName("selectin")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();



 usecountyn=tcon->adoquery->FieldByName("usecountyn")->AsString.Trim();
 useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim();
 UserCID=tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
 carduse=tcon->adoquery->FieldByName("carduse")->AsString.Trim();
 cardid=tcon->adoquery->FieldByName("cardid")->AsString.Trim();
 elevatoraddr=tcon->adoquery->FieldByName("elevatoraddr")->AsString.Trim();
 fakacount=tcon->adoquery->FieldByName("fakacount")->AsString.Trim();
 bindcon=tcon->adoquery->FieldByName("bindcon")->AsString.Trim();



 userlimtype=tcon->adoquery->FieldByName("userlimtype")->AsString.Trim();
 if(userlimtype=="")
     userlimtype="0";
 userlim1="00"+tcon->adoquery->FieldByName("userlim1")->AsString.Trim();
  userlim1=userlim1.SubString(userlim1.Length()-1,2 );
 userlim2="00"+tcon->adoquery->FieldByName("userlim2")->AsString.Trim();
  userlim2=userlim2.SubString(userlim2.Length()-1,2 );
 userlim3="00"+tcon->adoquery->FieldByName("userlim3")->AsString.Trim();
  userlim3=userlim3.SubString(userlim3.Length()-1,2 );
 userlim4="00"+tcon->adoquery->FieldByName("userlim4")->AsString.Trim();
  userlim4=userlim4.SubString(userlim4.Length()-1,2 );

JBUS=tcon->adoquery->FieldByName("JBUS")->AsString.Trim();
ucardid=tcon->adoquery->FieldByName("ucardid")->AsString.Trim();
yxqyn1=tcon->adoquery->FieldByName("yxqyn1")->AsString.Trim();
fkdate=tcon->adoquery->FieldByName("fkdate")->AsString.Trim();
nowcrdcnt=tcon->adoquery->FieldByName("nowcrdcnt")->AsString.Trim();
lastcrdcnt=tcon->adoquery->FieldByName("lastcrdcnt")->AsString.Trim();
nowmoney=tcon->adoquery->FieldByName("nowmoney")->AsString.Trim();
userpuid=tcon->adoquery->FieldByName("userpuid")->AsString.Trim();
        }
          tcon2->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon2->adoquery->SQL->Clear();
          tcon2->adoquery->SQL->Add("Select * from userinfotxt");
          tcon2->adoquery->Open();
          tcon2->adoquery->Insert();


          tcon2->adoquery->FieldByName("usersno")->AsString=no;
          tcon2->adoquery->FieldByName("name")->AsString=name;
          tcon2->adoquery->FieldByName("Address")->AsString=Address;
          tcon2->adoquery->FieldByName("MobilePhone")->AsString=MobilePhone;
          tcon2->adoquery->FieldByName("RegisterDate")->AsString=RegisterDate;
          tcon2->adoquery->FieldByName("EndTime")->AsString=endtime;
          tcon2->adoquery->FieldByName("UserCID")->AsString=UserCID;
          tcon2->adoquery->FieldByName("selectin")->AsString=selectin;
          tcon2->adoquery->FieldByName("note")->AsString=note;

          tcon2->adoquery->FieldByName("usecountyn")->AsString=usecountyn;
          tcon2->adoquery->FieldByName("useyxqyn")->AsString=useyxqyn;
          tcon2->adoquery->FieldByName("usecount")->AsString=usecount;
          tcon2->adoquery->FieldByName("carduse")->AsString=carduse;
          tcon2->adoquery->FieldByName("cardid")->AsString=cardid;
          tcon2->adoquery->FieldByName("elevatoraddr")->AsString=elevatoraddr;
          tcon2->adoquery->FieldByName("fakacount")->AsString=fakacount;

          tcon2->adoquery->FieldByName("bindcon")->AsString=bindcon;
          tcon2->adoquery->FieldByName("userlimtype")->AsString=userlimtype;
          tcon2->adoquery->FieldByName("userlim1")->AsString=userlim1;
          tcon2->adoquery->FieldByName("userlim2")->AsString=userlim2;
          tcon2->adoquery->FieldByName("userlim3")->AsString=userlim3;
          tcon2->adoquery->FieldByName("userlim4")->AsString=userlim4;
          tcon2->adoquery->FieldByName("JBUS")->AsString=JBUS;

          tcon2->adoquery->FieldByName("ucardid")->AsString=ucardid;
          tcon2->adoquery->FieldByName("yxqyn1")->AsString=yxqyn1;
          tcon2->adoquery->FieldByName("fkdate")->AsString=fkdate;
          tcon2->adoquery->FieldByName("nowcrdcnt")->AsString=nowcrdcnt;
          tcon2->adoquery->FieldByName("lastcrdcnt")->AsString=lastcrdcnt;
          tcon2->adoquery->FieldByName("nowmoney")->AsString=nowmoney;

          tcon2->adoquery->FieldByName("userpuid")->AsString=userpuid;


         tcon2->adoquery->Post();
         tcon2->adoquery->Close();


}
/////////////////////////////////////////////////////////////////////////////////
String leijiahe(String Temp)
{
//String Temp="C08A360E7A0E000400838D8C0062E000";
Temp=Temp+"00000000000000000000000000000000";
Temp= Temp.SubString(1,32);
String b,d,c,e,g,ljh;
int f;

        b="0x00";
        d="0x00";
for(int j=1;j<32;j=j+2)
{
        c="0x"+Temp.SubString(j,2).Trim();
        e=b^c;
        f=StrToInt(d)+StrToInt(e);
        g=IntToHex(StrToInt(f),2);
        c="0x"+g.SubString(g.Length()-1,2).Trim();
        d=b^c;
}
ljh=g.SubString(g.Length()-1,2).Trim();
return(ljh);

}
///////////////////////////////////////////////////////////////////////////////////////////
String leijiayihuohe(String Temp)
{
//String Temp="C08A360E7A0E000400838D8C0062E000";
String b,d,c,e,g,ljh,h;
int f;

        b="0x00";
        d="0x00";
        h="0x00";
for(int j=1;j<Temp.Length();j=j+2)
{
        c="0x"+Temp.SubString(j,2).Trim();
        e=b^c;
        h=h^c;
        f=StrToInt(d)+StrToInt(e);
        g=IntToHex(StrToInt(f),2);
        c="0x"+g.SubString(g.Length()-1,2).Trim();
        d=b^c;
}
h=IntToHex(StrToInt(h),2);
ljh=g.SubString(g.Length()-1,2).Trim()+h;
return(ljh);

}
/////////////////////////////////////////////////////////////////////////////////
String cardidpwdpocw(char Datas[8])
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
/*
    char addrlist[256]=
 {0x00 ,0xC2 ,0x96 ,0x22 ,0xD2 ,0x95 ,0x00 ,0xD2 ,0x96 ,0x00 ,0x00 ,0xC2 ,0x96 ,0x22 ,0x7E ,0x08,
  0x33 ,0x92 ,0x95 ,0x00 ,0x00 ,0xD2 ,0x96 ,0x00 ,0x00 ,0xC2 ,0x96 ,0x00 ,0xDE ,0xF2 ,0xD2 ,0x95,
  0x00 ,0xD2 ,0x96 ,0x00 ,0x7C ,0xFF ,0x00 ,0xA2 ,0x95 ,0x50 ,0x11 ,0xDC ,0xF9 ,0x7C ,0xFF ,0x00,
  0xA2 ,0x95 ,0x50 ,0x08 ,0xDC ,0xF9 ,0xD2 ,0x04 ,0x00 ,0x22 ,0x80 ,0xFE ,0x00 ,0xC2 ,0x04 ,0xC2,
  0x96 ,0x22 ,0x80 ,0xFE ,0xD2 ,0x95 ,0x7E ,0x08 ,0x00 ,0x00 ,0xD2 ,0x96 ,0x00 ,0x00 ,0x00 ,0xA2,
  0x95 ,0x33 ,0xC2 ,0x96 ,0x00 ,0x00 ,0xDE ,0xF0 ,0x22 ,0x00 ,0xB4 ,0x6C ,0x25 ,0x7A ,0xFF ,0xC2,
  0x98 ,0x00 ,0x20 ,0x98 ,0x09 ,0x20 ,0x98 ,0x06 ,0xDA ,0xF8 ,0x00 ,0x80 ,0x77 ,0x00 ,0x00 ,0xC2,
  0x98 ,0xE5 ,0x99 ,0xB4 ,0x69 ,0x6E ,0x7A ,0xFF ,0x00 ,0x20 ,0x98 ,0x0A ,0x20 ,0x98 ,0x07 ,0xDA,
  0xF8 ,0x00 ,0x00 ,0x80 ,0x5F ,0x00 ,0x00 ,0xC2 ,0x98 ,0xE5 ,0x99 ,0xB4 ,0x6E ,0x56 ,0x7A ,0xFF,
  0x00 ,0x20 ,0x98 ,0x09 ,0x20 ,0x98 ,0x06 ,0xDA ,0xF8 ,0x00 ,0x80 ,0x48 ,0x00 ,0x00 ,0xC2 ,0x98,
  0xE5 ,0x99 ,0xB4 ,0x6B ,0x3F ,0x00 ,0xD2 ,0x97 ,0x00 ,0x00 ,0x00 ,0x74 ,0x4F ,0xF5 ,0x99 ,0x30,
  0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0x74 ,0x4B ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0x74,
  0xED ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0xE5 ,0x45 ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD,
  0xC2 ,0x99 ,0x00 ,0xE5 ,0x46 ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0x00 ,0x00 ,0xC2,
  0x97 ,0x00 ,0x22 ,0x22 ,0x00 ,0x00 ,0x22 ,0x22 ,0x00 ,0x20 ,0x0B ,0xFC ,0xD2 ,0x0B ,0x00 ,0x12,
  0x3E ,0xD0 ,0x12 ,0x3E ,0x0C ,0x20 ,0x41 ,0x75 ,0x75 ,0x7F ,0x64 ,0x12 ,0x3E ,0x32 ,0x20 ,0x40 };
     char addrlist1[256]=
 { 0xC2 ,0x1B ,0x00 ,0x30 ,0x1C ,0x14 ,0xE5 ,0x40 ,0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A,
   0x0B ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00 ,0xC2 ,0x1C ,0x00 ,0x30 ,0x1D ,0x14 ,0xE5 ,0x40,
   0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A ,0x0C ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00,
   0xC2 ,0x1D ,0x00 ,0x30 ,0x1E ,0x14 ,0xE5 ,0x40 ,0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A,
   0x0D ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00 ,0xC2 ,0x1E ,0x00 ,0x30 ,0x1F ,0x14 ,0xE5 ,0x40,
   0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A ,0x0E ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00,
   0xC2 ,0x1F ,0x00 ,0xD2 ,0x02 ,0x00 ,0x00 ,0xD2 ,0x02 ,0x00 ,0x00 ,0x00 ,0x78 ,0xB0 ,0xE6 ,0x04,
   0xF6 ,0xC3 ,0x94 ,0x10 ,0x40 ,0x22 ,0x20 ,0x64 ,0x13 ,0x20 ,0x4A ,0x10 ,0x20 ,0x62 ,0x0D ,0x20,
   0x63 ,0x0A ,0xC2 ,0x64 ,0xC2 ,0x4A ,0xC2 ,0x62 ,0xC2 ,0x63 ,0x80 ,0x0C ,0x00 ,0xC2 ,0x64 ,0xC2,
   0x4A ,0xC2 ,0x62 ,0xC2 ,0x63 ,0x7A ,0x04 ,0x00 ,0x00 ,0x20 ,0x64 ,0x02 ,0xC2 ,0x4A ,0x00 ,0x20,
   0x4A ,0x02 ,0xC2 ,0x64 ,0x00 ,0xD5 ,0x3F ,0x08 ,0x00 ,0xD2 ,0x03 ,0x30 ,0x2C ,0x00 ,0x00 ,0x00,
   0x00 ,0x00 ,0x02 ,0x04 ,0x72 ,0x00 ,0x02 ,0x04 ,0x72 ,0x00 ,0x75 ,0x4B ,0x00 ,0x75 ,0x4B ,0x00,
   0x75 ,0x4B ,0x00 ,0x75 ,0x4B ,0x00 ,0xD2 ,0xDC ,0xC2 ,0xDC ,0xE5 ,0x80 ,0xD2 ,0xDC ,0xD2 ,0xDC,
   0x20 ,0xE4 ,0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0x20 ,0xE5 ,0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0x20 ,0xE6,
   0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0x20 ,0xE7 ,0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0xD2 ,0xDC ,0xC2 ,0xDC,
   0xD2 ,0xDC ,0x75 ,0xA0 ,0xFF ,0xC2 ,0xDC ,0xE5 ,0xA0 ,0xF5 ,0xF0 ,0xD2 ,0xDC ,0x53 ,0x4B ,0xFE };
            */
//{0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,
//0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,
//0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
//0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f};

char addrlist[256]=
//F6h, 71h, 52h, 90h, 8Ch, 04h, 51h, E2h, 59h, 5Bh, 93h, 5Ch, 56h, 67h, FCh, E6h
{0xF6,0x71,0x52,0x90,0x8C,0x04,0x51,0xE2,0x59,0x5B,0x93,0x5C,0x56,0x67,0xFC,0xE6,

//FDh, 8Ch, 25h, 11h, 08h, AAh, 90h, 3Dh, BDh, DBh, 37h, 8Dh, E2h, 58h, 58h, 5Ah
0xFD,0x8C,0x25,0x11,0x08,0xAA,0x90,0x3D,0xBD,0xDB,0x37,0x8D,0xE2,0x58,0x58,0x5A,

//4Fh, 95h, BFh, BDh, E8h, 3Fh, 1Ah, 61h, 9Bh, 89h, 65h, 99h, 44h, 48h, 76h, 3Fh
0x4F,0x95,0xBF,0xBD,0xE8,0x3F,0x1A,0x61,0x9B,0x89,0x65,0x99,0x44,0x48,0x76,0x3F,

//4Ah, B9h, 5Fh, 3Fh, 3Fh, 01h, 3Fh, E1h, B5h, D1h, 46h, AAh, D2h, 7Bh, 58h, 6Eh
0x4A,0xB9,0x5F,0x3F,0x3F,0x01,0x3F,0xE1,0xB5,0xD1,0x46,0xAA,0xD2,0x7B,0x58,0x6E,

//E7h, 4Ch, CFh, 9Eh, 3Fh, 50h, 19h, F5h, FAh, 12h, D0h, 76h, EDh, D0h, 77h, 5Ch
0xE7,0x4C,0xCF,0x9E,0x3F,0x50,0x19,0xF5,0xFA,0x12,0xD0,0x76,0xED,0xD0,0x77,0x5C,

//C1h, B4h, 68h, 02h, 58h, 96h, 73h, 06h, DFh, 79h, 44h, 3Fh, 3Fh, 43h, B2h, EBh
0xC1,0xB4,0x68,0x02,0x58,0x96,0x73,0x06,0xDF,0x79,0x44,0x3F,0x3F,0x43,0xB2,0xEB,

//34h, 31h, 42h, 56h, D1h, F8h, 7Eh, D0h, 8Ch, 3Fh, 60h, D4h, 66h, 72h, 12h, 3Fh
0x34,0x31,0x42,0x56,0xD1,0xF8,0x7E,0xD0,0x8C,0x3F,0x60,0xD4,0x66,0x72,0x12,0x3F,

//AFh, 7Dh, 3Fh, 36h, FFh, 2Dh, 9Bh, 7Dh, 91h, ADh, 4Fh, 3Fh, 73h, 55h, EEh, C0h
0xAF,0x7D,0x3F,0x36,0xFF,0x2D,0x9B,0x7D,0x91,0xAD,0x4F,0x3F,0x73,0x55,0xEE,0xC0,

//3Fh, 6Ch, 3Fh, E6h, 6Fh, FAh, FCh, 73h, 65h, 13h, 77h, 16h, 58h, 37h, 0Dh, 2Bh
0x3F,0x6C,0x3F,0xE6,0x6F,0xFA,0xFC,0x73,0x65,0x13,0x77,0x16,0x58,0x37,0x0D,0x2B,

//2Ah, F8h, A4h, 8Ch, CEh, 6Fh, F1h, F2h, CAh, 51h, 79h, 8Bh, 81h, 07h, 80h, DCh
0x2A,0xF8,0xA4,0x8C,0xCE,0x6F,0xF1,0xF2,0xCA,0x51,0x79,0x8B,0x81,0x07,0x80,0xDC,

//F6h, 9Fh, FDh, 05h, 4Dh, 59h, B6h, BCh, 38h, E6h, 7Dh, 26h, F3h, CEh, 74h, E1h
0xF6,0x9F,0xFD,0x05,0x4D,0x59,0xB6,0xBC,0x38,0xE6,0x7D,0x26,0xF3,0xCE,0x74,0xE1,

//84h, 3Bh, CEh, 9Fh, 99h, B7h, 53h, A5h, 7Eh, DFh, 87h, 69h, 24h, 3Fh, 91h, DEh
0x84,0x3B,0xCE,0x9F,0x99,0xB7,0x53,0xA5,0x7E,0xDF,0x87,0x69,0x24,0x3F,0x91,0xDE,

//62h, 45h, 6Bh, FCh, 68h, 3Fh, 57h, 89h, 64h, 3Fh, 41h, 3Fh, 9Fh, BBh, 9Fh, DEh
0x62,0x45,0x6B,0xFC,0x68,0x3F,0x57,0x89,0x64,0x3F,0x41,0x3F,0x9F,0xBB,0x9F,0xDE,

//3Fh, 3Fh, 72h, 2Ah, 3Fh, EDh, DCh, 50h, 54h, 7Ch, D0h, 5Bh, 6Eh, 3Fh, 3Fh, EBh
0x3F,0x3F,0x72,0x2A,0x3F,0xED,0xDC,0x50,0x54,0x7C,0xD0,0x5B,0x6E,0x3F,0x3F,0xEB,

//93h, 82h, EBh, 8Ah, 7Ch, 0Ah, E6h, F0h, 3Fh, 90h, 56h, ABh, 70h, 45h, F7h, FDh
0x93,0x82,0xEB,0x8A,0x7C,0x0A,0xE6,0xF0,0x3F,0x90,0x56,0xAB,0x70,0x45,0xF7,0xFD,

//CFh, 4Ch, 3Fh, F1h, 53h, 51h, EBh, 5Eh, 2Eh, B1h, 4Fh, 4Bh, F6h, 79h, 8Bh, 9Ah
0xCF,0x4C,0x3F,0xF1,0x53,0x51,0xEB,0x5E,0x2E,0xB1,0x4F,0x4B,0xF6,0x79,0x8B,0x9A };







     char addrlist1[256]=
//BAh, D2h, 1Eh, ECh, E1h, 3Fh, 8Fh, 96h, 4Ch, 4Fh, 27h, 51h, 3Fh, 41h, 3Fh, 0Bh
{0xBA,0xD2,0x1E,0xEC,0xE1,0x3F,0x8F,0x96,0x4C,0x4F,0x27,0x51,0x3F,0x41,0x3F,0x0B,

//CDh, 50h, C4h, 61h, 3Fh, 3Fh, D6h, 8Eh, E2h, 49h, 43h, 78h, FAh, E9h, 5Fh, 1Dh
0xCD,0x50,0xC4,0x61,0x3F,0x3F,0xD6,0x8E,0xE2,0x49,0x43,0x78,0xFA,0xE9,0x5F,0x1D,

//26h, 48h, 84h, 72h, CBh, A6h, 24h, 3Fh, FDh, 5Bh, 12h, D1h, 70h, E9h, D9h, 41h
0x26,0x48,0x84,0x72,0xCB,0xA6,0x24,0x3F,0xFD,0x5B,0x12,0xD1,0x70,0xE9,0xD9,0x41,

//CBh, D1h, 54h, 1Bh, D2h, 73h, 31h, 19h, 64h, BEh, BFh, 3Fh, 9Dh, 78h, 7Ah, A2h
0xCB,0xD1,0x54,0x1B,0xD2,0x73,0x31,0x19,0x64,0xBE,0xBF,0x3F,0x9D,0x78,0x7A,0xA2,

//ABh, 3Fh, 4Dh, 72h, EDh, 5Dh, FBh, BAh, 1Eh, 88h, B6h, 39h, 3Fh, CCh, 74h, DDh
0xAB,0x3F,0x4D,0x72,0xED,0x5D,0xFB,0xBA,0x1E,0x88,0xB6,0x39,0x3F,0xCC,0x74,0xDD,

//57h, 88h, 8Dh, 3Fh, 8Fh, CAh, 3Ah, 70h, A5h, F5h, BAh, 4Dh, E4h, AFh, 1Bh, 3Fh
0x57,0x88,0x8D,0x3F,0x8F,0xCA,0x3A,0x70,0xA5,0xF5,0xBA,0x4D,0xE4,0xAF,0x1B,0x3F,

//56h, 3Fh, 17h, 3Fh, 17h, 3Ah, F4h, FDh, 2Ah, 0Fh, F4h, 57h, 30h, 02h, 3Fh, B3h
0x56,0x3F,0x17,0x3F,0x17,0x3A,0xF4,0xFD,0x2A,0x0F,0xF4,0x57,0x30,0x02,0x3F,0xB3,

//CAh, F2h, 46h, 21h, 2Bh, F2h, 86h, 3Eh, C1h, 54h, FFh, 03h, D1h, 67h, FFh, BBh
0xCA,0xF2,0x46,0x21,0x2B,0xF2,0x86,0x3E,0xC1,0x54,0xFF,0x03,0xD1,0x67,0xFF,0xBB,

//45h, 7Fh, 3Fh, 49h, 28h, ADh, C7h, 35h, 3Fh, B9h, 56h, 4Ah, 3Fh, 41h, 75h, A6h
0x45,0x7F,0x3F,0x49,0x28,0xAD,0xC7,0x35,0x3F,0xB9,0x56,0x4A,0x3F,0x41,0x75,0xA6,

//3Ch, 98h, BEh, 56h, FFh, 6Eh, 71h, 88h, 5Fh, BCh, 81h, 3Fh, 71h, 7Ch, 04h, 3Fh
0x3C,0x98,0xBE,0x56,0xFF,0x6E,0x71,0x88,0x5F,0xBC,0x81,0x3F,0x71,0x7C,0x04,0x3F,

//9Bh, E7h, 3Fh, C0h, 72h, 3Fh, 11h, 24h, 0Ah, FEh, 87h, 83h, CDh, ABh, 92h, 64h
0x9B,0xE7,0x3F,0xC0,0x72,0x3F,0x11,0x24,0x0A,0xFE,0x87,0x83,0xCD,0xAB,0x92,0x64,

//3Fh, 33h, 19h, B0h, 49h, F1h, 9Fh, D5h, 4Ah, 5Fh, 5Eh, 52h, 27h, DBh, FBh, FFh
0x3F,0x33,0x19,0xB0,0x49,0xF1,0x9F,0xD5,0x4A,0x5F,0x5E,0x52,0x27,0xDB,0xFB,0xFF,

//1Eh, D5h, BEh, 7Eh, 63h, D2h, 4Fh, D9h, D3h, 66h, 2Dh, 3Fh, 0Ch, 07h, EAh, DAh
0x1E,0xD5,0xBE,0x7E,0x63,0xD2,0x4F,0xD9,0xD3,0x66,0x2D,0x3F,0x0C,0x07,0xEA,0xDA,

//8Fh, 5Fh, 99h, A2h, 92h, DCh, 3Fh, CCh, B1h, DAh, BEh, 1Dh, 78h, 3Ch, FFh, 75h
0x8F,0x5F,0x99,0xA2,0x92,0xDC,0x3F,0xCC,0xB1,0xDA,0xBE,0x1D,0x78,0x3C,0xFF,0x75,

//3Fh, F4h, 8Fh, A0h, F3h, 0Dh, 91h, 96h, 2Eh, 63h, 48h, 5Fh, F3h, 9Bh, 70h, 27h
0x3F,0xF4,0x8F,0xA0,0xF3,0x0D,0x91,0x96,0x2E,0x63,0x48,0x5F,0xF3,0x9B,0x70,0x27,

//3Fh, 6Ah, 21h, 80h, C3h, ADh, C0h, ACh, 8Dh, D3h, 7Bh, 5Ch, A9h, 89h, 0Dh, 56h
0x3F,0x6A,0x21,0x80,0xC3,0xAD,0xC0,0xAC,0x8D,0xD3,0x7B,0x5C,0xA9,0x89,0x0D,0x56 };



 //   char Datas[8]= {0} ;
    int te,idpi,te1,dsang=0,dxia=0;
    String tte,tta,stsang,stxia,idps,c,b,d,scdid,scdidxor,spoid,spoidxor;


/*
    //  tta=IntToStr(te);

           te=addrlist[0];
    //       te=StrToInt(tte);
           tta=IntToHex(te,2);

           te=addrlist[1];
     //      te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[2];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[3];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[4];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[5];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
       */
//    String datass,a="ff";
//    int result = USB_RequestEx(Datas);
//    if (result == 1)
//    {
        b="0x00";
        scdid=String(Datas).SubString(1,8);
        c="0x"+scdid.SubString(1,2).Trim();
        d=b^c;
        b=d;
        c="0x"+scdid.SubString(3,2).Trim();
        d=b^c;
        b=d;
        c="0x"+scdid.SubString(5,2).Trim();
        d=b^c;
        b=d;
        c="0x"+scdid.SubString(7,2).Trim();
        d=b^c;
        b=d;
        scdidxor=IntToHex(StrToInt(b),2);


        idps="0x"+String(Datas).SubString(1,2);
        idpi=StrToInt(idps);
        te=addrlist[idpi];
        tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+String(Datas).SubString(3,2);
        idpi=StrToInt(idps);
        te=addrlist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+String(Datas).SubString(5,2);
        idpi=StrToInt(idps);
        te=addrlist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+String(Datas).SubString(7,2);
        idpi=StrToInt(idps);
        te=addrlist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        b="0x00";
        spoid=tta;
        c="0x"+spoid.SubString(1,2).Trim();
        d=b^c;
        b=d;
        c="0x"+spoid.SubString(3,2).Trim();
        d=b^c;
        b=d;
        c="0x"+spoid.SubString(5,2).Trim();
        d=b^c;
        b=d;
        c="0x"+spoid.SubString(7,2).Trim();
        d=b^c;
        b=d;
        spoidxor=IntToHex(StrToInt(b),2);

        idps="0x"+scdidxor;
        idpi=StrToInt(idps);
        te=addrlist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+spoidxor;
        idpi=StrToInt(idps);
        te=addrlist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

      //  tta="110033551122";
      stsang=tta.SubString(1,6);
      stxia =tta.SubString(7,6);
      dsang=0;
      dxia=0;
      tte=stsang.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dsang=1;
       }
      tte=stxia.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dxia=1;
       }

      te=("0x"+("00"+stsang))^00;
      te=te<<1;
      if(dxia==1)
        te=te+1;
      stsang=IntToHex(te,8);
      stsang=stsang.SubString(stsang.Length()-5,6);

      te=("0x"+("00"+stxia))^00;
      te=te<<1;
      if(dsang==1)
        te=te+1;
      stxia=IntToHex(te,8);
      stxia=stxia.SubString(stxia.Length()-5,6);

      tta=stsang+stxia;


/*
        datass = String(Datas).SubString(1,8);

    	Form1->Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,0,Datay);
  if (result)
     {
     Form1->Caption = "验证密码成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(0, 0,Data);
   if (result)
   {
       a = String(Data).SubString(1,32);
          result = USB_Read(0, 1,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
   }
          result = USB_Read(0, 2,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
       Form1->Caption = "读0成功" ;
   }
   }
   else
       Form1->Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Form1->Caption = "验证密码失败";
    }
    else
    	Form1->Caption = "寻卡失败";
        */
return (tta);
}
///////////////////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal comtrueyn(String comss)    ////IC卡14扇区0块用户卡专用
{
String p1,comsyn;
//if (sButton33->Caption == "打开串口")
//    {
//    sButton33->Enabled=false;
//    sButton33->Caption = "关闭串口";
      comsyn="1";
//   tt="slfsldf";
//////////////////////////////////////////////////////串口自动选择处理
  char *ComNo;
  DCB dcb;
//  HANDLE hComm; // 将给串行端口使用的Handle声明
  String Temp;
  //取得要打开的通信端口
  Temp = "COM"+comss;
 // Temp = "COM2";
  // 转换到指针类型的Char
  ComNo = Temp.c_str();
  hComm = CreateFile(ComNo,GENERIC_READ | GENERIC_WRITE,
       0, NULL, OPEN_EXISTING, 0, 0);
  if (hComm == INVALID_HANDLE_VALUE) // 如果COM未打开
  {
   comsyn="0";
 // sButton33->Caption = "打开串口";
  //  MessageBox(0, "打开通信端口错误!!","Comm Error",MB_OK);
   }else
   {
   //-------------------------------------------------------------------
   // 将dcb地址传入，以取得通信参数
  GetCommState(hComm,&dcb);                         // 得知目前COM的状态
  dcb.BaudRate = CBR_9600;                          // 设置波特率为9600
  dcb.ByteSize = 8;                                 // 字节为8 bit
  dcb.Parity = NOPARITY;                            // Parity 为 None
  dcb.StopBits = ONESTOPBIT;                        // 1个Stop bit
  // 通信端口设置
  if (!SetCommState(hComm, &dcb)) {       // 设置COM的状态
    Application->MessageBoxA("通信端口设置错误!!!","信息",MB_OK);
    CloseHandle(hComm);
//    sButton33->Caption = "打开串口";
    comsyn="0";
//    sButton33->Enabled=true;
//    return;
    }
  }
//sButton33->Enabled=true;
//return;
//}
//if(sButton33->Caption == "关闭串口")
//{
 //  if (hComm!=INVALID_HANDLE_VALUE)
   CloseHandle(hComm);
//   sButton33->Caption = "打开串口";
    if(comsyn=="1")
     return TRUE;
   else
     return FALSE;
//}
//sButton33->Enabled=true;
}
////////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal sjiamiyn(int senr)    ////IC卡14扇区0块用户卡专用
{
String ins,jmshanqu0007,jmshanqu0815,aa,aa1;

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
//   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa=jmshanqu0007;
switch(senr)
{
case 0:
   aa1=aa&"0x01";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 1:
   aa1=aa&"0x02";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 2:
   aa1=aa&"0x04";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 3:
   aa1=aa&"0x08";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 4:
   aa1=aa&"0x10";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 5:
   aa1=aa&"0x20";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 6:
   aa1=aa&"0x40";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 7:
   aa1=aa&"0x80";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
}

 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
switch(senr)
{
case 8:
   aa1=aa&"0x01";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 9:
   aa1=aa&"0x02";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 10:
   aa1=aa&"0x04";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 11:
   aa1=aa&"0x08";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 12:
   aa1=aa&"0x10";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 13:
   aa1=aa&"0x20";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 14:
   aa1=aa&"0x40";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
case 15:
   aa1=aa&"0x80";
   if(aa1!="0")
     return TRUE;
   else
     return FALSE;
}


}

/////////////////////////////////////////////////////////////////////////////////
void Visible_Show(void)
{
String ins,vcn1,vcn2,vcn3,vcn4,vcn5,vcn6,vcn7,vcn8,vcn9,vcn10,vcn11,vcn12,vcn13,vcn14,vcn15;
ins="select * from VisiblePoc";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();

   if(tcon1->adoquery->RecordCount!=0)
   {
   vcn1=tcon1->adoquery->FieldByName("vcn1")->AsString.Trim(); ///初始化
   vcn2=tcon1->adoquery->FieldByName("vcn2")->AsString.Trim();
   vcn3=tcon1->adoquery->FieldByName("vcn3")->AsString.Trim();
   vcn4=tcon1->adoquery->FieldByName("vcn4")->AsString.Trim();
   vcn5=tcon1->adoquery->FieldByName("vcn5")->AsString.Trim();
   vcn6=tcon1->adoquery->FieldByName("vcn6")->AsString.Trim();
   vcn7=tcon1->adoquery->FieldByName("vcn7")->AsString.Trim();
   vcn8=tcon1->adoquery->FieldByName("vcn8")->AsString.Trim();
   vcn9=tcon1->adoquery->FieldByName("vcn9")->AsString.Trim();
   vcn10=tcon1->adoquery->FieldByName("vcn10")->AsString.Trim();
   vcn11=tcon1->adoquery->FieldByName("vcn11")->AsString.Trim();
   vcn12=tcon1->adoquery->FieldByName("vcn12")->AsString.Trim();
   vcn13=tcon1->adoquery->FieldByName("vcn13")->AsString.Trim();
   vcn14=tcon1->adoquery->FieldByName("vcn14")->AsString.Trim();
   vcn15=tcon1->adoquery->FieldByName("vcn15")->AsString.Trim();
   }
if(vcn1=="475360231")
  Form1->sGroupBox8->Visible=true;  ///初始化
else
  Form1->sGroupBox8->Visible=false;

if(vcn2=="29457731")
  Form1->sCheckBox1->Visible=true;  ///批量加密
else
  Form1->sCheckBox1->Visible=false;

if(vcn3=="1")
  Form1->sGroupBox3->Visible=true;  ///开放卡
else
  Form1->sGroupBox3->Visible=false;

if(vcn4=="1")
  Form1->sGroupBox11->Visible=true;  ///同步卡
else
  Form1->sGroupBox11->Visible=false;

if(vcn5=="1"){
  Form1->sButton5->Visible=true;  ///去掉层数
  Form1->ListView2->Visible=true;  ///去掉层数
  displaylayeryn=1;   //是否用层数选择，1为用，0为不用
  }
else{
  Form1->sButton5->Visible=false;
  Form1->ListView2->Visible=false;  ///去掉层数
  displaylayeryn=0;   //是否用层数选择，1为用，0为不用
  }

if(vcn6=="874631")
  inipwdpoc="1";  ///操作时自动处理初始化
else
  inipwdpoc="0";  ///操作时自动处理初始化

if(vcn7=="35794")
  card0spoc=0;  ///是否处理0扇区    //是否把0扇区写死  1为是
else
  card0spoc=1;

if(vcn8=="1")
  Form1->sButton25->Visible=true;
else
  Form1->sButton25->Visible=false;

if(vcn9=="653488"){
  card0sguanlian=1;  ///全部卡号关联处理  1为是
  }
else{
  card0sguanlian=0;  ///全部卡号关联处理  1为是
  }
if(vcn10=="436536"){
  mangguoka=1;  ///防超级UID
  }
else{
  mangguoka=0;
  }
if(vcn11=="8845673"){
  qudiaoshijian=1;   ///去掉时间控制  0为去掉，1为启动
  }
else{
  qudiaoshijian=0;
  }
if(vcn12=="7732446457"){
  qudiaochishu=1;  ///去掉次数控制  0为去掉，1为启动
  }
else{
  qudiaochishu=0;
  }

if(vcn13=="3534577"){
  Form1->sButton39->Visible=true;  ///开放卡层数设置
  }
else{
  Form1->sButton39->Visible=false;
  }

if(vcn14=="8742326"){
  Form1->sButton64->Visible=true;  ///开放时段层数设置
  }
else{
  Form1->sButton64->Visible=false;
  }

if(vcn15=="2354667"){
  fuzhijiuyanshitingka=1;  ///发现自制就延时及原卡停用
  }
else{
  fuzhijiuyanshitingka=0;
  }
}
/////////////////////////////////////////////////////////////////////////////////
void buttonenableyn(void)
{
if(cn1==""||cn1=="0")  //电梯设置卡
{
  Form1->sButton18->Enabled=false;
  Form1->sButton66->Enabled=false;
  }
else    {
  Form1->sButton18->Enabled = true;
  Form1->sButton66->Enabled=true;
  }
if(cn2==""||cn2=="0")  //时间卡
  Form1->sButton16->Enabled = false;
else
  Form1->sButton16->Enabled = true;
if(cn3==""||cn3=="0")  //修改电梯密码 同步复位卡
  {
  Form1->sButton19->Enabled = false;
  Form1->sButton20->Enabled = false;
  Form1->sButton25->Enabled = false;
  }
else {
  Form1->sButton19->Enabled = true;
  Form1->sButton20->Enabled = true;
  Form1->sButton25->Enabled = true;
  }
if(cn4==""||cn4=="0")  //挂失卡
  Form1->sButton23->Enabled = false;
else
  Form1->sButton23->Enabled = true;
if(cn5==""||cn5=="0")    //用户改动
{
  Form1->sButton1->Enabled = false;
  Form1->sButton2->Enabled = false;
  Form1->sButton3->Enabled = false;
  Form1->sButton4->Enabled = false;
}
else
{
  Form1->sButton1->Enabled = true;
  Form1->sButton2->Enabled = true;
  Form1->sButton3->Enabled = true;
  Form1->sButton4->Enabled = true;
}

if(cn8==""||cn8=="0") //电梯改动
{
  Form1->sButton7->Enabled = false;
  Form1->sButton8->Enabled = false;
  Form1->sButton9->Enabled = false;
  Form1->sButton10->Enabled = false;
}
else
{

  Form1->sButton7->Enabled = true;
  Form1->sButton8->Enabled = true;
  Form1->sButton9->Enabled = true;
  Form1->sButton10->Enabled = true;
}

if(cn6==""||cn6=="0")  //用户发卡
{
//  Button20->Visible = false;
  Form1->sButton26->Enabled = false;
}
else
{
//  Button20->Visible = true;
  Form1->sButton26->Enabled = true;
}

if(cn7==""||cn7=="0") //操作管理
{
  Form1->sButton27->Enabled = false;
  Form1->sButton28->Enabled = false;
  Form1->sButton29->Enabled = false;
  adminpyn=0;
}
else
{
//  Form1->sButton27->Enabled = true;
//  Form1->sButton28->Enabled = true;
//  Form1->sButton29->Enabled = true;
  adminpyn=1;
}

if(cn9==""||cn9=="0")//恢复所有挂失 清空挂失卡
{
  Form1->sButton30->Enabled = false;
}
else
{
  Form1->sButton30->Enabled = true;
}

if(cn10==""||cn10=="0")     //开放卡
{
  Form1->sButton13->Enabled = false;
  Form1->sButton39->Enabled = false;
}
else
{
  Form1->sButton13->Enabled = true;
  Form1->sButton39->Enabled = true;
}

if(cn11==""||cn11=="0")     //修改层数
{
  Form1->sButton5->Enabled = false;
}
else
{
  Form1->sButton5->Enabled = true;
}
}
////////////////////////////////////////////////////////////////////////////////
String daToxiao(String aa)
{
String a;
for (int i=1;i<=aa.Length();i++)
{a=aa.SubString(i,1).Trim();

                    if(a=="A")
                    {
                    aa=aa.Delete(i,1);
		    aa=aa.Insert("a",i);
                    }
                      if(a=="B")
                      {
                       aa=aa.Delete(i,1);
		       aa=aa.Insert("b",i);
                      }
                        if(a=="C")
                        {
                         aa=aa.Delete(i,1);
		         aa=aa.Insert("c",i);
                        }
                          if(a=="D")
                          {
                           aa=aa.Delete(i,1);
		           aa=aa.Insert("d",i);
                          }
                            if(a=="E")
                            {
                             aa=aa.Delete(i,1);
		             aa=aa.Insert("e",i);
                            }
                              if(a=="F")
                                 {
                                aa=aa.Delete(i,1);
		                aa=aa.Insert("f",i);
                                 }


}
return aa;
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal writekztime(String Temp)
{
String ins,fkqid,sector,userCID,qstr,ss;

if(Temp.Length()!=6)  {
    Application->MessageBoxA("您输入的数据有错误!!","信息",MB_OK);
     return FALSE;
    }

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        return FALSE;
        }

char Data[32] = {0};
   USB_Read(16, 0,Data); //用于防止下发数据时发卡器正在扫描卡
   USB_Read(16, 0,Data); //用于防止下发数据时发卡器正在扫描卡

       fkqid=Temp+"FFFFFF";
       fkqid = fkqid.SubString(1,6);
       fkqid = fkqid+"00000000000000000000000000";

        sprintf(Data, "%s", fkqid);
   bool result = USB_Write(24, 0,Data);
   if (result)
       {
    if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
    return TRUE;
       }
if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }

}
//////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal writekzcount(String Temp)
{
String ins,fkqid,sector,userCID,qstr,ss;

if(Temp.Length()!=6)  {
    Application->MessageBoxA("您输入的数据有错误!!","信息",MB_OK);
     return FALSE;
    }

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        return FALSE;
        }

char Data[32] = {0};
   USB_Read(16, 0,Data); //用于防止下发数据时发卡器正在扫描卡
   USB_Read(16, 0,Data); //用于防止下发数据时发卡器正在扫描卡

       fkqid=Temp+"FFFFFF";
       fkqid = fkqid.SubString(1,6);
       fkqid = fkqid+"00000000000000000000000000";

        sprintf(Data, "%s", fkqid);
   bool result = USB_Write(25, 0,Data);
   if (result)
       {
    if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
    return TRUE;
       }
if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }

}
////////////////////////////////////////////////////////////////////////////////////////////////

//-----------------------------usb   usb usb   usb  usb  usb  usb ----------------------------------------------
//---------------------------------------------------------------------------

void __fastcall TForm1::ShowRead(TJvHidDevice *HidDev,
      BYTE ReportID, const void *Data, WORD Size)
{
  WORD I;
  AnsiString Str;
  AnsiString S;
  char *P;

  P = (char *) Data;
  Str.sprintf("R %02X  ", ReportID);    
  for(I = 0; I < Size; I++)
     Str += S.sprintf("%02X ", (unsigned char) P[I]);
  HistoryListBox->ItemIndex = HistoryListBox->Items->Add(Str);

}
//---------------------------------------------------------------------------
bool __fastcall TForm1::JvHidDeviceController1Enumerate(
      TJvHidDevice *HidDev, const int Idx)
{
     int N;
  TJvHidDevice *Dev;
  AnsiString S;

  if(DevListBox != NULL)
  {
    if(HidDev->ProductName != NULL)
      N = DevListBox->Items->Add(HidDev->ProductName);
    else
      N = DevListBox->Items->Add(S.sprintf("Device VID=%04X PID=%04X",
        HidDev->Attributes.VendorID, HidDev->Attributes.ProductID));
    JvHidDeviceController1->CheckOutByIndex(Dev, Idx);
    DevListBox->Items->Objects[N] = Dev;
  }
  return(true);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::JvHidDeviceController1DeviceChange(TObject *Sender)
{
     int I;
  TJvHidDevice *Dev;

  ReadBtn->Down = false;
  ReadBtnClick(this);
  if(DevListBox != NULL)
  {
    for(I = 0; I < DevListBox->Count; I++)
    {
      Dev = (TJvHidDevice *) DevListBox->Items->Objects[I];
      Dev->Free();
    }
    DevListBox->Clear();
    HistoryListBox->Clear();
    JvHidDeviceController1->Enumerate();
    if(DevListBox->Items->Count > 0)
    {
      DevListBox->ItemIndex = 0;
      DevListBoxClick(this);
    }
  }


}
//---------------------------------------------------------------------------

void __fastcall TForm1::HidCtlDeviceDataError(TJvHidDevice *HidDev,
      DWORD Error)
{
    HistoryListBox->ItemIndex = HistoryListBox->Items->Add("READ ERROR: " + SysErrorMessage(Error));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DevListBoxClick(TObject *Sender)
{
  int I;
  TJvHidDevice *Dev;
  ReadBtn->Down = false;
  ReadBtnClick(this);
  HistoryListBox->Clear();
  if(Edits[0] != NULL &&
    DevListBox->Items->Count > 0 && DevListBox->ItemIndex >= 0)
  {
    Dev = (TJvHidDevice *) DevListBox->Items->Objects[DevListBox->ItemIndex];
    for(I = 0; I < 64; I++)
      Edits[I]->Visible = false;
    for(I = 0; I < Dev->Caps.OutputReportByteLength - 1; I++)
      Edits[I]->Visible = true;
    WriteBtn->Enabled = Dev->Caps.OutputReportByteLength != 0;
  }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::ReadBtnClick(TObject *Sender)
{
 if(CurrentDevice != NULL)
     CurrentDevice->OnData = NULL;
  CurrentDevice = NULL;
  if(DevListBox->Items->Count > 0 && DevListBox->ItemIndex >= 0)
  {
    CurrentDevice = (TJvHidDevice *) DevListBox->Items->Objects[DevListBox->ItemIndex];
    if(ReadBtn->Down && CurrentDevice->HasReadWriteAccess)
      CurrentDevice->OnData = ShowRead;
    else
    {
      CurrentDevice->OnData = NULL;
      ReadBtn->Down = false;
    }
  }
}
//---------------------------------------------------------------------------
void __fastcall TForm1::WriteBtnClick(TObject *Sender)
{
   AnsiString S,Str;
   unsigned char Buf[65],BUFF[65];
   unsigned int ToWrite,Written;
   unsigned char newData[8]={0x00,0xaa,0x01,0x01,0x01,0x01,0x01,0xFF};
   unsigned char value;
   int I;
   newData[6] = StrToIntDef("$" + Edit2->Text, 0);
    if(CurrentDevice != NULL)
  {
    ToWrite = CurrentDevice->Caps.OutputReportByteLength;
    for(I = 0; I < ToWrite; I++) {
      if (I < 8){
        Buf[I] = StrToIntDef(newData[I], 0);
      } else {
         Buf[I] = 0xFF;
      }
     }
     CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
     CurrentDevice->ReadFile(BUFF, ToWrite, Written);    //读取
    }
    if(BUFF[7] != 0x00){
       Application->MessageBoxA("读取数据发送返回失败!!","问题",MB_OK);
    } else {
     Str.sprintf("R %02X  ", Buf[0]);
     for(I = 1; I < Written; I++)
      Str += S.sprintf("%02X ", BUFF[I]);
     HistoryListBox->ItemIndex = HistoryListBox->Items->Add(Str);
   }
}
/////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal qfkqyn(void) ///读取判断发卡器与软件是否一致    007
{


String fkqid,fkqsector,sscid;



  return TRUE;  // 查找插件USB

/*
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
        return FALSE;
        }
     */
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(16, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
       fkqsector = String(Data).SubString(7,2);
     //  sEdit3->Text=fkqid;
   }
    else
    {
       result = USB_Read(16, 0,Data);
       if (result)
          {
          fkqid = String(Data).SubString(1,6);
          fkqsector = String(Data).SubString(7,2);
     //  sEdit3->Text=fkqid;
          }
           else
           {
              result = USB_Read(16, 0,Data);
              if (result)
               {
                fkqid = String(Data).SubString(1,6);
                fkqsector = String(Data).SubString(7,2);
     //  sEdit3->Text=fkqid;
               }
               else{
               if(tishiyn==1) //是否出到提示，1为是
                   Application->MessageBoxA("没有检测到发卡器!!","问题",MB_OK);
               return FALSE;
               }
           }
    }


// if (!USB_DevClose()) {
  //       Form1->Caption = "关闭串口失败";
    //     }
     if(tishiyn==1) //是否出到提示，1为是
    {
     fkqid=daToxiao(fkqid);
     conpwd=daToxiao(conpwd);
     if(fkqid==conpwd){
         result = USB_Read(21, 0,Data);
           if (result)
            {
            sscid = String(Data).SubString(7,6);
            if(userCID123!=sscid)
               {
                Application->MessageBoxA("发卡器用户码不匹配!!","问题",MB_OK);
                return FALSE;
               }
               else
                {
                return TRUE;
                }
            }
      else
       {
       if(userCID123!="147369"){
         Application->MessageBoxA("发卡器用户码错误!!","问题",MB_OK);
         return FALSE;
         }
         else
           {
           return TRUE;
           }
       }
//      return TRUE;
      }
     else {
     Application->MessageBoxA("发卡器与软件不匹配,请与供货商联系!!","问题",MB_OK);
      return FALSE;
     }
    }
}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal fkqyn(void) ///读取判断发卡器与软件是否一致
{
String fkqid,syear,month,day,yy,mm,dd,ins;
// ***********************************************************
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        syear="00"+String(GTL->wYear);
        month="00"+String(GTL->wMonth);
        day="00"+String(GTL->wDay);

        yy=syear.SubString(syear.Length()-1,2);
       mm=month.SubString(month.Length()-1,2);
       dd=day.SubString(day.Length()-1,2);

       yy=yy+mm+dd;


if(qudiaoshijian==1) ///去掉时间控制 qudiaoshijian=0; ///去掉时间控制  0为去掉，1为启动
{

if(qfkqyn())

  {
////-------------
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(22, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
        USB_Read(16, 0,Data);
        USB_Read(16, 0,Data);
     //  sEdit5->Text=redatapack(fkqid);
     //  sEdit5->Text=fkqid;
       if(fkqid=="FFFFFF")
         {
         return  TRUE;
         }
     if(StrToInt(fkqid)<StrToInt(yy))
        {
/////-----------------------------------
ins="select usertishi from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {

   userkztishi=tcon1->adoquery->FieldByName("usertishi")->AsString.Trim();

   }
/////-----------------------------------
         try
         {
         Form22=new TForm22(Application);
         Form22->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form22;
           Application->ShowException(&exception);
           }

           if(userkzfig=="ff")
             {
             return FALSE;
             }
             else
             {
             if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
              {
               if(writekztime(userkzfig))
                 {
                Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
                return  TRUE;
                 }
                 else
                 {
                 return FALSE;
                 }
               }
               else
               {
               return FALSE;
               }


             }
        }
        else
        {
        return  TRUE;
        }



   }
   else
    {
    return  FALSE;
    }

////-------------
  }
  else
  {
  return  FALSE;
  }
}
else
  {
  if(qfkqyn())
    {
    return TRUE;
    }
    else
    {
    return  FALSE;
    }
  }
}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal fkqynstart(void) ///读取判断发卡器与软件是否一致    001
{
String fkqid,syear,month,day,yy,mm,dd,ins;
// ***********************************************************
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
        syear="00"+String(GTL->wYear);
        month="00"+String(GTL->wMonth);
        day="00"+String(GTL->wDay);

        yy=syear.SubString(syear.Length()-1,2);
       mm=month.SubString(month.Length()-1,2);
       dd=day.SubString(day.Length()-1,2);

       yy=yy+mm+dd;



if(qudiaoshijian==1) ///去掉时间控制    qudiaoshijian=0; ///去掉时间控制  0为去掉，1为启动
{
if(qfkqyn())
  {
////-------------
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(22, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
        USB_Read(16, 0,Data);
        USB_Read(16, 0,Data);
     //  sEdit5->Text=redatapack(fkqid);
     //  sEdit5->Text=fkqid;
       if(fkqid=="FFFFFF")
         {
         return  TRUE;
         }
     if(StrToInt(fkqid)<StrToInt(yy))
        {
/////-----------------------------------
ins="select usertishi from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {

   userkztishi=tcon1->adoquery->FieldByName("usertishi")->AsString.Trim();

   }
/////-----------------------------------
         try
         {
         Form22=new TForm22(Application);
         Form22->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form22;
           Application->ShowException(&exception);
           }

           if(userkzfig=="ff")
             {
             return FALSE;
             }
             else
             {
             if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
              {
               if(writekztime(userkzfig))
                 {
                Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
                return  TRUE;
                 }
                 else
                 {
                 return FALSE;
                 }
               }
               else
               {
               return FALSE;
               }


             }
        }
        else
        {
        return  TRUE;
        }



   }
   else
    {
    qudiaoshijian=0; ///去掉时间控制  0为去掉，1为启动
    qudiaochishu=0;  ///去掉次数控制  0为去掉，1为启动
    return  TRUE;
    }

////-------------
  }
  else
  {
  return  FALSE;
  }
}
else
  {
  if(qfkqyn())
    {
    return TRUE;
    }
    else
    {
    return  FALSE;
    }
  }
}
/////////////////////////////////////////////////////////////////////////////////
String comtest(void)
{
String scom,qstr;
FrmBar->Caption="正在处理中.....................";
FrmBar->PBarOpen(32);
for (int i=2;i<=32;i=i+1){
      USB_DevClose();
      FrmBar->PBarGo();
      scom=IntToStr(i);
    bool reresults = USB_DevInit(StrToInt(scom));
     if (reresults){
       tishiyn=0; //是否出到提示，1为是
       if(fkqyn()){
       USB_DevClose();
       Form1->ComboBox1->Text=scom;
       qstr="update other set lockcomm='";
    qstr+=Form1->ComboBox1->Text;
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
       Form1->sCheckBox5->Checked=true;
       tishiyn=1; //是否出到提示，1为是
       FrmBar->PBarClose();
       break;
       }
      }
  //   }
  }
FrmBar->PBarClose();
return (scom);
}

/////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal fkquseryn(void) ///读取判断发卡器与软件是否一致
{
String fkqid,fkqsector,sscid;
/*
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
        return FALSE;
        }
     */
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(21, 0,Data);
   if (result)
   {
     sscid = String(Data).SubString(7,6);
            if(userCID123!=sscid)
               {
                Application->MessageBoxA("发卡器用户码不匹配!!","问题",MB_OK);
                return FALSE;
               }
   }
    else
    {
       result = USB_Read(21, 0,Data);
       if (result)
          {
          sscid = String(Data).SubString(7,6);
            if(userCID123!=sscid)
               {
                Application->MessageBoxA("发卡器用户码不匹配!!","问题",MB_OK);
                return FALSE;
               }
          }
           else
           {
              result = USB_Read(21, 0,Data);
              if (result)
               {
                 sscid = String(Data).SubString(7,6);
                 if(userCID123!=sscid)
                  {
                 Application->MessageBoxA("发卡器用户码不匹配!!","问题",MB_OK);
                 return FALSE;
                  }
               }
               else{
               if(tishiyn==1) //是否出到提示，1为是
                   Application->MessageBoxA("没有检测到发卡器!!","问题",MB_OK);
               return FALSE;
               }
           }
    }
}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal cardjiami(String cardpwd)    ////IC卡14扇区0块用户卡专用
{
String Temp;
/*
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
        return FALSE;
        }
        */
///*************************************************USB发卡器用


      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
      //  cardpwd=cardidpwdpoc(Datas);
        Temp=cardpwd+"FF078069FFFFFFFFFFFF";
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,secondsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(secondsector, 3,Data);
   if (result)
      Form1->Caption = "初始化成功";
   //   MessageBox(0, "加密成功！!!","信息",MB_OK);
   else {
      Form1->Caption = "15加密失败！!!";
    //  Application->MessageBoxA("15加密失败！!!","信息",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
     sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,secondsector,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       }
       else {Form1->Caption = "加密失败！!!";
       return FALSE;  }
      }
     }


    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        return FALSE;  }
////******************************************************
     result = USB_RequestEx(Datas);
    if (result == 1)
    {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(firstsector, 3,Data);
   if (result) {
     Form1->Caption = "初始化成功！!!";
     if(Form1->sCheckBox4->Checked==false)
      {
      return TRUE;
      }
  //   return TRUE;
     }
   //   Application->MessageBoxA("加密成功！!!","信息",MB_OK);
   else {
     // Application->MessageBoxA("firstsector加密失败！!!","信息",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
     sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       if(Form1->sCheckBox4->Checked==false)
      {
       MessageBeep(1);
       Sleep(200);
       MessageBeep(1);
       return FALSE;
      }
       }
       else {Form1->Caption = "加密失败！!!";
       return FALSE;  }
      }
     }


    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        return FALSE;  }
////******************************************************
     result = USB_RequestEx(Datas);
    if (result == 1)
    {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,addsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(addsector, 3,Data);
   if (result) {
     Form1->Caption = "初始化成功！!!";
  //   return TRUE;
     }
   //   Application->MessageBoxA("加密成功！!!","信息",MB_OK);
   else {
     // Application->MessageBoxA("firstsector加密失败！!!","信息",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
     sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,addsector,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       }
       else {Form1->Caption = "加密失败！!!";
       return FALSE;  }
      }
     }


    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        return FALSE;  }
////******************************************************
     result = USB_RequestEx(Datas);
    if (result == 1)
    {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,add1sector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(add1sector, 3,Data);
   if (result) {
     Form1->Caption = "初始化成功！!!";
  //   return TRUE;
     }
   //   Application->MessageBoxA("加密成功！!!","信息",MB_OK);
   else {
     // Application->MessageBoxA("firstsector加密失败！!!","信息",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
     sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,add1sector,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       }
       else {Form1->Caption = "加密失败！!!";
       return FALSE;  }
      }
     }


    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        return FALSE;  }
////******************************************************
     result = USB_RequestEx(Datas);
    if (result == 1)
    {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,add2sector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(add2sector, 3,Data);
   if (result) {
     Form1->Caption = "初始化成功！!!";
     return TRUE;
     }
   //   Application->MessageBoxA("加密成功！!!","信息",MB_OK);
   else {
     // Application->MessageBoxA("firstsector加密失败！!!","信息",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
     sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,add2sector,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       MessageBeep(1);
       Sleep(200);
       MessageBeep(1);
       return FALSE;
       }
       else {Form1->Caption = "加密失败！!!";
       return FALSE;  }
      }
     }


    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        return FALSE;  }


}
/////////////////////////////////////////////////////////////////////////////////
String cardidpwdpoc(char Datas[8])
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
    char addrlist[256]=
 {0x00 ,0xC2 ,0x96 ,0x22 ,0xD2 ,0x95 ,0x00 ,0xD2 ,0x96 ,0x00 ,0x00 ,0xC2 ,0x96 ,0x22 ,0x7E ,0x08,
  0x33 ,0x92 ,0x95 ,0x00 ,0x00 ,0xD2 ,0x96 ,0x00 ,0x00 ,0xC2 ,0x96 ,0x00 ,0xDE ,0xF2 ,0xD2 ,0x95,
  0x00 ,0xD2 ,0x96 ,0x00 ,0x7C ,0xFF ,0x00 ,0xA2 ,0x95 ,0x50 ,0x11 ,0xDC ,0xF9 ,0x7C ,0xFF ,0x00,
  0xA2 ,0x95 ,0x50 ,0x08 ,0xDC ,0xF9 ,0xD2 ,0x04 ,0x00 ,0x22 ,0x80 ,0xFE ,0x00 ,0xC2 ,0x04 ,0xC2,
  0x96 ,0x22 ,0x80 ,0xFE ,0xD2 ,0x95 ,0x7E ,0x08 ,0x00 ,0x00 ,0xD2 ,0x96 ,0x00 ,0x00 ,0x00 ,0xA2,
  0x95 ,0x33 ,0xC2 ,0x96 ,0x00 ,0x00 ,0xDE ,0xF0 ,0x22 ,0x00 ,0xB4 ,0x6C ,0x25 ,0x7A ,0xFF ,0xC2,
  0x98 ,0x00 ,0x20 ,0x98 ,0x09 ,0x20 ,0x98 ,0x06 ,0xDA ,0xF8 ,0x00 ,0x80 ,0x77 ,0x00 ,0x00 ,0xC2,
  0x98 ,0xE5 ,0x99 ,0xB4 ,0x69 ,0x6E ,0x7A ,0xFF ,0x00 ,0x20 ,0x98 ,0x0A ,0x20 ,0x98 ,0x07 ,0xDA,
  0xF8 ,0x00 ,0x00 ,0x80 ,0x5F ,0x00 ,0x00 ,0xC2 ,0x98 ,0xE5 ,0x99 ,0xB4 ,0x6E ,0x56 ,0x7A ,0xFF,
  0x00 ,0x20 ,0x98 ,0x09 ,0x20 ,0x98 ,0x06 ,0xDA ,0xF8 ,0x00 ,0x80 ,0x48 ,0x00 ,0x00 ,0xC2 ,0x98,
  0xE5 ,0x99 ,0xB4 ,0x6B ,0x3F ,0x00 ,0xD2 ,0x97 ,0x00 ,0x00 ,0x00 ,0x74 ,0x4F ,0xF5 ,0x99 ,0x30,
  0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0x74 ,0x4B ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0x74,
  0xED ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0xE5 ,0x45 ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD,
  0xC2 ,0x99 ,0x00 ,0xE5 ,0x46 ,0xF5 ,0x99 ,0x30 ,0x99 ,0xFD ,0xC2 ,0x99 ,0x00 ,0x00 ,0x00 ,0xC2,
  0x97 ,0x00 ,0x22 ,0x22 ,0x00 ,0x00 ,0x22 ,0x22 ,0x00 ,0x20 ,0x0B ,0xFC ,0xD2 ,0x0B ,0x00 ,0x12,
  0x3E ,0xD0 ,0x12 ,0x3E ,0x0C ,0x20 ,0x41 ,0x75 ,0x75 ,0x7F ,0x64 ,0x12 ,0x3E ,0x32 ,0x20 ,0x40 };
     char addrlist1[256]=
 { 0xC2 ,0x1B ,0x00 ,0x30 ,0x1C ,0x14 ,0xE5 ,0x40 ,0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A,
   0x0B ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00 ,0xC2 ,0x1C ,0x00 ,0x30 ,0x1D ,0x14 ,0xE5 ,0x40,
   0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A ,0x0C ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00,
   0xC2 ,0x1D ,0x00 ,0x30 ,0x1E ,0x14 ,0xE5 ,0x40 ,0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A,
   0x0D ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00 ,0xC2 ,0x1E ,0x00 ,0x30 ,0x1F ,0x14 ,0xE5 ,0x40,
   0x60 ,0x04 ,0x15 ,0x40 ,0x80 ,0x0C ,0x00 ,0x7A ,0x0E ,0xC2 ,0x07 ,0x00 ,0x12 ,0x0F ,0x43 ,0x00,
   0xC2 ,0x1F ,0x00 ,0xD2 ,0x02 ,0x00 ,0x00 ,0xD2 ,0x02 ,0x00 ,0x00 ,0x00 ,0x78 ,0xB0 ,0xE6 ,0x04,
   0xF6 ,0xC3 ,0x94 ,0x10 ,0x40 ,0x22 ,0x20 ,0x64 ,0x13 ,0x20 ,0x4A ,0x10 ,0x20 ,0x62 ,0x0D ,0x20,
   0x63 ,0x0A ,0xC2 ,0x64 ,0xC2 ,0x4A ,0xC2 ,0x62 ,0xC2 ,0x63 ,0x80 ,0x0C ,0x00 ,0xC2 ,0x64 ,0xC2,
   0x4A ,0xC2 ,0x62 ,0xC2 ,0x63 ,0x7A ,0x04 ,0x00 ,0x00 ,0x20 ,0x64 ,0x02 ,0xC2 ,0x4A ,0x00 ,0x20,
   0x4A ,0x02 ,0xC2 ,0x64 ,0x00 ,0xD5 ,0x3F ,0x08 ,0x00 ,0xD2 ,0x03 ,0x30 ,0x2C ,0x00 ,0x00 ,0x00,
   0x00 ,0x00 ,0x02 ,0x04 ,0x72 ,0x00 ,0x02 ,0x04 ,0x72 ,0x00 ,0x75 ,0x4B ,0x00 ,0x75 ,0x4B ,0x00,
   0x75 ,0x4B ,0x00 ,0x75 ,0x4B ,0x00 ,0xD2 ,0xDC ,0xC2 ,0xDC ,0xE5 ,0x80 ,0xD2 ,0xDC ,0xD2 ,0xDC,
   0x20 ,0xE4 ,0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0x20 ,0xE5 ,0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0x20 ,0xE6,
   0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0x20 ,0xE7 ,0x03 ,0x75 ,0x4B ,0x04 ,0x00 ,0xD2 ,0xDC ,0xC2 ,0xDC,
   0xD2 ,0xDC ,0x75 ,0xA0 ,0xFF ,0xC2 ,0xDC ,0xE5 ,0xA0 ,0xF5 ,0xF0 ,0xD2 ,0xDC ,0x53 ,0x4B ,0xFE };

//{0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,
//0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,
//0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
//0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f};

 //   char Datas[8]= {0} ;
    int te,idpi,te1,dsang=0,dxia=0;
    String tte,tta,stsang,stxia,idps,c,b,d,scdid,scdidxor,spoid,spoidxor;


/*
    //  tta=IntToStr(te);

           te=addrlist[0];
    //       te=StrToInt(tte);
           tta=IntToHex(te,2);

           te=addrlist[1];
     //      te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[2];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[3];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[4];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

           te=addrlist[5];
      //     te=StrToInt(tte);
           tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
       */
//    String datass,a="ff";
//    int result = USB_RequestEx(Datas);
//    if (result == 1)
//    {
        b="0x00";
        scdid=String(Datas).SubString(1,8);
        c="0x"+scdid.SubString(1,2).Trim();
        d=b^c;
        b=d;
        c="0x"+scdid.SubString(3,2).Trim();
        d=b^c;
        b=d;
        c="0x"+scdid.SubString(5,2).Trim();
        d=b^c;
        b=d;
        c="0x"+scdid.SubString(7,2).Trim();
        d=b^c;
        b=d;
        scdidxor=IntToHex(StrToInt(b),2);


        idps="0x"+String(Datas).SubString(1,2);
        idpi=StrToInt(idps);
        te=addrlist[idpi];
        tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+String(Datas).SubString(3,2);
        idpi=StrToInt(idps);
        te=addrlist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+String(Datas).SubString(5,2);
        idpi=StrToInt(idps);
        te=addrlist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+String(Datas).SubString(7,2);
        idpi=StrToInt(idps);
        te=addrlist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        b="0x00";
        spoid=tta;
        c="0x"+spoid.SubString(1,2).Trim();
        d=b^c;
        b=d;
        c="0x"+spoid.SubString(3,2).Trim();
        d=b^c;
        b=d;
        c="0x"+spoid.SubString(5,2).Trim();
        d=b^c;
        b=d;
        c="0x"+spoid.SubString(7,2).Trim();
        d=b^c;
        b=d;
        spoidxor=IntToHex(StrToInt(b),2);

        idps="0x"+scdidxor;
        idpi=StrToInt(idps);
        te=addrlist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        idps="0x"+spoidxor;
        idpi=StrToInt(idps);
        te=addrlist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

      //  tta="110033551122";
      stsang=tta.SubString(1,6);
      stxia =tta.SubString(7,6);
      dsang=0;
      dxia=0;
      tte=stsang.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dsang=1;
       }
      tte=stxia.SubString(1,1);
      te1=("0x"+("00"+tte))^00;
       if(te1>7)
       {
       dxia=1;
       }

      te=("0x"+("00"+stsang))^00;
      te=te<<1;
      if(dxia==1)
        te=te+1;
      stsang=IntToHex(te,8);
      stsang=stsang.SubString(stsang.Length()-5,6);

      te=("0x"+("00"+stxia))^00;
      te=te<<1;
      if(dsang==1)
        te=te+1;
      stxia=IntToHex(te,8);
      stxia=stxia.SubString(stxia.Length()-5,6);

      tta=stsang+stxia;


/*
        datass = String(Datas).SubString(1,8);

    	Form1->Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,0,Datay);
  if (result)
     {
     Form1->Caption = "验证密码成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(0, 0,Data);
   if (result)
   {
       a = String(Data).SubString(1,32);
          result = USB_Read(0, 1,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
   }
          result = USB_Read(0, 2,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
       Form1->Caption = "读0成功" ;
   }
   }
   else
       Form1->Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Form1->Caption = "验证密码失败";
    }
    else
    	Form1->Caption = "寻卡失败";
        */
return (tta);
}
///////////////////////////////////////////////////////////////////////////////////////////////
String datapack(String Temp)
{
char datalist[256]=
{
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01 ,0x4E ,0x04 ,0xB4 ,0x32 ,0x53 ,0x4D ,0xD6 ,0x08 ,0xC6 ,0x76 ,0x38,
0x62 ,0xA8 ,0xCB ,0x78 ,0xB6 ,0xF1 ,0xB8 ,0x49 ,0xF0 ,0x95 ,0xCD ,0x5C ,0x7D ,0xCA ,0x2B ,0x31,
0xB2 ,0xB0 ,0x59 ,0x39 ,0x15 ,0x1B ,0xE0 ,0xBB ,0x0D ,0x9B ,0x8B ,0xE5 ,0xC8 ,0x90 ,0x6E ,0xCF,
0xAC ,0x1C ,0x2E ,0x5D ,0xE9 ,0x9D ,0x65 ,0xA9 ,0x7E ,0xBD ,0x63 ,0x23 ,0x19 ,0x5F ,0x9A ,0xA4
};

char datalist1[256]=
{
0x6A ,0xE6 ,0x8A ,0xD1 ,0x8E ,0x9D ,0x85 ,0xC4 ,0x05 ,0xEB ,0x9B ,0xC5 ,0x8C ,0xC2 ,0x9F ,0x74,
0xE4 ,0x26 ,0xA9 ,0x3F ,0xDF ,0x22 ,0xFE ,0x15 ,0x48 ,0x1B ,0xCE ,0x77 ,0xDE ,0x06 ,0xD8 ,0x73,
0x69 ,0xBD ,0x17 ,0xF9 ,0x37 ,0x16 ,0x92 ,0xDA ,0x5B ,0xF1 ,0x47 ,0x50 ,0x61 ,0x1C ,0xB1 ,0x6E,
0xE8 ,0x68 ,0x4E ,0x81 ,0x00 ,0x6B ,0xBB ,0xB2 ,0xFA ,0x7F ,0xE2 ,0x2E ,0x4A ,0x2A ,0x78 ,0xB9,
0x4B ,0x18 ,0x63 ,0xEF ,0xA8 ,0xF7 ,0x5C ,0x5D ,0x84 ,0x1A ,0x0B ,0xBF ,0x88 ,0xD5 ,0x11 ,0x99,
0x27 ,0x82 ,0xD4 ,0x67 ,0x3E ,0x0A ,0x76 ,0xB7 ,0xFF ,0x23 ,0xF3 ,0x90 ,0x5F ,0x96 ,0x53 ,0x72,
0xA3 ,0xE7 ,0x7D ,0x66 ,0x7C ,0xEE ,0x2C ,0xF5 ,0x5E ,0xCB ,0x94 ,0xED ,0xAD ,0x52 ,0x45 ,0x32,
0xC8 ,0x62 ,0xC7 ,0x19 ,0x98 ,0xA6 ,0xE1 ,0x2D ,0xFD ,0x6C ,0x39 ,0x01 ,0xB6 ,0x56 ,0x1D ,0xA4,
0x41 ,0x40 ,0x14 ,0x5A ,0xC0 ,0x86 ,0x64 ,0xE5 ,0x7A ,0x49 ,0xA1 ,0xE9 ,0x2F ,0xD2 ,0xE3 ,0xAE,
0xF4 ,0xD7 ,0x04 ,0x89 ,0xD0 ,0x24 ,0x03 ,0x60 ,0xDD ,0xFB ,0xF2 ,0x51 ,0x3A ,0x07 ,0x3D ,0x71,
0x4C ,0x25 ,0xAC ,0xBC ,0x54 ,0x34 ,0xB0 ,0xBA ,0xEC ,0x08 ,0x95 ,0xE0 ,0x97 ,0xDB ,0x12 ,0xC9,
0x4D ,0xF0 ,0x35 ,0xA0 ,0x7B ,0xD6 ,0x09 ,0x93 ,0xAA ,0xF8 ,0xCC ,0x29 ,0xC6 ,0x8B ,0x13 ,0x31,
0xCA ,0x28 ,0x0E ,0x21 ,0xC1 ,0x0D ,0x8D ,0xD9 ,0x33 ,0x6D ,0x3B ,0xFC ,0x30 ,0xC3 ,0x6F ,0x1E,
0xB4 ,0x58 ,0xB3 ,0x20 ,0x4F ,0xA2 ,0xD3 ,0x0F ,0x38 ,0x42 ,0x55 ,0x0C ,0x02 ,0x80 ,0xCF ,0xAF,
0xDC ,0xA5 ,0xCD ,0xA7 ,0xAB ,0x46 ,0x57 ,0x3C ,0x10 ,0xF6 ,0xB5 ,0xEA ,0xBE ,0x1F ,0x43 ,0x83,
0x59 ,0x7E ,0x36 ,0x8F ,0x75 ,0x9A ,0x9E ,0xB8 ,0x2B ,0x9C ,0x65 ,0x79 ,0x87 ,0x91 ,0x44 ,0x70
};
int sts;
int te,idpi,te1;
    String tte,tta,idps,sdp;
tta="";
sts=Temp.Length();
    for(int i=1;sts>i;i=i+4)
      {
        sdp=Temp.SubString(i,2);
        if(sdp=="")
           break;
        idps="0x"+sdp;
        idpi=StrToInt(idps);
        te=datalist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        sdp=Temp.SubString(i+2,2);
        if(sdp=="")
           break;
        idps="0x"+sdp;
        idpi=StrToInt(idps);
        te=datalist1[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
     }
return (tta);
}
///////////////////////////////////////////////////////////////////////////////////////////////
String redatapack(String Temp)
{
char datalist[256]=
{
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01 ,0x4E ,0x04 ,0xB4 ,0x32 ,0x53 ,0x4D ,0xD6 ,0x08 ,0xC6 ,0x76 ,0x38,
0x62 ,0xA8 ,0xCB ,0x78 ,0xB6 ,0xF1 ,0xB8 ,0x49 ,0xF0 ,0x95 ,0xCD ,0x5C ,0x7D ,0xCA ,0x2B ,0x31,
0xB2 ,0xB0 ,0x59 ,0x39 ,0x15 ,0x1B ,0xE0 ,0xBB ,0x0D ,0x9B ,0x8B ,0xE5 ,0xC8 ,0x90 ,0x6E ,0xCF,
0xAC ,0x1C ,0x2E ,0x5D ,0xE9 ,0x9D ,0x65 ,0xA9 ,0x7E ,0xBD ,0x63 ,0x23 ,0x19 ,0x5F ,0x9A ,0xA4
};

char datalist1[256]=
{
0x6A ,0xE6 ,0x8A ,0xD1 ,0x8E ,0x9D ,0x85 ,0xC4 ,0x05 ,0xEB ,0x9B ,0xC5 ,0x8C ,0xC2 ,0x9F ,0x74,
0xE4 ,0x26 ,0xA9 ,0x3F ,0xDF ,0x22 ,0xFE ,0x15 ,0x48 ,0x1B ,0xCE ,0x77 ,0xDE ,0x06 ,0xD8 ,0x73,
0x69 ,0xBD ,0x17 ,0xF9 ,0x37 ,0x16 ,0x92 ,0xDA ,0x5B ,0xF1 ,0x47 ,0x50 ,0x61 ,0x1C ,0xB1 ,0x6E,
0xE8 ,0x68 ,0x4E ,0x81 ,0x00 ,0x6B ,0xBB ,0xB2 ,0xFA ,0x7F ,0xE2 ,0x2E ,0x4A ,0x2A ,0x78 ,0xB9,
0x4B ,0x18 ,0x63 ,0xEF ,0xA8 ,0xF7 ,0x5C ,0x5D ,0x84 ,0x1A ,0x0B ,0xBF ,0x88 ,0xD5 ,0x11 ,0x99,
0x27 ,0x82 ,0xD4 ,0x67 ,0x3E ,0x0A ,0x76 ,0xB7 ,0xFF ,0x23 ,0xF3 ,0x90 ,0x5F ,0x96 ,0x53 ,0x72,
0xA3 ,0xE7 ,0x7D ,0x66 ,0x7C ,0xEE ,0x2C ,0xF5 ,0x5E ,0xCB ,0x94 ,0xED ,0xAD ,0x52 ,0x45 ,0x32,
0xC8 ,0x62 ,0xC7 ,0x19 ,0x98 ,0xA6 ,0xE1 ,0x2D ,0xFD ,0x6C ,0x39 ,0x01 ,0xB6 ,0x56 ,0x1D ,0xA4,
0x41 ,0x40 ,0x14 ,0x5A ,0xC0 ,0x86 ,0x64 ,0xE5 ,0x7A ,0x49 ,0xA1 ,0xE9 ,0x2F ,0xD2 ,0xE3 ,0xAE,
0xF4 ,0xD7 ,0x04 ,0x89 ,0xD0 ,0x24 ,0x03 ,0x60 ,0xDD ,0xFB ,0xF2 ,0x51 ,0x3A ,0x07 ,0x3D ,0x71,
0x4C ,0x25 ,0xAC ,0xBC ,0x54 ,0x34 ,0xB0 ,0xBA ,0xEC ,0x08 ,0x95 ,0xE0 ,0x97 ,0xDB ,0x12 ,0xC9,
0x4D ,0xF0 ,0x35 ,0xA0 ,0x7B ,0xD6 ,0x09 ,0x93 ,0xAA ,0xF8 ,0xCC ,0x29 ,0xC6 ,0x8B ,0x13 ,0x31,
0xCA ,0x28 ,0x0E ,0x21 ,0xC1 ,0x0D ,0x8D ,0xD9 ,0x33 ,0x6D ,0x3B ,0xFC ,0x30 ,0xC3 ,0x6F ,0x1E,
0xB4 ,0x58 ,0xB3 ,0x20 ,0x4F ,0xA2 ,0xD3 ,0x0F ,0x38 ,0x42 ,0x55 ,0x0C ,0x02 ,0x80 ,0xCF ,0xAF,
0xDC ,0xA5 ,0xCD ,0xA7 ,0xAB ,0x46 ,0x57 ,0x3C ,0x10 ,0xF6 ,0xB5 ,0xEA ,0xBE ,0x1F ,0x43 ,0x83,
0x59 ,0x7E ,0x36 ,0x8F ,0x75 ,0x9A ,0x9E ,0xB8 ,0x2B ,0x9C ,0x65 ,0x79 ,0x87 ,0x91 ,0x44 ,0x70
};
int sts;
int te,idpi,te1;
    String tte,tta,idps,sdp,retta;
tta="";
retta="";
//Temp="F98AA470";  /////////////////////////////////////////////////////////////////////////////
sts=Temp.Length();
    for(int i=1;sts>i;i=i+4)
      {
        sdp=Temp.SubString(i,2);
        if(sdp=="")
           break;
           for(int j=0;256>=j;j++)
            {
            te=datalist[j];
            tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
            if(tta==sdp)
             {
             retta=retta+IntToHex(j,2);
             break;
             }
            }

        sdp=Temp.SubString(i+2,2);
        if(sdp=="")
           break;
        for(int j=0;256>=j;j++)
            {
            te=datalist1[j];
            tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
            if(tta==sdp)
             {
             retta=retta+IntToHex(j,2);
             break;
             }
            }
     }
return (retta);
}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal re_in_mima_jiemi(String jmmima)    ////IC卡14扇区0块用户卡专用
{
String Temp,cardpwd,strnow;
String jiamiyn=0;  ////加密是否成功，1成功，0失败
String jiamihyn="0";  /// 加密过程中是不是有失败过，1为是，0为否
String jiamihas="0";  //是否已经加密过 1为是，0为否

///*************************************************USB发卡器用


    char Datas[8]= {0} ;
    String datass;
    char Data[32] = {0};
    char Datay[20] = "";
  //  int result;
 //   bool result;


for (int i=15;i>=0;i--)
{
FrmBar->PBarGo();
now=i;
if(sjiamiyn(now))
{


     int result = USB_RequestEx(Datas);
    if (result == 1)
    {
      //  cardpwd=cardidpwdpoc(Datas);
 //     if(now==wzsector)
//      cardpwd=cardidpwdpocw(Datas);
//    else
      cardpwd=jmmima;  //cardidpwdpoc(Datas);

//      if(now==0&&card0spoc==1) //card0spoc=0;//是否把0扇区写死  1为是
//        Temp=cardpwd+"00000000"+cardpwd;
//      else
        Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

      strnow="00"+IntToStr(now);
      strnow=strnow.SubString(strnow.Length()-1,2);
       sprintf(Datay, "%s", strnow+cardpwd+datass+"0000000000");
       bool result = USB_Write(23, 0,Datay);
//   bool result = USB_Authentication(0,now,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
      //   return TRUE;
  //    return true;
      }
   //   MessageBox(0, "加密成功！!!","信息",MB_OK);
   else {
      Form1->Caption = "初始化失败！!!";
    //  Application->MessageBoxA("15加密失败！!!","信息",MB_OK);
      jiamihyn="1";
     // return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
//      if(now==0)
//        sprintf(Datay, "%s", "000000000000"+datass);
//      else
        sprintf(Datay, "%s", strnow+"FFFFFFFFFFFF"+datass+"0000000000");
        bool result = USB_Write(23, 0,Datay);
   //   bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       jiamiyn="1";
       jiamihas="1";
       if(now!=0)
         {
       //  Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
         sprintf(Data, "%s", Temp);
         bool results = USB_Write(now, 3,Data);
         Form1->Caption = "已初始化";
    //     if (result){
    //     Form1->Caption = "初始化成功";
         }
       }
       else {
       int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

      sprintf(Datay, "%s", strnow+"FFFFFFFFFFFF"+datass+"0000000000");
        bool result = USB_Write(23, 0,Datay);
  //    bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
            Form1->Caption = "验证成功";


        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
              }
       else   {
         Form1->Caption = "初始化失败！!!";
         jiamihyn="1";
              }
         }
         else{
         Form1->Caption = "验证失败！!!";
         jiamihyn="1";
             }
       }
       }
      }
     }
    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        jiamihyn=1;
     //   return FALSE;
         }
}
}

if(jiamiyn=="1"){
  if(jiamihyn=="1"){
    Form1->Caption = "初始化部分成功";
    return FALSE;
    }
  else {
   if(jiamihas=="1"){
   Form1->Caption = "已经初始化成功";
   return FALSE;
     }
     else{
     Form1->Caption = "初始化成功";
     return TRUE;
     }
   }
}
else {
  Form1->Caption = "初始化失败！";
  return FALSE;
  }
}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal recardjiamiquanzhiqian(void)    ////IC卡14扇区0块用户卡专用
{
String Temp,cardpwd,strnow;
String jiamiyn=0;  ////加密是否成功，1成功，0失败
String jiamihyn="0";  /// 加密过程中是不是有失败过，1为是，0为否
String jiamihas="0";  //是否已经加密过 1为是，0为否

///*************************************************USB发卡器用


    char Datas[8]= {0} ;
    String datass;
    char Data[32] = {0};
    char Datay[20] = "";
  //  int result;
 //   bool result;


for (int i=15;i>=0;i--)
{
FrmBar->PBarGo();
now=i;
if(sjiamiyn(now))
{


     int result = USB_RequestEx(Datas);
    if (result == 1)
    {
      //  cardpwd=cardidpwdpoc(Datas);
 //     if(now==wzsector)
//      cardpwd=cardidpwdpocw(Datas);
//    else
      cardpwd=cardidpwdpoc(Datas);

//      if(now==0&&card0spoc==1) //card0spoc=0;//是否把0扇区写死  1为是
//        Temp=cardpwd+"00000000"+cardpwd;
//      else
        Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

      strnow="00"+IntToStr(now);
      strnow=strnow.SubString(strnow.Length()-1,2);
       sprintf(Datay, "%s", strnow+cardpwd+datass+"0000000000");
       bool result = USB_Write(23, 0,Datay);
//   bool result = USB_Authentication(0,now,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
      //   return TRUE;
  //    return true;
      }
   //   MessageBox(0, "加密成功！!!","信息",MB_OK);
   else {
      Form1->Caption = "初始化失败！!!";
    //  Application->MessageBoxA("15加密失败！!!","信息",MB_OK);
      jiamihyn="1";
     // return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
//      if(now==0)
//        sprintf(Datay, "%s", "000000000000"+datass);
//      else
        sprintf(Datay, "%s", strnow+"FFFFFFFFFFFF"+datass+"0000000000");
        bool result = USB_Write(23, 0,Datay);
   //   bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       jiamiyn="1";
       jiamihas="1";
       if(now!=0)
         {
       //  Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
         sprintf(Data, "%s", Temp);
         bool results = USB_Write(now, 3,Data);
         Form1->Caption = "已初始化";
    //     if (result){
    //     Form1->Caption = "初始化成功";
         }
       }
       else {
       int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

      sprintf(Datay, "%s", strnow+"FFFFFFFFFFFF"+datass+"0000000000");
        bool result = USB_Write(23, 0,Datay);
  //    bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
            Form1->Caption = "验证成功";


        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
              }
       else   {
         Form1->Caption = "初始化失败！!!";
         jiamihyn="1";
              }
         }
         else{
         Form1->Caption = "验证失败！!!";
         jiamihyn="1";
             }
       }
       }
      }
     }
    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        jiamihyn=1;
     //   return FALSE;
         }
}
}

if(jiamiyn=="1"){
  if(jiamihyn=="1"){
    Form1->Caption = "初始化部分成功";
    return FALSE;
    }
  else {
   if(jiamihas=="1"){
   Form1->Caption = "已经初始化成功";
   return FALSE;
     }
     else{
     Form1->Caption = "初始化成功";
     return TRUE;
     }
   }
}
else {
  Form1->Caption = "初始化失败！";
  return FALSE;
  }
}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal recardjiamiquan(void)    ////IC卡14扇区0块用户卡专用
{
String Temp,cardpwd;
String jiamiyn=0;  ////加密是否成功，1成功，0失败
String jiamihyn="0";  /// 加密过程中是不是有失败过，1为是，0为否
String jiamihas="0";  //是否已经加密过 1为是，0为否

///*************************************************USB发卡器用


    char Datas[8]= {0} ;
    String datass;
    char Data[32] = {0};
    char Datay[20] = "";
  //  int result;
 //   bool result;


for (int i=15;i>=0;i--)
{
FrmBar->PBarGo();
now=i;
if(sjiamiyn(now))
{


     int result = USB_RequestEx(Datas);
    if (result == 1)
    {
      //  cardpwd=cardidpwdpoc(Datas);
 //     if(now==wzsector)
//      cardpwd=cardidpwdpocw(Datas);
//    else
      cardpwd=cardidpwdpoc(Datas);

//      if(now==0&&card0spoc==1) //card0spoc=0;//是否把0扇区写死  1为是
//        Temp=cardpwd+"00000000"+cardpwd;
//      else
        Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";


       sprintf(Datay, "%s", cardpwd+datass);
   bool result = USB_Authentication(0,now,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
      //   return TRUE;
  //    return true;
      }
   //   MessageBox(0, "加密成功！!!","信息",MB_OK);
   else {
      Form1->Caption = "初始化失败！!!";
    //  Application->MessageBoxA("15加密失败！!!","信息",MB_OK);
      jiamihyn="1";
     // return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
//      if(now==0)
//        sprintf(Datay, "%s", "000000000000"+datass);
//      else
        sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
      bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       jiamiyn="1";
       jiamihas="1";
       if(now!=0)
         {
       //  Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
         sprintf(Data, "%s", Temp);
         bool results = USB_Write(now, 3,Data);
         Form1->Caption = "已初始化";
    //     if (result){
    //     Form1->Caption = "初始化成功";
         }
       }
       else {
       int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

      sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
      bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
            Form1->Caption = "验证成功";


        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
              }
       else   {
         Form1->Caption = "初始化失败！!!";
         jiamihyn="1";
              }
         }
         else{
         Form1->Caption = "验证失败！!!";
         jiamihyn="1";
             }
       }
       }
      }
     }
    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        jiamihyn=1;
     //   return FALSE;
         }
}
}

if(jiamiyn=="1"){
  if(jiamihyn=="1"){
    Form1->Caption = "初始化部分成功";
    return FALSE;
    }
  else {
   if(jiamihas=="1"){
   Form1->Caption = "已经初始化成功";
   return FALSE;
     }
     else{
     Form1->Caption = "初始化成功";
     return TRUE;
     }
   }
}
else {
  Form1->Caption = "初始化失败！";
  return FALSE;
  }
}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal cardjiamiquan(void)    ////IC卡14扇区0块用户卡专用
{
String Temp,cardpwd;
String jiamiyn=0;  ////加密是否成功，1成功，0失败
String jiamihyn="0";  /// 加密过程中是不是有失败过，1为是，0为否
String jiamihas="0";  //是否已经加密过 1为是，0为否

///*************************************************USB发卡器用


    char Datas[8]= {0} ;
    String datass;
    char Data[32] = {0};
    char Datay[20] = "";
  //  int result;
 //   bool result;


for (int i=15;i>=0;i--)
{
FrmBar->PBarGo();
now=i;
if(sjiamiyn(now))
{


     int result = USB_RequestEx(Datas);
    if (result == 1)
    {
      //  cardpwd=cardidpwdpoc(Datas);
 //     if(now==wzsector)
//      cardpwd=cardidpwdpocw(Datas);
//    else
      cardpwd=cardidpwdpoc(Datas);

//      if(now==0&&card0spoc==1) //card0spoc=0;//是否把0扇区写死  1为是
//        Temp=cardpwd+"00000000"+cardpwd;
//      else
        Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";


       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,now,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
      //   return TRUE;
  //    return true;
      }
   //   MessageBox(0, "加密成功！!!","信息",MB_OK);
   else {
      Form1->Caption = "初始化失败！!!";
    //  Application->MessageBoxA("15加密失败！!!","信息",MB_OK);
      jiamihyn="1";
     // return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
//      if(now==0)
//        sprintf(Datay, "%s", "000000000000"+datass);
//      else
        sprintf(Datay, "%s", cardpwd+datass);
      bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       jiamiyn="1";
       jiamihas="1";
       if(now!=0)
         {
       //  Temp="FFFFFFFFFFFFFF078069FFFFFFFFFFFF";
         sprintf(Data, "%s", Temp);
         bool results = USB_Write(now, 3,Data);
         Form1->Caption = "已初始化";
    //     if (result){
    //     Form1->Caption = "初始化成功";
         }
       }
       else {
       int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

      sprintf(Datay, "%s", "123456123456"+datass);
      bool result = USB_Authentication(0,now,Datay);
  if (result)
       {
            Form1->Caption = "验证成功";


        sprintf(Data, "%s", Temp);
    bool result = USB_Write(now, 3,Data);
   if (result){
      Form1->Caption = "初始化成功";
    //  if(i==15)
        jiamiyn="1";
              }
       else   {
         Form1->Caption = "初始化失败！!!";
         jiamihyn="1";
              }
         }
         else{
         Form1->Caption = "验证失败！!!";
         jiamihyn="1";
             }
       }
       }
      }
     }
    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
        jiamihyn=1;
     //   return FALSE;
         }
}
}

if(jiamiyn=="1"){
  if(jiamihyn=="1"){
    Form1->Caption = "初始化部分成功";
    return FALSE;
    }
  else {
   if(jiamihas=="1"){
   Form1->Caption = "已经初始化成功";
   return FALSE;
     }
     else{
     Form1->Caption = "初始化成功";
     return TRUE;
     }
   }
}
else {
  Form1->Caption = "初始化失败！";
  return FALSE;
  }
}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal onesqjiamiffyn(int sq)
{
String cardpwd,Temp;
char Datas[8]= {0} ;
char Data[32] = {0};
char Datay[20] = "";
    String datass;
int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,sq,Datay);
  if (result)
     {
      return TRUE;
     }
     else
     {
      return FALSE;
     }
  }
  else
   return FALSE;
}
//////////////////////////////////////////////////////////////////////////////////////////
void sqtest(void)
{
   FrmBar->PBarOpen(15);

   if(!onesqjiamiffyn(0))
     Form1->sCheckBox55->Checked=true;
   else
     Form1->sCheckBox55->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(1))
     Form1->sCheckBox56->Checked=true;
   else
     Form1->sCheckBox56->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(2))
     Form1->sCheckBox57->Checked=true;
   else
     Form1->sCheckBox57->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(3))
     Form1->sCheckBox58->Checked=true;
   else
     Form1->sCheckBox58->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(4))
     Form1->sCheckBox59->Checked=true;
   else
     Form1->sCheckBox59->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(5))
     Form1->sCheckBox60->Checked=true;
   else
     Form1->sCheckBox60->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(6))
     Form1->sCheckBox61->Checked=true;
   else
     Form1->sCheckBox61->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(7))
     Form1->sCheckBox62->Checked=true;
   else
     Form1->sCheckBox62->Checked=false;

     FrmBar->PBarGo();


   if(!onesqjiamiffyn(8))
     Form1->sCheckBox63->Checked=true;
   else
     Form1->sCheckBox63->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(9))
     Form1->sCheckBox64->Checked=true;
   else
     Form1->sCheckBox64->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(10))
     Form1->sCheckBox65->Checked=true;
   else
     Form1->sCheckBox65->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(11))
     Form1->sCheckBox66->Checked=true;
   else
     Form1->sCheckBox66->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(12))
     Form1->sCheckBox67->Checked=true;
   else
     Form1->sCheckBox67->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(13))
     Form1->sCheckBox68->Checked=true;
   else
     Form1->sCheckBox68->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(14))
     Form1->sCheckBox69->Checked=true;
   else
     Form1->sCheckBox69->Checked=false;

     FrmBar->PBarGo();

   if(!onesqjiamiffyn(15))
     Form1->sCheckBox70->Checked=true;
   else
     Form1->sCheckBox70->Checked=false;

     FrmBar->PBarGo();

     FrmBar->PBarClose();
}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal onejiamityn(int sq)
{
String cardpwd,Temp;
char Datas[8]= {0} ;
char Data[32] = {0};
char Datay[20] = "";
    String datass;
int result = USB_RequestEx(Datas);                       
    if (result == 1)
    {
     cardpwd=cardidpwdpoc(Datas);
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,sq,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
  //      if(sq==0&&card0spoc==1) //card0spoc=0;//是否把0扇区写死  1为是
   //     Temp=cardpwd+"00000000"+cardpwd;
    //  else
        Temp=cardpwd+"FF078069"+cardpwd;

        sprintf(Data, "%s", Temp);
        bool result = USB_Write(sq, 3,Data);
      if (result){
           Form1->Caption = "初始化成功";
           return TRUE;
           }
      else {
           Form1->Caption = "初始化错误";
           return FALSE;
           }
     }
     else
      return FALSE;
  }
  else
   return FALSE;
}
//////////////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal dianjiamipoc(void)
{
String ins,jmshanqu0007,jmshanqu0815,aa,aa1,cardcount;
int okcnt=0,bf;
int Pokcnt=0;

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
   tcon1->adoquery->Close();
//   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0"){
     Pokcnt=Pokcnt+1;
     if(onejiamityn(0))
       okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x02";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(1))
       okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x04";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(2))
     okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x08";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(3))
     okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x10";
   if(aa1!="0")  {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(4))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x20";
   if(aa1!="0")  {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(5))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x40";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(6))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x80";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(7))
        okcnt=okcnt+1;
   }


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   FrmBar->PBarGo();
   aa1=aa&"0x01";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(8)==TRUE)
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x02";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(9))
        okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x04";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(10))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x08";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(11))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x10";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(12))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x20";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(13))
        okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x40";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(14))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x80";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(15))
        okcnt=okcnt+1;
     }

     if(okcnt==Pokcnt)
       {
        if(qudiaochishu==1)///去掉次数控制 0为去掉，1为启动
        {
///----------------
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(23, 0,Data);
   if (result)
   {
       cardcount = String(Data).SubString(1,6);
   }
///----------------
       bf=("0x"+("00"+cardcount))^00;
       if(bf==0)
         {
         bf=1;
         }
       bf=bf-1;
       cardcount=IntToHex(StrToInt(bf),6);
///^^^^^^^^^^^^^^^^^^^^^^

       cardcount=cardcount+"FFFFFF";
       cardcount = cardcount.SubString(1,6);
       cardcount = cardcount+"00000000000000000000000000";

        sprintf(Data, "%s", cardcount);
        result = USB_Write(25, 0,Data);
        if (result)
            {
            return TRUE;
            }
            else
            {
            return FALSE;
            }
///^^^^^^^^^^^^^^^^^^^^^^
         }
         else
         {
         return TRUE;
         }
       }
     else{
      if(okcnt!=0)
        Form1->Caption = "部分初始化成功";
     return FALSE;
     }


}
//---------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal quanjiamipoc(void)
{
String ins,jmshanqu0007,jmshanqu0815,aa,aa1;
int okcnt=0;
int Pokcnt=0;

   jmshanqu0007="255";
   jmshanqu0815="255";

//   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0"){
     Pokcnt=Pokcnt+1;
     if(onejiamityn(0))
       okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x02";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(1))
       okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x04";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(2))
     okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x08";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(3))
     okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x10";
   if(aa1!="0")  {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(4))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x20";
   if(aa1!="0")  {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(5))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x40";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(6))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x80";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(7))
        okcnt=okcnt+1;
   }


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   FrmBar->PBarGo();
   aa1=aa&"0x01";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(8)==TRUE)
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x02";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(9))
        okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x04";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(10))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x08";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(11))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x10";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(12))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x20";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(13))
        okcnt=okcnt+1;
     }

     FrmBar->PBarGo();
   aa1=aa&"0x40";
   if(aa1!="0"){
   Pokcnt=Pokcnt+1;
     if(onejiamityn(14))
        okcnt=okcnt+1;
   }

     FrmBar->PBarGo();
   aa1=aa&"0x80";
   if(aa1!="0") {
   Pokcnt=Pokcnt+1;
     if(onejiamityn(15))
        okcnt=okcnt+1;
     }

     if(okcnt==Pokcnt)
       return TRUE;
     else{
      if(okcnt!=0)
        Form1->Caption = "部分初始化成功";
     return FALSE;
     }


}
//---------------------------------------------------------------------------
/////////////////////////////////////////////////////////////////////////////////
void jiamityn14(void)    ////IC卡14扇区0块用户卡专用
{
String cardpwd,Temp;
char Datas[8]= {0} ;
char Datay[20] = "";
    String datass;
int result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,13,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
     onejiamityn(13);
     }
   }
    result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,14,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
     onejiamityn(14);
     }
   }
    result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,15,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
     onejiamityn(15);
     }
   }
}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal userkzpoc(void)    ////IC卡14扇区0块用户卡专用
{
String cardpwd,Temp,cardcount,ins;
         try
         {
         Form22=new TForm22(Application);
         Form22->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form22;
           Application->ShowException(&exception);
           }

           if(userkzfig=="ff")
             {
              return FALSE;
             }
             else
             {
             if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
              {
               cardcount=userkzfig+"FFFFFF";
               cardcount = cardcount.SubString(1,6);
               cardcount = cardcount+"00000000000000000000000000";
              char Data[32] = {0};
                 sprintf(Data, "%s", cardcount);
                bool  result = USB_Write(25, 0,Data);
                 if (result)
                  {
                 return TRUE;
                  }
                  else
                  {
                  return FALSE;
                  }

               }
               else
               {
               return FALSE;
               }

             }
}
/////////////////////////////////////////////////////////////////////////////////
void jiamityn(void)    ////IC卡14扇区0块用户卡专用
{
String cardpwd,Temp,cardcount,ins,bttfe;
int bttf;
char Datas[8]= {0} ;
char Datay[20] = "";
    String datass;
///****************
if(qudiaochishu == 1)  ///去掉次数控制  0为去掉，1为启动
{
///----------------
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(23, 0,Data);
   if (result)
   {
       cardcount = String(Data).SubString(1,6);
   }
///----------------
       bttf=("0x"+("00"+cardcount))^00;
       bttfe="ff";
       if(bttf==0)
         {
         bttfe="0";
/////**********
}
else
{
bttfe="ff";
}
/////-----------------------------------
ins="select usertishi1 from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {

   userkztishi=tcon1->adoquery->FieldByName("usertishi1")->AsString.Trim();

   }
/////-----------------------------------
/////**********
         }


///****************
bool  result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
        if(datass=="")
            return;
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,secondsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
     if(bttfe=="0")
      {
     if(userkzpoc())
       {
       FrmBar->PBarOpen(15);
       dianjiamipoc();
       }
      }
      else
      {
      FrmBar->PBarOpen(15);
      dianjiamipoc();
      }

     }
   }
    result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     if(bttfe=="0")
      {
     if(userkzpoc())
       {
       FrmBar->PBarOpen(15);
       dianjiamipoc();
       }
      }
      else
      {
      FrmBar->PBarOpen(15);
      dianjiamipoc();
      }
     }
   }
    result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,wzsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     if(bttfe=="0")
      {
     if(userkzpoc())
       {
       FrmBar->PBarOpen(15);
       dianjiamipoc();
       }
      }
      else
      {
      FrmBar->PBarOpen(15);
      dianjiamipoc();
      }
     }
   }
FrmBar->PBarClose();
delay(60);
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
//用户卡：111012    123456          0001           01                02            03
//        有效期     密码          识别码       01为记数开         有效期xor     除有效期其它xor
//                                              00为记数关
//进入时为 111012    123456          0001           01
//出去时为 111012    123456          0001           01                02            03
String xorcard(String aa)    ////IC卡14扇区0块用户卡专用   可得到两个xor
{String a,b,c,d,xor1,xor2;
int e,f;
b="0x00";
for (int i=1;i<=6;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
xor1=IntToHex(f,2);
aa=aa+xor1;

b="0x00";
for (int i=7;i<=20;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
xor2=IntToHex(f,2);

a=aa+xor2;

return (a);
}

String xordata(String aa)    ////IC卡14扇区0块用户卡专用   可得到两个xor
{String a,b,c,d,xor1,xor2;
int e,f,w;
w=aa.Length();
b="0x00";
for (int i=1;i<=w;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
xor1=IntToHex(f,2);
aa=xor1;
return (aa);
}
////////////////////////////////////////////////////////////////////////////////
//用户卡：111012    123456          0001           01                02            03
//        有效期     密码          识别码       01为记数开         有效期xor     除有效期其它xor
//                                              00为记数关
//进入时为 111012    123456          0001           01                02            03
//出去时为 true
extern "C" BOOL pascal rexorcard(String aa)    ////IC卡14扇区0块用户卡专用
{String a,b,c,d,xor1,xor2;
int e,f;
b="0x00";
for (int i=1;i<=6;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
xor1=IntToHex(f,2);
aa=aa+xor1;

b="0x00";
for (int i=7;i<=20;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
xor2=IntToHex(f,2);

a=aa+xor2;
xor1=a.SubString(19,4);
xor2=a.SubString(23,4);
if(xor1==xor2)
   return TRUE;
else
   return FALSE;

}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal pwdpoc(int sector,String pwd)
{
/////////////////////---------------------------------------------------
String Temp,cardpwd;
//if(pwd.Length()==12)

//else {
//  Form1->Caption = "密码错误";
//  return FALSE;
//  }
      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        Temp=cardpwd+"FF078069FFFFFFFFFFFF";
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
  bool result = USB_Authentication(0,sector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(sector, 3,Data);
   if (result) {
      Form1->Caption = "初始化成功";
      return TRUE;
      }
   //   MessageBox(0, "加密成功！!!","rrr",MB_OK);
   else {
   //   MessageBox(0, "加密失败！!!","rrr",MB_OK);
      Form1->Caption = "加密失败";
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     int result = USB_RequestEx(Datas);
    if (result == 1)
     {
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
     sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,sector,Datay);
  if (result)
       {
       Form1->Caption = "已初始化";
       return FALSE;
       }
      }
     }


    }
    else {
    	Form1->Caption = "寻卡失败,请放卡片！";
       return FALSE;
         }
////******************************************************
}
///*********************************************************************************
int copoc(int m)
{
String pd="1";
int e=m,f=0;
for(int i=1;e>i;i++)
{
pd=pd<<1;
}
pd=IntToHex(StrToInt(pd),4);
f=StrToInt(pd);
return (f);
}
void displayopencard(String selectin)
{
String ds,ts,t,t1,d,dsp,ec,nos;
int k=0,m,n,elecount,pe,c;
elecount=0;
ds = selectin;
//   for(int i=1;i<=ds.Length();i=i+2)      ///////数据翻转
 //		{
 //		   dsp=ds.SubString(i,1);
 //		   ds=ds.Delete(i,1);
 //		   ds=ds.Insert(dsp,i+1);
 //       }   ////////
 //  opendoor=ds;
//   if(ds=="")
//   {

   for(int j=0;j<Form1->ListView3->Items->Count;j++)
		Form1->ListView3->Items->Item[j]->Checked=false;
//   return;
//   }
   ds=ds+"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form1->ListView3->Items->Count;
//   for(int j=0;j<Form1->ListView2->Items->Count;j+4)
   for(int j=0;j<64;j+4)
	   {
	   k++;
	   ts=ds.SubString(k,1);

		for(int i=0;i<4;i++,j++)
		{
		//  pa=ListView2->Items->Item[j]->Caption;
		//  m=StrToInt(pa);
		  m=i+1;
		  n=copoc(m);
		  t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
		//  d=IntToHex(di,1);
		  d="0x"+ts;
          t1=t&d;

        //  p=p1&n;
		       //	if(j<Form1->ListView2->Items->Count)
                        if(j<64)
            {
			 if(t==t1)
			 {
          //   msfig="1";
		     //	  Form1->ListView1->Items->Item[j]->Checked=true;
                          elecount=elecount+1;
                          ec=IntToStr(elecount);
//////-----------
n=Form1->ListView3->Items->Count;
for( c=0;c<n;c=c+1)
{
  nos=Form1->ListView3->Items->Item[c]->SubItems->Strings[1];
  if(ec==nos){
     Form1->ListView3->Items->Item[c]->Checked=true;
      break;
     }
}
////---------

			 }
			 else
			 {
		    //	 Form1->ListView2->Items->Item[j]->Checked=false;
                         elecount=elecount+1;
             }
			}
		 }
	   }
}
///**********************************************************************************
//////////////////////////////////////////////////////////////////////////////////
void  displayMemoselectaddr(String elevatoraddr)
{
String ds,ts,t,t1,d,dsp,ec,nos,ins,addr,elevatorname;
int k=0,m,n,elecount,pe,loopno;
elecount=0;
loopno=0;
ds = elevatoraddr;
 Form7->Memo1->Lines->Add("可进入的设备地址为:");
   for(int i=1;i<=ds.Length();i=i+2)
		{
		   dsp=ds.SubString(i,1);
		   ds=ds.Delete(i,1);
		   ds=ds.Insert(dsp,i+1);
        }
 //  opendoor=ds;
//   if(ds=="")
//   {
   for(int j=0;j<Form1->ListView1->Items->Count;j++){
		Form1->ListView1->Items->Item[j]->Checked=false;
                nos=Form1->ListView1->Items->Item[j]->Caption;
                n=StrToInt(nos);
                if(loopno<n)
                    loopno=n;
                }
//   return;
//   }
   ds=ds+"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form1->ListView1->Items->Count;
   m=350;
   loopno=350;
   for(int j=0;j<loopno+4;j+4)
	   {
	   k++;
	   ts=ds.SubString(k,1);

		for(int i=0;i<4;i++,j++)
		{
		//  pa=ListView2->Items->Item[j]->Caption;
		//  m=StrToInt(pa);
		  m=i+1;
		  n=copoc(m);
		  t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
		//  d=IntToHex(di,1);
		  d="0x"+ts;
          t1=t&d;

        //  p=p1&n;
			if(j<loopno)
            {
			 if(t==t1)
			 {
          //   msfig="1";
		     //	  Form1->ListView1->Items->Item[j]->Checked=true;
                          elecount=elecount+1;
                          ec=IntToStr(elecount);

///-----------------------
  ins="select * from elevatorinfo where [no]=";
  ins+=ec;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {
         elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
         addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
         }
///------------------------------
                          Form7->Memo1->Lines->Add(ec+"   "+elevatorname+"   "+addr);
                          elevatorname=" ";
                          addr=" ";
			 }
			 else
			 {
		    //	 Form1->ListView1->Items->Item[j]->Checked=false;
                         elecount=elecount+1;
             }
			}
		 }
	   }
}
/////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////
void displayMemoelevatornumber(String selectin)
{
String ds,ts,t,t1,d,ec,ec1,floorname,ins;
int k=0,m,n,selcount=0;
   ds = selectin;
   opendoor=ds;
//   Form7->Memo1->Lines->Add("可进入的电梯层数为:");
//   if(ds=="")
//   {
   for(int j=0;j<Form1->ListView2->Items->Count;j++)
        Form1->ListView2->Items->Item[j]->Checked=false;
//   return;
//   }
   ds=ds+"00000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form1->ListView2->Items->Count;
   for(int j=0;j<Form1->ListView2->Items->Count;j+4)
       {
       k++;
       ts=ds.SubString(k,1);

        for(int i=0;i<4;i++,j++)
        {
        //  pa=ListView2->Items->Item[j]->Caption;
        //  m=StrToInt(pa);
          m=i+1;
          n=copoc(m);
          t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
        //  d=IntToHex(di,1);
          d="0x"+ts;
          t1=t&d;

        //  p=p1&n;
            if(j<Form1->ListView2->Items->Count)
            {
             if(t==t1)
             {
             msfig="1";
         //     Form1->ListView2->Items->Item[j]->Checked=true;
              selcount=selcount+1;
              if(selcount<5)
                ec="-"+IntToStr(selcount);
              else
                {
                ec=IntToStr(selcount-4);
                }
              ec1=IntToStr(selcount);
          //    Form7->Memo1->Lines->Add("如果有负层数为"+ec+"层;     "+"如果没有负层数为"+ec1+"层;");
   ins="select * from floor where floorno='";
   ins+=ec1;
   ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount !=0)
         {
         floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
         }
              Form7->Memo1->Lines->Add(floorname+";");

             }
             else
             {
        //     Form1->ListView2->Items->Item[j]->Checked=false;
             selcount=selcount+1;
             }
            }
         }
       }
}
//////////////////////////////////////////////////////////////////////////////////
String getfloors(void)
{
String qstr,bida,pa,st,d="0",t,pd="1",pe,pf,UserCID,ss;
   int m,n,di,e,f,g,pes,pfs;
 ///////////////////////////////////////////////////////////////////
t="0000000000000000";
//////////////////////////////////////////////////////////////////
   m=Form1->ListView3->Items->Count;
   for(int j=0;j<Form1->ListView3->Items->Count;j+4)
	   {
		for(int i=0;i<4;i++,j++)
		{
		 if(j<Form1->ListView3->Items->Count)
		 {
		 if(Form1->ListView3->Items->Item[j]->Checked)
		   {
			pa=Form1->ListView3->Items->Item[j]->SubItems->Strings[1];
                        if(pa!="JBUS")
                        {
			e=pa.ToInt();
f=e/4;
g=f;
f=f*4;
e=e-f;
f=0;
pd="1";
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	g=g-1;
	pd="8";
}

pe=t.SubString(g+1,1);
pe=("0x"+pe)^"0x00";
//pfs=StrToInt(pf);
//pes=StrToInt(pe);
pd=pd|pe;
//f=pfs|pes;
//pd="00"+pd;
pd=IntToHex(StrToInt(pd),1);
//pd=pd.SubString(pd.Length()-1,2);

		   t=t.Delete(g+1,1);
		   t=t.Insert(pd,g+1);
		   // m=StrToInt(pa);
	  //		m=i+1;
	  //		n=copoc(m);
	  //		st=("0x"+("00"+IntToStr(n)))^00;
	  //		d=d|st;
	  //		di=StrToInt(d);
	  //		d=IntToHex(di,1);
                     }
		   }
		  }
		}
	//	elevatoraddr=elevatoraddr+d;
		d="0";
	   }
return (t);
///////////////////////////////////////////////////////////////////
}
///////////////////////////////////////////////////////////////////////////////////////
/*
void displayelevatornumber(String selectin)
{
String ds,ts,t,t1,d;
int k=0,m,n;
   ds = selectin;
   opendoor=ds;

//   if(ds=="")
//   {
   for(int j=0;j<Form1->ListView2->Items->Count;j++)
        Form1->ListView2->Items->Item[j]->Checked=false;
//   return;
//   }
   ds=ds+"00000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form1->ListView2->Items->Count;
   for(int j=0;j<Form1->ListView2->Items->Count;j+4)
       {
       k++;
       ts=ds.SubString(k,1);

        for(int i=0;i<4;i++,j++)
        {
        //  pa=ListView2->Items->Item[j]->Caption;
        //  m=StrToInt(pa);
          m=i+1;
          n=copoc(m);
          t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
        //  d=IntToHex(di,1);
          d="0x"+ts;
          t1=t&d;

        //  p=p1&n;
            if(j<Form1->ListView2->Items->Count)
            {
             if(t==t1)
             {
             msfig="1";
              Form1->ListView2->Items->Item[j]->Checked=true;


             }
             else
             {
             Form1->ListView2->Items->Item[j]->Checked=false;
             }
            }
         }
       }
}
*/
void displayelevatornumber(String selectin)
{
String ds,ts,t,t1,d,dsp,ec,nos;
int k=0,m,n,elecount,pe,c;
elecount=0;
ds = selectin;
//   for(int i=1;i<=ds.Length();i=i+2)      ///////数据翻转
 //		{
 //		   dsp=ds.SubString(i,1);
 //		   ds=ds.Delete(i,1);
 //		   ds=ds.Insert(dsp,i+1);
 //       }   ////////
 //  opendoor=ds;
//   if(ds=="")
//   {

   for(int j=0;j<Form1->ListView2->Items->Count;j++)
		Form1->ListView2->Items->Item[j]->Checked=false;
//   return;
//   }
   ds=ds+"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form1->ListView2->Items->Count;
//   for(int j=0;j<Form1->ListView2->Items->Count;j+4)
   for(int j=0;j<64;j+4)
	   {
	   k++;
	   ts=ds.SubString(k,1);

		for(int i=0;i<4;i++,j++)
		{
		//  pa=ListView2->Items->Item[j]->Caption;
		//  m=StrToInt(pa);
		  m=i+1;
		  n=copoc(m);
		  t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
		//  d=IntToHex(di,1);
		  d="0x"+ts;
          t1=t&d;

        //  p=p1&n;
		       //	if(j<Form1->ListView2->Items->Count)
                        if(j<64)
            {
			 if(t==t1)
			 {
             msfig="1";
		     //	  Form1->ListView1->Items->Item[j]->Checked=true;
                          elecount=elecount+1;
                          ec=IntToStr(elecount);
//////-----------
n=Form1->ListView2->Items->Count;
for( c=0;c<n;c=c+1)
{
  nos=Form1->ListView2->Items->Item[c]->SubItems->Strings[1];
  if(ec==nos){
     Form1->ListView2->Items->Item[c]->Checked=true;
      break;
     }
}
////---------

			 }
			 else
			 {
		    //	 Form1->ListView2->Items->Item[j]->Checked=false;
                         elecount=elecount+1;
             }
			}
		 }
	   }
}
//////////////////////////////////////////////////////////////////////////////////
void  displayselectaddr(String elevatoraddr)
{
String ds,ts,t,t1,d,dsp,ec,nos,chet;
int k=0,m,n,elecount,pe,loopno,js;
elecount=0;
loopno=0;
ds = elevatoraddr;
   for(int i=1;i<=ds.Length();i=i+2)
		{
		   dsp=ds.SubString(i,1);
		   ds=ds.Delete(i,1);
		   ds=ds.Insert(dsp,i+1);
        }
 //  opendoor=ds;
//   if(ds=="")
//   {
Form1->ListView1->OnChange=NULL;
   for(int j=0;j<Form1->ListView1->Items->Count;j++){
		Form1->ListView1->Items->Item[j]->Checked=false;
                nos=Form1->ListView1->Items->Item[j]->Caption;
                n=StrToInt(nos);
                if(loopno<n)
                    loopno=n;
                }
//   return;
//   }
   ds=ds+"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form1->ListView1->Items->Count;
  // for(int j=0;j<Form1->ListView1->Items->Count;j+4)
   for(int j=0;j<loopno+4;j+4)
	   {
	   k++;
	   ts=ds.SubString(k,1);

		for(int i=0;i<4;i++,j++)
		{
		//  pa=ListView2->Items->Item[j]->Caption;
		//  m=StrToInt(pa);
		  m=i+1;
		  n=copoc(m);
		  t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
		//  d=IntToHex(di,1);
		  d="0x"+ts;
          t1=t&d;

        //  p=p1&n;
		   //	if(j<Form1->ListView1->Items->Count)
                        if(j<loopno)
            {
			 if(t==t1)
			 {
             msfig="1";
		     //	  Form1->ListView1->Items->Item[j]->Checked=true;
                          elecount=elecount+1;
                          ec=IntToStr(elecount);
//////-----------
n=Form1->ListView1->Items->Count;
for( js=0;js<n;js=js+1)
{
  nos=Form1->ListView1->Items->Item[js]->Caption;
  if(ec==nos){
      chet=ec;
     Form1->ListView1->Items->Item[js]->Checked=true;
      break;
     }
}
////---------
			 }
			 else
			 {
                         ec=IntToStr(elecount);
                          n=Form1->ListView1->Items->Count;
                          for( js=0;js<n;js=js+1)
                           {
                            nos=Form1->ListView1->Items->Item[js]->Caption;
                            if((ec==nos)&&(chet!=ec)){
                              Form1->ListView1->Items->Item[js]->Checked=false;
                              break;
                              }
                          }
                         elecount=elecount+1;
             }
			}
		 }
	   }
//Form1->ListView1->OnChange=ListView1Change;
}

extern "C" BOOL pascal write11addr(void)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
 // addtemp=addtemp+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 // Temp2=addtemp.SubString(1,32);

  Temp="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";
  Temp2="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,add2sector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(add2sector, 0,Data);
   if (result)
     {
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(add2sector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(add2sector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
  //    StringGrid1->Cells[4][k]="写卡成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write12addr(void)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
 // addtemp=addtemp+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
 // Temp2=addtemp.SubString(1,32);

  Temp="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";
  Temp2="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,add1sector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(add1sector, 0,Data);
   if (result)
     {
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(add1sector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(add1sector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
  //    StringGrid1->Cells[4][k]="发送成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal wr0s0baes(void)
{
if(card0sguanlian==0)  ///全部卡号关联处理  1为是
     return TRUE;
 else
 {
  char Datas[8]= {0} ;
    String datass,cardpwd,a="ff";
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,0,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(0, 0,Data);
   if (result)
   {
      result = USB_Write(0, 1,Data);
   if (result)
     {
     return TRUE;
     }
   else
     {
     return FALSE;
     }
    //   a = String(Data).SubString(1,32);
   }
   }
   }
 }
 return FALSE;
}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write13s1s2to0(void)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
  Temp="000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Temp=Temp.SubString(1,32);

  Temp2="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,xorsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(xorsector, 1,Data);
   if (result)
     {
      result = USB_Write(xorsector, 2,Data);
    if (result)
      {
      return TRUE;
      }
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write13s0qing0(void)
{
String Temp,Temp1,Temp2,Temps,cardpwd;
///*************************************************USB发卡器用
  Temps="000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Temp=Temps.SubString(1,32);

  Temp2="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,xorsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(xorsector, 0,Data);
   if (result)
     {
  /*
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(addsector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(addsector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
      */
  //    StringGrid1->Cells[4][k]="发送成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write13s0(String Temps)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
  Temps=Temps+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Temp=Temps.SubString(1,32);

  Temp2="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,xorsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(xorsector, 0,Data);
   if (result)
     {
  /*
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(addsector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(addsector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
      */
  //    StringGrid1->Cells[4][k]="发送成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write13addr(String addtemp)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
  addtemp=addtemp+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Temp2=addtemp.SubString(1,32);

  Temp="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,addsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(addsector, 0,Data);
   if (result)
     {
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(addsector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(addsector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
  //    StringGrid1->Cells[4][k]="发送成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write13addrwz(String wztemp)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
  wztemp=wztemp+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Temp2=wztemp.SubString(1,32);

  Temp="00000000000000000000000000000000";
  Temp1="00000000000000000000000000000000";

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpocw(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,wzsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(wzsector, 0,Data);
   if (result)
     {
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(wzsector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(wzsector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
  //    StringGrid1->Cells[4][k]="发送成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write15addr(String elevatoraddr)
{
String Temp,Temp1,Temp2,cardpwd;
///*************************************************USB发卡器用
  elevatoraddr=elevatoraddr+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Temp=elevatoraddr.SubString(1,32);
  Temp1=elevatoraddr.SubString(33,32);
  Temp2=elevatoraddr.SubString(65,32);

      char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,secondsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Temp);
   bool result = USB_Write(secondsector, 0,Data);
   if (result)
     {
      Form1->Caption = "写地址成功1";
        sprintf(Data, "%s", Temp1);
        result = USB_Write(secondsector, 1,Data);
   if (result)
      Form1->Caption = "写地址成功2";

        sprintf(Data, "%s", Temp2);
        result = USB_Write(secondsector, 2,Data);
   if (result)
      Form1->Caption = "写地址成功3";
  //    StringGrid1->Cells[4][k]="发送成功";

  //  MessageBox(0, "发送成功！!!","rrr",MB_OK);
     return TRUE;
     }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
      }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
         }



}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal openscom()
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        return FALSE;
        }
        else
        return TRUE;

}
extern "C" BOOL pascal closecom()
{
if (!USB_DevClose())
       {
        Form1->Caption = "关闭串口失败";
        return FALSE;
        }
        else
        return TRUE;

}
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write14data0s1s(String Blonr,String Blonr1)
{
///*************************************************USB发卡器用
//  Temp=EndTime+conpwd+UserCID+cardaddr+cardaddr1+cardaddr2+cardaddr3+countyn+"000000";
//  Temp1=selectin+"000000000000000000000000";

   if(!write13s0qing0())
   {
   return FALSE;
   }

      char Datas[8]= {0} ;
    String datass,cardpwd;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Blonr);
   bool result = USB_Write(firstsector, 0,Data);
   if (result)
     {
        sprintf(Data, "%s", Blonr1);
        result = USB_Write(firstsector, 1,Data);
   if (result)
      Form1->Caption = "写层数成功";

//    MessageBox(0, "发送成功！!!","rrr",MB_OK);
    return TRUE;
   }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
       }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
        }

}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write14data0s2s(String Blonr,String Blonr1)
{
///*************************************************USB发卡器用
//  Temp=EndTime+conpwd+UserCID+cardaddr+cardaddr1+cardaddr2+cardaddr3+countyn+"000000";
//  Temp1=selectin+"000000000000000000000000";
 if(!write13s0qing0())
   {
   return FALSE;
   }
   
      char Datas[8]= {0} ;
    String datass,cardpwd;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Blonr);
   bool result = USB_Write(firstsector, 0,Data);
   if (result)
     {
        sprintf(Data, "%s", Blonr1);
        result = USB_Write(firstsector, 2,Data);
   if (result)
      Form1->Caption = "写层数成功";

//    MessageBox(0, "发送成功！!!","rrr",MB_OK);
    return TRUE;
   }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
       }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
        }

}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write14data0s1s2s(String Blonr,String Blonr1,String Blonr2)
{
///*************************************************USB发卡器用
//  Temp=EndTime+conpwd+UserCID+cardaddr+cardaddr1+cardaddr2+cardaddr3+countyn+"000000";
//  Temp1=selectin+"000000000000000000000000";
if(!write13s0qing0())
   {
   return FALSE;
   }
      char Datas[8]= {0} ;
    String datass,cardpwd;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Blonr);
   bool result = USB_Write(firstsector, 0,Data);
   if (result)
     {
        sprintf(Data, "%s", Blonr1);
        result = USB_Write(firstsector, 1,Data);
   if (result) {
      Form1->Caption = "写层数成功";

        sprintf(Data, "%s", Blonr2);
        result = USB_Write(firstsector, 2,Data);
   if (result) {
      Form1->Caption = "写层数成功";
      return TRUE;
               }
               else
               return FALSE;
      }
      else
       return FALSE;
   }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
       }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
        }

}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write14data(String Blonr,String Blonr1,String Blonr2count)
{
///*************************************************USB发卡器用
//  Temp=EndTime+conpwd+UserCID+cardaddr+cardaddr1+cardaddr2+cardaddr3+countyn+"000000";
//  Temp1=selectin+"000000000000000000000000";

      char Datas[8]= {0} ;
    String datass,cardpwd,readcardcnt,a1,a2,a3,a4,a5,a6,lastcrdcnt,nowcrdcnt,qstr;
    int ba,bb,bf;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Blonr);
   bool result = USB_Write(firstsector, 0,Data);
   if (result)
     {
        sprintf(Data, "%s", Blonr1);
        result = USB_Write(firstsector, 1,Data);
   if (result)
      Form1->Caption = "写层数成功";


//////-----------
           char Datas[32] = {0};
            result = USB_Read(firstsector, 2,Datas);
         if (result)
            {

            readcardcnt = String(Datas).SubString(1,32);
            a1=readcardcnt.SubString(9,8);
            if(a1=="BCC6CAFD")
       {
       a1=readcardcnt.SubString(1,2);
       a2=readcardcnt.SubString(3,2);
       a3=readcardcnt.SubString(5,2);
       a4=readcardcnt.SubString(7,2);
       readcardcnt=a4+a3+a2+a1;
       ba=("0x"+("00"+readcardcnt))^00;
       if(addlastcntyn!="1")
            ba=0;
       }
        else
          ba=0;


       a6=Blonr2count.SubString(9,24);

       a1=Blonr2count.SubString(1,2);
       a2=Blonr2count.SubString(3,2);
       a3=Blonr2count.SubString(5,2);
       a4=Blonr2count.SubString(7,2);
       Blonr2count=a4+a3+a2+a1;
       bb=("0x"+("00"+Blonr2count))^00;
       lastcrdcnt=IntToStr(bb);

       Blonr2count=IntToStr(ba+bb);
       Blonr2count = IntToHex(StrToInt64(Blonr2count),8);
       a1=Blonr2count.SubString(Blonr2count.Length()-1,2);
       a2=Blonr2count.SubString(Blonr2count.Length()-3,2);
       a3=Blonr2count.SubString(Blonr2count.Length()-5,2);
       a4=Blonr2count.SubString(Blonr2count.Length()-7,2);
       Blonr2count=a1+a2+a3+a4;

       Blonr2count=Blonr2count+a6;
      /*
 int uiCrcValue=0x38;   ///赋除值

 uiCrcValue = uiCrcValue ^ ("0x"+("00"+a1));  //pucY[ucI]; ///进行异或

  for (int ucJ = 0; ucJ < 8; ucJ++)  ///由于一个字节 8位所以判段8次
       {
       if ((uiCrcValue & 0x01) != 0)
         {
         uiCrcValue = (uiCrcValue >> 1) ^ 0x6a;   ///固定的值
         }
         else
         {
         uiCrcValue = (uiCrcValue >> 1);
         }
       }
 uiCrcValue = uiCrcValue ^ ("0x"+("00"+a2));  //pucY[ucI]; ///进行异或

  for (int ucJ = 0; ucJ < 8; ucJ++)  ///由于一个字节 8位所以判段8次
       {
       if ((uiCrcValue & 0x01) != 0)
         {
         uiCrcValue = (uiCrcValue >> 1) ^ 0x6a;   ///固定的值
         }
         else
         {
         uiCrcValue = (uiCrcValue >> 1);
         }
       }
       a5=IntToHex(uiCrcValue,2);

       Blonr2count=a1+a2+a3+a5;

       Blonr2count=Blonr2count+a6;
      */
       a5=a4+a3+a2+a1;
    //   if(StrToHexYN(a5))
         bf=("0x"+("00"+a5))^00;
    //   else
    //     bf=0;
       nowcrdcnt=IntToStr(bf);

//       Blonr2count=IntToHex(StrToInt64(Blonr2count),8);
            }
//////-----------
//      if(Blonr2count!="00000000")
 //     {
   //     char Datat[8] = {0};
     //   sprintf(Datat, "%s", Blonr2count);
       // result =  USB_ValueInit(firstsector,2,Datat);
        sprintf(Data, "%s", Blonr2count);
        result = USB_Write(firstsector, 2,Data);
        if (result) {
        Form1->Caption = "写计数成功";

    tcon->UserSetado->Active =false;
    qstr="update userinfo set [lastcrdcnt]='";
    qstr+=lastcrdcnt;

    qstr+="',[nowcrdcnt]='";
    qstr+=nowcrdcnt;

 //   qstr+="',[usecount]='0";

    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(Form1->sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
    Form1->sEdit11->Text=nowcrdcnt;
    Form1->StaticText4->Caption="当前卡次数";
   //   }
//    MessageBox(0, "发送成功！!!","rrr",MB_OK);
    return TRUE;
    }
    else
     return FALSE;
   }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
       }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
        }

}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write13s1(String Blonr2count)
{
///*************************************************USB发卡器用
//  Temp=EndTime+conpwd+UserCID+cardaddr+cardaddr1+cardaddr2+cardaddr3+countyn+"000000";
//  Temp1=selectin+"000000000000000000000000";

      char Datas[8]= {0} ;
    String datass,cardpwd;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,wzsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

        char Datat[8] = {0};
        sprintf(Datat, "%s", Blonr2count);
        result =  USB_ValueInit(wzsector,1,Datat);
        if (result)
        {
        Form1->Caption = "写计数成功";
        return TRUE;
   }
   else {
      Form1->Caption = "请放卡片！";
    //  MessageBox(0, "请放卡片！!!","rrr",MB_OK);
      return FALSE;
      }

      }
  else {
     Form1->Caption = "验证失败";
     return FALSE;
       }


    }
    else {
    	Form1->Caption = "寻卡失败";
        return FALSE;
        }

}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal onlywrite14data0s(String Blonr)
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
//  Temp="6D696661726503"+conpwd+Edit23->Text+"00000000";
if(!write13s0qing0())
   {
   return FALSE;
   }

    char Datas[8]= {0} ;
    String datass,cardpwd;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[22] = "";
       sprintf(Datay, "%s", cardpwd+datass+"15");
  bool result = USB_Authentication(0,14,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Blonr);
   bool result = USB_Write(14, 0,Data);
   if (result)
       {
    Form1->Caption = "写卡成功！!!";
    return TRUE;
       }
      else {
       Form1->Caption = "发送失败！!!";
       return FALSE;
           }

     }
  else  {
     Form1->Caption = "验证失败";
     return FALSE;
        }


    }
    else   {
    	Form1->Caption = "寻卡失败";
        return FALSE;
           }
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal write14data0s(String Blonr)
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
//  Temp="6D696661726503"+conpwd+Edit23->Text+"00000000";
if(!write13s0qing0())
   {
   return FALSE;
   }

    char Datas[8]= {0} ;
    String datass,cardpwd;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

        char Datay[22] = "";
       sprintf(Datay, "%s", cardpwd+datass+"15");
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";

     char Data[32] = {0};
        sprintf(Data, "%s", Blonr);
   bool result = USB_Write(firstsector, 0,Data);
   if (result)
       {
    Form1->Caption = "写卡成功！!!";
    return TRUE;
       }
      else {
       Form1->Caption = "发送失败！!!";
       return FALSE;
           }

     }
  else  {
     Form1->Caption = "验证失败";
     return FALSE;
        }


    }
    else   {
    	Form1->Caption = "寻卡失败";
        return FALSE;
           }
}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal Strnumberyn(String aa)
{
String a;
{a=aa.SubString(1,1).Trim();
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
                  {
				  return FALSE;
                  }


}
return TRUE;
}
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////
extern String timepoc(String atime)
{
String a,b;
for (int i=1;i<=atime.Length();i++)
 {a=atime.SubString(i,1).Trim();
 if(Strnumberyn(a))
    ;
 else{
  b=atime.SubString(i+2,1).Trim();
  if(!Strnumberyn(b))
     {
     atime=atime.Insert("0",i+1);
     }

  if((i+5)!=atime.Length())
      atime=atime.Insert("0",i+4);

  if(atime.Length()==8){
     atime="20"+atime;
     }
  break;
   }

 }
 return(atime);
}
////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal PStrToIntYN(String aa)
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
                  {
				  return FALSE;
                  }


}
return TRUE;
}
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
String read00(void)
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */

    char Datas[8]= {0} ;
    String datass,cardpwd,a="ff";
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,0,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(0, 0,Data);
   if (result)
   {
       a = String(Data).SubString(1,32);
          result = USB_Read(0, 1,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
   }
          result = USB_Read(0, 2,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
       Form1->Caption = "读成功" ;
   }
   }
   else
       Form1->Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Form1->Caption = "验证失败";
    }
    else
    	Form1->Caption = "寻卡失败";
return (a);
}
////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////
String read13(void)
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */

    char Datas[8]= {0} ;
    String datass,cardpwd,a="ff";
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,wzsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(wzsector, 0,Data);
   if (result)
   {
       a = String(Data).SubString(1,32);
          result = USB_Read(wzsector, 1,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
   }
          result = USB_Read(wzsector, 2,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
       Form1->Caption = "读13成功" ;
   }
   }
   else
       Form1->Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Form1->Caption = "验证失败";
    }
    else
    	Form1->Caption = "寻卡失败";
return (a);
}
////////////////////////////////////////////////////////////////////////////////////////////////////////
void dispalluser(void)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney;
int n,dlong,bf,imonth,iday;


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
Form1->StringGrid3->Cells[12][0]="当前充次数";
Form1->StringGrid3->Cells[13][0]="当前卡次数";
Form1->StringGrid3->Cells[14][0]="上回卡次数";
Form1->StringGrid3->Cells[15][0]="当前充金额";
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
   ins="select * from userinfo ";
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
}
////////////////////////////////////////////////////////////////////////////////
String read15(void)
{
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */

    char Datas[8]= {0} ;
    String datass,cardpwd,a="ff";
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,secondsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(secondsector, 0,Data);
   if (result)
   {
       a = String(Data).SubString(1,32);
          result = USB_Read(secondsector, 1,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
   }
          result = USB_Read(secondsector, 2,Data);
   if (result)
   {
       a =a+ String(Data).SubString(1,32);
       Form1->Caption = "读15成功" ;
   }
   }
   else
       Form1->Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Form1->Caption = "验证失败";
    }
    else
    	Form1->Caption = "寻卡失败";
return (a);
}
////////////////////////////////////////////////////////////////////////////////
String xorcc(String aa)
{String a,b,c,d;
int e,f,a1,a2=0;
e=aa.Length()+2;
b="0x00";
for (int i=1;i<=e-2;i=i+2)
{ c="0x"+aa.SubString(i,2);
a1=StrToInt(c);
a2=a2+a1;
}
a=a2^0xff;
a2=a2-1;
b=IntToHex(a2^0xff,2);
a=aa+b.SubString(b.Length()-1,2);
return (a);
}

////////////////////////////////////////////////////////////////////////////////
String dxor(String aa)
{String a,b,c,d;
int e,f;
e=aa.Length()+2;
b="0x00";
for (int i=1;i<=e-2;i=i+2)
{ c="0x"+aa.SubString(i,2);
d=b^c;
b=d;
}
f=StrToInt(b);
a=aa.Insert(IntToHex(f,2),e);
return (a);
}

//////***************************************************************************
AnsiString   HexToStr(AnsiString   p)
  {
    int   stringlength=p.Length();
    if(stringlength%2==1)
      return("Error   string   length   not   is   odd.");
    AnsiString   tempchar="",tempcharA;
    for(int   i=1;i<=stringlength;i+=2)
      {
        tempcharA="0x";
        tempcharA+=p[i];
        tempcharA+=p[i+1];
        tempchar+=(char)tempcharA.ToInt();
      }
    return   tempchar;
  }
/*
AnsiString   HexToStr(AnsiString   p)
  {
      int   l=p.Length();
      l=l/2;
      char   cc[262];
      char   mb[82];
      int   i;

      strcpy(cc,   p.c_str());

      mb[0]=(int)cc[0]*16+(int)cc[1];
      for(int   i=1;i<=l;i++)
      {
          int   h0=(int)cc[l*2]+(int)cc[l*2+1];
          mb[i]=(char)h0;
      }
      mb[i]='\0';

      return(mb[i]);
  }
/////******************************************************************************/
////////////////***************************************************************************
String zhuanyi(String ds)
{
//1a->1a01 1b->1a02 1c->1c01 1d->1c02
String a="";
int e;
e=ds.Length();
for (int i=1;i<=e;i=i+2)
{ if(ds.SubString(i,2)=="1A")
    a+="1A01";
  else
  if(ds.SubString(i,2)=="1B")
    a+="1A02";
  else
  if(ds.SubString(i,2)=="1C")
    a+="1C01";
  else
  if(ds.SubString(i,2)=="1D")
    a+="1C02";
  else
    a+=ds.SubString(i,2);
}

return (a);
}
///////////////////////////////////////////////////////////////***************************
String seeddata(String ss)
{
/********************************************************************************
AA BB 1C 01 02 01 08 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16

写数据，（08）2号扇区，0号块   （FF FF FF FF FF FF）密码。写是分块写的

AA BB 1C 01 02 01 0A 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF EB

写数据，（0A）2号扇区，2号块   （FF FF FF FF FF FF）密码。

AA BB 0C 01 01 01 04 00 FF FF FF FF FF FF 09  从控制器中读取1号扇区1号块
1b 01 02 b1 83 31 1b  从控制器中读取1号扇区1号块

AA BB 04 00 00 00 04 写入成功的返回值
*********************************************************************************/
  String Temp="ff",Temp1,p,dt,p1;
  char *SendData;
  int  ln,n,d,t;
  unsigned long lrc,BS;
  if (hComm==0) return (Temp); //检查Handle值
  char inbuff[1024]="0";
  char inbuff1[1024];
  DWORD nBytesRead, dwEvent, dwError;
  COMSTAT cs;
/*********************************************************************************
;扇区1块0为主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h  为地址
;07h  为地址反码
;08h 09h 0ah 0bh 0ch 0dh  为密码 共六位
;0eh 为BCC校验
;--------------------------------------------------------------------------------------------------------
;扇区1块1为
00h 为地址， -------------------此软件这个为00 没用这个功能
01h 02h 03h 为year month date
04h 为空
05h 06h 07h 08h 09h 0ah 为密码

***********************************************************************************/
//  Temp="AABB1C0102010500FFFFFFFFFFFF00";
 // Temp1+=0x00; //-------------------此软件这个为00 没用这个功能
 // Temp1+=0x079010;
 // Temp1+=0x00; //为空
 // Temp1+=0x567890123456;
// Temp="11189020";
 // Temp= HexToStr(Temp1);
//  Temp = mSend->Text;//取得发送的字符串
//  SendData = Temp.c_str(); //字符串转换
  //取得发送的字符串数
 // BS = Temp.Length();
  //BS = StrLen(SendData);  //也可以使用此种方式取得字符串长度
char sReply[64];
//p="1b"+e+f+data_lr(a)+"1b";   //全部处理完成
/*
///////////////////////////////////////////////////////////////**********************
n=StringGrid1->RowCount;
for(int i=1;n>i;i++)
{
p="AABB1C";
//Temp =p;//取得传送的字符串
Temp="AABB1C0102010500FFFFFFFFFFFF00";
dt=StringGrid1->Cells[2][i].Trim();
p=dt.SubString(3,2);
p1=dt.SubString(7,1).Trim();
if(p1=="-")
   p=p+"0"+dt.SubString(6,1).Trim();
else
   p=p+dt.SubString(6,2).Trim();
p1=dt.SubString(dt.Length()-1,1).Trim();
if(p1=="-")
   p=p+"0"+dt.SubString(dt.Length(),1).Trim();
else
   p=p+dt.SubString(dt.Length()-1,2).Trim();
Temp=Temp+p+"00"+"123456789012"+"0000000000";
*/
Temp=ss;
p=xor(Temp);
p=zhuanyi(p);
p="1B"+p+"1B";
//readaddr=sp.SubString(28,1);     //读卡器地址
//readtime="20"+sp.SubString(secondsector,2)+"-"+sp.SubString(17,2)+"-"+sp.SubString(19,2)+" ";
SendData = p.c_str(); //字符串转换
PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
//HextoAscii(SendData,sReply);

delay(600);

//8888888888888888888888888接收

   if (hComm == INVALID_HANDLE_VALUE)
   {
   Temp="ff";
   return (Temp);
//   addr="ff";
//   outdata="ff";
//   return (addr,outdata);
   }
    //取得状态
   ClearCommError(hComm,&dwError,&cs);
   // 数据是否大于我们所准备的Buffer
//   if (64> sizeof(inbuff))
//   {
//     PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
//     addr="ff";
//     outdata="ff";
//     return (addr,outdata);
//    }
  //  PurgeComm(hComm, PURGE_RXCLEAR);  // 清除COM 数据
  // ReadFile(hComm, inbuff,cs.cbInQue*2,&nBytesRead,NULL); // 接收COM 的数据
   if (cs.cbInQue > sizeof(inbuff))
   {
     PurgeComm(hComm, PURGE_RXCLEAR);  // 清除通信端口数据
   //  return;
   Temp="ff";
   return (Temp);
    }
   ReadFile(hComm, inbuff,cs.cbInQue,&nBytesRead,NULL); // 接收通信端口的数据
   //数组中的字符串结尾处补上零字符
   inbuff[cs.cbInQue]= '\0';
  // ReadFile(hComm,inbuff,74,&nBytesRead,NULL); // 接收COM 的数据
   // 转移数据到变量中
  // inbuff[64]= '\0';
  // ss=inbuff;
  // ss=ss.SubString(4,2);
  // if(ss=="0A")ss="10";
  // if(ss=="0B")ss="11";
  // if(ss=="0C")ss="12";
  // if(ss=="0D")ss="13";
  // if(ss=="0E")ss="14";
  // if(ss=="0F")ss="15";
  Temp=inbuff;
  if(Temp=="")
  {
  Temp="ff";
   return (Temp);
  }
 // d=Temp.Length();
 d=96;
  AsciitoHex(inbuff,d,inbuff1);
   Temp=inbuff1;
   p1=Temp.SubString(5,2);
   p="0x"+p1;
   t=StrToInt(p);
  // p=IntToHex(t,2);
  // p1=p;
   t=t*2+4;
   p1=Temp.SubString(3,t);
//   a=Temp.SubString(StrToInt(ss)*2+10,1);
   if(fhxor(p1))
   {
   Temp=p1;
   return (Temp);
   }
   else
   {
 //  a="ff";
   Temp="ff";
   return (Temp);
   }
}
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{
//创建线程但是不运行
        MyThread = new sst(true);
}
//---------------------------------------------------------------------------





//---------------------------------------------------------------------------

void __fastcall TForm1::sButton3Click(TObject *Sender)
{
if(MessageDlg("确认要删除记录吗？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String sp,ins,nos;
int n,j;
sp=sEdit1->Text;
if(sp=="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  return;
  }

ins="delete * from userinfo where [no]=";
ins+=sp;
//ins+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(ins);
tcon->adoquery->ExecSQL();


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

sButton2->Enabled=false; //修改关
sButton3->Enabled=false; //删除关
sButton26->Enabled=false; //发卡关

}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton4Click(TObject *Sender)
{
String yhcx,no,qstr,DeptNo,deno,duno,inc,UserCID,elevatoraddr,pd="1",pe,ss,ins,elevatoraddrs,elevatoraddre;
String userlimtype,userlim1,userlim2,userlim3,userlim4,jbusyn="0",userpuid,kk,zhunji="0",hh,chulimaini;
   String pa,st,d="0",t;
   int pes,pfs;
   int m,n,di,selecttest=0,e,f,g,nrc;

int noi;
sButton4->Enabled=false;


if(sEdit1->Text =="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }else{}
 selecttest=0;
 for(int j=0;j<ListView2->Items->Count;j=j+1)
         if(ListView2->Items->Item[j]->Checked)
                     selecttest=1;
/*
if(displaylayeryn==1){
if(selecttest==0)
  {
  Application->MessageBoxA("请选择要进入的电梯层数!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }
 selecttest=0;
}else
 selecttest=1;
*/
selecttest=0;
 for(int j=0;j<ListView1->Items->Count;j=j+1)
         if(ListView1->Items->Item[j]->Checked)
                     selecttest=1;
if(selecttest==0)
  {
  Application->MessageBoxA("请选择要进入哪个设备!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }
//////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////
t="0000000000000000";
//////////////////////////////////////////////////////////////////
   m=ListView2->Items->Count;
   for(int j=0;j<ListView2->Items->Count;j+4)
	   {
		for(int i=0;i<4;i++,j++)
		{
		 if(j<ListView2->Items->Count)
		 {
		 if(ListView2->Items->Item[j]->Checked)
		   {
			pa=ListView2->Items->Item[j]->SubItems->Strings[1];
                        if(pa!="JBUS")
                        {
			e=pa.ToInt();
f=e/4;
g=f;
f=f*4;
e=e-f;
f=0;
pd="1";
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	g=g-1;
	pd="8";
}

pe=t.SubString(g+1,1);
pe=("0x"+pe)^"0x00";
//pfs=StrToInt(pf);
//pes=StrToInt(pe);
pd=pd|pe;
//f=pfs|pes;
//pd="00"+pd;
pd=IntToHex(StrToInt(pd),1);
//pd=pd.SubString(pd.Length()-1,2);

		   t=t.Delete(g+1,1);
		   t=t.Insert(pd,g+1);
		   // m=StrToInt(pa);
	  //		m=i+1;
	  //		n=copoc(m);
	  //		st=("0x"+("00"+IntToStr(n)))^00;
	  //		d=d|st;
	  //		di=StrToInt(d);
	  //		d=IntToHex(di,1);
                    }
		   }
		  }
		}
	//	elevatoraddr=elevatoraddr+d;
		d="0";
	   }
///////////////////////////////////////////////////////////////////
/*
   m=ListView2->Items->Count;
   for(int j=0;j<ListView2->Items->Count;j+4)
       {
        for(int i=0;i<4;i++,j++)
        {
         if(j<ListView2->Items->Count)
         {
         if(ListView2->Items->Item[j]->Checked)
           {
           // pa=ListView2->Items->Item[j]->Caption;

           // m=StrToInt(pa);
            m=i+1;
            n=copoc(m);
            st=("0x"+("00"+IntToStr(n)))^00;
            d=d|st;
            di=StrToInt(d);
            d=IntToHex(di,1);
           }
          }
        }
        t=t+d;
        d="0";
       }
*/
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
elevatoraddr="000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//////////////////////////////////////////////////////////////////
   m=ListView1->Items->Count;
   for(int j=0;j<ListView1->Items->Count;j+4)
	   {
		for(int i=0;i<4;i++,j++)
		{
		 if(j<ListView1->Items->Count)
		 {
		 if(ListView1->Items->Item[j]->Checked)
		   {
			pa=ListView1->Items->Item[j]->Caption;
			e=pa.ToInt();
f=e/8;
g=f;
f=f*8;
e=e-f;
f=0;
pd="1";
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	g=g-1;
	pd="128";
}

pe=elevatoraddr.SubString(g*2+1,2);
pe=("0x"+pe)^"0x00";
//pfs=StrToInt(pf);
//pes=StrToInt(pe);
pd=pd|pe;
//f=pfs|pes;
//pd="00"+pd;
pd=IntToHex(StrToInt(pd),2);
//pd=pd.SubString(pd.Length()-1,2);

		   elevatoraddr=elevatoraddr.Delete(g*2+1,2);
		   elevatoraddr=elevatoraddr.Insert(pd,g*2+1);
		   // m=StrToInt(pa);
	  //		m=i+1;
	  //		n=copoc(m);
	  //		st=("0x"+("00"+IntToStr(n)))^00;
	  //		d=d|st;
	  //		di=StrToInt(d);
	  //		d=IntToHex(di,1);
		   }
		  }
		}
	//	elevatoraddr=elevatoraddr+d;
		d="0";
	   }
///////////////////////////////////////////////////////////////////
bindcon="";
for(int j=0;j<ListView1->Items->Count;j++)
  {
        if(ListView1->Items->Item[j]->Checked)
        {
        ss=ListView1->Items->Item[j]->SubItems->Strings[2];
  if(ss=="是")
     {
        t=bindcon.Length();
        if(bindcon.Length()<32) {
        pa=ListView1->Items->Item[j]->Caption;
         ins="select * from elevatorinfo where [no]=";  // where [UserCID]!=NULL";
         ins+=pa;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
             {
            elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
            elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2);
            elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
            elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2);
            bindcon+=elevatoraddrs+elevatoraddre;
              }
        }
        else
        {
        Application->MessageBoxA("选择绑定卡片的控制器不能大于8个!!","问题",MB_OK);
        ListView1->Items->Item[j]->Checked=false;
        }
     }
        }
   }
///////////////////////////////////////////////////////////////////
   jbusyn="0";
   for(int j=0;j<ListView2->Items->Count;j++)
	   {
		 if(ListView2->Items->Item[j]->Checked==true)
		   {
			pa=ListView2->Items->Item[j]->SubItems->Strings[1];
                        if(pa=="JBUS")
                        jbusyn="1";
                   }
           }
///////////////////////////////////////////////////////////////////
/*
  if(sComboBox5->Text=="小时") {
   userlimtype="0";
  }
  if(sComboBox5->Text=="日期") {
   userlimtype="1";
  }
  if(sComboBox5->Text=="月份") {
   userlimtype="2";
  }
  if(sComboBox5->Text=="年份") {
   userlimtype="3";
  }
*/
if(sCheckBox35->Checked==true)
  {
  zhunji=zhunji|"0x1";  //是否启用时段
  }
if(sCheckBox28->Checked==true)
  {
  zhunji=zhunji|"0x2";  //周一
  }
if(sCheckBox29->Checked==true)
  {
  zhunji=zhunji|"0x4";  //周二
  }
if(sCheckBox30->Checked==true)
  {
  zhunji=zhunji|"0x8";  //周三
  }
if(sCheckBox31->Checked==true)
  {
  zhunji=zhunji|"0x10";  //周四
  }
if(sCheckBox32->Checked==true)
  {
  zhunji=zhunji|"0x20";  //周五
  }
if(sCheckBox33->Checked==true)
  {
  zhunji=zhunji|"0x40";  //周六
  }
if(sCheckBox34->Checked==true)
  {
  zhunji=zhunji|"0x80";  //周日
  }

  userlimtype=zhunji;

hh=FormatDateTime("HH", DateTimePicker3->Time);
ss=FormatDateTime("nn", DateTimePicker3->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim1=ss|hh;
userlim1=IntToHex(StrToInt(userlim1),2);

hh=FormatDateTime("HH", DateTimePicker4->Time);
ss=FormatDateTime("nn", DateTimePicker4->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim2=ss|hh;
userlim2=IntToHex(StrToInt(userlim2),2);



hh=FormatDateTime("HH", DateTimePicker5->Time);
ss=FormatDateTime("nn", DateTimePicker5->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim3=ss|hh;
userlim3=IntToHex(StrToInt(userlim3),2);

hh=FormatDateTime("HH", DateTimePicker6->Time);
ss=FormatDateTime("nn", DateTimePicker6->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim4=ss|hh;
userlim4=IntToHex(StrToInt(userlim4),2);
//   userlim1=sEdit4->Text;
//   userlim2=sEdit5->Text;
//   userlim3=sEdit6->Text;
//   userlim4=sEdit7->Text;

///////////////////////////////////////////////////////////////////
ins="select chulimaini from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   chulimaini=tcon1->adoquery->FieldByName("chulimaini")->AsString.Trim();
   }
if(chulimaini=="")
{
  chulimaini="0";
}
///////////////////////////////////////////////////////////////////
kk="select *from userinfo where [userpuid]>=all(select max([userpuid]) from  userinfo)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
userpuid=tcon->adoquery->FieldByName("userpuid")->AsString.Trim();
if(userpuid=="")
userpuid=1;
else
userpuid=IntToStr(StrToInt(userpuid)+1);
if(StrToInt(chulimaini)>StrToInt(userpuid))
 {
  userpuid=chulimaini;
 }

      UserCID=IntToHex(StrToInt64(userpuid),4);
//UserCID=IntToHex(StrToInt(sEdit1->Text.Trim()),4);
Label19->Caption=UserCID;
qstr="select * from userinfo where [no]=";
qstr+=sEdit1->Text.Trim();
//qstr+="'";
/*
//tcon->adoquery->Active =false;
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->ExecSQL();
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount!=0)
*/
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
{
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
}
  else
  {
     //     StringGrid1->RowCount=2;      //////////清除发卡设置
     //     StringGrid1->Rows[1]->Clear();




          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from userinfo");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("no")->AsString=sEdit1->Text.Trim();
          tcon->adoquery->FieldByName("name")->AsString=sEdit2->Text.Trim();
//          if(RadioButton1->Checked==true)
//          tcon->adoquery->FieldByName("sex")->AsString="男";
//          else
//          tcon->adoquery->FieldByName("sex")->AsString="女";

//          tcon->adoquery->FieldByName("Dept")->AsString=Edit8->Text.Trim();
//          tcon->adoquery->FieldByName("duties")->AsString=Edit9->Text.Trim();

//          tcon->adoquery->FieldByName("Birthday")->AsString=Edit10->Text.Trim();
 //         tcon->adoquery->FieldByName("idcard")->AsString=Edit11->Text.Trim();
          tcon->adoquery->FieldByName("Address")->AsString=sComboBox1->Text.Trim();
//          tcon->adoquery->FieldByName("Telephone")->AsString=Edit3->Text.Trim();
          tcon->adoquery->FieldByName("MobilePhone")->AsString=sEdit10->Text.Trim();
 //         tcon->adoquery->FieldByName("Email")->AsString=Edit5->Text.Trim();

          if(CheckBox10->Checked==true)
          tcon->adoquery->FieldByName("usecountyn")->AsString="1";
          else
          tcon->adoquery->FieldByName("usecountyn")->AsString="0";

          if(CheckBox12->Checked==true)
          tcon->adoquery->FieldByName("useyxqyn")->AsString="1";
          else
          tcon->adoquery->FieldByName("useyxqyn")->AsString="0";

          tcon->adoquery->FieldByName("usecount")->AsString=Label59->Caption;
          tcon->adoquery->FieldByName("RegisterDate")->AsString=StaticText1->Caption;

          tcon->adoquery->FieldByName("EndTime")->AsString=DateTimePicker1->Date.DateString();
//          tcon->adoquery->FieldByName("PhotoFile")->AsString=Edit5->Text.Trim();
          tcon->adoquery->FieldByName("selectin")->AsString=t;
          tcon->adoquery->FieldByName("elevatoraddr")->AsString=elevatoraddr;
          tcon->adoquery->FieldByName("note")->AsString=sEdit9->Text.Trim();
 //         tcon->adoquery->FieldByName("cardaddr")->AsString=ComboBox2->Text;
 //         tcon->adoquery->FieldByName("cardaddr1")->AsString=ComboBox3->Text;
 //         tcon->adoquery->FieldByName("cardaddr2")->AsString=ComboBox4->Text;
 //         tcon->adoquery->FieldByName("cardaddr3")->AsString=ComboBox5->Text;
          tcon->adoquery->FieldByName("UserCID")->AsString=UserCID;

//          if(RadioButton3->Checked==true)
//          tcon->adoquery->FieldByName("cardtype")->AsString="IC";
//          else
//          tcon->adoquery->FieldByName("cardtype")->AsString="ID";

          tcon->adoquery->FieldByName("cardid")->AsString=Edit41->Text.Trim();

          tcon->adoquery->FieldByName("JBUS")->AsString=jbusyn;

          tcon->adoquery->FieldByName("userlimtype")->AsString=userlimtype;
          tcon->adoquery->FieldByName("userlim1")->AsString=userlim1;
          tcon->adoquery->FieldByName("userlim2")->AsString=userlim2;
          tcon->adoquery->FieldByName("userlim3")->AsString=userlim3;
          tcon->adoquery->FieldByName("userlim4")->AsString=userlim4;

          tcon->adoquery->FieldByName("userpuid")->AsString=userpuid;


         tcon->adoquery->Post();
         tcon->adoquery->Close();
//    StringGrid3->OnSelectCell=NULL;
    pprefresh();
    Form1->StringGrid3->OnSelectCell=NULL;
    nrc=Form1->StringGrid3->RowCount;
    Form1->StringGrid3->RowCount=nrc+1;
    Form1->StringGrid3->OnSelectCell=Form1->StringGrid3SelectCell;
    /*
     n=StringGrid3->RowCount;
     StringGrid3->RowCount=n+1;
     StringGrid3->Cells[0][n-17]=sEdit1->Text.Trim();
     StringGrid3->Cells[1][n-17]=sEdit2->Text.Trim();
     StringGrid3->Cells[2][n-17]=sComboBox1->Text.Trim();
     StringGrid3->Cells[3][n-17]=StaticText1->Caption;
     StringGrid3->Cells[4][n-17]=DateTimePicker1->Date.DateString();
     StringGrid3->Cells[5][n-17]=sEdit11->Text.Trim();
     StringGrid3->Rows[n]->Clear();
     if(CheckBox10->Checked==true)
          StringGrid3->Cells[6][n-17]="是";
          else
          StringGrid3->Cells[6][n-17]="否";

     StringGrid3->Cells[7][n-17]=sEdit9->Text.Trim();
     StringGrid3->Cells[8][n-17]=UserCID;
     StringGrid3->OnSelectCell=StringGrid3SelectCell;
     */
   //      tcon->UserSetado->Active=false;
   //      tcon->UserSetado->Active=true;
/*
if(Edit23->Text!="")
{
qstr="select * from UCID where UserCID='";
qstr+=Edit23->Text;
qstr+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->ExecSQL();
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount==0)
{
         tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from UCID");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();
          tcon->adoquery->FieldByName("UserCID")->AsString=Edit23->Text.Trim();
          tcon->adoquery->FieldByName("username")->AsString=Edit2->Text.Trim();

         tcon->adoquery->Post();
         tcon->adoquery->Close();
}
}
*/
      //   pp="";
         noi=StrToInt(sEdit1->Text.Trim());
         noi=noi++;
         sEdit1->Text=IntToStr(noi);

         String Address,ins;
ins="select DISTINCT Address  from userinfo ";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   m=tcon->adoquery->RecordCount;
   sComboBox1->Items->Clear();
   while (!tcon->adoquery->Eof )
	 {
	 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
         if(Address!="")
           sComboBox1->Items->Add(Address);
         tcon->adoquery->Next() ;
         }

        Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
        sButton2->Enabled=false; //修改关
        sButton3->Enabled=false; //删除关
        sButton4->Enabled=true; //保存关
        sEdit1->ReadOnly=true; //编号写关
  }
sButton4->Enabled=true;
//if(sEdit1->Text=="")
    sButton26->Enabled=false; //发卡关
//else
//    sButton26->Enabled=true; //发卡开
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton7Click(TObject *Sender)
{
String kk,no;  //常关
sButton8->Enabled=false; //修改关
sButton9->Enabled=false; //删除关
sButton18->Enabled=false; //发卡关

for(int j=0;j<ListView3->Items->Count;j++)
        ListView3->Items->Item[j]->Checked=true;


kk="select *from elevatorinfo where [No]>=all(select max([NO]) from elevatorinfo)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
no=tcon->adoquery->FieldByName("No")->AsString.Trim();
if(no=="")
no=1;
else
no=IntToStr(StrToInt(no)+1);
Edit12->Text=no;
if(StrToInt(no)>300)
  {
   Edit12->Text="300";
  }
sCheckBox26->Checked=true;
sCheckBox3->Checked=true;
sCheckBox72->Checked=true;
sButton10->Enabled=true; //保存开
Edit12->ReadOnly=false; //编号写开
conchangeyn=1;
//tcon->bumenado->Insert() ;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton8Click(TObject *Sender)
{
   String qstr,elevatorname,addr,note,keydelay,subbcountyn,nos,sp,bindcardyn,yxqyn,fangqianfan;
   String zhunji="0",gonggongceng="0",userlimtype,hh,ss,userlim1,userlim2,userlim3,userlim4,floorselects,jbusyn,pa,zjsd_enyn;
   int n,j;
if(Edit12->Text!="")
{
          elevatorname=Edit13->Text.Trim();
          addr=Edit14->Text.Trim();
          note=Memo1->Text;
          keydelay=ComboBox9->Text;
          if(keydelay=="")
             keydelay="02";

          if(sCheckBox3->Checked==true)
          subbcountyn="是";
          else
          subbcountyn="否";

          if(sCheckBox2->Checked==true)
          bindcardyn="是";
          else
          bindcardyn="否";

          if(sCheckBox26->Checked==true)
          yxqyn="是";
          else
          yxqyn="否";

          if(sCheckBox72->Checked==true)
          zjsd_enyn="是";
          else
          zjsd_enyn="否";



          fangqianfan=ComboBox2->Text;
          if(fangqianfan=="")
             fangqianfan="无";
///////////////////////////////////////////////////////////////////
if(sCheckBox45->Checked==true)
  {
  gonggongceng=gonggongceng|"0x1";  //公共层 1
  }
if(sCheckBox46->Checked==true)
  {
  gonggongceng=gonggongceng|"0x2";  //公共层 2
  }
if(sCheckBox47->Checked==true)
  {
  gonggongceng=gonggongceng|"0x4";  //公共层 3
  }
if(sCheckBox48->Checked==true)
  {
  gonggongceng=gonggongceng|"0x8";  //公共层 4
  }
if(sCheckBox49->Checked==true)
  {
  gonggongceng=gonggongceng|"0x10";  //公共层 5
  }
if(sCheckBox50->Checked==true)
  {
  gonggongceng=gonggongceng|"0x20";  //公共层 6
  }
if(sCheckBox51->Checked==true)
  {
  gonggongceng=gonggongceng|"0x40";  //公共层 7
  }
if(sCheckBox52->Checked==true)
  {
  gonggongceng=gonggongceng|"0x80";  //公共层 8
  }

///////////////////////////////////////////////////////////////////
if(sCheckBox43->Checked==true)
  {
  zhunji=zhunji|"0x1";  //是否启用时段
  }
if(sCheckBox36->Checked==true)
  {
  zhunji=zhunji|"0x2";  //周一
  }
if(sCheckBox37->Checked==true)
  {
  zhunji=zhunji|"0x4";  //周二
  }
if(sCheckBox38->Checked==true)
  {
  zhunji=zhunji|"0x8";  //周三
  }
if(sCheckBox39->Checked==true)
  {
  zhunji=zhunji|"0x10";  //周四
  }
if(sCheckBox40->Checked==true)
  {
  zhunji=zhunji|"0x20";  //周五
  }
if(sCheckBox41->Checked==true)
  {
  zhunji=zhunji|"0x40";  //周六
  }
if(sCheckBox42->Checked==true)
  {
  zhunji=zhunji|"0x80";  //周日
  }

  userlimtype=zhunji;

hh=FormatDateTime("HH", DateTimePicker7->Time);
ss=FormatDateTime("nn", DateTimePicker7->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim1=ss|hh;
userlim1=IntToHex(StrToInt(userlim1),2);

hh=FormatDateTime("HH", DateTimePicker8->Time);
ss=FormatDateTime("nn", DateTimePicker8->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim2=ss|hh;
userlim2=IntToHex(StrToInt(userlim2),2);



hh=FormatDateTime("HH", DateTimePicker9->Time);
ss=FormatDateTime("nn", DateTimePicker9->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim3=ss|hh;
userlim3=IntToHex(StrToInt(userlim3),2);

hh=FormatDateTime("HH", DateTimePicker10->Time);
ss=FormatDateTime("nn", DateTimePicker10->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim4=ss|hh;
userlim4=IntToHex(StrToInt(userlim4),2);
//   userlim1=sEdit4->Text;
//   userlim2=sEdit5->Text;
//   userlim3=sEdit6->Text;
//   userlim4=sEdit7->Text;
if(ListView3->Visible==true)
{
floorselects=getfloors();
///////////////////////////////////////////////////////////////////
   jbusyn="0";
   for(int j=0;j<ListView3->Items->Count;j++)
	   {
		 if(ListView3->Items->Item[j]->Checked==true)
		   {
			pa=ListView3->Items->Item[j]->SubItems->Strings[1];
                        if(pa=="JBUS")
                        jbusyn="1";
                   }
           }
///////////////////////////////////////////////////////////////////
}
//    tcon->elevatorinfoado->Active =false;
    qstr="update elevatorinfo set [elevatorname] = '";
    qstr+=elevatorname;
    qstr+="',[addr] = '";
    qstr+=addr;
    qstr+="',[note] = '";
    qstr+=note;

    qstr+="',[keydelay] = '";
    qstr+=keydelay;

    qstr+="',[fangqianfan] = '";
    qstr+=fangqianfan;


    if(sCheckBox3->Checked==true)
          qstr+="',[subbcountyn] = '1";
          else
          qstr+="',[subbcountyn] = '0";

    if(sCheckBox2->Checked==true)
          qstr+="',[bindcardyn] = '1";
          else
          qstr+="',[bindcardyn] = '0";

    if(sCheckBox26->Checked==true)
          qstr+="',[yxqyn] = '1";
          else
          qstr+="',[yxqyn] = '0";

    if(sCheckBox72->Checked==true)
          qstr+="',[zjsd_enyn] = '1";
          else
          qstr+="',[zjsd_enyn] = '0";
if(ListView3->Visible==true)
{
    qstr+="',[floorselects]='";
    qstr+=floorselects;

     qstr+="',[jbusyns]='";
    qstr+=jbusyn;
}
    qstr+="',[Intotimeyn]='";
    qstr+=userlimtype;
    qstr+="',[Intotime1]='";
    qstr+=userlim1;
    qstr+="',[Intotime2]='";
    qstr+=userlim2;
    qstr+="',[Intotime3]='";
    qstr+=userlim3;
    qstr+="',[Intotime4]='";
    qstr+=userlim4;


    qstr+="',[gonggongceng]='";
    qstr+=gonggongceng;

//    if(sCheckBox53->Checked==true)
  //        qstr+="',[addrguanlian] = '1";
    //      else
      //    qstr+="',[addrguanlian] = '0";

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
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
//    tcon->elevatorinfoado->Active =true;

    n=StringGrid1->RowCount;
    sp=Edit12->Text;
for( j=0;j<n;j=j+1)
{
  nos=StringGrid1->Cells[0][j];
  if(sp==nos){
     StringGrid1->Cells[1][j]=elevatorname;
     StringGrid1->Cells[2][j]=addr;
     StringGrid1->Cells[3][j]=keydelay;
     StringGrid1->Cells[4][j]=subbcountyn;
     StringGrid1->Cells[5][j]=yxqyn;
     if(bindsoft=="1"){
     StringGrid1->Cells[6][j]=bindcardyn;
     StringGrid1->Cells[7][j]=note;
     }else
      StringGrid1->Cells[6][j]=note;

      break;
     }
}
if(sEdit19->Text =="")
  {
    qstr="update elevatorinfo set [faddr1] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
  }
if(sEdit20->Text =="")
  {
qstr="update elevatorinfo set [faddr2] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
  }
if(sEdit21->Text =="")
  {
qstr="update elevatorinfo set [faddr3] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
  }
if(sEdit22->Text =="")
  {
qstr="update elevatorinfo set [faddr4] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
  }






    tcon->adoquery->Close();
    Application->MessageBoxA("修改成功","恭喜",MB_OK);
    conchangeyn=1;
    sButton18->Enabled=true;
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton9Click(TObject *Sender)
{
if(MessageDlg("确认要删除记录吗？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String sp,ins,nos;
int n,j;
sp=Edit12->Text;
if(sp=="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  return;
  }

ins="delete * from elevatorinfo where [no]=";
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
        conchangeyn=1;
}
sButton8->Enabled=false; //修改关
sButton9->Enabled=false; //删除关
}
//---------------------------------------------------------------------------
extern "C" BOOL pascal numbercongfuyn(String bianhao)
{
String qstr;
qstr="select * from elevatorinfo where [no]=";
qstr+=bianhao;
//qstr+="'";
tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
if(tcon->adoquery->RecordCount==0)
  {
      qstr="select * from elevatorinfo where faddr1='";
      qstr+=bianhao;
      qstr+="'";
      tcon->adoquery->Close();
      tcon->adoquery->SQL->Clear();
      tcon->adoquery->SQL->Add(qstr);
      tcon->adoquery->Open();
      if(tcon->adoquery->RecordCount==0)
        {
          qstr="select * from elevatorinfo where faddr2='";
          qstr+=bianhao;
          qstr+="'";
          tcon->adoquery->Close();
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add(qstr);
          tcon->adoquery->Open();
          if(tcon->adoquery->RecordCount==0)
            {
              qstr="select * from elevatorinfo where faddr3='";
              qstr+=bianhao;
              qstr+="'";
              tcon->adoquery->Close();
              tcon->adoquery->SQL->Clear();
              tcon->adoquery->SQL->Add(qstr);
              tcon->adoquery->Open();
              if(tcon->adoquery->RecordCount==0)
              {
                qstr="select * from elevatorinfo where faddr4='";
                qstr+=bianhao;
                qstr+="'";
                tcon->adoquery->Close();
                tcon->adoquery->SQL->Clear();
                tcon->adoquery->SQL->Add(qstr);
                tcon->adoquery->Open();
                if(tcon->adoquery->RecordCount==0)
                 {
                  return TRUE;
                 }
                 else
                 {
                  return FALSE;
                 }
              }
              else
              {
               return FALSE;
              }

            }
            else
            {
            return FALSE;
            }
        }
        else
        {
        return FALSE;
        }
  }
  else
  {
  return FALSE;
  }
}
void __fastcall TForm1::sButton10Click(TObject *Sender)
{
String yhcx,no,qstr,DeptNo,deno,duno,inc,pd="1",elevatorname,addr,note,keydelay,subbcountyn,bindcardyn,yxqyn,fangqianfan;
String floorselects,jbusyn,pa,zjsd_enyn;
int e,f,saddr;
int noi,n;
sButton10->Enabled=false;
if(Edit12->Text =="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  sButton10->Enabled=true;
  return;
  }else{}
if(Edit12->Text.ToInt()>300)
  {
  Application->MessageBoxA("编号不能大于300！!!","问题",MB_OK);
  sButton10->Enabled=true;
  return;
  }else{}

e=Edit12->Text.ToInt();
f=e/8;
saddr=f;
f=f*8;
e=e-f;
f=0;
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	saddr=saddr-1;
	pd="128";
}

if(Edit12->Text =="0")
  {
saddr=0;
pd="0";
  }
floorselects=getfloors();
///////////////////////////////////////////////////////////////////
   jbusyn="0";
   for(int j=0;j<ListView3->Items->Count;j++)
	   {
		 if(ListView3->Items->Item[j]->Checked==true)
		   {
			pa=ListView3->Items->Item[j]->SubItems->Strings[1];
                        if(pa=="JBUS")
                        jbusyn="1";
                   }
           }
///////////////////////////////////////////////////////////////////
pd=IntToHex(StrToInt(pd),2);
f=StrToInt(pd);
/*
qstr="select * from elevatorinfo where [no]=";
qstr+=Edit12->Text.Trim();
//qstr+="'";
tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
if(tcon->adoquery->RecordCount!=0)
*/
if(!numbercongfuyn(Edit12->Text.Trim()))
{
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
    sButton10->Enabled=true;
    return;
}
  else
  {





          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from elevatorinfo");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("no")->AsString=Edit12->Text.Trim();
          tcon->adoquery->FieldByName("elevatorname")->AsString=Edit13->Text.Trim();
          tcon->adoquery->FieldByName("addr")->AsString=Edit14->Text.Trim();
          tcon->adoquery->FieldByName("note")->AsString=Memo1->Text;
          keydelay=ComboBox9->Text;
          if(keydelay=="")
             keydelay="02";
          tcon->adoquery->FieldByName("keydelay")->AsString=keydelay;
          fangqianfan=ComboBox2->Text;
          if(fangqianfan=="")
             fangqianfan="无";
          tcon->adoquery->FieldByName("fangqianfan")->AsString=fangqianfan;
   //       tcon->adoquery->FieldByName("lim2")->AsString=ComboBox10->Text;
   //       tcon->adoquery->FieldByName("lim3")->AsString=ComboBox11->Text;
   //       tcon->adoquery->FieldByName("lim4")->AsString=ComboBox12->Text;
   //       tcon->adoquery->FieldByName("lim5")->AsString=ComboBox13->Text;
          tcon->adoquery->FieldByName("elevatoraddrs")->AsString=IntToStr(saddr);
	  tcon->adoquery->FieldByName("elevatoraddre")->AsString=pd;

          tcon->adoquery->FieldByName("floorselects")->AsString=floorselects;
          tcon->adoquery->FieldByName("jbusyns")->AsString=jbusyn;

          if(sCheckBox3->Checked==true)
          tcon->adoquery->FieldByName("subbcountyn")->AsString="1";
          else
          tcon->adoquery->FieldByName("subbcountyn")->AsString="0";

          if(sCheckBox72->Checked==true)
          tcon->adoquery->FieldByName("zjsd_enyn")->AsString="1";
          else
          tcon->adoquery->FieldByName("zjsd_enyn")->AsString="0";

          if(sCheckBox2->Checked==true)
          tcon->adoquery->FieldByName("bindcardyn")->AsString="1";
          else
          tcon->adoquery->FieldByName("bindcardyn")->AsString="0";

          if(sCheckBox26->Checked==true)
          tcon->adoquery->FieldByName("yxqyn")->AsString="1";
          else
          tcon->adoquery->FieldByName("yxqyn")->AsString="0";



//          if(sCheckBox53->Checked==true)
  //        tcon->adoquery->FieldByName("addrguanlian")->AsString="1";
    //      else
      //    tcon->adoquery->FieldByName("addrguanlian")->AsString="0";

         tcon->adoquery->Post();
         tcon->adoquery->Close();

          no=Edit12->Text.Trim();
          elevatorname=Edit13->Text.Trim();
          addr=Edit14->Text.Trim();
          note=Memo1->Text;
          keydelay=ComboBox9->Text;

          if(sCheckBox3->Checked==true)
          subbcountyn="是";
          else
          subbcountyn="否";

          if(sCheckBox2->Checked==true)
          bindcardyn="是";
          else
          bindcardyn="否";

          if(sCheckBox26->Checked==true)
          yxqyn="是";
          else
          yxqyn="否";

          if(sCheckBox72->Checked==true)
          zjsd_enyn="是";
          else
          zjsd_enyn="否";


     StringGrid1->OnSelectCell=NULL;
     n=StringGrid1->RowCount;
     StringGrid1->RowCount=n+1;
     StringGrid1->Cells[0][n-1]=no;
     StringGrid1->Cells[1][n-1]=elevatorname;
     StringGrid1->Cells[2][n-1]=addr;
     StringGrid1->Cells[3][n-1]=keydelay;
     StringGrid1->Cells[4][n-1]=subbcountyn;
     StringGrid1->Cells[5][n-1]=yxqyn;
     if(bindsoft=="1"){
     StringGrid1->Cells[6][n-1]=bindcardyn;
     StringGrid1->Cells[7][n-1]=note;
     }else
      StringGrid1->Cells[6][n-1]=note;
     StringGrid1->Rows[n]->Clear();

     StringGrid1->OnSelectCell=StringGrid1SelectCell;

      //   tcon->elevatorinfoado->Active=false;
      //   tcon->elevatorinfoado->Active=true;
       //  pp="";
         noi=StrToInt(Edit12->Text.Trim());
         noi=noi++;
         Edit12->Text=IntToStr(noi);
    //     MessageBox(0, "保存成功！!!","rrr",MB_OK);
        sButton8->Enabled=false; //修改关
        sButton9->Enabled=false; //删除关
        sButton10->Enabled=false; //保存关
        Edit12->ReadOnly=true; //编号写关
  }
sButton10->Enabled=true;
conchangeyn=1;
Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
  tcon->adoquery->Active =false;
  tcon->UserSetado->Active =false;
  tcon->USAdminado->Active =false;
  tcon->elevatorinfoado->Active =false;
  tcon->ADOConnection1->Connected=false;
  tcon1->ADOConnection1->Connected=false;
  tcon2->ADOConnection1->Connected=false;
  MyThread->Terminate();    //结束线程
  Form3->Close();
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormShow(TObject *Sender)
{
      if(CurrentDevice != NULL)
  {
        int abc;
  } else{

String ins,no,nos,elevatorname,addr,note,syear,inc,bindcardyn,lockcomm,yxqyn;
String keydelay,subbcountyn,floorname,floorno,sdate,month,day,sector,floorlock,scom;
int m,n,imonth,iday,t;
Versionnumber=Form1->Caption;
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
        DateTimePicker1->Date=sdate;
        win7="0";
     }
catch(...)
{
       try
       {
        sdate=syear+'/'+String(GTL->wMonth)+'/'+day;
        DateTimePicker1->Date=sdate;
        win7="1";
        }
        catch(...)
        {
        sdate=syear+'.'+String(GTL->wMonth)+'.'+day;
        DateTimePicker1->Date=sdate;
        win7="2";
        }
}


accesspoc();
////*************************************************************************************************

dllHandle = LoadLibrary("scd30.dll");
   USB_DevInit = (fun_USB_DevInit)GetProcAddress(dllHandle,"USB_DevInit");
   USB_DevClose = (fun_USB_DevClose)GetProcAddress(dllHandle,"USB_DevClose");
   USB_RequestEx = (fun_USB_RequestEx)GetProcAddress(dllHandle,"USB_RequestEx");
   USB_BeepExA = (fun_USB_BeepExA)GetProcAddress(dllHandle,"USB_BeepExA");
   USB_Authentication = (fun_USB_Authentication)GetProcAddress(dllHandle,"USB_Authentication");
   USB_Read = (fun_USB_Read)GetProcAddress(dllHandle,"USB_Read");
   USB_Write = (fun_USB_Write)GetProcAddress(dllHandle,"USB_Write");
   USB_ValueInit = (fun_USB_ValueInit)GetProcAddress(dllHandle,"USB_ValueInit");
   USB_Value = (fun_USB_Value)GetProcAddress(dllHandle,"USB_Value");
   USB_BackUp = (fun_USB_BackUp)GetProcAddress(dllHandle,"USB_BackUp");
   USB_Request = (fun_USB_Request)GetProcAddress(dllHandle,"USB_Request");
   USB_Anticoll = (fun_USB_Anticoll)GetProcAddress(dllHandle,"USB_Anticoll");
   USB_Select = (fun_USB_Select)GetProcAddress(dllHandle,"USB_Select");
   USB_Halt = (fun_USB_Halt)GetProcAddress(dllHandle,"USB_Halt");
   ClearData = (fun_ClearData)GetProcAddress(dllHandle,"ClearData");
   GetTimeExA = (fun_GetTimeExA)GetProcAddress(dllHandle,"GetTimeExA");
   SetTimeExA = (fun_SetTimeExA)GetProcAddress(dllHandle,"SetTimeExA");
   SetManagerCard = (fun_SetManagerCard)GetProcAddress(dllHandle,"SetManagerCard");
   GetManagerCard = (fun_GetManagerCard)GetProcAddress(dllHandle,"GetManagerCard");
   SetMaxConsume = (fun_SetMaxConsume)GetProcAddress(dllHandle,"SetMaxConsume");
   GetMaxConsume = (fun_GetMaxConsume)GetProcAddress(dllHandle,"GetMaxConsume");
   SetMaxSumConsume = (fun_SetMaxSumConsume)GetProcAddress(dllHandle,"SetMaxSumConsume");
   GetMaxSumConsume = (fun_GetMaxSumConsume)GetProcAddress(dllHandle,"GetMaxSumConsume");
   SetSaleStyle = (fun_SetSaleStyle)GetProcAddress(dllHandle,"SetSaleStyle");
   GetSaleStyle = (fun_GetSaleStyle)GetProcAddress(dllHandle,"GetSaleStyle");
   SetMachStyle = (fun_SetMachStyle)GetProcAddress(dllHandle,"SetMachStyle");
   GetMachStyle = (fun_GetMachStyle)GetProcAddress(dllHandle,"GetMachStyle");
   GetSumConsume = (fun_GetSumConsume)GetProcAddress(dllHandle,"GetSumConsume");
   GetRecordCount = (fun_GetRecordCount)GetProcAddress(dllHandle,"GetRecordCount");
   SetMachNo = (fun_SetMachNo)GetProcAddress(dllHandle,"SetMachNo");
   InitMach = (fun_InitMach)GetProcAddress(dllHandle,"InitMach");
   RestoreMachEx = (fun_RestoreMachEx)GetProcAddress(dllHandle,"RestoreMachEx");
   GetRecord = (fun_GetRecord)GetProcAddress(dllHandle,"GetRecord");

/////////////////////////////////////////////////////////////////////////////
String COM,sreg,qstr;
TRegistry* Reg=new TRegistry;
try
{
    Reg->RootKey=HKEY_LOCAL_MACHINE;
    if(Reg->OpenKey("HARDWARE\\DEVICEMAP\\SERIALCOMM",False)!=False)
    {
    sreg="\\Device\\slabser0";
    COM = Reg->ReadString(sreg);

     COM=COM.SubString(COM.Length(),1);
     ComboBox1->Text =COM;
     /*
    if(COM!="")
    {
     bool result = USB_DevInit(StrToInt(COM));
     if (result)
        sButton21->Caption = "关闭串口";
     else
    	Caption = "打开串口失败";
    }
    else
     Caption = "打开串口失败";
     */
    }


}
__finally
{
Reg->CloseKey();
delete Reg;
}
ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   COM=tcon1->adoquery->FieldByName("lockcomm")->AsString.Trim();
   }

   if(COM=="")
     {
    COM=comtest();
   }
   else
   {
   bool reresult = USB_DevInit(StrToInt(COM));
     if (!reresult){
     COM=comtest();
     }
   }
   USB_DevClose();
///////*********************************************************************************************


String jmshanqu0007,jmshanqu0815,aa,aa1;
String tsector,huifumimayn;
ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   tsector=tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sComboBox2->Text=tsector;

   functionfig=tcon1->adoquery->FieldByName("functionfig")->AsString.Trim();
   if(functionfig=="3563532"){
     sRadioButton1->Checked=true;
     functionfig="01";
     }
   if(functionfig=="345689"){
     sRadioButton2->Checked=true;
     functionfig="02";
     }
   if(functionfig=="975365"){
     sRadioButton3->Checked=true;
     functionfig="03";
     }

   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   if(jmshanqu0007=="")
     jmshanqu0007="255";
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   if(jmshanqu0815=="")
     jmshanqu0815="255";
   }
//   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox6->Checked=true;
   else
     sCheckBox6->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox7->Checked=true;
   else
     sCheckBox7->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox8->Checked=true;
   else
     sCheckBox8->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox9->Checked=true;
   else
     sCheckBox9->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox10->Checked=true;
   else
     sCheckBox10->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox11->Checked=true;
   else
     sCheckBox11->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox12->Checked=true;
   else
     sCheckBox12->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox13->Checked=true;
   else
     sCheckBox13->Checked=false;


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox14->Checked=true;
   else
     sCheckBox14->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox15->Checked=true;
   else
     sCheckBox15->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox16->Checked=true;
   else
     sCheckBox16->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox17->Checked=true;
   else
     sCheckBox17->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox18->Checked=true;
   else
     sCheckBox18->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox19->Checked=true;
   else
     sCheckBox19->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox20->Checked=true;
   else
     sCheckBox20->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox21->Checked=true;
   else
     sCheckBox21->Checked=false;




     aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox55->Checked=true;
   else
     sCheckBox55->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox56->Checked=true;
   else
     sCheckBox56->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox57->Checked=true;
   else
     sCheckBox57->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox58->Checked=true;
   else
     sCheckBox58->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox59->Checked=true;
   else
     sCheckBox59->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox60->Checked=true;
   else
     sCheckBox60->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox61->Checked=true;
   else
     sCheckBox61->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox62->Checked=true;
   else
     sCheckBox62->Checked=false;


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox63->Checked=true;
   else
     sCheckBox63->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox64->Checked=true;
   else
     sCheckBox64->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox65->Checked=true;
   else
     sCheckBox65->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox66->Checked=true;
   else
     sCheckBox66->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox67->Checked=true;
   else
     sCheckBox67->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox68->Checked=true;
   else
     sCheckBox68->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox69->Checked=true;
   else
     sCheckBox69->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox70->Checked=true;
   else
     sCheckBox70->Checked=false;

/*
sComboBox2->Text="";
ins="select sector from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   tsector=tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sComboBox2->Text=tsector;
 //  conpwd=dxor(conpwd);
   }
   */
/*
ins="select [no],elevatorname,addr,note from elevatorinfo ";//where CardID=NULL";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(ins);
tcon->adoquery->Open();
if(tcon->adoquery->RecordCount==0)return;
else{
no=tcon->adoquery->FieldByName("no")->AsString.Trim();
elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
note=tcon->adoquery->FieldByName("note")->AsString.Trim();
do
{
//   ComboBox2->Items->Add(no);
//   ListView2->Items->Add();
//   m=ListView2->Items->Count;
//   ListView2->Items->Item[m-1]->Caption=no;
//   ListView2->Items->Item[m-1]->SubItems->Insert(0,elevatorname);
//   ListView2->Items->Item[m-1]->SubItems->Insert(1,"addr");
//   ListView2->Items->Item[m-1]->SubItems->Insert(2,"note");

   nos=no;
tcon->adoquery->Next();
no=tcon->adoquery->FieldByName("no")->AsString.Trim();
elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
note=tcon->adoquery->FieldByName("note")->AsString.Trim();

}
//如果两个卡号相同就说明有查找到底了。
while(nos!=no);
}
*/
Timer1->Enabled=true;
//MyThread->Resume();        //开始线程


ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
try
  {
   if(tcon1->adoquery->RecordCount!=0)
   {
   sector=tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   bindsoft=tcon1->adoquery->FieldByName("bindsoft")->AsString.Trim(); //当bindsoft=1时绑定卡片功能开启
   conpwd=tcon1->adoquery->FieldByName("conpwd")->AsString.Trim();
   Allowedtimeyn=tcon1->adoquery->FieldByName("Allowedtimeyn")->AsString.Trim();
   lockcomm=tcon1->adoquery->FieldByName("lockcomm")->AsString.Trim();
   userCID123=tcon1->adoquery->FieldByName("userCID")->AsString.Trim();
   huifumimayn=tcon1->adoquery->FieldByName("huifumimayn")->AsString.Trim();
   }
  }
catch(...)
  {
   sector="";
   bindsoft="0"; //当bindsoft=1时绑定卡片功能开启
   conpwd="147369";
  }
  if(lockcomm!="") {
     ComboBox1->Text =lockcomm;
     sCheckBox5->Checked=true;
     }
     else
     {
     for (int i=2;i<=32;i=i+1){
      USB_DevClose();
      scom=IntToStr(i);
      if(comtrueyn(scom)){
    bool reresults = USB_DevInit(StrToInt(scom));
     if (reresults){
       if(fkqynstart()){
       USB_DevClose();
       Form1->ComboBox1->Text=scom;
       qstr="update other set lockcomm='";
    qstr+=Form1->ComboBox1->Text;
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
       sCheckBox5->Checked=true;
       break;
       }
      }
     }
  }
     }

  if(conpwd=="147369")
        sButton41->Caption="加载发卡器";
      else
        sButton41->Caption="系统序列号";

   if(sector=="") {
   add2sector=10;
   add1sector=11;
   addsector=12;
   wzsector=13;
   xorsector=13;
   firstsector=14;
   secondsector=15;
   }
   else {
   t=StrToInt(sector);
       if((0<t)&&(t<15))
       {
       if(bindsoft=="1"){
       add2sector=t;
       add1sector=t+1;
       addsector=t+2;
       wzsector=t+3;
       xorsector=t+3;
       firstsector=t+4;
       secondsector=t+5;
       }
       else {
       wzsector=t-1;
       xorsector=t-1;
       firstsector=t;
       secondsector=t+1;  }
       }
       else {
       add2sector=10;
       add1sector=11;
       addsector=12;
       wzsector=13;
       xorsector=13;
       firstsector=14;
       secondsector=15;
       }
   }
//////-------------------
   if(huifumimayn=="1")
    {
    sButton60->Caption="其他卡片恢复";
     sCheckBox73->Checked=true;
    }
    else
    {
    sButton60->Caption="老卡片恢复";
     sCheckBox73->Checked=false;
    }
///////////
String old_width,old_height;
old_width=Screen->Width; //获得窗口
old_height=Screen->Height;

if(StrToInt(old_height)<768) {
  old_width=800;
  old_height=600;
  }
  else{
  old_width=1024;
  old_height=768;
  }

//Form1->Width=old_width-3;
Form1->Height=old_height-30;

sGroupBox12->Top=Form1->Height-152;
sGroupBox12->Left=8;

sCheckBox35->Top=Form1->Height-152;

StringGrid3->Height=Form1->Height-207;

sGroupBox14->Top=Form1->Height-152;

ListView2->Height=Form1->Height-207;

ListView1->Height=Form1->Height-207;

if(StrToInt(old_height)>600)
   sGroupBox15->Top=56;

StringGrid1->Height=Form1->Height-210;
StringGrid1->Width=561;
Memo1->Height=Form1->Height-319;//440;
//sGroupBox23->Top=Form1->Height-200;
//////////--------------------

//   if(Allowedtimeyn=="1"){
//    N10->Caption="取消时段设置";
    sGroupBox12->Top=Form1->Height-152;
    sGroupBox12->Left=8;
    sCheckBox35->Top=Form1->Height-152;
  //  sGroupBox12->Visible=true;
    if(sCheckBox35->Checked==true)
 {
  sGroupBox12->Visible=true;
 }
 else
 {
  sGroupBox12->Visible=false;
 }
//    }
//   else {
//    N10->Caption="启动时段设置";
//    sGroupBox12->Visible=false;
//    }
//////*********************************************************************************************
   if(bindsoft!="1")
      ListView1->Columns->Delete(3);

   ins="select * from elevatorinfo ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   while (!tcon->adoquery->Eof )
	 {
	 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
	 elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
         addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
         bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();

         if(bindcardyn=="1")
           bindcardyn="是";
       else
           bindcardyn="否";

	 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
         if(no!="0"){
     ////////////////////////////////////////////////////////////////////
	 ListView1->Items->Add();
         n=ListView1->Items->Count;
	// m=ListView1->Items->Count;
	if(StrToIntYN(no))
	  m=StrToInt(no);
	  else
	    break;
	 ListView1->Items->Item[n-1]->Caption=m;
	 ListView1->Items->Item[n-1]->SubItems->Add(elevatorname);
	 ListView1->Items->Item[n-1]->SubItems->Add(addr);
         if(bindsoft=="1")
           ListView1->Items->Item[n-1]->SubItems->Add(bindcardyn);


   	 ListView1->Items->Item[n-1]->SubItems->Add(note);
     ////////////////////////////////////////////////////////////////////
         }
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;
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
	 ListView2->Items->Add();
         n=ListView2->Items->Count;
	// m=ListView1->Items->Count;
  //	if(StrToIntYN(no))
  //	  m=StrToInt(no);
  //	  else
  //	    break;
      	 ListView2->Items->Item[n-1]->Caption=floorname;
	 ListView2->Items->Item[n-1]->SubItems->Add(floorno);
	 ListView2->Items->Item[n-1]->SubItems->Add(floorno);
     ////////////////////////////////////////////////////////////////////
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;
/////**********************************************************************************************
//       for(int j=1;j<=32;j++)
//        {
//         ListView2->Items->Add();
//         n=ListView2->Items->Count;
//	 ListView2->Items->Item[n-1]->Caption=IntToStr(j)+"层";
//        }
/////**********************************************************************************************
/*
   ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   if(conpwd==""||conpwd=="000000")
    {
    Edit20->Enabled=true;
    Edit21->Enabled=true;
    Button19->Caption="确认";
    }
    else
    {
    Edit20->Enabled=false;
    Edit21->Enabled=false;
    Button19->Caption="重新设置";
    }
    */

////////////////////////////////////////////////////////////////////////////////
Visible_Show();
/////////////////////////////////////////////////////////////////////////
 //  inc=Form17->Edit1->Text;
inc="select * from USAdmin where OpName='";
inc+=Form3->sComboBox1->Text.Trim();
inc+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(inc);
try
{
tcon->adoquery->Open();
}
catch(...)
{
  Application->MessageBoxA("数据库错误!!","Error",MB_OK);
  exit(0);
}

cn1=tcon->adoquery->FieldByName("cn1")->AsString.Trim();
cn2=tcon->adoquery->FieldByName("cn2")->AsString.Trim();
cn3=tcon->adoquery->FieldByName("cn3")->AsString.Trim();
cn4=tcon->adoquery->FieldByName("cn4")->AsString.Trim();
cn5=tcon->adoquery->FieldByName("cn5")->AsString.Trim();
cn6=tcon->adoquery->FieldByName("cn6")->AsString.Trim();
cn7=tcon->adoquery->FieldByName("cn7")->AsString.Trim();
cn8=tcon->adoquery->FieldByName("cn8")->AsString.Trim();
cn9=tcon->adoquery->FieldByName("cn9")->AsString.Trim();
cn10=tcon->adoquery->FieldByName("cn10")->AsString.Trim();
cn11=tcon->adoquery->FieldByName("cn11")->AsString.Trim();
tcon->adoquery->Close();
////////////////////////////////////////////////////////////////////////////////

buttonenableyn();

sButton27->Enabled=false; //  操作管理   修改
sButton28->Enabled=false; //  操作管理   删除
sButton29->Enabled=false; //  操作管理   添加
/////////////////////////////////////////////////////////////////////////
       scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
   //     return FALSE;
        }
if(!fkqynstart())
{
///-----------------
  cn1="0";  //电梯设置卡
  sButton18->Enabled=false; //电梯设置卡
  cn2="0";  //时间卡
  sButton16->Enabled = false;    //时间卡
  cn3="0";  //修改电梯密码
  sButton19->Enabled = false;  //修改电梯密码
  sButton20->Enabled = false;  //同步卡
  sButton25->Enabled = false;  //同步卡
  cn4="0";  //挂失卡
  sButton23->Enabled = false;   //挂失卡
  cn6="0";  //用户发卡
  sButton26->Enabled = false;  //用户发卡
  cn9="0";//恢复所有挂失
  sButton30->Enabled = false;  //恢复所有挂失
  cn10="0";     //开放电梯
  sButton13->Enabled = false;   //开放电梯
  sButton39->Enabled = false;   //开放设置
///-----------------
}
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
///////////////////////////////////////////////////电梯处理
 shebeifresh();

String Address;
ins="select DISTINCT Address  from userinfo ";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   m=tcon->adoquery->RecordCount;
   sComboBox1->Items->Clear();
   while (!tcon->adoquery->Eof )
	 {
	 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
         if(Address!="")
           sComboBox1->Items->Add(Address);
         tcon->adoquery->Next() ;
         }

dispalluser();  ////显示所有用户

//////////////
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
   Form1->ListView2->Enabled=false;
   else
   Form1->ListView2->Enabled=true;


//////////////

if(displaylayeryn==1) {
sButton5->Visible=true;
ListView2->Visible=true;
}else
{
sButton5->Visible=false;
ListView2->Visible=false;
}
}
}
//---------------------------------------------------------------------------








void __fastcall TForm1::sButton17Click(TObject *Sender)
{
sButton17->Enabled=false;
sButton2->Enabled = false;
sButton3->Enabled = false;
Form7->sButton1->Visible=false;
String Temp,Temp1,ds,select,pa,ts,dz,readcard,readcarddata,dt,readcarddata1,readcarddata2,stemp0;

String ins,no,name,endtime,ps,t,d,t1,readstr,s1,s2,s3,s3a,s3b,s3c,s4,s4a,s4b,s5,s6,s7,s8,s9,dtime,a1,a2,a3,a4,a5,usecount,usecountyn;

String r15saddr,selectin,elevatoraddr,cardpwd,redcode,redcode1,redcode2,qstr,sc,read14s0k,ggc,gonggongcheng,sf1,sf2;

String userlimtype,userlim1,userlim2,userlim3,userlim4,jbusyn,jb,floorname,r13saddr,ljh14s0,ljh14s1,ljh15s0,ljh15s1,ljh15s2;
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,zhunjinyn,zhunji,zhunjintime1;
String zhunjintime2,zhunjintime3,zhunjintime4,zhoupoc,hht,hh,sst,gongnengpoc,cardzhuangtai;
int hhint;
TDateTime TM;
int  ln,n,m,bf,ii;
int p=0,p1,k=0,di;

  if(CurrentDevice == NULL)        //判断 HID USB  如果不存在,进行插件USB的读取,否则为HID USB 的读卡   (后加)
  {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton17->Enabled=true; //
        return;
        }
Form7->Memo1->Clear();
Timer1->Enabled=false;

sEdit1->Text = "";
sEdit2->Text = "";
//Edit11->Text = "";
sComboBox1->Text = "";
//Edit3->Text = "";
//Edit4->Text = "";
//Edit5->Text = "";
//Edit10->Text = "";
StaticText1->Caption="";
//Edit8->Text = "";
//Edit9->Text = "";
sEdit9->Text = "";
sEdit11->Text = "";
//ComboBox2->Text = "";
//ComboBox3->Text = "";
//ComboBox4->Text = "";
//ComboBox5->Text = "";
//Edit23->Text = "";
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=false;
for(int j=0;j<ListView1->Items->Count;j++)
        ListView1->Items->Item[j]->Checked=false;

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton17->Enabled=true; //
    return;
}
////-------------------
//if(inipwdpoc=="1")
//     jiamityn();
///---------------------
/*
char Datas[8]= {0} ;
char Datay[20] = "";
    String datass;
int result = USB_RequestEx(Datas);
    if (result == 1)
    {
    //    cardpwd=cardidpwdpoc(Datas);
    //    Temp=cardpwd+"FF078069"+cardpwd;
        datass = String(Datas).SubString(1,8);
    	Form1->Caption = "寻卡成功";

       sprintf(Datay, "%s", "FFFFFFFFFFFF"+datass);
   bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Form1->Caption = "验证成功";
     Application->MessageBoxA("此卡为空白卡，请发卡！","信息",MB_OK);
     }

*/
    if(card0spoc==0)  ///是否处理0扇区    //是否把0扇区写死  1为是
    {
    stemp0=read00();
     if(stemp0=="ff"){
      if (!USB_DevClose())
        Caption = "读取失败";
     sButton17->Enabled=true; //
     return;
     }
    }
    r15saddr=read15();

    char Datas[8]= {0} ;
    String datass;
    int result;
     result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);

      bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Caption = "验证成功";
        //-------------------------------------------------------------------------------------
       char Data[32] = {0};
    bool result = USB_Read(firstsector, 0,Data);
   if (result)
   {
       readcarddata = String(Data).SubString(1,32);
       read14s0k= readcarddata;
       readstr= readcarddata.SubString(1,12);
       if(readstr=="6D6966617265")
         {
         result = USB_Read(firstsector, 1,Data);
         if (result)
            {
             readcarddata1 = String(Data).SubString(1,32);
            }
         else
            readcarddata1="00000000000000000000000000000000";
            result = USB_Read(firstsector, 2,Data);
   if (result)
   {
       readcarddata2 = String(Data).SubString(1,32);
       if(readcarddata2.SubString(9,8)!="BCC6CAFD")
         readcarddata2="00000000000000000000000000000000";
       Caption = "读取成功";
   }
   else
     readcarddata2="00000000000000000000000000000000";

          if(readcarddata.SubString(13,2)=="01")
          {
          dt=readcarddata.SubString(15,2);
          s1=readcarddata.SubString(23,2);
          s2=readcarddata.SubString(25,2);
          s3=readcarddata.SubString(27,1);
          s3a=readcarddata.SubString(28,1);
          s3b=readcarddata.SubString(29,1);
          s3c=readcarddata.SubString(32,1);
          s4=readcarddata.SubString(30,1);
          s4a=readcarddata.SubString(31,1);
          s5=readcarddata.SubString(17,6);
          s6=readcarddata.SubString(29,2);
          if(StrToHexYN(s6))
          bf=("0x"+("00"+s6))^00;
          else
            bf=0;
          s6=IntToStr(bf);

          s7=readcarddata1.SubString(31,2);
          if(StrToHexYN(s7))
          bf=("0x"+("00"+s7))^00;
          else
            bf=0;
          s7=IntToStr(bf);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s5;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
          if(s2=="01")
             s2="01";
          else if(s2=="02")
                  s2="02";
               else if(s2=="04")
                       s2="03";
                     else if(s2=="08")
                          s2="04";
                          else if(s2=="10")
                               s2="05";
                               else if(s2=="20")
                                    s2="06";
                                    else if(s2=="40")
                                         s2="07";
                                         else if(s2=="80")
                                              s2="08";
                                              else
                                              s2="00";
          if(StrToIntYN(s1)) {
            s1="0x"+s1;
            bf=StrToInt(s1)*8;
            }
            s1=bf+StrToInt(s2);
        //    s1=s1+IntToStr(bf);
          if(s3=="5")
          s3="启用计数功能";
          else
          s3="不启用计数功能";

          if(s3a=="E")
          s3a="启用动态码功能";
          else
          s3a="不启用动态码功能";

          s4b=s4;
          ii=("0x"+("00"+s4))^00;
          zhunji=IntToStr(ii&0x4);
          if(zhunji=="4")
          s4="启用有效期功能";
          else
          s4="不启用有效期功能";

          if(s4a=="1")
          s4a="启用准进时段功能";
          else
          s4a="不启用准进时段功能";

          ii=("0x"+("00"+s4b))^00;
          zhunji=IntToStr(ii&0x8);
          if(zhunji=="8")
          s4b="与地址卡关联";
          else
          s4b="0";

          ii=("0x"+("00"+s3b))^00;
          zhunji=IntToStr(ii&0x3);
          if(zhunji=="1")
          s3b="出入状态为： 进入 ";
          else
          if(zhunji=="2")
          s3b="出入状态为： 出去 ";
          else
          s3b="0";

          ii=("0x"+("00"+s3c))^00;
          zhunji=IntToStr(ii&0x1);
          if(zhunji=="1")
          s3c="附属地址";
          else
          s3c="0";
if(s3c!="0")
{
/////////////////////////////
          sf1=readcarddata1.SubString(1,2);
          sf2=readcarddata1.SubString(3,2);
          if(sf2=="01")
             sf2="01";
          else if(sf2=="02")
                  sf2="02";
               else if(sf2=="04")
                       sf2="03";
                     else if(sf2=="08")
                          sf2="04";
                          else if(sf2=="10")
                               sf2="05";
                               else if(sf2=="20")
                                    sf2="06";
                                    else if(sf2=="40")
                                         sf2="07";
                                         else if(sf2=="80")
                                              sf2="08";
                                              else
                                              sf2="00";
          if(StrToIntYN(sf1)) {
            sf1="0x"+sf1;
            bf=StrToInt(sf1)*8;
            }
            sf1=bf+StrToInt(sf2);
}
//-----------------

   Intotimeyn=readcarddata1.SubString(21,2);
   if(StrToHexYN(Intotimeyn))
            bf=("0x"+("00"+Intotimeyn))^00;
          else
            bf=0;
          Intotimeyn=IntToStr(bf);
   Intotime1=readcarddata1.SubString(23,2);
   Intotime2=readcarddata1.SubString(25,2);
   Intotime3=readcarddata1.SubString(27,2);
   Intotime4=readcarddata1.SubString(29,2);
   zhoupoc="";
zhunji=Intotimeyn&"0x1";
if(zhunji=="1")
  {
  zhunjinyn="启用开放时段处理";  //是否启用时段
  }
  else
  {
  zhunjinyn="没有启用开放时段处理";  //是否启用时段
  }
zhunji=Intotimeyn&"0x2";
if(zhunji=="2")
  {
  zhoupoc=zhoupoc+" 周一";  //周一
  }
zhunji=Intotimeyn&"0x4";
if(zhunji=="4")
  {
  zhoupoc=zhoupoc+" 周二";  //周二
  }
zhunji=Intotimeyn&"0x8";
if(zhunji=="8")
  {
  zhoupoc=zhoupoc+" 周三";  //周三
  }
zhunji=Intotimeyn&"0x10";
if(zhunji=="16")
  {
  zhoupoc=zhoupoc+" 周四";  //周四
  }
zhunji=Intotimeyn&"0x20";
if(zhunji=="32")
  {
  zhoupoc=zhoupoc+" 周五";  //周五
  }
zhunji=Intotimeyn&"0x40";
if(zhunji=="64")
  {
  zhoupoc=zhoupoc+" 周六";  //周六
  }
zhunji=Intotimeyn&"0x80";
if(zhunji=="128")
  {
  zhoupoc=zhoupoc+" 周日";  //周日
  }

hht=Intotime1;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

//  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime1=hh+":"+sst;

hht=Intotime2;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime2=hh+":"+sst;

hht=Intotime3;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime3=hh+":"+sst;

hht=Intotime4;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime4=hh+":"+sst;
//-----------------
gongnengpoc=s6&"0x80";
if(gongnengpoc=="128")
  {
  gongnengpoc="此卡不设置地址，只设置功能 ";
  }
  else
  {
   gongnengpoc=s6&"0x08";
   if(gongnengpoc=="8")
     {
     gongnengpoc="此卡即设置地址又关联功能设置 ";
     }
   else
     {
     gongnengpoc="此卡只设置地址 ";
     }
  }
///------------------------------
gonggongcheng="";
ggc=s7&"0x1";
if(ggc=="1")
  {
  gonggongcheng="F01";
  }
ggc=s7&"0x2";
if(ggc=="2")
  {
  gonggongcheng=gonggongcheng+" F02";
  }
ggc=s7&"0x4";
if(ggc=="4")
  {
  gonggongcheng=gonggongcheng+" F03";
  }
ggc=s7&"0x8";
if(ggc=="8")
  {
  gonggongcheng=gonggongcheng+" F04";
  }
ggc=s7&"0x10";
if(ggc=="16")
  {
  gonggongcheng=gonggongcheng+" F05";
  }
ggc=s7&"0x20";
if(ggc=="32")
  {
  gonggongcheng=gonggongcheng+" F06";
  }
ggc=s7&"0x40";
if(ggc=="64")
  {
  gonggongcheng=gonggongcheng+" F07";
  }
ggc=s7&"0x80";
if(ggc=="128")
  {
  gonggongcheng=gonggongcheng+" F08";
  }
///-------------------------------
      //    Caption ="电梯设置卡 地址为 "+s1+"   "+"按键延时 "+dt+"   "+s3;
      //    MessageBox(0,"电梯设置卡","Message",MB_OK);
   Form7->Memo1->Lines->Add("设备设置卡 ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add("设置地址为 "+s1);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   s2=dt;
          if(StrToHexYN(s2))
            bf=("0x"+("00"+s2))^00;
          else
            bf=0;
          dt=IntToStr(bf);
   Form7->Memo1->Lines->Add("按键延时为 "+dt);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add(s3);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add(s3a);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add(s4a);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add(s4);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   if(s4b!="0")
     {
     Form7->Memo1->Lines->Add(s4b);
     Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
     }
   if(s3b!="0")
     {
     Form7->Memo1->Lines->Add(s3b);
     Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
     }

   if(s3c!="0")
     {
     Form7->Memo1->Lines->Add(s3c);
     Form7->Memo1->Lines->Add("附属地址为 "+sf1);
     Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
     }
   Form7->Memo1->Lines->Add(gongnengpoc);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   if(s7!="0")
      {
   Form7->Memo1->Lines->Add("公共层为： ");
   Form7->Memo1->Lines->Add(gonggongcheng);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
      }
   Form7->Memo1->Lines->Add(zhunjinyn);
   Form7->Memo1->Lines->Add(zhoupoc);
   Form7->Memo1->Lines->Add("时段为：  "+zhunjintime1+"至"+zhunjintime2+"   "+zhunjintime3+"至"+zhunjintime4);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
            Form7->Memo1->Lines->Add("定时开放的电梯层为:");
         displayMemoelevatornumber(readcarddata1);
         jbusyn=readcarddata1.SubString(18,1);
         jb=jbusyn&"0x01";
         if(jb=="1")
         {
            ins="select * from floor where floorno='JBUS'";
//   ins+=ec1;
//   ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount !=0)
          {
          floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
          Form7->Memo1->Lines->Add(floorname+";");
          }
         }


   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");



          }
          else
           {
            if(readcarddata.SubString(13,2)=="02")
             {
             dt=readcarddata.SubString(21,2);
             s1=readcarddata.SubString(23,2);
             s2=readcarddata.SubString(25,2);
             s3=readcarddata.SubString(27,2);
             s4=readcarddata.SubString(29,2);
             s5=readcarddata.SubString(31,2);
             s6=readcarddata.SubString(15,6);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s6;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
if(s5=="00")
  {
  s5="07";
  }
         //    Caption ="时间设置卡 时间为"+dt+"-"+s1+"-"+s2+" "+s3+":"+s4+":"+s5;
         //    MessageBox(0, "时间设置卡","Message",MB_OK);
   Form7->Memo1->Lines->Add("时间设置卡 ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add("时间为"+dt+"-"+s1+"-"+s2+" "+s3+":"+s4+"  周"+s5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

             }
             else
             {
               if(readcarddata.SubString(13,2)=="03")
                {
                dt=readcarddata.SubString(21,4);
                s3a=readcarddata.SubString(15,6);

                s1=readcarddata.SubString(25,4);
                s2=readcarddata1.SubString(1,4);
                s3=readcarddata1.SubString(5,4);
                s4=readcarddata1.SubString(9,4);
                s5=readcarddata1.SubString(13,4);
                s6=readcarddata1.SubString(17,4);
                s7=readcarddata1.SubString(21,4);
                s8=readcarddata1.SubString(25,4);
                s9=readcarddata1.SubString(29,4);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s3a;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
          //      Caption ="挂失设置卡 挂失编号为"+dt;
          //      MessageBox(0, "挂失设置卡","Message",MB_OK);
   Form7->Memo1->Lines->Add("挂失设置卡 ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
//   s2=dt;
  //        if(StrToHexYN(s2))
    //        bf=("0x"+("00"+s2))^00;
      //    else
        //    bf=0;
          //dt=IntToStr(bf);
   Form7->Memo1->Lines->Add("挂失码为:");
   Form7->Memo1->Lines->Add(dt);
   if(s1!="0000")
   Form7->Memo1->Lines->Add(s1);
   if(s2!="0000")
   Form7->Memo1->Lines->Add(s2);
   if(s3!="0000")
   Form7->Memo1->Lines->Add(s3);
   if(s4!="0000")
   Form7->Memo1->Lines->Add(s4);
   if(s5!="0000")
   Form7->Memo1->Lines->Add(s5);
   if(s6!="0000")
   Form7->Memo1->Lines->Add(s6);
   if(s7!="0000")
   Form7->Memo1->Lines->Add(s7);
   if(s8!="0000")
   Form7->Memo1->Lines->Add(s8);
   if(s9!="0000")
   Form7->Memo1->Lines->Add(s9);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

                }
               else
               {
                if(readcarddata.SubString(13,2)=="04")
                {
                dt=readcarddata.SubString(21,4);
                s6=readcarddata.SubString(15,6);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s6;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
          //      Caption ="初始化卡";
          //      MessageBox(0, "初始化卡","Message",MB_OK);
   Form7->Memo1->Lines->Add("清空挂失卡  ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

                }
                else
                 {
                 if(readcarddata.SubString(13,2)=="05")
                     {
                     dt=readcarddata.SubString(21,4);
                     s3a=readcarddata.SubString(15,6);

                     s1=readcarddata.SubString(25,4);
                s2=readcarddata1.SubString(1,4);
                s3=readcarddata1.SubString(5,4);
                s4=readcarddata1.SubString(9,4);
                s5=readcarddata1.SubString(13,4);
                s6=readcarddata1.SubString(17,4);
                s7=readcarddata1.SubString(21,4);
                s8=readcarddata1.SubString(25,4);
                s9=readcarddata1.SubString(29,4);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s3a;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
          //      Caption ="挂失设置卡 挂失编号为"+dt;
          //      MessageBox(0, "挂失设置卡","Message",MB_OK);
   Form7->Memo1->Lines->Add("解挂设置卡 ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
//   s2=dt;
  //        if(StrToHexYN(s2))
    //        bf=("0x"+("00"+s2))^00;
      //    else
        //    bf=0;
          //dt=IntToStr(bf);
   Form7->Memo1->Lines->Add("解挂码为:");
   Form7->Memo1->Lines->Add(dt);
   if(s1!="0000")
   Form7->Memo1->Lines->Add(s1);
   if(s2!="0000")
   Form7->Memo1->Lines->Add(s2);
   if(s3!="0000")
   Form7->Memo1->Lines->Add(s3);
   if(s4!="0000")
   Form7->Memo1->Lines->Add(s4);
   if(s5!="0000")
   Form7->Memo1->Lines->Add(s5);
   if(s6!="0000")
   Form7->Memo1->Lines->Add(s6);
   if(s7!="0000")
   Form7->Memo1->Lines->Add(s7);
   if(s8!="0000")
   Form7->Memo1->Lines->Add(s8);
   if(s9!="0000")
   Form7->Memo1->Lines->Add(s9);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
                    }
                    else
                    {
                    if(readcarddata.SubString(13,2)=="07")
                    {
            s6=readcarddata.SubString(21,6);
            if(s6=="147369")
            {
            s6=readcarddata.SubString(15,6);
            /////////////////////////////
          qstr="select * from other where conpwd='";
          qstr+=s6;
          qstr+="'";
          tcon1->adoquery->Close();
          tcon1->adoquery->SQL->Clear();
          tcon1->adoquery->SQL->Add(qstr);
          tcon1->adoquery->Open();
          if(tcon1->adoquery->RecordCount==0)
            {
              Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
              if (!USB_DevClose())
              Caption = "关闭串口失败";
              sButton17->Enabled=true; //
              return;
             }
           /////////////////////////////
          Form7->Memo1->Lines->Add("同步卡 ");
          Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
      a1=readcarddata.SubString(29,2);
      s2=a1;
          if(StrToHexYN(s2))
            bf=("0x"+("00"+s2))^00;
          else
            bf=0;
          a1=IntToStr(bf);
       a2=a1&"0x2";
       if(a2=="2")
       {
       Form7->Memo1->Lines->Add("此卡限制次数");
       }
       else
       {
       Form7->Memo1->Lines->Add("此卡不限制次数");
       }
       a1=readcarddata2.SubString(1,2);
       a2=readcarddata2.SubString(3,2);
       a3=readcarddata2.SubString(5,2);
       a4=readcarddata2.SubString(7,2);
      // }
       a5=a4+a3+a2+a1;
       int bf=("0x"+("00"+a5))^00;
       a5=IntToStr(bf);
   Form7->Memo1->Lines->Add("可用的次数为： "+a5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

           }
           else
           {
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s6;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
   Form7->Memo1->Lines->Add("同步卡 ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
      a1=readcarddata.SubString(29,2);
      s2=a1;
          if(StrToHexYN(s2))
            bf=("0x"+("00"+s2))^00;
          else
            bf=0;
          a1=IntToStr(bf);
       a2=a1&"0x2";
       if(a2=="2")
       {
       Form7->Memo1->Lines->Add("此卡限制次数");
       }
       else
       {
       Form7->Memo1->Lines->Add("此卡不限制次数");
       }
       a1=readcarddata2.SubString(1,2);
       a2=readcarddata2.SubString(3,2);
       a3=readcarddata2.SubString(5,2);
       a4=readcarddata2.SubString(7,2);
      // }
       a5=a4+a3+a2+a1;
       int bf=("0x"+("00"+a5))^00;
       a5=IntToStr(bf);
   Form7->Memo1->Lines->Add("可用的次数为： "+a5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

           }
                    }
                     else
                     {
                      if(readcarddata.SubString(13,2)=="09")
                       {
                       s6=readcarddata.SubString(15,6);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s6;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
   Form7->Memo1->Lines->Add("开放电梯设置卡 ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   a1=readcarddata.SubString(31,2);
      s2=a1;
          if(StrToHexYN(s2))
            bf=("0x"+("00"+s2))^00;
          else
            bf=0;
          a1=IntToStr(bf);
       a2=a1&"0x2";
       if(a2=="2")
       {
       Form7->Memo1->Lines->Add("此卡限制次数");
       }
       else
       {
       Form7->Memo1->Lines->Add("此卡不限制次数");
       }

       a1=readcarddata2.SubString(1,2);
       a2=readcarddata2.SubString(3,2);
       a3=readcarddata2.SubString(5,2);
       a4=readcarddata2.SubString(7,2);
      // }
       a5=a4+a3+a2+a1;
       int bf=("0x"+("00"+a5))^00;
       a5=IntToStr(bf);
   Form7->Memo1->Lines->Add("可用的次数为： "+a5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
         Form7->Memo1->Lines->Add("可开放的电梯层数为:");
         displayMemoelevatornumber(readcarddata1);
         jbusyn=readcarddata1.SubString(18,1);
         jb=jbusyn&"0x01";
         if(jb=="1")
         {
            ins="select * from floor where floorno='JBUS'";
//   ins+=ec1;
//   ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount !=0)
          {
          floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
          Form7->Memo1->Lines->Add(floorname+";");
          }
         }


   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

                       }
                    }
                   }
                 }
               }
             }
           }
         }
       else
         {
         sc=readcarddata.SubString(25,2);

         redcode=readcarddata.SubString(1,12);
         redcode=redatapack(redcode);

         redcode1=readcarddata.SubString(13,6);

         redcode2=readcarddata.SubString(19,4);
         redcode2=redatapack(redcode2);

         readcarddata=redcode+redcode1+redcode2;
         if(!rexorcard(readcarddata))
         {
            FrmBar->PBarClose();
            Application->MessageBoxA("此卡为空白卡，请发卡！","信息",MB_OK);
              goto readret;
         }
          dtime=readcarddata.SubString(1,6);
          s1=readcarddata.SubString(7,6);
          s2=readcarddata.SubString(13,4);
////////////
qstr="select * from userinfo where UserCID='";
qstr+=s2;
qstr+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount==0)
{
     s2="卡片已挂失"+s2;
}
else
{
     s2=tcon->adoquery->FieldByName("no")->AsString.Trim();
}
////////////
/*
          if(StrToHexYN(s2))
            bf=("0x"+("00"+s2))^00;
          else
            bf=0;
          s2=IntToStr(bf);
          readcarddataid = s2;
          */
          s3=readcarddata.SubString(17,1);
          s3a=readcarddata.SubString(18,1);
     //     s4=readcarddata.SubString(19,2);
     //     s5=readcarddata.SubString(21,2);
     //     s6=readcarddata.SubString(23,2);
     //     s7=readcarddata.SubString(25,2);
          result = USB_Read(firstsector, 1,Data);
   if (result)
   {
       readcarddata1 = String(Data).SubString(1,32);

   }
   else
     readcarddata1="00000000000000000000000000000000";

  ljh14s0=leijiahe(read14s0k);
  ljh14s1=leijiahe(readcarddata1);

  ljh15s0=leijiahe(r15saddr.SubString(1,32));
  ljh15s1=leijiahe(r15saddr.SubString(33,32));
  ljh15s2=leijiahe(r15saddr.SubString(65,32));

          result = USB_Read(firstsector, 2,Data);
   if (result)
   {
       readcarddata2 = String(Data).SubString(1,32);
       if(readcarddata2.SubString(9,8)!="BCC6CAFD")
        {
           if((readcarddata2.SubString(1,2)!=ljh14s0)||(readcarddata2.SubString(3,2)!=ljh14s1)||(readcarddata2.SubString(7,2)!=ljh15s0)||(readcarddata2.SubString(9,2)!=ljh15s1)||(readcarddata2.SubString(11,2)!=ljh15s2))
            {
            readcarddata2="00000000000000000000000000000000";
            }
           else
            {
       //     readcarddata2=readcarddata2.SubString(23,4)+"0000BCC6CAFD000000000000000000000000";
            }
        }
       Caption = "读取成功";
   }
   else
     readcarddata2="00000000000000000000000000000000";

   r13saddr=read13();

   if(r13saddr.SubString(1,16)==readcarddata2.SubString(1,16))
    {
      int accd=("0x"+("00"+r13saddr.SubString(17,2)))^00;
    // int accd=StrToInt(r13saddr.SubString(23,2));
      if(accd<(("0x"+("00"+readcarddata2.SubString(17,2)))^00))
        {
         readcarddata2=r13saddr.SubString(17,4)+"0000BCC6CAFD000000000000000000000000";
        }
        else
        {
         readcarddata2=readcarddata2.SubString(17,4)+"0000BCC6CAFD000000000000000000000000";
        }
    }



  if((r13saddr.SubString(1,2)!=ljh14s0)||(r13saddr.SubString(3,2)!=ljh14s1)||(r13saddr.SubString(7,2)!=ljh15s0)||(r13saddr.SubString(9,2)!=ljh15s1)||(r13saddr.SubString(11,2)!=ljh15s2))
     {
     Application->MessageBoxA("软件所读取的卡片有错误!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
    }
    zhunji=r13saddr.SubString(21,2);
    if(StrToHexYN(zhunji))
            bf=("0x"+("00"+zhunji))^00;
          else
            bf=0;
    bf=bf&0x02;
    if(bf==2)
    {
    Application->MessageBoxA("此卡可能被复制!! 重新发卡即可使复制卡失效。","问题",MB_OK);
    }

    cardzhuangtai=r13saddr.SubString(23,2);

   userlimtype=readcarddata1.SubString(21,2);
   if(StrToHexYN(userlimtype))
            bf=("0x"+("00"+userlimtype))^00;
          else
            bf=0;
          Intotimeyn=IntToStr(bf);
   userlim1=readcarddata1.SubString(23,2);
   userlim2=readcarddata1.SubString(25,2);
   userlim3=readcarddata1.SubString(27,2);
   userlim4=readcarddata1.SubString(29,2);

   Intotime1=userlim1;
   Intotime2=userlim2;
   Intotime3=userlim3;
   Intotime4=userlim4;
//-----------------
/*
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,zhunjinyn,zhunji,zhunjintime1;
String zhunjintime2,zhunjintime3,zhunjintime4,zhoupoc,hht,hh,sst,gongnengpoc;
int hhint;
TDateTime TM;
   Intotimeyn=readcarddata1.SubString(21,2);
   if(StrToHexYN(Intotimeyn))
            bf=("0x"+("00"+Intotimeyn))^00;
          else
            bf=0;
          Intotimeyn=IntToStr(bf);
   Intotime1=readcarddata1.SubString(23,2);
   Intotime2=readcarddata1.SubString(25,2);
   Intotime3=readcarddata1.SubString(27,2);
   Intotime4=readcarddata1.SubString(29,2);
   */
   zhoupoc="";
zhunji=Intotimeyn&"0x1";
if(zhunji=="1")
  {
  zhunjinyn="启用准进时段处理";  //是否启用时段
  }
  else
  {
  zhunjinyn="没有启用准进时段处理";  //是否启用时段
  }
zhunji=Intotimeyn&"0x2";
if(zhunji=="2")
  {
  zhoupoc=zhoupoc+" 周一";  //周一
  }
zhunji=Intotimeyn&"0x4";
if(zhunji=="4")
  {
  zhoupoc=zhoupoc+" 周二";  //周二
  }
zhunji=Intotimeyn&"0x8";
if(zhunji=="8")
  {
  zhoupoc=zhoupoc+" 周三";  //周三
  }
zhunji=Intotimeyn&"0x10";
if(zhunji=="16")
  {
  zhoupoc=zhoupoc+" 周四";  //周四
  }
zhunji=Intotimeyn&"0x20";
if(zhunji=="32")
  {
  zhoupoc=zhoupoc+" 周五";  //周五
  }
zhunji=Intotimeyn&"0x40";
if(zhunji=="64")
  {
  zhoupoc=zhoupoc+" 周六";  //周六
  }
zhunji=Intotimeyn&"0x80";
if(zhunji=="128")
  {
  zhoupoc=zhoupoc+" 周日";  //周日
  }

hht=Intotime1;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime1=hh+":"+sst;

hht=Intotime2;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime2=hh+":"+sst;

hht=Intotime3;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime3=hh+":"+sst;

hht=Intotime4;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  zhunjintime4=hh+":"+sst;
//-----------------

      // if(s3=="01")
      // {
       a1=readcarddata2.SubString(1,2);
       a2=readcarddata2.SubString(3,2);
       a3=readcarddata2.SubString(5,2);
       a4=readcarddata2.SubString(7,2);
      // }
       a5=a4+a3+a2+a1;
       int bf=("0x"+("00"+a5))^00;
       a5=IntToStr(bf);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s1;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("卡片密钥与软件不符合,非本软件所发的卡!!","问题",MB_OK);
    if (!USB_DevClose())
    Caption = "关闭串口失败";
    sButton17->Enabled=true; //
    return;
}
/////////////////////////////
 //      Caption = "读成功 "+dtime+" "+s2+" "+s3+" "+readcarddata1+" "+a5+" ";

   usersearchno=s2;
   if(PStrToIntYN(usersearchno))
    {
    Form7->sButton1->Visible=true;
    }
   Form7->Memo1->Lines->Add("编号： "+s2+"\n");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

   Form7->Memo1->Lines->Add("卡号： "+datass);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

   Form7->Memo1->Lines->Add("有效期： "+dtime);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

   if(s3a=="1")
       Form7->Memo1->Lines->Add("此卡参与计次数");
   else
       Form7->Memo1->Lines->Add("此卡不参与计次数");
Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   if(s3=="1")
       Form7->Memo1->Lines->Add("此卡参与有效期");
   else
       Form7->Memo1->Lines->Add("此卡不参与有效期");

   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

   Form7->Memo1->Lines->Add("当前可用次数为： "+a5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   Form7->Memo1->Lines->Add(zhunjinyn);
   Form7->Memo1->Lines->Add(zhoupoc);
   Form7->Memo1->Lines->Add("时段为：  "+zhunjintime1+"至"+zhunjintime2+"   "+zhunjintime3+"至"+zhunjintime4);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");


   Form7->Memo1->Lines->Add("当前刷卡状态为： "+cardzhuangtai);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
         if(sc=="01")
         {
         Form7->Memo1->Lines->Add("此卡为测试卡不能日常使用 ");
         }
         else {
         Form7->Memo1->Lines->Add("可进入的电梯层数为:");
         displayMemoelevatornumber(readcarddata1);
         jbusyn=readcarddata1.SubString(19,1);
         jb=jbusyn&"0x01";
         if(jb=="1")
         {
            ins="select * from floor where floorno='JBUS'";
//   ins+=ec1;
//   ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount !=0)
          {
          floorname=tcon->adoquery->FieldByName("floorname")->AsString.Trim();
          Form7->Memo1->Lines->Add(floorname+";");
          }
         }
         }

   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
 if(r15saddr!="ff")
    displayMemoselectaddr(r15saddr);
 else
    Form7->Memo1->Lines->Add("可进入的设备地址读取错误! ");

//      }
//      else
//    {
//     MessageBox(0, "此卡已挂失,请重新发卡!!","rrr",MB_OK);
//    }
//*****************************************************************************************************
    }

   }
   else
       Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Caption = "验证失败";


    }
    else
    	Caption = "寻卡失败";
FrmBar->PBarClose();
 USB_BeepExA(3);
   try
         {
  //       Form7=new TForm8(Application);
         Form7->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form7;
           Application->ShowException(&exception);
           }

readret:
if(sEdit1->Text=="")
    sButton26->Enabled=false; //发卡关
else
    sButton26->Enabled=true; //发卡开

if (!USB_DevClose())
         Caption = "关闭串口失败";

sButton17->Enabled=true; //读卡开


/*
Temp="AABB1C0102010500FFFFFFFFFFFF00";
//dt=StringGrid1->Cells[2][i].Trim();
dt=Edit19->Text.Trim();
p=dt.SubString(3,2);
p1=dt.SubString(7,1).Trim();
if(p1=="-")
   p=p+"0"+dt.SubString(6,1).Trim();
else
   p=p+dt.SubString(6,2).Trim();
p1=dt.SubString(dt.Length()-1,1).Trim();
if(p1=="-")
   p=p+"0"+dt.SubString(dt.Length(),1).Trim();
else
   p=p+dt.SubString(dt.Length()-1,2).Trim();
Temp=Temp+p+"00"+"123456789012"+"0000000000";
*/
/*
Temp="AABB0C0101010400FFFFFFFFFFFF";
p1=seeddata(Temp);
if(p1=="ff")
         return;
//////////////////////////////////////////////////////////////////////////////////////
Edit1->Text = "";
Edit2->Text = "";
Edit10->Text = "";
Edit11->Text = "";
Edit6->Text = "";
Edit3->Text = "";
Edit4->Text = "";
Edit5->Text = "";
RadioButton1->Checked=false;
RadioButton2->Checked=false;
StaticText1->Caption="";
//////////////////////////////////////////////////////////////////////////////////////
Temp1=p1.SubString(39,6);
endtime=Temp1.SubString(1,2)+"-"+Temp1.SubString(3,2)+"-"+Temp1.SubString(5,2);
 try
         {
         DateTimePicker1->Date=endtime;
         }
      catch(...)
           {
           }

Temp1=p1.SubString(69,32);
//select="0x"+Temp1;
//d=StrToInt(select);
//select=IntToStr(d);
////////////////////////////////////////////////////////////
   ds = Temp1;
   if(ds=="")return;
   ds=ds+"00000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=ListView2->Items->Count;
   for(int j=0;j<ListView2->Items->Count;j+4)
       {
       k++;
       ts=ds.SubString(k,1);

        for(int i=0;i<4;i++,j++)
        {
        //  pa=ListView2->Items->Item[j]->Caption;
        //  m=StrToInt(pa);
          m=i+1;
          n=copoc(m);
          t=("0x"+("00"+IntToStr(n)))^00;
        //  di=StrToInt(t);
        //  d=IntToHex(di,1);
          dz="0x"+ts;
          t1=t&dz;

        //  p=p1&n;
            if(j<ListView2->Items->Count)
            {
             if(t==t1)
             {
              ListView2->Items->Item[j]->Checked=true;
             }
             else
             {
             ListView2->Items->Item[j]->Checked=false;
             }
            }
         }
       }
*/
///////////////////////////////////////////////////////////////////
/*
////////////////////////////////////////////////////////////
   ds =select;
   if(ds=="")return;
   p1=StrToInt(ds);
   m=ListView2->Items->Count;
   for(int j=0;j<ListView2->Items->Count;j++)
       {

          pa=ListView2->Items->Item[j]->Caption;
          m=StrToInt(pa);
          n=copoc(m);
          t=("0x"+("00"+IntToStr(n)))^00;
          t1=ds&t;

        //  p=p1&n;
          if(t==t1)
         {
         ListView2->Items->Item[j]->Checked=true;
         }
         else
         {
         ListView2->Items->Item[j]->Checked=false;
         }
       }

///////////////////////////////////////////////////////////////////
/*
if(p1=="0400000086")
   {
   StringGrid1->Cells[3][k]="发送成功";
   Button12->Enabled=true;
   }
else
   {
   StringGrid1->Cells[3][k]="请放卡片";
   Button12->Enabled=true;
   }
   */
 /////////////////////UID USB读取卡-----------
   } else {
   unsigned char Buf[65],BUFF[65];
   unsigned int ToWrite,Written;
   unsigned char newData[8]={0x00,0xaa,0x01,0x01,0x01,0x01,0x01,0xFF};
   char value;
   char *value2;
   AnsiString a1,a2;
  unsigned int I,s1;
  Form7->Memo1->Clear();
    ToWrite = CurrentDevice->Caps.OutputReportByteLength;
    for(I = 0; I < ToWrite; I++) {
      if (I < 8){
        Buf[I] = StrToIntDef(newData[I], 0);
      } else {
         Buf[I] = 0xFF;
      }
     }


      CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
      CurrentDevice->ReadFile(BUFF, ToWrite, Written);   //读取

      if(BUFF[7]==0x00){
      Caption = "寻卡成功";
       s1 =  bianhaoAction (BUFF[11],BUFF[12]);
      a1 =IntToStr(s1);
       Form7->Memo1->Lines->Add("编号: "+a1+"\n");
       Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
       for(I = 8; I < 11;I++){
        value = BUFF[I] /16;
        s1 = (int)(value);
        a2 = a2+IntToStr(s1);
        value = BUFF[I] % 16;
         s1 = (int)(value);
        a2 = a2+IntToStr(s1);
       }
       Form7->Memo1->Lines->Add("有效期: "+a2+'\n');
       Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
       Buf[6]=0x02;
       CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
       CurrentDevice->ReadFile(BUFF, ToWrite, Written);   //读取
        if(BUFF[7]==0x00){
        Form7->Memo1->Lines->Add("可进入的电梯的层数为: ");
        if (BUFF[16]==0x01)
          Form7->Memo1->Lines->Add("-1层 ");
       for(int str1 = 65;str1 < 129;str1++){
        char str2 = judgeFunction(BUFF,str1);
        if (str2 == 0x01){
         a2 =IntToStr(str1 - 64);
          Form7->Memo1->Lines->Add(a2+"层; "+'\n');
         }
       }
        Buf[6]=0x03;
       CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
       CurrentDevice->ReadFile(BUFF, ToWrite, Written);   //读取
        if(BUFF[7]==0x00){
        Form7->Memo1->Lines->Add("可进入的设备地址为: ");
       for(int str1 = 65;str1 < 193;str1++){
        char str2 = judgeFunction(BUFF,str1);
        if (str2 == 0x01){
         a2 =IntToStr(str1 - 64);
          Form7->Memo1->Lines->Add(a2+'\n');
         }
       }
       Buf[6]=0x04;
       CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
       CurrentDevice->ReadFile(BUFF, ToWrite, Written);   //读取
         if(BUFF[7]==0x00){
       for(int str1 = 65;str1 < 193;str1++){
        char str2 = judgeFunction(BUFF,str1);
        if (str2 == 0x01){
         a2 =IntToStr(str1 - 64 + 128);
          Form7->Memo1->Lines->Add(a2+'\n');
         }
       }

         Buf[6]=0x05;
       CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
       CurrentDevice->ReadFile(BUFF, ToWrite, Written);   //读取
        if(BUFF[7]==0x00){
       for(int str1 = 65;str1 < 193;str1++){
        char str2 = judgeFunction(BUFF,str1);
        if (str2 == 0x01){
         a2 =IntToStr(str1 - 64 + 128 * 2);
          Form7->Memo1->Lines->Add(a2+'\n');
         }
       }
       Form7->sButton1->Visible = true;
       Form7->ShowModal();  // Form7 调用显示模式
                }else{Application->MessageBoxA("读取地址3返回失败!!","问题",MB_OK);}
              }else{Application->MessageBoxA("读取地址2返回失败!!","问题",MB_OK);}
           }else{Application->MessageBoxA("读取地址1返回失败!!","问题",MB_OK);}
         }else{Application->MessageBoxA("读取层数返回失败!!","问题",MB_OK);}
      }else { Application->MessageBoxA("读取用户返回失败!!","问题",MB_OK); }
     sButton17->Enabled=true; //读卡开
    }    //  USB  选择结尾括号
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton18Click(TObject *Sender)
{
sButton18->Enabled=false;
String Temp,Tempr,p,dt,p1,ins,s1,s2,s3,s4,s5,elevatoraddrs,elevatoraddre,keydelay,zjsd_enyn,zjsd;
String subbcountyn,sbyn,bdyn,bindcardyn,mbitpoc,yxqyn,fangqianfan,fqhbitpoc="0";
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,floorselects,Temp1,gonggongceng,jbusyns;
int  ln,n,d,t;
unsigned char newData1[7]={0xaa,0x01,0x01,0x01,0x02,0x01,0xff};           //数据存放数组
unsigned char returnSign;   //写入 反正标记

if(MessageDlg("刷此卡可对控制器进行地址位置的同步，以便发用户卡时选择正确的电梯位置。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
       if(CurrentDevice == NULL) {
  bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton18->Enabled=true; //
        return;
         }
     }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
   dt=Edit12->Text.Trim();
   if(dt=="")
       Application->MessageBoxA("请选择控制器！!!","问题",MB_OK);
else
{

   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
   elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
   elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2 );
   n=StrToInt(elevatoraddrs);
   elevatoraddrs=IntToHex(n,2);
   elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
   elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2 );
   subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
   zjsd_enyn=tcon->adoquery->FieldByName("zjsd_enyn")->AsString.Trim();
   bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
   yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
   fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

   jbusyns="00"+tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
   jbusyns=jbusyns.SubString(jbusyns.Length()-1,2 );

   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);

    Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );

  gonggongceng="000"+tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  gonggongceng=gonggongceng.SubString(gonggongceng.Length()-2,3 );
  gonggongceng=IntToHex(StrToInt(gonggongceng),2);

   }
if(keydelay=="")
   keydelay="02";
if(keydelay=="无")
   keydelay="00";
n=StrToInt(keydelay);
keydelay=IntToHex(n,2);

if(subbcountyn=="1")
        sbyn="5";
else
        sbyn="0";

if(zjsd_enyn=="1")
        zjsd="1";
else
        zjsd="0";

if(bindcardyn=="1")
        bdyn="e";
else
        bdyn="0";
if(yxqyn=="1")
        mbitpoc="4";
else
        mbitpoc="0";
//mbitpoc这个是按位算的，0和1位不可用（在控制器中被sbyn和bdyn占上了），第2位是 mbitpoc，第3位为
//与是mbitpoc或 的 第3们为0说明功能设置与控制是关联的，为1为否

if(sCheckBox44->Checked==true)
  {
if(sCheckBox53->Checked==true)
   {
   mbitpoc=mbitpoc|"0x8";  //与地址卡关联
   }
  }

mbitpoc=IntToHex(StrToInt(mbitpoc),1);
if(fangqianfan=="无"||fangqianfan=="")
        fqhbitpoc="0";
else if(fangqianfan=="进入")
        fqhbitpoc="1";
else if(fangqianfan=="出去")
        fqhbitpoc="2";

/*
s1=ComboBox9->Text;
if(s1=="无"||s1=="")
   s1="00";
s2=ComboBox10->Text;
if(s2=="无"||s2=="")
   s2="00";
s3=ComboBox11->Text;
if(s3=="无"||s3=="")
   s3="00";
s4=ComboBox12->Text;
if(s4=="无"||s4=="")
   s4="00";
s5=ComboBox13->Text;
if(s5=="无"||s5=="")
   s5="00";
*/

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为继电器动作时间
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726501"+keydelay+conpwd+elevatoraddrs+elevatoraddre+sbyn+bdyn+fqhbitpoc+mbitpoc+zjsd+"0";
                                                                                               ///最后0为附属地址用
  Intotimeyn=IntToHex(StrToInt(Intotimeyn),2);

  Temp1=floorselects+jbusyns+"0"+"0"+Intotimeyn+Intotime1+Intotime2+Intotime3+Intotime4+gonggongceng;
    if(CurrentDevice == NULL) {
  if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
 sButton18->Enabled=true; //
    return;
 }
}
   if(CurrentDevice == NULL) {
    if (write14data0s1s(Temp,Temp1)) {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }
       if (!USB_DevClose())
         Caption = "关闭串口失败";
      } else {
      erase(0x02); // 擦除
      returnSign = DataWrite(newData1,Temp);
      if (returnSign == 0x00) {
         newData1[5]=0x02;
        returnSign = DataWrite(newData1,Temp1);
        if (returnSign != 0x00){Application->MessageBoxA("第2组数据发送返回失败!!","问题",MB_OK);}
        else {Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);}
      } else {Application->MessageBoxA("第1组数据发送返回失败!!","问题",MB_OK);}
    }
   }


}
FrmBar->PBarClose();
   sButton18->Enabled=true;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormDestroy(TObject *Sender)
{
MyThread->Terminate();    //结束线程
}
//---------------------------------------------------------------------------




void __fastcall TForm1::sButton2Click(TObject *Sender)
{
   String qstr,bida,pa,st,d="0",t,elevatoraddr,pd="1",pe,pf,UserCID,ss,ins,elevatoraddrs,elevatoraddre;
   String userlimtype,userlim1,userlim2,userlim3,userlim4,sp,nos,jbusyn="0",zhunji="0",hh,hht,sst;
   int m,n,di,e,f,g,pes,pfs,selecttest;
   if(sEdit1->Text =="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }else{}
 selecttest=0;
 for(int j=0;j<ListView2->Items->Count;j=j+1)
         if(ListView2->Items->Item[j]->Checked)
                     selecttest=1;
/*
if(displaylayeryn==1){
if(selecttest==0)
  {
  Application->MessageBoxA("请选择要进入的电梯层数!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }
}
*/
 selecttest=0;
 for(int j=0;j<ListView1->Items->Count;j=j+1)
         if(ListView1->Items->Item[j]->Checked)
                     selecttest=1;
if(selecttest==0)
  {
  Application->MessageBoxA("请选择要进入哪个设备!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }
//  UserCID=IntToHex(StrToInt(sEdit1->Text.Trim()),4);
//  Label19->Caption=UserCID;
//  StringGrid1->RowCount=2;      //////////清除发卡设置
//  StringGrid1->Rows[1]->Clear();
//////////////////////////////////////////////////////////////////
bindcon="";
for(int j=0;j<ListView1->Items->Count;j++)
  {
        if(ListView1->Items->Item[j]->Checked)
        {
        ss=ListView1->Items->Item[j]->SubItems->Strings[2];
  if(ss=="是")
     {
        t=bindcon.Length();
        if(bindcon.Length()<32) {
        pa=ListView1->Items->Item[j]->Caption;
         ins="select * from elevatorinfo where [no]=";  // where [UserCID]!=NULL";
         ins+=pa;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
             {
            elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
            elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2);
            elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
            elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2);
            bindcon+=elevatoraddrs+elevatoraddre;
              }
        }
        else
        {
        Application->MessageBoxA("选择绑定卡片的控制器不能大于8个!!","问题",MB_OK);
        ListView1->Items->Item[j]->Checked=false;
        }
     }
        }
   }
///////////////////////////////////////////////////////////////////
t="0000000000000000";
//////////////////////////////////////////////////////////////////
   m=ListView2->Items->Count;
   for(int j=0;j<ListView2->Items->Count;j+4)
	   {
		for(int i=0;i<4;i++,j++)
		{
		 if(j<ListView2->Items->Count)
		 {
		 if(ListView2->Items->Item[j]->Checked)
		   {
			pa=ListView2->Items->Item[j]->SubItems->Strings[1];
                        if(pa!="JBUS")
                        {
			e=pa.ToInt();
f=e/4;
g=f;
f=f*4;
e=e-f;
f=0;
pd="1";
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	g=g-1;
	pd="8";
}

pe=t.SubString(g+1,1);
pe=("0x"+pe)^"0x00";
//pfs=StrToInt(pf);
//pes=StrToInt(pe);
pd=pd|pe;
//f=pfs|pes;
//pd="00"+pd;
pd=IntToHex(StrToInt(pd),1);
//pd=pd.SubString(pd.Length()-1,2);

		   t=t.Delete(g+1,1);
		   t=t.Insert(pd,g+1);
		   // m=StrToInt(pa);
	  //		m=i+1;
	  //		n=copoc(m);
	  //		st=("0x"+("00"+IntToStr(n)))^00;
	  //		d=d|st;
	  //		di=StrToInt(d);
	  //		d=IntToHex(di,1);
                     }
		   }
		  }
		}
	//	elevatoraddr=elevatoraddr+d;
		d="0";
	   }
///////////////////////////////////////////////////////////////////
/*
   m=ListView2->Items->Count;
   for(int j=0;j<ListView2->Items->Count;j+4)
       {
        for(int i=0;i<4;i++,j++)
        {
         if(j<ListView2->Items->Count)
         {
         if(ListView2->Items->Item[j]->Checked)
           {
           // pa=ListView2->Items->Item[j]->Caption;

           // m=StrToInt(pa);
            m=i+1;
            n=copoc(m);
            st=("0x"+("00"+IntToStr(n)))^00;
            d=d|st;
            di=StrToInt(d);
            d=IntToHex(di,1);
           }
          }
        }
        t=t+d;
        d="0";
       }
       */
///////////////////////////////////////////////////////////////////
elevatoraddr="000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//////////////////////////////////////////////////////////////////
   m=ListView1->Items->Count;
   for(int j=0;j<ListView1->Items->Count;j+4)
	   {
		for(int i=0;i<4;i++,j++)
		{
		 if(j<ListView1->Items->Count)
		 {
		 if(ListView1->Items->Item[j]->Checked)
		   {
			pa=ListView1->Items->Item[j]->Caption;
			e=pa.ToInt();
f=e/8;
g=f;
f=f*8;
e=e-f;
f=0;
pd="1";
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	g=g-1;
	pd="128";
}

pe=elevatoraddr.SubString(g*2+1,2);
pe=("0x"+pe)^"0x00";
//pfs=StrToInt(pf);
//pes=StrToInt(pe);
pd=pd|pe;
//f=pfs|pes;
//pd="00"+pd;
pd=IntToHex(StrToInt(pd),2);
//pd=pd.SubString(pd.Length()-1,2);

		   elevatoraddr=elevatoraddr.Delete(g*2+1,2);
		   elevatoraddr=elevatoraddr.Insert(pd,g*2+1);
		   // m=StrToInt(pa);
	  //		m=i+1;
	  //		n=copoc(m);
	  //		st=("0x"+("00"+IntToStr(n)))^00;
	  //		d=d|st;
	  //		di=StrToInt(d);
	  //		d=IntToHex(di,1);
		   }
		  }
		}
	//	elevatoraddr=elevatoraddr+d;
		d="0";
	   }
///////////////////////////////////////////////////////////////////
   jbusyn="0";
   for(int j=0;j<ListView2->Items->Count;j++)
	   {
		 if(ListView2->Items->Item[j]->Checked==true)
		   {
			pa=ListView2->Items->Item[j]->SubItems->Strings[1];
                        if(pa=="JBUS")
                        jbusyn="1";
                   }
           }
///////////////////////////////////////////////////////////////////
if(sCheckBox35->Checked==true)
  {
  zhunji=zhunji|"0x1";  //是否启用时段
  }
if(sCheckBox28->Checked==true)
  {
  zhunji=zhunji|"0x2";  //周一
  }
if(sCheckBox29->Checked==true)
  {
  zhunji=zhunji|"0x4";  //周二
  }
if(sCheckBox30->Checked==true)
  {
  zhunji=zhunji|"0x8";  //周三
  }
if(sCheckBox31->Checked==true)
  {
  zhunji=zhunji|"0x10";  //周四
  }
if(sCheckBox32->Checked==true)
  {
  zhunji=zhunji|"0x20";  //周五
  }
if(sCheckBox33->Checked==true)
  {
  zhunji=zhunji|"0x40";  //周六
  }
if(sCheckBox34->Checked==true)
  {
  zhunji=zhunji|"0x80";  //周日
  }

  userlimtype=zhunji;

hh=FormatDateTime("HH", DateTimePicker3->Time);
ss=FormatDateTime("nn", DateTimePicker3->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim1=ss|hh;
userlim1=IntToHex(StrToInt(userlim1),2);

hh=FormatDateTime("HH", DateTimePicker4->Time);
ss=FormatDateTime("nn", DateTimePicker4->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim2=ss|hh;
userlim2=IntToHex(StrToInt(userlim2),2);



hh=FormatDateTime("HH", DateTimePicker5->Time);
ss=FormatDateTime("nn", DateTimePicker5->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim3=ss|hh;
userlim3=IntToHex(StrToInt(userlim3),2);

hh=FormatDateTime("HH", DateTimePicker6->Time);
ss=FormatDateTime("nn", DateTimePicker6->Time);
ss=ss.SubString(1,1);
ss=ss<<5;
// XX  7 6 5     4 3 2 1 0
//    分钟去0       小时
if(StrToInt(hh)>23)
     hh="23";
userlim4=ss|hh;
userlim4=IntToHex(StrToInt(userlim4),2);
//   userlim1=sEdit4->Text;
//   userlim2=sEdit5->Text;
//   userlim3=sEdit6->Text;
//   userlim4=sEdit7->Text;

///////////////////////////////////////////////////////////////////
   tcon->UserSetado->Active =false;
    qstr="update userinfo set [name]='";
    qstr+=sEdit2->Text;
//    qstr+="',[Dept]='";
//    qstr+=Edit8->Text;
//    qstr+="',[duties]='";
//    qstr+=Edit9->Text;

//    qstr+="',[Birthday]='";
//    qstr+=Edit10->Text;
//    qstr+="',[idcard]='";
//    qstr+=Edit11->Text;

    qstr+="',[Address]='";
    qstr+=sComboBox1->Text;
//    qstr+="',[Telephone]='";
//    qstr+=Edit3->Text;

    qstr+="',[MobilePhone]='";
   qstr+=sEdit10->Text.Trim();
//    qstr+="',[Email]='";
//    qstr+=Edit5->Text;

//          if(RadioButton1->Checked==true)
//          {
      //    tcon->adoquery->FieldByName("sex")->AsString="男";
//          qstr+="',[sex]='";
//          qstr+="男";
//          }
//          else
//          {
       //   tcon->adoquery->FieldByName("sex")->AsString="女";
//          qstr+="',[sex]='";
//          qstr+="女";
//          }

    qstr+="',[endtime]='";
    qstr+=DateTimePicker1->Date.DateString();
    qstr+="',selectin='";
    qstr+=t;

    qstr+="',elevatoraddr='";
    qstr+=elevatoraddr;

    qstr+="',[note]='";
    qstr+=sEdit9->Text.Trim();

    if(CheckBox10->Checked==true)
      qstr+="',[usecountyn]='1";
   else
      qstr+="',[usecountyn]='0";

   if(CheckBox12->Checked==true)
      qstr+="',[useyxqyn]='1";
   else
      qstr+="',[useyxqyn]='0";

    qstr+="',[usecount]='";
    qstr+=Label59->Caption;

 //   qstr+="',videos='";
 //   qstr+=ComboBox3->Text;
/* 
    qstr+="',[cardaddr]='";
    qstr+=ComboBox2->Text;

    qstr+="',[cardaddr1]='";
    qstr+=ComboBox3->Text;

    qstr+="',[cardaddr2]='";
    qstr+=ComboBox4->Text;

    qstr+="',[cardaddr3]='";
    qstr+=ComboBox5->Text;
*/
//    qstr+="',[UserCID]='";
//    qstr+=Label19->Caption;
    /*
    if(RadioButton3->Checked==true)
          {

          qstr+="',[cardtype]='";
          qstr+="IC";
          }
          else
          {

          qstr+="',[cardtype]='";
          qstr+="ID";
          }
          */
    qstr+="',[cardid]='";
    qstr+=Edit41->Text;

    qstr+="',[bindcon]='";
    qstr+=bindcon;

    qstr+="',[JBUS]='";
    qstr+=jbusyn;
    
//  if(Allowedtimeyn=="1"){
    qstr+="',[userlimtype]='";
    qstr+=userlimtype;
    qstr+="',[userlim1]='";
    qstr+=userlim1;
    qstr+="',[userlim2]='";
    qstr+=userlim2;
    qstr+="',[userlim3]='";
    qstr+=userlim3;
    qstr+="',[userlim4]='";
    qstr+=userlim4;

//  }

    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
   pprefresh();
   /*
    n=StringGrid3->RowCount;
    sp=sEdit1->Text;
for(int p=0;p<n;p=p+1)
{
  nos=StringGrid3->Cells[0][p];
  if(sp==nos){

//StringGrid3->Cells[0][0]="编号";
//StringGrid3->Cells[1][0]="姓名";
//StringGrid3->Cells[2][0]="单元地址";
//StringGrid3->Cells[3][0]="注册时间";
//StringGrid3->Cells[4][0]="有效期限";
//StringGrid3->Cells[5][0]="刷卡次数";
//StringGrid3->Cells[6][0]="是否限次数";
//StringGrid3->Cells[7][0]="备注";
//StringGrid3->Cells[8][0]="处理码";
//StringGrid3->Cells[9][0]="发卡次数";


//StringGrid3->Cells[1][p]=sEdit2->Text;
//StringGrid3->Cells[2][p]=sComboBox1->Text;
//StringGrid3->Cells[3][0]="注册时间";
//StringGrid3->Cells[4][p]=DateTimePicker1->Date.DateString();
//StringGrid3->Cells[5][p]=sEdit11->Text.Trim();
//if(CheckBox10->Checked==true)
//      StringGrid3->Cells[6][p]="是";
//   else
//      StringGrid3->Cells[6][p]="否";

//StringGrid3->Cells[7][p]=sEdit9->Text.Trim();
//StringGrid3->Cells[8][0]="处理码";
//StringGrid3->Cells[9][0]="发卡次数";

      break;
     }
}
*/
//    tcon->UserSetado->Active =true;
/*
if(Edit23->Text!="")
{
qstr="select * from UCID where UserCID='";
qstr+=Edit23->Text;
qstr+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->ExecSQL();
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount==0)
{
          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from UCID");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();
          tcon->adoquery->FieldByName("UserCID")->AsString=Edit23->Text.Trim();
          tcon->adoquery->FieldByName("username")->AsString=Edit2->Text.Trim();

         tcon->adoquery->Post();
         tcon->adoquery->Close();
         Button22->Enabled=false; //获取关
}
}
*/
String Address;
ins="select DISTINCT Address  from userinfo ";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   m=tcon->adoquery->RecordCount;
   sComboBox1->Items->Clear();
   while (!tcon->adoquery->Eof )
	 {
	 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
         if(Address!="")
           sComboBox1->Items->Add(Address);
         tcon->adoquery->Next() ;
         }
         
    Application->MessageBoxA("修改成功","恭喜",MB_OK);
if(sEdit1->Text=="")
    sButton26->Enabled=false; //发卡关
else
    sButton26->Enabled=true; //发卡开
}
//---------------------------------------------------------------------------





void __fastcall TForm1::sButton16Click(TObject *Sender)
{
sButton16->Enabled=false;
String Temp,st1,st2,st3,st4,st5,st6,atime,a,ins,b,second;
unsigned char returnSign;   //写入 反正标记
unsigned char newData1[7]={0xaa,0x01,0x01,0x01,0x02,0x01,0xff};           //数据存放数组
if(MessageDlg("此卡可对控制器进行时间校正。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
   if(CurrentDevice == NULL) {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton16->Enabled=true; //
        return;
        }
     }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
/*
ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */

atime=DateTimePicker2->Date.DateString();
/*
for (int i=1;i<=atime.Length();i++)
 {a=atime.SubString(i,1).Trim();
 if(Strnumberyn(a))
    ;
 else{
  b=atime.SubString(i+2,1).Trim();
  if(!Strnumberyn(b))
     {
     atime=atime.Insert("0",i+1);
     }

  if((i+5)!=atime.Length())
      atime=atime.Insert("0",i+4);

  if(atime.Length()==8){
     atime="20"+atime;
     }
  break;
   }

 }
 */
atime=timepoc(atime);


/*
b=atime.SubString(7,1).Trim();
a=atime.SubString(6,1).Trim();
    if(a=="1")
      if(b=="0"||b=="1"||b=="2")
      ;
      else
         atime=atime.Insert("0",6);

    if(atime.Length()!=10)
      atime=atime.Insert("0",9);
*/
st1=atime.SubString(3,2);
st2=atime.SubString(6,2);
st3=atime.SubString(9,2);
st4=ComboBox6->Text ;
st5=ComboBox7->Text ;
st6=ComboBox8->Text ;
if(st6=="07")
  {
  st6="00";
  }


   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h 08h 09h 0ah 0bh 0ch  为年月日时分秒
; 0dh 0eh 0fh 为无       */
  if(CurrentDevice == NULL) {
  Temp="6D696661726502"+conpwd+st1+st2+st3+st4+st5+st6;

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton16->Enabled=true; //
    return;
}

     if (write14data0s(Temp)){
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }


 if (!USB_DevClose())
         Caption = "关闭串口失败";
FrmBar->PBarClose();
 } else {   // HID USB
   SYSTEMTIME *GTL;
   GTL=new SYSTEMTIME;
    GetLocalTime(GTL);
    second="0"+String(GTL->wSecond);
    second=second.SubString(second.Length()-1,2);
    erase(0x02); // 擦除
    Temp="ABC002"+st1+st2+st3+st6+st4+st5+second;
    returnSign = DataWrite(newData1,Temp);
     if (returnSign != 0x00){Application->MessageBoxA("数据发送返回失败!!","问题",MB_OK);}
               else{ Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);}
    
 }
}
   sButton16->Enabled=true;
}
//---------------------------------------------------------------------------




void __fastcall TForm1::sButton12Click(TObject *Sender)
{
String hour,minute,second,week;
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);
if(win7=="0")
     {
     //   sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        DateTimePicker2->Date=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
     }
if(win7=="1")
{
        DateTimePicker2->Date=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
}
if(win7=="2")
{
        DateTimePicker2->Date=String(GTL->wYear)+'.'+String(GTL->wMonth)+'.'+String(GTL->wDay);
}
        hour="0"+String(GTL->wHour);
        hour=hour.SubString(hour.Length()-1,2);
        minute="0"+String(GTL->wMinute);
        minute=minute.SubString(minute.Length()-1,2);
        second="0"+String(GTL->wSecond);
        second=second.SubString(second.Length()-1,2);
        week="0"+String(GTL->wDayOfWeek);
        week=week.SubString(week.Length()-1,2);
        ComboBox6->Text=hour;
        ComboBox7->Text=minute;
        ComboBox8->Text=week;
    //    Label2->Caption=hour+':'+minute+':'+second;
   //     String Week[7]={"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
   //     Label4->Caption=Week[GTL->wDayOfWeek];
}
//---------------------------------------------------------------------------




void __fastcall TForm1::Edit12KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;

}
//---------------------------------------------------------------------------



void __fastcall TForm1::ComboBox9KeyPress(TObject *Sender, char &Key)
{
Key=0;          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox10KeyPress(TObject *Sender, char &Key)
{
Key=0;          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox11KeyPress(TObject *Sender, char &Key)
{
Key=0;          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox12KeyPress(TObject *Sender, char &Key)
{
Key=0;          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox13KeyPress(TObject *Sender, char &Key)
{
Key=0;          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox6KeyPress(TObject *Sender, char &Key)
{
Key=0;          
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox7KeyPress(TObject *Sender, char &Key)
{
Key=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox8KeyPress(TObject *Sender, char &Key)
{
Key=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox1KeyPress(TObject *Sender, char &Key)
{
Key=0;
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sButton23Click(TObject *Sender)
{
sButton23->Enabled=false;
String Temp,Tempr,p,p1,ins,qstr,bh,yzm,Temp1;
int  ln,n,d,t;

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton23->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
/********************************************************************************
AA BB 1C 01 02 01 08 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16

写数据，（08）2号扇区，0号块   （FF FF FF FF FF FF）密码。写是分块写的

AA BB 1C 01 02 01 0A 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF EB

写数据，（0A）2号扇区，2号块   （FF FF FF FF FF FF）密码。

AA BB 0C 01 01 01 04 00 FF FF FF FF FF FF 09  从控制器中读取1号扇区1号块
1b 01 02 b1 83 31 1b  从控制器中读取1号扇区1号块

AA BB 04 00 00 00 04 写入成功的返回值
//*********************************************************************************
//  String Temp,Temp1,p,dt,p1;
  char *SendData;
//  int  ln,n,d,t;
  unsigned long lrc,BS;
  if (hComm==0) return; //检查Handle值
/********************************************************************************
;扇区1块0为主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h  为地址
;07h  为地址反码
;08h 09h 0ah 0bh 0ch 0dh  为密码 共六位
;0eh 为BCC校验
;AA BB 1C 01 02 01 04 00 FF FF FF FF FF FF 4D 61 73 74 65 72 05 FA 56 78 90 12 34 56 CE 00 D9 写入1扇区0块
;--------------------------------------------------------------------------------------------------------
;扇区1块1为
00h 为地址， -------------------此软件这个为00 没用这个功能
01h 02h 03h 为year month date
04h 为空
05h 06h 07h 08h 09h 0ah 为密码
;----------------------------------------------------------------------------------------------------
;AA BB 0C 01 01 01 00 00 FF FF FF FF FF FF 0D  为读取0块
***********************************************************************************/
/*
Temp="AABB0C0101010000FFFFFFFFFFFF";
p1=seeddata(Temp);
if(p1=="ff")
{        MessageBox(0, "请放卡片！!!","rrr",MB_OK);
         Button18->Enabled=true;
         return;
}
Tempr=p1.SubString(5,32);
*/

////////////////////////////////////////////////////////////////////////////////////////////
/*
   ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */
   bh=sEdit1->Text.Trim();
   yzm=Label19->Caption;
   if(bh==""||yzm=="")
    Application->MessageBoxA("请选择有效用户！!!","提示",MB_OK);
   else{
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton23->Enabled=true; //
    return;
}
 //   StringGrid1->RowCount=2;      //////////清除发卡设置
 //   StringGrid1->Rows[1]->Clear();
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
if(sButton23->Caption=="挂失卡")
{
  Temp="6D696661726503"+conpwd+Label19->Caption+"00000000";
   Temp1="00000000000000000000000000000000";
//   if (write14data0s(Temp))  {
   if (write14data0s1s(Temp,Temp1)) {
  //  tcon->UserSetado->Active =false;
    qstr="update userinfo set ";
    qstr+="[carduse]='2'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
    }
}
else
{
 if(MessageDlg("此用户已挂失过!!是否重新挂失？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
  {
  Temp="6D696661726503"+conpwd+Label19->Caption+"00000000";

   if (write14data0s(Temp))  {
  //  tcon->UserSetado->Active =false;
    qstr="update userinfo set ";
    qstr+="[carduse]='2'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
    }
  }
/*
  Temp="6D696661726505"+conpwd+Label19->Caption+"00000000";

   if (write14data0s(Temp))  {
  //  tcon->UserSetado->Active =false;
    qstr="update userinfo set ";
    qstr+="[carduse]='1'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
    }
    */
}

 }
 if (!USB_DevClose())
         Caption = "关闭串口失败";
   FrmBar->PBarClose();
   sButton23->Enabled=true;
   if(sEdit1->Text=="")
    sButton26->Enabled=false; //发卡关
else
    sButton26->Enabled=true; //发卡开
}
//---------------------------------------------------------------------------






void __fastcall TForm1::Timer1Timer(TObject *Sender)
{
String hour,minute,second, strdata;
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
        StaticText1->Caption=strdata+' '+hour+':'+minute+':'+second;
}
//---------------------------------------------------------------------------






void __fastcall TForm1::sButton6Click(TObject *Sender)
{
String Temp,fk,aa,aa1,ins,jmshanqu0007,jmshanqu0815;
String cardpwd,cardcount;
int result,ssc;
//String cardpwd1,cardpwd;
char Datas[8]= {0} ;


//MessageBeep(1);
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
        return;
        }
///*************************************************USB发卡器用
/*///////////////////////////////////////////////////////////////////////////////////////////////////
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
//sButton6->Enabled=true; //
    return;
}
*/

  //    char Datas[8]= {0} ;
  //  String datass,cardpwd1;
  //  int result = USB_RequestEx(Datas);
 //   if (result == 1)
//{
//cardpwd=cardidpwdpoc(Datas);
 if(sCheckBox1->Checked==true)
 {
 if(sButton6->Caption=="卡片初始化"){
 sButton6->Caption="取消";
 zhanting=0;
 MyThread = new sst(true);
 is=0;
// MyThread->Resume();        //开始线程

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa1=IntToHex(StrToInt(jmshanqu0815),2);

        fk = "000102030405060708090A0B0C0D0E0F";
        fk = aa+aa1+"0000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(17, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
 }
   }
 else {
 sButton6->Caption="卡片初始化";
// MyThread->Suspend();     //暂停线程
        fk = "00F80000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(18, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
   zhanting=1;
   for(;zhanting==2;){}
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
   }
 }
 else
 {
 sButton6->Enabled=false; //
///----------------
//char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
//   bool result = USB_Read(23, 0,Data);
  // if (result)
  // {
    //   cardcount = String(Data).SubString(1,6);
  // }
///----------------
if(!fkquseryn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
//sButton6->Enabled=true; //
    return;
}

 result = USB_RequestEx(Datas);
    if (result == 1)
    {
//    cardpwd=cardidpwdpoc(Datas);
    FrmBar->PBarOpen(15);
 if(dianjiamipoc()==true)
      {

//    if(writekzcount(cardcount))
  //      {
        ssc=StrToInt(StaticText2->Caption);
        StaticText2->Caption=IntToStr(ssc+1);
        MessageBeep(1);
        USB_BeepExA(3);
    //    }

      }
    }
    else
     Form1->Caption = "寻卡失败,请放卡片！";
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 }
//}
FrmBar->PBarClose();
 sButton6->Enabled=true; //
}
//---------------------------------------------------------------------------

















void __fastcall TForm1::DBGrid2CellClick(TColumn *Column)
{
String  ss;
Edit1->Enabled=true;
CheckBox2->Enabled =false;
CheckBox3->Enabled =false;
CheckBox4->Enabled =false;
CheckBox5->Enabled =false;
CheckBox6->Enabled =false;
CheckBox7->Enabled =false;
CheckBox9->Enabled =false;
CheckBox11->Enabled =false;
CheckBox1->Enabled =false;
CheckBox8->Enabled =false;
CheckBox13->Enabled =false;
sButton27->Caption="修改";
Edit39->Enabled=false;
Edit40->Enabled=false;

Edit1->Text="";
Edit37->Text="";
Edit38->Text="";
if(adminpyn==1)
   sButton27->Enabled=true; //
if(adminpyn==1)
   sButton28->Enabled=true; //
Edit39->ReadOnly=true; //编号写关
Edit39->Text = DBGrid2->Columns->Grid->Fields[0]->Text;
Edit40->Text = DBGrid2->Columns->Grid->Fields[1]->Text;

if(Form3->sComboBox1->Text.Trim()=="admin") 
{
sButton29->Enabled=true; //
sButton28->Enabled=true; //
sButton29->Enabled=true; //
}
else{
if(Form3->sComboBox1->Text.Trim()!=Edit40->Text)
{
sButton27->Enabled=false; //      修改
sButton28->Enabled=false; //     删除
sButton29->Enabled=false; //    添加
}
else
{
//sButton29->Enabled=true; //
sButton28->Enabled=false; //
sButton29->Enabled=false; //
}
}
Label22->Caption=DBGrid2->Columns->Grid->Fields[1]->Text;
//ComboBox1->Text = DBGrid1->Columns->Grid->Fields[2]->Text;
//ComboBox2->Text = DBGrid1->Columns->Grid->Fields[3]->Text;
ss = DBGrid2->Columns->Grid->Fields[2]->Text;
if(ss==""||ss=="0")
  CheckBox2->Checked = false;
else
  CheckBox2->Checked = true;
ss = DBGrid2->Columns->Grid->Fields[3]->Text;
if(ss==""||ss=="0")
  CheckBox3->Checked = false;
else
  CheckBox3->Checked = true;
ss = DBGrid2->Columns->Grid->Fields[4]->Text;
if(ss==""||ss=="0")
  CheckBox4->Checked = false;
else
  CheckBox4->Checked = true;
ss = DBGrid2->Columns->Grid->Fields[5]->Text;
if(ss==""||ss=="0")
  CheckBox5->Checked = false;
else
  CheckBox5->Checked = true;
ss = DBGrid2->Columns->Grid->Fields[6]->Text;
if(ss==""||ss=="0")
  CheckBox6->Checked = false;
else
  CheckBox6->Checked = true;
  ss = DBGrid2->Columns->Grid->Fields[7]->Text;
if(ss==""||ss=="0")
  CheckBox7->Checked = false;
else
  CheckBox7->Checked = true;
  ss = DBGrid2->Columns->Grid->Fields[8]->Text;
if(ss==""||ss=="0")
  CheckBox8->Checked = false;
else
  CheckBox8->Checked = true;
  ss = DBGrid2->Columns->Grid->Fields[9]->Text;
if(ss==""||ss=="0")
  CheckBox9->Checked = false;
else
  CheckBox9->Checked = true;
    ss = DBGrid2->Columns->Grid->Fields[10]->Text;
if(ss==""||ss=="0")
  CheckBox11->Checked = false;
else
  CheckBox11->Checked = true;
    ss = DBGrid2->Columns->Grid->Fields[11]->Text;
if(ss==""||ss=="0")
  CheckBox1->Checked = false;
else
  CheckBox1->Checked = true;
    ss = DBGrid2->Columns->Grid->Fields[12]->Text;
if(ss==""||ss=="0")
  CheckBox13->Checked = false;
else
  CheckBox13->Checked = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton29Click(TObject *Sender)
{
String kk,no;  //常关
sButton28->Enabled=false; //删除关
Edit1->Enabled=false;
Edit39->ReadOnly=false; //编号写开
CheckBox2->Enabled =true;
CheckBox3->Enabled =true;
CheckBox4->Enabled =true;
CheckBox5->Enabled =true;
CheckBox6->Enabled =true;
CheckBox7->Enabled =true;
CheckBox9->Enabled =true;
CheckBox11->Enabled =true;
CheckBox1->Enabled =true;
CheckBox8->Enabled =true;
CheckBox13->Enabled =true;
sButton27->Caption="保存";
kk="select *from USAdmin where [No]>=all(select max([NO]) from USAdmin)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
no=tcon->adoquery->FieldByName("No")->AsString.Trim();
if(no=="")
no=1;
else
no=IntToStr(StrToInt(no)+1);
Edit39->Text=no;
Edit39->Enabled=true;
Edit40->Enabled=true;
sButton27->Enabled=true; //保存开
//tcon->bumenado->Insert() ;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton28Click(TObject *Sender)
{
String ins;
CheckBox2->Enabled =false;
CheckBox3->Enabled =false;
CheckBox4->Enabled =false;
CheckBox5->Enabled =false;
CheckBox6->Enabled =false;
CheckBox7->Enabled =false;
CheckBox9->Enabled =false;
CheckBox11->Enabled =false;
CheckBox1->Enabled =false;
CheckBox8->Enabled =false;
CheckBox13->Enabled =false;
sButton27->Caption="修改";
if(Form3->sComboBox1->Text.Trim()==Label22->Caption)
   Application->MessageBoxA("登录用户不可删除!!","信息",MB_OK);
else
if(MessageDlg("确认要删除吗？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
if(Label22->Caption=="admin")
   Application->MessageBoxA("Admin用户不可删除!!","信息",MB_OK);
else  {
tcon->USAdminado->Delete();
ins="delete * from login where logname='";
ins+=Label22->Caption;
ins+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(ins);
tcon->adoquery->ExecSQL();

sButton28->Enabled=false;  //删除关
 }
}
//uoption("操作员","删除--编号"+Edit1->Text.Trim()); ///保存操作记录
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton27Click(TObject *Sender)
{
String qstr,no,ins;
int Check1,Check2,Check3,Check4,Check5,Check6,Check7,Check8,Check9,Check10,Check11;
if(CheckBox2->Checked==true) Check1=1; else Check1=0;
if(CheckBox3->Checked==true) Check2=1; else Check2=0;
if(CheckBox4->Checked==true) Check3=1; else Check3=0;
if(CheckBox5->Checked==true) Check4=1; else Check4=0;
if(CheckBox6->Checked==true) Check5=1; else Check5=0;
if(CheckBox7->Checked==true) Check6=1; else Check6=0;
if(CheckBox8->Checked==true) Check7=1; else Check7=0;
if(CheckBox9->Checked==true) Check8=1; else Check8=0;
if(CheckBox11->Checked==true) Check9=1; else Check9=0;
if(CheckBox1->Checked==true) Check10=1; else Check10=0;
if(CheckBox13->Checked==true) Check11=1; else Check11=0;
if(Edit39->Text =="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  return;
  }else{}
if(Edit37->Text.Trim()!=Edit38->Text.Trim())
   {
   Application->MessageBoxA("密码不一致！!!","问题",MB_OK);
   return;
   }
if(Edit37->Text.Trim()=="")
   {
   Application->MessageBoxA("密码不不能为空！!!","问题",MB_OK);
   return;
   }


qstr="select * from USAdmin where [no]=";
qstr+=Edit39->Text.Trim();
//qstr+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->ExecSQL();
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount!=0)
{
//    MessageBox(0, "编号重复！!!","Comm Error",MB_OK);
if(sButton27->Caption=="修改")
{
if(Form3->sComboBox1->Text.Trim()!=Label22->Caption){
   Application->MessageBoxA("登录用户不可修改其它用户信息!!","信息",MB_OK);
   return;
   }
if(MessageDlg("确认是否要修改？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
qstr="select * from USAdmin where OpName='";
qstr+=Edit40->Text.Trim();
qstr+="' and not [no]=";
qstr+=Edit39->Text.Trim();
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->ExecSQL();
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount!=0)
{
 //   no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 //    if(no!=Edit39->Text.Trim())
         Application->MessageBoxA("用户名重复！!!","问题",MB_OK);
}
  else
  {
/////////////

qstr="select * from USAdmin where [PWD]='";
qstr+=Edit1->Text.Trim();
qstr+="' and [no]=";
qstr+=Edit39->Text.Trim();
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->Open();
if(tcon->adoquery->RecordCount==0)
{
 //   no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 //    if(no!=Edit39->Text.Trim())
         Application->MessageBoxA("旧密码不正确!!","问题",MB_OK);
         return;
}

qstr="update USAdmin set [OpName] = '";
    qstr+=Edit40->Text.Trim();
    qstr+="',[PWD] = '";
    qstr+=Edit37->Text.Trim();
    /*
    qstr+="',[cn1] = '";
    qstr+=Check1;

    qstr+="',[cn2] = '";
    qstr+=Check2;
    qstr+="',[cn3] = '";
    qstr+=Check3;
    qstr+="',[cn4] = '";
    qstr+=Check4;
    qstr+="',[cn5] = '";
    qstr+=Check5;
    qstr+="',[cn6] = '";
    qstr+=Check6;
    qstr+="',[cn7] = '";
    qstr+=Check7;
    qstr+="',[cn8] = '";
    qstr+=Check8;
    qstr+="',[cn9] = '";
    qstr+=Check9;
    qstr+="',[cn10] = '";
    qstr+=Check10;
 */
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit39->Text.Trim());
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
/////////////
      tcon->USAdminado->Active=false;
      tcon->USAdminado->Active=true;
ins="delete * from login where logname='";
ins+=Label22->Caption;
ins+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(ins);
tcon->adoquery->ExecSQL();
      Application->MessageBoxA("修改成功！!!","恭喜",MB_OK);
  }
  }
 }
 else
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
}
else
{
qstr="select * from USAdmin where OpName='";
qstr+=Edit40->Text.Trim();
qstr+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->ExecSQL();
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount!=0)
{
    Application->MessageBoxA("用户名重复！!!","问题",MB_OK);
}
  else
  {





          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from USAdmin");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("no")->AsString=Edit39->Text.Trim();
          tcon->adoquery->FieldByName("OpName")->AsString=Edit40->Text.Trim();
          tcon->adoquery->FieldByName("PWD")->AsString=Edit37->Text.Trim();
          tcon->adoquery->FieldByName("cn1")->AsString=Check1;
          tcon->adoquery->FieldByName("cn2")->AsString=Check2;
          tcon->adoquery->FieldByName("cn3")->AsString=Check3;
          tcon->adoquery->FieldByName("cn4")->AsString=Check4;
          tcon->adoquery->FieldByName("cn5")->AsString=Check5;
          tcon->adoquery->FieldByName("cn6")->AsString=Check6;
          tcon->adoquery->FieldByName("cn7")->AsString=Check7;
          tcon->adoquery->FieldByName("cn8")->AsString=Check8;
          tcon->adoquery->FieldByName("cn9")->AsString=Check9;
          tcon->adoquery->FieldByName("cn10")->AsString=Check10;
          tcon->adoquery->FieldByName("cn11")->AsString=Check11;

         tcon->adoquery->Post();
         tcon->adoquery->Close();
         tcon->USAdminado->Active=false;
         tcon->USAdminado->Active=true;
         Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
      //   Button27->Enabled=false; //保存关
         Edit1->Enabled=true;
         Edit39->ReadOnly=true; //编号写关
         Edit37->Text="";
         Edit38->Text="";
         Edit39->Enabled=false;
         Edit40->Enabled=false;

  }
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton26Click(TObject *Sender)
{
sButton26->Enabled=false;
String Temp,Temp1,p,dt,p1,ins,selectin,usecount,ucs1,nok,cardaddr,EndTime,a,UserCID,useyxqyn;
String cardaddr1,cardaddr2,cardaddr3,carduse,countyn,usecountyn,elevatoraddr,tempxor,yxqyn;
String userlimtype,userlim1,userlim2,userlim3,userlim4,sdate,jbusyn,cardinpwd,ta,tb,tc,td;
String ljh,scardid,userpuid,kk,qstr;
String TempOne1,TempTow1,TempStree1;
unsigned char returnSign;   //写入 反正标记
unsigned char newData1[7]={0xaa,0x01,0x01,0x01,0x02,0x01,0xff};           //数据存放数组
unsigned char newData2[58];
int  ln,n,d,t,ucs,ccount;
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);

nok=sEdit1->Text;
if(sEdit1->Text =="")
  {
  Application->MessageBoxA("请选择用户!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }
//nok1=Edit23->Text;
if(CurrentDevice == NULL)
  {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton26->Enabled=true; //
        return;
        }
  }
////------------------

if(inipwdpoc=="1")
if(CurrentDevice == NULL)
  {
     jiamityn();
FrmBar->PBarClose();
///-----------------------------------------------------------------------------------------
char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        scardid=String(Datas).SubString(1,8);
        cardinpwd=cardidpwdpocw(Datas);
        tb="0x"+cardinpwd.SubString(1,2).Trim();
        ta="0x"+cardinpwd.SubString(3,2).Trim();
        tc=tb^ta;

        td=IntToHex(StrToInt(tc),2);

        tb="0x"+cardinpwd.SubString(5,2).Trim();
        ta="0x"+cardinpwd.SubString(7,2).Trim();
        tc=tb^ta;
        tc=IntToHex(StrToInt(tc),2);
        td=td+tc;

        tb="0x"+cardinpwd.SubString(9,2).Trim();
        ta="0x"+cardinpwd.SubString(11,2).Trim();
        tc=tb^ta;
        tc=IntToHex(StrToInt(tc),2);
        td=td+tc;
        cardinpwd=td;

    }
    else
    {
    Form1->Caption = "请在发卡器上放卡片";
        sButton26->Enabled=true; //
        return;
    }
   }

//-------------------------------------------------------------------------------------------
if(nok!="")
{
////////////////////////////////////////////////////////////////////////////////////////////
/*
   ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */
///////////////////////////////////////////////////////////////////////////////////////////////
 ins="select * from userinfo where [no]=";
 ins+=nok;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {
         selectin=tcon->adoquery->FieldByName("selectin")->AsString.Trim()+"0000000000000000";
         selectin=selectin.SubString(1,16);
         usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim();
//         cardaddr="ff"+tcon->adoquery->FieldByName("cardaddr")->AsString.Trim();
//         cardaddr=cardaddr.SubString(cardaddr.Length()-1,2 );
//         cardaddr1="ff"+tcon->adoquery->FieldByName("cardaddr1")->AsString.Trim();
//         cardaddr1=cardaddr1.SubString(cardaddr1.Length()-1,2 );
//         cardaddr2="ff"+tcon->adoquery->FieldByName("cardaddr2")->AsString.Trim();
//         cardaddr2=cardaddr2.SubString(cardaddr2.Length()-1,2 );
//         cardaddr3="ff"+tcon->adoquery->FieldByName("cardaddr3")->AsString.Trim();
//         cardaddr3=cardaddr3.SubString(cardaddr3.Length()-1,2 );
         elevatoraddr=tcon->adoquery->FieldByName("elevatoraddr")->AsString.Trim();
         usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim()+"00000000";
         usecount=usecount.SubString(1,8 );
         usecountyn=tcon->adoquery->FieldByName("usecountyn")->AsString.Trim();
         useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
         EndTime=tcon->adoquery->FieldByName("EndTime")->AsString.Trim();
         UserCID=tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
         carduse=tcon->adoquery->FieldByName("carduse")->AsString.Trim();
         bindcon=tcon->adoquery->FieldByName("bindcon")->AsString.Trim();
         jbusyn=tcon->adoquery->FieldByName("JBUS")->AsString.Trim();
         addlastcntyn=tcon->adoquery->FieldByName("addlastcntyn")->AsString.Trim();
 userlimtype=tcon->adoquery->FieldByName("userlimtype")->AsString.Trim();
 if(userlimtype=="")
     userlimtype="0";
 userlim1="00"+tcon->adoquery->FieldByName("userlim1")->AsString.Trim();
  userlim1=userlim1.SubString(userlim1.Length()-1,2 );
 userlim2="00"+tcon->adoquery->FieldByName("userlim2")->AsString.Trim();
  userlim2=userlim2.SubString(userlim2.Length()-1,2 );
 userlim3="00"+tcon->adoquery->FieldByName("userlim3")->AsString.Trim();
  userlim3=userlim3.SubString(userlim3.Length()-1,2 );
 userlim4="00"+tcon->adoquery->FieldByName("userlim4")->AsString.Trim();
  userlim4=userlim4.SubString(userlim4.Length()-1,2 );
         }
         else
         {
         Application->MessageBoxA( "数据库中没有这个编号!!","问题",MB_OK);
         return;
         }
    if(UserCID=="")
        UserCID="0";
    UserCID=UserCID+"0000";
    UserCID=UserCID.SubString(1,4);
    if(usecount=="")
        usecount="0";
//ucs=65535-StrToInt(usecount);
//ucs1=IntToHex(ucs,4);
     /*
      a=EndTime.SubString(7,1).Trim();
    if((a=="-")||(a=="/")||(a=="."))
      EndTime=EndTime.Insert("0",6);
    if(EndTime.Length()!=10)
      a=EndTime.Insert("0",9);
    else
      a=EndTime;
       */

      a=timepoc(EndTime);
      EndTime=a.SubString(3,2);
      EndTime=EndTime+a.SubString(6,2);
      EndTime=EndTime+a.SubString(9,2)+"000000";
      EndTime=EndTime.SubString(1,6);

   if(usecountyn=="1")
      countyn="1";
   else {
      countyn="0";
      }
   if(useyxqyn=="1")
      yxqyn="1";
   else {
      yxqyn="0";
 //     usecount="00000000";
      }
if(carduse=="2")
 {
  if(MessageDlg("此用户之前的卡已被挂失，是否发新的卡？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
   {
kk="select *from userinfo where [userpuid]>=all(select max([userpuid]) from  userinfo)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
userpuid=tcon->adoquery->FieldByName("userpuid")->AsString.Trim();
if(userpuid=="")
userpuid=1;
else
userpuid=IntToStr(StrToInt(userpuid)+1);

      UserCID=IntToHex(StrToInt64(userpuid),4);
    if(UserCID=="")
        UserCID="0";
    UserCID="0000"+UserCID;
    UserCID=UserCID.SubString(UserCID.Length()-3,4);

    qstr="update userinfo set [UserCID]='";
    qstr+=UserCID;
    qstr+="',[userpuid]=";
    qstr+=userpuid;
//    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
    carduse=="";
   }
   else {
   if (!USB_DevClose())
   Caption = "关闭串口失败";
   sButton26->Enabled=true; //
   return;
   }
 }

 if(carduse=="1")
 {
// MessageBox(0, "此用户已发过卡!!","rrr",MB_OK);
 if(MessageDlg("此用户已发过卡!!是否重发？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
///*************************************************USB发卡器用

  Temp=EndTime+conpwd+UserCID+yxqyn+countyn;
  Temp1=xorcard(Temp);
  Temp=EndTime+conpwd;
  Temp=datapack(Temp);
  tempxor=Temp1.SubString(Temp1.Length()-3,4);
  tempxor=datapack(tempxor);
  ta=tempxor+"0000"+cardinpwd;
  tb=xordata(ta);
  Temp=Temp+UserCID+yxqyn+countyn+tempxor+tb+"00"+cardinpwd;
  if(jbusyn!="1")
  jbusyn="0";

  userlimtype=IntToHex(StrToInt(userlimtype),2);

   elevatoraddr=add_fushudizhi(elevatoraddr);

  Temp1=selectin+"00"+jbusyn+"0"+userlimtype+userlim1+userlim2+userlim3+userlim4+"000000000000000";
  //              xor 可能是没有做
  elevatoraddr=elevatoraddr.SubString(1,88)+"00000000";
String   elevatoraddr1,Tempe,Tempe1,Tempe2,ljh14s0,ljh14s1,ljh14s2,ljh15s0,ljh15s1,ljh15s2,ljh13s,ljh13syh;
  String crct,h1,h2,h3,h4,h5,h6,h7,h8;

  unsigned char *crcbuf;
  unsigned int crcvlue;
           int crchex;
               crct=elevatoraddr+"00000000000000000000000000000000"+Temp+Temp1;
             //  crcbuf=crct.c_str();
               crcvlue = crc32( crct, 96);
              //  crcvlue=0x8A6B7CDE;
               //   crcvlue=0xDD0D7CC9;
              //    for(int i=0;i<crcvlue;i++)
              //    {
                   crchex=crcvlue%16;
                   h1=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h2=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h3=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h4=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h5=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h6=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h7=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h8=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;
               //   }
          /// crct=IntToHex(crcvlue,8);
        //   crct=IntToStr(crcvlue);
   elevatoraddr=elevatoraddr.SubString(1,88)+h8+h7+h6+h5+h4+h3+h2+h1;

  ljh14s0=leijiahe(Temp);
  ljh14s1=leijiahe(Temp1);
  ljh14s2="38";//leijiahe(Temp);
  elevatoraddr1=elevatoraddr+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Tempe=elevatoraddr1.SubString(1,32);
  Tempe1=elevatoraddr1.SubString(33,32);
  Tempe2=elevatoraddr1.SubString(65,32);

  usecount=usecount+"BCC6CAFD"+"00000000000000000000000000000000";
  usecount=usecount.SubString(1,32);

  ljh15s0=leijiahe(Tempe);
  ljh15s1=leijiahe(Tempe1);
  ljh15s2=leijiahe(Tempe2);

  ljh13s=ljh14s0+ljh14s1+ljh14s2+ljh15s0+ljh15s1+ljh15s2;
  ljh13syh=leijiayihuohe(ljh13s);
  ljh13s=ljh14s0+ljh14s1+ljh14s2+ljh15s0+ljh15s1+ljh15s2+ljh13syh+"0000"+"0000000000000000";

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton26->Enabled=true; //
    return;
}
 // Temp=datapack(Temp);
 /*
  if(bindsoft=="1"){
if(write11addr())
if(write12addr())
if(!write13addr(bindcon))
   if (!USB_DevClose())
         Caption = "关闭串口失败";

    sButton26->Enabled=true; //
    return;
 }
 */
/*
if(!write13addrwz(Temp)){
   if (!USB_DevClose())
         Caption = "关闭串口失败";

    sButton26->Enabled=true; //
    return;
}
*/
//  for(int j=0;j<48;j++)
  //{
 // crctemp[j] ="0x"+IntToHex(StrToInt(elevatoraddr.SubString(j,2)),2);// "0x"+elevatoraddr.SubString(j,2);
 // crctemp[j] =elevatoraddr.SubString(j,2).c_str();
 // }

 int number = 0;
   if(CurrentDevice == NULL)
  {
   if(wr0s0baes())
   if(write13s0(ljh13s))
   if(write13s1s2to0())
   if(write14data(Temp,Temp1,usecount))
   if(write15addr(elevatoraddr)) {
    number = 1;
   }
  }  else {
    erase(0x02); // 擦除
    Temp=EndTime+UserCID;   //数据再赋值,不要加密
    returnSign = DataWrite(newData1,Temp);
    if (returnSign ==0x00){
    Temp1=selectin+"0"+jbusyn;  //数据再赋值,不要加密
       newData1[5]=0x02;
       returnSign =  DataWrite(newData1,Temp1);
       if (returnSign == 0x00){
          TempOne1=elevatoraddr.SubString(1,32);
          newData1[5]=0x03;
          returnSign = DataWrite(newData1,TempOne1);
           if (returnSign == 0x00){
              TempTow1=elevatoraddr.SubString(33,32);
              newData1[5]=0x04;
             returnSign = DataWrite(newData1,TempTow1);
             if (returnSign == 0x00){
            TempStree1=elevatoraddr.SubString(65,32);
            newData1[5]=0x05;
            returnSign = DataWrite(newData1,TempStree1);
            if (returnSign != 0x00){Application->MessageBoxA("第五组数据发送返回失败!!","问题",MB_OK);}
               else{ Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);}
            } else {Application->MessageBoxA("第四组数据发送返回失败!!","问题",MB_OK);}
         } else {Application->MessageBoxA("第三组数据发送返回失败!!","问题",MB_OK);}
      } else {Application->MessageBoxA("第二组数据发送返回失败!!","问题",MB_OK);}
   } else {Application->MessageBoxA("第一组数据发送返回失败!!","问题",MB_OK);}
  }

   if(number == 1 )
   {
////------------------------------------------------------------------------------------
ins="select * from fakapoc where userno='";
 ins+=StrToInt(sEdit1->Text);
 ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
      ccount=tcon->adoquery->RecordCount;
      ccount=ccount+1;
///////////////////////////////////////////////////////////////////
  // tcon->UserSetado->Active =false;
    ins="update userinfo set [carduse]='1',[fakacount]='";
    ins+=IntToStr(ccount);
    ins+="' where [no]=";
    ins+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(ins);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
//    tcon->UserSetado->Active =true;
////-------------------------------------------------------------------------------------
          tcon->adoquery->Close();
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from fakapoc");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("userno")->AsString=sEdit1->Text.Trim();
       // tcon->adoquery->FieldByName("cardid")->AsString=sEdit2->Text.Trim();

if(win7=="0")
     {
     sdate=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
     tcon->adoquery->FieldByName("fakatime")->AsString=sdate;
     }

if(win7=="1")
     {
        sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        tcon->adoquery->FieldByName("fakatime")->AsString=sdate;

     }

if(win7=="2")
     {
        sdate=String(GTL->wYear)+'.'+String(GTL->wMonth)+'.'+String(GTL->wDay);
        tcon->adoquery->FieldByName("fakatime")->AsString=sdate;

     }





         tcon->adoquery->Post();
         tcon->adoquery->Close();
///////////////////////////////////////////////////////////////////
  // tcon->UserSetado->Active =false;
    ins="update userinfo set [fkdate]='";
    ins+=sdate;
    ins+="',[ucardid]='";
    ins+=scardid;
    ins+="' where [no]=";
    ins+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(ins);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////////////////////////////////////////////
    pprefresh();
    FrmBar->PBarClose();
    userjilu(sEdit1->Text);
    bool result = USB_BeepExA(3);
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
   }
}
}
// return;
else
{
///*************************************************USB发卡器用
///*************************************************USB发卡器用
  Temp=EndTime+conpwd+UserCID+yxqyn+countyn;
  Temp1=xorcard(Temp);
  Temp=EndTime+conpwd;
  Temp=datapack(Temp);
  tempxor=Temp1.SubString(Temp1.Length()-3,4);
  tempxor=datapack(tempxor);
  ta=tempxor+"0000"+cardinpwd;
  tb=xordata(ta);
  Temp=Temp+UserCID+yxqyn+countyn+tempxor+tb+"00"+cardinpwd;
  if(jbusyn!="1")
  jbusyn="0";

  userlimtype=IntToHex(StrToInt(userlimtype),2);

  Temp1=selectin+"00"+jbusyn+"0"+userlimtype+userlim1+userlim2+userlim3+userlim4+"000000000000000";

  elevatoraddr=add_fushudizhi(elevatoraddr);
  //              xor 可能是没有做
  elevatoraddr=elevatoraddr.SubString(1,88)+"00000000";
String   elevatoraddr1,Tempe,Tempe1,Tempe2,ljh14s0,ljh14s1,ljh14s2,ljh15s0,ljh15s1,ljh15s2,ljh13s,ljh13syh;
String crct,h1,h2,h3,h4,h5,h6,h7,h8;

  unsigned char *crcbuf;
  unsigned int crcvlue;
           int crchex;

crct=elevatoraddr+"00000000000000000000000000000000"+Temp+Temp1;
             //  crcbuf=crct.c_str();
               crcvlue = crc32( crct, 96);
              //  crcvlue=0x8A6B7CDE;
               //   crcvlue=0xDD0D7CC9;
              //    for(int i=0;i<crcvlue;i++)
              //    {
                   crchex=crcvlue%16;
                   h1=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h2=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h3=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h4=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h5=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h6=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h7=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;

                   crchex=crcvlue%16;
                   h8=IntToHex(crchex,1);
                   crcvlue=crcvlue/16;
               //   }
          /// crct=IntToHex(crcvlue,8);
        //   crct=IntToStr(crcvlue);
   elevatoraddr=elevatoraddr.SubString(1,88)+h8+h7+h6+h5+h4+h3+h2+h1;
   
  ljh14s0=leijiahe(Temp);
  ljh14s1=leijiahe(Temp1);
  ljh14s2="38";//leijiahe(Temp);
  elevatoraddr1=elevatoraddr+"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  Tempe=elevatoraddr1.SubString(1,32);
  Tempe1=elevatoraddr1.SubString(33,32);
  Tempe2=elevatoraddr1.SubString(65,32);

  ljh15s0=leijiahe(Tempe);
  ljh15s1=leijiahe(Tempe1);
  ljh15s2=leijiahe(Tempe2);

    usecount=usecount+"BCC6CAFD"+"00000000000000000000000000000000";
  usecount=usecount.SubString(1,32);

  ljh13s=ljh14s0+ljh14s1+ljh14s2+ljh15s0+ljh15s1+ljh15s2;
  ljh13syh=leijiayihuohe(ljh13s);
  ljh13s=ljh14s0+ljh14s1+ljh14s2+ljh15s0+ljh15s1+ljh15s2+ljh13syh+"0000"+"0000000000000000";

//  Temp=Temp+UserCID+countyn+tempxor+"0000000000";
//  Temp1=selectin+"000000000000000000000000";
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton26->Enabled=true; //
    return;
}
/*
  if(bindsoft=="1"){
if(write11addr())
if(write12addr())
if(!write13addr(bindcon))
   if (!USB_DevClose())
         Caption = "关闭串口失败";

    sButton26->Enabled=true; //
    return;
 }
*/



  if(wr0s0baes())
  if(write13s0(ljh13s))
  if(write13s1s2to0())
  if(write14data(Temp,Temp1,usecount))
   if(write15addr(elevatoraddr))
   {
ins="select * from fakapoc where userno='";
 ins+=StrToInt(sEdit1->Text);
 ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
      ccount=tcon->adoquery->RecordCount;
      ccount=ccount+1;
///////////////////////////////////////////////////////////////////
  // tcon->UserSetado->Active =false;
    ins="update userinfo set [carduse]='1',[fakacount]='";
    ins+=IntToStr(ccount);
    ins+="' where [no]=";
    ins+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(ins);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
//    tcon->UserSetado->Active =true;
////-------------------------------------------------------------------------------------
          tcon->adoquery->Close();
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from fakapoc");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();


          tcon->adoquery->FieldByName("userno")->AsString=sEdit1->Text.Trim();
       //   tcon->adoquery->FieldByName("cardid")->AsString=sEdit2->Text.Trim();
      //   tcon->adoquery->FieldByName("fakatime")->AsString=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);

if(win7=="0")
     {
        sdate=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
        tcon->adoquery->FieldByName("fakatime")->AsString=sdate;
      }
if(win7=="1")
     {
        sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        tcon->adoquery->FieldByName("fakatime")->AsString=sdate;

     }
if(win7=="2")
     {
        sdate=String(GTL->wYear)+'.'+String(GTL->wMonth)+'.'+String(GTL->wDay);
        tcon->adoquery->FieldByName("fakatime")->AsString=sdate;

     }

         tcon->adoquery->Post();
         tcon->adoquery->Close();
///////////////////////////////////////////////////////////////////
  // tcon->UserSetado->Active =false;
    ins="update userinfo set [fkdate]='";
    ins+=sdate;
    ins+="',[ucardid]='";
    ins+=scardid;
    ins+="' where [no]=";
    ins+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(ins);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////////////////////////////////////////////
    pprefresh();
    FrmBar->PBarClose();
    userjilu(sEdit1->Text);
    bool result = USB_BeepExA(3);
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
   }

}
}
if (!USB_DevClose())
         Caption = "关闭串口失败";

sButton26->Enabled=true; //
sButton2->Enabled=false; 
}
//---------------------------------------------------------------------------



























void __fastcall TForm1::ListView1Change(TObject *Sender, TListItem *Item,
      TItemChange Change)
{
String pa,ins,elevatoraddrs,elevatoraddre,ss;
int t;
/*
if(msfig=="1")
{
//  if(Edit23->Text=="")
//   Button26->Enabled=false; //发卡关
//  else
   sButton26->Enabled=true; //发卡开
     msfig="0";
     }
   else
     sButton26->Enabled=false; //发卡关
     */
sButton26->Enabled=false; //发卡关
sButton23->Enabled=false; //挂失卡关

bindcon="";
for(int j=0;j<ListView1->Items->Count;j++)
  {
        if(ListView1->Items->Item[j]->Checked)
        {
        ss=ListView1->Items->Item[j]->SubItems->Strings[2];
  if(ss=="是")
     {
        t=bindcon.Length();
        if(bindcon.Length()<32) {
        pa=ListView1->Items->Item[j]->Caption;
         ins="select * from elevatorinfo where [no]=";  // where [UserCID]!=NULL";
         ins+=pa;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
             {
            elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
            elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2);
            elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
            elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2);
            bindcon+=elevatoraddrs+elevatoraddre;
              }
        }
        else
        {
        Application->MessageBoxA("选择绑定卡片的控制器不能大于8个!!","问题",MB_OK);
        ListView1->Items->Item[j]->Checked=false;
        }
     }
        }
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton31Click(TObject *Sender)
{
String old_width,old_height;           
old_width=Screen->Width; //获得窗口
old_height=Screen->Height;

//Form1->Width=old_width-3;
Form1->Height=old_height-30;

sGroupBox12->Top=Form1->Height-152;
sGroupBox12->Left=8;
sCheckBox35->Top=Form1->Height-152;

StringGrid3->Height=Form1->Height-207;

sGroupBox14->Top=Form1->Height-152;

ListView2->Height=Form1->Height-207;

ListView1->Height=Form1->Height-207;

if(StrToInt(old_height)>600)
   sGroupBox15->Top=56;

StringGrid1->Height=Form1->Height-143;
StringGrid1->Width=561;
Memo1->Height=Form1->Height-319;
///////////////////////////////////////////////////////////////////////////////////////////////
/*
 try
         {
         Form5=new TForm5(Application);
         Form5->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form5;
           Application->ShowException(&exception);
           }
           */
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton30Click(TObject *Sender)
{
sButton30->Enabled=false;
String Temp,Tempr,p,p1,ins,qstr,bh,yzm,no;
int  ln,n,d,t;
if(MessageDlg("此卡用于恢复控制中所有已挂失的卡。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton30->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
////------------------------------------------------------------------------------------
/*
   ins="select * from UCID where [delyn]='1'";  // where [UserCID]!=NULL";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {
*/
// no="3";//tcon->adoquery->FieldByName("no")->AsString.Trim();

//qstr="delete from UCID where [no]=";
//qstr+=no;
//qstr+=" and [username]='";
//qstr+=Edit2->Text.Trim();
//qstr+="' and [gettime]='";
//qstr+=StaticText1->Caption;
//qstr+="";
/*
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(qstr);
   tcon->adoquery->Open();
    */
//    tcon->adoquery->Close();
//   tcon->adoquery->SQL->Clear();
//    tcon->adoquery->SQL->Add(qstr);
//    tcon->adoquery->ExecSQL();       //将卡号写入
//}
//////*****************************************************************************************************
/********************************************************************************
AA BB 1C 01 02 01 08 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16

写数据，（08）2号扇区，0号块   （FF FF FF FF FF FF）密码。写是分块写的

AA BB 1C 01 02 01 0A 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF EB

写数据，（0A）2号扇区，2号块   （FF FF FF FF FF FF）密码。

AA BB 0C 01 01 01 04 00 FF FF FF FF FF FF 09  从控制器中读取1号扇区1号块
1b 01 02 b1 83 31 1b  从控制器中读取1号扇区1号块

AA BB 04 00 00 00 04 写入成功的返回值
//*********************************************************************************
//  String Temp,Temp1,p,dt,p1;
  char *SendData;
//  int  ln,n,d,t;
  unsigned long lrc,BS;
  if (hComm==0) return; //检查Handle值
/********************************************************************************
;扇区1块0为主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h  为地址
;07h  为地址反码
;08h 09h 0ah 0bh 0ch 0dh  为密码 共六位
;0eh 为BCC校验
;AA BB 1C 01 02 01 04 00 FF FF FF FF FF FF 4D 61 73 74 65 72 05 FA 56 78 90 12 34 56 CE 00 D9 写入1扇区0块
;--------------------------------------------------------------------------------------------------------
;扇区1块1为
00h 为地址， -------------------此软件这个为00 没用这个功能
01h 02h 03h 为year month date
04h 为空
05h 06h 07h 08h 09h 0ah 为密码
;----------------------------------------------------------------------------------------------------
;AA BB 0C 01 01 01 00 00 FF FF FF FF FF FF 0D  为读取0块         
***********************************************************************************/
/*
Temp="AABB0C0101010000FFFFFFFFFFFF";
p1=seeddata(Temp);
if(p1=="ff")
{        MessageBox(0, "请放卡片！!!","rrr",MB_OK);
         Button18->Enabled=true;
         return;
}
Tempr=p1.SubString(5,32);
*/

////////////////////////////////////////////////////////////////////////////////////////////
/*
   ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
  */
   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726504"+conpwd+"006572617365";
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton30->Enabled=true; //
    return;
}
    if (write14data0s(Temp))
    {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);

delini:
////------------------------------------------------------------------------------------
   ins="select * from userinfo where [carduse]='2'";  // where [UserCID]!=NULL";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();

    qstr="update userinfo set ";
    qstr+="[carduse]=''";
    qstr+=" where [no]=";
    qstr+=StrToInt(no);
   tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    goto delini;
        }
}
//////*****************************************************************************************************
///////////////////////////////////////////////////////////////////
 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
   sButton30->Enabled=true;
}
//---------------------------------------------------------------------------








void __fastcall TForm1::sButton33Click(TObject *Sender)
{
String p1;
if (sButton33->Caption == "打开串口")
    {
    sButton33->Enabled=false;
    sButton33->Caption = "关闭串口";
//   tt="slfsldf";
//////////////////////////////////////////////////////串口自动选择处理
  char *ComNo;
  DCB dcb;
//  HANDLE hComm; // 将给串行端口使用的Handle声明
  String Temp;
  //取得要打开的通信端口
  Temp = "COM"+ComboBox15->Text;
 // Temp = "COM2";
  // 转换到指针类型的Char
  ComNo = Temp.c_str();
  hComm = CreateFile(ComNo,GENERIC_READ | GENERIC_WRITE,
       0, NULL, OPEN_EXISTING, 0, 0);
  if (hComm == INVALID_HANDLE_VALUE) // 如果COM未打开
  {
  sButton33->Caption = "打开串口";
  //  MessageBox(0, "打开通信端口错误!!","Comm Error",MB_OK);
   }else
   {
   //-------------------------------------------------------------------
   // 将dcb地址传入，以取得通信参数
  GetCommState(hComm,&dcb);                         // 得知目前COM的状态
  dcb.BaudRate = CBR_9600;                          // 设置波特率为9600
  dcb.ByteSize = 8;                                 // 字节为8 bit
  dcb.Parity = NOPARITY;                            // Parity 为 None
  dcb.StopBits = ONESTOPBIT;                        // 1个Stop bit
  // 通信端口设置
  if (!SetCommState(hComm, &dcb)) {       // 设置COM的状态
    Application->MessageBoxA("通信端口设置错误!!!","信息",MB_OK);
    CloseHandle(hComm);
    sButton33->Caption = "打开串口";
    sButton33->Enabled=true;
    return;
    }
  }
sButton33->Enabled=true;
return;
}
if(sButton33->Caption == "关闭串口")
{
 //  if (hComm!=INVALID_HANDLE_VALUE)
   CloseHandle(hComm);
   sButton33->Caption = "打开串口";

}
sButton33->Enabled=true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton34Click(TObject *Sender)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday;
String RegisterDate,endtime,Dept,duties,note,cardaddr,UserCID,usecountyn,usecount;
String a1,a2,a3,a4,a5,month,day,syear,sdate,fakacount,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney,temp;
int n,dlong,bf,imonth,iday;

Form1->Caption=Versionnumber;
Label10->Caption = "系统时间：                     ";
Timer1->Enabled=true;
StaticText5->Caption ="-";
sEdit1->Text = "";
sEdit2->Text = "";
sComboBox1->Text = "";
StaticText1->Caption="";
sEdit9->Text = "";
sEdit11->Text = "0";
Label59->Caption="0000";
Edit41->Text = "";
sButton2->Enabled = false;
sButton3->Enabled = false;
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

if(win7=="0")
     {
     //   sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        DateTimePicker1->Date=String(GTL->wYear)+'-'+String(GTL->wMonth)+'-'+String(GTL->wDay);
     }
if(win7=="1")
{
        DateTimePicker1->Date=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
}
if(win7=="2")
{
        DateTimePicker1->Date=String(GTL->wYear)+'.'+String(GTL->wMonth)+'.'+String(GTL->wDay);
}

//**********************************************8
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=false;
for(int j=0;j<ListView1->Items->Count;j++)
        ListView1->Items->Item[j]->Checked=false;

StringGrid3->OnSelectCell=NULL;
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
Form1->StringGrid3->Cells[12][0]="当前充次数";
Form1->StringGrid3->Cells[13][0]="当前卡次数";
Form1->StringGrid3->Cells[14][0]="上回卡次数";
Form1->StringGrid3->Cells[15][0]="当前充金额";
Form1->StringGrid3->Cells[16][0]="挂失码";
Form1->StringGrid3->Cells[17][0]="处理码";


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
   ins="select * from userinfo ";
else if(sComboBox16->Text=="编号") {
   ins="select * from userinfo where [no]=";
   if(sEdit42->Text.Trim()=="") return;
    if(StrToIntYN(sEdit42->Text.Trim()))
       ins+=StrToInt(sEdit42->Text.Trim());
    else
      return;
   }
   else if(sComboBox16->Text=="姓名") {
   ins="select * from userinfo where [name] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="单元（部门）") {
   ins="select * from userinfo where [Address] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="联系方式") {
   ins="select * from userinfo where [MobilePhone] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="备注") {
   ins="select * from userinfo where [note] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="注册日期") {
   ins="select * from userinfo where [RegisterDate] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="发卡日期") {
   ins="select * from userinfo where [fkdate] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="有效日期") {
   ins="select * from userinfo where [endtime] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="限制时间") {
   ins="select * from userinfo where [yxqyn1] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="限制次数") {
   ins="select * from userinfo where [usecountyn] like '";
   ins+=sEdit42->Text.Trim();
   ins+="%'";
   }
   else if(sComboBox16->Text=="挂失码") {
   ins="select * from userinfo where [UserCID] like '";
   temp="0000"+sEdit42->Text.Trim();
   temp=temp.SubString(temp.Length()-3,4 );
   ins+=temp;
   ins+="%'";
   }
   else if(sComboBox16->Text=="已挂失") {
   ins="select * from userinfo where [carduse] = '";
   ins+=2;
   ins+="'";
   }
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
StringGrid3->OnSelectCell=StringGrid3SelectCell;
}
//---------------------------------------------------------------------------










void __fastcall TForm1::StringGrid3SelectCell(TObject *Sender, int ACol,
      int ARow, bool &CanSelect)
{
String ins,no,nos,name,idcard,Address,Telephone,MobilePhone,Email,sex,Birthday,elevatoraddr;
String RegisterDate,endtime,Dept,duties,note,cardaddr,cardaddr1,cardaddr2,cardaddr3;
String UserCID,selectin,carduse,cardtype,cardid,ds,ps,pa,t,t1,ts,d,usecount,usecountyn;
String userlimtype,userlim1,userlim2,userlim3,userlim4,jbusyn,useyxqyn;
String nowsendcnt,ucardid,yxqyn1,fkdate,nowcrdcnt,lastcrdcnt,nowmoney,zhunji;
String a1,a2,a3,a4,a5,dsp,hht,sst,hh;
TDateTime TM;
int m,n,p=0,p1,k=0,di,bf,hhint;
 Timer1->Enabled=false;
sButton2->Enabled=true; //修改开
//Button2->Visible=true; //修改显示
sButton3->Enabled=true; //删除开
sButton54->Enabled=true; //计算次数开
sButton4->Enabled=false; //保存关
N8->Enabled=false; //发测试卡关

sEdit1->ReadOnly=true; //编号写关
int id;
  id=ARow;
          CanSelect=true;
          no=StringGrid3->Cells[0][id];
          if(no=="")
          {
      //    sButton1->Enabled = false;
          sButton2->Enabled = false;
          sButton3->Enabled = false;
          sButton4->Enabled = false;
          sButton26->Enabled = false;
          sButton23->Enabled = false;
             return;
          }
          sEdit1->Text=no;
   ins="select * from userinfo where [no]=";
   ins+=StrToInt(sEdit1->Text);
 //  ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 name=tcon->adoquery->FieldByName("name")->AsString.Trim();
 idcard=tcon->adoquery->FieldByName("idcard")->AsString.Trim();
 Address=tcon->adoquery->FieldByName("Address")->AsString.Trim();
 Telephone=tcon->adoquery->FieldByName("Telephone")->AsString.Trim();
 MobilePhone=tcon->adoquery->FieldByName("MobilePhone")->AsString.Trim();
 Email=tcon->adoquery->FieldByName("Email")->AsString.Trim();
 sex=tcon->adoquery->FieldByName("sex")->AsString.Trim();
 Birthday=tcon->adoquery->FieldByName("Birthday")->AsString.Trim();
 RegisterDate=tcon->adoquery->FieldByName("RegisterDate")->AsString.Trim();
 endtime=tcon->adoquery->FieldByName("EndTime")->AsString.Trim();
 Dept=tcon->adoquery->FieldByName("Dept")->AsString.Trim();
 duties=tcon->adoquery->FieldByName("duties")->AsString.Trim();
 selectin=tcon->adoquery->FieldByName("selectin")->AsString.Trim();
 elevatoraddr=tcon->adoquery->FieldByName("elevatoraddr")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
 useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecountyn=tcon->adoquery->FieldByName("usecountyn")->AsString.Trim();
 useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
 usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim();
 ucardid=tcon->adoquery->FieldByName("ucardid")->AsString.Trim();
 
yxqyn1=tcon->adoquery->FieldByName("yxqyn1")->AsString.Trim();
fkdate=tcon->adoquery->FieldByName("fkdate")->AsString.Trim();
nowcrdcnt=tcon->adoquery->FieldByName("nowcrdcnt")->AsString.Trim();
lastcrdcnt=tcon->adoquery->FieldByName("lastcrdcnt")->AsString.Trim();
nowmoney=tcon->adoquery->FieldByName("nowmoney")->AsString.Trim();


userlimtype=tcon->adoquery->FieldByName("userlimtype")->AsString.Trim();
 if(userlimtype=="")
     userlimtype="0";
 userlim1="00"+tcon->adoquery->FieldByName("userlim1")->AsString.Trim();
  userlim1=userlim1.SubString(userlim1.Length()-1,2 );
 userlim2="00"+tcon->adoquery->FieldByName("userlim2")->AsString.Trim();
  userlim2=userlim2.SubString(userlim2.Length()-1,2 );
 userlim3="00"+tcon->adoquery->FieldByName("userlim3")->AsString.Trim();
  userlim3=userlim3.SubString(userlim3.Length()-1,2 );
 userlim4="00"+tcon->adoquery->FieldByName("userlim4")->AsString.Trim();
  userlim4=userlim4.SubString(userlim4.Length()-1,2 );
       a1=usecount.SubString(1,2);
       a2=usecount.SubString(3,2);
       a3=usecount.SubString(5,2);
       a4=usecount.SubString(7,2);
       a5=a4+a3+a2+a1;
       if(StrToHexYN(a5))
         bf=("0x"+("00"+a5))^00;
       else
         bf=0;
       a5=IntToStr(bf);
       if(a5==""||a5=="0")
       {
       a5=nowcrdcnt; //  当前卡次数
       StaticText4->Caption="当前卡次数";
       }
       else
       StaticText4->Caption="当前充次数";
 cardaddr=tcon->adoquery->FieldByName("cardaddr")->AsString.Trim();
 cardaddr1=tcon->adoquery->FieldByName("cardaddr1")->AsString.Trim();
 cardaddr2=tcon->adoquery->FieldByName("cardaddr2")->AsString.Trim();
 cardaddr3=tcon->adoquery->FieldByName("cardaddr3")->AsString.Trim();
 UserCID=tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
 carduse=tcon->adoquery->FieldByName("carduse")->AsString.Trim();
 cardtype=tcon->adoquery->FieldByName("cardtype")->AsString.Trim();
 cardid=tcon->adoquery->FieldByName("cardid")->AsString.Trim();
 jbusyn=tcon->adoquery->FieldByName("JBUS")->AsString.Trim();
 }
    if(no=="")
       return;
    if(endtime=="")
        return;
     sEdit1->Text=no;
     sEdit2->Text=name;
//     Edit11->Text=idcard;
     sComboBox1->Text=Address;
//     Edit3->Text=Telephone;
     sEdit10->Text=MobilePhone;
//     Edit5->Text=Email;
/*
     if(sex=="男")
{
   RadioButton1->Checked=true;
   RadioButton2->Checked=false;
}
else
{
   RadioButton2->Checked=true;
   RadioButton1->Checked=false;
}
*/
//     Edit10->Text=Birthday;
     StaticText1->Caption=RegisterDate;
     DateTimePicker1->Date=endtime;
  //   Edit8->Text=Dept;
  //   Edit9->Text=duties;
     sEdit9->Text=note;
     sEdit11->Text=a5;
     if(usecountyn=="1")
     CheckBox10->Checked=true;
     else
     CheckBox10->Checked=false;

     if(useyxqyn=="1")
     CheckBox12->Checked=true;
     else
     CheckBox12->Checked=false;
 //    ComboBox2->Text=cardaddr;
 //    ComboBox3->Text=cardaddr1;
 //    ComboBox4->Text=cardaddr2;
 //    ComboBox5->Text=cardaddr3;
 //    Edit23->Text=UserCID;
     Label19->Caption=UserCID;
     Edit41->Text = cardid;
     sButton26->Caption="发卡";
     if(carduse=="1"){
       StaticText5->Caption="已发卡";
       sButton23->Enabled=true;
       sButton23->Caption="挂失卡";
       sButton58->Enabled=false;
       }
     else
        if(carduse=="2"){
         StaticText5->Caption="已挂失";
         sButton23->Enabled=true;
         sButton58->Enabled=true;
         sButton23->Caption="已挂失";
         sButton26->Caption="补卡";
         }
        else{
         StaticText5->Caption="未发卡";
         sButton23->Enabled=false;
         sButton58->Enabled=false;
         }
/*
if(cardtype=="ID")
{
   RadioButton4->Checked=true;
   RadioButton3->Checked=false;
}
else
{
   RadioButton3->Checked=true;
   RadioButton4->Checked=false;
}
*/
if(carduse=="2")
   {
//   Button22->Enabled=true; //获取开
 //  Button23->Enabled=false; //挂失关
   sButton26->Enabled=false; //发卡关
   }
else
   {
//   Button22->Enabled=false; //获取关
//   Button23->Enabled=true; //挂失开
   sButton26->Enabled=true; //发卡开
   sButton26->Enabled=true; //发卡开
   }

   N8->Enabled=true; //发测试卡开
////////////////////////////////////////////////////////////
Label10->Caption = "注册时间：                     ";
////////////////////////////////////////////////////////////
  sCheckBox35->Checked=false;  //是否启用时段
  sCheckBox28->Checked=false;  //周一
  sCheckBox29->Checked=false;  //周二
  sCheckBox30->Checked=false;  //周三
  sCheckBox31->Checked=false;  //周四
  sCheckBox32->Checked=false;  //周五
  sCheckBox33->Checked=false;  //周六
  sCheckBox34->Checked=false;  //周日

zhunji=userlimtype&"0x1";
if(zhunji=="1")
  {
  sCheckBox35->Checked=true;  //是否启用时段
  }
zhunji=userlimtype&"0x2";
if(zhunji=="2")
  {
  sCheckBox28->Checked=true;  //周一
  }
zhunji=userlimtype&"0x4";
if(zhunji=="4")
  {
  sCheckBox29->Checked=true;  //周二
  }
zhunji=userlimtype&"0x8";
if(zhunji=="8")
  {
  sCheckBox30->Checked=true;  //周三
  }
zhunji=userlimtype&"0x10";
if(zhunji=="16")
  {
  sCheckBox31->Checked=true;  //周四
  }
zhunji=userlimtype&"0x20";
if(zhunji=="32")
  {
  sCheckBox32->Checked=true;  //周五
  }
zhunji=userlimtype&"0x40";
if(zhunji=="64")
  {
  sCheckBox33->Checked=true;  //周六
  }
zhunji=userlimtype&"0x80";
if(zhunji=="128")
  {
  sCheckBox34->Checked=true;  //周日
  }

hht=userlim1;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker3->Time=TM;

hht=userlim2;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker4->Time=TM;

hht=userlim3;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker5->Time=TM;

hht=userlim4;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker6->Time=TM;
//sComboBox5->Text = userlimtype;
//sEdit4->Text=userlim1;
//sEdit5->Text=userlim2;
//sEdit6->Text=userlim3;
//sEdit7->Text=userlim4;

    displayselectaddr(elevatoraddr);
    Form1->ListView1->OnChange=ListView1Change;
    displayelevatornumber(selectin);
///////////////////////////////////////////////////////////////////
   for(int j=0;j<ListView2->Items->Count;j++)
	   {
		 if(ListView2->Items->Item[j]->SubItems->Strings[1]=="JBUS")
		   {
                     if(jbusyn=="1")
                       Form1->ListView2->Items->Item[j]->Checked=true;
                     else
                       Form1->ListView2->Items->Item[j]->Checked=false;
                   }
           }
///////////////////////////////////////////////////////////////////
if(cn5==""||cn5=="0")    //用户改动
{
  sButton1->Enabled = false;
  sButton2->Enabled = false;
  sButton3->Enabled = false;
}
if(cn6==""||cn6=="0")  //用户发卡
{
//  Button20->Visible = false;
  sButton26->Enabled = false;
}
if(cn4==""||cn4=="0")  //挂失卡
  sButton23->Enabled = false;

sButton26->Enabled=true; //发卡关

 buttonenableyn();

if(carduse=="")
   {
  sButton23->Enabled=false; //挂失关
   }

 sButton4->Enabled=false;
 
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sEdit42KeyPress(TObject *Sender, char &Key)
{
if(sComboBox16->Text=="编号")
   if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
        Key=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sComboBox16KeyPress(TObject *Sender, char &Key)
{
Key=0;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sComboBox16Change(TObject *Sender)
{
sEdit42->Text="";
if(sComboBox16->Text=="全部")
   sEdit42->Enabled=false;
else if(sComboBox16->Text=="已挂失")
   sEdit42->Enabled=false;
else
   sEdit42->Enabled=true;

   
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit41KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit22Change(TObject *Sender)
{
if (sEdit11->Text != "")
   {
       String sHex = IntToHex(StrToInt64(sEdit11->Text),8);
       Label59->Caption = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit22KeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
if (sEdit11->Text != "")
   {
       String sHex = IntToHex(StrToInt64(sEdit11->Text),8);
       Label59->Caption = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit22KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button32Click(TObject *Sender)
{
    char Data[8]= {0} ;
    int result = USB_RequestEx(Data);
    if (result == 1)
    {
        Edit41->Text = String(Data).SubString(1,8);
    	Caption = "寻卡成功";
    }
    else
    	Caption = "寻卡失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton19Click(TObject *Sender)
{
 try
         {
         Form6=new TForm6(Application);
         Form6->ShowModal();
         }
           catch(Exception &exception)
           {
           delete Form6;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sPageControl1Change(TObject *Sender)
{
String ins,no,elevatorname,note,addr,bindcardyn;
int m,n;
if(sPageControl1->TabIndex==0&&conchangeyn==1)
{
//////*********************************************************************************************
   ListView1->Items->Clear();
//////*********************************************************************************************

   ins="select * from elevatorinfo ORDER BY [no]";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   while (!tcon->adoquery->Eof )
	 {
	 no=tcon->adoquery->FieldByName("no")->AsString.Trim();
	 elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
         addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
         bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();

         if(bindcardyn=="1")
           bindcardyn="是";
       else
           bindcardyn="否";

	 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
         if(no!="0"){
     ////////////////////////////////////////////////////////////////////
	 ListView1->Items->Add();
         n=ListView1->Items->Count;
	// m=ListView1->Items->Count;
	if(StrToIntYN(no))
	  m=StrToInt(no);
	  else
	    break;
	 ListView1->Items->Item[n-1]->Caption=m;
	 ListView1->Items->Item[n-1]->SubItems->Add(elevatorname);
	 ListView1->Items->Item[n-1]->SubItems->Add(addr);

         if(bindsoft=="1")
           ListView1->Items->Item[n-1]->SubItems->Add(bindcardyn);

   	 ListView1->Items->Item[n-1]->SubItems->Add(note);
     ////////////////////////////////////////////////////////////////////
     }
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;
//////*********************************************************************************************
     ////////////////////////////////////////////////////////////////////
         conchangeyn=0;

/////**********************************************************************************************
}        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button5Click(TObject *Sender)
{
Button5->Enabled=false;
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        Button5->Enabled=true; //
        return;
        }

String Temp,Temp1,ins;
useyouxiaoqi=sEdit4->Text;

 if(useyouxiaoqi=="")
   {
   useyouxiaoqi="0";
   }
/*
ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */
   ///*************************************************USB发卡器用
   /*
;扇区14块0主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为06功能选择
;07h   为01功能选择
;08h   为01启动，02为取消
;09h 0ah 0bh 0ch  0dh 0eh 0fh 为无       */
  Temp="6D696661726506"+conpwd+"01010000000000";
String sHex = IntToHex(StrToInt64(useyouxiaoqi),8);
useyouxiaoqi = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);

Temp1=useyouxiaoqi+"BCC6CAFD"+"0600000000000000000000000000000000";
Temp1=Temp1.SubString(1,32);

fkqyn();  //用于防止下发数据时发卡器正在扫描卡 

if(write14data0s2s(Temp,Temp1))
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      
if (!USB_DevClose())
         Caption = "关闭串口失败";
Button5->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button11Click(TObject *Sender)
{
Button11->Enabled=false;
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        Button11->Enabled=true; //
        return;
        }
String Temp,Temp1,ins;
useyouxiaoqi=sEdit4->Text;

 if(useyouxiaoqi=="")
   {
   useyouxiaoqi="0";
   }
/*
ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */

   ///*************************************************USB发卡器用
   /*
;扇区14块0主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为06功能选择
;07h   为01功能选择
;08h   为01启动，02为取消
;09h 0ah 0bh 0ch  0dh 0eh 0fh 为无       */
  Temp="6D696661726506"+conpwd+"01020000000000";
  String sHex = IntToHex(StrToInt64(useyouxiaoqi),8);
useyouxiaoqi = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);

Temp1=useyouxiaoqi+"BCC6CAFD"+"0600000000000000000000000000000000";
Temp1=Temp1.SubString(1,32);

fkqyn();  //用于防止下发数据时发卡器正在扫描卡 
 if(write14data0s2s(Temp,Temp1))
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
if (!USB_DevClose())
         Caption = "关闭串口失败";
Button11->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton13Click(TObject *Sender)
{
sButton13->Enabled=false;
String Temp,Temp1,ins,opencardd,Temp2,openjbus,ss3;
if(MessageDlg("刷此卡使电梯向所有用户开放，当开放时再刷此卡则恢复刷卡状态。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{

 try
         {
         Form10=new TForm10(Application);
         Form10->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form10;
           Application->ShowException(&exception);
           }
 if(useyouxiaoqi=="ff")
   {
   sButton13->Enabled=true; //
        return;
   }

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";             
        sButton13->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
/*
ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */
   ///*************************************************USB发卡器用
   ins="select * from other ";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount!=0)
         {
    opencardd=tcon1->adoquery->FieldByName("opencardd")->AsString.Trim();
    openjbus="00"+tcon1->adoquery->FieldByName("openjbus")->AsString.Trim();
    openjbus=openjbus.SubString(openjbus.Length()-1,2 );
         }

    Temp2=opencardd+openjbus+"000000000000000000000000000000";

    if(countselect==1)
    ss3="02";
   else
    ss3="00";

   /*
;扇区14块0主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为06功能选择
;07h   为01功能选择
;08h   为01启动，02为取消
;09h 0ah 0bh 0ch  0dh 0eh 0fh 为无       */
  Temp="6D696661726509"+conpwd+"6F70656E01"+ss3;
//  Temp1=opencardd+useyouxiaoqi+"000000000000";

String sHex = IntToHex(StrToInt64(useyouxiaoqi),8);
useyouxiaoqi = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);

Temp1=useyouxiaoqi+"BCC6CAFD"+"0900000000000000000000000000000000";
Temp1=Temp1.SubString(1,32);

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton13->Enabled=true; //
    return;
}

// if (write14data0s1s(Temp,Temp1))
 if(write14data0s1s2s(Temp,Temp2,Temp1)){
      bool result = USB_BeepExA(3);
      Application->MessageBoxA( "写卡成功！!!","信息",MB_OK);

      }

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
sButton13->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N1Click(TObject *Sender)
{
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N2Click(TObject *Sender)
{
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=true;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N3Click(TObject *Sender)
{
for(int j=0;j<ListView1->Items->Count;j++)
        ListView1->Items->Item[j]->Checked=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N4Click(TObject *Sender)
{
for(int j=0;j<ListView1->Items->Count;j++)
        ListView1->Items->Item[j]->Checked=true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton1Click(TObject *Sender)
{
String kk,no,ins,month,day,syear,sdate;  //常关
int n,imonth,iday;
sEdit1->Text = "";
sEdit2->Text = "";
sEdit10->Text = "";
sComboBox1->Text = "";
StaticText1->Caption="";
sEdit9->Text = "";
sEdit11->Text = "0";
Label59->Caption="0000";
Edit41->Text = "";
StaticText5->Caption="新建卡";
CheckBox12->Checked=true;
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

if(win7=="0")
     {
     //   sdate=String(GTL->wYear)+'/'+String(GTL->wMonth)+'/'+String(GTL->wDay);
        DateTimePicker1->Date=syear+'-'+String(GTL->wMonth)+'-'+day;
     }
if(win7=="1")
{
        DateTimePicker1->Date=syear+'/'+String(GTL->wMonth)+'/'+day;
}
if(win7=="2")
{
        DateTimePicker1->Date=syear+'.'+String(GTL->wMonth)+'.'+day;
}
//**********************************************8
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=false;
for(int j=0;j<ListView1->Items->Count;j++)
        ListView1->Items->Item[j]->Checked=false;

//sComboBox5->Text = "小时";
//sEdit4->Text="0";
//sEdit5->Text="0";
//sEdit6->Text="0";
//sEdit7->Text="0";


Timer1->Enabled=true;
sEdit1->Enabled=true;
sButton2->Enabled=false; //修改关
sButton3->Enabled=false; //删除关

//Button7->Enabled=false; //有效期关
//Button8->Enabled=false; //防潜回关

sButton26->Enabled=false; //发卡关

kk="select *from userinfo where [No]>=all(select max([NO]) from  userinfo)";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(kk) ;
tcon->adoquery->Open() ;
no=tcon->adoquery->FieldByName("No")->AsString.Trim();
if(no=="")
no=1;
else
no=IntToStr(StrToInt(no)+1);
sEdit1->Text=no;
sButton4->Enabled=true; //保存开
sButton4->Visible=true; //保存开
sEdit1->ReadOnly=false; //编号写开
//tcon->bumenado->Insert() ;
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button15Click(TObject *Sender)
{
Button15->Enabled=false;
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        Button15->Enabled=true; //
        return;
        }
String Temp,Temp1;
useyouxiaoqi=sEdit4->Text;

 if(useyouxiaoqi=="")
   {
   useyouxiaoqi="0";
   }

Temp="6D69666172650B696E69737077640100";

String sHex = IntToHex(StrToInt64(useyouxiaoqi),8);
useyouxiaoqi = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);

Temp1=useyouxiaoqi+"BCC6CAFD"+"0B00000000000000000000000000000000";
Temp1=Temp1.SubString(1,32);

fkqyn();  //用于防止下发数据时发卡器正在扫描卡 
 if(write14data0s2s(Temp,Temp1))
  {
/////////////////////---------------------------------------------------
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
  }

    if (!USB_DevClose())
         Caption = "关闭串口失败";
Button15->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button20Click(TObject *Sender)
{
Button20->Enabled=false;
String Temp;

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        Button20->Enabled=true; //
        return;
        }

Temp="6D69666172650A737973707764258369";
Temp="6D69666172650A737973707764147369";
fkqyn();  //用于防止下发数据时发卡器正在扫描卡 
    write14data0s(Temp);
    
    if (!USB_DevClose())
         Caption = "关闭串口失败";
Button20->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::StringGrid1SelectCell(TObject *Sender, int ACol,
      int ARow, bool &CanSelect)
{
String ins,elevatorname,addr,note,no,bindcardyn,yxqyn,fangqianfan,floorselects;
String  keydelay,subbcountyn,Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,zhunji,jbusyn,addrguanlian;
String hht,sst,hh,gonggongceng,faddr1,faddr2,faddr3,faddr4,zjsd_enyn;
int hhint;
TDateTime TM;
sButton7->Enabled=true; 
sButton8->Enabled=true; //修改开
sButton9->Enabled=true; //删除开
sButton10->Enabled=false; //保存关
Edit12->ReadOnly=true; //编号写关
no="";
elevatorname="";
addr="";
note="";

int id;
  id=ARow;
          CanSelect=true;
          no=StringGrid1->Cells[0][id];
          if(no==""){
          buttonenableyn();
    //      sButton7->Enabled = false;
          sButton8->Enabled = false;
          sButton9->Enabled = false;
          sButton10->Enabled = false;
          sButton18->Enabled = false;
             return;
          }
          Edit12->Text=no;
          if(no=="0")
          {
          sCheckBox2->Checked=false;
          sCheckBox2->Enabled=false;
          }
          else
          {
           sCheckBox2->Enabled=true;
          }
   ins="select * from elevatorinfo where [no]=";
   ins+=StrToInt(Edit12->Text);
 //  ins+="'";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {

  no=tcon->adoquery->FieldByName("no")->AsString.Trim();
 elevatorname=tcon->adoquery->FieldByName("elevatorname")->AsString.Trim();
 addr=tcon->adoquery->FieldByName("addr")->AsString.Trim();
 keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
 note=tcon->adoquery->FieldByName("note")->AsString.Trim();
 subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
 zjsd_enyn=tcon->adoquery->FieldByName("zjsd_enyn")->AsString.Trim();
 bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
 yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
 fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

     Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );
 floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);
 jbusyn=tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
 gonggongceng=tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  if(gonggongceng=="")
     gonggongceng="0";
 addrguanlian=tcon->adoquery->FieldByName("addrguanlian")->AsString.Trim();
  if(addrguanlian=="")
     addrguanlian="0";

 faddr1=tcon->adoquery->FieldByName("faddr1")->AsString.Trim();
 faddr2=tcon->adoquery->FieldByName("faddr2")->AsString.Trim();
 faddr3=tcon->adoquery->FieldByName("faddr3")->AsString.Trim();
 faddr4=tcon->adoquery->FieldByName("faddr4")->AsString.Trim();
        }
sEdit19->Text =  faddr1;
sEdit20->Text =  faddr2;
sEdit21->Text =  faddr3;
sEdit22->Text =  faddr4;

 displayopencard(floorselects);

 ///////////////////////////////////////////////////////////////////
   for(int j=0;j<ListView3->Items->Count;j++)
	   {
		 if(ListView3->Items->Item[j]->SubItems->Strings[1]=="JBUS")
		   {
                     if(jbusyn=="1")
                       Form1->ListView3->Items->Item[j]->Checked=true;
                     else
                       Form1->ListView3->Items->Item[j]->Checked=false;
                   }
           }
///////////////////////////////////////////////////////////////////
Edit12->Text = no;
Edit13->Text = elevatorname;
Edit14->Text = addr;

if(keydelay=="")
keydelay="02";
ComboBox9->Text= keydelay;
if(fangqianfan=="")
fangqianfan="无";
ComboBox2->Text=fangqianfan;

Memo1->Text = note;

/*
if(addrguanlian=="1"){
     sCheckBox53->Checked=true;
     sButton66->Visible=false;
     sLabel5->Visible=false;
     }
     else {
     sCheckBox53->Checked=false;
     if(sCheckBox44->Checked==true)
       {
        sButton66->Visible=true;
        sLabel5->Visible=true;
       }
     }
*/

if(subbcountyn=="1")
     sCheckBox3->Checked=true;
     else
     sCheckBox3->Checked=false;

if(zjsd_enyn=="1")
     sCheckBox72->Checked=true;
     else
     sCheckBox72->Checked=false;

if(bindcardyn=="1")
     sCheckBox2->Checked=true;
     else
     sCheckBox2->Checked=false;

if(yxqyn=="1")
     sCheckBox26->Checked=true;
     else
     sCheckBox26->Checked=false;

if(cn8==""||cn8=="0") //电梯改动
{
  sButton7->Enabled = false;
  sButton8->Enabled = false;
  sButton9->Enabled = false;
  sButton10->Enabled = false;
}
if(cn1==""||cn1=="0")  //电梯设置卡
{
  sButton18->Enabled=false;
  }
else    {
  sButton18->Enabled = true;
  }
////////////////////////////////////////////////////////////
  sCheckBox45->Checked=false;  //公共层 1
  sCheckBox46->Checked=false;  //公共层 2
  sCheckBox47->Checked=false;  //公共层 3
  sCheckBox48->Checked=false;  //公共层 4
  sCheckBox49->Checked=false;  //公共层 5
  sCheckBox50->Checked=false;  //公共层 6
  sCheckBox51->Checked=false;  //公共层 7
  sCheckBox52->Checked=false;  //公共层 8

zhunji=gonggongceng&"0x1";
if(zhunji=="1")
  {
  sCheckBox45->Checked=true;  //公共层 1
  }
zhunji=gonggongceng&"0x2";
if(zhunji=="2")
  {
  sCheckBox46->Checked=true;  //公共层 2
  }
zhunji=gonggongceng&"0x4";
if(zhunji=="4")
  {
  sCheckBox47->Checked=true;  //公共层 3
  }
zhunji=gonggongceng&"0x8";
if(zhunji=="8")
  {
  sCheckBox48->Checked=true;  //公共层 4
  }
zhunji=gonggongceng&"0x10";
if(zhunji=="16")
  {
  sCheckBox49->Checked=true;  //公共层 5
  }
zhunji=gonggongceng&"0x20";
if(zhunji=="32")
  {
  sCheckBox50->Checked=true;  //公共层 6
  }
zhunji=gonggongceng&"0x40";
if(zhunji=="64")
  {
  sCheckBox51->Checked=true;  //公共层 7
  }
zhunji=gonggongceng&"0x80";
if(zhunji=="128")
  {
  sCheckBox52->Checked=true;  //公共层 8
  }

////////////////////////////////////////////////////////////
  sCheckBox43->Checked=false;  //是否启用时段
  sCheckBox36->Checked=false;  //周一
  sCheckBox37->Checked=false;  //周二
  sCheckBox38->Checked=false;  //周三
  sCheckBox39->Checked=false;  //周四
  sCheckBox40->Checked=false;  //周五
  sCheckBox41->Checked=false;  //周六
  sCheckBox42->Checked=false;  //周日

zhunji=Intotimeyn&"0x1";
if(zhunji=="1")
  {
  sCheckBox43->Checked=true;  //是否启用时段
  }
zhunji=Intotimeyn&"0x2";
if(zhunji=="2")
  {
  sCheckBox36->Checked=true;  //周一
  }
zhunji=Intotimeyn&"0x4";
if(zhunji=="4")
  {
  sCheckBox37->Checked=true;  //周二
  }
zhunji=Intotimeyn&"0x8";
if(zhunji=="8")
  {
  sCheckBox38->Checked=true;  //周三
  }
zhunji=Intotimeyn&"0x10";
if(zhunji=="16")
  {
  sCheckBox39->Checked=true;  //周四
  }
zhunji=Intotimeyn&"0x20";
if(zhunji=="32")
  {
  sCheckBox40->Checked=true;  //周五
  }
zhunji=Intotimeyn&"0x40";
if(zhunji=="64")
  {
  sCheckBox41->Checked=true;  //周六
  }
zhunji=Intotimeyn&"0x80";
if(zhunji=="128")
  {
  sCheckBox42->Checked=true;  //周日
  }

hht=Intotime1;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker7->Time=TM;

hht=Intotime2;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker8->Time=TM;

hht=Intotime3;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker9->Time=TM;

hht=Intotime4;
if(StrToIntYN(hht))
hhint=("0x"+("00"+hht))^00;
          else
            hhint=0;
          hht=IntToStr(hhint);
          hh=hht&"31";
sst=hht&"224";
sst=sst>>5;
sst=sst+"0";

  TM =StrToTime(hh+":"+sst+":30");
  DateTimePicker10->Time=TM;

buttonenableyn();
sButton10->Enabled = false;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N5Click(TObject *Sender)
{

///////////////////////////////////////////////////电梯处理
shebeifresh();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sEdit1Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
  if(sEdit1->Text!=""){
    if(StrToInt(sEdit1->Text)>65535){
       Application->MessageBoxA("编号不能大于65535!!","注意",MB_OK);
       sEdit1->Text="";
       }
    }
    else
    {
    sButton54->Enabled=false; //计算次数开
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit2Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit41Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit6Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit7Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker1Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

































void __fastcall TForm1::CheckBox10Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;

if(CheckBox10->Checked==true)
 {
  StaticText4->Visible=true;
  sEdit11->Visible=true;
  sButton54->Visible=true;
 }
 else
 {
  StaticText4->Visible=false;
  sEdit11->Visible=false;
  sButton54->Visible=false;
 }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::N6Click(TObject *Sender)
{
 try
         {
         Form5=new TForm5(Application);
         Form5->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form5;
           Application->ShowException(&exception);
           }            
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sComboBox1Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sEdit1KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;


}
//---------------------------------------------------------------------------



void __fastcall TForm1::sButton5Click(TObject *Sender)
{
 try
         {
         Form8=new TForm8(Application);    
         Form8->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form8;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N7Click(TObject *Sender)
{
String ins,floorname,floorno,no;
int n;
ListView2->Items->Clear();
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
	 ListView2->Items->Add();
         n=ListView2->Items->Count;
	// m=ListView1->Items->Count;
  //	if(StrToIntYN(no))
  //	  m=StrToInt(no);
  //	  else
  //	    break;
      	 ListView2->Items->Item[n-1]->Caption=floorname;
	 ListView2->Items->Item[n-1]->SubItems->Add(floorno);
	 ListView2->Items->Item[n-1]->SubItems->Add(floorno);
     ////////////////////////////////////////////////////////////////////
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton11Click(TObject *Sender)
{
String qstr,cbs;
String aa,jmshanqu0007,jmshanqu0815,aa1;;

cbs=sComboBox2->Text;
if(cbs=="15")
   {
   Application->MessageBoxA("扇区号不可大于14 !!","错误",MB_OK);
   return;
   }


sLabel2->Caption="当前扇区为"+IntToStr(StrToInt(cbs)-1)+"  "+cbs+"  "+IntToStr(StrToInt(cbs)+1+"           ");
qstr="update other set sector='";
    qstr+=cbs;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();




aa="00";

     if(cbs=="01")
       aa=aa|"0x02";
     if(cbs=="02")
       aa=aa|"0x04";
     if(cbs=="03")
       aa=aa|"0x08";
     if(cbs=="04")
       aa=aa|"0x10";
     if(cbs=="05")
       aa=aa|"0x20";
     if(cbs=="06")
       aa=aa|"0x40";
     if(cbs=="07")
       aa=aa|"0x80";
     jmshanqu0007=aa;

aa="00";
     if(cbs=="08")
       aa=aa|"0x01";
     if(cbs=="09")
       aa=aa|"0x02";
     if(cbs=="10")
       aa=aa|"0x04";
     if(cbs=="11")
       aa=aa|"0x08";
     if(cbs=="12")
       aa=aa|"0x10";
     if(cbs=="13")
       aa=aa|"0x20";
     if(cbs=="14")
       aa=aa|"0x40";
     if(cbs=="15")
       aa=aa|"0x80";
     jmshanqu0815=aa;

     cbs="00"+IntToStr(StrToInt(cbs)-1);
     cbs=cbs.SubString(cbs.Length()-1,2 );

aa="00";

     if(cbs=="01")
       aa=aa|"0x02";
     if(cbs=="02")
       aa=aa|"0x04";
     if(cbs=="03")
       aa=aa|"0x08";
     if(cbs=="04")
       aa=aa|"0x10";
     if(cbs=="05")
       aa=aa|"0x20";
     if(cbs=="06")
       aa=aa|"0x40";
     if(cbs=="07")
       aa=aa|"0x80";
     jmshanqu0007=jmshanqu0007|aa;

aa="00";
     if(cbs=="08")
       aa=aa|"0x01";
     if(cbs=="09")
       aa=aa|"0x02";
     if(cbs=="10")
       aa=aa|"0x04";
     if(cbs=="11")
       aa=aa|"0x08";
     if(cbs=="12")
       aa=aa|"0x10";
     if(cbs=="13")
       aa=aa|"0x20";
     if(cbs=="14")
       aa=aa|"0x40";
     if(cbs=="15")
       aa=aa|"0x80";
     jmshanqu0815=jmshanqu0815|aa;

     cbs="00"+IntToStr(StrToInt(cbs)+2);
     cbs=cbs.SubString(cbs.Length()-1,2 );

aa="00";

     if(cbs=="01")
       aa=aa|"0x02";
     if(cbs=="02")
       aa=aa|"0x04";
     if(cbs=="03")
       aa=aa|"0x08";
     if(cbs=="04")
       aa=aa|"0x10";
     if(cbs=="05")
       aa=aa|"0x20";
     if(cbs=="06")
       aa=aa|"0x40";
     if(cbs=="07")
       aa=aa|"0x80";
     jmshanqu0007=jmshanqu0007|aa;

aa="00";
     if(cbs=="08")
       aa=aa|"0x01";
     if(cbs=="09")
       aa=aa|"0x02";
     if(cbs=="10")
       aa=aa|"0x04";
     if(cbs=="11")
       aa=aa|"0x08";
     if(cbs=="12")
       aa=aa|"0x10";
     if(cbs=="13")
       aa=aa|"0x20";
     if(cbs=="14")
       aa=aa|"0x40";
     if(cbs=="15")
       aa=aa|"0x80";
     jmshanqu0815=jmshanqu0815|aa;

     jmshanqu0007=jmshanqu0007|"0x01";  ///0扇区都加密

if(sCheckBox54->Checked==true)
  {
  jmshanqu0007="255";
  jmshanqu0815="255";
  }

qstr="update other set jmshanqu0007='";
    qstr+=jmshanqu0007;
    qstr+="',jmshanqu0815='";
    qstr+=jmshanqu0815;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();

aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox55->Checked=true;
   else
     sCheckBox55->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox56->Checked=true;
   else
     sCheckBox56->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox57->Checked=true;
   else
     sCheckBox57->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox58->Checked=true;
   else
     sCheckBox58->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox59->Checked=true;
   else
     sCheckBox59->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox60->Checked=true;
   else
     sCheckBox60->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox61->Checked=true;
   else
     sCheckBox61->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox62->Checked=true;
   else
     sCheckBox62->Checked=false;


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox63->Checked=true;
   else
     sCheckBox63->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox64->Checked=true;
   else
     sCheckBox64->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox65->Checked=true;
   else
     sCheckBox65->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox66->Checked=true;
   else
     sCheckBox66->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox67->Checked=true;
   else
     sCheckBox67->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox68->Checked=true;
   else
     sCheckBox68->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox69->Checked=true;
   else
     sCheckBox69->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox70->Checked=true;
   else
     sCheckBox70->Checked=false;

    Application->MessageBoxA("写入成功！!!","恭喜",MB_OK);
}
//---------------------------------------------------------------------------




void __fastcall TForm1::sButton14Click(TObject *Sender)
{
String fkqid;
sButton14->Enabled=false; //
sEdit3->Text="";
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton14->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(16, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
       sEdit3->Text=fkqid;
   }


 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 sButton14->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton15Click(TObject *Sender)
{
String qstr;
sButton15->Enabled=false; //
if(sEdit3->Text.Length()!=6)  {
    Application->MessageBoxA("请输入6位密码!!","信息",MB_OK);
    sButton15->Enabled=true; //
    return;
    }
qstr="update other set conpwd='";
    qstr+=sEdit3->Text;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    conpwd=sEdit3->Text;
    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);
if(sEdit3->Text=="147369")
 sButton41->Caption="加载发卡器";

 sButton15->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton20Click(TObject *Sender)
{
String Temp,ins,ss2,Temp1,ss3;
sButton20->Enabled=false; //
if(MessageDlg("用于刷其它设置卡时先刷此卡",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{

 try
         {
         Form10=new TForm10(Application);
         Form10->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form10;
           Application->ShowException(&exception);
           }
 if(useyouxiaoqi=="ff")
   {
   sButton20->Enabled=true; //
        return;
   }

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton20->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
/*
ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */

   ss2="0"+IntToStr(firstsector);
   ss2=ss2.SubString(ss2.Length()-1,2);
if(countselect==1)
    ss3="02";
   else
    ss3="00";

Temp="6D696661726507147369"+conpwd+ss2+ss3+"53";    //"02"  acc.1 为1时是处理次数，0为不处理
//Temp1=useyouxiaoqi+"0000000000000000000000000000";

String sHex = IntToHex(StrToInt64(useyouxiaoqi),8);
useyouxiaoqi = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);

Temp1=useyouxiaoqi+"BCC6CAFD"+"0700000000000000000000000000000000";
Temp1=Temp1.SubString(1,32);

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton20->Enabled=true; //
    return;
}

//  if (write14data0s(Temp))
// if (write14data0s1s(Temp,Temp1))
 if(write14data0s2s(Temp,Temp1))
  {
/////////////////////---------------------------------------------------
    bool result = USB_BeepExA(3);
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);

  }

 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
FrmBar->PBarClose();
}
 sButton20->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton22Click(TObject *Sender)
{
String Temp,ins,fkqid;
sButton22->Enabled=false; //
if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton22->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡 
       fkqid=sEdit3->Text+"FFFFFF";
       fkqid = fkqid.SubString(1,6);
       fkqid = fkqid+"00000000000000000000000000";

char Data[32] = {0};
        sprintf(Data, "%s", fkqid);
   bool result = USB_Write(16, 0,Data);
   if (result)
       {
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
       }

 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
}
 sButton22->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton24Click(TObject *Sender)
{
String ins;
sEdit3->Text="";
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
   sEdit3->Text= conpwd;
 //  conpwd=dxor(conpwd);
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N8Click(TObject *Sender)
{
N8->Enabled=false;
String Temp,Temp1,p,dt,p1,ins,selectin,usecount,ucs1,nok,cardaddr,EndTime,a,UserCID,yxqyn;
String cardaddr1,cardaddr2,cardaddr3,carduse,countyn,usecountyn,elevatoraddr,tempxor,useyxqyn;
String userlimtype,userlim1,userlim2,userlim3,userlim4,sdate,jbusyn,cardinpwd,ta,tb,tc,td;
int  ln,n,d,t,ucs,ccount;
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);

nok=sEdit1->Text;
if(sEdit1->Text =="")
  {
  Application->MessageBoxA("请选择用户!!","问题",MB_OK);
  sButton4->Enabled=true;
  return;
  }
//nok1=Edit23->Text;
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        N8->Enabled=true; //
        return;
        }
///-----------------------------------------------------------------------------------------
char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardinpwd=cardidpwdpocw(Datas);
        tb="0x"+cardinpwd.SubString(1,2).Trim();
        ta="0x"+cardinpwd.SubString(3,2).Trim();
        tc=tb^ta;

        td=IntToHex(StrToInt(tc),2);

        tb="0x"+cardinpwd.SubString(5,2).Trim();
        ta="0x"+cardinpwd.SubString(7,2).Trim();
        tc=tb^ta;
        tc=IntToHex(StrToInt(tc),2);
        td=td+tc;

        tb="0x"+cardinpwd.SubString(9,2).Trim();
        ta="0x"+cardinpwd.SubString(11,2).Trim();
        tc=tb^ta;
        tc=IntToHex(StrToInt(tc),2);
        td=td+tc;
        cardinpwd=td;

    }
    else
    {
    Form1->Caption = "请在发卡器上放卡片";
        sButton26->Enabled=true; //
        return;
    }
if(nok!="")
{
////////////////////////////////////////////////////////////////////////////////////////////
/*
   ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */
///////////////////////////////////////////////////////////////////////////////////////////////
 ins="select * from userinfo where [no]=";
 ins+=nok;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
         if(tcon->adoquery->RecordCount!=0)
         {
         selectin=tcon->adoquery->FieldByName("selectin")->AsString.Trim()+"0000000000000000";
         selectin=selectin.SubString(1,16);
         usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim();
//         cardaddr="ff"+tcon->adoquery->FieldByName("cardaddr")->AsString.Trim();
//         cardaddr=cardaddr.SubString(cardaddr.Length()-1,2 );
//         cardaddr1="ff"+tcon->adoquery->FieldByName("cardaddr1")->AsString.Trim();
//         cardaddr1=cardaddr1.SubString(cardaddr1.Length()-1,2 );
//         cardaddr2="ff"+tcon->adoquery->FieldByName("cardaddr2")->AsString.Trim();
//         cardaddr2=cardaddr2.SubString(cardaddr2.Length()-1,2 );
//         cardaddr3="ff"+tcon->adoquery->FieldByName("cardaddr3")->AsString.Trim();
//         cardaddr3=cardaddr3.SubString(cardaddr3.Length()-1,2 );
         elevatoraddr=tcon->adoquery->FieldByName("elevatoraddr")->AsString.Trim();
         usecount=tcon->adoquery->FieldByName("usecount")->AsString.Trim()+"00000000";
         usecount=usecount.SubString(1,8 );
         usecountyn=tcon->adoquery->FieldByName("usecountyn")->AsString.Trim();
         useyxqyn=tcon->adoquery->FieldByName("useyxqyn")->AsString.Trim();
         EndTime=tcon->adoquery->FieldByName("EndTime")->AsString.Trim();
         UserCID=tcon->adoquery->FieldByName("UserCID")->AsString.Trim();
         carduse=tcon->adoquery->FieldByName("carduse")->AsString.Trim();
         bindcon=tcon->adoquery->FieldByName("bindcon")->AsString.Trim();
         }
         else
         {
         Application->MessageBoxA( "数据库中没有这个编号!!","问题",MB_OK);
         N8->Enabled=true; //
         return;
         }
    if(UserCID=="")
        UserCID="0";
    UserCID=UserCID+"0000";
    UserCID=UserCID.SubString(1,4);
    if(usecount=="")
        usecount="0";
//ucs=65535-StrToInt(usecount);
//ucs1=IntToHex(ucs,4);
     /*
      a=EndTime.SubString(7,1).Trim();
    if((a=="-")||(a=="/"))
      EndTime=EndTime.Insert("0",6);
    if(EndTime.Length()!=10)
      a=EndTime.Insert("0",9);
    else
      a=EndTime;
      */
      a=timepoc(EndTime);
      EndTime=a.SubString(3,2);
      EndTime=EndTime+a.SubString(6,2);
      EndTime=EndTime+a.SubString(9,2)+"000000";
      EndTime=EndTime.SubString(1,6);

   if(usecountyn=="1")  
      countyn="1";
   else {
      countyn="0";
      usecount="00000000";
      }

      if(useyxqyn=="1")
      yxqyn="1";
   else {
      yxqyn="0";
      }


// if(carduse=="1")
// {

///*************************************************USB发卡器用
  Temp=EndTime+conpwd+UserCID+yxqyn+countyn;
  Temp1=xorcard(Temp);
  Temp=EndTime+conpwd;
  Temp=datapack(Temp);
  tempxor=Temp1.SubString(Temp1.Length()-3,4);
  tempxor=datapack(tempxor);
  ta=tempxor+"0001"+cardinpwd;
  tb=xordata(ta);
  Temp=Temp+UserCID+yxqyn+countyn+tempxor+tb+"01"+cardinpwd;
  if(jbusyn!="1")
  jbusyn="0";
  Temp1="00000000000000000000000000000100";
  
  usecount=usecount+"BCC6CAFD"+"00000000000000000000000000000000";
  usecount=usecount.SubString(1,32);

  elevatoraddr=elevatoraddr.SubString(1,92)+UserCID;

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
N8->Enabled=true; //
    return;
}
/*
 // Temp=datapack(Temp);
  if(bindsoft=="1"){
if(write11addr())
if(write12addr())
if(!write13addr(bindcon))
   if (!USB_DevClose())
         Caption = "关闭串口失败";

    N8->Enabled=true; //
    return;
 }
 */
String ljh13s="00000000000000000000000000000000";
 if(write13s0(ljh13s))
  if(write13s1s2to0())
  if(write14data(Temp,Temp1,usecount))
   if(write15addr(elevatoraddr))
   {
    bool result = USB_BeepExA(3);
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
   }
}
//}
if (!USB_DevClose())
         Caption = "关闭串口失败";

N8->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N9Click(TObject *Sender)
{
N9->Enabled=false;
String Temp,Temp1,ds,select,pa,ts,dz,readcarddata,readcarddataid,dt,readcarddata1,readcarddata2;

String ins,no,name,endtime,ps,t,d,t1,readstr,s1,s2,s3,s3a,s4,s5,s6,s7,dtime,a1,a2,a3,a4,a5,usecount,usecountyn;

String yy,mm,dd,hh,mi,ss,cardpwd,qstr;
int  ln,n,m,bf;
int p=0,p1,k=0,di;

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        N9->Enabled=true; //
        return;
        }

Form7->Memo1->Clear();
Timer1->Enabled=false;

sEdit1->Text = "";
sEdit2->Text = "";
//Edit11->Text = "";
sComboBox1->Text = "";
//Edit3->Text = "";
//Edit4->Text = "";
//Edit5->Text = "";
//Edit10->Text = "";
StaticText1->Caption="";
//Edit8->Text = "";
//Edit9->Text = "";
sEdit9->Text = "";
sEdit11->Text = "";
//ComboBox2->Text = "";
//ComboBox3->Text = "";
//ComboBox4->Text = "";
//ComboBox5->Text = "";
//Edit23->Text = "";
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=false;
for(int j=0;j<ListView1->Items->Count;j++)
        ListView1->Items->Item[j]->Checked=false;

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
N9->Enabled=true; //
    return;
}





    char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(firstsector, 0,Data);
   if (result)
   {
       readcarddata = String(Data).SubString(1,32);
        s1=readcarddata.SubString(25,2);
       readstr= readcarddata.SubString(1,12);
       if(readstr!="6D6966617265"){
         if(s1=="01")
         {
   bool result = USB_Read(firstsector, 1,Data);
   if (result)
   {
       readcarddata = String(Data).SubString(1,32);
       qstr="update other set testcarddata='";
    qstr+=readcarddata;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();





   Form7->Memo1->Lines->Add("测试卡返回的数据为：");

    s2="0x01";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="1")
     Form7->Memo1->Lines->Add("此卡与控制器不匹配");

     s2="0x02";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="2")
     Form7->Memo1->Lines->Add("此卡与控制器地址不同");

     s2="0x04";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="4")
     Form7->Memo1->Lines->Add("此卡有效期已过");

     s2="0x08";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="8")
     Form7->Memo1->Lines->Add("此卡已被挂失");

     s2="0x10";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="16")
     Form7->Memo1->Lines->Add("此控制器被已锁住");

     s2="0x20";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="32")
     Form7->Memo1->Lines->Add("卡片次数已为0");



     s2="0x80";
    s1="0x"+readcarddata.SubString(31,2);
    s3=s1&s2;
    if(s3=="128")
     Form7->Memo1->Lines->Add("读卡器没有和控制器通讯上");


     s2="0x01";
    s1="0x"+readcarddata.SubString(29,2);
    s3=s1&s2;
    if(s3=="1")
     Form7->Memo1->Lines->Add("测试卡没有刷过读卡器");

     s2="0x02";
    s1="0x"+readcarddata.SubString(29,2);
    s3=s1&s2;
    if(s3=="2")
     Form7->Memo1->Lines->Add("读卡器被锁住");


     ds=readcarddata.SubString(7,12);
     yy=ds.SubString(11,2);
     mm=ds.SubString(9,2);
     dd=ds.SubString(7,2);
     hh=ds.SubString(5,2);
     mi=ds.SubString(3,2);
     ss=ds.SubString(1,2);

    Form7->Memo1->Lines->Add("所测试的控制器时间为："+yy+"年 "+mm+"月 "+dd+"日 "+hh+"时 "+mi+"分 "+ss+"秒 ");

    s1=readcarddata.SubString(19,2);
    s2=readcarddata.SubString(21,2);
    s3=readcarddata.SubString(1,6);
/////////////////////////////
qstr="select * from other where conpwd='";
qstr+=s3;
qstr+="'";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount==0)
{
    Form7->Memo1->Lines->Add("当前软件不可以对所测试的控制器进行发卡");
}
/////////////////////////////
          if(s2=="01")
             s2="01";
          else if(s2=="02")
                  s2="02";
               else if(s2=="04")
                       s2="03";
                     else if(s2=="08")
                          s2="04";
                          else if(s2=="10")
                               s2="05";
                               else if(s2=="20")
                                    s2="06";
                                    else if(s2=="40")
                                         s2="07";
                                         else if(s2=="80")
                                              s2="08";
                                              else
                                              s2="00";
          if(PStrToIntYN(s1))
          {
            bf=StrToInt(s1)*8;
            s1=bf+StrToInt(s2);
        Form7->Memo1->Lines->Add("所测试的控制器地址为:  "+s1);
          }
          else
          {
          Form7->Memo1->Lines->Add("所测试的控制器地址为:  没有设置");
          }

        s1=readcarddata.SubString(23,2);

        s2="0x01";
    s1="0x"+readcarddata.SubString(23,2);
    s3=s1&s2;
    s3=s3^s2;
    if(s3=="1")
     Form7->Memo1->Lines->Add("此控制器不参与减次数");
    else
     Form7->Memo1->Lines->Add("此控制器参与减次数");

     s2="0x04";
    s1="0x"+readcarddata.SubString(23,2);
    s3=s1&s2;
    s3=s3^s2;
    if(s3=="4")
     Form7->Memo1->Lines->Add("此控制器不处理有效期");
    else
     Form7->Memo1->Lines->Add("此控制器处理有效期");

    }
    else
    Caption = "读失败";
    }
     else
     Form7->Memo1->Lines->Add("此卡不是测试卡");
  }
  else
     Form7->Memo1->Lines->Add("此卡不是测试卡");
   }
   else
     Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Caption = "验证失败";


    }
    else
    	Caption = "寻卡失败";
USB_BeepExA(3);
   try
         {
  //       Form7=new TForm8(Application);


         }
           catch(Exception &exception)
           {
           delete Form7;
           Application->ShowException(&exception);
           }
readret:
if(sEdit1->Text=="")
    sButton26->Enabled=false; //发卡关
else
    sButton26->Enabled=true; //发卡开

if (!USB_DevClose())
         Caption = "关闭串口失败";

Form7->ShowModal();
N9->Enabled=true; //读卡开
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton21Click(TObject *Sender)
{
String inc,qstr;
/////////////////////////////////////////////////////////////////////////////
String COM,sreg;
if(ComboBox1->Text =="")
{
TRegistry* Reg=new TRegistry;
try
{
    Reg->RootKey=HKEY_LOCAL_MACHINE;
    if(Reg->OpenKey("HARDWARE\\DEVICEMAP\\SERIALCOMM",False)!=False)
    {
    sreg="\\Device\\slabser0";
    COM = Reg->ReadString(sreg);

     COM=COM.SubString(COM.Length(),1);
     ComboBox1->Text =COM;
     /*
    if(COM!="")
    {
     bool result = USB_DevInit(StrToInt(COM));
     if (result)
        sButton21->Caption = "关闭串口";
     else
    	Caption = "打开串口失败";
    }
    else
     Caption = "打开串口失败";
     */
    }


}
__finally
{
Reg->CloseKey();
delete Reg;
}
}
/////////////////////////////////////////////////////////////////////////
 //  inc=Form17->Edit1->Text;
inc="select * from USAdmin where OpName='";
inc+=Form3->sComboBox1->Text.Trim();
inc+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(inc);
try
{
tcon->adoquery->Open();
}
catch(...)
{
  Application->MessageBoxA("数据库错误!!","Error",MB_OK);
  exit(0);
}

cn1=tcon->adoquery->FieldByName("cn1")->AsString.Trim();
cn2=tcon->adoquery->FieldByName("cn2")->AsString.Trim();
cn3=tcon->adoquery->FieldByName("cn3")->AsString.Trim();
cn4=tcon->adoquery->FieldByName("cn4")->AsString.Trim();
cn5=tcon->adoquery->FieldByName("cn5")->AsString.Trim();
cn6=tcon->adoquery->FieldByName("cn6")->AsString.Trim();
cn7=tcon->adoquery->FieldByName("cn7")->AsString.Trim();
cn8=tcon->adoquery->FieldByName("cn8")->AsString.Trim();
cn9=tcon->adoquery->FieldByName("cn9")->AsString.Trim();
cn10=tcon->adoquery->FieldByName("cn10")->AsString.Trim();
cn11=tcon->adoquery->FieldByName("cn11")->AsString.Trim();
tcon->adoquery->Close();
////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
buttonenableyn();
/////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////
String scom=Form1->ComboBox1->Text;
 if(scom=="")
     {
    scom=comtest();
   }
   else
   {
   bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
     scom=comtest();
     }
   }

//USB_DevClose();
//FrmBar->PBarClose();
//tishiyn=1; //是否出到提示，1为是
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton21->Enabled=true; //
        return ;
        }
if(!fkqynstart())
{
///-----------------
  cn1="0";  //电梯设置卡
  sButton18->Enabled=false; //电梯设置卡
  cn2="0";  //时间卡
  sButton16->Enabled = false;    //时间卡
  cn3="0";  //修改电梯密码
  sButton19->Enabled = false;  //修改电梯密码
  sButton20->Enabled = false;  //同步卡
  sButton25->Enabled = false;  //同步卡
  cn4="0";  //挂失卡
  sButton23->Enabled = false;   //挂失卡
  cn6="0";  //用户发卡
  sButton26->Enabled = false;  //用户发卡
  cn9="0";//恢复所有挂失
  sButton30->Enabled = false;  //恢复所有挂失
  cn10="0";     //开放电梯
  sButton13->Enabled = false;   //开放电梯
  sButton39->Enabled = false;   //开放设置
///-----------------
}
else
{
bool result = USB_BeepExA(3);
Application->MessageBoxA("发卡器连接成功!!","恭喜",MB_OK);
}
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::StaticText2Click(TObject *Sender)
{
if(MessageDlg("是否清零？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
StaticText2->Caption="0";
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton25Click(TObject *Sender)
{
String Temp,ins,sector,yanzhengdata,read0syn,funs1,data;
sButton25->Enabled=false; //
unsigned char returnSign;   //写入 反正标记
unsigned char newData1[7]={0xaa,0x01,0x01,0x01,0x02,0x01,0xff};           //数据存放数组

if(MessageDlg("此卡仅用于出厂控制器，仅刷一次，刷后与软件匹配不可更改",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
  if(CurrentDevice == NULL) {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton25->Enabled=true; //
        return;
        }
    }
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
sButton25->Enabled=true; //
        return;
}
      
////-------------------

if(inipwdpoc=="1")
   {
     FrmBar->PBarOpen(15);
     quanjiamipoc();
     FrmBar->PBarClose();
   }
//     jiamityn14();
///---------------------
ins="select sector,userCID from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   sector="FF"+tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sector=sector.SubString(sector.Length()-1,2);
   userCID123="FFFFFF"+tcon1->adoquery->FieldByName("userCID")->AsString.Trim();
   userCID123=userCID123.SubString(userCID123.Length()-5,6);
   }

   read0syn="0";
if(card0spoc==0)//是否把0扇区写死  1为是
       read0syn=read0syn|"0x1"; // 读为1

if(card0sguanlian==1)  ///全部卡号关联处理  1为是
       read0syn=read0syn|"0x2"; // 关联1


if(mangguoka==1)  ///防超级UID
       read0syn=read0syn|"0x4"; // 关联1


funs1="0";
if(functionfig=="01"){           //功能1
  //     funs1=funs1|"0x1";   //是否自动选层
       funs1=funs1|"0x2";   //继电器动作
       funs1=funs1|"0x4";   //JBUS动作
  //     funs1=funs1|"0x8";   //开放卡只控制JBUS
}

if(functionfig=="02"){           //功能1
  //     funs1=funs1|"0x1";   //是否自动选层
  //     funs1=funs1|"0x2";   //继电器动作
       funs1=funs1|"0x4";   //JBUS动作
       funs1=funs1|"0x8";   //开放卡只控制JBUS       
}

if(functionfig=="03"){           //功能1
       funs1=funs1|"0x1";   //是否自动选层
  //     funs1=funs1|"0x2";   //继电器动作
       funs1=funs1|"0x4";   //JBUS动作
  //     funs1=funs1|"0x8";   //开放卡只控制JBUS
}

funs1=IntToHex(StrToInt(funs1),1);

Temp="6D696661726511"+userCID123+conpwd+sector+funs1+read0syn+functionfig;

yanzhengdata="38147369147369000000000000000000";
   if(CurrentDevice == NULL) {
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton25->Enabled=true; //
    return;
}

char Data[32] = {0};
        sprintf(Data, "%s", yanzhengdata);
   bool result = USB_Write(22, 0,Data);
   if (result)
       {
       Form1->Caption = "验证成功！!!";
        sprintf(Data, "%s", Temp);
    result = USB_Write(14, 0,Data);
   if (result)
          {
       bool result = USB_BeepExA(3);
       Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
          }
         else
       if (onlywrite14data0s(Temp)){
            bool result = USB_BeepExA(3);
            Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
            }
       }
    else
      if (onlywrite14data0s(Temp)){
            bool result = USB_BeepExA(3);
            Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
            }


 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
FrmBar->PBarClose();
    } else {       //hid USB  设置出厂卡
     erase(0x02); // 擦除
     Temp=userCID123+conpwd;
    data = "ABC011"+Temp;
    returnSign = DataWrite(newData1,data);
     if (returnSign != 0x00){Application->MessageBoxA("数据发送返回失败!!","问题",MB_OK);}
               else{ Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);}
    }
}
 sButton25->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton32Click(TObject *Sender)
{
String ins,testcarddata;
sEdit3->Text="";
ins="select testcarddata from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   testcarddata=tcon1->adoquery->FieldByName("testcarddata")->AsString.Trim();

   testcarddata=testcarddata.SubString(1,6);
   sEdit3->Text= testcarddata;
 //  conpwd=dxor(conpwd);
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton35Click(TObject *Sender)
{
String sector;
sComboBox2->Text="";

String ins,jmshanqu0007,jmshanqu0815,aa,aa1;

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   sector=tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sComboBox2->Text=sector;
   }
//   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox55->Checked=true;
   else
     sCheckBox55->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox56->Checked=true;
   else
     sCheckBox56->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox57->Checked=true;
   else
     sCheckBox57->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox58->Checked=true;
   else
     sCheckBox58->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox59->Checked=true;
   else
     sCheckBox59->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox60->Checked=true;
   else
     sCheckBox60->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox61->Checked=true;
   else
     sCheckBox61->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox62->Checked=true;
   else
     sCheckBox62->Checked=false;


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox63->Checked=true;
   else
     sCheckBox63->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox64->Checked=true;
   else
     sCheckBox64->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox65->Checked=true;
   else
     sCheckBox65->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox66->Checked=true;
   else
     sCheckBox66->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox67->Checked=true;
   else
     sCheckBox67->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox68->Checked=true;
   else
     sCheckBox68->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox69->Checked=true;
   else
     sCheckBox69->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox70->Checked=true;
   else
     sCheckBox70->Checked=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton36Click(TObject *Sender)
{
sButton36->Enabled=false;
String Temp,ins,sector,sector1,dsector;
if(MessageDlg("是否修改读卡扇区？ ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton36->Enabled=true; //
        return;
        }

ins="select sector,sector1 from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   sector="FF"+tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sector=sector.SubString(sector.Length()-1,2);

   sector1="FF"+tcon1->adoquery->FieldByName("sector1")->AsString.Trim();
   sector1=sector1.SubString(sector.Length()-1,2);

   }

   ///*************************************************USB发卡器用
   /*
;扇区14块0主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为06功能选择
;07h   为01功能选择
;08h   为01启动，02为取消
;09h 0ah 0bh 0ch  0dh 0eh 0fh 为无       */
   dsector=sComboBox4->Text;
   dsector=dsector.SubString(dsector.Length()-1,2);
  Temp="6D69666172650C736563746F72"+dsector+sector1+"00";

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton36->Enabled=true; //
    return;
}

    if (write14data0s(Temp))
      Application->MessageBoxA( "写卡成功！!!","信息",MB_OK);

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
sButton36->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit12Change(TObject *Sender)
{
   if(Edit12->Text!="")
    if(StrToInt(Edit12->Text)>368){
       Application->MessageBoxA("编号不能大于368!!","注意",MB_OK);
       Edit12->Text="";
       }        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N10Click(TObject *Sender)
{  String qstr;

if(N10->Caption=="启动时段设置(&Z)") {
    qstr="update other set Allowedtimeyn='1'";

    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    N10->Caption="取消时段设置";
    sGroupBox12->Top=Form1->Height-152;
    sGroupBox12->Left=8;
    sCheckBox35->Top=Form1->Height-152;
//    sGroupBox12->Visible=true;
    if(sCheckBox35->Checked==true)
 {
  sGroupBox12->Visible=true;
 }
 else
 {
  sGroupBox12->Visible=false;
 }
    }
    else{
    qstr="update other set Allowedtimeyn='0'";

    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    N10->Caption="启动时段设置";
//    sGroupBox12->Visible=false;

    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::PopupMenu4Popup(TObject *Sender)
{
 String ins,Allowedtimeyn;
ins="select Allowedtimeyn from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   Allowedtimeyn=tcon1->adoquery->FieldByName("Allowedtimeyn")->AsString.Trim();
   }
   if(Allowedtimeyn=="1"){
    N10->Caption="取消时段设置";
    sGroupBox12->Top=Form1->Height-152;
    sGroupBox12->Left=8;
    sCheckBox35->Top=Form1->Height-152;
 //   sGroupBox12->Visible=true;
    if(sCheckBox35->Checked==true)
 {
  sGroupBox12->Visible=true;
 }
 else
 {
  sGroupBox12->Visible=false;
 }
    }
   else {
    N10->Caption="启动时段设置";
//    sGroupBox12->Visible=false;
    }
}
//---------------------------------------------------------------------------





void __fastcall TForm1::sButton37Click(TObject *Sender)
{
sButton37->Enabled=false;
String Temp,ins,sector,kyouxiaoqi,yxqlimtype;
if(MessageDlg("是否发添加卡？ ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton37->Enabled=true; //
        return;
        }

   ///*************************************************USB发卡器用

   kyouxiaoqi="00"+sEdit8->Text;
   kyouxiaoqi=kyouxiaoqi.SubString(kyouxiaoqi.Length()-1,2);
   
   if(sComboBox6->Text=="日") {
    yxqlimtype="01";
   }
   if(sComboBox6->Text=="月") {
    yxqlimtype="02";
   }
   if(sComboBox6->Text=="年") {
    yxqlimtype="03";
   }

  Temp="6D69666172650D"+conpwd+"616464"+yxqlimtype+kyouxiaoqi+"00";

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton37->Enabled=true; //
    return;
}

    if (write14data0s(Temp))
      Application->MessageBoxA( "写卡成功！!!","信息",MB_OK);

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
sButton37->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton38Click(TObject *Sender)
{
sButton38->Enabled=false;
String Temp,ins,sector,kyouxiaoqi,yxqlimtype;
if(MessageDlg("是否发删除卡？ ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton38->Enabled=true; //
        return;
        }

   ///*************************************************USB发卡器用

  Temp="6D69666172650E"+conpwd+"64656C"+"0000"+"00";

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton38->Enabled=true; //
    return;
}

    if (write14data0s(Temp))
      Application->MessageBoxA( "写卡成功！!!","信息",MB_OK);

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
sButton38->Enabled=true;
}
//---------------------------------------------------------------------------


void __fastcall TForm1::ListView2Change(TObject *Sender, TListItem *Item,
      TItemChange Change)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;    
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton39Click(TObject *Sender)
{
String qstr;
 try
         {
         Form9=new TForm9(Application);
         Form9->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form9;
           Application->ShowException(&exception);
           }
           /*
   tcon->UserSetado->Active =false;
    qstr="update other set [opencardd]='";
//    if(sCheckBox1->Checked==false)
      qstr+=floorselect;
//    else
//      qstr+="FFFFFFFFFFFFFFFF";
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
    floorselect="0";
    */
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N11Click(TObject *Sender)
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
  }
  Strings->SaveToFile(ppd);     delete   Strings;
//Button17->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Excel1Click(TObject *Sender)
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



  for(int n=0;n<StringGrid1->RowCount;n++)
          {


           as =(StringGrid1->Cells[0][n]+",");
           if(StringGrid1->ColCount>1)
           as1=(StringGrid1->Cells[1][n]+",");
           if(StringGrid1->ColCount>2)
           as2=(StringGrid1->Cells[2][n]+",");
           if(StringGrid1->ColCount>3)
           as3=(StringGrid1->Cells[3][n]+",");
           if(StringGrid1->ColCount>4)
           as4=(StringGrid1->Cells[4][n]+",");
           if(StringGrid1->ColCount>5)
           as5=(StringGrid1->Cells[5][n]+",");
           if(StringGrid1->ColCount>6)
           as6=(StringGrid1->Cells[6][n]+", ");
           if(StringGrid1->ColCount>7)
           as7=(StringGrid1->Cells[7][n]+",");
           if(StringGrid1->ColCount>8)
           as8=(StringGrid1->Cells[8][n]+",");
//           if(ListView5->Columns->Count>10)
//           as9=(Item->SubItems->Strings[8]+",");
//           if(ListView5->Columns->Count>11)
//           as10=(Item->SubItems->Strings[9]+",");
          Strings->Add(as+as1+as2+as3+as4+as5+as6+as7+as8+as9+as10);
  }
  Strings->SaveToFile(ppd);     delete   Strings;
//Button17->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton40Click(TObject *Sender)
{
sButton40->Enabled=false;

String cardpwd,readcarddata,redcode,readcode1,readcode2,dtime,s1,s2,redcode1,redcode2,sc,readstr;

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton40->Enabled=true; //
        return;
        }



   ///*************************************************USB发卡器用
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton40->Enabled=true; //
    return;
}



    char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(firstsector, 0,Data);
   if (result)
   {
       readcarddata = String(Data).SubString(1,32);
       readstr= readcarddata.SubString(1,12);
       if(readstr=="6D6966617265")
        {
         s2=readcarddata.SubString(13,2);
         if(s2=="01")
          s1=readcarddata.SubString(17,6);
         else
          s1=readcarddata.SubString(15,6);
         sEdit3->Text=s1;
         Application->MessageBoxA("此卡不是用户卡","信息",MB_OK);
        }
        else
        {
         sc=readcarddata.SubString(25,2);

         redcode=readcarddata.SubString(1,12);
         redcode=redatapack(redcode);

         redcode1=readcarddata.SubString(13,6);

         redcode2=readcarddata.SubString(19,4);
         redcode2=redatapack(redcode2);

         readcarddata=redcode+redcode1+redcode2;
         if(!rexorcard(readcarddata))
         {
            Application->MessageBoxA("此卡为空白卡，请发卡！","信息",MB_OK);
         }
          dtime=readcarddata.SubString(1,6);
          s1=readcarddata.SubString(7,6);
          s2=readcarddata.SubString(13,4);

          sEdit3->Text=s1;
         }
     }
   else
       Caption = "读失败";
        //--------------------------------------------------------------------------------------

      }
  else
     Caption = "验证失败";


    }
    else
    	Caption = "寻卡失败";



if (!USB_DevClose())
         Caption = "关闭串口失败";
sButton40->Enabled=true; //读卡开
}
//---------------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////////////////
String xlhdatapoc(String Temp)
{
char datalist[512]=
{
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01 ,0x4E ,0x04 ,0xB4 ,0x32 ,0x53 ,0x4D ,0xD6 ,0x08 ,0xC6 ,0x76 ,0x38,
0x62 ,0xA8 ,0xCB ,0x78 ,0xB6 ,0xF1 ,0xB8 ,0x49 ,0xF0 ,0x95 ,0xCD ,0x5C ,0x7D ,0xCA ,0x2B ,0x31,
0xB2 ,0xB0 ,0x59 ,0x39 ,0x15 ,0x1B ,0xE0 ,0xBB ,0x0D ,0x9B ,0x8B ,0xE5 ,0xC8 ,0x90 ,0x6E ,0xCF,
0xAC ,0x1C ,0x2E ,0x5D ,0xE9 ,0x9D ,0x65 ,0xA9 ,0x7E ,0xBD ,0x63 ,0x23 ,0x19 ,0x5F ,0x9A ,0xA4,
0x6A ,0xE6 ,0x8A ,0xD1 ,0x8E ,0x9D ,0x85 ,0xC4 ,0x05 ,0xEB ,0x9B ,0xC5 ,0x8C ,0xC2 ,0x9F ,0x74,
0xE4 ,0x26 ,0xA9 ,0x3F ,0xDF ,0x22 ,0xFE ,0x15 ,0x48 ,0x1B ,0xCE ,0x77 ,0xDE ,0x06 ,0xD8 ,0x73,
0x69 ,0xBD ,0x17 ,0xF9 ,0x37 ,0x16 ,0x92 ,0xDA ,0x5B ,0xF1 ,0x47 ,0x50 ,0x61 ,0x1C ,0xB1 ,0x6E,
0xE8 ,0x68 ,0x4E ,0x81 ,0x00 ,0x6B ,0xBB ,0xB2 ,0xFA ,0x7F ,0xE2 ,0x2E ,0x4A ,0x2A ,0x78 ,0xB9,
0x4B ,0x18 ,0x63 ,0xEF ,0xA8 ,0xF7 ,0x5C ,0x5D ,0x84 ,0x1A ,0x0B ,0xBF ,0x88 ,0xD5 ,0x11 ,0x99,
0x27 ,0x82 ,0xD4 ,0x67 ,0x3E ,0x0A ,0x76 ,0xB7 ,0xFF ,0x23 ,0xF3 ,0x90 ,0x5F ,0x96 ,0x53 ,0x72,
0xA3 ,0xE7 ,0x7D ,0x66 ,0x7C ,0xEE ,0x2C ,0xF5 ,0x5E ,0xCB ,0x94 ,0xED ,0xAD ,0x52 ,0x45 ,0x32,
0xC8 ,0x62 ,0xC7 ,0x19 ,0x98 ,0xA6 ,0xE1 ,0x2D ,0xFD ,0x6C ,0x39 ,0x01 ,0xB6 ,0x56 ,0x1D ,0xA4,
0x41 ,0x40 ,0x14 ,0x5A ,0xC0 ,0x86 ,0x64 ,0xE5 ,0x7A ,0x49 ,0xA1 ,0xE9 ,0x2F ,0xD2 ,0xE3 ,0xAE,
0xF4 ,0xD7 ,0x04 ,0x89 ,0xD0 ,0x24 ,0x03 ,0x60 ,0xDD ,0xFB ,0xF2 ,0x51 ,0x3A ,0x07 ,0x3D ,0x71,
0x4C ,0x25 ,0xAC ,0xBC ,0x54 ,0x34 ,0xB0 ,0xBA ,0xEC ,0x08 ,0x95 ,0xE0 ,0x97 ,0xDB ,0x12 ,0xC9,
0x4D ,0xF0 ,0x35 ,0xA0 ,0x7B ,0xD6 ,0x09 ,0x93 ,0xAA ,0xF8 ,0xCC ,0x29 ,0xC6 ,0x8B ,0x13 ,0x31,
0xCA ,0x28 ,0x0E ,0x21 ,0xC1 ,0x0D ,0x8D ,0xD9 ,0x33 ,0x6D ,0x3B ,0xFC ,0x30 ,0xC3 ,0x6F ,0x1E,
0xB4 ,0x58 ,0xB3 ,0x20 ,0x4F ,0xA2 ,0xD3 ,0x0F ,0x38 ,0x42 ,0x55 ,0x0C ,0x02 ,0x80 ,0xCF ,0xAF,
0xDC ,0xA5 ,0xCD ,0xA7 ,0xAB ,0x46 ,0x57 ,0x3C ,0x10 ,0xF6 ,0xB5 ,0xEA ,0xBE ,0x1F ,0x43 ,0x83,
0x59 ,0x7E ,0x36 ,0x8F ,0x75 ,0x9A ,0x9E ,0xB8 ,0x2B ,0x9C ,0x65 ,0x79 ,0x87 ,0x91 ,0x44 ,0x70
};
int sts;
int te,idpi,te1,jst;
    String tte,tta,ttb,idps,sdp,retta,jsts,condata,stst,ttc;
tta="";
retta="";
//Temp="F98AA470";  /////////////////////////////////////////////////////////////////////////////
//conpwd,userCID123;
        sdp=Temp.SubString(1,2);
        idps="0x"+sdp;
        idpi=StrToInt(idps);
        te=datalist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        sdp=Temp.SubString(3,2);
        idps="0x"+sdp;
        idpi=StrToInt(idps);
        te=datalist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        sdp=Temp.SubString(5,2);
        idps="0x"+sdp;
        idpi=StrToInt(idps);
        te=datalist[idpi];
        tta=tta+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);

        
        condata=tta;
        ttc=conpwd;

    sts=Temp.Length();
    stst=Temp;
    jsts="0x"+ttc.SubString(1,2).Trim();
    jst=StrToInt(jsts);
    ttb="";
    for(int i=1;sts>i;i=i+2)
      {
        te=datalist[jst+i];
        tta="0x"+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
        te=StrToInt(tta);
        sdp="0x"+stst.SubString(i,2);
        te1=StrToInt(sdp);
        tta=te^te1;
        tte=IntToHex(StrToInt(tta),2);
        ttb=ttb+tte;
      }


    stst=ttb;
    jsts="0x"+ttc.SubString(3,2).Trim();
    jst=StrToInt(jsts);
    ttb="";
    for(int i=1;sts>i;i=i+2)
      {
        te=datalist[jst+i];
        tta="0x"+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
        te=StrToInt(tta);
        sdp="0x"+stst.SubString(i,2);
        te1=StrToInt(sdp);
        tta=te^te1;
        tte=IntToHex(StrToInt(tta),2);
        ttb=ttb+tte;
      }

    stst=ttb;
    jsts="0x"+ttc.SubString(5,2).Trim();
    jst=StrToInt(jsts);
    ttb="";
    for(int i=1;sts>i;i=i+2)
      {
        te=datalist[jst+i];
        tta="0x"+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
        te=StrToInt(tta);
        sdp="0x"+stst.SubString(i,2);
        te1=StrToInt(sdp);
        tta=te^te1;
        tte=IntToHex(StrToInt(tta),2);
        ttb=ttb+tte;
      }


      retta=condata+ttb.SubString(7,ttb.Length()-6);
return (retta);
}
////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////
String rexlhdatapoc(String Temp)
{
char datalist[512]=
{
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01 ,0x4E ,0x04 ,0xB4 ,0x32 ,0x53 ,0x4D ,0xD6 ,0x08 ,0xC6 ,0x76 ,0x38,
0x62 ,0xA8 ,0xCB ,0x78 ,0xB6 ,0xF1 ,0xB8 ,0x49 ,0xF0 ,0x95 ,0xCD ,0x5C ,0x7D ,0xCA ,0x2B ,0x31,
0xB2 ,0xB0 ,0x59 ,0x39 ,0x15 ,0x1B ,0xE0 ,0xBB ,0x0D ,0x9B ,0x8B ,0xE5 ,0xC8 ,0x90 ,0x6E ,0xCF,
0xAC ,0x1C ,0x2E ,0x5D ,0xE9 ,0x9D ,0x65 ,0xA9 ,0x7E ,0xBD ,0x63 ,0x23 ,0x19 ,0x5F ,0x9A ,0xA4,
0x6A ,0xE6 ,0x8A ,0xD1 ,0x8E ,0x9D ,0x85 ,0xC4 ,0x05 ,0xEB ,0x9B ,0xC5 ,0x8C ,0xC2 ,0x9F ,0x74,
0xE4 ,0x26 ,0xA9 ,0x3F ,0xDF ,0x22 ,0xFE ,0x15 ,0x48 ,0x1B ,0xCE ,0x77 ,0xDE ,0x06 ,0xD8 ,0x73,
0x69 ,0xBD ,0x17 ,0xF9 ,0x37 ,0x16 ,0x92 ,0xDA ,0x5B ,0xF1 ,0x47 ,0x50 ,0x61 ,0x1C ,0xB1 ,0x6E,
0xE8 ,0x68 ,0x4E ,0x81 ,0x00 ,0x6B ,0xBB ,0xB2 ,0xFA ,0x7F ,0xE2 ,0x2E ,0x4A ,0x2A ,0x78 ,0xB9,
0x4B ,0x18 ,0x63 ,0xEF ,0xA8 ,0xF7 ,0x5C ,0x5D ,0x84 ,0x1A ,0x0B ,0xBF ,0x88 ,0xD5 ,0x11 ,0x99,
0x27 ,0x82 ,0xD4 ,0x67 ,0x3E ,0x0A ,0x76 ,0xB7 ,0xFF ,0x23 ,0xF3 ,0x90 ,0x5F ,0x96 ,0x53 ,0x72,
0xA3 ,0xE7 ,0x7D ,0x66 ,0x7C ,0xEE ,0x2C ,0xF5 ,0x5E ,0xCB ,0x94 ,0xED ,0xAD ,0x52 ,0x45 ,0x32,
0xC8 ,0x62 ,0xC7 ,0x19 ,0x98 ,0xA6 ,0xE1 ,0x2D ,0xFD ,0x6C ,0x39 ,0x01 ,0xB6 ,0x56 ,0x1D ,0xA4,
0x41 ,0x40 ,0x14 ,0x5A ,0xC0 ,0x86 ,0x64 ,0xE5 ,0x7A ,0x49 ,0xA1 ,0xE9 ,0x2F ,0xD2 ,0xE3 ,0xAE,
0xF4 ,0xD7 ,0x04 ,0x89 ,0xD0 ,0x24 ,0x03 ,0x60 ,0xDD ,0xFB ,0xF2 ,0x51 ,0x3A ,0x07 ,0x3D ,0x71,
0x4C ,0x25 ,0xAC ,0xBC ,0x54 ,0x34 ,0xB0 ,0xBA ,0xEC ,0x08 ,0x95 ,0xE0 ,0x97 ,0xDB ,0x12 ,0xC9,
0x4D ,0xF0 ,0x35 ,0xA0 ,0x7B ,0xD6 ,0x09 ,0x93 ,0xAA ,0xF8 ,0xCC ,0x29 ,0xC6 ,0x8B ,0x13 ,0x31,
0xCA ,0x28 ,0x0E ,0x21 ,0xC1 ,0x0D ,0x8D ,0xD9 ,0x33 ,0x6D ,0x3B ,0xFC ,0x30 ,0xC3 ,0x6F ,0x1E,
0xB4 ,0x58 ,0xB3 ,0x20 ,0x4F ,0xA2 ,0xD3 ,0x0F ,0x38 ,0x42 ,0x55 ,0x0C ,0x02 ,0x80 ,0xCF ,0xAF,
0xDC ,0xA5 ,0xCD ,0xA7 ,0xAB ,0x46 ,0x57 ,0x3C ,0x10 ,0xF6 ,0xB5 ,0xEA ,0xBE ,0x1F ,0x43 ,0x83,
0x59 ,0x7E ,0x36 ,0x8F ,0x75 ,0x9A ,0x9E ,0xB8 ,0x2B ,0x9C ,0x65 ,0x79 ,0x87 ,0x91 ,0x44 ,0x70
};
int sts;
int te,idpi,te1,jst;
    String tte,tta,ttb,idps,sdp,retta,jsts,condata,stst,ttc;
tta="";
retta="";
//Temp="F98AA470";  /////////////////////////////////////////////////////////////////////////////
//conpwd,userCID123;
        sdp=Temp.SubString(1,2);

           for(int j=0;256>=j;j++)
            {
            te=datalist[j];
            tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
            if(tta==sdp)
             {
             retta=retta+IntToHex(j,2);
             break;
             }
            }

        sdp=Temp.SubString(3,2);

           for(int j=0;256>=j;j++)
            {
            te=datalist[j];
            tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
            if(tta==sdp)
             {
             retta=retta+IntToHex(j,2);
             break;
             }
            }

        sdp=Temp.SubString(5,2);

           for(int j=0;256>=j;j++)
            {
            te=datalist[j];
            tta=IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
            if(tta==sdp)
             {
             retta=retta+IntToHex(j,2);
             break;
             }
            }

        
        condata=retta;
        ttc=retta+"000000";

    sts=Temp.Length();
    stst=Temp;
    jsts="0x"+ttc.SubString(1,2).Trim();
    jst=StrToInt(jsts);
    ttb="";
    for(int i=1;sts>i;i=i+2)
      {
        te=datalist[jst+i];
        tta="0x"+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
        te=StrToInt(tta);
        sdp="0x"+stst.SubString(i,2);
        te1=StrToInt(sdp);
        tta=te^te1;
        tte=IntToHex(StrToInt(tta),2);
        ttb=ttb+tte;
      }


    stst=ttb;
    jsts="0x"+ttc.SubString(3,2).Trim();
    jst=StrToInt(jsts);
    ttb="";
    for(int i=1;sts>i;i=i+2)
      {
        te=datalist[jst+i];
        tta="0x"+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
        te=StrToInt(tta);
        sdp="0x"+stst.SubString(i,2);
        te1=StrToInt(sdp);
        tta=te^te1;
        tte=IntToHex(StrToInt(tta),2);
        ttb=ttb+tte;
      }

    stst=ttb;
    jsts="0x"+ttc.SubString(5,2).Trim();
    jst=StrToInt(jsts);
    ttb="";
    for(int i=1;sts>i;i=i+2)
      {
        te=datalist[jst+i];
        tta="0x"+IntToHex(te,2).SubString(IntToHex(te,2).Length()-1,2);
        te=StrToInt(tta);
        sdp="0x"+stst.SubString(i,2);
        te1=StrToInt(sdp);
        tta=te^te1;
        tte=IntToHex(StrToInt(tta),2);
        ttb=ttb+tte;
      }


      retta=condata+ttb.SubString(7,ttb.Length()-6);
return (retta);
}
////////////////////////////////////////////////////////////////////////////////

void __fastcall TForm1::sButton41Click(TObject *Sender)
{
/////////////////////////////////////////////////////////////////////////
String fkqid,qstr,ss1,ss2,ss3,ss4,ss5,ss6,ss7,ss8,sss,Temp,Temp1,aa,bb;
int tz;
//Temp="104B7BB3E4001C4C7C08ACE508154575";

//Temp1=xlhdatapoc(Temp);

//Temp=rexlhdatapoc(Temp1);


   if(sButton41->Caption=="加载发卡器")
     {
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
   //     return FALSE;
        }
        else
        {



if(MessageDlg("一个软件只能加载一次发卡器请慎用！ 注意备份！",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(16, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
     //  sEdit3->Text=fkqid;
   }
    else
    {
       result = USB_Read(16, 0,Data);
       if (result)
          {
          fkqid = String(Data).SubString(1,6);
     //  sEdit3->Text=fkqid;
          }
           else
           {
              result = USB_Read(16, 0,Data);
              if (result)
               {
                fkqid = String(Data).SubString(1,6);
     //  sEdit3->Text=fkqid;
               }
               else{
               Application->MessageBoxA("没有检测到发卡器!!","问题",MB_OK);
               fkqid ="147369";
               }
           }
    }

     if(fkqid!="147369")
      {
    qstr="update other set conpwd='";
    qstr+=fkqid;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    conpwd=fkqid;
    bool result = USB_BeepExA(3);
    Application->MessageBoxA("发卡器加载成功!!","恭喜",MB_OK);
    sButton41->Caption="系统序列号";
      }
    }
        }
        }
        else
        {
        String hour,minute,second, strdata;
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
        ss6=strdata+' '+hour+':'+minute+':'+second;
   Form7->Memo1->Clear();
   Form7->Memo1->Lines->Add("系统序列号为：  ");
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
   ss1=IntToStr(wzsector);
   ss2="0"+IntToStr(firstsector);
   ss2=ss2.SubString(ss2.Length()-1,2);
   ss3=IntToStr(secondsector);
   ss4=Versionnumber;           ///IntToStr(add1sector);


String ins,vcn1,vcn2,vcn3,vcn4,vcn5,vcn6,vcn7,vcn8,vcn9,vcn10;
ins="select * from VisiblePoc";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();

   if(tcon1->adoquery->RecordCount!=0)
   {
   vcn1=tcon1->adoquery->FieldByName("vcn1")->AsString.Trim(); ///初始化
   vcn2=tcon1->adoquery->FieldByName("vcn2")->AsString.Trim();
   vcn3=tcon1->adoquery->FieldByName("vcn3")->AsString.Trim();
   vcn4=tcon1->adoquery->FieldByName("vcn4")->AsString.Trim();
   vcn5=tcon1->adoquery->FieldByName("vcn5")->AsString.Trim();
   vcn6=tcon1->adoquery->FieldByName("vcn6")->AsString.Trim();
   vcn7=tcon1->adoquery->FieldByName("vcn7")->AsString.Trim();
   vcn8=tcon1->adoquery->FieldByName("vcn8")->AsString.Trim();
   vcn9=tcon1->adoquery->FieldByName("vcn9")->AsString.Trim();
   vcn10=tcon1->adoquery->FieldByName("vcn10")->AsString.Trim();
   }
   aa="00";
if(vcn1=="475360231")
  aa=aa|"0x01";  ///初始化

if(vcn2=="29457731")
  aa=aa|"0x02"; ///批量加密

bb=functionfig.SubString(2,1);
  aa=aa|(bb<<2);

//if(vcn3=="1")
//  aa=aa|"0x04";  ///开放卡

//if(vcn4=="1")
//  aa=aa|"0x08"; ///同步卡

//if(vcn5=="1")
//  aa=aa|"0x10";  ///去掉层数

if(vcn8=="1")
    aa=aa|"0x10";  ///去掉出厂卡 

if(vcn6=="874631")
  aa=aa|"0x20";  ///操作时自动处理初始化

if(vcn7=="35794")
    aa=aa|"0x40"; ///是否处理0扇区    //是否把0扇区写死  1为是


aa=IntToHex(StrToInt(aa),2);



     
   Temp=conpwd+ss2+userCID123+aa;

   Temp1=xlhdatapoc(Temp);
   Temp1=Temp1.SubString(1,Temp1.Length()/2)+"-"+Temp1.SubString(Temp1.Length()/2+1,Temp1.Length()/2);
   Form7->Memo1->Lines->Add(Temp1);
   try
         {
  //       Form7=new TForm8(Application);
         Form7->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form7;
           Application->ShowException(&exception);
           }
        }
    
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }

}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox9Change(TObject *Sender)
{
sButton18->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox3Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit11Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
if (sEdit11->Text != "")
   {
       String sHex = IntToHex(StrToInt64(sEdit11->Text),8);
       Label59->Caption = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);
   }
}
//---------------------------------------------------------------------------





void __fastcall TForm1::sButton42Click(TObject *Sender)
{
String Temp1,Temp,at;
Temp1=sEdit3->Text;
if(Temp1=="")
  return;
//Temp="104B7BB3E4001C4C7C08ACE508154575";

//Temp1=xlhdatapoc(Temp);
if(StrToIntYN(Temp1))
   Temp=rexlhdatapoc(Temp1);
sEdit3->Text=Temp;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit10Change(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit9Change(TObject *Sender)
{
sButton23->Enabled=false;         
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit13Change(TObject *Sender)
{
sButton18->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit14Change(TObject *Sender)
{
sButton18->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Memo1Click(TObject *Sender)
{
sButton18->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox2Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
{
sButton10->Enabled=false;
//Application->MessageBoxA("选择动态码功能后，此地址号只能刷唯一设备！！","信息",MB_OK);
}
if(sCheckBox2->Checked==true)
{
//Application->MessageBoxA("选择动态码功能后，此地址号只能刷唯一设备！！","信息",MB_OK);
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit3Change(TObject *Sender)
{
sButton42->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox5Click(TObject *Sender)
{
String qstr;
if(sCheckBox5->Checked==true)
 {
qstr="update other set lockcomm='";
    qstr+=Form1->ComboBox1->Text;
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
  }
  else
  {
  qstr="update other set lockcomm=''";
//    qstr+=Form1->ComboBox1->Text;
 //   qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton43Click(TObject *Sender)
{
String Temp,fk,aa,aa1,ins,jmshanqu0007,jmshanqu0815;
String cardpwd;
int result,ssc;
//String cardpwd1,cardpwd;
char Datas[8]= {0} ;


//MessageBeep(1);
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton43->Enabled=true; //
        return;
        }
///*************************************************USB发卡器用
/*///////////////////////////////////////////////////////////////////////////////////////////////////
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
//sButton43->Enabled=true; //
    return;
}
*/

  //    char Datas[8]= {0} ;
  //  String datass,cardpwd1;
  //  int result = USB_RequestEx(Datas);
 //   if (result == 1)
//{
//cardpwd=cardidpwdpoc(Datas);
 if(sCheckBox27->Checked==true)
 {
 if(sButton43->Caption=="卡片恢复"){
 sButton43->Caption="取消";
 zhanting=0;
 MyThread = new sst(true);
 is=0;
// MyThread->Resume();        //开始线程

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa1=IntToHex(StrToInt(jmshanqu0815),2);

        fk = "000102030405060708090A0B0C0D0E0F";
        fk = aa+aa1+"0000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(19, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
 }
   }
 else {
 sButton43->Caption="卡片恢复";
// MyThread->Suspend();     //暂停线程
        fk = "00F80000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(20, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
   zhanting=1;
   for(;zhanting==2;){}
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
   }
 }
 else
 {
 sButton43->Enabled=false; //

if(!fkquseryn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
//sButton43->Enabled=true; //
    return;
}

 result = USB_RequestEx(Datas);
    if (result == 1)
    {
//    cardpwd=cardidpwdpoc(Datas);
    FrmBar->PBarOpen(15);
 if(recardjiamiquan()==true){
    ssc=StrToInt(StaticText2->Caption);
    StaticText2->Caption=IntToStr(ssc+1);
    MessageBeep(1);
    USB_BeepExA(3);
      }
    }
    else
     Form1->Caption = "寻卡失败,请放卡片！";
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 }
//}
FrmBar->PBarClose();
 sButton43->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::ComboBox1Change(TObject *Sender)
{
String qstr;
if(sCheckBox5->Checked==true)
 {
qstr="update other set lockcomm='";
    qstr+=Form1->ComboBox1->Text;
    qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
  }
  else
  {
  qstr="update other set lockcomm=''";
//    qstr+=Form1->ComboBox1->Text;
 //   qstr+="'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit11KeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
sButton23->Enabled=false;
sButton26->Enabled=false;
if (sEdit11->Text != "")
   {
       String sHex = IntToHex(StrToInt64(sEdit11->Text),8);
       Label59->Caption = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);
   }        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton44Click(TObject *Sender)
{
String ins,jmshanqu0007,jmshanqu0815,aa,aa1;

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
//   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa=jmshanqu0007;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox6->Checked=true;
   else
     sCheckBox6->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox7->Checked=true;
   else
     sCheckBox7->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox8->Checked=true;
   else
     sCheckBox8->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox9->Checked=true;
   else
     sCheckBox9->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox10->Checked=true;
   else
     sCheckBox10->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox11->Checked=true;
   else
     sCheckBox11->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox12->Checked=true;
   else
     sCheckBox12->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox13->Checked=true;
   else
     sCheckBox13->Checked=false;


 //  aa=IntToHex(StrToInt(jmshanqu0815),2);
   aa=jmshanqu0815;
   aa1=aa&"0x01";
   if(aa1!="0")
     sCheckBox14->Checked=true;
   else
     sCheckBox14->Checked=false;

   aa1=aa&"0x02";
   if(aa1!="0")
     sCheckBox15->Checked=true;
   else
     sCheckBox15->Checked=false;

   aa1=aa&"0x04";
   if(aa1!="0")
     sCheckBox16->Checked=true;
   else
     sCheckBox16->Checked=false;

   aa1=aa&"0x08";
   if(aa1!="0")
     sCheckBox17->Checked=true;
   else
     sCheckBox17->Checked=false;

   aa1=aa&"0x10";
   if(aa1!="0")
     sCheckBox18->Checked=true;
   else
     sCheckBox18->Checked=false;

   aa1=aa&"0x20";
   if(aa1!="0")
     sCheckBox19->Checked=true;
   else
     sCheckBox19->Checked=false;

   aa1=aa&"0x40";
   if(aa1!="0")
     sCheckBox20->Checked=true;
   else
     sCheckBox20->Checked=false;

   aa1=aa&"0x80";
   if(aa1!="0")
     sCheckBox21->Checked=true;
   else
     sCheckBox21->Checked=false;
     
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton45Click(TObject *Sender)
{
String qstr,aa,jmshanqu0007,jmshanqu0815;
sButton45->Enabled=false; //

aa="00";

     if(sCheckBox6->Checked==true)
       aa=aa|"0x01";
     if(sCheckBox7->Checked==true)
       aa=aa|"0x02";
     if(sCheckBox8->Checked==true)
       aa=aa|"0x04";
     if(sCheckBox9->Checked==true)
       aa=aa|"0x08";
     if(sCheckBox10->Checked==true)
       aa=aa|"0x10";
     if(sCheckBox11->Checked==true)
       aa=aa|"0x20";
     if(sCheckBox12->Checked==true)
       aa=aa|"0x40";
     if(sCheckBox13->Checked==true)
       aa=aa|"0x80";
     jmshanqu0007=aa;

aa="00";

     if(sCheckBox14->Checked==true)
       aa=aa|"0x01";
     if(sCheckBox15->Checked==true)
       aa=aa|"0x02";
     if(sCheckBox16->Checked==true)
       aa=aa|"0x04";
     if(sCheckBox17->Checked==true)
       aa=aa|"0x08";
     if(sCheckBox18->Checked==true)
       aa=aa|"0x10";
     if(sCheckBox19->Checked==true)
       aa=aa|"0x20";
     if(sCheckBox20->Checked==true)
       aa=aa|"0x40";
     if(sCheckBox21->Checked==true)
       aa=aa|"0x80";
     jmshanqu0815=aa;

qstr="update other set jmshanqu0007='";
    qstr+=jmshanqu0007;
    qstr+="',jmshanqu0815='";
    qstr+=jmshanqu0815;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    
    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);

 sButton45->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N12Click(TObject *Sender)
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
sButton25->Enabled=true; //
        return;
  }
  else{
  if(MessageDlg("是否将数据全部删除？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
        {
     ins="delete * from userinfo";
     tcon->adoquery->SQL->Clear();
     tcon->adoquery->SQL->Add(ins);
     tcon->adoquery->ExecSQL();
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
  ins="delete * from fakapoc";
     tcon->adoquery->SQL->Clear();
     tcon->adoquery->SQL->Add(ins);
     tcon->adoquery->ExecSQL();
        }
      }


}
//---------------------------------------------------------------------------

void __fastcall TForm1::N13Click(TObject *Sender)
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

 if(passwordyn==1){
       if(MessageDlg("是否将数据全部删除？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
        {
     ins="delete * from elevatorinfo";
     tcon->adoquery->SQL->Clear();
     tcon->adoquery->SQL->Add(ins);
     tcon->adoquery->ExecSQL();
     Form1->StringGrid1->Rows[1]->Clear();
     Form1->StringGrid1->RowCount=2;
     Form1->StringGrid1->Rows[1]->Clear();
        }
  }
 
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N14Click(TObject *Sender)
{
dispalluser();  ////显示所有用户               
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton46Click(TObject *Sender)
{
 try
         {
         Form12=new TForm12(Application);
         Form12->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form12;
           Application->ShowException(&exception);
           }        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton47Click(TObject *Sender)
{
String Temp,fk,aa,aa1,aa2,ss7,ins,jmshanqu0007,jmshanqu0815;
String cardpwd;
int result,ssc;
//String cardpwd1,cardpwd;
char Datas[8]= {0} ;

ss7=sEdit12->Text.Trim();
if(ss7=="")
  return;
//if(StrToIntYN(ss7)) 
      if(ss7.Length()!=12)
       return;

//MessageBeep(1);
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton6->Enabled=true; //
        return;
        }
///*************************************************USB发卡器用
/*///////////////////////////////////////////////////////////////////////////////////////////////////
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
//sButton6->Enabled=true; //
    return;
}
*/

  //    char Datas[8]= {0} ;
  //  String datass,cardpwd1;
  //  int result = USB_RequestEx(Datas);
 //   if (result == 1)
//{
//cardpwd=cardidpwdpoc(Datas);
// if(sCheckBox1->Checked==true)
// {
 if(sButton47->Caption=="批量加密"){
 sButton47->Caption="取消";
 zhanting=0;
 MyThread = new sst(true);
 is=0;
// MyThread->Resume();        //开始线程

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa1=IntToHex(StrToInt(jmshanqu0815),2);
   aa2=

        fk = "000102030405060708090A0B0C0D0E0F";
        fk = aa+aa1+ss7+"0000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(17, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
 }
   }
 else {
 sButton47->Caption="批量加密";
// MyThread->Suspend();     //暂停线程
        fk = "00F80000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(18, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
   zhanting=1;
   for(;zhanting==2;){}
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
   }
   /*
 }
 else
 {
 sButton6->Enabled=false; //

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton6->Enabled=true; //
    return;
}
/*
 result = USB_RequestEx(Datas);
    if (result == 1)
    {
    cardpwd=cardidpwdpoc(Datas);
 if(cardjiamiquan(cardpwd)==true){
    ssc=StrToInt(StaticText2->Caption);
    StaticText2->Caption=IntToStr(ssc+1);
    MessageBeep(1);
      }
    }
    else
     Form1->Caption = "寻卡失败,请放卡片！";
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
         */
// }
//}

 sButton47->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton48Click(TObject *Sender)
{
sButton48->Enabled=false;

String cardpwd,readcarddata,redcode,readcode1,readcode2,dtime,s1,s2,redcode1,redcode2,sc,readstr;

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton48->Enabled=true; //
        return;
        }



   ///*************************************************USB发卡器用
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton48->Enabled=true; //
    return;
}



    char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Caption = "验证成功";
     sEdit3->Text=cardpwd;
     }
  else
     Caption = "验证失败";


    }
    else
    	Caption = "寻卡失败";



if (!USB_DevClose())
         Caption = "关闭串口失败";
sButton48->Enabled=true; //读卡开
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton49Click(TObject *Sender)
{
sButton49->Enabled=false;
String Temp,st1,st2,st3,st4,st5,st6,atime,a,ins;
if(MessageDlg("此卡可对控制器工作模式进行处理。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton49->Enabled=true; //
        return;
        }
/*
ins="select conpwd from other";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   conpwd=tcon->adoquery->FieldByName("conpwd")->AsString.Trim();
   conpwd=conpwd+"000000000000";
   conpwd=conpwd.SubString(1,6);
 //  conpwd=dxor(conpwd);
   }
   */

  if(sRadioButton1->Checked==true)
          st1="01";
  if(sRadioButton2->Checked==true)
          st1="03";

st2="0";

     if(sCheckBox22->Checked==true)
       st2=st2|"0x1";
     if(sCheckBox23->Checked==true)
       st2=st2|"0x2";
     if(sCheckBox25->Checked==true)
       st2=st2|"0x4";


   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h 08h 09h 0ah 0bh 0ch  为年月日时分秒
; 0dh 0eh 0fh 为无
6D69666172651025836966756E010300     */

  Temp="6D696661726510"+conpwd+"66756E"+st1+"0"+st2+"00";

if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton49->Enabled=true; //
    return;
}

     if (write14data0s(Temp))
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);


 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
   sButton49->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit13Change(TObject *Sender)
{
char Datas[8]= {0} ;
String cardpwd,suid;
        suid=sEdit13->Text+"00000000";
        suid=suid.SubString(1,8);
       if(StrToHexYN(suid))
       {
        sprintf(Datas, "%s", suid);
        cardpwd=cardidpwdpoc(Datas);
        sEdit12->Text=cardpwd;
       }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton50Click(TObject *Sender)
{
String Temp,ins,fkqid,sector,userCID,qstr,ss;
sButton50->Enabled=false; //

if(sEdit15->Text.Length()!=6)  {
    Application->MessageBoxA("请输入6位密码!!","信息",MB_OK);
    sButton50->Enabled=true; //
    return;
    }
ss=datapack(sEdit15->Text.Trim());
qstr="select * from UCID where UserCID='";
qstr+=ss;
qstr+="'";
tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("用户码错误","问题",MB_OK);
     sButton50->Enabled=true; //
     return;
}

if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{

ins="select sector from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   sector="FF"+tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sector=sector.SubString(sector.Length()-1,2);
//   userCID="FFFFFF"+tcon->adoquery->FieldByName("userCID")->AsString.Trim();
//   userCID=userCID.SubString(userCID.Length()-1,2);
   }
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton50->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡
       userCID=sEdit15->Text.Trim();
       fkqid=userCID+"FFFFFF";
       fkqid = fkqid.SubString(1,6);
       fkqid = "39"+fkqid+sector+"0000000000000000000000";

char Data[32] = {0};
        sprintf(Data, "%s", fkqid);
   bool result = USB_Write(21, 0,Data);
   if (result)
       {
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
       }

 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
}
 sButton50->Enabled=true; //
}
//---------------------------------------------------------------------------




void __fastcall TForm1::sButton53Click(TObject *Sender)
{
if(sEdit14->Text=="calid_admin")
 {
  sGroupBox17->Visible=true;
  sGroupBox9->Visible=true;
  sGroupBox1->Visible=true;
  sGroupBox19->Visible=true;
  sGroupBox13->Visible=true;
  sGroupBox10->Visible=true;
  GroupBox7->Visible=true;
  sButton46->Visible=true;
  sPageControl2->Visible=true;
  sGroupBox25->Visible=true;
//  sButton51->Visible=true;
//  sButton52->Visible=true;
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N15Click(TObject *Sender)
{
 try
         {
         Form14=new TForm14(Application);
         Form14->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form14;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton54Click(TObject *Sender)
{
 try
         {
         Form15=new TForm15(Application);
         Form15->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form15;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N16Click(TObject *Sender)
{
 try
         {
         Form18=new TForm18(Application);
         Form18->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form18;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------




void __fastcall TForm1::sButton51Click(TObject *Sender)
{
 String fkqid;
sButton51->Enabled=false; //
sEdit15->Text="";
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton51->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(21, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(7,6);
       sEdit15->Text=fkqid;
   }


 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 sButton51->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton52Click(TObject *Sender)
{
String ins;
sEdit15->Text="";
ins="select userCID from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   userCID123=tcon1->adoquery->FieldByName("userCID")->AsString.Trim();
   userCID123=userCID123+"000000000000";
   userCID123=userCID123.SubString(1,6);
   sEdit15->Text= userCID123;
 //  conpwd=dxor(conpwd);
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton55Click(TObject *Sender)
{
String qstr,ss;
sButton55->Enabled=false; //

if(sEdit15->Text.Length()!=6)  {
    Application->MessageBoxA("请输入6位密码!!","信息",MB_OK);
    sButton55->Enabled=true; //
    return;
    }
ss=datapack(sEdit15->Text.Trim());
qstr="select * from UCID where UserCID='";
qstr+=ss;
qstr+="'";
tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(qstr);
   tcon1->adoquery->Open();
if(tcon1->adoquery->RecordCount==0)
{
    Application->MessageBoxA("用户码错误","问题",MB_OK);
     sButton55->Enabled=true; //
     return;
}


qstr="update other set userCID='";
    qstr+=sEdit15->Text;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    userCID123=sEdit15->Text;
    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);


 sButton55->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton56Click(TObject *Sender)
{
String tt,tt1,ins,UserCIDR,username;
int ns,n;

sButton56->Enabled=false; //
if(sEdit17->Text.Length()!=6)  {
    Application->MessageBoxA("请输入6位密码!!","信息",MB_OK);
    sButton56->Enabled=true; //
    return;
    }

tt1=sEdit17->Text;
tt=datapack(tt1);
//tt1=redatapack(tt);

          tcon1->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon1->adoquery->SQL->Clear();
          tcon1->adoquery->SQL->Add("Select * from UCID");
          tcon1->adoquery->Open();
          tcon1->adoquery->Insert();


          tcon1->adoquery->FieldByName("UserCID")->AsString=tt;
          tcon1->adoquery->FieldByName("username")->AsString=sEdit16->Text;


         tcon1->adoquery->Post();
         tcon1->adoquery->Close();




Form1->StringGrid2->ColCount=2;
//Form1->StringGrid2->Cells[0][0]="编号";
Form1->StringGrid2->Cells[0][0]="用户码";
Form1->StringGrid2->Cells[1][0]="用户名称";




  Form1->StringGrid2->RowCount=18;
  Form1->StringGrid2->Rows[1]->Clear();
  Form1->StringGrid2->Rows[2]->Clear();
  Form1->StringGrid2->Rows[3]->Clear();
  Form1->StringGrid2->Rows[4]->Clear();
  Form1->StringGrid2->Rows[5]->Clear();
  Form1->StringGrid2->Rows[6]->Clear();
  Form1->StringGrid2->Rows[7]->Clear();
  Form1->StringGrid2->Rows[8]->Clear();
  Form1->StringGrid2->Rows[9]->Clear();
  Form1->StringGrid2->Rows[10]->Clear();
  Form1->StringGrid2->Rows[11]->Clear();
  Form1->StringGrid2->Rows[12]->Clear();
  Form1->StringGrid2->Rows[13]->Clear();
  Form1->StringGrid2->Rows[14]->Clear();
  Form1->StringGrid2->Rows[15]->Clear();
  Form1->StringGrid2->Rows[16]->Clear();
  Form1->StringGrid2->Rows[17]->Clear();
  Form1->StringGrid2->Rows[18]->Clear();
  Form1->StringGrid2->Rows[19]->Clear();
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from UCID ";
   ins+=" ORDER BY [no]";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   
ns=tcon1->adoquery->RecordCount;
for(int j=0;j<ns;j=j+1)
{
 UserCIDR=tcon1->adoquery->FieldByName("UserCID")->AsString.Trim();
 username=tcon1->adoquery->FieldByName("username")->AsString.Trim();
 n=Form1->StringGrid2->RowCount;
     Form1->StringGrid2->RowCount=n+1;
     Form1->StringGrid2->Cells[0][n-17]=redatapack(UserCIDR);
     Form1->StringGrid2->Cells[1][n-17]=username;

     Form1->StringGrid2->Rows[n]->Clear();
     tcon1->adoquery->Next();
}





sButton56->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton57Click(TObject *Sender)
{
String ins,no,nos,username,UserCIDR;
int n,ns;


////--------------------------------------------------------------------------------------------------
//姓名 单元（部门） 电话 备注 发卡次数 当前卡号 限制时间 注册日期 发卡日期
//有效日期 限制次数 当前冲次数 当前卡次数 上回卡次数 当前冲金额 挂失码 处理码
 sButton57->Enabled=false; //
Form1->StringGrid2->ColCount=2;
//Form1->StringGrid2->Cells[0][0]="编号";
Form1->StringGrid2->Cells[0][0]="用户码";
Form1->StringGrid2->Cells[1][0]="用户名称";




  Form1->StringGrid2->RowCount=18;
  Form1->StringGrid2->Rows[1]->Clear();
  Form1->StringGrid2->Rows[2]->Clear();
  Form1->StringGrid2->Rows[3]->Clear();
  Form1->StringGrid2->Rows[4]->Clear();
  Form1->StringGrid2->Rows[5]->Clear();
  Form1->StringGrid2->Rows[6]->Clear();
  Form1->StringGrid2->Rows[7]->Clear();
  Form1->StringGrid2->Rows[8]->Clear();
  Form1->StringGrid2->Rows[9]->Clear();
  Form1->StringGrid2->Rows[10]->Clear();
  Form1->StringGrid2->Rows[11]->Clear();
  Form1->StringGrid2->Rows[12]->Clear();
  Form1->StringGrid2->Rows[13]->Clear();
  Form1->StringGrid2->Rows[14]->Clear();
  Form1->StringGrid2->Rows[15]->Clear();
  Form1->StringGrid2->Rows[16]->Clear();
  Form1->StringGrid2->Rows[17]->Clear();
  Form1->StringGrid2->Rows[18]->Clear();
  Form1->StringGrid2->Rows[19]->Clear();
//if(Edit24->Text!="")
//{
///////////////////////////////////////////////////////////////////////按控制器查找
   ins="select * from UCID ";
   ins+=" ORDER BY [no]";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   
ns=tcon1->adoquery->RecordCount;
for(int j=0;j<ns;j=j+1)
{
 UserCIDR=tcon1->adoquery->FieldByName("UserCID")->AsString.Trim();
 username=tcon1->adoquery->FieldByName("username")->AsString.Trim();
 n=Form1->StringGrid2->RowCount;
     Form1->StringGrid2->RowCount=n+1;
     Form1->StringGrid2->Cells[0][n-17]=redatapack(UserCIDR);
     Form1->StringGrid2->Cells[1][n-17]=username;

     Form1->StringGrid2->Rows[n]->Clear();
     tcon1->adoquery->Next();
}
sButton57->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::CheckBox12Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;

if(CheckBox12->Checked==true)
 {
  DateTimePicker1->Visible=true;
 }
 else
 {
  DateTimePicker1->Visible=false;
 }

}
//---------------------------------------------------------------------------





void __fastcall TForm1::sButton58Click(TObject *Sender)
{
String Temp,qstr,bh,yzm,Temp1;

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton23->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------

   bh=sEdit1->Text.Trim();
   yzm=Label19->Caption;
   if(bh==""||yzm=="")
    Application->MessageBoxA("请选择有效用户！!!","提示",MB_OK);
   else{
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton58->Enabled=true; //
    return;
}

  Temp="6D696661726505"+conpwd+Label19->Caption+"00000000";

   Temp1="00000000000000000000000000000000";
//   if (write14data0s(Temp))  {
   if (write14data0s1s(Temp,Temp1)) {
  //  tcon->UserSetado->Active =false;
    qstr="update userinfo set ";
    qstr+="[carduse]='1'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
  //  tcon->UserSetado->Active =true;
  bool result = USB_BeepExA(3);
  Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
    }
  }
 if (!USB_DevClose())
         Caption = "关闭串口失败";
   FrmBar->PBarClose();
   sButton58->Enabled=true;
   if(sEdit1->Text=="")
    sButton26->Enabled=false; //发卡关
else
    sButton26->Enabled=true; //发卡开
}
//---------------------------------------------------------------------------

/*
bool __fastcall ReadConfig()
{       //读取配置文件
FILE * ptr;
char x[200];
AnsiString FileName=".\\SYCALIDSET1.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
ptr = fopen ( FileName.c_str(), "rb" );
 if ( ptr == NULL )       
{          ShowMessage ( "文件打开失败！" );         
return false;       }

     fread(x,160,1 ,ptr);//共读取200*12=2400个字节
    

fclose(ptr);
return true;
}

bool __fastcall SaveConfign()
{FILE*ptr;
char x[200]={
0x83 ,0xF9 ,0x81 ,0x5E ,0xFF ,0x43 ,0x0B ,0xA1 ,0x9C ,0x28 ,0xF2 ,0x9E ,0xEB ,0x97 ,0x99 ,0xA3,
0x96 ,0x18 ,0x94 ,0xC2 ,0xC0 ,0xF7 ,0x36 ,0xE8 ,0x67 ,0xFC ,0x86 ,0x4B ,0x61 ,0x11 ,0x52 ,0x5B,
0xEF ,0x98 ,0xFE ,0x0F ,0x70 ,0x7C ,0x1D ,0x93 ,0xF4 ,0x3B ,0xC4 ,0xDB ,0x71 ,0x06 ,0xDF ,0xD7,
0x35 ,0xE7 ,0x17 ,0x6D ,0xA6 ,0xDE ,0x3C ,0x64 ,0x79 ,0xD8 ,0xFB ,0x16 ,0xED ,0x2F ,0x57 ,0x22,
0x85 ,0x82 ,0x77 ,0xB5 ,0xB7 ,0x02 ,0x8F ,0xFD ,0x8D ,0x56 ,0x27 ,0x1E ,0xAF ,0x4C ,0xE4 ,0xD0,
0x34 ,0x0A ,0xB3 ,0x41 ,0xA5 ,0xEE ,0x68 ,0xAB ,0xAD ,0x0C ,0xCC ,0x4A ,0x51 ,0x45 ,0x75 ,0x40,
0x14 ,0x5A ,0x72 ,0xF8 ,0x3A ,0x25 ,0x6C ,0xFA ,0x24 ,0x21 ,0x88 ,0x3E ,0x3F ,0x37 ,0x80 ,0xD5,
0x4F ,0x60 ,0x8E ,0x05 ,0x42 ,0x89 ,0xDA ,0x50 ,0x7F ,0xAA ,0xF5 ,0x6B ,0xB1 ,0x54 ,0xE3 ,0x1A,
0xC7 ,0xA7 ,0xC5 ,0x8C ,0xE2 ,0x6A ,0x13 ,0x00 ,0xEA ,0x20 ,0x46 ,0xA2 ,0xCE ,0x66 ,0x07 ,0xD4,
0x47 ,0x74 ,0x6F ,0xBC ,0x55 ,0xBA ,0xE1 ,0xA0 ,0x44 ,0x03 ,0xBE ,0x87 ,0xD1 ,0x12 ,0xD2 ,0x92,
0xAE ,0xE6 ,0xBF ,0x26 ,0x8A ,0x69 ,0x2C ,0xDD ,0xD9 ,0x7B ,0x9F ,0x1F ,0x73 ,0x91 ,0x30 ,0x2A,
0x48 ,0x09 ,0x2D ,0x33 ,0xF3 ,0xC1 ,0xF6 ,0x58 ,0x84 ,0x10 ,0xC3 ,0x3D ,0xEC ,0x29 ,0xDC ,0xD3,
0xC9 ,0x0E ,0x7A ,0xB9 ,0x01};

//AnsiString FileName=".\\SYCALIDSET1.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
ptr=fopen(FileName.c_str(),"rb+");
if(ptr== NULL )
{
ShowMessage ("文件打开失败！");
return false;
}
fwrite(x,160,1,ptr);
fclose (ptr);
return true;
}

bool __fastcall SaveConfigy()
{FILE*ptr;
char x[160]={
	0x00, 0x01, 0x00, 0x00, 0x53, 0x74, 0x61, 0x6E, 0x64, 0x61, 0x72, 0x64, 0x20, 0x4A, 0x65, 0x74, 
	0x20, 0x44, 0x42, 0x00, 0x01, 0x00, 0x00, 0x00, 0xB5, 0x6E, 0x03, 0x62, 0x60, 0x09, 0xC2, 0x55, 
	0xE9, 0xA9, 0x67, 0x72, 0x40, 0x3F, 0x00, 0x9C, 0x7E, 0x9F, 0x90, 0xFF, 0x85, 0x9A, 0x31, 0xC5, 
	0x79, 0xBA, 0xED, 0x30, 0xBC, 0xDF, 0xCC, 0x9D, 0x63, 0xD9, 0xE4, 0xC3, 0xD3, 0x41, 0xFB, 0x8A, 
	0xBC, 0x4E, 0x76, 0x59, 0x8D, 0x37, 0xAE, 0xE6, 0xEF, 0xFA, 0x31, 0xFC, 0x47, 0xE6, 0xE1, 0x14, 
	0xEE, 0x60, 0xBD, 0x36, 0x08, 0x36, 0x42, 0xD0, 0xEB, 0xB1, 0xC6, 0x56, 0x2B, 0x43, 0x7A, 0x0D, 
	0x83, 0x33, 0x8D, 0xC3, 0x4F, 0x5B, 0x21, 0x17, 0x7C, 0x2A, 0x22, 0xD4, 0x7C, 0x99, 0x05, 0x13, 
	0x98, 0xFD, 0x91, 0x45, 0x02, 0x0C, 0x78, 0x6E, 0x84, 0x66, 0x5F, 0x95, 0xF8, 0xD0, 0x89, 0x24, 
	0x85, 0x67, 0xC6, 0x1F, 0x27, 0x44, 0xD2, 0xEE, 0xCF, 0x65, 0xED, 0xFF, 0x07, 0xC7, 0x46, 0xA1, 
	0x78, 0x16, 0x0C, 0xED, 0xE9, 0x2D, 0x62, 0xD4, 0x54, 0x06, 0x00, 0x00, 0x34, 0x2E, 0x30, 0x00
};


//AnsiString FileName=".\\SYCALIDSET1.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
ptr=fopen(FileName.c_str(),"rb+");
if(ptr== NULL )
{
ShowMessage ("文件打开失败！");
return false;
}
fwrite(x,160,1,ptr);
fclose (ptr);
return true;
}
  */


void __fastcall TForm1::sButton59Click(TObject *Sender)
{


String str="3563532",qstr;
 sButton59->Enabled=false;
  if(sRadioButton1->Checked==true) {
          str="3563532";
          functionfig="01";
          }
  if(sRadioButton2->Checked==true)  {
          str="345689";
          functionfig="02";
          }
  if(sRadioButton3->Checked==true){
          str="975365";
          functionfig="03";
          }

qstr="update other set functionfig='";
    qstr+=str;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();

    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);


 sButton59->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton60Click(TObject *Sender)
{
String Temp,fk,aa,aa1,ins,jmshanqu0007,jmshanqu0815;
String cardpwd,huifumima,qstr;
int result,ssc;
//String cardpwd1,cardpwd;
char Datas[8]= {0} ;



//MessageBeep(1);
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    //    sButton43->Enabled=true; //
        return;
        }
///*************************************************USB发卡器用
/*///////////////////////////////////////////////////////////////////////////////////////////////////
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
//sButton43->Enabled=true; //
    return;
}
*/
 if(sCheckBox73->Checked==true)      ///huifumima
 {
  sButton60->Enabled=false; //

  ins="select huifumima from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   huifumima=tcon1->adoquery->FieldByName("huifumima")->AsString.Trim();
   }
   if(huifumima!=sEdit23->Text.Trim())
   {
    qstr="update other set huifumima='";
    qstr+=sEdit23->Text.Trim();
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
   }

if(!fkquseryn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton60->Enabled=true; //
    return;
}

 result = USB_RequestEx(Datas);
    if (result == 1)
    {
//    cardpwd=cardidpwdpoc(Datas);
    FrmBar->PBarOpen(15);
 if(re_in_mima_jiemi(sEdit23->Text.Trim())==true){
    ssc=StrToInt(StaticText2->Caption);
    StaticText2->Caption=IntToStr(ssc+1);
    MessageBeep(1);
    USB_BeepExA(3);
      }
    }
    else
     Form1->Caption = "寻卡失败,请放卡片！";
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }

FrmBar->PBarClose();
 sButton60->Enabled=true; //
  return ;
 }
  //    char Datas[8]= {0} ;
  //  String datass,cardpwd1;
  //  int result = USB_RequestEx(Datas);
 //   if (result == 1)
//{
//cardpwd=cardidpwdpoc(Datas);
 if(sCheckBox27->Checked==true)
 {
 if(sButton60->Caption=="卡片恢复"){
 sButton60->Caption="取消";
 zhanting=0;
 MyThread = new sst(true);
 is=0;
// MyThread->Resume();        //开始线程

ins="select * from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   jmshanqu0007=tcon1->adoquery->FieldByName("jmshanqu0007")->AsString.Trim();
   jmshanqu0815=tcon1->adoquery->FieldByName("jmshanqu0815")->AsString.Trim();
   }
   aa=IntToHex(StrToInt(jmshanqu0007),2);
   aa1=IntToHex(StrToInt(jmshanqu0815),2);

        fk = "000102030405060708090A0B0C0D0E0F";
        fk = aa+aa1+"0000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(19, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
 }
   }
 else {
 sButton60->Caption="卡片恢复";
// MyThread->Suspend();     //暂停线程
        fk = "00F80000000000000000000000000000"; //;加密哪个扇区，按位计，0-7为前0-7个0-7为前8-15个

char Data[32] = {0};
        sprintf(Data, "%s", fk);
   bool result = USB_Write(20, 0,Data); //发送16=读写id号，17为开始批量发卡，18为停止批量发卡.
   if (result)
       {
 //   Application->MessageBoxA("发送成功！!!","恭喜",MB_OK);
       }
   zhanting=1;
   for(;zhanting==2;){}
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
   }
 }
 else
 {
 sButton60->Enabled=false; //

if(!fkquseryn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton60->Enabled=true; //
    return;
}

 result = USB_RequestEx(Datas);
    if (result == 1)
    {
//    cardpwd=cardidpwdpoc(Datas);
    FrmBar->PBarOpen(15);
 if(recardjiamiquanzhiqian()==true){
    ssc=StrToInt(StaticText2->Caption);
    StaticText2->Caption=IntToStr(ssc+1);
    MessageBeep(1);
    USB_BeepExA(3);
      }
    }
    else
     Form1->Caption = "寻卡失败,请放卡片！";
 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 }
//}
FrmBar->PBarClose();
 sButton60->Enabled=true; //
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sButton63Click(TObject *Sender)
{
 try
         {
         Form19=new TForm19(Application);
         Form19->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form19;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::DateTimePicker3Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton23->Enabled=false;
sButton26->Enabled=false;

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker3->Time);
ss=FormatDateTime("nn", DateTimePicker3->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker3->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker3->Time=TM;
  }
 


}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker4Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton23->Enabled=false;
sButton26->Enabled=false;

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker4->Time);
ss=FormatDateTime("nn", DateTimePicker4->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker4->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker4->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker5Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton23->Enabled=false;
sButton26->Enabled=false;

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker5->Time);
ss=FormatDateTime("nn", DateTimePicker5->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker5->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker5->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker6Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton23->Enabled=false;
sButton26->Enabled=false;

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker6->Time);
ss=FormatDateTime("nn", DateTimePicker6->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker6->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker6->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton61Click(TObject *Sender)
{
String Temp,ins,fkqid,sector;
sButton61->Enabled=false; //
if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{

ins="select sector from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   sector="FF"+tcon1->adoquery->FieldByName("sector")->AsString.Trim();
   sector=sector.SubString(sector.Length()-1,2);
   }
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton61->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡 
       fkqid=sEdit3->Text+"FFFFFF";
       fkqid = fkqid.SubString(1,6);
       fkqid = "39"+fkqid+sector+"0000000000000000000000";

char Data[32] = {0};
        sprintf(Data, "%s", fkqid);
   bool result = USB_Write(21, 0,Data);
   if (result)
       {
    Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
       }

 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
}
 sButton61->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N17Click(TObject *Sender)
{
String sp,qstr,ins;
sp=sEdit1->Text;
if(sp=="")
  {
  Application->MessageBoxA("编号不能为空！!!","问题",MB_OK);
  return;
  }
ins="select * from userinfo where jijiangguashi='1' ";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount>9)
     {
     Application->MessageBoxA("挂失/解挂列表不能大于10个用户！!!","问题",MB_OK);
     return;
     }

 qstr="update userinfo set [jijiangguashi]='1";

    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(sEdit1->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
    Application->MessageBoxA("添加挂失/解挂列表成功！!!","恭喜",MB_OK);
  
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N18Click(TObject *Sender)
{
 try
         {
         Form20=new TForm20(Application);
         Form20->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form20;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton64Click(TObject *Sender)
{
String ins,floorname,floorno,no,dt,floorselects,jbusyn;
int n;
if(Edit12->Text =="")
  {
  Application->MessageBoxA("请选择编号！!!","问题",MB_OK);
  return;
  }else{}
  dt=Edit12->Text;

Form1->ListView3->Items->Clear();
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
	 Form1->ListView3->Items->Add();
         n=Form1->ListView3->Items->Count;
	// m=ListView1->Items->Count;
  //	if(StrToIntYN(no))
  //	  m=StrToInt(no);
  //	  else
  //	    break;
      	 Form1->ListView3->Items->Item[n-1]->Caption=floorname;
	 Form1->ListView3->Items->Item[n-1]->SubItems->Add(floorno);
	 Form1->ListView3->Items->Item[n-1]->SubItems->Add(floorno);
     ////////////////////////////////////////////////////////////////////
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;

     if(sButton64->Caption=="选择开放楼层")
      {
      StaticText9->Visible=true;
      StringGrid1->Width=417;
      Form1->ListView3->Height=Form1->ListView3->Height+(StringGrid1->Height-457);
      Form1->ListView3->Visible=true;


   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
     {
   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);
   jbusyn=tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
     }
     displayopencard(floorselects);
 ///////////////////////////////////////////////////////////////////
   for(int j=0;j<ListView3->Items->Count;j++)
	   {
		 if(ListView3->Items->Item[j]->SubItems->Strings[1]=="JBUS")
		   {
                     if(jbusyn=="1")
                       Form1->ListView3->Items->Item[j]->Checked=true;
                     else
                       Form1->ListView3->Items->Item[j]->Checked=false;
                   }
           }
///////////////////////////////////////////////////////////////////
      sButton64->Caption="关闭开放楼层";
      }
      else
      {
      StaticText9->Visible=false;
      StringGrid1->Width=561;
      Form1->ListView3->Height=433;
      Form1->ListView3->Visible=false;
      sButton64->Caption="选择开放楼层";
      }


/*
String qstr;
 try
         {
         Form9=new TForm9(Application);
         Form9->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form9;
           Application->ShowException(&exception);
           }
//   tcon->UserSetado->Active =false;
    qstr="update elevatorinfo set [floorselects]='";
//    if(sCheckBox1->Checked==false)
      qstr+=floorselect;
//    else
//      qstr+="FFFFFFFFFFFFFFFF";
    qstr+="'";
    qstr+=" where [no]=";
    qstr+=StrToInt(Edit12->Text);
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
    Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
    floorselect="0";
    */
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker7Change(TObject *Sender)
{

String ss,aa,bb,cc,hh;

sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;   

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker7->Time);
ss=FormatDateTime("nn", DateTimePicker7->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker7->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker7->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker8Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;   

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker8->Time);
ss=FormatDateTime("nn", DateTimePicker8->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker8->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker8->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker9Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;   

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker9->Time);
ss=FormatDateTime("nn", DateTimePicker9->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker9->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker9->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::DateTimePicker10Change(TObject *Sender)
{
String ss,aa,bb,cc,hh;
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;   

TDateTime TM;

hh=FormatDateTime("HH", DateTimePicker10->Time);
ss=FormatDateTime("nn", DateTimePicker10->Time);
aa=ss.SubString(2,1);

if(aa=="1")
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb)+1)+"0";
   if(cc=="60")
      cc="00";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker10->Time=TM;

  }
else
 if((aa=="9")||(aa!="0"))
  {
  bb=ss.SubString(1,1);
  cc=IntToStr(StrToInt(bb))+"0";
  TM =StrToTime(hh+":"+cc+":30");
  DateTimePicker10->Time=TM;
  }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton62Click(TObject *Sender)
{
String cardpwd,readcarddata,readstr,readcarddata1,readcarddata2,a1,a2,a3,a4,a5;

sButton62->Enabled=false; //
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton62->Enabled=true; //
        return;
        }


   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为地址
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton62->Enabled=true; //
    return;
}
////-------------------
//if(inipwdpoc=="1")
//     jiamityn();
///---------------------

Form7->Memo1->Clear();
    char Datas[8]= {0} ;
    String datass;
    int result = USB_RequestEx(Datas);
    if (result == 1)
    {
        cardpwd=cardidpwdpoc(Datas);
        datass = String(Datas).SubString(1,8);
    	Caption = "寻卡成功";
        char Datay[20] = "";
       sprintf(Datay, "%s", cardpwd+datass);
  bool result = USB_Authentication(0,firstsector,Datay);
  if (result)
     {
     Caption = "验证成功";
        //-------------------------------------------------------------------------------------
        char Data[32] = {0};
   bool result = USB_Read(firstsector, 0,Data);
   if (result)
   {
       readcarddata = String(Data).SubString(1,32);
       readstr= readcarddata.SubString(1,12);
       if(readstr=="6D6966617265")
         {
         result = USB_Read(firstsector, 1,Data);
         if (result)
            {
             readcarddata1 = String(Data).SubString(1,32);
            }
         else
            readcarddata1="00000000000000000000000000000000";

         result = USB_Read(firstsector, 2,Data);
   if (result)
   {
       readcarddata2 = String(Data).SubString(1,32);
       if(readcarddata2.SubString(9,8)!="BCC6CAFD")
         readcarddata2="00000000000000000000000000000000";
       Caption = "读取成功";
   }
   else
     readcarddata2="00000000000000000000000000000000";

     if(readcarddata.SubString(13,2)=="0B")
        {

          Form7->Memo1->Lines->Add("解锁卡 ");
          Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
       a1=readcarddata2.SubString(1,2);
       a2=readcarddata2.SubString(3,2);
       a3=readcarddata2.SubString(5,2);
       a4=readcarddata2.SubString(7,2);
      // }
       a5=a4+a3+a2+a1;
       int bf=("0x"+("00"+a5))^00;
       a5=IntToStr(bf);
   Form7->Memo1->Lines->Add("可用的次数为： "+a5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

       }
     if(readcarddata.SubString(13,2)=="06")
        {

          Form7->Memo1->Lines->Add("加解锁卡 ");
          Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");
       a1=readcarddata2.SubString(1,2);
       a2=readcarddata2.SubString(3,2);
       a3=readcarddata2.SubString(5,2);
       a4=readcarddata2.SubString(7,2);
      // }
       a5=a4+a3+a2+a1;
       int bf=("0x"+("00"+a5))^00;
       a5=IntToStr(bf);
   Form7->Memo1->Lines->Add("可用的次数为： "+a5);
   Form7->Memo1->Lines->Add("-------------------------------------------------------------------------------------------------------------");

       }
       }
   }
  }
 }
   try
         {
  //       Form7=new TForm8(Application);
         Form7->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form7;
           Application->ShowException(&exception);
           }
sButton62->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton65Click(TObject *Sender)
{
if(sButton65->Caption=="设置")
    {
    sButton65->Caption="取消";
    sEdit4->Visible=true;
    }
else
    {
    sButton65->Caption="设置";
    sEdit4->Visible=false;
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit4KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox44Click(TObject *Sender)
{
if(sCheckBox44->Checked==true)
   {
    sGroupBox24->Visible=true;
    sGroupBox23->Visible=true;
    sGroupBox27->Visible=true;
    Memo1->Height=Form1->Height-500;
    sGroupBox23->Top=Form1->Height-200;
    sGroupBox24->Top=Form1->Height-260;
    sCheckBox53->Visible=true;
    sCheckBox71->Visible=true;
    sLabel4->Visible=true;
    sCheckBox53->Checked=false;
    sButton66->Visible=true;
    sLabel5->Visible=true;

   }
   else
   {
    sGroupBox24->Visible=false;
    sGroupBox23->Visible=false;
    sGroupBox27->Visible=false;
    sCheckBox53->Visible=false;
    sCheckBox71->Visible=false;
    sLabel4->Visible=false;
    Memo1->Height=Form1->Height-319;
    StaticText9->Visible=false;
      StringGrid1->Width=561;
      Form1->ListView3->Height=433;
      Form1->ListView3->Visible=false;
      sButton64->Caption="选择开放楼层";

    sButton66->Visible=false;
    sLabel5->Visible=false;
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox53Click(TObject *Sender)
{

if(sCheckBox53->Checked==false)
   {
    if(sCheckBox44->Checked==true)
     {
      sButton66->Visible=true;
      sLabel5->Visible=true;
      sLabel4->Visible=true;
     }
   }
   else
   {
   sCheckBox71->Checked=false;
    sButton66->Visible=false;
    sLabel5->Visible=false;
    sLabel4->Visible=false;

   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton66Click(TObject *Sender)
{
sButton66->Enabled=false;
String Temp,Tempr,p,dt,p1,ins,s1,s2,s3,s4,s5,elevatoraddrs,elevatoraddre,keydelay;
String subbcountyn,sbyn,bdyn,bindcardyn,mbitpoc,yxqyn,fangqianfan,fqhbitpoc="0";
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,floorselects,Temp1,gonggongceng,jbusyns;
int  ln,n,d,t;

if(MessageDlg("刷此卡可对控制器进行公共层和开放时段等的设置，不会影响地址。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton66->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
   dt=Edit12->Text.Trim();
   if(dt=="")
       Application->MessageBoxA("请选择控制器！!!","问题",MB_OK);
else
{

   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
   elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
   elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2 );
   n=StrToInt(elevatoraddrs);
   elevatoraddrs=IntToHex(n,2);
   elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
   elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2 );
   subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
   bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
   yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
   fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

   jbusyns="00"+tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
   jbusyns=jbusyns.SubString(jbusyns.Length()-1,2 );

   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);

    Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );

  gonggongceng="000"+tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  gonggongceng=gonggongceng.SubString(gonggongceng.Length()-2,3 );
  gonggongceng=IntToHex(StrToInt(gonggongceng),2);

   }
if(keydelay=="")
   keydelay="02";
if(keydelay=="无")
   keydelay="00";
n=StrToInt(keydelay);
keydelay=IntToHex(n,2);

if(subbcountyn=="1")
        sbyn="5";
else
        sbyn="0";

if(bindcardyn=="1")
        bdyn="e";
else
        bdyn="0";
if(yxqyn=="1")
        mbitpoc="4";
else
        mbitpoc="0";
//mbitpoc这个是按位算的，0和1位不可用（在控制器中被sbyn和bdyn占上了），第2位是 mbitpoc，第3位为
//与是mbitpoc或 的 第3们为0说明功能设置与控制是关联的，为1为否
if(sCheckBox44->Checked==true)
  {
if(sCheckBox53->Checked==true)
   {
   mbitpoc=mbitpoc|"0x8";  //与地址卡关联
   }
  }


mbitpoc=IntToHex(StrToInt(mbitpoc),1);
if(fangqianfan=="无"||fangqianfan=="")
        fqhbitpoc="0";
else if(fangqianfan=="进入")
        fqhbitpoc="1";
else if(fangqianfan=="出去")
        fqhbitpoc="2";


fqhbitpoc=fqhbitpoc|"0x8";  //这个就是只设置功能不设置地址的关键位
fqhbitpoc=IntToHex(StrToInt(fqhbitpoc),2);
/*
s1=ComboBox9->Text;
if(s1=="无"||s1=="")
   s1="00";
s2=ComboBox10->Text;
if(s2=="无"||s2=="")
   s2="00";
s3=ComboBox11->Text;
if(s3=="无"||s3=="")
   s3="00";
s4=ComboBox12->Text;
if(s4=="无"||s4=="")
   s4="00";
s5=ComboBox13->Text;
if(s5=="无"||s5=="")
   s5="00";
*/

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为继电器动作时间
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726501"+keydelay+conpwd+elevatoraddrs+elevatoraddre+sbyn+bdyn+fqhbitpoc+mbitpoc+"00";

  Intotimeyn=IntToHex(StrToInt(Intotimeyn),2);

  Temp1=floorselects+jbusyns+"0"+"0"+Intotimeyn+Intotime1+Intotime2+Intotime3+Intotime4+gonggongceng;
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton18->Enabled=true; //
    return;
}

    if (write14data0s1s(Temp,Temp1)) {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }

}

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
   sButton66->Enabled=true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N19Click(TObject *Sender)
{
for(int j=0;j<ListView3->Items->Count;j++)
        ListView3->Items->Item[j]->Checked=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::N20Click(TObject *Sender)
{
for(int j=0;j<ListView3->Items->Count;j++)
        ListView3->Items->Item[j]->Checked=true;
}
//---------------------------------------------------------------------------
void __fastcall TForm1::sButton67Click(TObject *Sender)
{
String Temp,ins,fkqid,sector,userCID,qstr,ss;
sButton67->Enabled=false; //

ss=sEdit5->Text.Trim();

if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
if(writekztime(ss))
 {
 Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
 }

}
 sButton67->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton68Click(TObject *Sender)
{
 String fkqid;
sButton68->Enabled=false; //
sEdit5->Text="";
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton68->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(22, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
     //  sEdit5->Text=redatapack(fkqid);
       sEdit5->Text=fkqid;
   }


 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 sButton68->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton69Click(TObject *Sender)
{
String Temp,ins,fkqid,sector,userCID,qstr,ss;
sButton69->Enabled=false; //


ss=sEdit6->Text.Trim();

if(MessageDlg("确认写入发卡器？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
if(writekzcount(ss))
 {
 Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
 }
}
 sButton69->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton70Click(TObject *Sender)
{
 String fkqid;
sButton70->Enabled=false; //
sEdit6->Text="";
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton70->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡
char Data[32] = {0};
 //  bool result = USB_Anticoll(Data);
   bool result = USB_Read(23, 0,Data);
   if (result)
   {
       fkqid = String(Data).SubString(1,6);
       sEdit6->Text=fkqid;
   }


 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 sButton70->Enabled=true; //
}
//---------------------------------------------------------------------------


void __fastcall TForm1::FormKeyPress(TObject *Sender, char &Key)
{
//if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    getkey+=Key;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton12KeyPress(TObject *Sender, char &Key)
{
//if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    getkey+=Key;
 if(Key==' ')
   {
    if(getkey=="admin12345 ")
    {
    sGroupBox25->Visible=true;
    getkey="";
    }
    else
    {
    sGroupBox25->Visible=false;
    getkey="";
    }

   }
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sButton71Click(TObject *Sender)
{
String Temp,ss;
Temp=sEdit7->Text.Trim();
ss=enincidbianma(Temp);

sEdit7->Text=ss;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton72Click(TObject *Sender)
{
String Temp,ss;
ss=sEdit7->Text.Trim();

Temp=reincidbianma(ss);

sEdit7->Text=Temp;

}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton73Click(TObject *Sender)
{
String qstr;
sButton73->Enabled=false; //

qstr="update other set usertishi='";
    qstr+=sEdit18->Text;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();

    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);

sButton73->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton74Click(TObject *Sender)
{
String qstr;
sButton74->Enabled=false; //

qstr="update other set usertishi1='";
    qstr+=sEdit18->Text;
    qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();

    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);

sButton74->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton75Click(TObject *Sender)
{
String ins,usertishi;
sButton75->Enabled=false; //
sEdit18->Text="";
ins="select usertishi from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   
   usertishi=tcon1->adoquery->FieldByName("usertishi")->AsString.Trim();
   sEdit18->Text= usertishi;

   }

sButton75->Enabled=true; //   
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton76Click(TObject *Sender)
{
String ins,usertishi1;
sButton75->Enabled=false; //
sEdit18->Text="";
ins="select usertishi1 from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   
   usertishi1=tcon1->adoquery->FieldByName("usertishi1")->AsString.Trim();
   sEdit18->Text= usertishi1;

   }

sButton75->Enabled=true; //
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sButton77Click(TObject *Sender)
{

sButton77->Enabled=false; //

String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
    sButton77->Enabled=true; //
        return;
        }
fkqyn();  //用于防止下发数据时发卡器正在扫描卡

///sqtest();

 try
         {
         Form23=new TForm23(Application);
         Form23->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form23;
           Application->ShowException(&exception);
           }

 if (!USB_DevClose()) {
         Form1->Caption = "关闭串口失败";
         }
 sButton77->Enabled=true; //


}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit19KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit20KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit21KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sEdit22KeyPress(TObject *Sender, char &Key)
{
if ((Key>'9'||Key<'0')&&Key!=8)  //只能输入0-9的数字和回车键
    Key=0;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton78Click(TObject *Sender)
{
String pd="1",qstr;
String Televatoraddrs,Televatoraddre;
int e,f,saddr;
if(sCheckBox71->Checked==false)
     {
      Application->MessageBoxA("没有选择附属地址!!","问题",MB_OK);
      return;
     }

if(Edit12->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}
if(sEdit19->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}

if(sEdit19->Text =="0")
  {
  Application->MessageBoxA("设备地址编号不能为0！!!","问题",MB_OK);
  return;
  }else{}

qstr="update elevatorinfo set [faddr1] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();

if(!numbercongfuyn(sEdit19->Text.Trim()))
{
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
}
  else
  {

e=sEdit19->Text.ToInt();
f=e/8;
saddr=f;
f=f*8;
e=e-f;
f=0;
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	saddr=saddr-1;
	pd="128";
}
pd=IntToHex(StrToInt(pd),2);

Televatoraddrs=IntToStr(saddr);
Televatoraddrs=IntToHex(StrToInt(Televatoraddrs),2);
Televatoraddre=pd;

qstr="update elevatorinfo set [faddr1] = '";
    qstr+=sEdit19->Text;
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////11
sButton78->Enabled=false;
String Temp,Tempr,p,dt,p1,ins,s1,s2,s3,s4,s5,elevatoraddrs,elevatoraddre,keydelay;
String subbcountyn,sbyn,bdyn,bindcardyn,mbitpoc,yxqyn,fangqianfan,fqhbitpoc="0";
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,floorselects,Temp1,gonggongceng,jbusyns;
int  ln,n,d,t;

if(MessageDlg("刷此卡可对控制器进行地址位置的同步，以便发用户卡时选择正确的电梯位置。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton18->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
   dt=Edit12->Text.Trim();
   if(dt=="")
       Application->MessageBoxA("请选择控制器！!!","问题",MB_OK);
else
{

   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
   elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
   elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2 );
   n=StrToInt(elevatoraddrs);
   elevatoraddrs=IntToHex(n,2);
   elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
   elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2 );
   subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
   bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
   yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
   fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

   jbusyns="00"+tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
   jbusyns=jbusyns.SubString(jbusyns.Length()-1,2 );

   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);

    Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );

  gonggongceng="000"+tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  gonggongceng=gonggongceng.SubString(gonggongceng.Length()-2,3 );
  gonggongceng=IntToHex(StrToInt(gonggongceng),2);

   }
if(keydelay=="")
   keydelay="02";
if(keydelay=="无")
   keydelay="00";
n=StrToInt(keydelay);
keydelay=IntToHex(n,2);

if(subbcountyn=="1")
        sbyn="5";
else
        sbyn="0";

if(bindcardyn=="1")
        bdyn="e";
else
        bdyn="0";
if(yxqyn=="1")
        mbitpoc="4";
else
        mbitpoc="0";
//mbitpoc这个是按位算的，0和1位不可用（在控制器中被sbyn和bdyn占上了），第2位是 mbitpoc，第3位为
//与是mbitpoc或 的 第3们为0说明功能设置与控制是关联的，为1为否

mbitpoc=mbitpoc&"0xf7";  //与地址卡关联
if(sCheckBox44->Checked==true)
  {
if(sCheckBox53->Checked==true)
   {
//   mbitpoc=mbitpoc|"0x8";  //与地址卡关联
   }
  }

mbitpoc=IntToHex(StrToInt(mbitpoc),1);
if(fangqianfan=="无"||fangqianfan=="")
        fqhbitpoc="0";
else if(fangqianfan=="进入")
        fqhbitpoc="1";
else if(fangqianfan=="出去")
        fqhbitpoc="2";

/*
s1=ComboBox9->Text;
if(s1=="无"||s1=="")
   s1="00";
s2=ComboBox10->Text;
if(s2=="无"||s2=="")
   s2="00";
s3=ComboBox11->Text;
if(s3=="无"||s3=="")
   s3="00";
s4=ComboBox12->Text;
if(s4=="无"||s4=="")
   s4="00";
s5=ComboBox13->Text;
if(s5=="无"||s5=="")
   s5="00";
*/

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为继电器动作时间
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726501"+keydelay+conpwd+elevatoraddrs+elevatoraddre+sbyn+bdyn+fqhbitpoc+mbitpoc+"01";

  Intotimeyn=IntToHex(StrToInt(Intotimeyn),2);

//  Temp1=floorselects+jbusyns+"0"+"0"+Intotimeyn+Intotime1+Intotime2+Intotime3+Intotime4+gonggongceng;
  Temp1=Televatoraddrs+Televatoraddre+"0000000000000000000000000000";
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton18->Enabled=true; //
    return;
}

    if (write14data0s1s(Temp,Temp1)) {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }

}

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
   sButton78->Enabled=true;
///////////////////////////11
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox71Click(TObject *Sender)
{

if(sCheckBox71->Checked==true)
     {
     sCheckBox53->Checked=false;
     }
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sButton79Click(TObject *Sender)
{
String pd="1",qstr;
String Televatoraddrs,Televatoraddre;
int e,f,saddr;
if(sCheckBox71->Checked==false)
     {
      Application->MessageBoxA("没有选择附属地址!!","问题",MB_OK);
      return;
     }

if(Edit12->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}
if(sEdit20->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}

if(sEdit20->Text =="0")
  {
  Application->MessageBoxA("设备地址编号不能为0！!!","问题",MB_OK);
  return;
  }else{}

qstr="update elevatorinfo set [faddr2] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();

if(!numbercongfuyn(sEdit20->Text.Trim()))
{
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
}
  else
  {

e=sEdit20->Text.ToInt();
f=e/8;
saddr=f;
f=f*8;
e=e-f;
f=0;
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	saddr=saddr-1;
	pd="128";
}
pd=IntToHex(StrToInt(pd),2);

Televatoraddrs=IntToStr(saddr);
Televatoraddrs=IntToHex(StrToInt(Televatoraddrs),2);
Televatoraddre=pd;

qstr="update elevatorinfo set [faddr2] = '";
    qstr+=sEdit20->Text;
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////11
sButton79->Enabled=false;
String Temp,Tempr,p,dt,p1,ins,s1,s2,s3,s4,s5,elevatoraddrs,elevatoraddre,keydelay;
String subbcountyn,sbyn,bdyn,bindcardyn,mbitpoc,yxqyn,fangqianfan,fqhbitpoc="0";
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,floorselects,Temp1,gonggongceng,jbusyns;
int  ln,n,d,t;

if(MessageDlg("刷此卡可对控制器进行地址位置的同步，以便发用户卡时选择正确的电梯位置。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton79->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
   dt=Edit12->Text.Trim();
   if(dt=="")
       Application->MessageBoxA("请选择控制器！!!","问题",MB_OK);
else
{

   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
   elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
   elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2 );
   n=StrToInt(elevatoraddrs);
   elevatoraddrs=IntToHex(n,2);
   elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
   elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2 );
   subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
   bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
   yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
   fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

   jbusyns="00"+tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
   jbusyns=jbusyns.SubString(jbusyns.Length()-1,2 );

   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);

    Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );

  gonggongceng="000"+tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  gonggongceng=gonggongceng.SubString(gonggongceng.Length()-2,3 );
  gonggongceng=IntToHex(StrToInt(gonggongceng),2);

   }
if(keydelay=="")
   keydelay="02";
if(keydelay=="无")
   keydelay="00";
n=StrToInt(keydelay);
keydelay=IntToHex(n,2);

if(subbcountyn=="1")
        sbyn="5";
else
        sbyn="0";

if(bindcardyn=="1")
        bdyn="e";
else
        bdyn="0";
if(yxqyn=="1")
        mbitpoc="4";
else
        mbitpoc="0";
//mbitpoc这个是按位算的，0和1位不可用（在控制器中被sbyn和bdyn占上了），第2位是 mbitpoc，第3位为
//与是mbitpoc或 的 第3们为0说明功能设置与控制是关联的，为1为否

mbitpoc=mbitpoc&"0xf7";  //与地址卡关联
if(sCheckBox44->Checked==true)
  {
if(sCheckBox53->Checked==true)
   {
//   mbitpoc=mbitpoc|"0x8";  //与地址卡关联
   }
  }

mbitpoc=IntToHex(StrToInt(mbitpoc),1);
if(fangqianfan=="无"||fangqianfan=="")
        fqhbitpoc="0";
else if(fangqianfan=="进入")
        fqhbitpoc="1";
else if(fangqianfan=="出去")
        fqhbitpoc="2";

/*
s1=ComboBox9->Text;
if(s1=="无"||s1=="")
   s1="00";
s2=ComboBox10->Text;
if(s2=="无"||s2=="")
   s2="00";
s3=ComboBox11->Text;
if(s3=="无"||s3=="")
   s3="00";
s4=ComboBox12->Text;
if(s4=="无"||s4=="")
   s4="00";
s5=ComboBox13->Text;
if(s5=="无"||s5=="")
   s5="00";
*/

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为继电器动作时间
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726501"+keydelay+conpwd+elevatoraddrs+elevatoraddre+sbyn+bdyn+fqhbitpoc+mbitpoc+"01";

  Intotimeyn=IntToHex(StrToInt(Intotimeyn),2);

//  Temp1=floorselects+jbusyns+"0"+"0"+Intotimeyn+Intotime1+Intotime2+Intotime3+Intotime4+gonggongceng;
  Temp1=Televatoraddrs+Televatoraddre+"0000000000000000000000000000";
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton79->Enabled=true; //
    return;
}

    if (write14data0s1s(Temp,Temp1)) {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }

}

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
   sButton79->Enabled=true;
///////////////////////////11
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton80Click(TObject *Sender)
{
String pd="1",qstr;
String Televatoraddrs,Televatoraddre;
int e,f,saddr;
if(sCheckBox71->Checked==false)
     {
      Application->MessageBoxA("没有选择附属地址!!","问题",MB_OK);
      return;
     }

if(Edit12->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}
if(sEdit21->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}

if(sEdit21->Text =="0")
  {
  Application->MessageBoxA("设备地址编号不能为0！!!","问题",MB_OK);
  return;
  }else{}

qstr="update elevatorinfo set [faddr3] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();

if(!numbercongfuyn(sEdit21->Text.Trim()))
{
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
}
  else
  {

e=sEdit21->Text.ToInt();
f=e/8;
saddr=f;
f=f*8;
e=e-f;
f=0;
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	saddr=saddr-1;
	pd="128";
}
pd=IntToHex(StrToInt(pd),2);

Televatoraddrs=IntToStr(saddr);
Televatoraddrs=IntToHex(StrToInt(Televatoraddrs),2);
Televatoraddre=pd;

qstr="update elevatorinfo set [faddr3] = '";
    qstr+=sEdit21->Text;
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////11
sButton80->Enabled=false;
String Temp,Tempr,p,dt,p1,ins,s1,s2,s3,s4,s5,elevatoraddrs,elevatoraddre,keydelay;
String subbcountyn,sbyn,bdyn,bindcardyn,mbitpoc,yxqyn,fangqianfan,fqhbitpoc="0";
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,floorselects,Temp1,gonggongceng,jbusyns;
int  ln,n,d,t;

if(MessageDlg("刷此卡可对控制器进行地址位置的同步，以便发用户卡时选择正确的电梯位置。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton80->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
   dt=Edit12->Text.Trim();
   if(dt=="")
       Application->MessageBoxA("请选择控制器！!!","问题",MB_OK);
else
{

   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
   elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
   elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2 );
   n=StrToInt(elevatoraddrs);
   elevatoraddrs=IntToHex(n,2);
   elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
   elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2 );
   subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
   bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
   yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
   fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

   jbusyns="00"+tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
   jbusyns=jbusyns.SubString(jbusyns.Length()-1,2 );

   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);

    Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );

  gonggongceng="000"+tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  gonggongceng=gonggongceng.SubString(gonggongceng.Length()-2,3 );
  gonggongceng=IntToHex(StrToInt(gonggongceng),2);

   }
if(keydelay=="")
   keydelay="02";
if(keydelay=="无")
   keydelay="00";
n=StrToInt(keydelay);
keydelay=IntToHex(n,2);

if(subbcountyn=="1")
        sbyn="5";
else
        sbyn="0";

if(bindcardyn=="1")
        bdyn="e";
else
        bdyn="0";
if(yxqyn=="1")
        mbitpoc="4";
else
        mbitpoc="0";
//mbitpoc这个是按位算的，0和1位不可用（在控制器中被sbyn和bdyn占上了），第2位是 mbitpoc，第3位为
//与是mbitpoc或 的 第3们为0说明功能设置与控制是关联的，为1为否

mbitpoc=mbitpoc&"0xf7";  //与地址卡关联
if(sCheckBox44->Checked==true)
  {
if(sCheckBox53->Checked==true)
   {
//   mbitpoc=mbitpoc|"0x8";  //与地址卡关联
   }
  }

mbitpoc=IntToHex(StrToInt(mbitpoc),1);
if(fangqianfan=="无"||fangqianfan=="")
        fqhbitpoc="0";
else if(fangqianfan=="进入")
        fqhbitpoc="1";
else if(fangqianfan=="出去")
        fqhbitpoc="2";

/*
s1=ComboBox9->Text;
if(s1=="无"||s1=="")
   s1="00";
s2=ComboBox10->Text;
if(s2=="无"||s2=="")
   s2="00";
s3=ComboBox11->Text;
if(s3=="无"||s3=="")
   s3="00";
s4=ComboBox12->Text;
if(s4=="无"||s4=="")
   s4="00";
s5=ComboBox13->Text;
if(s5=="无"||s5=="")
   s5="00";
*/

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为继电器动作时间
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726501"+keydelay+conpwd+elevatoraddrs+elevatoraddre+sbyn+bdyn+fqhbitpoc+mbitpoc+"01";

  Intotimeyn=IntToHex(StrToInt(Intotimeyn),2);

//  Temp1=floorselects+jbusyns+"0"+"0"+Intotimeyn+Intotime1+Intotime2+Intotime3+Intotime4+gonggongceng;
  Temp1=Televatoraddrs+Televatoraddre+"0000000000000000000000000000";
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton80->Enabled=true; //
    return;
}

    if (write14data0s1s(Temp,Temp1)) {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }

}

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
   sButton80->Enabled=true;
///////////////////////////11
}
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sButton81Click(TObject *Sender)
{
String pd="1",qstr;
String Televatoraddrs,Televatoraddre;
int e,f,saddr;
if(sCheckBox71->Checked==false)
     {
      Application->MessageBoxA("没有选择附属地址!!","问题",MB_OK);
      return;
     }

if(Edit12->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}
if(sEdit22->Text =="")
  {
  Application->MessageBoxA("设备地址编号不能为空！!!","问题",MB_OK);
  return;
  }else{}

if(sEdit22->Text =="0")
  {
  Application->MessageBoxA("设备地址编号不能为0！!!","问题",MB_OK);
  return;
  }else{}

qstr="update elevatorinfo set [faddr4] = '";
    qstr+=" ";
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();

if(!numbercongfuyn(sEdit22->Text.Trim()))
{
    Application->MessageBoxA("编号重复！!!","问题",MB_OK);
}
  else
  {

e=sEdit22->Text.ToInt();
f=e/8;
saddr=f;
f=f*8;
e=e-f;
f=0;
if(e!=0)
{
 for(int i=1;e>i;i++)
 {
 pd=pd<<1;
 }
}
else
{
	saddr=saddr-1;
	pd="128";
}
pd=IntToHex(StrToInt(pd),2);

Televatoraddrs=IntToStr(saddr);
Televatoraddrs=IntToHex(StrToInt(Televatoraddrs),2);
Televatoraddre=pd;

qstr="update elevatorinfo set [faddr4] = '";
    qstr+=sEdit22->Text;
    qstr+="'";
    qstr+=" where [no] = ";
    qstr+=StrToInt(Edit12->Text);
  //  qstr+="'";
    tcon->adoquery->SQL->Clear();
    tcon->adoquery->SQL->Add(qstr);
    tcon->adoquery->ExecSQL();       //将卡号写入
    tcon->adoquery->Close();
///////////////////////////11
sButton81->Enabled=false;
String Temp,Tempr,p,dt,p1,ins,s1,s2,s3,s4,s5,elevatoraddrs,elevatoraddre,keydelay;
String subbcountyn,sbyn,bdyn,bindcardyn,mbitpoc,yxqyn,fangqianfan,fqhbitpoc="0";
String Intotimeyn,Intotime1,Intotime2,Intotime3,Intotime4,floorselects,Temp1,gonggongceng,jbusyns;
int  ln,n,d,t;

if(MessageDlg("刷此卡可对控制器进行地址位置的同步，以便发用户卡时选择正确的电梯位置。 ",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
{
String scom=Form1->ComboBox1->Text;
       if(scom=="")
       scom="1";
bool reresult = USB_DevInit(StrToInt(scom));
     if (!reresult){
    	Form1->Caption = "打开串口失败";
        sButton81->Enabled=true; //
        return;
        }
////-------------------
if(inipwdpoc=="1")
     jiamityn();
///---------------------
   dt=Edit12->Text.Trim();
   if(dt=="")
       Application->MessageBoxA("请选择控制器！!!","问题",MB_OK);
else
{

   ins="select * from elevatorinfo where [no]=";
   ins+=dt;
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(tcon->adoquery->RecordCount!=0)
   {
   keydelay=tcon->adoquery->FieldByName("keydelay")->AsString.Trim();
   elevatoraddrs="00"+tcon->adoquery->FieldByName("elevatoraddrs")->AsString.Trim();
   elevatoraddrs=elevatoraddrs.SubString(elevatoraddrs.Length()-1,2 );
   n=StrToInt(elevatoraddrs);
   elevatoraddrs=IntToHex(n,2);
   elevatoraddre="00"+tcon->adoquery->FieldByName("elevatoraddre")->AsString.Trim();
   elevatoraddre=elevatoraddre.SubString(elevatoraddre.Length()-1,2 );
   subbcountyn=tcon->adoquery->FieldByName("subbcountyn")->AsString.Trim();
   bindcardyn=tcon->adoquery->FieldByName("bindcardyn")->AsString.Trim();
   yxqyn=tcon->adoquery->FieldByName("yxqyn")->AsString.Trim();
   fangqianfan=tcon->adoquery->FieldByName("fangqianfan")->AsString.Trim();

   jbusyns="00"+tcon->adoquery->FieldByName("jbusyns")->AsString.Trim();
   jbusyns=jbusyns.SubString(jbusyns.Length()-1,2 );

   floorselects=tcon->adoquery->FieldByName("floorselects")->AsString.Trim()+"0000000000000000";
   floorselects=floorselects.SubString(1,16);

    Intotimeyn=tcon->adoquery->FieldByName("Intotimeyn")->AsString.Trim();
 if(Intotimeyn=="")
     Intotimeyn="0";
 Intotime1="00"+tcon->adoquery->FieldByName("Intotime1")->AsString.Trim();
  Intotime1=Intotime1.SubString(Intotime1.Length()-1,2 );
 Intotime2="00"+tcon->adoquery->FieldByName("Intotime2")->AsString.Trim();
  Intotime2=Intotime2.SubString(Intotime2.Length()-1,2 );
 Intotime3="00"+tcon->adoquery->FieldByName("Intotime3")->AsString.Trim();
  Intotime3=Intotime3.SubString(Intotime3.Length()-1,2 );
 Intotime4="00"+tcon->adoquery->FieldByName("Intotime4")->AsString.Trim();
  Intotime4=Intotime4.SubString(Intotime4.Length()-1,2 );

  gonggongceng="000"+tcon->adoquery->FieldByName("gonggongceng")->AsString.Trim();
  gonggongceng=gonggongceng.SubString(gonggongceng.Length()-2,3 );
  gonggongceng=IntToHex(StrToInt(gonggongceng),2);

   }
if(keydelay=="")
   keydelay="02";
if(keydelay=="无")
   keydelay="00";
n=StrToInt(keydelay);
keydelay=IntToHex(n,2);

if(subbcountyn=="1")
        sbyn="5";
else
        sbyn="0";

if(bindcardyn=="1")
        bdyn="e";
else
        bdyn="0";
if(yxqyn=="1")
        mbitpoc="4";
else
        mbitpoc="0";
//mbitpoc这个是按位算的，0和1位不可用（在控制器中被sbyn和bdyn占上了），第2位是 mbitpoc，第3位为
//与是mbitpoc或 的 第3们为0说明功能设置与控制是关联的，为1为否

mbitpoc=mbitpoc&"0xf7";  //与地址卡关联
if(sCheckBox44->Checked==true)
  {
if(sCheckBox53->Checked==true)
   {
//   mbitpoc=mbitpoc|"0x8";  //与地址卡关联
   }
  }

mbitpoc=IntToHex(StrToInt(mbitpoc),1);
if(fangqianfan=="无"||fangqianfan=="")
        fqhbitpoc="0";
else if(fangqianfan=="进入")
        fqhbitpoc="1";
else if(fangqianfan=="出去")
        fqhbitpoc="2";

/*
s1=ComboBox9->Text;
if(s1=="无"||s1=="")
   s1="00";
s2=ComboBox10->Text;
if(s2=="无"||s2=="")
   s2="00";
s3=ComboBox11->Text;
if(s3=="无"||s3=="")
   s3="00";
s4=ComboBox12->Text;
if(s4=="无"||s4=="")
   s4="00";
s5=ComboBox13->Text;
if(s5=="无"||s5=="")
   s5="00";
*/

   ///*************************************************USB发卡器用
   /*
;扇区1块1主卡设置，00h 01h 02h 03h 04h 05h 为  Master 4D,61,73,74,65,72
;06h   为功能选择，01为设置控制器地址和密码用，02为设置时间年月日时分秒用
;07h  为继电器动作时间
;08h 09h 0ah   为密码 共六位
;0bh 0ch 0dh 0eh 0fh 为五种权限，每个卡可选其一种权限，与其中任意一个相同就可进入            */
  Temp="6D696661726501"+keydelay+conpwd+elevatoraddrs+elevatoraddre+sbyn+bdyn+fqhbitpoc+mbitpoc+"01";

  Intotimeyn=IntToHex(StrToInt(Intotimeyn),2);

//  Temp1=floorselects+jbusyns+"0"+"0"+Intotimeyn+Intotime1+Intotime2+Intotime3+Intotime4+gonggongceng;
  Temp1=Televatoraddrs+Televatoraddre+"0000000000000000000000000000";
if(!fkqyn()){
if (!USB_DevClose())
   Caption = "关闭串口失败";
sButton81->Enabled=true; //
    return;
}

    if (write14data0s1s(Temp,Temp1)) {
      bool result = USB_BeepExA(3);
      Application->MessageBoxA("写卡成功！!!","恭喜",MB_OK);
      }

}

 if (!USB_DevClose())
         Caption = "关闭串口失败";
}
FrmBar->PBarClose();
   sButton81->Enabled=true;
///////////////////////////11
}
}
//---------------------------------------------------------------------------


void __fastcall TForm1::sCheckBox73Click(TObject *Sender)
{
String ins,qstr;
 if(sCheckBox73->Checked==true)      ///huifumima
 {
  sButton60->Caption="其他卡片恢复";
  sEdit23->Enabled=true;
  ins="select huifumima from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
   if(tcon1->adoquery->RecordCount!=0)
   {
   sEdit23->Text=tcon1->adoquery->FieldByName("huifumima")->AsString.Trim();
   }

   qstr="update other set huifumimayn='1'";
//    qstr+=sEdit23->Text.Trim();
 //   qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
 }
 else
 {
   sButton60->Caption="老卡片恢复";
    qstr="update other set huifumimayn='0'";
//    qstr+=sEdit23->Text.Trim();
 //   qstr+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
 sEdit23->Enabled=false;
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox45Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox46Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox47Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox48Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox49Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox50Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox51Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox52Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox43Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox36Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox37Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox38Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox39Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox40Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox41Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox42Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;           
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox35Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;

if(sCheckBox35->Checked==true)
 {
  sGroupBox12->Visible=true;
 }
 else
 {
  sGroupBox12->Visible=false;
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox28Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox29Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox30Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox31Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox32Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox33Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox34Click(TObject *Sender)
{
sButton23->Enabled=false;
sButton26->Enabled=false;        
}
//---------------------------------------------------------------------------


void __fastcall TForm1::N30Click(TObject *Sender)
{
 try
         {
         Form24=new TForm24(Application);
         Form24->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form24;
           Application->ShowException(&exception);
           }
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sCheckBox72Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::sCheckBox26Click(TObject *Sender)
{
sButton18->Enabled=false;
sButton66->Enabled=false;
if(sButton8->Enabled==true)
sButton10->Enabled=false;        
}
//---------------------------------------------------------------------------



void __fastcall TForm1::sCheckBox2MouseUp(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
if(sCheckBox2->Checked==true)
{
Application->MessageBoxA("选择动态码功能后，此地址号只能刷唯一设备！！","信息",MB_OK);
}
}




//---------------------------------------------------------------------------

//---------------------HID USB 数据写入函数-------------------------
char __fastcall TForm1::DataWrite(unsigned char data1[],AnsiString data2)
{
  int I;
  unsigned char Buf[65],BUFF[65];
  unsigned char number[65],newData2[28];
  unsigned int Written;
  unsigned int ToWrite;
  AnsiString Str;
  AnsiString S;
  char *ChArr;
  unsigned char aa;
  int len = 80,sizeStr;
  ChArr = data2.c_str();
     for (sizeStr = 0;sizeStr < len;sizeStr++){
         if (ChArr[sizeStr] =='\0'){
           len = 1;
            sizeStr--;
         }
     }

  for (int J = 1;J < sizeStr / 2 + 1;J++){
    aa =asciiChange(ChArr[J*2-2]);
     newData2[J-1] =  aa;
      aa = aa<<4;
      newData2[J-1] = aa;
      newData2[J-1] = aa + asciiChange(ChArr[J*2-1]);
  }

  for (int I = 1;I < sizeStr / 2 + 8;I++){
  if (I < 8) {
   number[I] = StrToIntDef(data1[I-1], 0);
   } else {
     number[I] = StrToIntDef(newData2[I-8], 0);
   }
  }

  if(CurrentDevice != NULL)
  {
    Buf[0] = StrToIntDef("$" + ReportID->Text, 0);
    ToWrite = CurrentDevice->Caps.OutputReportByteLength;
    for(I = 1; I < ToWrite; I++)
    {
      if (I < sizeStr / 2 + 8){
        Buf[I] = StrToIntDef(number[I], 0);
      } else {
         Buf[I] = 0xFF;
      }
    }
    CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
    CurrentDevice->ReadFile(BUFF, ToWrite, Written);    //读取
     /*
     I = 5;
     while (BUFF[1] != 0xBB){
      CurrentDevice->ReadFile(BUFF, ToWrite, Written);   // 读
      I--;
      if (I < 1){
         BUFF[1] = 0xBB;
      }
    }
    */
    aa = BUFF[7];
    Str.sprintf("W %02X  ", Buf[0]);
    if (I > -30){
     for(I = 1; I < Written; I++)
       Str += S.sprintf("%02X ", Buf[I]);
       HistoryListBox->ItemIndex = HistoryListBox->Items->Add(Str);
     }
    }
    return aa;
}
//-------------------带返回的  读取数据---------
char __fastcall TForm1::ReadData(char address) {
   unsigned char Buf[65],BUFF[65];
   unsigned int ToWrite,Written;
   unsigned char newData[8]={0x00,0xaa,0x01,0x01,0x01,0x01,0x01,0xFF};
   unsigned char value;
   int I;
   newData[6] = address;
    if(CurrentDevice != NULL)
  {
    ToWrite = CurrentDevice->Caps.OutputReportByteLength;
    for(I = 0; I < ToWrite; I++)
    {
      if (I < 8){
        Buf[I] = StrToIntDef(newData[I], 0);
      } else {
         Buf[I] = 0xFF;
      }
     }
     CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
     CurrentDevice->ReadFile(BUFF, ToWrite, Written);    //读取
     value = BUFF[7];
    }
    return value;
}


//-------------------擦除数据  擦除 01为全擦 02为只擦数据 ---------
void __fastcall TForm1::erase(char number){
   unsigned char Buf[65],BUFF[65];
   unsigned int ToWrite,I,Written;
   unsigned char newData[20]={0x00,0xaa,0x01,0x01,0x01,0x03,0x01,0xFF,0x65,0x72,0x61,0x73,0x65,0x02};
   newData[13] = number;
    if(CurrentDevice != NULL)
  {
    ToWrite = CurrentDevice->Caps.OutputReportByteLength;
    for(I = 0; I < ToWrite; I++)
    {
      if (I < 22){
        Buf[I] = StrToIntDef(newData[I], 0);
      } else {
         Buf[I] = 0xFF;
      }
     }
     CurrentDevice->WriteFile(Buf, ToWrite, Written);   // 写
     CurrentDevice->ReadFile(BUFF, ToWrite, Written);   // 读
     if (BUFF[7] != 0x00)
        Application->MessageBoxA("擦除返回失败!!","问题",MB_OK);
    }
}

//---------------ascii码表  序号转换16进制--------------------------
char __fastcall TForm1::asciiChange(char sec){
     char number;
     if (sec < 0x40) {
     number = sec - 0x30;
     }else {
      switch(sec){
       case 0x41:
          number = 0x0A;
          break;
       case 0x42:
           number = 0x0B;
            break;
       case 0x43:
            number = 0x0C;
            break;
       case 0x44:
            number = 0x0D;
           break;
        case 0x45:
            number = 0x0E;
           break;
        default:
             number = 0x0F;
       break;
      }
     }
     return number;
}
///////////数组转换成字符串 编码
int __fastcall TForm1::bianhaoAction (char add1,char add2){
   int number,number2;
     switch(add1){
       case 0x00:
          number = 0;
          break;
       case 0x01:
           number = 4;
            break;
       case 0x10:
            number = 8;
            break;
        default:
             number = 12;
       break;
      }
      switch(add2){
       case 0x00:
          number2 = 0;
          break;
       case 0x01:
           number2 = 1;
            break;
       case 0x10:
            number2 = 2;
            break;
        default:
             number2 = 3;
       break;
      }
      number = number +number2;
  return number;
}

 //判断字节 第十六位是否为1
char __fastcall TForm1::judgeFunction(unsigned char add[],int acc) {
  char add1=0,add2 = 0,add3 = 0;
  char add4;
  if ((acc % 8) > 0 || acc < 8) {
   add2 = acc / 8; 
   add3 = acc % 8;   
  } else {
   add2 = acc / 8 - 1;
  }
  add4 = add3 > 4 || add3 == 0 ? add[add2] % 16 : add[add2] / 16;
  add3 = acc % 4;
  switch (add3){
  case 0:
     add1 = (add4 / 8) % 2;
    break;
  case 1:
    add1 = add4 % 2;
    break;
  case 2:
    add1 =  (add4 % 4) / 2;   
    break;
  default:
    add1 = (add4 / 4) % 2;   
  }
  return add1;
}




