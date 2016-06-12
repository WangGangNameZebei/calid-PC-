//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit1.h"
#include "Unit2.h"
#include "Unit9.h"
#include "Unit16.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sCheckBox"
#pragma resource "*.dfm"

extern String floorselect;

TForm9 *Form9;
//---------------------------------------------------------------------------
__fastcall TForm9::TForm9(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
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
void displayopencards(String selectin)
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

   for(int j=0;j<Form9->ListView2->Items->Count;j++)
		Form9->ListView2->Items->Item[j]->Checked=false;
//   return;
//   }
   ds=ds+"0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
//   p1=StrToInt(ds);
   m=Form9->ListView2->Items->Count;
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
n=Form9->ListView2->Items->Count;
for( c=0;c<n;c=c+1)
{
  nos=Form9->ListView2->Items->Item[c]->SubItems->Strings[1];
  if(ec==nos){
     Form9->ListView2->Items->Item[c]->Checked=true;
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
///--------------------------------------------------------------------------------------
void __fastcall TForm9::FormShow(TObject *Sender)
{
String ins,floorname,floorno,no,opencardd,jbusyn;
int n;
Form9->ListView2->Items->Clear();
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
	 Form9->ListView2->Items->Add();
         n=Form9->ListView2->Items->Count;
	// m=ListView1->Items->Count;
  //	if(StrToIntYN(no))
  //	  m=StrToInt(no);
  //	  else
  //	    break;
      	 Form9->ListView2->Items->Item[n-1]->Caption=floorname;
	 Form9->ListView2->Items->Item[n-1]->SubItems->Add(floorno);
	 Form9->ListView2->Items->Item[n-1]->SubItems->Add(floorno);
     ////////////////////////////////////////////////////////////////////
     tcon->adoquery->Next() ;
     }
	 tcon->adoquery->Close() ;

ins="select opencardd,openjbus from other ";
   tcon1->adoquery->Close();
   tcon1->adoquery->SQL->Clear();
   tcon1->adoquery->SQL->Add(ins);
   tcon1->adoquery->Open();
         if(tcon1->adoquery->RecordCount!=0)
         {
    opencardd=tcon1->adoquery->FieldByName("opencardd")->AsString.Trim();
    jbusyn=tcon1->adoquery->FieldByName("openjbus")->AsString.Trim();
         }
    displayopencards(opencardd);
 ///////////////////////////////////////////////////////////////////
   for(int j=0;j<ListView2->Items->Count;j++)
	   {
		 if(ListView2->Items->Item[j]->SubItems->Strings[1]=="JBUS")
		   {
                     if(jbusyn=="1")
                       ListView2->Items->Item[j]->Checked=true;
                     else
                       ListView2->Items->Item[j]->Checked=false;
                   }
           }
///////////////////////////////////////////////////////////////////
}
//---------------------------------------------------------------------------
void __fastcall TForm9::sButton1Click(TObject *Sender)
{
String qstr,bida,pa,st,d="0",t,pd="1",pe,pf,UserCID,ss,jbusyn;
   int m,n,di,e,f,g,pes,pfs;
 ///////////////////////////////////////////////////////////////////
t="0000000000000000";
//////////////////////////////////////////////////////////////////
   m=Form9->ListView2->Items->Count;
   for(int j=0;j<Form9->ListView2->Items->Count;j+4)
	   {
		for(int i=0;i<4;i++,j++)
		{
		 if(j<Form9->ListView2->Items->Count)
		 {
		 if(Form9->ListView2->Items->Item[j]->Checked)
		   {
			pa=Form9->ListView2->Items->Item[j]->SubItems->Strings[1];
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

floorselect=t;
///////////////////////////////////////////////////////////////////
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

    qstr="update other set [opencardd]='";
    if(sCheckBox1->Checked==false)
      qstr+=t;
    else
      qstr+="FFFFFFFFFFFFFFFF";
    qstr+="',[openjbus]='";

    if(jbusyn=="1")
      qstr+="1";
    else
      qstr+="0";
    qstr+="'";

    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(qstr);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    Application->MessageBoxA("保存成功！!!","恭喜",MB_OK);
    
}
//---------------------------------------------------------------------------
void __fastcall TForm9::sButton2Click(TObject *Sender)
{
Close();           
}
//---------------------------------------------------------------------------
void __fastcall TForm9::N2Click(TObject *Sender)
{
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=false;              
}
//---------------------------------------------------------------------------

void __fastcall TForm9::N1Click(TObject *Sender)
{
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=true;              
}
//---------------------------------------------------------------------------

void __fastcall TForm9::sCheckBox1Click(TObject *Sender)
{
for(int j=0;j<ListView2->Items->Count;j++)
        ListView2->Items->Item[j]->Checked=true;        
}
//---------------------------------------------------------------------------

