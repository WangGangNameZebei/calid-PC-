//---------------------------------------------------------------------------

#ifndef Unit2H
#define Unit2H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ADODB.hpp>
#include <DB.hpp>
//---------------------------------------------------------------------------
class Ttcon : public TDataModule
{
__published:	// IDE-managed Components
        TADOConnection *ADOConnection1;
        TDataSource *UserSetDataSource;
        TADOTable *UserSetado;
        TADOQuery *adoquery;
        TADOTable *USAdminado;
        TDataSource *USAdminDataSource;
        TADOTable *elevatorinfoado;
        TDataSource *elevatorinfoDataSource;
        TADOTable *ADOTable1;
private:	// User declarations
public:		// User declarations
        __fastcall Ttcon(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE Ttcon *tcon;
//---------------------------------------------------------------------------
#endif
