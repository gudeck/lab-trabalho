inherited fCrudCliente: TfCrudCliente
  Caption = 'fCrudCliente'
  ClientHeight = 311
  ClientWidth = 548
  ExplicitWidth = 564
  ExplicitHeight = 350
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 548
    ExplicitWidth = 548
    inherited Botoes: TToolBar
      Left = 364
      ExplicitLeft = 364
    end
  end
  inherited gbCabecalho: TGroupBox
    Width = 548
    ExplicitWidth = 548
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
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = DBEdit2
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 22
      Width = 65
      Height = 21
      TabStop = False
      Color = 11184381
      DataField = 'idCliente'
      DataSource = dsoDados
      Enabled = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 87
      Top = 23
      Width = 448
      Height = 21
      DataField = 'nomeCliente'
      DataSource = dsoDados
      TabOrder = 1
    end
  end
  inherited PageControl: TPageControl
    Width = 548
    Height = 239
    ExplicitWidth = 548
    ExplicitHeight = 239
    inherited tabInformacoes: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 540
      ExplicitHeight = 211
      inherited gbInformacoes: TGroupBox
        Width = 540
        Height = 211
        ExplicitWidth = 540
        ExplicitHeight = 211
        object Label3: TLabel
          Left = 12
          Top = 3
          Width = 25
          Height = 13
          Caption = 'CNPJ'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 154
          Top = 3
          Width = 81
          Height = 13
          Caption = 'Data Nascimento'
          FocusControl = DBEdit4
        end
        object Label5: TLabel
          Left = 75
          Top = 48
          Width = 69
          Height = 13
          Caption = 'C'#243'digo Cidade'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 12
          Top = 91
          Width = 45
          Height = 13
          Caption = 'Endere'#231'o'
          FocusControl = DBEdit6
        end
        object Label7: TLabel
          Left = 12
          Top = 48
          Width = 19
          Height = 13
          Caption = 'CEP'
          FocusControl = DBEdit7
        end
        object Label8: TLabel
          Left = 202
          Top = 48
          Width = 12
          Height = 13
          Caption = 'N'#186
          FocusControl = DBEdit8
        end
        object Label9: TLabel
          Left = 303
          Top = 48
          Width = 65
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit9
        end
        object Label10: TLabel
          Left = 279
          Top = 3
          Width = 24
          Height = 13
          Caption = 'Email'
          FocusControl = DBEdit10
        end
        object DBEdit3: TDBEdit
          Left = 12
          Top = 19
          Width = 136
          Height = 21
          DataField = 'cnpj'
          DataSource = dsoDados
          TabOrder = 0
        end
        object DBEdit4: TDBEdit
          Left = 154
          Top = 19
          Width = 119
          Height = 21
          DataField = 'dtNascimento'
          DataSource = dsoDados
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 75
          Top = 64
          Width = 121
          Height = 21
          DataField = 'idCidade'
          DataSource = dsoDados
          TabOrder = 4
        end
        object DBEdit6: TDBEdit
          Left = 12
          Top = 107
          Width = 518
          Height = 21
          DataField = 'endereco'
          DataSource = dsoDados
          TabOrder = 7
        end
        object DBEdit7: TDBEdit
          Left = 12
          Top = 64
          Width = 57
          Height = 21
          DataField = 'cep'
          DataSource = dsoDados
          TabOrder = 3
        end
        object DBEdit8: TDBEdit
          Left = 202
          Top = 64
          Width = 95
          Height = 21
          DataField = 'numero'
          DataSource = dsoDados
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 303
          Top = 64
          Width = 227
          Height = 21
          DataField = 'complemento'
          DataSource = dsoDados
          TabOrder = 6
        end
        object DBEdit10: TDBEdit
          Left = 279
          Top = 19
          Width = 251
          Height = 21
          DataField = 'email'
          DataSource = dsoDados
          TabOrder = 2
        end
      end
    end
    inherited tabFiltros: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 540
      ExplicitHeight = 211
      inherited gbFiltros: TGroupBox
        Width = 540
        Height = 3
        ExplicitWidth = 540
        ExplicitHeight = 3
      end
      inherited DBGrid: TDBGrid
        Top = 3
        Width = 540
        Height = 189
      end
      inherited StatusBar: TStatusBar
        Top = 192
        Width = 540
        ExplicitTop = 192
        ExplicitWidth = 540
      end
    end
  end
  inherited Imagens: TImageList
    Left = 120
  end
  inherited dsoDados: TDataSource
    DataSet = Persistencia.qCliente
    Left = 224
  end
end
