object DmVendedores: TDmVendedores
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object SqlVendedores: TFDQuery
    Connection = DmDados.FDConnection
    SQL.Strings = (
      'select * from tb_vendedores')
    Left = 32
    Top = 16
  end
  object CdsVendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspVendedores'
    Left = 160
    Top = 16
    object CdsVendedoresData: TDateField
      FieldName = 'Data'
      Origin = 'data'
    end
    object CdsVendedoresNome: TStringField
      FieldName = 'Nome'
      Origin = 'nome'
      Size = 100
    end
    object CdsVendedoresCpf: TStringField
      FieldName = 'Cpf'
      Origin = 'cpf'
    end
    object CdsVendedoresTelefone: TStringField
      FieldName = 'Telefone'
      Origin = 'telefone'
    end
    object CdsVendedoresCelular: TStringField
      FieldName = 'Celular'
      Origin = 'celular'
    end
    object CdsVendedoresCep: TStringField
      FieldName = 'Cep'
      Origin = 'cep'
      Size = 10
    end
    object CdsVendedoresEndereco: TStringField
      FieldName = 'Endereco'
      Origin = 'endereco'
      Size = 100
    end
    object CdsVendedoresNumero: TStringField
      FieldName = 'Numero'
      Origin = 'numero'
      Size = 10
    end
    object CdsVendedoresBairro: TStringField
      FieldName = 'Bairro'
      Origin = 'bairro'
      Size = 60
    end
    object CdsVendedoresCidade: TStringField
      FieldName = 'Cidade'
      Origin = 'cidade'
      Size = 60
    end
    object CdsVendedoresEstado: TStringField
      FieldName = 'Estado'
      Origin = 'estado'
      Size = 2
    end
    object CdsVendedoresEmail: TStringField
      FieldName = 'Email'
      Origin = 'email'
      Size = 100
    end
    object CdsVendedoresOperador: TStringField
      FieldName = 'Operador'
      Origin = 'operador'
      Size = 50
    end
    object CdsVendedoresId_Vendedor: TIntegerField
      FieldName = 'Id_Vendedor'
      Origin = 'id_vendedor'
    end
    object CdsVendedoresComissao: TFMTBCDField
      FieldName = 'Comissao'
      Size = 18
    end
  end
  object DspVendedores: TDataSetProvider
    DataSet = SqlVendedores
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 296
    Top = 16
  end
end
