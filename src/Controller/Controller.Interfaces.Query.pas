unit Controller.Interfaces.Query;

interface

uses
  Model.Interfaces.Conexao;

type

  iControllerQuery = interface
    ['{54395377-D65A-458C-8F1B-764A11A9C070}']
    function Query(Connection : iConexao) : iQuery;
  end;

implementation

end.
