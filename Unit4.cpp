//---------------------------------------------------------------------------
#define NO_WIN32_LEAN_AND_MEAN
#include <vcl.h>
#include <vcl\registry.hpp>
#include <Registry.hpp>
#include <stdio.h>
#include <windows.h>
#include <vcl.h>
#include <io.h>
#include <dos.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit4.h"
#pragma package(smart_init)
extern fun_USB_RequestEx USB_RequestEx;

extern HANDLE hComm;  // 将给串行端口使用的Handle声明
extern String seeddata(String ss);
extern String cardidpwdpoc(char Datas[8]);
extern "C" BOOL pascal cardjiami(String cardpwd);
extern void delay(DWORD DT);
extern int zhanting,is;
//---------------------------------------------------------------------------

//   Important: Methods and properties of objects in VCL can only be
//   used in a method called using Synchronize, for example:
//
//      Synchronize(UpdateCaption);
//
//   where UpdateCaption could look like:
//
//      void __fastcall sst::UpdateCaption()
//      {
//        Form1->Caption = "Updated in a thread";
//      }
//------------------------------------------------------------#define NO_WIN32_LEAN_AND_MEAN---------------

__fastcall sst::sst(bool CreateSuspended)
        : TThread(CreateSuspended)
{
     //   Priority = tpNormal;
     //   FreeOnTerminate = false;
}
//---------------------------------------------------------------------------
void sst::SetName()
{
        THREADNAME_INFO info;
        info.dwType = 0x1000;
        info.szName = "ssta";
        info.dwThreadID = -1;
        info.dwFlags = 0;

        __try
        {
                 RaiseException( 0x406D1388, 0, sizeof(info)/sizeof(DWORD),(DWORD*)&info );
        }
        __except (EXCEPTION_CONTINUE_EXECUTION)
        {
        }
}
//------------------------------------------------------------------------------------
/////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////
//---------------------------------------------------------------------------
void __fastcall sst::Execute()
{
int result;
String cardpwd1,cardpwd;

    is=is+1;
  //  Form1->sLabel3->Caption=IntToStr(is);
    
/*
String p1;
//   tt="slfsldf";
//////////////////////////////////////////////////////串口自动选择处理
  for(int i=1;i<=16;i++)
{
  char *ComNo;
  DCB dcb;
//  HANDLE hComm; // 将给串行端口使用的Handle声明
  String Temp;
  //取得要打开的通信端口
  Temp = "COM"+IntToStr(i);
 // Temp = "COM2";
  // 转换到指针类型的Char
  ComNo = Temp.c_str();
  hComm = CreateFile(ComNo,GENERIC_READ | GENERIC_WRITE,
       0, NULL, OPEN_EXISTING, 0, 0);
  if (hComm == INVALID_HANDLE_VALUE) // 如果COM未打开
  {
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
    MessageBox (0, "通信端口设置错误!!!","Set Error",MB_OK);
    CloseHandle(hComm);
    break;
    }
   //--------------------------------------------------------------
//发送   AA BB 05 00 80 00 AA 00 2F    读取 AA BB 04 00 AA 55 FB
   //-------------------------------------------------------------
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
Temp="AABB05008000AA00";
p1=seeddata(Temp);
if(p1=="0400AA55FB")
{    //    MessageBox(0, "请放卡片！!!","rrr",MB_OK);
 Form1->Caption="COM"+IntToStr(i);
         return;
}
else
   if (hComm!=INVALID_HANDLE_VALUE) CloseHandle(hComm);
//Tempr=p1.SubString(5,32);
////////////////////////////////////////////////////////////////////////////////////////////
/*
       for(int j=1;j<=16;j++)
     {
     if(Terminated==true)
      {
      if (hComm!=INVALID_HANDLE_VALUE) CloseHandle(hComm);
       return;
      }
      addr=IntToStr(j);
      outdata="08c5050103530000";      //LED1
      sp=outser(addr,outdata);
      if(sp.SubString(5,8)=="C5050100")
      {
      comport=Temp;
      Temp="comporttestok";
      break;
      }
     }
 //  sp=outser(addr,outdata);
 //  CheckListBox1->Items->Add(Temp) ;
 //  ComboBox1->Items->Add(Temp);
   //-----------------------------------------------------------------
   }
   if(Temp!="comporttestok")
   {
   if (hComm!=INVALID_HANDLE_VALUE) CloseHandle(hComm);
   }
   else  break;

///*
}
/////////////////////////////////////////////////////////////////////////
        //---- Place thread code here ----
}
*/
}
//---------------------------------------------------------------------------
 