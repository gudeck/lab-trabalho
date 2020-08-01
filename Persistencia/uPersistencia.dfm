object Persistencia: TPersistencia
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 528
  Width = 837
  object Connection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=SenhaF0rte123;Persist Security Info' +
      '=True;User ID=sa;Initial Catalog=SEMESTRE_SETE;Use Procedure for' +
      ' Prepare=1;Auto Translate=True;Packet Size=4096;Workstation ID=D' +
      'ESKTOP-QNE9828;Use Encryption for Data=False;Tag with column col' +
      'lation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 192
    Top = 48
  end
  object qDisciplina: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DISCIPLINA')
    Left = 192
    Top = 144
    object qDisciplinaID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qDisciplinaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object qDisciplinaDESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object qDisciplinaMEDIA: TIntegerField
      DisplayLabel = 'M'#233'dia (%)'
      FieldName = 'MEDIA'
      ProviderFlags = [pfInUpdate]
      MaxValue = 100
      MinValue = 50
    end
    object qDisciplinaOPCIONAL: TBooleanField
      DisplayLabel = 'Opcional'
      FieldName = 'OPCIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object qDisciplinaDATA_CRIACAO: TDateTimeField
      DisplayLabel = 'Criado em'
      FieldName = 'DATA_CRIACAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
  end
  object dsDisciplina: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pDisciplina'
    AfterInsert = dsDisciplinaAfterInsert
    AfterPost = dsDisciplinaAfterPost
    AfterCancel = dsDisciplinaAfterCancel
    BeforeDelete = dsDisciplinaBeforeDelete
    AfterDelete = dsDisciplinaAfterDelete
    AfterScroll = dsDisciplinaAfterScroll
    Left = 416
    Top = 144
    object dsDisciplinaID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object dsDisciplinaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dsDisciplinaDESCRICAO: TMemoField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
    end
    object dsDisciplinaMEDIA: TIntegerField
      DisplayLabel = 'M'#233'dia'
      FieldName = 'MEDIA'
      ProviderFlags = [pfInUpdate]
      MaxValue = 100
      MinValue = 50
    end
    object dsDisciplinaOPCIONAL: TBooleanField
      DisplayLabel = 'Opcional'
      FieldName = 'OPCIONAL'
      ProviderFlags = [pfInUpdate]
    end
    object dsDisciplinaDATA_CRIACAO: TDateTimeField
      DisplayLabel = 'Criado em'
      FieldName = 'DATA_CRIACAO'
      ProviderFlags = [pfInUpdate]
      EditMask = '!99/99/00;1;_'
    end
  end
  object pDisciplina: TDataSetProvider
    DataSet = qDisciplina
    Left = 304
    Top = 144
  end
  object qDocente: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DOCENTE')
    Left = 192
    Top = 96
  end
  object qAula: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    BeforeOpen = qAulaBeforeOpen
    Parameters = <
      item
        Name = 'idDisciplina'
        Attributes = [paSigned, paNullable]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * FROM LAB.AULA WHERE ID_DISCIPLINA=:idDisciplina')
    Left = 192
    Top = 192
  end
  object pDocente: TDataSetProvider
    DataSet = qDocente
    Left = 304
    Top = 96
  end
  object pAula: TDataSetProvider
    DataSet = qAula
    Left = 304
    Top = 192
  end
  object dsDocente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pDocente'
    Left = 416
    Top = 96
    object dsDocenteID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object dsDocenteNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
  end
  object dsAula: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pAula'
    AfterPost = dsAulaAfterPost
    AfterCancel = dsAulaAfterCancel
    AfterDelete = dsAulaAfterDelete
    Left = 416
    Top = 192
    object dsAulaID: TLargeintField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object dsAulaNOME_TURMA: TStringField
      DisplayLabel = 'Turma'
      FieldName = 'NOME_TURMA'
      ProviderFlags = [pfInUpdate]
      Size = 80
    end
    object dsAulaID_DISCIPLINA: TLargeintField
      DisplayLabel = 'Disciplina'
      FieldName = 'ID_DISCIPLINA'
    end
  end
  object dsoDocente: TDataSource
    DataSet = dsDocente
    Left = 520
    Top = 96
  end
  object dsoAula: TDataSource
    DataSet = dsAula
    Left = 520
    Top = 192
  end
  object qUsuario: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM LAB.USUARIO;')
    Left = 192
    Top = 264
  end
  object qTelasUsuarioPossui: TADOQuery
    Connection = Connection
    Parameters = <
      item
        Name = 'idUsuario'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT LAB.TELA.*'
      'FROM LAB.USUARIO_TELA'
      'JOIN LAB.TELA'
      'ON (USUARIO_TELA.ID_TELA = TELA.ID)'
      'WHERE LAB.USUARIO_TELA.ID_USUARIO=:idUsuario;')
    Left = 192
    Top = 312
  end
  object pUsuario: TDataSetProvider
    DataSet = qUsuario
    Left = 304
    Top = 264
  end
  object dsUsuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pUsuario'
    Left = 416
    Top = 264
    object dsUsuarioID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object dsUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 14
    end
    object dsUsuarioSENHA: TStringField
      FieldName = 'SENHA'
    end
  end
end
