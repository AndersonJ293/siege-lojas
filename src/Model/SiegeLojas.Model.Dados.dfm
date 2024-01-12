object DmDados: TDmDados
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object FDConnection: TFDConnection
    Params.Strings = (
      'DriverID=sQLite')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    LoginPrompt = False
    Left = 56
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrAppWait
    Left = 192
    Top = 48
  end
end
