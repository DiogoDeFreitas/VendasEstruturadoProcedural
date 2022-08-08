object frmClienteDAO: TfrmClienteDAO
  Left = 0
  Top = 0
  Caption = 'frmClienteDAO'
  ClientHeight = 235
  ClientWidth = 325
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object fdQryCadastro: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CLIENTE_ID'
    UpdateOptions.AutoIncFields = 'ID_CLIENTE_CLI'
    UpdateObject = fdUpdCadastro
    SQL.Strings = (
      'SELECT * '
      'FROM CLIENTE '
      'WHERE 1=1 '
      'AND DT_EXCLUIDO IS NULL')
    Left = 27
    Top = 8
    object fdQryCadastroID_CLIENTE_CLI: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID_CLIENTE_CLI'
      Origin = 'ID_CLIENTE_CLI'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
  object fdUpdCadastro: TFDUpdateSQL
    Connection = dmConexao.fdConexao
    Left = 27
    Top = 62
  end
  object fdTransaction: TFDTransaction
    Connection = dmConexao.fdConexao
    Left = 27
    Top = 118
  end
end
