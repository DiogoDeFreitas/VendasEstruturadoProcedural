inherited frmCadastroEstado: TfrmCadastroEstado
  Caption = 'Cadastro de estados'
  ClientHeight = 153
  ClientWidth = 549
  ExplicitWidth = 555
  ExplicitHeight = 181
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 56
    Width = 81
    Height = 13
    Caption = 'ID_ESTADO_EST'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 104
    Width = 53
    Height = 13
    Caption = 'NOME_EST'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 320
    Top = 104
    Width = 53
    Height = 13
    Caption = 'SIGLA_EST'
    FocusControl = DBEdit3
  end
  inherited pnlCabecalho: TPanel
    Width = 549
    ExplicitWidth = 549
    inherited btnSair: TBitBtn
      Left = 473
      Top = 1
      Height = 39
      Align = alRight
      ExplicitLeft = 473
      ExplicitTop = 1
      ExplicitHeight = 39
    end
  end
  object DBEdit1: TDBEdit [4]
    Left = 8
    Top = 72
    Width = 134
    Height = 21
    DataField = 'ID_ESTADO_EST'
    DataSource = dsCadastro
    TabOrder = 1
  end
  object DBEdit2: TDBEdit [5]
    Left = 8
    Top = 120
    Width = 300
    Height = 21
    DataField = 'NOME_EST'
    DataSource = dsCadastro
    TabOrder = 2
  end
  object DBEdit3: TDBEdit [6]
    Left = 320
    Top = 120
    Width = 30
    Height = 21
    DataField = 'SIGLA_EST'
    DataSource = dsCadastro
    TabOrder = 3
  end
  inherited fdQryCadastro: TFDQuery
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_ESTADO_ID'
    UpdateOptions.AutoIncFields = 'ID_ESTADO_EST'
    SQL.Strings = (
      'SELECT *'
      'FROM ESTADO'
      'WHERE 1 = 1'
      'AND DT_EXCLUIDO IS NULL')
    Left = 232
    Top = 40
    object fdQryCadastroID_ESTADO_EST: TFDAutoIncField
      FieldName = 'ID_ESTADO_EST'
      Origin = 'ID_ESTADO_EST'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object fdQryCadastroNOME_EST: TWideStringField
      FieldName = 'NOME_EST'
      Origin = 'NOME_EST'
      Size = 60
    end
    object fdQryCadastroSIGLA_EST: TWideStringField
      FieldName = 'SIGLA_EST'
      Origin = 'SIGLA_EST'
      Size = 2
    end
    object fdQryCadastroDT_EXCLUIDO: TDateField
      FieldName = 'DT_EXCLUIDO'
      Origin = 'DT_EXCLUIDO'
    end
  end
  inherited fdUpdCadastro: TFDUpdateSQL
    Left = 288
    Top = 40
  end
  inherited fdTransaction: TFDTransaction
    Left = 345
    Top = 40
  end
  inherited dsCadastro: TDataSource
    Left = 184
    Top = 40
  end
end
