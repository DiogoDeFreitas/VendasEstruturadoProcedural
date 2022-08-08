object dmLookUp: TdmLookUp
  OldCreateOrder = False
  Height = 257
  Width = 542
  object fdQryEstados: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM ESTADO')
    Left = 24
    Top = 88
  end
  object dsEstados: TDataSource
    DataSet = fdQryEstados
    Left = 24
    Top = 144
  end
  object fdTransaction: TFDTransaction
    Connection = dmConexao.fdConexao
    Left = 248
    Top = 8
  end
  object fdQryCidades: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT *FROM CIDADE')
    Left = 128
    Top = 87
  end
  object dsCidades: TDataSource
    DataSet = fdQryCidades
    Left = 128
    Top = 144
  end
  object fdQryFornecedor: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT * FROM FORNECEDOR')
    Left = 208
    Top = 88
  end
  object dsFornecedor: TDataSource
    DataSet = fdQryFornecedor
    Left = 208
    Top = 144
  end
  object fdQryCliente: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_CLIENTE_CLI,'
      '       DECODE(TIPO_FJ_CLI,'
      '              '#39'F'#39', NOME_CLI, RAZAO_SOCIAL_CLI)'
      '              NomeCliente'
      'FROM CLIENTE')
    Left = 296
    Top = 88
  end
  object dsCliente: TDataSource
    DataSet = fdQryCliente
    Left = 296
    Top = 144
  end
  object fdQryProduto: TFDQuery
    Connection = dmConexao.fdConexao
    Transaction = fdTransaction
    SQL.Strings = (
      'SELECT ID_PRODUTO_PRO,'
      '       DESCRICAO_PRO,'
      '       V_UNITARIO_PRO'
      ' '
      'FROM PRODUTO')
    Left = 368
    Top = 88
    object fdQryProdutoID_PRODUTO_PRO: TIntegerField
      FieldName = 'ID_PRODUTO_PRO'
      Origin = 'ID_PRODUTO_PRO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object fdQryProdutoDESCRICAO_PRO: TWideStringField
      FieldName = 'DESCRICAO_PRO'
      Origin = 'DESCRICAO_PRO'
      Size = 80
    end
    object fdQryProdutoV_UNITARIO_PRO: TSingleField
      FieldName = 'V_UNITARIO_PRO'
      Origin = 'V_UNITARIO_PRO'
    end
  end
  object dsProduto: TDataSource
    DataSet = fdQryProduto
    Left = 368
    Top = 144
  end
end
