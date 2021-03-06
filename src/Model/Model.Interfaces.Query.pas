unit Model.Interfaces.Query;

interface

uses
  Data.DB,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat,
  FireDAC.Phys.SQLiteDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI,
  FireDAC.Phys.SQLite,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  Model.Interfaces.Conexao,
  Model.Interfaces.Conexao.Banco;

  type
   TModelQuery = class(TInterfacedObject, iQuery)
     private
      FParent : iConexao;
      FQuery : TFDQuery;
     public
       constructor create(Parent : iConexao);
       destructor destroy; override;
       class function New(Parent : iConexao) : iQuery;
       function SQL(aValue : string) : iQuery;
       function DataSet : TDataSet;
    end;

implementation

uses
  System.SysUtils;

{ TModelQuery }

constructor TModelQuery.create(Parent: iConexao);
begin
  FParent := Parent;
  FQuery := TFDQuery.Create(nil);

  if not Assigned(FParent) then
    FParent := TModelConexao.New;

  FQuery.Connection := TFDConnection(FParent.Conexao);
end;

function TModelQuery.DataSet: TDataSet;
begin
  Result := FQuery;
end;

destructor TModelQuery.destroy;
begin
  freeandnil(FQuery);
  inherited;
end;

class function TModelQuery.New(Parent: iConexao): iQuery;
begin
  Result := Self.Create(Parent);
end;

function TModelQuery.SQL(aValue: string): iQuery;
begin
  Result := Self;
  FQuery.SQL.Clear;
  FQuery.SQL.Add(aValue);
  FQuery.Active := true;
end;

end.
