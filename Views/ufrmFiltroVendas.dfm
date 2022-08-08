inherited frmFiltroVendas: TfrmFiltroVendas
  Caption = 'Filtro de Vendas'
  ClientWidth = 955
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  OnShow = FormShow
  ExplicitWidth = 971
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 955
    ExplicitWidth = 955
    inherited Label1: TLabel
      Width = 33
      Caption = 'Cliente'
      ExplicitWidth = 33
    end
    object Label2: TLabel [1]
      Left = 271
      Top = 7
      Width = 36
      Height = 13
      Caption = 'Periodo'
    end
    object Label3: TLabel [2]
      Left = 480
      Top = 7
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited edtFiltro: TEdit
      Width = 254
      ExplicitWidth = 254
    end
    inherited btnFiltro: TButton
      Left = 688
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 688
    end
    inherited Panel2: TPanel
      Left = 854
      ExplicitLeft = 854
    end
    object edtDataIni: TDateTimePicker
      Left = 271
      Top = 26
      Width = 93
      Height = 21
      Date = 44718.564505162040000000
      Time = 44718.564505162040000000
      TabOrder = 3
    end
    object edtDataFim: TDateTimePicker
      Left = 375
      Top = 26
      Width = 93
      Height = 21
      Date = 44718.564505162040000000
      Time = 44718.564505162040000000
      TabOrder = 4
    end
    object edtCodVenda: TEdit
      Left = 480
      Top = 26
      Width = 85
      Height = 21
      TabOrder = 5
    end
    object cbFaturado: TCheckBox
      Left = 584
      Top = 28
      Width = 77
      Height = 17
      Caption = 'Faturado'
      TabOrder = 6
    end
    object btnImprimir: TButton
      Left = 773
      Top = 23
      Width = 75
      Height = 28
      Caption = 'Imprimir'
      TabOrder = 7
      OnClick = btnImprimirClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 70
    Width = 955
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
  object frVendas: TfrxReport
    Version = '5.3.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44718.677713090300000000
    ReportOptions.LastChange = 44718.677713090300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 456
    Top = 104
    Datasets = <
      item
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Top = 15.118120000000000000
          Width = 718.110236220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'RELAT'#211'RIO DE VENDAS')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Height = 68.031540000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        Condition = 'frDBVendas."CLIENTE"'
        object frDBVendasCLIENTE: TfrxMemoView
          Left = 68.031540000000000000
          Top = 11.338590000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'CLIENTE'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Memo.UTF8W = (
            '[frDBVendas."CLIENTE"]')
        end
        object Memo2: TfrxMemoView
          Left = 7.559060000000000000
          Top = 11.338590000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cliente:')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 30.236220470000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 298.582870000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 381.732530000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit.')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 464.882190000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'SubTotal')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 548.031850000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Desconto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 631.181510000000000000
          Top = 45.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 30.236240000000000000
          Top = 64.252010000000000000
          Width = 687.873996220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 181.417440000000000000
        Width = 718.110700000000000000
        DataSet = frDBVendas
        DataSetName = 'frDBVendas'
        RowCount = 0
        Stretched = True
        object frDBVendasDESCRICAO_PRO: TfrxMemoView
          Left = 30.236240000000000000
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'DESCRICAO_PRO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frDBVendas."DESCRICAO_PRO"]')
          ParentFont = False
        end
        object frDBVendasQTD_VIT: TfrxMemoView
          Left = 298.582870000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QTD_VIT'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."QTD_VIT"]')
          ParentFont = False
        end
        object frDBVendasVALOR_UNITARIO_VIT: TfrxMemoView
          Left = 381.732530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALOR_UNITARIO_VIT'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."VALOR_UNITARIO_VIT"]')
          ParentFont = False
        end
        object frDBVendasSUBTOTAL: TfrxMemoView
          Left = 464.882190000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'SUBTOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."SUBTOTAL"]')
          ParentFont = False
        end
        object frDBVendasDESCONTO: TfrxMemoView
          Left = 548.031850000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."DESCONTO"]')
          ParentFont = False
        end
        object frDBVendasTOTAL: TfrxMemoView
          Left = 631.181510000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'TOTAL'
          DataSet = frDBVendas
          DataSetName = 'frDBVendas'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frDBVendas."TOTAL"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Height = 41.574830000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Line2: TfrxLineView
          Left = 30.236220472440900000
          Width = 687.873996220000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          Left = 464.882190000000000000
          Top = 7.559060000000000000
          Width = 79.370078740000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."SUBTOTAL">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          Left = 548.031850000000000000
          Top = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."DESCONTO">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          Left = 631.181102360000000000
          Top = 7.559060000000000000
          Width = 79.370078740157500000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frDBVendas."TOTAL">,MasterData1)]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          Top = 36.236240000000000000
          Width = 718.110236220000000000
          Color = clBlack
          Frame.Style = fsDot
          Frame.Typ = [ftTop]
        end
      end
    end
  end
  object frDBVendas: TfrxDBDataset
    UserName = 'frDBVendas'
    CloseDataSource = False
    DataSet = fdQryRelatorio
    BCDToCurrency = False
    Left = 456
    Top = 176
  end
  object fdQryRelatorio: TFDQuery
    Active = True
    Connection = dmConexao.fdConexao
    SQL.Strings = (
      'SELECT V.ID_VENDA_VEN,'
      '       V.ID_CLIENTE_CLI,'
      
        '       DECODE(C.TIPO_FJ_CLI, '#39'F'#39', C.NOME_CLI, C.RAZAO_SOCIAL_CLI' +
        ') CLIENTE,'
      '       V.DATA_VEN,'
      '       COALESCE(V.FATURADO_VEN, '#39'N'#39') FATURADO,'
      '       P.DESCRICAO_PRO,'
      '       VI.QTD_VIT,'
      '       VI.VALOR_UNITARIO_VIT,'
      '       VI.VALOR_UNITARIO_VIT * VI.QTD_VIT SUBTOTAL,'
      '       COALESCE(VI.DESCONTO_VIT, 0) DESCONTO,'
      
        '       (VI.VALOR_UNITARIO_VIT * VI.QTD_VIT) - COALESCE(VI.DESCON' +
        'TO_VIT, 0) TOTAL'
      'FROM VENDA V'
      'INNER JOIN CLIENTE C ON C.ID_CLIENTE_CLI = V.ID_CLIENTE_CLI'
      'INNER JOIN VENDA_ITEM VI ON VI.id_venda_ven = V.id_venda_ven'
      'INNER JOIN PRODUTO P ON P.id_produto_pro = VI.id_produto_pro'
      'WHERE 1 = 1'
      
        'ORDER BY DECODE(C.TIPO_FJ_CLI, '#39'F'#39', C.NOME_CLI, C.RAZAO_SOCIAL_C' +
        'LI),'
      '                 P.DESCRICAO_PRO')
    Left = 456
    Top = 248
    object fdQryRelatorioID_VENDA_VEN: TIntegerField
      FieldName = 'ID_VENDA_VEN'
      Origin = 'ID_VENDA_VEN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryRelatorioID_CLIENTE_CLI: TIntegerField
      FieldName = 'ID_CLIENTE_CLI'
      Origin = 'ID_CLIENTE_CLI'
    end
    object fdQryRelatorioCLIENTE: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioDATA_VEN: TDateField
      FieldName = 'DATA_VEN'
      Origin = 'DATA_VEN'
    end
    object fdQryRelatorioFATURADO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'FATURADO'
      Origin = 'FATURADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 1
    end
    object fdQryRelatorioDESCRICAO_PRO: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRO'
      Origin = 'DESCRICAO_PRO'
      ProviderFlags = []
      ReadOnly = True
      Size = 80
    end
    object fdQryRelatorioQTD_VIT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QTD_VIT'
      Origin = 'QTD_VIT'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioSUBTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'SUBTOTAL'
      Origin = 'SUBTOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioDESCONTO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioTOTAL: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL'
      Origin = 'TOTAL'
      ProviderFlags = []
      ReadOnly = True
    end
    object fdQryRelatorioVALOR_UNITARIO_VIT: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_UNITARIO_VIT'
      Origin = 'VALOR_UNITARIO_VIT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
