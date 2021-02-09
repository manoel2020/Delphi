unit ClienteClass;

interface

uses
  FireDAC.Comp.Client, Data.SqlExpr, Datasnap.DBClient;
type
   TPessoa = class
   private
    Fstatus_cad: String;
    Fcpf_pessoa: string;
    Fid_pessoa: integer;
    FdataNasc: String;
    Fnome_pessoa: String;
    Fempresa: integer;
    Fsexo: String;
   public
      function Setcpf_pessoa(const Value: string): TPessoa;
      function SetdataNasc(const Value: String): TPessoa;
      function Setempresa(const Value: integer): TPessoa;
      function Setid_pessoa(const Value: integer): TPessoa;
      function Setnome_pessoa(const Value: String): TPessoa;
      function Setsexo(const Value: String): TPessoa;
      function Setstatus_cad(const Value: String): TPessoa;
      class function New: TPessoa;
      procedure GravarPessoa();
      Function proximoID:Integer;
      Procedure DeletarPessoa(objPessoa:TPessoa);//Exclussão lógica.
      procedure AlimentaDbgrid(fcliente: TClientDataSet);
      property empresa : integer read Fempresa write Setempresa;
      property id_pessoa : integer  read Fid_pessoa write Setid_pessoa;
      property nome_pessoa : String  read Fnome_pessoa write Setnome_pessoa;
      property sexo : String  read Fsexo write Setsexo;
      property dataNasc: String  read FdataNasc write SetdataNasc;
      property cpf_pessoa: string  read Fcpf_pessoa write Setcpf_pessoa;
      property status_cad: String  read Fstatus_cad write Setstatus_cad;
   end;
implementation

uses
  System.SysUtils, Model_Cliente, Vcl.Dialogs;

{ TPessoa }

procedure TPessoa.AlimentaDbgrid(fcliente: TClientDataSet);
var
  Model_Cliente: TModel_Cliente;
begin
   Model_Cliente := TModel_Cliente.Create;
   try
      fcliente := Model_Cliente.TodosCliente;
   finally
      Model_Cliente.Free;
   end;
end;

procedure TPessoa.DeletarPessoa(objPessoa:TPessoa);
var
  Model_Cliente: TModel_Cliente;
begin
   Model_Cliente := TModel_Cliente.Create;
   try
      if (Model_Cliente.deletarPessoa(objPessoa))then
         ShowMessage('Excluido com Sucesso!');
   finally
      Model_Cliente.Free;
   end;
end;

procedure TPessoa.GravarPessoa();
var
  Model_Cliente: TModel_Cliente;
begin
   Model_Cliente := TModel_Cliente.Create;
   try
      if (Model_Cliente.SalvarPessoa(self))then
         ShowMessage('Cadastrado Com Sucesso!');
   finally
      Model_Cliente.Free;
   end;
end;

class function TPessoa.New: TPessoa;
begin
   result := TPessoa.Create;
end;

function TPessoa.proximoID: Integer;
var
   Model_cliente : TModel_Cliente;
begin
   try
      Model_cliente := TModel_Cliente.Create;
      id_pessoa := Model_cliente.ProximoID;
      result := id_pessoa;
   finally
      FreeAndNil(Model_cliente);
   end;
end;

function TPessoa.Setcpf_pessoa(const Value: string): TPessoa;
begin
  Fcpf_pessoa := Value;
  result := self;
end;

function TPessoa.SetdataNasc(const Value: String): TPessoa;
begin
  FdataNasc := Value;
  result := self;
end;

function TPessoa.Setempresa(const Value: integer): TPessoa;
begin
  Fempresa := Value;
  result := self;
end;

function TPessoa.Setid_pessoa(const Value: integer): TPessoa;
begin
  Fid_pessoa := Value;
  result := self;
end;

function TPessoa.Setnome_pessoa(const Value: String): TPessoa;
begin
  Fnome_pessoa := Value;
  result := self;
end;

function TPessoa.Setsexo(const Value: String): TPessoa;
begin
   if(Value='Masculino')then
     Fsexo := 'M'
   else if(Value='Feminino')then
     Fsexo := 'F'
   else
      Fsexo := 'N';
   result := self;
end;

function TPessoa.Setstatus_cad(const Value: String): TPessoa;
begin
  Fstatus_cad := Value;
  result := self;
end;

end.
