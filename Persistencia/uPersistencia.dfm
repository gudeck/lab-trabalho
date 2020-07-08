object Persistencia: TPersistencia
  OldCreateOrder = False
  Height = 333
  Width = 426
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
    Left = 32
    Top = 8
  end
  object qDisciplina: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DISCIPLINA')
    Left = 32
    Top = 184
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
    Left = 256
    Top = 184
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
    Left = 144
    Top = 184
  end
  object qDocente: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DOCENTE')
    Left = 32
    Top = 128
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
    Left = 32
    Top = 240
  end
  object pDocente: TDataSetProvider
    DataSet = qDocente
    Left = 144
    Top = 128
  end
  object pAula: TDataSetProvider
    DataSet = qAula
    Left = 144
    Top = 240
  end
  object dsDocente: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pDocente'
    Left = 256
    Top = 128
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
    Left = 256
    Top = 240
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
    Left = 360
    Top = 128
  end
  object dsoAula: TDataSource
    DataSet = dsAula
    Left = 360
    Top = 240
  end
end
