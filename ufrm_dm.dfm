object frm_dm: Tfrm_dm
  OldCreateOrder = False
  Height = 412
  Width = 541
  object conn_ccs: TFDConnection
    Params.Strings = (
      'Database=ccs'
      'User_Name=sa'
      'Password=ccspassword'
      'Server=192.168.88.150'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object driver_mysql: TFDPhysMySQLDriverLink
    Left = 32
    Top = 64
  end
  object cursor_ccs: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 112
  end
  object qry_user: TFDQuery
    Connection = conn_ccs
    Left = 32
    Top = 160
  end
end
