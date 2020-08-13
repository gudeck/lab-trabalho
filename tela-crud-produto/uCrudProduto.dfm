inherited fCrudProduto: TfCrudProduto
  Caption = 'fCrudProduto'
  ClientHeight = 339
  ClientWidth = 549
  ExplicitWidth = 565
  ExplicitHeight = 378
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 549
    ExplicitWidth = 549
    inherited Botoes: TToolBar
      Left = 365
      ExplicitLeft = 365
    end
  end
  inherited gbCabecalho: TGroupBox
    Width = 549
    ExplicitWidth = 549
    object Label4: TLabel
      Left = 16
      Top = 7
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit4
    end
    object Label5: TLabel
      Left = 87
      Top = 6
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit5
    end
    object DBEdit4: TDBEdit
      Left = 16
      Top = 23
      Width = 65
      Height = 21
      TabStop = False
      Color = 11184381
      DataField = 'idProduto'
      DataSource = dsoDados
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit5: TDBEdit
      Left = 87
      Top = 23
      Width = 450
      Height = 21
      DataField = 'produto'
      DataSource = dsoDados
      TabOrder = 1
    end
  end
  inherited PageControl: TPageControl
    Width = 549
    Height = 267
    ExplicitWidth = 549
    ExplicitHeight = 267
    inherited tabInformacoes: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 541
      ExplicitHeight = 239
      inherited gbInformacoes: TGroupBox
        Width = 541
        Height = 239
        ExplicitWidth = 541
        ExplicitHeight = 239
        object Label1: TLabel
          Left = 12
          Top = 8
          Width = 24
          Height = 13
          Caption = 'Valor'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 127
          Top = 8
          Width = 90
          Height = 13
          Caption = 'Estoque Dispon'#237'vel'
          FocusControl = DBEdit2
        end
        object Label3: TLabel
          Left = 12
          Top = 56
          Width = 82
          Height = 13
          Caption = 'C'#243'digo de Barras'
          FocusControl = DBEdit3
        end
        object DBEdit1: TDBEdit
          Left = 12
          Top = 24
          Width = 109
          Height = 21
          DataField = 'valor'
          DataSource = dsoDados
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 127
          Top = 24
          Width = 109
          Height = 21
          DataField = 'qtdeEstoque'
          DataSource = dsoDados
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 12
          Top = 72
          Width = 224
          Height = 21
          DataField = 'codigobarras'
          DataSource = dsoDados
          MaxLength = 9
          TabOrder = 2
        end
      end
    end
    inherited tabFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 541
      ExplicitHeight = 239
      inherited gbFiltros: TGroupBox
        Width = 541
        Height = 5
        ExplicitWidth = 541
        ExplicitHeight = 5
      end
      inherited DBGrid: TDBGrid
        Top = 5
        Width = 541
        Height = 215
      end
      inherited StatusBar: TStatusBar
        Top = 220
        Width = 541
        ExplicitTop = 220
        ExplicitWidth = 541
      end
    end
  end
  inherited Imagens: TImageList
    Left = 72
  end
  inherited dsoDados: TDataSource
    DataSet = Persistencia.qProduto
    Left = 176
  end
end
