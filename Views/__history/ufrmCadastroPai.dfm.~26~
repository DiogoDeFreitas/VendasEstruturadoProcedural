object frmCadastroPai: TfrmCadastroPai
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'frmCadastroPai'
  ClientHeight = 330
  ClientWidth = 719
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlCabecalho: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 41
    Align = alTop
    TabOrder = 0
    object btnNovo: TBitBtn
      Left = 0
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnGravar: TBitBtn
      Left = 80
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Gravar'
      TabOrder = 1
      OnClick = btnGravarClick
    end
    object btnCancelar: TBitBtn
      Left = 160
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 2
      OnClick = btnCancelarClick
    end
    object btnExcluir: TBitBtn
      Left = 240
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = btnExcluirClick
    end
    object btnSair: TBitBtn
      Left = 645
      Top = 0
      Width = 75
      Height = 41
      Caption = 'Sair'
      TabOrder = 4
      OnClick = btnSairClick
    end
  end
  object fdQryCadastro: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    UpdateObject = fdUpdCadastro
    Left = 664
    Top = 128
  end
  object fdUpdCadastro: TFDUpdateSQL
    Connection = dmConexao.fdConexao
    Left = 664
    Top = 192
  end
  object fdTransaction: TFDTransaction
    Connection = dmConexao.fdConexao
    Left = 665
    Top = 264
  end
  object dsCadastro: TDataSource
    DataSet = fdQryCadastro
    Left = 664
    Top = 80
  end
end
