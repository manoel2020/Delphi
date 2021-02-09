program SistemaServicos;

uses
  Vcl.Forms,
  FCEmpresa in 'View\FCEmpresa.pas' {Form2},
  FCliente in 'View\FCliente.pas' {FCCliente},
  FServicos in 'View\FServicos.pas' {FCServicos},
  Geral in 'View\Geral.pas',
  Unit1 in 'View\Unit1.pas' {FPrincipal},
  ConexaoBD in 'ConexaoBD.pas' {DataModule2: TDataModule},
  ClienteClass in 'Controller\ClienteClass.pas',
  Model_Cliente in 'Model\Model_Cliente.pas',
  View_Login in 'View\View_Login.pas' {FrmLogin};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.Run;
end.
