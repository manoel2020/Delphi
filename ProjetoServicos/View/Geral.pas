unit Geral;

interface
   uses
      System.Classes, System.SysUtils, Vcl.ExtCtrls, Vcl.Forms;

      procedure AbrirConexaoBD;
      procedure FecharConexaoBD;
      Function RetornaIdade(dtaNasc:Tdate):integer;
      procedure LimpaComponentes(Componente:Tpanel);
      Function ComponentsObrigatorios(Form : TForm):Boolean;
implementation

Uses
   ConexaoBD, Vcl.StdCtrls, Vcl.Dialogs;

procedure AbrirConexaoBD;
var
  Conexao: TDataModule2;
begin
   Conexao := TDataModule2.Create(nil);
   Conexao.FDConnection1.Connected := true;
end;

procedure FecharConexaoBD;
var
  Conexao: TDataModule2;
begin
   Conexao := TDataModule2.Create(nil);
   Conexao.FDConnection1.Connected := False;
end;

Function RetornaIdade(dtaNasc:Tdate):integer;
var
  Dia,Mes,Ano: String;
  Idade: Integer;
begin
   Dia := FormatDateTime('dd',Date);
   Mes := FormatDateTime('mm',Date);
   Ano := FormatDateTime('yyyy',Date);
   Result := 2;
end;

procedure LimpaComponentes(Componente:Tpanel);
var
  I: Integer;
begin
   for I := 0 to Componente.ControlCount -1 do
   begin
      if(Componente.Controls[i] is TEdit )then
         if((Componente.Controls[i] as TEdit).Tag = 2)then
            (Componente.Controls[i] as TEdit).Clear;
   end;
end;

Function ComponentsObrigatorios(Form : TForm):Boolean;
var
   i:Integer;
begin
   for I := 0 to Form.ComponentCount -1 do
   begin
      if(Form.Components[i] is TEdit )then
         if((Form.Components[i] as TEdit).Tag = 2) And ((Form.Components[i] as TEdit).Text = '') then
         begin
            ShowMessage('Campo Vazio');
            (Form.Components[i] as TEdit).SetFocus;
            Result := True;
            Exit;
         end;
   end;
end;
end.
