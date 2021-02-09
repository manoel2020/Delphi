unit Model_Cliente;

interface
   uses
      ClienteClass,FireDAC.Comp.Client, System.SysUtils, Data.SqlExpr,
      Datasnap.Provider, Datasnap.DBClient;
type
  TModel_Cliente = class

  private
    { Private declarations }
  public
    { Public declarations }
    function SalvarPessoa(Dados:TPessoa): Boolean;
    function ProximoID:integer;
    function deletarPessoa(Dados:Tpessoa):boolean;//excluss�o Logica.
    function TodosCliente:TClientDataSet;
  end;
implementation

uses
   Geral;

{ TModel_Cliente }

function TModel_Cliente.deletarPessoa(Dados: Tpessoa): boolean;
var
   QueryDelete: TFDQuery;
begin
   AbrirConexaoBD;
   QueryDelete := TFDQuery.Create(nil);
   QueryDelete.ConnectionName := 'Conectar';
   with QueryDelete do
   begin
      try
         Close;
         SQL.Clear;
         SQL.Add('UPDATE PESSOA SET STATUS_CAD=:STATUS');
         SQL.Add('WHERE ID_PESSOA=:ID AND EMPRESA=:EMPRESA');
         ParamByName('STATUS').AsString   := Dados.status_cad;
         ParamByName('ID').AsInteger      := Dados.id_pessoa;
         ParamByName('EMPRESA').AsInteger := Dados.empresa;
         ExecSQL;
         Close;
         Result := True;
         FecharConexaoBD;
      except on E: Exception do
         Result := False;
      end;
   end;
end;

function TModel_Cliente.ProximoID: integer;
var
   QueryPesquisa: TFDQuery;
begin
   AbrirConexaoBD;
   QueryPesquisa := TFDQuery.Create(nil);
   QueryPesquisa.ConnectionName := 'Conectar';
   with QueryPesquisa do
   begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT MAX(ID_PESSOA)+1 AS ID FROM PESSOA');
      Open;
      Result := FieldByName('ID').AsInteger;
      Close;
      FecharConexaoBD;
   end;
end;

Function TModel_Cliente.SalvarPessoa(Dados: TPessoa):Boolean;
var
  QuerySalvar: TFDQuery;
begin
   AbrirConexaoBD;
   QuerySalvar := TFDQuery.Create(nil);
   QuerySalvar.ConnectionName := 'Conectar';
   with QuerySalvar do
   begin
      try
         Close;
         SQL.Clear;
         SQL.Add('INSERT INTO PESSOA (ID_PESSOA,EMPRESA,NOME,SEXO,DATA_NASC,CPF_PESSOA,STATUS_CAD) ');
         SQL.Add('VALUES (');
         SQL.Add('default,:EMPRESA,:NOME,:SEXO,:DATA_NASC,:CPF_PESSOA,:STATUS_CAD)');
         ParamByName('EMPRESA').AsInteger := 001;
         ParamByName('NOME').AsString := Dados.nome_pessoa;
         ParamByName('SEXO').AsString := Dados.sexo;
         ParamByName('DATA_NASC').AsDateTime := strToDateTime(Dados.dataNasc);
         ParamByName('CPF_PESSOA').AsString := Dados.cpf_pessoa;
         ParamByName('STATUS_CAD').AsString := Dados.status_cad;
         ExecSQL;
         Result := True;
      except on E: Exception do
         Result := False;
      end;
      Close;
      FecharConexaoBD;
   end;
end;

function TModel_Cliente.TodosCliente: TClientDataSet;
var
   QueryPesquisa: TFDQuery;
   DataSetResult : TSQLDataSet;
   fprovider: TDataSetProvider;
begin
   AbrirConexaoBD;
   QueryPesquisa := TFDQuery.Create(nil);
   fprovider := TDataSetProvider.Create(nil);
   result := TClientDataSet.Create(nil);
   result.SetProvider(fprovider);
   fprovider.DataSet := QueryPesquisa;
   try
      QueryPesquisa.ConnectionName := 'Conectar';
      QueryPesquisa.SQL.Add('SELECT * FROM PESSOA');
      result.Open;
   finally
      fprovider.free;
      QueryPesquisa.Close;
      QueryPesquisa.Free;
   end;
   FecharConexaoBD;
end;

end.
