inherited fCrudUsuario: TfCrudUsuario
  Caption = 'fCrudUsuario'
  ClientHeight = 358
  ExplicitHeight = 397
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbCabecalho: TGroupBox
    object Label1: TLabel
      Left = 15
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = edId
    end
    object edId: TDBEdit
      Left = 15
      Top = 23
      Width = 65
      Height = 21
      Color = 11184381
      DataField = 'ID'
      DataSource = DataSource
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
  end
  inherited PageControl: TPageControl
    Height = 286
    ExplicitHeight = 146
    inherited tabInformacoes: TTabSheet
      ExplicitHeight = 118
      inherited gbInformacoes: TGroupBox
        Height = 121
        Align = alTop
        ExplicitHeight = 121
        object Label2: TLabel
          Left = 15
          Top = 16
          Width = 81
          Height = 13
          Caption = 'Nome de Usu'#225'rio'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 15
          Top = 62
          Width = 30
          Height = 13
          Caption = 'Senha'
          FocusControl = edSenha
        end
        object edNome: TDBEdit
          Left = 15
          Top = 35
          Width = 130
          Height = 21
          DataField = 'NOME'
          DataSource = DataSource
          TabOrder = 0
        end
        object edSenha: TDBEdit
          Left = 15
          Top = 81
          Width = 130
          Height = 21
          DataField = 'SENHA'
          DataSource = DataSource
          TabOrder = 1
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 121
        Width = 464
        Height = 137
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 88
        ExplicitTop = 136
        ExplicitWidth = 185
        ExplicitHeight = 105
        object DBGrid1: TDBGrid
          Left = 2
          Top = 2
          Width = 460
          Height = 133
          Align = alBottom
          DataSource = Persistencia.dsoTela
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
    inherited tabFiltros: TTabSheet
      ExplicitHeight = 293
      inherited gbFiltros: TGroupBox
        Align = alNone
        Enabled = False
        Visible = False
      end
      inherited DBGrid: TDBGrid
        Top = 0
        Height = 239
      end
      inherited StatusBar: TStatusBar
        Top = 239
        ExplicitTop = 274
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = Persistencia.dsUsuario
  end
end
