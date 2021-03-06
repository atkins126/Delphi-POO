unit uFrmPrincipal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.Menus,
  Vcl.StdCtrls,
  Model.Interfaces.Formularios.Abrir, Model.Interfaces.Conexao.Banco;

type
  TFrmPrincipal = class(TForm)
    MenuPrincipal: TMainMenu;
    mCompras: TMenuItem;
    mVendas: TMenuItem;
    mFinanceiro: TMenuItem;
    mUtilitarios: TMenuItem;
    mComprasCadastro: TMenuItem;
    procedure mComprasCadastroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.mComprasCadastroClick(Sender: TObject);
begin
  tAbrirForm.New.FormCadastroProdutos(self).ShowModal;
end;

end.
