unit Model.Interfaces.Formularios;

interface

uses
 Vcl.Forms,
 uFrmCadProdutos;

type
 iAbrirForms = interface
   ['{D6C79E52-239B-4967-82D8-7C9A216451BD}']
   function FormCadastroProdutos(owner : TForm) : TFrmCadProdutos;
 end;

implementation

end.
