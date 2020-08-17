object fMenu: TfMenu
  Left = 0
  Top = 0
  Caption = 'fMenu'
  ClientHeight = 405
  ClientWidth = 317
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
  object btnUsuario: TButton
    Left = 0
    Top = 0
    Width = 175
    Height = 40
    Hint = 'fCrudUsuario'
    Caption = 'Cadastro Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = btnUsuarioClick
  end
  object btnCliente: TButton
    Left = 142
    Top = 46
    Width = 175
    Height = 39
    Hint = 'fCrudCliente'
    Caption = 'Cadastro Cliente'
    TabOrder = 1
    OnClick = btnClienteClick
  end
  object btnProduto: TButton
    Left = 0
    Top = 91
    Width = 175
    Height = 40
    Hint = 'fCrudProduto'
    Caption = 'Cadastro Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btnProdutoClick
  end
  object btnPedido: TButton
    Left = 142
    Top = 137
    Width = 175
    Height = 40
    Hint = 'fCrudPedido'
    Caption = 'Cadastro Pedido'
    TabOrder = 3
    OnClick = btnPedidoClick
  end
  object btnEntradaEstoque: TButton
    Left = 0
    Top = 183
    Width = 175
    Height = 40
    Hint = 'fEntradaEstoque'
    Caption = 'Entrada Estoque'
    TabOrder = 4
    OnClick = btnEntradaEstoqueClick
  end
  object btnFaturamento: TButton
    Left = 142
    Top = 229
    Width = 175
    Height = 40
    Hint = 'fFaturamentoSelecaoCliente'
    Caption = 'Faturamento'
    TabOrder = 5
    OnClick = btnFaturamentoClick
  end
  object btnRelatorios: TButton
    Left = 0
    Top = 275
    Width = 175
    Height = 40
    Hint = 'fRelatorios'
    Caption = 'Relat'#243'rios'
    TabOrder = 6
    OnClick = btnRelatoriosClick
  end
end
