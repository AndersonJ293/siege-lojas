unit SiegeLojas.View.MensagemFlutuante;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TFrmMensagemFlutuante = class(TForm)
    PnlMensagem: TPanel;
    PnlFundo: TPanel;
    LblTitulo: TLabel;
    LblMensagem: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMensagemFlutuante: TFrmMensagemFlutuante;

implementation

{$R *.dfm}

procedure TFrmMensagemFlutuante.FormShow(Sender: TObject);
begin
  Timer1.Enabled := false;
  Timer1.Enabled := true;
end;

procedure TFrmMensagemFlutuante.Timer1Timer(Sender: TObject);
begin
  Close;
end;

end.
