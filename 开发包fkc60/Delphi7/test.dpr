program test;

uses
  Forms,
  UntTest in 'UntTest.pas' {FrmTest},
  UntDLL in 'UntDLL.pas',
  UntAbout in 'UntAbout.pas' {FrmAbout};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmTest, FrmTest);
  Application.Run;
end.
