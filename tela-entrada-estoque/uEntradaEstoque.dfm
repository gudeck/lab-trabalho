object fEntradaEstoque: TfEntradaEstoque
  Left = 0
  Top = 0
  Caption = 'fEntradaEstoque'
  ClientHeight = 340
  ClientWidth = 514
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
    Width = 514
    Height = 121
    Align = alTop
    TabOrder = 0
    object edCodigoBarras: TLabeledEdit
      Left = 0
      Top = 34
      Width = 514
      Height = 79
      EditLabel.Width = 217
      EditLabel.Height = 35
      EditLabel.Caption = 'C'#243'digo de Barras'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -29
      EditLabel.Font.Name = 'Tahoma'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -59
      Font.Name = 'Tahoma'
      Font.Style = []
      MaxLength = 9
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
      OnKeyPress = edCodigoBarrasKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 121
    Width = 514
    Height = 219
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 512
      Height = 184
      Align = alTop
      DataSource = Persistencia.dsoEntradaEstoque
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idProduto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'quantidade'
          Visible = True
        end>
    end
    object btnEnviar: TButton
      Left = 432
      Top = 191
      Width = 75
      Height = 25
      Caption = 'Enviar'
      TabOrder = 1
      OnClick = btnEnviarClick
    end
  end
end
