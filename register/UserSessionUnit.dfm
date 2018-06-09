object IWUserSession: TIWUserSession
  OldCreateOrder = False
  Height = 225
  Width = 101
  object connCCS: TFDConnection
    Params.Strings = (
      'ConnectionDef=ccs_connection')
    ResourceOptions.AssignedValues = [rvAutoReconnect]
    ResourceOptions.AutoReconnect = True
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object wait_cursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 160
  end
  object manCCS: TFDManager
    DriverDefFileName = 'C:\ccsolutions_web\data\ccs_connection.ini'
    ConnectionDefFileName = 'C:\ccsolutions_web\data\ccs_connection.ini'
    FormatOptions.AssignedValues = [fvMapRules]
    FormatOptions.OwnMapRules = True
    FormatOptions.MapRules = <>
    Active = True
    Left = 32
    Top = 64
  end
  object mysql_driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\ccsolutions_web\bin\libmysql.dll'
    Left = 32
    Top = 112
  end
end
