//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("Unit1.cpp", Form1);
USEFORM("Unit2.cpp", tcon); /* TDataModule: File Type */
USEFORM("Unit3.cpp", Form3);
USEFORM("Unit5.cpp", Form5);
USEFORM("Unit6.cpp", Form6);
USEFORM("Unit7.cpp", Form7);
USEFORM("Unit8.cpp", Form8);
USEFORM("Unit9.cpp", Form9);
USEFORM("Unit10.cpp", Form10);
USEFORM("Unit11.cpp", Form11);
USEFORM("Unit12.cpp", Form12);
USEFORM("Unit13.cpp", FrmBar);
USEFORM("Unit14.cpp", Form14);
USEFORM("Unit15.cpp", Form15);
USEFORM("Unit16.cpp", tcon1); /* TDataModule: File Type */
USEFORM("Unit17.cpp", tcon2); /* TDataModule: File Type */
USEFORM("Unit18.cpp", Form18);
USEFORM("Unit19.cpp", Form19);
USEFORM("Unit20.cpp", Form20);
USEFORM("Unit21.cpp", Form21);
USEFORM("Unit22.cpp", Form22);
USEFORM("Unit23.cpp", Form23);
USEFORM("Unit24.cpp", Form24);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->Title = "电梯门禁控制管理软件V530.133.10";
                 Application->CreateForm(__classid(TForm3), &Form3);
                 Application->CreateForm(__classid(Ttcon), &tcon);
                 Application->CreateForm(__classid(TForm1), &Form1);
                 Application->CreateForm(__classid(TForm5), &Form5);
                 Application->CreateForm(__classid(TForm6), &Form6);
                 Application->CreateForm(__classid(TForm7), &Form7);
                 Application->CreateForm(__classid(TForm8), &Form8);
                 Application->CreateForm(__classid(TForm9), &Form9);
                 Application->CreateForm(__classid(TForm10), &Form10);
                 Application->CreateForm(__classid(TForm11), &Form11);
                 Application->CreateForm(__classid(TForm12), &Form12);
                 Application->CreateForm(__classid(TFrmBar), &FrmBar);
                 Application->CreateForm(__classid(TForm14), &Form14);
                 Application->CreateForm(__classid(TForm15), &Form15);
                 Application->CreateForm(__classid(Ttcon1), &tcon1);
                 Application->CreateForm(__classid(Ttcon2), &tcon2);
                 Application->CreateForm(__classid(TForm18), &Form18);
                 Application->CreateForm(__classid(TForm19), &Form19);
                 Application->CreateForm(__classid(TForm20), &Form20);
                 Application->CreateForm(__classid(TForm21), &Form21);
                 Application->CreateForm(__classid(TForm22), &Form22);
                 Application->CreateForm(__classid(TForm23), &Form23);
                 Application->CreateForm(__classid(TForm24), &Form24);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
