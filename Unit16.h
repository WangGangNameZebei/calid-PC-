//---------------------------------------------------------------------------

#ifndef Unit16H
#define Unit16H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class Ttcon1 : public TDataModule
{
__published:	// IDE-managed Components
        TADOConnection *ADOConnection1;
        TADOQuery *adoquery;
private:	// User declarations
public:		// User declarations
        __fastcall Ttcon1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Ttcon1 *tcon1;
//---------------------------------------------------------------------------
#endif
