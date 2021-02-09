unit FServicos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons;

type
  TFCServicos = class(TForm)
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCServicos: TFCServicos;

implementation

{$R *.dfm}

procedure TFCServicos.SpeedButton1Click(Sender: TObject);
begin
   Close;
end;

end.
