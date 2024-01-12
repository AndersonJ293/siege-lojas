unit SiegeLojas.View.Vendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.WinXPickers, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids, Vcl.WinXCalendars;

type
  TFrmVendedores = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtnFechar: TSpeedButton;
    BtnExcluir: TSpeedButton;
    BtnCancelar: TSpeedButton;
    BtnEditar: TSpeedButton;
    BtnSalvar: TSpeedButton;
    BtnAdicionar: TSpeedButton;
    BtnPesquisar: TSpeedButton;
    DataSource1: TDataSource;
    Label1: TLabel;
    Panel4: TPanel;
    EdtCod: TEdit;
    Panel5: TPanel;
    Shape1: TShape;
    Panel6: TPanel;
    Label2: TLabel;
    Panel7: TPanel;
    Shape2: TShape;
    Panel8: TPanel;
    Label3: TLabel;
    Panel9: TPanel;
    Shape3: TShape;
    EdtNome: TEdit;
    Panel10: TPanel;
    Label4: TLabel;
    Panel11: TPanel;
    Shape4: TShape;
    EdtCpf: TEdit;
    Panel12: TPanel;
    Label5: TLabel;
    Panel13: TPanel;
    Shape5: TShape;
    EdtTelefone: TEdit;
    Panel14: TPanel;
    Label6: TLabel;
    Panel15: TPanel;
    Shape6: TShape;
    EdtCelular: TEdit;
    Panel16: TPanel;
    Label7: TLabel;
    Panel17: TPanel;
    Shape7: TShape;
    EdtCep: TEdit;
    Panel18: TPanel;
    Label8: TLabel;
    Panel19: TPanel;
    Shape8: TShape;
    EdtEndereco: TEdit;
    Panel20: TPanel;
    Label9: TLabel;
    Panel21: TPanel;
    Shape9: TShape;
    EdtNumero: TEdit;
    Panel22: TPanel;
    Label10: TLabel;
    Panel23: TPanel;
    Shape10: TShape;
    EdtBairro: TEdit;
    Panel24: TPanel;
    Label11: TLabel;
    Panel25: TPanel;
    Shape11: TShape;
    EdtCidade: TEdit;
    Panel26: TPanel;
    Label12: TLabel;
    Panel27: TPanel;
    Shape12: TShape;
    EdtEstado: TEdit;
    Panel28: TPanel;
    Label13: TLabel;
    Panel29: TPanel;
    Shape13: TShape;
    EdtEmail: TEdit;
    Panel30: TPanel;
    Label14: TLabel;
    Panel31: TPanel;
    Shape14: TShape;
    EdtComissao: TEdit;
    Panel32: TPanel;
    Label15: TLabel;
    Panel33: TPanel;
    Shape15: TShape;
    EdtOperador: TEdit;
    DBNavigator1: TDBNavigator;
    EdtData: TCalendarPicker;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAdicionarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnSalvarClick(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure LimpaCampos;
    procedure BloqueiaCampos;
    procedure LiberaCampos;
    procedure ValidaCampo(Campo: TEdit);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
  public
    { Public declarations }
  end;

var
  FrmVendedores: TFrmVendedores;

implementation

{$R *.dfm}

uses SiegeLojas.Model.Vendedores, System.DateUtils, System.SysUtils;

procedure TFrmVendedores.BloqueiaCampos;
var Contador : integer;
begin
  for Contador := 0 to Pred(ComponentCount) do
      if Components[Contador] is TCustomEdit then
          TCustomEdit(Components[Contador]).Enabled := false;
  DBNavigator1.Enabled := true;
end;

procedure TFrmVendedores.BtnAdicionarClick(Sender: TObject);
begin
  LimpaCampos;
  DataSource1.DataSet.Insert;
  EdtData.Date := Now;
  LiberaCampos;
  EdtCod.Text := '<Próximo>';
  EdtNome.SetFocus;
  HabilitaBotoes;
end;

procedure TFrmVendedores.BtnCancelarClick(Sender: TObject);
begin
  DataSource1.DataSet.Cancel;
  BloqueiaCampos;
  DesabilitaBotoes;
end;

procedure TFrmVendedores.BtnEditarClick(Sender: TObject);
begin
  DataSource1.DataSet.Edit;
  LiberaCampos;
  HabilitaBotoes;
end;

procedure TFrmVendedores.BtnFecharClick(Sender: TObject);
begin
  BtnCancelarClick(Sender);
  Close;
end;

procedure TFrmVendedores.BtnSalvarClick(Sender: TObject);
begin
  ValidaCampo(EdtNome);
  ValidaCampo(EdtCpf);
  ValidaCampo(EdtCelular);
  ValidaCampo(EdtCep);
  ValidaCampo(EdtEndereco);
  ValidaCampo(EdtBairro);
  ValidaCampo(EdtCidade);
  ValidaCampo(EdtEstado);
  ValidaCampo(EdtComissao);

  if DataSource1.DataSet.State in [dsInsert] then
    begin
      DmVendedores.CdsVendedoresId_Vendedor.AsInteger := 4;
      DmVendedores.CdsVendedoresOperador.AsString := 'Supervisor';
      DmVendedores.CdsVendedoresData.AsDateTime := EdtData.Date;
    end;

  DmVendedores.CdsVendedoresNome.AsString := Trim(EdtNome.Text);
  DmVendedores.CdsVendedoresCpf.AsString := Trim(EdtCpf.Text);
  DmVendedores.CdsVendedoresTelefone.AsString := Trim(EdtTelefone.Text);
  DmVendedores.CdsVendedoresCelular.AsString := Trim(EdtTelefone.Text);
  DmVendedores.CdsVendedoresCep.AsString := Trim(EdtCep.Text);
  DmVendedores.CdsVendedoresEndereco.AsString := Trim(EdtEndereco.Text);
  DmVendedores.CdsVendedoresNumero.AsString := Trim(EdtNumero.Text);
  DmVendedores.CdsVendedoresBairro.AsString := Trim(EdtBairro.Text);
  DmVendedores.CdsVendedoresCidade.AsString := Trim(EdtCidade.Text);
  DmVendedores.CdsVendedoresEstado.AsString := Trim(EdtEstado.Text);
  DmVendedores.CdsVendedoresComissao.AsCurrency := StrToFloat(Trim(EdtComissao.Text));
  DmVendedores.CdsVendedoresEmail.AsString := Trim(EdtEmail.Text);

  DmVendedores.CdsVendedores.Post;
  DmVendedores.CdsVendedores.ApplyUpdates(0);

  BloqueiaCampos;
  DesabilitaBotoes;
end;

procedure TFrmVendedores.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  if not (DmVendedores.CdsVendedores.State in [dsInsert])
   and not (DmVendedores.CdsVendedores.State in [dsEdit]) then
    begin
      EdtCod.Text := DmVendedores.CdsVendedoresId_Vendedor.AsString;
      EdtData.Date := DmVendedores.CdsVendedoresData.Value;
      EdtNome.Text := DmVendedores.CdsVendedoresNome.AsString;
      EdtCpf.Text := DmVendedores.CdsVendedoresCpf.AsString;
      EdtTelefone.Text := DmVendedores.CdsVendedoresTelefone.AsString;
      EdtCelular.Text := DmVendedores.CdsVendedoresCelular.AsString;
      EdtCep.Text := DmVendedores.CdsVendedoresCep.AsString;
      EdtEndereco.Text := DmVendedores.CdsVendedoresEndereco.AsString;
      EdtNumero.Text := DmVendedores.CdsVendedoresNumero.AsString;
      EdtBairro.Text := DmVendedores.CdsVendedoresBairro.AsString;
      EdtCidade.Text := DmVendedores.CdsVendedoresCidade.AsString;
      EdtEstado.Text := DmVendedores.CdsVendedoresEstado.AsString;
      EdtComissao.Text := FormatCurr('0.00',
        DmVendedores.CdsVendedoresComissao.AsCurrency);
      EdtEmail.Text := DmVendedores.CdsVendedoresEmail.AsString;
      EdtOperador.Text := DmVendedores.CdsVendedoresOperador.AsString;
    end;
end;

procedure TFrmVendedores.DesabilitaBotoes;
begin
  BtnSalvar.Enabled := false;
  BtnCancelar.Enabled := false;

  BtnAdicionar.Enabled := true;
  BtnEditar.Enabled := true;
  BtnExcluir.Enabled := true;
  BtnPesquisar.Enabled := true;
end;

procedure TFrmVendedores.FormShow(Sender: TObject);
begin
  DmVendedores.CdsVendedores.Close;
  DmVendedores.CdsVendedores.CommandText := 'select * from tb_vendedores';
  DmVendedores.CdsVendedores.Open;
  BloqueiaCampos;
end;

procedure TFrmVendedores.HabilitaBotoes;
begin
  BtnSalvar.Enabled := true;
  BtnCancelar.Enabled := true;

  BtnAdicionar.Enabled := false;
  BtnEditar.Enabled := false;
  BtnExcluir.Enabled := false;
  BtnPesquisar.Enabled := false;
end;

procedure TFrmVendedores.LiberaCampos;
var Contador : integer;
begin
  for Contador := 0 to Pred(ComponentCount) do
      if Components[Contador] is TCustomEdit then
          TCustomEdit(Components[Contador]).Enabled := true;
  EdtCod.Enabled := false;
  EdtOperador.Enabled := false;
  DBNavigator1.Enabled := false;
end;

procedure TFrmVendedores.LimpaCampos;
var Contador : integer;
begin
  for Contador := 0 to Pred(ComponentCount) do
    begin
      if Components[Contador] is TCustomEdit then
          TCustomEdit(Components[Contador]).Clear;
    end;
end;


procedure TFrmVendedores.ValidaCampo(Campo: TEdit);
begin
  if Trim(Campo.Text) = '' then
    begin
      Campo.SetFocus;
      Application.MessageBox(PWideChar('O campo ' + Campo.TextHint
        + ' não pode ser vazio.') , 'Atenção',
          MB_OK + MB_ICONWARNING);
      abort;
    end;
end;

end.
