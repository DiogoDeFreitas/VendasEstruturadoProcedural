inherited frmFiltroUsuarios: TfrmFiltroUsuarios
  Caption = 'Filtro de Usuarios'
  FormStyle = fsMDIChild
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited Label1: TLabel
      Width = 27
      Caption = 'Nome'
      ExplicitWidth = 27
    end
    inherited btnFiltro: TButton
      Caption = 'Filtrar'
      OnClick = btnFiltroClick
    end
    object edtNovo: TButton
      Left = 341
      Top = 22
      Width = 80
      Height = 28
      Caption = 'Novo'
      TabOrder = 3
      OnClick = edtNovoClick
    end
    object edtVisualizar: TButton
      Left = 427
      Top = 22
      Width = 80
      Height = 28
      Caption = 'Visualizar'
      TabOrder = 4
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
      'SELECT * FROM USUARIO')
  end
end
