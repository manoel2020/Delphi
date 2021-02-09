unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Data.FMTBcd, Data.SqlExpr, Data.DB,
  EnterEditBackground, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFPrincipal = class(TForm)
    Panel1: TPanel;
    Musuario: TSpeedButton;
    MCliente: TSpeedButton;
    MSair: TSpeedButton;
    Panel2: TPanel;
    PFundo: TPanel;
    procedure Panel3MouseEnter(Sender: TObject);
    procedure MSairClick(Sender: TObject);
    procedure MusuarioClick(Sender: TObject);
    procedure MClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure ativar(botao : TSpeedButton;ativar:boolean);
    procedure PercorreForms;
  public
    { Public declarations }
     FormCriado : Tform;
  end;

var
  FPrincipal: TFPrincipal;

implementation

Uses
   FCliente,FServicos,ConexaoBD;
{$R *.dfm}

procedure TFPrincipal.ativar(botao : TSpeedButton;ativar:boolean);
var
  i: Integer;
begin
  if(ativar)then
  begin
     for I := 0 to FPrincipal.ComponentCount -1 do
     begin
        if(FPrincipal.Components[i] is Tpanel)And((FPrincipal.Components[i] as Tpanel).Tag <> 0)then
        begin
           if(FPrincipal.Components[i] as Tpanel).Tag = botao.Tag then
           begin
              (FPrincipal.Components[i] as Tpanel).Visible := true;
              (FPrincipal.Components[i] as Tpanel).Left := botao.Left;
           end else
           begin
              (FPrincipal.Components[i] as Tpanel).Visible := False;
           end;
        end;
     end;
  end else
  begin
     for I := 0 to FPrincipal.ComponentCount -1 do
     begin
       if(FPrincipal.Components[i] is Tpanel)And((FPrincipal.Components[i] as Tpanel).Tag <> 0)then
        begin
           (FPrincipal.Components[i] as Tpanel).Visible := False;
        end;
     end;
  end;
end;

procedure TFPrincipal.Panel3MouseEnter(Sender: TObject);
begin
   //ativar(nil,False);
end;

procedure TFPrincipal.MusuarioClick(Sender: TObject);
begin
   PercorreForms;
   FCCliente              := TFCCliente.Create(Self);
   FCCliente.Parent       := PFundo;
   FCCliente.Align        := alClient;
   FCCliente.BorderStyle  := bsNone;

   FormCriado := FCCliente;
   FCCliente.Show;
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   application.Terminate;
end;

procedure TFPrincipal.MClienteClick(Sender: TObject);
begin
   PercorreForms;
   FCServicos              := TFCServicos.Create(Self);
   FCServicos.Parent       := PFundo;
   FCServicos.Align        := alClient;
   FCServicos.BorderStyle  := bsNone;

   FormCriado := FCServicos;
   FCServicos.Show;
end;

procedure TFPrincipal.MSairClick(Sender: TObject);
begin
   application.Terminate;
end;

procedure TFPrincipal.PercorreForms;
var
  I: Integer;
begin
   for I := 0 to Screen.FormCount-1 do
   begin
      if(Screen.Forms[i].Parent = PFundo)then
      begin
         Screen.Forms[i].Free;
      end;
   end;
end;
end.
