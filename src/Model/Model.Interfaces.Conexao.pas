unit Model.Interfaces.Conexao;

interface

uses
  Data.DB;

  type
   iConexao = interface
     ['{AB9751F8-A37A-4CCE-85D2-F2089BAFA767}']
     function Conexao : TCustomConnection;
   end;

   iQuery = interface
     ['{F94E0B40-A91B-4913-A2E5-0345AE19860C}']
     function SQL(aValue : string) : iQuery;
     function DataSet : TDataSet;
   end;

   iSQL = interface
     ['{D73D006E-BFBE-4328-85C4-612C08513DE0}']
     function Listar(aTabela : String; aDataSource : TDataSource) : iSQL;
     function ListaCampos(aTabela : String; aDataSource : TDataSource) : iSQL;
   end;

implementation

end.
