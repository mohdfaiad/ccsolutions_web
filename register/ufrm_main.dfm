object frm_main: Tfrm_main
  Left = 0
  Top = 0
  Width = 700
  Height = 500
  RenderInvisibleControls = True
  AllowPageAccess = True
  ConnectionMode = cmAny
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = True
  ShowHint = True
  XPTheme = True
  DesignSize = (
    700
    500)
  DesignLeft = 8
  DesignTop = 8
  object IWRegion1: TIWRegion
    Left = 125
    Top = 125
    Width = 450
    Height = 250
    RenderInvisibleControls = True
    Anchors = []
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    object edtNome: TIWEdit
      Left = 22
      Top = 55
      Width = 200
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'edtNome'
      SubmitOnAsyncEvent = True
      TabOrder = 0
    end
    object IWLabel1: TIWLabel
      Left = 22
      Top = 33
      Width = 36
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Nome'
    end
    object edtSobrenome: TIWEdit
      Left = 228
      Top = 55
      Width = 200
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 1
    end
    object IWLabel2: TIWLabel
      Left = 228
      Top = 33
      Width = 72
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Sobrenome'
    end
    object edtEmail: TIWEdit
      Left = 22
      Top = 104
      Width = 200
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 2
    end
    object IWLabel3: TIWLabel
      Left = 22
      Top = 82
      Width = 39
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'E-mail'
    end
    object edtTel1: TIWEdit
      Left = 228
      Top = 104
      Width = 97
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 3
    end
    object IWLabel4: TIWLabel
      Left = 228
      Top = 82
      Width = 36
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Tel. 1'
    end
    object edtUsuario: TIWEdit
      Left = 22
      Top = 153
      Width = 200
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 5
    end
    object IWLabel5: TIWLabel
      Left = 22
      Top = 131
      Width = 47
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Usu'#225'rio'
    end
    object edtSenha: TIWEdit
      Left = 228
      Top = 153
      Width = 200
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 6
      PasswordPrompt = True
    end
    object IWLabel6: TIWLabel
      Left = 228
      Top = 131
      Width = 39
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Senha'
    end
    object edtDtNasc: TIWEdit
      Left = 331
      Top = 104
      Width = 97
      Height = 21
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWEdit1'
      SubmitOnAsyncEvent = True
      TabOrder = 4
      Text = 'DD/MM/YYYY'
    end
    object IWLabel7: TIWLabel
      Left = 331
      Top = 82
      Width = 56
      Height = 16
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      HasTabOrder = False
      FriendlyName = 'IWLabel1'
      Caption = 'Dt. Nasc.'
    end
    object btnRegistrar: TIWButton
      Left = 331
      Top = 191
      Width = 97
      Height = 25
      Caption = 'Registrar-se'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'btnRegistrar'
      TabOrder = 7
      OnClick = btnRegistrarClick
    end
    object btnCancelar: TIWButton
      Left = 228
      Top = 191
      Width = 97
      Height = 25
      Caption = 'Cancelar'
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'IWButton1'
      TabOrder = 8
    end
  end
  object strproc_register: TFDStoredProc
    Connection = IWUserSession.connCCS
    StoredProcName = 'ccs.p_singup'
    Left = 72
    Top = 34
    ParamData = <
      item
        Position = 1
        Name = 'p_first_name'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 2
        Name = 'p_last_name'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 3
        Name = 'p_email'
        DataType = ftString
        ParamType = ptInput
        Size = 65
      end
      item
        Position = 4
        Name = 'p_phone1'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Position = 5
        Name = 'p_username'
        DataType = ftString
        ParamType = ptInput
        Size = 65
      end
      item
        Position = 6
        Name = 'p_password'
        DataType = ftString
        ParamType = ptInput
        Size = 50
      end
      item
        Position = 7
        Name = 'p_dt_birth_open'
        DataType = ftDate
        ParamType = ptInput
      end>
  end
end
