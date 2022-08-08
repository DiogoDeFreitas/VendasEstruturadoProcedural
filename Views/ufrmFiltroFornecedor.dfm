inherited frmFiltroFornecedor: TfrmFiltroFornecedor
  Caption = 'Filtro de Fornecedores'
  ClientWidth = 915
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 931
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 915
    ExplicitWidth = 915
    inherited Label1: TLabel
      Width = 59
      Caption = 'Raz'#227'o social'
      ExplicitWidth = 59
    end
    object Label2: TLabel [1]
      Left = 256
      Top = 7
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    inherited edtFiltro: TEdit
      Width = 236
      ExplicitWidth = 236
    end
    inherited btnFiltro: TButton
      Left = 408
      Width = 81
      Caption = 'Filtro'
      OnClick = btnFiltroClick
      ExplicitLeft = 408
      ExplicitWidth = 81
    end
    inherited Panel2: TPanel
      Left = 814
      ExplicitLeft = 814
    end
    object edtCnpj: TEdit
      Left = 256
      Top = 26
      Width = 128
      Height = 21
      TabOrder = 3
    end
    object edtNovo: TButton
      Left = 496
      Top = 23
      Width = 80
      Height = 28
      Caption = 'Novo'
      TabOrder = 4
      OnClick = edtNovoClick
    end
    object edtVisualizar: TButton
      Left = 583
      Top = 23
      Width = 80
      Height = 28
      Caption = 'Visualizar'
      TabOrder = 5
      OnClick = edtVisualizarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 70
    Width = 915
    Height = 268
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    object fdQryFiltroID_FORNECEDOR_FOR: TIntegerField
      FieldName = 'ID_FORNECEDOR_FOR'
      Origin = 'ID_FORNECEDOR_FOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroRAZAO_SOCIAL_FOR: TWideStringField
      FieldName = 'RAZAO_SOCIAL_FOR'
      Origin = 'RAZAO_SOCIAL_FOR'
      Size = 80
    end
    object fdQryFiltroFANTASIA_FOR: TWideStringField
      FieldName = 'FANTASIA_FOR'
      Origin = 'FANTASIA_FOR'
      Size = 80
    end
    object fdQryFiltroCNPJ_FOR: TWideStringField
      FieldName = 'CNPJ_FOR'
      Origin = 'CNPJ_FOR'
    end
    object fdQryFiltroENDERECO_FOR: TWideStringField
      FieldName = 'ENDERECO_FOR'
      Origin = 'ENDERECO_FOR'
      Size = 255
    end
    object fdQryFiltroBAIRRO_FOR: TWideStringField
      FieldName = 'BAIRRO_FOR'
      Origin = 'BAIRRO_FOR'
      Size = 50
    end
    object fdQryFiltroEMAIL_FOR: TWideStringField
      FieldName = 'EMAIL_FOR'
      Origin = 'EMAIL_FOR'
      Size = 255
    end
    object fdQryFiltroID_CIDADE_CID: TIntegerField
      FieldName = 'ID_CIDADE_CID'
      Origin = 'ID_CIDADE_CID'
    end
    object fdQryFiltroID_ESTADO_EST: TIntegerField
      FieldName = 'ID_ESTADO_EST'
      Origin = 'ID_ESTADO_EST'
    end
  end
end
