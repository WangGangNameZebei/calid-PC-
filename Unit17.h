//---------------------------------------------------------------------------

#ifndef Unit17H
#define Unit17H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class Ttcon2 : public TDataModule
{
__published:	// IDE-managed Components
        TADOConnection *ADOConnection1;
        TADOQuery *adoquery;
private:	// User declarations
public:		// User declarations
        __fastcall Ttcon2(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Ttcon2 *tcon2;
//---------------------------------------------------------------------------
#endif
