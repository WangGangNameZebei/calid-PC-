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
#pragma resource "*.dfm"
TForm21 *Form21;
AnsiString FileName1;

bool __fastcall ReadConfig()
{       //读取配置文件
FILE * ptr;
char x[200];
//AnsiString FileName=".\\SYCALIDSET1.mdb";//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
ptr = fopen ( FileName1.c_str(), "rb" );
 if ( ptr == NULL )       
{          ShowMessage ( "文件打开失败！" );         
return false;       }

     fread(x,160,1 ,ptr);//共读取200*12=2400个字节
    

fclose(ptr);
ptr=NULL;//需要指向空，否则会指向原打开文件地址
return true;
}

bool __fastcall SSaveConfigy()
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
ptr=fopen(FileName1.c_str(),"rb+");
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


bool __fastcall SSaveConfign()
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
ptr=fopen(FileName1.c_str(),"rb+");
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
//---------------------------------------------------------------------------
__fastcall TForm21::TForm21(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TForm21::sButton1Click(TObject *Sender)
{
String ppd,appPath,SYDT_path;

     int ch='\\';
	TCHAR appFullPath[MAX_PATH];
	TCHAR appPath1[MAX_PATH];
    GetModuleFileName(NULL,appFullPath,MAX_PATH);
    char* nPos=strrchr(appFullPath,ch);
	int result = (int)(nPos-appFullPath + 1);
    memset(appPath1,0,MAX_PATH);
	appPath=strncpy(appPath1,appFullPath,result);

        SYDT_path=appPath+"SYDT.mdb";
/////////////////////////////////////////////////////////////
//Button17->Enabled=false;
SaveDialog1->Filter="MDB files (*.mdb)|*.mdb";
    SaveDialog1->FileName="";
    if (SaveDialog1->Execute())
       {
          ppd=SaveDialog1->FileName;
          if(ppd=="")
          {
        //  Button4->Enabled=true;
          return;
          }
          ppd+=".mdb";
       }
if(ppd=="")
{
//Button17->Enabled=true;
return;
}
///////////////////////////////////////////////////////////////

if(CopyFile(SYDT_path.c_str(),ppd.c_str(),False))
     {
     Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
     }
Close();
}
//---------------------------------------------------------------------------

void __fastcall TForm21::sButton2Click(TObject *Sender)
{
String ppd,appPath,SYDT_path,cs,ins,logname;

     int ch='\\';
	TCHAR appFullPath[MAX_PATH];
	TCHAR appPath1[MAX_PATH];
    GetModuleFileName(NULL,appFullPath,MAX_PATH);
    char* nPos=strrchr(appFullPath,ch);
	int result = (int)(nPos-appFullPath + 1);
    memset(appPath1,0,MAX_PATH);
	appPath=strncpy(appPath1,appFullPath,result);

        SYDT_path=appPath+"SYDT.mdb";
/////////////////////////////////////////////////////////////
//Button17->Enabled=false;
SaveDialog1->Filter="MDB files (*.mdb)|*.mdb";
    SaveDialog1->FileName="";
    if (SaveDialog1->Execute())
       {
          ppd=SaveDialog1->FileName;
          if(ppd=="")
          {
        //  Button4->Enabled=true;
          return;
          }
        //  ppd+=".mdb";
       }
if(ppd=="")
{
//Button17->Enabled=true;
return;
}
///////////////////////////////////////////////////////////////

FileName1=ppd;//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
if(!SSaveConfigy())
   exit(0);


tcon->ADOConnection1->Connected=false;
try
     {
     cs="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=";
     cs+=ppd;
     cs+=";Persist Security Info=False;Jet OLEDB:Database Password=passwordis741852963";

  //   tcon->ADOConnection1->ConnectionString="Provider=SQLOLEDB.1;Data Source="+regip+";Initial Catalog=DCON; User ID="+regname+";Password="+regpass+";";
     tcon->ADOConnection1->ConnectionString=cs;
     tcon->ADOConnection1->Connected=true;

   ins="select * from USAdmin";
   tcon->adoquery->Close();
   tcon->adoquery->SQL->Clear();
   tcon->adoquery->SQL->Add(ins);
   tcon->adoquery->Open();
   if(!tcon->adoquery->Eof )
	 {
   //	 logname=tcon->adoquery->FieldByName("logname")->AsString.Trim();

         tcon->adoquery->Active =false;
         tcon->ADOConnection1->Connected=false;
           if(CopyFile(ppd.c_str(),SYDT_path.c_str(),False))
             {
             FileName1=SYDT_path;//ExtractFileName(ParamStr(0))+"UserInfo.Dat";
             SSaveConfign();
               Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
             }
             
         }
     tcon->adoquery->Close() ;
     }
catch(...)
{
Application->MessageBoxA("连接失败，数据库有错误！!!!","错误",MB_OK);
exit(0);
}
     


Close();
}
//---------------------------------------------------------------------------
void __fastcall TForm21::sButton3Click(TObject *Sender)
{
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
CopyFile(SYDT_path.c_str(),ppd.c_str(),False);
Close();
}
//---------------------------------------------------------------------------

