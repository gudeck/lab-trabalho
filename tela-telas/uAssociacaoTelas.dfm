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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 185
    Top = 0
    Width = 573
    Height = 277
    Align = alClient
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
      Visible = False
    end
    object edNome: TDBEdit
      Left = 16
      Top = 83
      Width = 153
      Height = 21
      DataField = 'NOME'
      TabOrder = 0
      Visible = False
    end
    object btBuscar: TButton
      Left = 56
      Top = 110
      Width = 75
      Height = 25
      Caption = 'Buscar'
      TabOrder = 1
      Visible = False
    end
    object Button1: TButton
      Left = 56
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 2
    end
  end
end
