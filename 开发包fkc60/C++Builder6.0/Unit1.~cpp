//---------------------------------------------------------------------------

#include <vcl.h>
#include <stdio.h>
#include <windows.h>
#pragma hdrstop

#include "Unit1.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TForm1 *Form1;
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

////////////////////////////////////////////////////////////////////////////////
extern "C" BOOL pascal hexYN(String aa)
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
                                if(aa[i]!=' ')
                  {
				  return FALSE;
                  }


}
return TRUE;
}
////////////////////////////////////////////////////////////////////////////////
//---------------------------------------------------------------------------
__fastcall TForm1::TForm1(TComponent* Owner)
        : TForm(Owner)
{

}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button2Click(TObject *Sender)
{
    if (Button2->Caption == "打开串口")
    {
     bool result = USB_DevInit(StrToInt(Edit1->Text));
     if (result)
        Button2->Caption = "关闭串口";
     else
    	Caption = "打开串口失败";
    return ;
    }
    if (Button2->Caption == "关闭串口")
    {
      if (USB_DevClose())
         Button2->Caption = "打开串口";
      else
         Caption = "关闭串口失败";
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button4Click(TObject *Sender)
{
  bool result = USB_BeepExA(StrToInt(Edit2->Text));
    if (result)
    	Caption = "发声成功";
    else
    	Caption = "发声失败";
}
//---------------------------------------------------------------------------
void __fastcall TForm1::FormShow(TObject *Sender)
{
  PageControl1->ActivePageIndex = 0;

  dllHandle = LoadLibrary("fkc60.dll");
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
}
//---------------------------------------------------------------------------

void __fastcall TForm1::FormClose(TObject *Sender, TCloseAction &Action)
{
    FreeLibrary(dllHandle);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button1Click(TObject *Sender)
{
    char Data[8]= {0} ;
    int result = USB_RequestEx(Data);
    if (result == 1)
    {
        Edit3->Text = String(Data).SubString(1,8);
    	Caption = "寻卡成功";
    }
    else
    	Caption = "寻卡失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button3Click(TObject *Sender)
{
  char Data[20] = "";
       sprintf(Data, "%s", Edit4->Text+Edit3->Text);
  bool result = USB_Authentication(RadioGroup1->ItemIndex,StrToInt(Edit5->Text),Data);
  if (result)
     Caption = "验证密码成功";
  else
     Caption = "验证密码失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button5Click(TObject *Sender)
{
   char Data[32] = {0};
   bool result = USB_Read(StrToInt(Edit5->Text), StrToInt(Edit6->Text),Data);
   if (result)
   {
       Edit7->Text = String(Data).SubString(1,32);
       Caption = "读成功";
   }
   else
       Caption = "读失败";
}
//---------------------------------------------------------------------------


void __fastcall TForm1::Button6Click(TObject *Sender)
{
   char Data[32] = {0};
        sprintf(Data, "%s", Edit7->Text);
   bool result = USB_Write(StrToInt(Edit5->Text), StrToInt(Edit6->Text),Data);
   if (result)
      Caption = "写成功";
   else
      Caption = "写失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button7Click(TObject *Sender)
{
   char Data[8] = {0};
        sprintf(Data, "%s", Edit9->Text);
   bool result =  USB_ValueInit(StrToInt(Edit5->Text),StrToInt(Edit6->Text),Data);
   if (result)
      Caption = "初始化成功";
   else
      Caption = "初始化失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Edit8KeyUp(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
   if (Edit8->Text != "")
   {
       String sHex = IntToHex(StrToInt64(Edit8->Text),8);
       Edit9->Text = sHex.SubString(7,2)+sHex.SubString(5,2)+sHex.SubString(3,2)+sHex.SubString(1,2);
   }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button8Click(TObject *Sender)
{
   char Data[8] = {0};
        sprintf(Data, "%s", Edit9->Text);
   bool result = USB_Value(StrToInt(Edit5->Text), StrToInt(Edit6->Text), 1, Data);
   if (result)
      Caption = "加值成功";
   else
      Caption = "加值失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button9Click(TObject *Sender)
{
   char Data[8] = {0};
        sprintf(Data, "%s", Edit9->Text);
   bool result = USB_Value(StrToInt(Edit5->Text), StrToInt(Edit6->Text), 0, Data);
   if (result)
      Caption = "加值成功";
   else
      Caption = "加值失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button10Click(TObject *Sender)
{
   char Data[32] = {0};
   bool result = USB_Read(StrToInt(Edit5->Text), StrToInt(Edit6->Text),Data);
   if (result)
   {
       Edit10->Text = String(Data).SubString(1,8);
       Caption = "读成功";
   }
   else
       Caption = "读失败";        
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button11Click(TObject *Sender)
{
   bool result = USB_BackUp(StrToInt(Edit5->Text), StrToInt(Edit6->Text), StrToInt(Edit11->Text));
   if (result)
       Caption = "备份钱包成功";
   else
       Caption = "备份钱包失败";
}
//---------------------------------------------------------------------------
void __fastcall TForm1::Request(int style)
{
    Label10->Caption = "";
    int result = -1;
     result = USB_Request(style);
    switch (result)
    {
        case -1:
                Label10->Caption = "通讯错误";
                break;
        case 0:
                Label10->Caption = "无卡或数据错误";
                break;
        case 1:
                Label10->Caption = "卡类型：Mifare_UltraLight";
                break;
        case 2:
                Label10->Caption = "卡类型：Mifare_One(S50)";
                break;
        case 3:
                Label10->Caption = "卡类型：Mifare_One(S70)";
                break;
        case 4:
                Label10->Caption = "卡类型：Mifare_Pro(X)";
                break;
        case 5:
                Label10->Caption = "卡类型：Mifare_DESFire";
    }
}

void __fastcall TForm1::Button12Click(TObject *Sender)
{
  Request(0);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button13Click(TObject *Sender)
{
  Request(1);    
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button14Click(TObject *Sender)
{
    char Data[8] = {0};
    bool result = USB_Anticoll(Data);
    if (result)
       Edit3->Text = String(Data).SubString(1,8);
    else
       Caption = "防冲撞失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button15Click(TObject *Sender)
{
    char Data[8]={0};
         sprintf(Data, "%s", Edit3->Text);
    bool result = USB_Select(Data);
    if (result)
        Caption = "选定卡成功";
    else
        Caption = "选定卡失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button16Click(TObject *Sender)
{
   if (USB_Halt())
      Caption = "休眠卡成功";
   else
      Caption = "休眠卡失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button17Click(TObject *Sender)
{
    if (ClearData(StrToInt(Edit1->Text),StrToInt(Edit12->Text)))
       Caption = "清除数据成功";
    else
       Caption = "清除数据失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button18Click(TObject *Sender)
{
    char Data[16] = {0};
    bool result = GetTimeExA(StrToInt(Edit1->Text),StrToInt(Edit12->Text),Data);
    if (result)
    {
        Edit13->Text = String(Data).SubString(1,16);
        Caption = "读取时间成功";
    }
    else
        Caption = "读取时间失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button19Click(TObject *Sender)
{
  char Data[14] = {0};
       sprintf(Data,"%s",Edit13->Text.SubString(3,14));
    bool result = SetTimeExA(StrToInt(Edit1->Text),StrToInt(Edit12->Text),Data);
    if (result)
        Caption = "下传时间成功";
    else
        Caption = "下传时间失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::PageControl1Change(TObject *Sender)
{
   if (PageControl1->ActivePageIndex == 1)
      Button2->Enabled = false;
   else
      Button2->Enabled = true;
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button20Click(TObject *Sender)
{
    if (SetManagerCard(StrToInt(Edit1->Text),StrToInt(Edit12->Text),StrToInt(Edit14->Text)))
       Caption = "下传管理卡成功";
    else
       Caption = "下传管理卡失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button21Click(TObject *Sender)
{
    Edit14->Text = IntToStr(GetManagerCard(StrToInt(Edit1->Text),StrToInt(Edit12->Text)));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button22Click(TObject *Sender)
{
    bool result = SetMaxConsume(StrToInt(Edit1->Text),StrToInt(Edit12->Text),StrToInt(FloatToStr(StrToFloat(MaskEdit1->Text)*100)));
    if (result)
       Caption = "下传一次最大消费额成功";
    else
       Caption = "下传一次最大消费额失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button23Click(TObject *Sender)
{
   double Data = GetMaxConsume(StrToInt(Edit1->Text),StrToInt(Edit12->Text))/100.00;
   MaskEdit1->Text = Format("%09.2f",ARRAYOFCONST((Data)));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button24Click(TObject *Sender)
{
    bool result = SetMaxSumConsume(StrToInt(Edit1->Text),StrToInt(Edit12->Text),StrToInt(FloatToStr(StrToFloat(MaskEdit2->Text)*100)));
    if (result)
       Caption = "下传最大消费总额成功";
    else
       Caption = "下传最大消费总额失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button25Click(TObject *Sender)
{
   double Data = GetMaxSumConsume(StrToInt(Edit1->Text),StrToInt(Edit12->Text))/100.00;
   MaskEdit2->Text = Format("%11.2f",ARRAYOFCONST((Data)));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button26Click(TObject *Sender)
{
    bool result = SetSaleStyle(StrToInt(Edit1->Text),StrToInt(Edit12->Text),ComboBox1->ItemIndex);
    if (result)
       Caption = "下传消费类别成功";
    else
       Caption = "下传消费类别失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button27Click(TObject *Sender)
{
    ComboBox1->ItemIndex = GetSaleStyle(StrToInt(Edit1->Text),StrToInt(Edit12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button28Click(TObject *Sender)
{
    bool result = SetMachStyle(StrToInt(Edit1->Text),StrToInt(Edit12->Text),ComboBox2->ItemIndex);
    if (result)
       Caption = "下传机器类别成功";
    else
       Caption = "下传机器类别失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button29Click(TObject *Sender)
{
    ComboBox2->ItemIndex = GetMachStyle(StrToInt(Edit1->Text),StrToInt(Edit12->Text));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button30Click(TObject *Sender)
{
    Edit15->Text = FloatToStr(GetSumConsume(StrToInt(Edit1->Text),StrToInt(Edit12->Text))/100.00);
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button31Click(TObject *Sender)
{
    Edit15->Text = IntToStr(GetRecordCount(StrToInt(Edit1->Text),StrToInt(Edit12->Text)));
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button32Click(TObject *Sender)
{
   bool result = SetMachNo(StrToInt(Edit1->Text),StrToInt(Edit12->Text),StrToInt(Edit16->Text));
   if (result)
      Caption = "下传机器编号成功";
   else
      Caption = "下传机器类别失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button33Click(TObject *Sender)
{
    bool result = InitMach(StrToInt(Edit1->Text),StrToInt(Edit12->Text));
    if (result)
       Caption = "握手机器成功";
    else
       Caption = "握手机器失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button34Click(TObject *Sender)
{
    bool result = RestoreMachEx(StrToInt(Edit1->Text));
    if (result)
       Caption = "复位机器成功";
    else
       Caption = "复位机器失败";
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Button35Click(TObject *Sender)
{
    char Data[67] = {0};
    int StartRec = StrToInt(Edit17->Text);
    int StopRec = StrToInt(Edit18->Text);
    for (int i = StartRec; i <= StopRec; i++)
    {
       memset(Data,0,sizeof(Data));
       if (GetRecord(i,Data))
       {
          Memo1->Lines->Add(IntToStr(i)+","+String(Data));
          Label10->Caption = IntToStr(i);
       }
       else
       {
          MessageBox(0,"采集数据失败","系统信息",MB_OK + MB_ICONINFORMATION);
          break;
       }
    }
}
//---------------------------------------------------------------------------

void __fastcall TForm1::Memo1DblClick(TObject *Sender)
{
    Memo1->Lines->Clear();
}
//---------------------------------------------------------------------------



void __fastcall TForm1::Button37Click(TObject *Sender)
{
String ins,ts="",len,lcs,tsa,tsb,tsc,dcs,sins;
int slen,slen1,tsi,tsi1=0;
ins=Edit19->Text.Trim();
if(!hexYN(ins))
     return;
for   (int   i=1;i <=ins.Length();++i){
        if   (ins[i]!=' ')
               ts=ts+ins[i];
       }
  slen=ts.Length()/2;
  slen1=256-slen;
  len=IntToHex(slen,2);
  lcs=IntToHex(slen1,2);
for (int i=1;i<=ts.Length();i=i+2)
{tsa=ts.SubString(i,2).Trim();
 tsb="0x"+tsa;
 tsi1=tsi1+StrToInt(tsb);
}
// tsi1=tsi1+StrToInt(tsb);
 tsc=IntToHex(tsi1,2);
 tsc=tsc.SubString(tsc.Length()-1,2);
 tsb="0x"+tsc;
 tsi1=StrToInt(tsb);
 tsi=StrToInt(tsi1);
 tsi=256-tsi;
 dcs=IntToHex(tsi,2);

sins="00 00 FF "+len+" "+lcs;
for (int i=1;i<=ts.Length();i=i+2)
{tsa=ts.SubString(i,2).Trim();
 sins=sins+" "+tsa;
}
sins=sins+" "+dcs+" "+"00";
Edit20->Text=sins;
}
//---------------------------------------------------------------------------

