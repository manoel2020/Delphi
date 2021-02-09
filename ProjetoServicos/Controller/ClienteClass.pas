unit ClienteClass;

interface

uses
  FireDAC.Comp.Client, Data.SqlExpr;
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
    procedure Setcpf_pessoa(const Value: string);
    procedure SetdataNasc(const Value: String);
    procedure Setempresa(const Value: integer);
    procedure Setid_pessoa(const Value: integer);
    procedure Setnome_pessoa(const Value: String);
    procedure Setsexo(const Value: String);
    procedure Setstatus_cad(const Value: String);
   public
      procedure GravarPessoa(objPessoa : TPessoa);
      Function proximoID:Integer;
      Procedure DeletarPessoa(objPessoa:TPessoa);//Excluss�o l�gica.
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

procedure TPessoa.GravarPessoa(objPessoa : TPessoa);
var
  Model_Cliente: TModel_Cliente;
begin
   Model_Cliente := TModel_Cliente.Create;
   try
      if (Model_Cliente.SalvarPessoa(objPessoa))then
         ShowMessage('Cadastrado Com Sucesso!');
   finally
      Model_Cliente.Free;
   end;
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

procedure TPessoa.Setcpf_pessoa(const Value: string);
begin
  Fcpf_pessoa := Value;
end;

procedure TPessoa.SetdataNasc(const Value: String);
begin
  FdataNasc := Value;
end;

procedure TPessoa.Setempresa(const Value: integer);
begin
  Fempresa := Value;
end;

procedure TPessoa.Setid_pessoa(const Value: integer);
begin
  Fid_pessoa := Value;
end;

procedure TPessoa.Setnome_pessoa(const Value: String);
begin
  Fnome_pessoa := Value;
end;

procedure TPessoa.Setsexo(const Value: String);
begin
   if(Value='Masculino')then
     Fsexo := 'M'
   else if(Value='Feminino')then
     Fsexo := 'F'
   else
      Fsexo := 'N';
end;

procedure TPessoa.Setstatus_cad(const Value: String);
begin
  Fstatus_cad := Value;
end;

end.
