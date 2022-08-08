inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'Cadastro de Clientes'
  ClientHeight = 264
  OnShow = FormShow
  ExplicitHeight = 292
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 96
    Top = 56
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
    FocusControl = edtRazaoSocial
  end
  object Label3: TLabel [2]
    Left = 304
    Top = 56
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 512
    Top = 56
    Width = 50
    Height = 13
    Caption = 'CPF_CNPJ'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 104
    Width = 24
    Height = 13
    Caption = 'TIPO'
  end
  object Label6: TLabel [5]
    Left = 129
    Top = 104
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [6]
    Left = 337
    Top = 104
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 152
    Width = 22
    Height = 13
    Caption = 'SITE'
    FocusControl = DBEdit7
  end
  object Label9: TLabel [8]
    Left = 216
    Top = 152
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
    FocusControl = DBEdit8
  end
  object Label10: TLabel [9]
    Left = 8
    Top = 200
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
    FocusControl = DBEdit9
  end
  object Label11: TLabel [10]
    Left = 257
    Top = 200
    Width = 10
    Height = 13
    Caption = 'IE'
    FocusControl = DBEdit10
  end
  object Label12: TLabel [11]
    Left = 313
    Top = 200
    Width = 12
    Height = 13
    Caption = 'IM'
    FocusControl = DBEdit11
  end
  object Label13: TLabel [12]
    Left = 517
    Top = 152
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit8
  end
  object Label14: TLabel [13]
    Left = 517
    Top = 200
    Width = 40
    Height = 13
    Caption = 'ESTADO'
    FocusControl = DBEdit8
  end
  object DBEdit1: TDBEdit [15]
    Left = 8
    Top = 72
    Width = 80
    Height = 21
    DataField = 'ID_CLIENTE_CLI'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [16]
    Left = 96
    Top = 72
    Width = 200
    Height = 21
    DataField = 'RAZAO_SOCIAL_CLI'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [17]
    Left = 304
    Top = 72
    Width = 200
    Height = 21
    DataField = 'FANTASIA_CLI'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [18]
    Left = 512
    Top = 72
    Width = 150
    Height = 21
    DataField = 'CPF_CNPJ_CLI'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object dbComboBoxFJ: TDBComboBox [19]
    Left = 8
    Top = 120
    Width = 114
    Height = 21
    DataField = 'TIPO_FJ_CLI'
    DataSource = dsCadastro
    Items.Strings = (
      'F'
      'J')
    TabOrder = 5
  end
  object DBEdit5: TDBEdit [20]
    Left = 129
    Top = 120
    Width = 200
    Height = 21
    DataField = 'NOME_CLI'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit6: TDBEdit [21]
    Left = 337
    Top = 120
    Width = 325
    Height = 21
    DataField = 'EMAIL_CLI'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBEdit7: TDBEdit [22]
    Left = 8
    Top = 168
    Width = 198
    Height = 21
    DataField = 'SITE_CLI'
    DataSource = dsCadastro
    TabOrder = 8
  end
  object DBEdit8: TDBEdit [23]
    Left = 216
    Top = 168
    Width = 292
    Height = 21
    DataField = 'ENDERECO_CLI'
    DataSource = dsCadastro
    TabOrder = 9
  end
  object DBEdit9: TDBEdit [24]
    Left = 8
    Top = 216
    Width = 241
    Height = 21
    DataField = 'BAIRRO_CLI'
    DataSource = dsCadastro
    TabOrder = 10
  end
  object DBEdit10: TDBEdit [25]
    Left = 257
    Top = 216
    Width = 50
    Height = 21
    DataField = 'IE_CLI'
    DataSource = dsCadastro
    TabOrder = 11
  end
  object DBEdit11: TDBEdit [26]
    Left = 313
    Top = 216
    Width = 50
    Height = 21
    DataField = 'IM_CLI'
    DataSource = dsCadastro
    TabOrder = 12
  end
  object DBLookupComboBoxCidade: TDBLookupComboBox [27]
    Left = 517
    Top = 168
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE_CID'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE_CID'
    ListField = 'NOME_CID'
    ListSource = dmLookUp.dsCidades
    TabOrder = 13
  end
  object DBLookupComboBoxEstado: TDBLookupComboBox [28]
    Left = 517
    Top = 216
    Width = 55
    Height = 21
    DataField = 'ID_ESTADO_EST'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO_EST'
    ListField = 'SIGLA_EST'
    ListSource = dmLookUp.dsEstados
    TabOrder = 14
  end
  inherited fdQryCadastro: TFDQuery
    BeforeInsert = fdQryCadastroBeforeInsert
    BeforeEdit = fdQryCadastroBeforeEdit
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE_CLI'
    SQL.Strings = (
      'SELECT * '
      'FROM CLIENTE '
      'WHERE 1=1 '
      'AND DT_EXCLUIDO IS NULL')
    Top = 88
    object fdQryCadastroID_CLIENTE_CLI: TIntegerField
      FieldName = 'ID_CLIENTE_CLI'
      Origin = 'ID_CLIENTE_CLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryCadastroRAZAO_SOCIAL_CLI: TWideStringField
      FieldName = 'RAZAO_SOCIAL_CLI'
      Origin = 'RAZAO_SOCIAL_CLI'
      Size = 80
    end
    object fdQryCadastroFANTASIA_CLI: TWideStringField
      FieldName = 'FANTASIA_CLI'
      Origin = 'FANTASIA_CLI'
      Size = 80
    end
    object fdQryCadastroCPF_CNPJ_CLI: TWideStringField
      FieldName = 'CPF_CNPJ_CLI'
      Origin = 'CPF_CNPJ_CLI'
    end
    object fdQryCadastroTIPO_FJ_CLI: TWideStringField
      FieldName = 'TIPO_FJ_CLI'
      Origin = 'TIPO_FJ_CLI'
      Size = 1
    end
    object fdQryCadastroNOME_CLI: TWideStringField
      FieldName = 'NOME_CLI'
      Origin = 'NOME_CLI'
      Size = 80
    end
    object fdQryCadastroEMAIL_CLI: TWideStringField
      FieldName = 'EMAIL_CLI'
      Origin = 'EMAIL_CLI'
      Size = 255
    end
    object fdQryCadastroSITE_CLI: TWideStringField
      FieldName = 'SITE_CLI'
      Origin = 'SITE_CLI'
      Size = 255
    end
    object fdQryCadastroENDERECO_CLI: TWideStringField
      FieldName = 'ENDERECO_CLI'
      Origin = 'ENDERECO_CLI'
      Size = 255
    end
    object fdQryCadastroCOMPLEMENTO_CLI: TWideStringField
      FieldName = 'COMPLEMENTO_CLI'
      Origin = 'COMPLEMENTO_CLI'
      Size = 255
    end
    object fdQryCadastroNUMERO_CLI: TWideStringField
      FieldName = 'NUMERO_CLI'
      Origin = 'NUMERO_CLI'
    end
    object fdQryCadastroBAIRRO_CLI: TWideStringField
      FieldName = 'BAIRRO_CLI'
      Origin = 'BAIRRO_CLI'
      Size = 50
    end
    object fdQryCadastroIE_CLI: TWideStringField
      FieldName = 'IE_CLI'
      Origin = 'IE_CLI'
      Size = 30
    end
    object fdQryCadastroIM_CLI: TWideStringField
      FieldName = 'IM_CLI'
      Origin = 'IM_CLI'
      Size = 30
    end
    object fdQryCadastroID_CIDADE_CID: TIntegerField
      FieldName = 'ID_CIDADE_CID'
      Origin = 'ID_CIDADE_CID'
    end
    object fdQryCadastroID_ESTADO_EST: TIntegerField
      FieldName = 'ID_ESTADO_EST'
      Origin = 'ID_ESTADO_EST'
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Top = 152
  end
  inherited fdTransaction: TFDTransaction
    Top = 224
  end
  inherited dsCadastro: TDataSource
    Top = 40
  end
end
