unit SiegeLojas.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.WinXCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ComCtrls, Vcl.StdCtrls,
  SiegeLojas.View.MensagemFlutuante, SiegeLojas.View.Vendedores;

type
  TFrmPrincipal = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    SplitView1: TSplitView;
    PnlMovimentos: TPanel;
    BtnMovimentos: TSpeedButton;
    PnlFinanceiro: TPanel;
    BtnFinanceiro: TSpeedButton;
    PnlEstoque: TPanel;
    BtnEstoque: TSpeedButton;
    PnlCadastro: TPanel;
    BtnCadastro: TSpeedButton;
    PnlRelatorios: TPanel;
    BtnRelatorios: TSpeedButton;
    PnlConsultas: TPanel;
    BtnConsultas: TSpeedButton;
    PnlConfiguracoes: TPanel;
    BtnConfiguracoes: TSpeedButton;
    PnlUtilitarios: TPanel;
    BtnUtilitarios: TSpeedButton;
    PnlSair: TPanel;
    BtnSair: TSpeedButton;
    ToolBar1: TToolBar;
    Panel2: TPanel;
    PnlSubMenuCadastro: TPanel;
    BtnCadastroFornecedores: TSpeedButton;
    BtnCadastroClientes: TSpeedButton;
    BtnCadastroProdutos: TSpeedButton;
    BtnCadastroGrupos: TSpeedButton;
    BtnCadastroVendedores: TSpeedButton;
    PnlSubMenuMovimentos: TPanel;
    BtnMovimentosPedidos: TSpeedButton;
    BtnMovimentosOrcamentos: TSpeedButton;
    BtnMovimentosCompras: TSpeedButton;
    PnlSubMenuConsultas: TPanel;
    BtnConsultaContasPagar: TSpeedButton;
    BtnConsultaFornecedores: TSpeedButton;
    BtnConsultaContasReceber: TSpeedButton;
    BtnConsultaContasPagas: TSpeedButton;
    BtnConsultaContasRecebidas: TSpeedButton;
    PnlSubMenuFinanceiro: TPanel;
    BtnFinanceiroContasPagar: TSpeedButton;
    BtnFinanceiroGrupoContas: TSpeedButton;
    BtnFinanceiroContasReceber: TSpeedButton;
    BtnFinanceiroContasPagas: TSpeedButton;
    BtnFinanceiroContasRecebidas: TSpeedButton;
    BtnConsultaProdutos: TSpeedButton;
    BtnConsultaClientes: TSpeedButton;
    BtnConsultaGrupoContas: TSpeedButton;
    PnlSubMenuConfiguracoes: TPanel;
    BtnConfigUsuarios: TSpeedButton;
    BtnConfigImpressoras: TSpeedButton;
    BtnConfigEmpresa: TSpeedButton;
    Label1: TLabel;
    procedure Image1Click(Sender: TObject);
    procedure BtnSairClick(Sender: TObject);
    procedure BtnCadastroClick(Sender: TObject);
    procedure Panel2MouseEnter(Sender: TObject);
    procedure BtnConfiguracoesClick(Sender: TObject);
    procedure BtnFinanceiroClick(Sender: TObject);
    procedure BtnConsultasClick(Sender: TObject);
    procedure BtnMovimentosClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure BtnCadastroVendedoresClick(Sender: TObject);
  private
    { Private declarations }
    procedure HideSubMenu;
    procedure ShowSubMenu(SubMenu: TPanel; Top, Left: Integer);
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.BtnCadastroClick(Sender: TObject);
begin
  ShowSubMenu(PnlSubMenuCadastro, 65, 0);
end;

procedure TFrmPrincipal.BtnCadastroVendedoresClick(Sender: TObject);
begin
  Application.CreateForm(TFrmVendedores, FrmVendedores);
  FrmVendedores.ShowModal;
end;

procedure TFrmPrincipal.BtnConfiguracoesClick(Sender: TObject);
begin
  ShowSubMenu(PnlSubMenuConfiguracoes, 405, 0);
end;

procedure TFrmPrincipal.BtnConsultasClick(Sender: TObject);
begin
  ShowSubMenu(PnlSubMenuConsultas, 288, 0);
end;

procedure TFrmPrincipal.BtnFinanceiroClick(Sender: TObject);
begin
  ShowSubMenu(PnlSubMenuFinanceiro, 235, 0);
end;

procedure TFrmPrincipal.BtnMovimentosClick(Sender: TObject);
begin
  ShowSubMenu(PnlSubMenuMovimentos, 117, 0);
end;

procedure TFrmPrincipal.BtnSairClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFrmPrincipal.HideSubMenu;
begin
  PnlSubMenuCadastro.Visible := false;
  PnlSubMenuMovimentos.Visible := false;
  PnlSubMenuConsultas.Visible := false;
  PnlSubMenuFinanceiro.Visible := false;
  PnlSubMenuConfiguracoes.Visible := false;
end;

procedure TFrmPrincipal.Image1Click(Sender: TObject);
begin
    SplitView1.Opened := not SplitView1.Opened;
    HideSubMenu;
end;

procedure TFrmPrincipal.Label1Click(Sender: TObject);
begin
     if not Assigned(FrmMensagemFlutuante) then
      Application.CreateForm(TFrmMensagemFlutuante, FrmMensagemFlutuante);
      FrmMensagemFlutuante.LblTitulo.Caption := 'Atenção';
      FrmMensagemFlutuante.LblMensagem.Caption := 'Teste InformaçãoTeste InformaçãoTeste InformaçãoTeste InformaçãoTeste InformaçãoTeste InformaçãoTeste InformaçãoTeste InformaçãoTeste Informação';
      FrmMensagemFlutuante.Timer1.Interval := 3000;
      FrmMensagemFlutuante.ShowModal;
end;

procedure TFrmPrincipal.Panel2MouseEnter(Sender: TObject);
begin
  HideSubMenu;
end;

procedure TFrmPrincipal.ShowSubMenu(SubMenu: TPanel; Top, Left: Integer);
begin
  HideSubMenu;
  SubMenu.Top := Top;
  SubMenu.Left := Left;
  SubMenu.Visible := true;
end;

end.
