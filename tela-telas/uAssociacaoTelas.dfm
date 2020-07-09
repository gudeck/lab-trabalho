object fAssociacaoTelas: TfAssociacaoTelas
  Left = 0
  Top = 0
  Caption = 'fAssociacaoTelas'
  ClientHeight = 277
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 185
    Top = 0
    Width = 573
    Height = 277
    Align = alClient
    DataSource = Persistencia.dsoTelaAll
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 277
    Align = alLeft
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 64
      Width = 27
      Height = 13
      Caption = 'Nome'
      FocusControl = edNome
    end
    object edNome: TDBEdit
      Left = 16
      Top = 83
      Width = 153
      Height = 21
      DataField = 'NOME'
      DataSource = Persistencia.dsoTela
      TabOrder = 0
    end
    object btBuscar: TButton
      Left = 56
      Top = 110
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      OnClick = btBuscarClick
    end
  end
end
