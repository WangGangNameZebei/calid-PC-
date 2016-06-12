//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <ExtCtrls.hpp>
#include <Mask.hpp>
//---------------------------------------------------------------------------
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
class TForm1 : public TForm
{
__published:	// IDE-managed Components
        TPageControl *PageControl1;
        TTabSheet *TabSheet1;
        TButton *Button1;
        TPanel *Panel1;
        TButton *Button2;
        TEdit *Edit1;
        TLabel *Label1;
        TButton *Button4;
        TEdit *Edit2;
        TLabel *Label2;
        TEdit *Edit3;
        TRadioGroup *RadioGroup1;
        TEdit *Edit4;
        TButton *Button3;
        TEdit *Edit5;
        TLabel *Label3;
        TButton *Button5;
        TEdit *Edit7;
        TButton *Button6;
        TEdit *Edit6;
        TLabel *Label4;
        TGroupBox *GroupBox1;
        TButton *Button7;
        TEdit *Edit8;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TEdit *Edit9;
        TButton *Button8;
        TButton *Button9;
        TButton *Button10;
        TEdit *Edit10;
        TLabel *Label8;
        TButton *Button11;
        TEdit *Edit11;
        TLabel *Label9;
        TTabSheet *TabSheet2;
        TButton *Button12;
        TButton *Button13;
        TButton *Button14;
        TButton *Button15;
        TButton *Button16;
        TLabel *Label10;
        TEdit *Edit12;
        TLabel *Label11;
        TButton *Button17;
        TEdit *Edit13;
        TButton *Button18;
        TButton *Button19;
        TButton *Button20;
        TButton *Button21;
        TEdit *Edit14;
        TButton *Button22;
        TButton *Button23;
        TMaskEdit *MaskEdit1;
        TButton *Button24;
        TButton *Button25;
        TMaskEdit *MaskEdit2;
        TComboBox *ComboBox1;
        TButton *Button26;
        TButton *Button27;
        TComboBox *ComboBox2;
        TButton *Button28;
        TButton *Button29;
        TEdit *Edit15;
        TButton *Button30;
        TButton *Button31;
        TButton *Button32;
        TEdit *Edit16;
        TButton *Button33;
        TBevel *Bevel1;
        TButton *Button34;
        TButton *Button35;
        TEdit *Edit17;
        TEdit *Edit18;
        TLabel *Label12;
        TLabel *Label13;
        TLabel *Label14;
        TMemo *Memo1;
        TButton *Button36;
        TTabSheet *TabSheet3;
        TEdit *Edit19;
        TLabel *Label15;
        TButton *Button37;
        TEdit *Edit20;
        void __fastcall Button2Click(TObject *Sender);
        void __fastcall Button4Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall Button1Click(TObject *Sender);
        void __fastcall Button3Click(TObject *Sender);
        void __fastcall Button5Click(TObject *Sender);
        void __fastcall Button6Click(TObject *Sender);
        void __fastcall Button7Click(TObject *Sender);
        void __fastcall Edit8KeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall Button8Click(TObject *Sender);
        void __fastcall Button9Click(TObject *Sender);
        void __fastcall Button10Click(TObject *Sender);
        void __fastcall Button11Click(TObject *Sender);
        void __fastcall Button12Click(TObject *Sender);
        void __fastcall Button13Click(TObject *Sender);
        void __fastcall Button14Click(TObject *Sender);
        void __fastcall Button15Click(TObject *Sender);
        void __fastcall Button16Click(TObject *Sender);
        void __fastcall Button17Click(TObject *Sender);
        void __fastcall Button18Click(TObject *Sender);
        void __fastcall Button19Click(TObject *Sender);
        void __fastcall PageControl1Change(TObject *Sender);
        void __fastcall Button20Click(TObject *Sender);
        void __fastcall Button21Click(TObject *Sender);
        void __fastcall Button22Click(TObject *Sender);
        void __fastcall Button23Click(TObject *Sender);
        void __fastcall Button24Click(TObject *Sender);
        void __fastcall Button25Click(TObject *Sender);
        void __fastcall Button26Click(TObject *Sender);
        void __fastcall Button27Click(TObject *Sender);
        void __fastcall Button28Click(TObject *Sender);
        void __fastcall Button29Click(TObject *Sender);
        void __fastcall Button30Click(TObject *Sender);
        void __fastcall Button31Click(TObject *Sender);
        void __fastcall Button32Click(TObject *Sender);
        void __fastcall Button33Click(TObject *Sender);
        void __fastcall Button34Click(TObject *Sender);
        void __fastcall Button35Click(TObject *Sender);
        void __fastcall Memo1DblClick(TObject *Sender);
        void __fastcall Button37Click(TObject *Sender);
private:	// User declarations
        void __fastcall Request(int style);
public:		// User declarations
        __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
