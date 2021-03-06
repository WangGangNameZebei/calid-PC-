//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Unit16.h"
#include "Unit12.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma link "sButton"
#pragma link "sGroupBox"
#pragma link "sCheckBox"
#pragma resource "*.dfm"
TForm12 *Form12;
//---------------------------------------------------------------------------
__fastcall TForm12::TForm12(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TForm12::sButton1Click(TObject *Sender)
{
String ins,vcn1,vcn2,vcn3,vcn4,vcn5,vcn6,vcn7,vcn8,vcn9,vcn10,vcn11,vcn12,vcn13,vcn14,vcn15;
sButton1->Enabled=false; //


     if(sCheckBox1->Checked==true)
       vcn1="475360231";   ///初始化
     else
       vcn1="0";

     if(sCheckBox2->Checked==true)
       vcn2="29457731";   ///批量加密
     else
       vcn2="95943340";

     if(sCheckBox3->Checked==true)
       vcn3="1";   ///开放卡
     else
       vcn3="0";

     if(sCheckBox4->Checked==true)
       vcn4="1";   ///同步卡
     else
       vcn4="0";

     if(sCheckBox5->Checked==true)
       vcn5="1";   ///显示层数
     else
       vcn5="0";

     if(sCheckBox6->Checked==true)
       vcn6="874631";   ///操作时自动处理初始化
     else
       vcn6="623570";

     if(sCheckBox7->Checked==true)
       vcn7="35794";   ///操作时自动处理初始化
     else
       vcn7="895323";

     if(sCheckBox10->Checked==true)
       vcn8="1";   ///去掉出厂卡
     else
       vcn8="0";

     if(sCheckBox11->Checked==true)
       vcn9="653488";   ///全部卡号关联处理
     else
       vcn9="152469";

     if(sCheckBox12->Checked==true)
       vcn10="436536";   ///防超级UID
     else
       vcn10="867453";

     if(sCheckBox13->Checked==true)
       vcn11="8845673";   ///发卡器时间控制
     else
       vcn11="8935677";

     if(sCheckBox14->Checked==true)
       vcn12="7732446457";   ///发卡器次数控制
     else
       vcn12="7623557656";

     if(sCheckBox15->Checked==true)
       vcn13="3534577";   ///开放卡层数设置
     else
       vcn13="7623479";

     if(sCheckBox16->Checked==true)
       vcn14="8742326";   ///开放时段层数设置
     else
       vcn14="3468";

     if(sCheckBox17->Checked==true)
       vcn15="2354667";   ///开放时段层数设置
     else
       vcn15="86432";

ins="update VisiblePoc set vcn1='";
    ins+=vcn1;
    ins+="',vcn2='";
    ins+=vcn2;
    ins+="',vcn3='";
    ins+=vcn3;
    ins+="',vcn4='";
    ins+=vcn4;
    ins+="',vcn5='";
    ins+=vcn5;
    ins+="',vcn6='";
    ins+=vcn6;
    ins+="',vcn7='";
    ins+=vcn7;
    ins+="',vcn8='";
    ins+=vcn8;
    ins+="',vcn9='";
    ins+=vcn9;
    ins+="',vcn10='";
    ins+=vcn10;
    ins+="',vcn11='";
    ins+=vcn11;
    ins+="',vcn12='";
    ins+=vcn12;
    ins+="',vcn13='";
    ins+=vcn13;
    ins+="',vcn14='";
    ins+=vcn14;
    ins+="',vcn15='";
    ins+=vcn15;
    ins+="'";
 //   qstr+=" where no='1'";
    tcon1->adoquery->SQL->Clear();
    tcon1->adoquery->SQL->Add(ins);
    tcon1->adoquery->ExecSQL();       //将卡号写入
    tcon1->adoquery->Close();
    
    Application->MessageBoxA("更新成功！!!","恭喜",MB_OK);

 sButton1->Enabled=true; //
}
//---------------------------------------------------------------------------

void __fastcall TForm12::sButton2Click(TObject *Sender)
{
String ins,vcn1,vcn2,vcn3,vcn4,vcn5,vcn6,vcn7,vcn8,vcn9,vcn10,vcn11,vcn12,vcn13,vcn14;
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
   }

if(vcn1=="475360231")
  sCheckBox1->Checked=true;  ///初始化
else
  sCheckBox1->Checked=false;

if(vcn2=="29457731")
  sCheckBox2->Checked=true;  ///批量加密
else
  sCheckBox2->Checked=false;

if(vcn3=="1")
  sCheckBox3->Checked=true;  ///开放卡
else
  sCheckBox3->Checked=false;

if(vcn4=="1")
  sCheckBox4->Checked=true;  ///同步卡
else
  sCheckBox4->Checked=false;

if(vcn5=="1"){
  sCheckBox5->Checked=true;  ///去掉层数
  }
else{
  sCheckBox5->Checked=false;
  }
if(vcn6=="874631")
  sCheckBox6->Checked=true;  ///操作时自动处理初始化
else
  sCheckBox6->Checked=false;

if(vcn7=="35794")
  sCheckBox7->Checked=true;  ///是否处理0扇区
else
  sCheckBox7->Checked=false;

if(vcn8=="1"){
  sCheckBox10->Checked=true;  ///去掉出厂卡
  }
else{
  sCheckBox10->Checked=false;
  }

if(vcn9=="653488"){
  sCheckBox11->Checked=true;  ///全部卡号关联处理
  }
else{
  sCheckBox11->Checked=false;
  }

if(vcn11=="8845673"){
  sCheckBox13->Checked=true;  ///去掉时间控制
  }
else{
  sCheckBox13->Checked=false;
  }

if(vcn12=="7732446457"){
  sCheckBox14->Checked=true;  ///去掉次数控制
  }
else{
  sCheckBox14->Checked=false;
  }

if(vcn13=="3534577"){
  sCheckBox15->Checked=true;  ///开放卡层数设置
  }
else{
  sCheckBox15->Checked=false;
  }

if(vcn14=="8742326"){
  sCheckBox16->Checked=true;  ///开放时段层数设置
  }
else{
  sCheckBox16->Checked=false;
  }

}
//---------------------------------------------------------------------------
void __fastcall TForm12::FormShow(TObject *Sender)
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
  sCheckBox1->Checked=true;  ///初始化
else
  sCheckBox1->Checked=false;

if(vcn2=="29457731")
  sCheckBox2->Checked=true;  ///批量加密
else
  sCheckBox2->Checked=false;

if(vcn3=="1")
  sCheckBox3->Checked=true;  ///开放卡
else
  sCheckBox3->Checked=false;

if(vcn4=="1")
  sCheckBox4->Checked=true;  ///同步卡
else
  sCheckBox4->Checked=false;

if(vcn5=="1"){
  sCheckBox5->Checked=true;  ///去掉层数
  }
else{
  sCheckBox5->Checked=false;
  }
if(vcn6=="874631")
  sCheckBox6->Checked=true;  ///操作时自动处理初始化
else
  sCheckBox6->Checked=false;
  
if(vcn7=="35794")
  sCheckBox7->Checked=true;  ///是否处理0扇区
else
  sCheckBox7->Checked=false;

if(vcn8=="1"){
  sCheckBox10->Checked=true;  ///去掉出厂卡   
  }
else{
  sCheckBox10->Checked=false;
  }

if(vcn9=="653488"){
  sCheckBox11->Checked=true;  ///全部卡号关联处理
  }
else{
  sCheckBox11->Checked=false;
  }

if(vcn10=="436536"){
  sCheckBox12->Checked=true;  ///防超级UID
  }
else{
  sCheckBox12->Checked=false;
  }

if(vcn11=="8845673"){
  sCheckBox13->Checked=true;  ///去掉时间控制
  }
else{
  sCheckBox13->Checked=false;
  }

if(vcn12=="7732446457"){
  sCheckBox14->Checked=true;  ///去掉次数控制
  }
else{
  sCheckBox14->Checked=false;
  }
  
if(vcn13=="3534577"){
  sCheckBox15->Checked=true;  ///开放卡层数设置
  }
else{
  sCheckBox15->Checked=false;
  }

if(vcn14=="8742326"){
  sCheckBox16->Checked=true;  ///开放时段层数设置
  }
else{
  sCheckBox16->Checked=false;
  }

if(vcn15=="2354667"){
  sCheckBox17->Checked=true;  ///发现自制就延时及原卡停用
  }
else{
  sCheckBox17->Checked=false;
  }
}
//---------------------------------------------------------------------------



