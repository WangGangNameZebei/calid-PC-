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

extern HANDLE hComm;  // �������ж˿�ʹ�õ�Handle�����ŧi
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
//////////////////////////////////////////////////////�����Զ�ѡ����
  for(int i=1;i<=16;i++)
{
  char *ComNo;
  DCB dcb;
//  HANDLE hComm; // �������ж˿�ʹ�õ�Handle�����ŧi
  String Temp;
  //��ȡ��Ҫ�򿪵�ͨ�Ŷ˿�
  Temp = "COM"+IntToStr(i);
 // Temp = "COM2";
  // ת����ָ�����͵�Char
  ComNo = Temp.c_str();
  hComm = CreateFile(ComNo,GENERIC_READ | GENERIC_WRITE,
       0, NULL, OPEN_EXISTING, 0, 0);
  if (hComm == INVALID_HANDLE_VALUE) // �p���COMδ��
  {
  //  MessageBox(0, "��ͨ�Ŷ˿ڴ���!!","Comm Error",MB_OK);
   }else
   {
   //-------------------------------------------------------------------
   // ��dcb��ַ���룬��ȡ��ͨ�Ų���
  GetCommState(hComm,&dcb);                         // ��֪ĿǰCOM��״̬
  dcb.BaudRate = CBR_9600;                          // ���ò�����Ϊ9600
  dcb.ByteSize = 8;                                 // �ֽ�Ϊ8 bit
  dcb.Parity = NOPARITY;                            // Parity Ϊ None
  dcb.StopBits = ONESTOPBIT;                        // 1��Stop bit
  // ͨ�Ŷ˿�����
  if (!SetCommState(hComm, &dcb)) {       // ����COM��״̬
    MessageBox (0, "ͨ�Ŷ˿����ô���!!!","Set Error",MB_OK);
    CloseHandle(hComm);
    break;
    }
   //--------------------------------------------------------------
//����   AA BB 05 00 80 00 AA 00 2F    ��ȡ AA BB 04 00 AA 55 FB
   //-------------------------------------------------------------
/********************************************************************************
AA BB 1C 01 02 01 08 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 16

д���ݣ���08��2��������0�ſ�   ��FF FF FF FF FF FF�����롣д�Ƿֿ�д��

AA BB 1C 01 02 01 0A 00 FF FF FF FF FF FF 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 FF EB

д���ݣ���0A��2��������2�ſ�   ��FF FF FF FF FF FF�����롣

AA BB 0C 01 01 01 04 00 FF FF FF FF FF FF 09  �ӿ������ж�ȡ1������1�ſ�
1b 01 02 b1 83 31 1b  �ӿ������ж�ȡ1������1�ſ�

AA BB 04 00 00 00 04 д��ɹ��ķ���ֵ
//*********************************************************************************
//  String Temp,Temp1,p,dt,p1;
  char *SendData;
//  int  ln,n,d,t;
  unsigned long lrc,BS;
  if (hComm==0) return; //���Handleֵ
/********************************************************************************
;����1��0Ϊ�������ã�00h 01h 02h 03h 04h 05h Ϊ  Master 4D,61,73,74,65,72
;06h  Ϊ��ַ
;07h  Ϊ��ַ����
;08h 09h 0ah 0bh 0ch 0dh  Ϊ���� ����λ
;0eh ΪBCCУ��
;AA BB 1C 01 02 01 04 00 FF FF FF FF FF FF 4D 61 73 74 65 72 05 FA 56 78 90 12 34 56 CE 00 D9 д��1����0��
;--------------------------------------------------------------------------------------------------------
;����1��1Ϊ
00h Ϊ��ַ�� -------------------��������Ϊ00 û���������
01h 02h 03h Ϊyear month date
04h Ϊ��
05h 06h 07h 08h 09h 0ah Ϊ����
;----------------------------------------------------------------------------------------------------
;AA BB 0C 01 01 01 00 00 FF FF FF FF FF FF 0D  Ϊ��ȡ0��         
***********************************************************************************/
/*
Temp="AABB05008000AA00";
p1=seeddata(Temp);
if(p1=="0400AA55FB")
{    //    MessageBox(0, "��ſ�Ƭ��!!","rrr",MB_OK);
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
 