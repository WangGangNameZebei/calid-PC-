//---------------------------------------------------------------------------

#ifndef Unit4H
#define Unit4H
//---------------------------------------------------------------------------
#include <Classes.hpp>
typedef bool __stdcall (*fun_USB_DevInit)(int Port);
typedef bool __stdcall (*fun_USB_DevClose)();
typedef int __stdcall (*fun_USB_Request)(int style);
typedef int __stdcall (*fun_USB_RequestEx)(char Data[]);
typedef bool __stdcall (*fun_USB_BeepExA)(int ms);
typedef bool __stdcall (*fun_USB_Authentication)(int mode,int secnr,char keysnr[]);
typedef bool __stdcall (*fun_USB_Read)(int secnr,int Blonr,char Data[]);
typedef bool __stdcall (*fun_USB_Write)(int secnr,int Blonr,char Data[]);
typedef bool __stdcall (*fun_USB_ValueInit)(int secnr,int Blonr,char Data[]);
typedef bool __stdcall (*fun_USB_Value)(int secnr,int Blonr,int style,char Data[]);
typedef bool __stdcall (*fun_USB_BackUp)(int secnr,int Blonr,int destination);
typedef bool __stdcall (*fun_USB_Anticoll)(char Data[]);
typedef bool __stdcall (*fun_USB_Select)(char Data[]);
typedef bool __stdcall (*fun_USB_Halt)();
typedef bool __stdcall (*fun_ClearData)(int port,int mach);
typedef bool __stdcall (*fun_GetTimeExA)(int port,int mach,char Data[]);
typedef bool __stdcall (*fun_SetTimeExA)(int port,int mach,char Data[]);
typedef bool __stdcall (*fun_SetManagerCard)(int port,int mach,int Data);
typedef int __stdcall (*fun_GetManagerCard)(int port,int mach);
typedef bool __stdcall (*fun_SetMaxConsume)(int port,int mach,int Data);
typedef int __stdcall (*fun_GetMaxConsume)(int port,int mach);
typedef bool __stdcall (*fun_SetMaxSumConsume)(int port,int mach,int Data);
typedef int __stdcall (*fun_GetMaxSumConsume)(int port,int mach);
typedef bool __stdcall (*fun_SetSaleStyle)(int port,int mach,int Data);
typedef int __stdcall (*fun_GetSaleStyle)(int port,int mach);
typedef bool __stdcall (*fun_SetMachStyle)(int port,int mach,int Data);
typedef int __stdcall (*fun_GetMachStyle)(int port,int mach);
typedef int __stdcall (*fun_GetSumConsume)(int port,int mach);
typedef int __stdcall (*fun_GetRecordCount)(int port,int mach);
typedef bool __stdcall (*fun_SetMachNo)(int port,int oldmach,int newmach);
typedef bool __stdcall (*fun_InitMach)(int port,int oldmach);
typedef bool __stdcall (*fun_RestoreMachEx)(int port);
typedef bool __stdcall (*fun_GetRecord)(int addre,char Data[]);
typedef bool __stdcall (*fun_abc)(char *Result);
//---------------------------------------------------------------------------
class sst : public TThread
{
  typedef struct tagTHREADNAME_INFO
  {
    DWORD dwType;     // must be 0x1000
    LPCSTR szName;    // pointer to name (in user addr space)
    DWORD dwThreadID; // thread ID (-1=caller thread)
    DWORD dwFlags;    // reserved for future use, must be zero
  } THREADNAME_INFO;
private:
  void SetName();
protected:
        void __fastcall Execute();
public:
        __fastcall sst(bool CreateSuspended);
};
//---------------------------------------------------------------------------
#endif
 