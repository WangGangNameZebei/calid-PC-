//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Dialogs.hpp>
#include <ExtCtrls.hpp>
#include <ExtDlgs.hpp>
#include <Menus.hpp>
#include <jpeg.hpp>
#include "sComboBox.hpp"
#include "sEdit.hpp"
#include "sButton.hpp"
#include "sAlphaListBox.hpp"
#include "sFontCtrls.hpp"
#include "sPageControl.hpp"
#include "sLabel.hpp"
#include "sMaskEdit.hpp"
#include <Mask.hpp>
#include "sGroupBox.hpp"
#include "sCheckBox.hpp"
#include "sComboBoxes.hpp"
#include "sRadioButton.hpp"
#include <ADODB.hpp>
#include <DB.hpp>
#include "sSpinEdit.hpp"
#include "CSPIN.h"
#include "JvHidControllerClass.hpp"
#include <Buttons.hpp>
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
        TTimer *Timer1;
        TSaveDialog *SaveDialog1;
        TPopupMenu *PopupMenu1;
        TPopupMenu *PopupMenu2;
        TMenuItem *N1;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *N4;
        TPopupMenu *PopupMenu3;
        TMenuItem *N5;
        TsPageControl *sPageControl1;
        TsTabSheet *sTabSheet1;
        TsTabSheet *sTabSheet2;
        TsTabSheet *sTabSheet3;
        TsTabSheet *sTabSheet4;
        TLabel *Label56;
        TLabel *Label19;
        TStringGrid *StringGrid3;
        TEdit *Edit41;
        TButton *Button32;
        TListView *ListView2;
        TListView *ListView1;
        TsComboBox *sComboBox16;
        TsEdit *sEdit42;
        TsButton *sButton34;
        TLabel *Label15;
        TLabel *Label16;
        TLabel *Label17;
        TLabel *Label18;
        TLabel *Label28;
        TEdit *Edit12;
        TEdit *Edit13;
        TEdit *Edit14;
        TMemo *Memo1;
        TComboBox *ComboBox9;
        TStringGrid *StringGrid1;
        TDBGrid *DBGrid2;
        TsButton *sButton17;
        TsButton *sButton23;
        TsButton *sButton26;
        TsButton *sButton1;
        TsButton *sButton2;
        TsButton *sButton3;
        TsButton *sButton4;
        TsButton *sButton18;
        TsButton *sButton7;
        TsButton *sButton8;
        TsButton *sButton9;
        TsButton *sButton10;
        TsGroupBox *sGroupBox2;
        TsGroupBox *sGroupBox3;
        TsGroupBox *sGroupBox4;
        TLabel *Label36;
        TLabel *Label37;
        TLabel *Label38;
        TComboBox *ComboBox6;
        TComboBox *ComboBox7;
        TComboBox *ComboBox8;
        TDateTimePicker *DateTimePicker2;
        TsGroupBox *sGroupBox5;
        TLabel *Label26;
        TComboBox *ComboBox1;
        TsButton *sButton30;
        TsButton *sButton13;
        TsButton *sButton12;
        TsButton *sButton16;
        TsButton *sButton21;
        TsGroupBox *sGroupBox7;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TLabel *Label6;
        TLabel *Label7;
        TLabel *Label11;
        TLabel *Label12;
        TLabel *Label14;
        TLabel *Label20;
        TLabel *Label21;
        TCheckBox *CheckBox2;
        TCheckBox *CheckBox3;
        TCheckBox *CheckBox4;
        TCheckBox *CheckBox5;
        TCheckBox *CheckBox6;
        TCheckBox *CheckBox7;
        TCheckBox *CheckBox8;
        TCheckBox *CheckBox9;
        TCheckBox *CheckBox11;
        TCheckBox *CheckBox1;
        TsButton *sButton29;
        TsButton *sButton28;
        TsButton *sButton27;
        TsButton *sButton31;
        TsGroupBox *sGroupBox8;
        TsButton *sButton6;
        TPopupMenu *PopupMenu4;
        TMenuItem *N6;
        TsButton *sButton5;
        TMenuItem *N7;
        TCheckBox *CheckBox13;
        TLabel *Label23;
        TsCheckBox *sCheckBox1;
        TsCheckBox *sCheckBox2;
        TsGroupBox *sGroupBox11;
        TsButton *sButton20;
        TsCheckBox *sCheckBox3;
        TMenuItem *N8;
        TMenuItem *N9;
        TStaticText *StaticText2;
        TsButton *sButton25;
        TsCheckBox *sCheckBox4;
        TsGroupBox *sGroupBox12;
        TStaticText *StaticText3;
        TMenuItem *N10;
        TsGroupBox *sGroupBox14;
        TLabel *Label10;
        TStaticText *StaticText1;
        TsGroupBox *sGroupBox15;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label8;
        TLabel *Label9;
        TLabel *Label59;
        TsLabel *sLabel9;
        TDateTimePicker *DateTimePicker1;
        TCheckBox *CheckBox10;
        TStaticText *StaticText5;
        TsComboBox *sComboBox1;
        TsEdit *sEdit1;
        TsEdit *sEdit2;
        TsEdit *sEdit9;
        TsEdit *sEdit10;
        TsEdit *sEdit11;
        TsGroupBox *sGroupBox16;
        TLabel *Label53;
        TLabel *Label54;
        TLabel *Label55;
        TLabel *Label22;
        TEdit *Edit37;
        TEdit *Edit38;
        TEdit *Edit39;
        TEdit *Edit40;
        TLabel *Label52;
        TsButton *sButton39;
        TMenuItem *N11;
        TMenuItem *Excel1;
        TsButton *sButton41;
        TsCheckBox *sCheckBox5;
        TsButton *sButton43;
        TMenuItem *N12;
        TMenuItem *N13;
        TMenuItem *N14;
        TsCheckBox *sCheckBox26;
        TsCheckBox *sCheckBox27;
        TsButton *sButton53;
        TsEdit *sEdit14;
        TComboBox *ComboBox2;
        TsWebLabel *sWebLabel1;
        TMenuItem *N15;
        TsButton *sButton54;
        TStaticText *StaticText4;
        TMenuItem *N16;
        TsPageControl *sPageControl2;
        TsTabSheet *sTabSheet5;
        TsTabSheet *sTabSheet6;
        TsGroupBox *sGroupBox1;
        TsButton *sButton19;
        TsGroupBox *sGroupBox19;
        TsButton *sButton49;
        TsCheckBox *sCheckBox22;
        TsCheckBox *sCheckBox23;
        TsRadioButton *sRadioButton1;
        TsRadioButton *sRadioButton2;
        TsCheckBox *sCheckBox25;
        TsGroupBox *sGroupBox18;
        TsLabel *sLabel1;
        TsButton *sButton47;
        TsEdit *sEdit12;
        TsCheckBox *sCheckBox24;
        TsEdit *sEdit13;
        TsGroupBox *sGroupBox13;
        TsLabel *sLabel8;
        TsEdit *sEdit8;
        TsComboBox *sComboBox6;
        TsButton *sButton37;
        TsButton *sButton38;
        TsGroupBox *sGroupBox10;
        TsButton *sButton14;
        TsEdit *sEdit3;
        TsButton *sButton15;
        TsButton *sButton22;
        TsButton *sButton24;
        TsButton *sButton32;
        TsButton *sButton40;
        TsButton *sButton42;
        TsButton *sButton48;
        TsButton *sButton46;
        TGroupBox *GroupBox7;
        TButton *Button5;
        TButton *Button11;
        TButton *Button15;
        TButton *Button20;
        TsGroupBox *sGroupBox20;
        TsButton *sButton50;
        TsEdit *sEdit15;
        TsButton *sButton51;
        TsButton *sButton52;
        TsButton *sButton55;
        TStringGrid *StringGrid2;
        TsButton *sButton56;
        TsGroupBox *sGroupBox21;
        TsEdit *sEdit16;
        TsButton *sButton57;
        TsEdit *sEdit17;
        TsLabel *sLabel10;
        TsLabel *sLabel11;
        TCheckBox *CheckBox12;
        TsButton *sButton58;
        TsRadioButton *sRadioButton3;
        TsButton *sButton59;
        TLabel *Label13;
        TLabel *Label24;
        TEdit *Edit1;
        TsButton *sButton60;
        TsGroupBox *sGroupBox22;
        TsButton *sButton63;
        TDateTimePicker *DateTimePicker3;
        TDateTimePicker *DateTimePicker4;
        TDateTimePicker *DateTimePicker5;
        TDateTimePicker *DateTimePicker6;
        TStaticText *StaticText6;
        TsCheckBox *sCheckBox28;
        TsCheckBox *sCheckBox29;
        TsCheckBox *sCheckBox30;
        TsCheckBox *sCheckBox31;
        TsCheckBox *sCheckBox32;
        TsCheckBox *sCheckBox33;
        TsCheckBox *sCheckBox34;
        TsButton *sButton61;
        TMenuItem *N17;
        TMenuItem *N18;
        TsGroupBox *sGroupBox23;
        TStaticText *StaticText7;
        TDateTimePicker *DateTimePicker7;
        TDateTimePicker *DateTimePicker8;
        TDateTimePicker *DateTimePicker9;
        TDateTimePicker *DateTimePicker10;
        TStaticText *StaticText8;
        TsCheckBox *sCheckBox36;
        TsCheckBox *sCheckBox37;
        TsCheckBox *sCheckBox38;
        TsCheckBox *sCheckBox39;
        TsCheckBox *sCheckBox40;
        TsCheckBox *sCheckBox41;
        TsCheckBox *sCheckBox42;
        TsCheckBox *sCheckBox43;
        TsButton *sButton64;
        TsButton *sButton62;
        TsEdit *sEdit4;
        TsButton *sButton65;
        TListView *ListView3;
        TsCheckBox *sCheckBox44;
        TsGroupBox *sGroupBox24;
        TsCheckBox *sCheckBox45;
        TsCheckBox *sCheckBox46;
        TsCheckBox *sCheckBox47;
        TsCheckBox *sCheckBox48;
        TsCheckBox *sCheckBox49;
        TsCheckBox *sCheckBox50;
        TsCheckBox *sCheckBox51;
        TsCheckBox *sCheckBox52;
        TsCheckBox *sCheckBox53;
        TsButton *sButton66;
        TsLabel *sLabel4;
        TsLabel *sLabel5;
        TStaticText *StaticText9;
        TPopupMenu *PopupMenu5;
        TMenuItem *N19;
        TMenuItem *N20;
        TsGroupBox *sGroupBox25;
        TsGroupBox *sGroupBox17;
        TsCheckBox *sCheckBox6;
        TsCheckBox *sCheckBox7;
        TsCheckBox *sCheckBox8;
        TsCheckBox *sCheckBox9;
        TsCheckBox *sCheckBox10;
        TsCheckBox *sCheckBox11;
        TsCheckBox *sCheckBox12;
        TsCheckBox *sCheckBox13;
        TsCheckBox *sCheckBox14;
        TsCheckBox *sCheckBox15;
        TsCheckBox *sCheckBox16;
        TsCheckBox *sCheckBox17;
        TsCheckBox *sCheckBox18;
        TsCheckBox *sCheckBox19;
        TsCheckBox *sCheckBox20;
        TsCheckBox *sCheckBox21;
        TsButton *sButton44;
        TsButton *sButton45;
        TsTabSheet *sTabSheet7;
        TsGroupBox *sGroupBox6;
        TLabel *Label58;
        TComboBox *ComboBox15;
        TsButton *sButton33;
        TsLabel *sLabel2;
        TsButton *sButton11;
        TsButton *sButton35;
        TsComboBox *sComboBox2;
        TsCheckBox *sCheckBox54;
        TsGroupBox *sGroupBox9;
        TsLabel *sLabel3;
        TsButton *sButton36;
        TsComboBox *sComboBox4;
        TsEdit *sEdit7;
        TsButton *sButton71;
        TsButton *sButton72;
        TsEdit *sEdit18;
        TsGroupBox *sGroupBox26;
        TsEdit *sEdit5;
        TsButton *sButton67;
        TsButton *sButton68;
        TsEdit *sEdit6;
        TsButton *sButton69;
        TsButton *sButton70;
        TsButton *sButton73;
        TsButton *sButton74;
        TsButton *sButton75;
        TsButton *sButton76;
        TsCheckBox *sCheckBox55;
        TsCheckBox *sCheckBox56;
        TsCheckBox *sCheckBox57;
        TsCheckBox *sCheckBox58;
        TsCheckBox *sCheckBox59;
        TsCheckBox *sCheckBox60;
        TsCheckBox *sCheckBox61;
        TsCheckBox *sCheckBox62;
        TsCheckBox *sCheckBox63;
        TsCheckBox *sCheckBox64;
        TsCheckBox *sCheckBox65;
        TsCheckBox *sCheckBox66;
        TsCheckBox *sCheckBox67;
        TsCheckBox *sCheckBox68;
        TsCheckBox *sCheckBox69;
        TsCheckBox *sCheckBox70;
        TsButton *sButton77;
        TsGroupBox *sGroupBox27;
        TsButton *sButton78;
        TsButton *sButton79;
        TsButton *sButton80;
        TsButton *sButton81;
        TsCheckBox *sCheckBox71;
        TsEdit *sEdit19;
        TsEdit *sEdit20;
        TsEdit *sEdit21;
        TsEdit *sEdit22;
        TsCheckBox *sCheckBox72;
        TsEdit *sEdit23;
        TsCheckBox *sCheckBox73;
        TsCheckBox *sCheckBox35;
        TMenuItem *N30;
        TJvHidDeviceController *JvHidDeviceController1;
        TSpeedButton *ReadBtn;
        TSpeedButton *WriteBtn;
        TListBox *DevListBox;
        TListBox *HistoryListBox;
        TEdit *ReportID;
        TEdit *Edit2;
        void __fastcall FormClose(TObject *Sender, TCloseAction &Action);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall FormDestroy(TObject *Sender);
        void __fastcall Edit12KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox9KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox10KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox11KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox12KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox13KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox6KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox7KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox8KeyPress(TObject *Sender, char &Key);
        void __fastcall ComboBox1KeyPress(TObject *Sender, char &Key);
        void __fastcall Timer1Timer(TObject *Sender);
        void __fastcall DBGrid2CellClick(TColumn *Column);
        void __fastcall ListView1Change(TObject *Sender, TListItem *Item,
          TItemChange Change);
        void __fastcall StringGrid3SelectCell(TObject *Sender, int ACol,
          int ARow, bool &CanSelect);
        void __fastcall Edit41KeyPress(TObject *Sender, char &Key);
        void __fastcall Edit22Change(TObject *Sender);
        void __fastcall Edit22KeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall Edit22KeyPress(TObject *Sender, char &Key);
        void __fastcall Button32Click(TObject *Sender);
        void __fastcall Button5Click(TObject *Sender);
        void __fastcall Button11Click(TObject *Sender);
        void __fastcall N1Click(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall N3Click(TObject *Sender);
        void __fastcall N4Click(TObject *Sender);
        void __fastcall Button15Click(TObject *Sender);
        void __fastcall Button20Click(TObject *Sender);
        void __fastcall StringGrid1SelectCell(TObject *Sender, int ACol,
          int ARow, bool &CanSelect);
        void __fastcall N5Click(TObject *Sender);
        void __fastcall Edit41Change(TObject *Sender);
        void __fastcall Edit6Change(TObject *Sender);
        void __fastcall Edit7Change(TObject *Sender);
        void __fastcall DateTimePicker1Change(TObject *Sender);
        void __fastcall sComboBox16Change(TObject *Sender);
        void __fastcall sComboBox16KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit42KeyPress(TObject *Sender, char &Key);
        void __fastcall sButton34Click(TObject *Sender);
        void __fastcall sPageControl1Change(TObject *Sender);
        void __fastcall sButton17Click(TObject *Sender);
        void __fastcall sButton23Click(TObject *Sender);
        void __fastcall sButton26Click(TObject *Sender);
        void __fastcall sButton1Click(TObject *Sender);
        void __fastcall sButton2Click(TObject *Sender);
        void __fastcall sButton3Click(TObject *Sender);
        void __fastcall sButton4Click(TObject *Sender);
        void __fastcall sButton18Click(TObject *Sender);
        void __fastcall sButton7Click(TObject *Sender);
        void __fastcall sButton8Click(TObject *Sender);
        void __fastcall sButton9Click(TObject *Sender);
        void __fastcall sButton10Click(TObject *Sender);
        void __fastcall sButton19Click(TObject *Sender);
        void __fastcall sButton30Click(TObject *Sender);
        void __fastcall sButton13Click(TObject *Sender);
        void __fastcall sButton12Click(TObject *Sender);
        void __fastcall sButton16Click(TObject *Sender);
        void __fastcall sButton33Click(TObject *Sender);
        void __fastcall sButton29Click(TObject *Sender);
        void __fastcall sButton28Click(TObject *Sender);
        void __fastcall sButton27Click(TObject *Sender);
        void __fastcall sButton31Click(TObject *Sender);
        void __fastcall sButton6Click(TObject *Sender);
        void __fastcall CheckBox10Click(TObject *Sender);
        void __fastcall N6Click(TObject *Sender);
        void __fastcall sComboBox1Change(TObject *Sender);
        void __fastcall sEdit1Change(TObject *Sender);
        void __fastcall sEdit1KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit2Change(TObject *Sender);
        void __fastcall sButton5Click(TObject *Sender);
        void __fastcall N7Click(TObject *Sender);
        void __fastcall sButton11Click(TObject *Sender);
        void __fastcall sButton14Click(TObject *Sender);
        void __fastcall sButton15Click(TObject *Sender);
        void __fastcall sButton20Click(TObject *Sender);
        void __fastcall sButton22Click(TObject *Sender);
        void __fastcall sButton24Click(TObject *Sender);
        void __fastcall N8Click(TObject *Sender);
        void __fastcall N9Click(TObject *Sender);
        void __fastcall sButton21Click(TObject *Sender);
        void __fastcall StaticText2Click(TObject *Sender);
        void __fastcall sButton25Click(TObject *Sender);
        void __fastcall sButton32Click(TObject *Sender);
        void __fastcall sButton35Click(TObject *Sender);
        void __fastcall sButton36Click(TObject *Sender);
        void __fastcall Edit12Change(TObject *Sender);
        void __fastcall N10Click(TObject *Sender);
        void __fastcall PopupMenu4Popup(TObject *Sender);
        void __fastcall sButton37Click(TObject *Sender);
        void __fastcall sButton38Click(TObject *Sender);
        void __fastcall ListView2Change(TObject *Sender, TListItem *Item,
          TItemChange Change);
        void __fastcall sButton39Click(TObject *Sender);
        void __fastcall N11Click(TObject *Sender);
        void __fastcall Excel1Click(TObject *Sender);
        void __fastcall sButton40Click(TObject *Sender);
        void __fastcall sButton41Click(TObject *Sender);
        void __fastcall ComboBox9Change(TObject *Sender);
        void __fastcall sCheckBox3Click(TObject *Sender);
        void __fastcall sEdit11Change(TObject *Sender);
        void __fastcall sButton42Click(TObject *Sender);
        void __fastcall sEdit10Change(TObject *Sender);
        void __fastcall sEdit9Change(TObject *Sender);
        void __fastcall Edit13Change(TObject *Sender);
        void __fastcall Edit14Change(TObject *Sender);
        void __fastcall Memo1Click(TObject *Sender);
        void __fastcall sCheckBox2Click(TObject *Sender);
        void __fastcall sEdit3Change(TObject *Sender);
        void __fastcall sCheckBox5Click(TObject *Sender);
        void __fastcall sButton43Click(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
        void __fastcall sEdit11KeyUp(TObject *Sender, WORD &Key,
          TShiftState Shift);
        void __fastcall sButton44Click(TObject *Sender);
        void __fastcall sButton45Click(TObject *Sender);
        void __fastcall N12Click(TObject *Sender);
        void __fastcall N13Click(TObject *Sender);
        void __fastcall N14Click(TObject *Sender);
        void __fastcall sButton46Click(TObject *Sender);
        void __fastcall sButton47Click(TObject *Sender);
        void __fastcall sButton48Click(TObject *Sender);
        void __fastcall sButton49Click(TObject *Sender);
        void __fastcall sEdit13Change(TObject *Sender);
        void __fastcall sButton50Click(TObject *Sender);
        void __fastcall sButton53Click(TObject *Sender);
        void __fastcall N15Click(TObject *Sender);
        void __fastcall sButton54Click(TObject *Sender);
        void __fastcall N16Click(TObject *Sender);
        void __fastcall sButton51Click(TObject *Sender);
        void __fastcall sButton52Click(TObject *Sender);
        void __fastcall sButton55Click(TObject *Sender);
        void __fastcall sButton56Click(TObject *Sender);
        void __fastcall sButton57Click(TObject *Sender);
        void __fastcall CheckBox12Click(TObject *Sender);
        void __fastcall sButton58Click(TObject *Sender);
        void __fastcall sButton59Click(TObject *Sender);
        void __fastcall sButton60Click(TObject *Sender);
        void __fastcall sButton63Click(TObject *Sender);
        void __fastcall DateTimePicker3Change(TObject *Sender);
        void __fastcall DateTimePicker4Change(TObject *Sender);
        void __fastcall DateTimePicker5Change(TObject *Sender);
        void __fastcall DateTimePicker6Change(TObject *Sender);
        void __fastcall sButton61Click(TObject *Sender);
        void __fastcall N17Click(TObject *Sender);
        void __fastcall N18Click(TObject *Sender);
        void __fastcall sButton64Click(TObject *Sender);
        void __fastcall DateTimePicker7Change(TObject *Sender);
        void __fastcall DateTimePicker8Change(TObject *Sender);
        void __fastcall DateTimePicker9Change(TObject *Sender);
        void __fastcall DateTimePicker10Change(TObject *Sender);
        void __fastcall sButton62Click(TObject *Sender);
        void __fastcall sButton65Click(TObject *Sender);
        void __fastcall sEdit4KeyPress(TObject *Sender, char &Key);
        void __fastcall sCheckBox44Click(TObject *Sender);
        void __fastcall sCheckBox53Click(TObject *Sender);
        void __fastcall sButton66Click(TObject *Sender);
        void __fastcall N19Click(TObject *Sender);
        void __fastcall N20Click(TObject *Sender);
        void __fastcall sButton67Click(TObject *Sender);
        void __fastcall sButton68Click(TObject *Sender);
        void __fastcall sButton69Click(TObject *Sender);
        void __fastcall sButton70Click(TObject *Sender);
        void __fastcall FormKeyPress(TObject *Sender, char &Key);
        void __fastcall sButton12KeyPress(TObject *Sender, char &Key);
        void __fastcall sButton71Click(TObject *Sender);
        void __fastcall sButton72Click(TObject *Sender);
        void __fastcall sButton73Click(TObject *Sender);
        void __fastcall sButton74Click(TObject *Sender);
        void __fastcall sButton75Click(TObject *Sender);
        void __fastcall sButton76Click(TObject *Sender);
        void __fastcall sButton77Click(TObject *Sender);
        void __fastcall sEdit19KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit20KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit21KeyPress(TObject *Sender, char &Key);
        void __fastcall sEdit22KeyPress(TObject *Sender, char &Key);
        void __fastcall sButton78Click(TObject *Sender);
        void __fastcall sCheckBox71Click(TObject *Sender);
        void __fastcall sButton79Click(TObject *Sender);
        void __fastcall sButton80Click(TObject *Sender);
        void __fastcall sButton81Click(TObject *Sender);
        void __fastcall sCheckBox73Click(TObject *Sender);
        void __fastcall sCheckBox45Click(TObject *Sender);
        void __fastcall sCheckBox46Click(TObject *Sender);
        void __fastcall sCheckBox47Click(TObject *Sender);
        void __fastcall sCheckBox48Click(TObject *Sender);
        void __fastcall sCheckBox49Click(TObject *Sender);
        void __fastcall sCheckBox50Click(TObject *Sender);
        void __fastcall sCheckBox51Click(TObject *Sender);
        void __fastcall sCheckBox52Click(TObject *Sender);
        void __fastcall sCheckBox43Click(TObject *Sender);
        void __fastcall sCheckBox36Click(TObject *Sender);
        void __fastcall sCheckBox37Click(TObject *Sender);
        void __fastcall sCheckBox38Click(TObject *Sender);
        void __fastcall sCheckBox39Click(TObject *Sender);
        void __fastcall sCheckBox40Click(TObject *Sender);
        void __fastcall sCheckBox41Click(TObject *Sender);
        void __fastcall sCheckBox42Click(TObject *Sender);
        void __fastcall sCheckBox35Click(TObject *Sender);
        void __fastcall sCheckBox28Click(TObject *Sender);
        void __fastcall sCheckBox29Click(TObject *Sender);
        void __fastcall sCheckBox30Click(TObject *Sender);
        void __fastcall sCheckBox31Click(TObject *Sender);
        void __fastcall sCheckBox32Click(TObject *Sender);
        void __fastcall sCheckBox33Click(TObject *Sender);
        void __fastcall sCheckBox34Click(TObject *Sender);
        void __fastcall N30Click(TObject *Sender);
        void __fastcall sCheckBox72Click(TObject *Sender);
        void __fastcall sCheckBox26Click(TObject *Sender);
        void __fastcall sCheckBox2MouseUp(TObject *Sender,
          TMouseButton Button, TShiftState Shift, int X, int Y);
        bool __fastcall JvHidDeviceController1Enumerate(
          TJvHidDevice *HidDev, const int Idx);
        void __fastcall JvHidDeviceController1DeviceChange(
          TObject *Sender);
        void __fastcall HidCtlDeviceDataError(TJvHidDevice *HidDev,
          DWORD Error);
        void __fastcall DevListBoxClick(TObject *Sender);
        void __fastcall ReadBtnClick(TObject *Sender);
        void __fastcall WriteBtnClick(TObject *Sender);

private:	// User declarations

public:		// User declarations


         TEdit *Edits[64];
        TJvHidDevice *CurrentDevice;
        __fastcall TForm1(TComponent* Owner);
        void __fastcall ShowRead(TJvHidDevice *HidDev,
              BYTE ReportID, const void *Data, WORD Size);
       char __fastcall DataWrite(unsigned char data1[],AnsiString data2);
       char __fastcall asciiChange(char sec);
       void __fastcall erase(char number);
       char __fastcall ReadData(char address);
       char __fastcall judgeFunction(unsigned char add[],int acc);
       int __fastcall bianhaoAction (char add1,char add2);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif