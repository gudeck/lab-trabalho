object fTelaInicial: TfTelaInicial
  Left = 0
  Top = 0
  Caption = 'fTelaInicial'
  ClientHeight = 250
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btEntrar: TButton
    Left = 208
    Top = 147
    Width = 75
    Height = 25
    Caption = 'Entrar'
    TabOrder = 0
    OnClick = btEntrarClick
  end
  object LabeledEdit1: TLabeledEdit
    Left = 184
    Top = 64
    Width = 121
    Height = 21
    EditLabel.Width = 36
    EditLabel.Height = 13
    EditLabel.Caption = 'Usu'#225'rio'
    TabOrder = 1
  end
  object LabeledEdit2: TLabeledEdit
    Left = 184
    Top = 104
    Width = 121
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = 'Senha'
    PasswordChar = '*'
    TabOrder = 2
  end
end
