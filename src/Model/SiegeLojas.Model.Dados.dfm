object DmDados: TDmDados
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Conceito Tecnologia\Desktop\Nova pasta\Delphi\' +
        'SiegeLojas\bin\SiegeLojasDB.db3'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 192
    Top = 48
  end
  object QryBancoDados: TFDQuery
    Connection = FDConnection1
    Left = 324
    Top = 48
  end
end
