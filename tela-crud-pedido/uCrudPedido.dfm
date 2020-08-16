inherited fCrudPedido: TfCrudPedido
  Caption = 'fCrudPedido'
  ClientWidth = 485
  ExplicitWidth = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 485
    ExplicitWidth = 485
    inherited Botoes: TToolBar
      Left = 301
      ExplicitLeft = 301
    end
  end
  inherited gbCabecalho: TGroupBox
    Width = 485
    ExplicitWidth = 485
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = DBEdit1
    end
    object Label2: TLabel
      Left = 87
      Top = 6
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label3: TLabel
      Left = 255
      Top = 6
      Width = 106
      Height = 13
      Caption = 'Data Entrega Prevista'
      FocusControl = DBEdit2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 86
      Top = 22
      Width = 163
      Height = 21
      DataField = 'idCliente'
      DataSource = dsoDados
      KeyField = 'idCliente'
      ListField = 'nomeCliente'
      ListSource = Persistencia.dsoCliente
      TabOrder = 1
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 22
      Width = 65
      Height = 21
      TabStop = False
      Color = 11184381
      DataField = 'idPedido'
      DataSource = dsoDados
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 255
      Top = 22
      Width = 224
      Height = 21
      DataField = 'dtPrevistaEntrega'
      DataSource = dsoDados
      TabOrder = 2
    end
  end
  inherited PageControl: TPageControl
    Width = 485
    ExplicitWidth = 485
    inherited tabInformacoes: TTabSheet
      ExplicitWidth = 477
      inherited gbInformacoes: TGroupBox
        Width = 477
        Align = alTop
        ExplicitWidth = 477
        object btnRemover: TSpeedButton
          Left = 33
          Top = 3
          Width = 23
          Height = 22
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF000B77000B77000B77000B77000B77000B77000B77000B77
            000B77000B77000B77000B77000B77000B77000B77000B77000B77000B77000B
            77000B77FF00FFFF00FFFF00FFFF00FF000B775672E70A22B70A22B70A22B70A
            22B70A22B70A22B70A22B70A22B70A22B70A22B70A22B70A22B70A22B70A22B7
            0A22B70A22B70A22B7000B77FF00FFFF00FFFF00FFFF00FF000B777287ED324A
            E51638E01638E01638E01638E01638E01638E01638E0112DE0112DE0112DE011
            2DE0112DE0112DE0112DE0324AE50A22B7000B77FF00FFFF00FFFF00FFFF00FF
            000B777287ED324AE51638E01638E01638E01638E01638E01638E01638E01638
            E01638E01638E01638E01638E01638E0112DE0324AE50A22B7000B77FF00FFFF
            00FFFF00FFFF00FF000B775672E75672E75672E75672E75672E75672E75672E7
            5672E75672E75672E75672E75672E75672E75672E75672E75672E75672E7495F
            E6000B77FF00FFFF00FFFF00FFFF00FF000B77000B77000B77000B77000B7700
            0B77000B77000B77000B77000B77000B77000B77000B77000B77000B77000B77
            000B77000B77000B77000B77FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = btnRemoverClick
        end
        object btnAdicionar: TSpeedButton
          Left = 4
          Top = 4
          Width = 23
          Height = 22
          Hint = 'fAssociacaoProdutos'
          Flat = True
          Glyph.Data = {
            F6060000424DF606000000000000360000002800000018000000180000000100
            180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF068F16068F16068F16068F16068F16068F16FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF068F1664D78721A14321A14321A143068F16FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F1664D78722B15822B1
            5821A143068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F16
            64D78722B15822B15821A143068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF068F1664D78722B15822B15821A143068F16FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF068F1664D78722B15822B15821A143068F16FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F1664D78722B15822B1
            5821A143068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FF068F16068F16068F16068F16068F16068F16068F16068F16
            64D78722B15822B15821A143068F16068F16068F16068F16068F16068F16068F
            16068F16FF00FFFF00FFFF00FFFF00FF068F1664D78721A14321A14321A14321
            A14321A14321A14321A14322B15822B15821A14321A14321A14321A14321A143
            21A14321A14321A143068F16FF00FFFF00FFFF00FFFF00FF068F1664D78722B1
            5822B15822B15822B15822B15822B15822B15822B15822B15822B15822B15822
            B15822B15822B15822B15822B15821A143068F16FF00FFFF00FFFF00FFFF00FF
            068F1664D78722B15822B15822B15822B15822B15822B15822B15822B15822B1
            5822B15822B15822B15822B15822B15822B15822B15821A143068F16FF00FFFF
            00FFFF00FFFF00FF068F1638C06A38C06A38C06A38C06A38C06A38C06A38C06A
            64D78722B15822B15821A14338C06A38C06A38C06A38C06A38C06A38C06A38C0
            6A068F16FF00FFFF00FFFF00FFFF00FF068F16068F16068F16068F16068F1606
            8F16068F16068F1664D78722B15822B15821A143068F16068F16068F16068F16
            068F16068F16068F16068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF068F1664D78722B15822B15821A143068F16FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F1664D78722B15822B1
            5821A143068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F16
            64D78722B15822B15821A143068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FF068F1664D78722B15822B15821A143068F16FF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FF068F1664D78722B15822B15821A143068F16FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F1638C06A38C06A38C0
            6A38C06A068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF068F16
            068F16068F16068F16068F16068F16FF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
          OnClick = btnAdicionarClick
        end
        object DBGrid1: TDBGrid
          Left = 2
          Top = 32
          Width = 473
          Height = 108
          Align = alBottom
          DataSource = Persistencia.dsoProdutosPedidoPossui
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
      ExplicitWidth = 477
      inherited gbFiltros: TGroupBox
        Width = 477
        Height = 6
        ExplicitWidth = 477
        ExplicitHeight = 6
      end
      inherited DBGrid: TDBGrid
        Top = 6
        Width = 477
        Height = 117
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      end
      inherited StatusBar: TStatusBar
        Width = 477
        ExplicitWidth = 477
      end
    end
  end
  inherited Imagens: TImageList
    Left = 24
  end
  inherited dsoDados: TDataSource
    DataSet = Persistencia.qPedido
    Left = 88
  end
end
