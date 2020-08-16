object fFaturamentoSelecaoCliente: TfFaturamentoSelecaoCliente
  Left = 0
  Top = 0
  Caption = 'fFaturamentoSelecaoCliente'
  ClientHeight = 183
  ClientWidth = 424
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
    Width = 424
    Height = 183
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 88
    ExplicitWidth = 185
    ExplicitHeight = 41
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 24
      Top = 28
      Width = 377
      Height = 21
      DataField = 'idCliente'
      DataSource = dsoFaturamento
      KeyField = 'idCliente'
      ListField = 'nomeCliente'
      ListSource = Persistencia.dsoCliente
      TabOrder = 0
    end
    object btnSelecionar: TButton
      Left = 288
      Top = 64
      Width = 113
      Height = 25
      Hint = 'fFaturamentoItens'
      Caption = 'Selecionar'
      TabOrder = 1
      OnClick = btnSelecionarClick
    end
  end
  object dsoFaturamento: TDataSource
    DataSet = Persistencia.qFaturamento
    Left = 168
    Top = 112
  end
end
