//---------------------------------------------------------------------------

#include <vcl.h>
#include <stdio.h>
#pragma hdrstop
#include "Unit1.h"
#include "Unit2.h"
#include "Unit3.h"
#include "Unit16.h"
#include "Unit17.h"
#include "Unit21.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sSkinManager"
#pragma link "sSkinProvider"
#pragma link "sComboBox"
#pragma link "sEdit"
#pragma link "JvHidControllerClass"
#pragma resource "*.dfm"
#pragma link "JvHidControllerClass"
TForm3 *Form3;
//---------------------------------------------------------------------------
__fastcall TForm3::TForm3(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
AnsiString FileName=".\\SYCALIDSET1.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";

bool __fastcall ReadConfig()
{       //读取配置文件
FILE * ptr;
char x[200];
//AnsiString FileName=".\\SYCALIDSET1.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
ptr = fopen ( FileName.c_str(), "rb" );
 if ( ptr == NULL )       
{          ShowMessage ( "文件打开失败！" );         
return false;       }

     fread(x,160,1 ,ptr);//共读取200*12=2400个字节
    

fclose(ptr);
ptr=NULL;//需要指向空，否则会指向原打开文件地址
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
ptr=NULL;//需要指向空，否则会指向原打开文件地址
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
ptr=NULL;//需要指向空，否则会指向原打开文件地址
return true;
}


void __fastcall TForm3::sButton1Click(TObject *Sender)
{
String qstr,appPath,cs,kk,no;

     int ch='\\';
	TCHAR appFullPath[MAX_PATH];
	TCHAR appPath1[MAX_PATH];
    GetModuleFileName(NULL,appFullPath,MAX_PATH);
    char* nPos=strrchr(appFullPath,ch);
	int result = (int)(nPos-appFullPath + 1);                  
    memset(appPath1,0,MAX_PATH);
	appPath=strncpy(appPath1,appFullPath,result);
        
///////////////////////////////
tcon1->ADOConnection1->Connected=false;
try
     {
     cs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
     cs+=appPath;
     cs+="SYCALIDSET.mdb;Persist Security Info=False;Jet OLEDB:Database Password=passwordis741852963";

  //   tcon->ADOConnection1->ConnectionString="Provider=SQLOLEDB.1;Data Source="+regip+";Initial Catalog=DCON; User ID="+regname+";Password="+regpass+";";
     tcon1->ADOConnection1->ConnectionString=cs;
     tcon1->ADOConnection1->Connected=true;
     }
catch(...)
{
Application->MessageBoxA("连接失败，可能数据库不在！!!!","错误",MB_OK);
exit(0);
}
///////////////////////////////
///////////////////////////////
tcon2->ADOConnection1->Connected=false;
try
     {
     cs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
     cs+=appPath;
     cs+="SYCALIDRecord.mdb;Persist Security Info=False;Jet OLEDB:Database Password=passwordis741852963";

  //   tcon->ADOConnection1->ConnectionString="Provider=SQLOLEDB.1;Data Source="+regip+";Initial Catalog=DCON; User ID="+regname+";Password="+regpass+";";
     tcon2->ADOConnection1->ConnectionString=cs;
     tcon2->ADOConnection1->Connected=true;
     }
catch(...)
{
Application->MessageBoxA("连接失败，可能数据库不在！!!!","错误",MB_OK);
exit(0);
}
///////////////////////////////


tcon->ADOConnection1->Connected=false;
try
     {
     cs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
     cs+=appPath;
     cs+="SYDT.mdb;Persist Security Info=False;Jet OLEDB:Database Password=passwordis741852963";

  //   tcon->ADOConnection1->ConnectionString="Provider=SQLOLEDB.1;Data Source="+regip+";Initial Catalog=DCON; User ID="+regname+";Password="+regpass+";";
     tcon->ADOConnection1->ConnectionString=cs;
     tcon->ADOConnection1->Connected=true;
     }
catch(...)
{
Application->MessageBoxA("连接失败，可能数据库不在！!!!","错误",MB_OK);
exit(0);
}

tcon->USAdminado->Active=true;
try
{
qstr="select * from USAdmin where OpName='";                
qstr+=sComboBox1->Text.Trim();
qstr+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
tcon->adoquery->Open();
//tcon->adoquery->ExecSQL();
}
catch(...)
{
  Application->MessageBoxA("数据库错误!!","错误",MB_OK);
  exit(0);
}
tcon->adoquery->Active =true;
if(tcon->adoquery->RecordCount==0)
{
    Application->MessageBoxA("用户名错误!!","提示",MB_OK);
}
else
  if(sEdit2->Text!=tcon->adoquery->FieldByName("PWD")->AsString.Trim())
     Application->MessageBoxA("密码错误!!","提示",MB_OK);
  else
  {

/////////////////////////////////
if(sComboBox1->Text!="")
  {
qstr="select * from login where logname='";
qstr+=sComboBox1->Text;
qstr+="'";
tcon->adoquery->SQL->Clear();
tcon->adoquery->SQL->Add(qstr);
//tcon->adoquery->ExecSQL();
tcon->adoquery->Open();
if(tcon->adoquery->RecordCount==0)
          {
          tcon->adoquery->Close();    //自行添加ADOConnention，并配置
          tcon->adoquery->SQL->Clear();
          tcon->adoquery->SQL->Add("Select * from login");
          tcon->adoquery->Open();
          tcon->adoquery->Insert();
          tcon->adoquery->FieldByName("logname")->AsString=sComboBox1->Text;
          tcon->adoquery->Post();
          tcon->adoquery->Close();
          }
          
    kk="update other set lastlogin='";
    kk+=sComboBox1->Text;
    kk+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(kk);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();

   }
/////////////////////////////////
  tcon->UserSetado->Active =true;
  tcon->USAdminado->Active =true;
  tcon->elevatorinfoado->Active =true;
   try
         {
         Form1=new TForm1(Application);
         Form1->Show();
         Form3->Hide();

         }
           catch(Exception &exception)
           {
           delete Form1;
           Application->ShowException(&exception);
           }
  }        
}
//---------------------------------------------------------------------------

void __fastcall TForm3::sButton2Click(TObject *Sender)
{
FileName=".\\SYDT.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
SaveConfign();
FileName=".\\SYCALIDSET.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
SaveConfign();
FileName=".\\SYCALIDRecord.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
SaveConfign();
exit(0);        
}
//---------------------------------------------------------------------------
void __fastcall TForm3::FormShow(TObject *Sender)
{
String qstr,appPath,cs,ins,logname;

     int ch='\\';
	TCHAR appFullPath[MAX_PATH];
	TCHAR appPath1[MAX_PATH];
    GetModuleFileName(NULL,appFullPath,MAX_PATH);
    char* nPos=strrchr(appFullPath,ch);                                             
	int result = (int)(nPos-appFullPath + 1);
    memset(appPath1,0,MAX_PATH);
	appPath=strncpy(appPath1,appFullPath,result);
    if   (!FileExists(appPath+"\\scd30.dll"))
         {
         Application->MessageBoxA("缺少文件 'scd30.dll' !!!","错误",MB_OK);
         exit(0);
         }
FileName=".\\SYDT.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
if(!SaveConfigy())
   exit(0);
FileName=".\\SYCALIDSET.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
if(!SaveConfigy())
   exit(0);
FileName=".\\SYCALIDRecord.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
if(!SaveConfigy())
   exit(0);

tcon->ADOConnection1->Connected=false;
try
     {
     cs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
     cs+=appPath;
     cs+="SYDT.mdb;Persist Security Info=False;Jet OLEDB:Database Password=passwordis741852963";

  //   tcon->ADOConnection1->ConnectionString="Provider=SQLOLEDB.1;Data Source="+regip+";Initial Catalog=DCON; User ID="+regname+";Password="+regpass+";";
     tcon->ADOConnection1->ConnectionString=cs;
     tcon->ADOConnection1->Connected=true;

   ins="select * from login";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   while (!tcon->adoquery->Eof )
	 {
	 logname=tcon->adoquery->FieldByName("logname")->AsString.Trim();
         sComboBox1->Items->Add(logname);
         sComboBox1->ItemIndex=-1;
         tcon->adoquery->Next() ;
         }
     tcon->adoquery->Close() ;

///////////////////////////////
tcon1->ADOConnection1->Connected=false;
try
     {
     cs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
     cs+=appPath;
     cs+="SYCALIDSET.mdb;Persist Security Info=False;Jet OLEDB:Database Password=passwordis741852963";

  //   tcon->ADOConnection1->ConnectionString="Provider=SQLOLEDB.1;Data Source="+regip+";Initial Catalog=DCON; User ID="+regname+";Password="+regpass+";";
     tcon1->ADOConnection1->ConnectionString=cs;
     tcon1->ADOConnection1->Connected=true;
     }
catch(...)
{
Application->MessageBoxA("连接失败，可能数据库不在！!!!","错误",MB_OK);
exit(0);
}
///////////////////////////////     
   ins="select lastlogin from other";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount!=0)
            logname=tcon1->adoquery->FieldByName("lastlogin")->AsString.Trim();
            
         sComboBox1->Text =logname;   

     }
catch(...)
{
Application->MessageBoxA("连接失败，可能数据库不在！!!!","错误",MB_OK);
exit(0);
}
}
//---------------------------------------------------------------------------




void __fastcall TForm3::FormMouseDown(TObject *Sender, TMouseButton Button,
      TShiftState Shift, int X, int Y)
{
if(Button == mbLeft){
 ReleaseCapture();
 Perform(WM_NCLBUTTONDOWN,HTCAPTION, 0);
 }
}
//---------------------------------------------------------------------------

void __fastcall TForm3::FormCreate(TObject *Sender)
{
String appPath;
//获得C盘可用空间 
DWORD sector,byte,cluster,free;
long int freespace,totalspace;

     int ch='\\';
	TCHAR appFullPath[MAX_PATH];
	TCHAR appPath1[MAX_PATH];
    GetModuleFileName(NULL,appFullPath,MAX_PATH);
    char* nPos=strrchr(appFullPath,ch);
	int result = (int)(nPos-appFullPath + 1);
    memset(appPath1,0,MAX_PATH);
	appPath=strncpy(appPath1,appFullPath,result);

DWORD   CH=GetLogicalDrives();


//GetDiskFreeSpace("C:",&sector,&byte,&free,&cluster); //获得返回参数

//totalspace=int(cluster)*int(byte)*int(sector)/1024/1024; //计算总容量
//freespace=int(free)*int(byte)*int(sector)/1024/1024; //计算可用空间
//Memo1→Lines→Add(“C盘总空间(Mb):”＋String(totalspace));
//Memo1→Lines→Add(“C盘可用空间(Mb):”＋String(freespace));

Image1->Picture->LoadFromFile(appPath+"\\start.jpg");

Width=Image1->Width;


Height=Image1->Height;

Label1->Left = Width-420;
Label1->Top  = Height-96;

Label2->Left = Width-420;
Label2->Top  = Height-54;

sComboBox1->Left = Width-368;
sComboBox1->Top  = Height-104;

sEdit2->Left = Width-368;
sEdit2->Top  = Height-62;

sButton1->Left = Width-120;
sButton1->Top  = Height-104;

sButton2->Left = Width-120;
sButton2->Top  = Height-62;


Repaint();

}
//---------------------------------------------------------------------------

void __fastcall TForm3::Image1MouseDown(TObject *Sender,
      TMouseButton Button, TShiftState Shift, int X, int Y)
{
if(Button == mbLeft){
 ReleaseCapture();
 Perform(WM_NCLBUTTONDOWN,HTCAPTION, 0);
 }        
}
//---------------------------------------------------------------------------

void __fastcall TForm3::FormClose(TObject *Sender, TCloseAction &Action)
{
FileName=".\\SYDT.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
SaveConfign();
FileName=".\\SYCALIDSET.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
SaveConfign();
FileName=".\\SYCALIDRecord.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
SaveConfign();

String ppd,appPath,SYDT_path;

String yy,mm,dd,hour,minute,second, strdata;
        SYSTEMTIME *GTL;
        GTL=new SYSTEMTIME;
        GetLocalTime(GTL);

        yy=String(GTL->wYear);
        mm="0"+String(GTL->wMonth);
        mm=mm.SubString(mm.Length()-1,2);
        dd="0"+String(GTL->wDay);
        dd=dd.SubString(dd.Length()-1,2);
        strdata=yy+mm+dd;
        hour="0"+String(GTL->wHour);
        hour=hour.SubString(hour.Length()-1,2);
        minute="0"+String(GTL->wMinute);
        minute=minute.SubString(minute.Length()-1,2);
        second="0"+String(GTL->wSecond);
        second=second.SubString(second.Length()-1,2);
        strdata=strdata+hour+minute+second;

     int ch='\\';
	TCHAR appFullPath[MAX_PATH];
	TCHAR appPath1[MAX_PATH];
    GetModuleFileName(NULL,appFullPath,MAX_PATH);
    char* nPos=strrchr(appFullPath,ch);
	int result = (int)(nPos-appFullPath + 1);
    memset(appPath1,0,MAX_PATH);
	appPath=strncpy(appPath1,appFullPath,result);

        SYDT_path=appPath+"SYDT.mdb";
        ppd= appPath+"backup\\SYDT"+strdata+".mdb";

// CopyFile(SYDT_path.c_str(),ppd.c_str(),False);

//  if(MessageDlg("数据库是否备份？",mtInformation,TMsgDlgButtons()<<mbOK<<mbCancel,0)==IDOK)
//   {
    try
         {
         Form21=new TForm21(Application);
         Form21->ShowModal();

         }
           catch(Exception &exception)
           {
           delete Form21;
           Application->ShowException(&exception);
           }

//   }

   
}
//---------------------------------------------------------------------------


