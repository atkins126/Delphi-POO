unit uFrmCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmPadrao, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls;

type
  TFrmCadProdutos = class(TFormPadrao)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadProdutos: TFrmCadProdutos;

implementation

{$R *.dfm}

procedure TFrmCadProdutos.FormCreate(Sender: TObject);
begin
  aTabela := 'produtos';
  inherited;
end;

end.
