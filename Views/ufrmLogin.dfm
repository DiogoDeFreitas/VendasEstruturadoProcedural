object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 187
  ClientWidth = 274
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 72
    Top = 56
    Width = 36
    Height = 13
    Caption = 'Usuario'
  end
  object Label2: TLabel
    Left = 72
    Top = 104
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object edtLogin: TEdit
    Left = 72
    Top = 72
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 72
    Top = 120
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object btnLogar: TButton
    Left = 48
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Logar'
    Default = True
    TabOrder = 2
    OnClick = btnLogarClick
  end
  object Button2: TButton
    Left = 136
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Sair'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 274
    Height = 41
    Align = alTop
    Caption = 'LOGIN'
    TabOrder = 4
  end
  object fdQryLogin: TFDQuery
    Connection = dmConexao.fdConexao
    SQL.Strings = (
      'SELECT LOGIN,'
      '       SENHA'
      'FROM USUARIO'
      'WHERE LOGIN = :LOGIN')
    Left = 224
    Top = 56
    ParamData = <
      item
        Name = 'LOGIN'
        DataType = ftWideString
        ParamType = ptInput
        Size = 20
        Value = Null
      end>
  end
end
