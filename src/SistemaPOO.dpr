program SistemaPOO;

uses
  Vcl.Forms,
  uFrmPrincipal in 'View\uFrmPrincipal.pas' {FrmPrincipal},
  uFrmPadrao in 'View\FormPadrao\uFrmPadrao.pas' {FormPadrao},
  uFrmCadProdutos in 'View\Compras\uFrmCadProdutos.pas' {FrmCadProdutos},
  Model.Interfaces.Formularios.Abrir in 'Model\Model.Interfaces.Formularios.Abrir.pas',
  Model.Interfaces.Formularios in 'Model\Model.Interfaces.Formularios.pas',
  Model.Interfaces.Conexao in 'Model\Model.Interfaces.Conexao.pas',
  Model.Interfaces.Conexao.Banco in 'Model\Model.Interfaces.Conexao.Banco.pas',
  Model.Interfaces.Query in 'Model\Model.Interfaces.Query.pas',
  Model.Interfaces.Query.SQL in 'Model\Model.Interfaces.Query.SQL.pas',
  Controller.Interfaces.Query in 'Controller\Controller.Interfaces.Query.pas',
  Controller.Interfaces.Query.SQL in 'Controller\Controller.Interfaces.Query.SQL.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := true;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.Run;
end.
