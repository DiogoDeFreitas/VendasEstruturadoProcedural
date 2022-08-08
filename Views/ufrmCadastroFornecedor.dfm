inherited frmCadastroFornecedor: TfrmCadastroFornecedor
  Caption = 'Cadastro fornecedor'
  ClientHeight = 430
  OnShow = FormShow
  ExplicitHeight = 458
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 41
    Height = 13
    Caption = 'C'#211'DIGO'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 96
    Width = 78
    Height = 13
    Caption = 'RAZAO_SOCIAL'
  end
  object Label3: TLabel [2]
    Left = 8
    Top = 136
    Width = 50
    Height = 13
    Caption = 'FANTASIA'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 176
    Width = 25
    Height = 13
    Caption = 'CNPJ'
  end
  object Label5: TLabel [4]
    Left = 8
    Top = 216
    Width = 54
    Height = 13
    Caption = 'ENDERECO'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 256
    Width = 39
    Height = 13
    Caption = 'BAIRRO'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 296
    Width = 30
    Height = 13
    Caption = 'EMAIL'
  end
  object Label8: TLabel [7]
    Left = 8
    Top = 336
    Width = 38
    Height = 13
    Caption = 'CIDADE'
  end
  object Label9: TLabel [8]
    Left = 8
    Top = 376
    Width = 40
    Height = 13
    Caption = 'ESTADO'
  end
  object DBEdit1: TDBEdit [10]
    Left = 8
    Top = 72
    Width = 121
    Height = 21
    DataField = 'ID_FORNECEDOR_FOR'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object edtRazaoSocial: TDBEdit [11]
    Left = 8
    Top = 112
    Width = 400
    Height = 21
    DataField = 'RAZAO_SOCIAL_FOR'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [12]
    Left = 8
    Top = 152
    Width = 400
    Height = 21
    DataField = 'FANTASIA_FOR'
    DataSource = dsCadastro
    TabOrder = 3
  end
  object DBEdit4: TDBEdit [13]
    Left = 8
    Top = 192
    Width = 121
    Height = 21
    DataField = 'CNPJ_FOR'
    DataSource = dsCadastro
    TabOrder = 4
  end
  object DBEdit5: TDBEdit [14]
    Left = 8
    Top = 232
    Width = 400
    Height = 21
    DataField = 'ENDERECO_FOR'
    DataSource = dsCadastro
    TabOrder = 5
  end
  object DBEdit6: TDBEdit [15]
    Left = 8
    Top = 272
    Width = 200
    Height = 21
    DataField = 'BAIRRO_FOR'
    DataSource = dsCadastro
    TabOrder = 6
  end
  object DBEdit7: TDBEdit [16]
    Left = 8
    Top = 312
    Width = 400
    Height = 21
    DataField = 'EMAIL_FOR'
    DataSource = dsCadastro
    TabOrder = 7
  end
  object DBLookupComboBox1: TDBLookupComboBox [17]
    Left = 8
    Top = 352
    Width = 145
    Height = 21
    DataField = 'ID_CIDADE_CID'
    DataSource = dsCadastro
    KeyField = 'ID_CIDADE_CID'
    ListField = 'NOME_CID'
    ListSource = dmLookUp.dsCidades
    TabOrder = 8
  end
  object DBLookupComboBox2: TDBLookupComboBox [18]
    Left = 8
    Top = 392
    Width = 50
    Height = 21
    DataField = 'ID_ESTADO_EST'
    DataSource = dsCadastro
    KeyField = 'ID_ESTADO_EST'
    ListField = 'SIGLA_EST'
    ListSource = dmLookUp.dsEstados
    TabOrder = 9
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_FORNECEDOR_ID'
    UpdateOptions.AutoIncFields = 'ID_FORNECEDOR_FOR'
    SQL.Strings = (
      'SELECT * '
      'FROM FORNECEDOR'
      'WHERE  1 = 1'
      'AND DT_EXCLUIDO IS NULL'
      '')
    object fdQryCadastroID_FORNECEDOR_FOR: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_FORNECEDOR_FOR'
      Origin = 'ID_FORNECEDOR_FOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object fdQryCadastroRAZAO_SOCIAL_FOR: TWideStringField
      FieldName = 'RAZAO_SOCIAL_FOR'
      Origin = 'RAZAO_SOCIAL_FOR'
      Size = 80
    end
    object fdQryCadastroFANTASIA_FOR: TWideStringField
      FieldName = 'FANTASIA_FOR'
      Origin = 'FANTASIA_FOR'
      Size = 80
    end
    object fdQryCadastroCNPJ_FOR: TWideStringField
      FieldName = 'CNPJ_FOR'
      Origin = 'CNPJ_FOR'
    end
    object fdQryCadastroENDERECO_FOR: TWideStringField
      FieldName = 'ENDERECO_FOR'
      Origin = 'ENDERECO_FOR'
      Size = 255
    end
    object fdQryCadastroBAIRRO_FOR: TWideStringField
      FieldName = 'BAIRRO_FOR'
      Origin = 'BAIRRO_FOR'
      Size = 50
    end
    object fdQryCadastroEMAIL_FOR: TWideStringField
      FieldName = 'EMAIL_FOR'
      Origin = 'EMAIL_FOR'
      Size = 255
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
end
