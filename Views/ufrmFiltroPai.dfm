object frmFiltroPai: TfrmFiltroPai
  Left = 0
  Top = 0
  Caption = 'frmFiltroPai'
  ClientHeight = 338
  ClientWidth = 789
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 789
    Height = 70
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 7
      Width = 31
      Height = 13
      Caption = 'Label1'
    end
    object edtFiltro: TEdit
      Left = 8
      Top = 26
      Width = 184
      Height = 21
      TabOrder = 0
    end
    object btnFiltro: TButton
      Left = 208
      Top = 23
      Width = 80
      Height = 28
      Caption = 'btnFiltro'
      TabOrder = 1
    end
    object Panel2: TPanel
      Left = 688
      Top = 1
      Width = 100
      Height = 68
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
      object btnSair: TButton
        Left = 16
        Top = 22
        Width = 75
        Height = 25
        Caption = 'Sair'
        TabOrder = 0
        OnClick = btnSairClick
      end
    end
  end
  object fdQryFiltro: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    Left = 672
    Top = 128
  end
  object dsFiltro: TDataSource
    DataSet = fdQryFiltro
    Left = 672
    Top = 74
  end
  object fdTransaction: TFDTransaction
    Connection = dmConexao.fdConexao
    Left = 672
    Top = 184
  end
end
