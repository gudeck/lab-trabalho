object fAssociacaoProdutos: TfAssociacaoProdutos
  Left = 0
  Top = 0
  Caption = 'fAssociacaoProdutos'
  ClientHeight = 280
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 145
    Height = 280
    Align = alLeft
    TabOrder = 0
    object Label1: TLabel
      Left = 13
      Top = 114
      Width = 56
      Height = 13
      Caption = 'Quantidade'
      FocusControl = DBEdit1
    end
    object btnSelecionar: TButton
      Left = 64
      Top = 248
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 0
      OnClick = btnSelecionarClick
    end
    object DBEdit1: TDBEdit
      Left = 13
      Top = 130
      Width = 116
      Height = 21
      DataField = 'quantidade'
      DataSource = DataSource1
      TabOrder = 1
    end
  end
  object DBGrid1: TDBGrid
    Left = 145
    Top = 0
    Width = 485
    Height = 280
    Align = alClient
    DataSource = Persistencia.dsoProdutosPedidoNaoPossui
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = Persistencia.qPedidoProduto
    Left = 312
    Top = 144
  end
end
