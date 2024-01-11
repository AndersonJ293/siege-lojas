unit SiegeLojas.Model.Vendedores;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient;

type
  TDmVendedores = class(TDataModule)
    SqlVendedores: TFDQuery;
    CdsVendedores: TClientDataSet;
    DspVendedores: TDataSetProvider;
    CdsVendedoresData: TDateField;
    CdsVendedoresNome: TStringField;
    CdsVendedoresCpf: TStringField;
    CdsVendedoresTelefone: TStringField;
    CdsVendedoresCelular: TStringField;
    CdsVendedoresCep: TStringField;
    CdsVendedoresEndereco: TStringField;
    CdsVendedoresNumero: TStringField;
    CdsVendedoresBairro: TStringField;
    CdsVendedoresCidade: TStringField;
    CdsVendedoresEstado: TStringField;
    CdsVendedoresEmail: TStringField;
    CdsVendedoresOperador: TStringField;
    CdsVendedoresId_Vendedor: TIntegerField;
    CdsVendedoresComissao: TBCDField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmVendedores: TDmVendedores;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SiegeLojas.Model.Dados;

{$R *.dfm}

end.
