inherited fCrudUsuario: TfCrudUsuario
  Caption = 'fCrudUsuario'
  ClientHeight = 409
  OnDestroy = FormDestroy
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbCabecalho: TGroupBox
    object Label1: TLabel
      Left = 16
      Top = 4
      Width = 33
      Height = 13
      Caption = 'C'#243'digo'
      FocusControl = edId
    end
    object edId: TDBEdit
      Left = 16
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
    Height = 337
    ExplicitHeight = 337
    inherited tabInformacoes: TTabSheet
      ExplicitHeight = 309
      inherited gbInformacoes: TGroupBox
        Height = 97
        Align = alTop
        ExplicitHeight = 97
        object Label2: TLabel
          Left = 12
          Top = 8
          Width = 27
          Height = 13
          Caption = 'Nome'
          FocusControl = edNome
        end
        object Label3: TLabel
          Left = 12
          Top = 48
          Width = 30
          Height = 13
          Caption = 'Senha'
          FocusControl = edSenha
        end
        object edNome: TDBEdit
          Left = 12
          Top = 24
          Width = 135
          Height = 21
          DataField = 'NOME'
          DataSource = DataSource
          TabOrder = 0
        end
        object edSenha: TDBEdit
          Left = 12
          Top = 64
          Width = 135
          Height = 21
          DataField = 'SENHA'
          DataSource = DataSource
          TabOrder = 1
        end
      end
      object gbTelas: TGroupBox
        Left = 0
        Top = 97
        Width = 464
        Height = 212
        Align = alClient
        TabOrder = 1
        object btnAdicionar: TSpeedButton
          Left = 12
          Top = 12
          Width = 23
          Height = 22
          Hint = 'fAssociacaoTelas'
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
        object btnRemover: TSpeedButton
          Left = 41
          Top = 12
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
        object DBGrid1: TDBGrid
          Left = 2
          Top = 40
          Width = 460
          Height = 170
          Align = alBottom
          DataSource = Persistencia.dsoTelasUsuarioPossui
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
      ExplicitHeight = 309
      inherited gbFiltros: TGroupBox
        Align = alNone
        Enabled = False
        Visible = False
      end
      inherited DBGrid: TDBGrid
        Top = 0
        Height = 290
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      end
      inherited StatusBar: TStatusBar
        Top = 290
        ExplicitTop = 290
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = Persistencia.qUsuario
  end
end
