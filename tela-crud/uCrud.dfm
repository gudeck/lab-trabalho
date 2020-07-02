inherited fCrudDisciplina: TfCrudDisciplina
  Caption = 'fCrudDisciplina'
  ClientHeight = 254
  ClientWidth = 402
  ExplicitWidth = 418
  ExplicitHeight = 293
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 402
    inherited Botoes: TToolBar
      Left = 218
      ExplicitLeft = 310
      ExplicitTop = 1
      ExplicitHeight = 21
    end
  end
  inherited gbCabecalho: TGroupBox
    Width = 402
    ExplicitTop = 16
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = edId
    end
    object Label2: TLabel
      Left = 96
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = edNome
    end
    object edId: TDBEdit
      Left = 16
      Top = 23
      Width = 65
      Height = 21
      TabStop = False
      Color = 11184381
      DataField = 'ID'
      DataSource = DataSource
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object edNome: TDBEdit
      Left = 96
      Top = 23
      Width = 290
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      DataField = 'NOME'
      DataSource = DataSource
      TabOrder = 0
    end
  end
  inherited PageControl: TPageControl
    Width = 402
    Height = 182
    ActivePage = tabInformacoes
    ExplicitTop = 73
    ExplicitHeight = 193
    inherited tabInformacoes: TTabSheet
      inherited gbInformacoes: TGroupBox
        Width = 394
        Height = 154
        object Label3: TLabel
          Left = 13
          Top = 52
          Width = 46
          Height = 13
          Caption = 'Descri'#231#227'o'
          FocusControl = edDescricao
        end
        object Label4: TLabel
          Left = 12
          Top = 12
          Width = 28
          Height = 13
          Caption = 'M'#233'dia'
          FocusControl = edMedia
        end
        object Label5: TLabel
          Left = 71
          Top = 12
          Width = 48
          Height = 13
          Caption = 'Criado em'
          FocusControl = edDataCriacao
        end
        object edDescricao: TDBMemo
          Left = 12
          Top = 67
          Width = 370
          Height = 77
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'DESCRICAO'
          DataSource = DataSource
          TabOrder = 3
          ExplicitHeight = 86
        end
        object edMedia: TDBEdit
          Left = 12
          Top = 25
          Width = 45
          Height = 21
          DataField = 'MEDIA'
          DataSource = DataSource
          TabOrder = 0
        end
        object cbOpcional: TDBCheckBox
          Left = 209
          Top = 27
          Width = 97
          Height = 17
          Caption = 'Opcional'
          DataField = 'OPCIONAL'
          DataSource = DataSource
          TabOrder = 2
        end
        object edDataCriacao: TDBEdit
          Left = 71
          Top = 25
          Width = 113
          Height = 21
          DataField = 'DATA_CRIACAO'
          DataSource = DataSource
          TabOrder = 1
        end
      end
    end
    inherited tabFiltros: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 165
      inherited gbFiltros: TGroupBox
        Width = 394
      end
      inherited DBGrid: TDBGrid
        Width = 394
        Height = 85
      end
      inherited StatusBar: TStatusBar
        Top = 135
        Width = 394
        ExplicitLeft = 232
        ExplicitTop = 72
        ExplicitWidth = 0
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = Persistencia.dsDisciplina
  end
end
