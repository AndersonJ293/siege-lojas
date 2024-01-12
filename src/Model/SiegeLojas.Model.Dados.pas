unit SiegeLojas.Model.Dados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDmDados = class(TDataModule)
    FDConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    const ARQUIVOCONFIGURACAO = 'SiegeLojas.cfg';
    function GetConfiguracao(Secao, Parametro, ValorPadrao: String): String;
    procedure CarregaConfig;
  public
    { Public declarations }
  end;

var
  DmDados: TDmDados;

implementation

uses
  System.IniFiles, Vcl.Forms;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDmDados.CarregaConfig;
begin
  FDConnection.Params.Clear;
  FDConnection.Params.Add('DriverID' + '=' +
    GetConfiguracao('Banco de dados', 'DriverID', ''));
  FDConnection.Params.Add('Database' + '=' +
    GetConfiguracao('Banco de dados', 'Database', ''));
  FDConnection.Params.Add('LockingMode' + '=' +
    GetConfiguracao('Banco de dados', 'LockingMode', ''));
end;

procedure TDmDados.DataModuleCreate(Sender: TObject);
begin
  FDConnection.Connected := true;
  CarregaConfig;
end;

procedure TDmDados.DataModuleDestroy(Sender: TObject);
begin
  FDConnection.Connected := false;
end;

function TDmDados.GetConfiguracao(Secao, Parametro,
  ValorPadrao: String): String;
var
  LArquivoConfig: TIniFile;
begin
  LArquivoConfig := TIniFile.Create(ExtractFilePath(Application.ExeName)
                                      + ARQUIVOCONFIGURACAO);
  try
    Result := LArquivoConfig.ReadString(Secao, Parametro, ValorPadrao);
  finally
    LArquivoConfig.Free;
  end;
end;

end.
