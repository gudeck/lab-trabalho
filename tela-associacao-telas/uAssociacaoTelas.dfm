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
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 185
    Top = 0
    Width = 573
    Height = 277
    Align = alClient
    DataSource = Persistencia.dsoTelasUsuarioNaoPossui
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Width = 456
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
    object btnSelecionar: TButton
      Left = 16
      Top = 127
      Width = 75
      Height = 25
      Caption = 'Selecionar'
      TabOrder = 0
      OnClick = btnSelecionarClick
    end
    object DBCheckBox1: TDBCheckBox
      Left = 16
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Alterar'
      DataField = 'ALTERAR'
      DataSource = DataSource1
      TabOrder = 1
    end
    object DBCheckBox2: TDBCheckBox
      Left = 16
      Top = 39
      Width = 97
      Height = 17
      Caption = 'Excluir'
      DataField = 'EXCLUIR'
      DataSource = DataSource1
      TabOrder = 2
    end
    object DBCheckBox3: TDBCheckBox
      Left = 16
      Top = 63
      Width = 97
      Height = 17
      Caption = 'Imprimir'
      DataField = 'IMPRIMIR'
      DataSource = DataSource1
      TabOrder = 3
    end
    object DBCheckBox4: TDBCheckBox
      Left = 16
      Top = 87
      Width = 97
      Height = 17
      Caption = 'Inserir'
      DataField = 'INSERIR'
      DataSource = DataSource1
      TabOrder = 4
    end
  end
  object DataSource1: TDataSource
    DataSet = Persistencia.qUsuarioTelas
    Left = 376
    Top = 144
  end
end
