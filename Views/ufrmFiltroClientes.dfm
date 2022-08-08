inherited frmFiltroClientes: TfrmFiltroClientes
  Caption = 'Filtro de Clientes'
  ClientWidth = 1057
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  ExplicitWidth = 1073
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 1057
    ExplicitWidth = 1057
    inherited Label1: TLabel
      Width = 78
      Caption = 'Nome do Cliente'
      ExplicitWidth = 78
    end
    object Label2: TLabel [1]
      Left = 200
      Top = 7
      Width = 41
      Height = 13
      Caption = 'Fantasia'
    end
    object Label3: TLabel [2]
      Left = 358
      Top = 7
      Width = 25
      Height = 13
      Caption = 'CNPJ'
    end
    object Label4: TLabel [3]
      Left = 517
      Top = 7
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
    end
    inherited btnFiltro: TButton
      Left = 680
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
      ExplicitLeft = 680
    end
    inherited Panel2: TPanel
      Left = 956
      ExplicitLeft = 956
      inherited btnSair: TButton
        Height = 28
        ExplicitHeight = 28
      end
    end
    object edtFantasia: TEdit
      Left = 200
      Top = 26
      Width = 150
      Height = 21
      TabOrder = 3
    end
    object edtCnpjCpf: TEdit
      Left = 358
      Top = 26
      Width = 150
      Height = 21
      TabOrder = 4
    end
    object edtCodigo: TEdit
      Left = 517
      Top = 26
      Width = 150
      Height = 21
      TabOrder = 5
    end
    object edtNovo: TButton
      Left = 768
      Top = 23
      Width = 80
      Height = 28
      Caption = 'Novo'
      TabOrder = 6
      OnClick = edtNovoClick
    end
    object edtVisualizar: TButton
      Left = 856
      Top = 23
      Width = 80
      Height = 28
      Caption = 'Visualizar'
      TabOrder = 7
      OnClick = edtVisualizarClick
    end
  end
  object DBGrid1: TDBGrid [1]
    Left = 0
    Top = 70
    Width = 1057
    Height = 268
    Align = alClient
    DataSource = dsFiltro
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_CLIENTE_CLI'
        Title.Caption = 'C'#243'digo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RAZAO_SOCIAL_CLI'
        Title.Caption = 'Raz'#227'o social'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FANTASIA_CLI'
        Title.Caption = 'Fantasia'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF_CNPJ_CLI'
        Title.Caption = 'CNPJ/CPF'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_FJ_CLI'
        Title.Caption = 'Tipo Pessoa'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_CLI'
        Title.Caption = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL_CLI'
        Title.Caption = 'E-mail'
        Width = 200
        Visible = True
      end>
  end
  inherited fdQryFiltro: TFDQuery
    SQL.Strings = (
      'SELECT * FROM CLIENTE')
    Left = 720
    Top = 184
  end
  inherited dsFiltro: TDataSource
    Left = 720
    Top = 130
  end
  inherited fdTransaction: TFDTransaction
    Left = 720
    Top = 240
  end
end
