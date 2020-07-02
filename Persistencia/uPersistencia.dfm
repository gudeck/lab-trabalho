object Persistencia: TPersistencia
  OldCreateOrder = False
  Height = 386
  Width = 488
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
    Left = 80
    Top = 56
  end
  object qDisciplina: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DISCIPLINA')
    Left = 104
    Top = 160
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
    AfterDelete = dsDisciplinaAfterDelete
    Left = 328
    Top = 160
  end
  object pDisciplina: TDataSetProvider
    DataSet = qDisciplina
    Left = 216
    Top = 160
  end
end
