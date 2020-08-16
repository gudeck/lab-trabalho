object fFaturamentoItens: TfFaturamentoItens
  Left = 0
  Top = 0
  Caption = 'fFaturamentoItens'
  ClientHeight = 350
  ClientWidth = 597
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
    Width = 597
    Height = 350
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 595
      Height = 72
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 16
        Top = 11
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 87
        Top = 11
        Width = 33
        Height = 13
        Caption = 'Cliente'
        FocusControl = DBEdit2
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 27
        Width = 65
        Height = 21
        Color = 11184381
        DataField = 'idFaturamento'
        DataSource = dsoFaturamento
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 87
        Top = 27
        Width = 274
        Height = 21
        DataField = 'nomeCliente'
        DataSource = dsoCliente
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 73
      Width = 595
      Height = 276
      Align = alClient
      TabOrder = 1
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 591
        Height = 227
        Align = alTop
        DataSource = dsoItensNaoFaturados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'idPedido'
            Width = 61
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'idProduto'
            Width = 72
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'produto'
            Width = 229
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Visible = True
          end>
      end
      object Button1: TButton
        Left = 503
        Top = 248
        Width = 89
        Height = 25
        Caption = 'Faturar'
        TabOrder = 1
        OnClick = Button1Click
      end
    end
  end
  object dsoFaturamento: TDataSource
    DataSet = Persistencia.qFaturamento
    Left = 400
    Top = 8
  end
  object dsoCliente: TDataSource
    DataSet = Persistencia.qCliente
    Left = 472
    Top = 8
  end
  object dsoItensNaoFaturados: TDataSource
    DataSet = Persistencia.qProdutosNaoForamFaturados
    Left = 400
    Top = 56
  end
end
