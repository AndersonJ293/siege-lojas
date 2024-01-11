program SiegeLojas;

uses
  Vcl.Forms,
  SiegeLojas.View.Principal in 'src\View\SiegeLojas.View.Principal.pas' {FrmPrincipal},
  SiegeLojas.Model.Dados in 'src\Model\SiegeLojas.Model.Dados.pas' {DmDados: TDataModule},
  SiegeLojas.View.MensagemFlutuante in 'src\View\SiegeLojas.View.MensagemFlutuante.pas' {FrmMensagemFlutuante},
  SiegeLojas.View.Vendedores in 'src\View\SiegeLojas.View.Vendedores.pas' {FrmVendedores},
  SiegeLojas.Model.Vendedores in 'src\Model\SiegeLojas.Model.Vendedores.pas' {DmVendedores: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TDmDados, DmDados);
  Application.CreateForm(TFrmMensagemFlutuante, FrmMensagemFlutuante);
  Application.CreateForm(TDmVendedores, DmVendedores);
  Application.Run;
end.
