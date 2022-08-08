inherited frmFiltroProdutos: TfrmFiltroProdutos
  Caption = 'Filtro de Produtos'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 33
      Caption = 'C'#243'digo'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 88
      Top = 7
      Width = 46
      Height = 13
      Caption = 'Descri'#231#227'o'
    end
    inherited edtFiltro: TEdit
      Width = 72
      ExplicitWidth = 72
    end
    inherited btnFiltro: TButton
      Left = 352
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 352
    end
    object edtDescricao: TEdit
      Left = 88
      Top = 26
      Width = 248
      Height = 21
      TabOrder = 3
    end
    object edtNovo: TButton
      Left = 469
      Top = 22
      Width = 80
      Height = 28
      Caption = 'Novo'
      TabOrder = 4
    end
    object edtVisualizar: TButton
      Left = 555
      Top = 22
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
    Width = 789
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
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    SQL.Strings = (
      'SELECT'
      '    P.ID_PRODUTO_PRO,'
      '    P.DESCRICAO_PRO,'
      '    P.QTDE_PRO,'
      '    P.CUSTO_PRO,'
      '    P.V_UNITARIO_PRO,'
      '    P.UNIDADE_PRO,'
      '    P.PESO_LIQUIDO_PRO,'
      '    P.PESO_BRUTO_PRO,'
      '    P.FABRICANTE_PRO,'
      '    P.MARCA_MODELO_PRO,'
      '    F.RAZAO_SOCIAL_FOR'
      'FROM PRODUTO P'
      
        'INNER JOIN FORNECEDOR F ON F.ID_FORNECEDOR_FOR = P.ID_FORNECEDOR' +
        '_FOR'
      'WHERE 1 = 1')
    object fdQryFiltroID_PRODUTO_PRO: TIntegerField
      FieldName = 'ID_PRODUTO_PRO'
      Origin = 'ID_PRODUTO_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryFiltroDESCRICAO_PRO: TWideStringField
      FieldName = 'DESCRICAO_PRO'
      Origin = 'DESCRICAO_PRO'
      Size = 80
    end
    object fdQryFiltroQTDE_PRO: TSingleField
      FieldName = 'QTDE_PRO'
      Origin = 'QTDE_PRO'
    end
    object fdQryFiltroCUSTO_PRO: TSingleField
      FieldName = 'CUSTO_PRO'
      Origin = 'CUSTO_PRO'
    end
    object fdQryFiltroV_UNITARIO_PRO: TSingleField
      FieldName = 'V_UNITARIO_PRO'
      Origin = 'V_UNITARIO_PRO'
    end
    object fdQryFiltroUNIDADE_PRO: TWideStringField
      FieldName = 'UNIDADE_PRO'
      Origin = 'UNIDADE_PRO'
      Size = 4
    end
    object fdQryFiltroPESO_LIQUIDO_PRO: TSingleField
      FieldName = 'PESO_LIQUIDO_PRO'
      Origin = 'PESO_LIQUIDO_PRO'
    end
    object fdQryFiltroPESO_BRUTO_PRO: TSingleField
      FieldName = 'PESO_BRUTO_PRO'
      Origin = 'PESO_BRUTO_PRO'
    end
    object fdQryFiltroFABRICANTE_PRO: TWideStringField
      FieldName = 'FABRICANTE_PRO'
      Origin = 'FABRICANTE_PRO'
      Size = 60
    end
    object fdQryFiltroMARCA_MODELO_PRO: TWideStringField
      FieldName = 'MARCA_MODELO_PRO'
      Origin = 'MARCA_MODELO_PRO'
      Size = 255
    end
    object fdQryFiltroRAZAO_SOCIAL_FOR: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL_FOR'
      Origin = 'RAZAO_SOCIAL_FOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
  end
end
