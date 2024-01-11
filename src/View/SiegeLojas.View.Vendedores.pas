unit SiegeLojas.View.Vendedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls, Vcl.WinXPickers, Datasnap.Provider,
  Datasnap.DBClient, Vcl.Grids, Vcl.DBGrids;

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
    EdtData: TDateTimePicker;
    DBGrid1: TDBGrid;
    procedure BtnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmVendedores: TFrmVendedores;

implementation

{$R *.dfm}

uses SiegeLojas.Model.Vendedores;

procedure TFrmVendedores.BtnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmVendedores.DataSource1DataChange(Sender: TObject; Field: TField);
begin
  EdtNome.Text := DmVendedores.CdsVendedoresNome.AsString;
end;

procedure TFrmVendedores.FormShow(Sender: TObject);
begin
  DmVendedores.CdsVendedores.Close;
  DmVendedores.CdsVendedores.CommandText := 'select * from tb_vendedores';
  DmVendedores.CdsVendedores.Open;
end;

end.
