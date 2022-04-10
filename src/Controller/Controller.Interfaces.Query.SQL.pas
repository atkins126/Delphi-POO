unit Controller.Interfaces.Query.SQL;

interface

  uses
   Controller.Interfaces.Query,
   Model.Interfaces.Conexao,
   Model.Interfaces.Query;

  type
   TControllerSQL = class(TInterfacedObject, iControllerQuery)
     private
     public
     constructor create;
     destructor destroy; override;
     class function New : iControllerQuery;
     function query(Conexao : iConexao) : iQuery;
   end;

implementation

{ TControllerSQL }

constructor TControllerSQL.create;
begin

end;

destructor TControllerSQL.destroy;
begin

  inherited;
end;

class function TControllerSQL.New: iControllerQuery;
begin
  Result := Self.Create;
end;

function TControllerSQL.query(Conexao: iConexao): iQuery;
begin
  Result := TModelQuery.New(Conexao);
end;

end.
