unit Model.Interfaces.Conexao.Banco;

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
  Model.Interfaces.Conexao;

  type
   TModelConexao = class(TInterfacedObject, iConexao)
     private
       FConexao: TFDConnection;
     public
     constructor create;
     destructor destroy; override;
     class function New : iConexao;
     function Conexao : TCustomConnection;
   end;

implementation

uses
  System.SysUtils;

{ TModelConexao }

function TModelConexao.Conexao: TCustomConnection;
begin
  Result := FConexao;
end;

constructor TModelConexao.create;
begin
  FConexao := TFDConnection.Create(nil);
  FConexao.DriverName := 'SQlite';
  FConexao.Params.Database := 'C:\Users\netoc\Desktop\POO\Banco\Banco.db';
  FConexao.Connected := true;
end;

destructor TModelConexao.destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

class function TModelConexao.New: iConexao;
begin
  Result := Self.create;
end;

end.
