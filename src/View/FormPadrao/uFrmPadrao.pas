unit uFrmPadrao;

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
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.ComCtrls,
  Data.DB,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.Mask,
  Vcl.DBCtrls,
  Model.Interfaces.Conexao,
  Model.Interfaces.Query.SQL;

type
  TFormPadrao = class(TForm)
    pnPrincipal: TPanel;
    pnMenuLeft: TPanel;
    BtnCancelar: TButton;
    BtnExcluir: TButton;
    btnEditar: TButton;
    btnNovo: TButton;
    btnSair: TButton;
    PageControl: TPageControl;
    TabConsulta: TTabSheet;
    TabCadastro: TTabSheet;
    dbGrid: TDBGrid;
    pnTabConsulta: TPanel;
    pnTablbConsulta: TPanel;
    lbBusca: TLabel;
    edtBusca: TEdit;
    dsPadrao: TDataSource;
    lbCodigo: TLabel;
    edtCodigo: TDBEdit;
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FQuery : iSQL;
  public
    { Public declarations }
    aTabela : String;
  end;

var
  FormPadrao: TFormPadrao;

implementation

{$R *.dfm}

procedure TFormPadrao.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFormPadrao.FormCreate(Sender: TObject);
begin
  PageControl.ActivePageIndex := 0;
  TabCadastro.TabVisible := false;

  FQuery :=
   TModelQuerySQL.New
    .Listar(aTabela,dsPadrao);
end;

end.
