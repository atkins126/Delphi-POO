unit Model.Interfaces.Formularios.Abrir;

interface

uses
 Vcl.Forms,
 Model.Interfaces.Formularios,
 uFrmCadProdutos;

type
 tAbrirForm = class(TInterfacedObject,iAbrirForms)
   private
   public
   class function New : iAbrirForms;
   constructor create;
   destructor destroy; override;
   function FormCadastroProdutos(owner : TForm) : TFrmCadProdutos;
 end;

implementation


{ tAbrirForm }

{ tAbrirForm }

constructor tAbrirForm.create;
begin

end;

destructor tAbrirForm.destroy;
begin

  inherited;
end;

function tAbrirForm.FormCadastroProdutos(owner: TForm): TFrmCadProdutos;
begin
  FrmCadProdutos := TFrmCadProdutos.Create(owner);
  result := FrmCadProdutos;
end;

class function tAbrirForm.New: iAbrirForms;
begin
  Result := Self.create;
end;

end.
