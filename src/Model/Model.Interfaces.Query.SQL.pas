unit Model.Interfaces.Query.SQL;

interface

uses
Data.DB,
System.SysUtils,
Vcl.Dialogs,
Model.Interfaces.Conexao,
Controller.Interfaces.Query.SQL;

  type
    TModelQuerySQL = class(TInterfacedObject, iSQL)
      private
        FQuery : iQuery;
      public
      constructor create;
      destructor destroy; override;
      class function New : iSQL;
      function Listar(aTabela : String; aDataSource : TDataSource) : iSQL;
      function ListaCampos(aTabela : String; aDataSource : TDataSource) : iSQL;
    end;

implementation


{ TModelQuerySQL }

constructor TModelQuerySQL.create;
begin
  FQuery := TControllerSQL.New.Query(nil);
end;

destructor TModelQuerySQL.destroy;
begin

  inherited;
end;

function TModelQuerySQL.ListaCampos(aTabela: String; aDataSource: TDataSource): iSQL;
begin
  Result := Self;
  FQuery.SQL('select * from ' + aTabela);
  aDataSource.DataSet := FQuery.DataSet;
end;

function TModelQuerySQL.Listar(aTabela : String; aDataSource: TDataSource): iSQL;
begin
  try
    Result := Self;
    FQuery.SQL('select * from ' + aTabela);
    aDataSource.DataSet := FQuery.DataSet;
    Except On E: Exception do
    begin
      ShowMessage('Erro Interno ' + e.Message);
      exit
    end;
  end;
end;

class function TModelQuerySQL.New: iSQL;
begin
  Result := Self.create;
end;

end.
