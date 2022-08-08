inherited frmCadastroCidades: TfrmCadastroCidades
  Caption = 'Cadastro de Cidades'
  ClientHeight = 144
  ClientWidth = 570
  ExplicitWidth = 576
  ExplicitHeight = 172
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
    Left = 8
    Top = 96
    Width = 38
    Height = 13
    Caption = 'CIDADE'
    FocusControl = DBEdit2
  end
  inherited pnlCabecalho: TPanel
    Width = 570
    ExplicitWidth = 570
    inherited btnSair: TBitBtn
      Left = 494
      Top = 1
      Height = 39
      Align = alRight
      ExplicitLeft = 494
      ExplicitTop = 1
      ExplicitHeight = 39
    end
  end
  object DBEdit1: TDBEdit [3]
    Left = 8
    Top = 72
    Width = 134
    Height = 21
    DataField = 'ID_CIDADE_CID'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [4]
    Left = 8
    Top = 112
    Width = 300
    Height = 21
    DataField = 'NOME_CID'
    DataSource = dsCadastro
    TabOrder = 2
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_CIDADE_ID'
    UpdateOptions.AutoIncFields = 'ID_CIDADE_CID'
    SQL.Strings = (
      'SELECT *'
      'FROM'
      'CIDADE'
      'WHERE 1 = 1'
      'AND DT_EXCLUIDO IS NULL')
    Left = 241
    Top = 41
    object fdQryCadastroID_CIDADE_CID: TFDAutoIncField
      FieldName = 'ID_CIDADE_CID'
      Origin = 'ID_CIDADE_CID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME_CID: TWideStringField
      FieldName = 'NOME_CID'
      Origin = 'NOME_CID'
      Size = 60
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 316
    Top = 42
  end
  inherited fdTransaction: TFDTransaction
    Left = 389
    Top = 43
  end
  inherited dsCadastro: TDataSource
    Left = 176
    Top = 40
  end
end
