object Persistencia: TPersistencia
  OldCreateOrder = False
  Height = 622
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
    Left = 128
    Top = 48
  end
  object qDisciplina: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    AfterInsert = qDisciplinaAfterInsert
    BeforeDelete = qDisciplinaBeforeDelete
    AfterScroll = qDisciplinaAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DISCIPLINA')
    Left = 128
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
    object qDisciplinaID_DOCENTE: TLargeintField
      FieldName = 'ID_DOCENTE'
      ProviderFlags = [pfInUpdate]
    end
  end
  object qDocente: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.DOCENTE')
    Left = 128
    Top = 96
    object qDocenteID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qDocenteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object qAula: TADOQuery
    Connection = Connection
    CursorType = ctStatic
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
    Left = 128
    Top = 192
    object qAulaID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qAulaID_DISCIPLINA: TLargeintField
      FieldName = 'ID_DISCIPLINA'
    end
    object qAulaNOME_TURMA: TStringField
      DisplayLabel = 'Turma'
      FieldName = 'NOME_TURMA'
      Size = 80
    end
  end
  object qUsuario: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    AfterScroll = qUsuarioAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.USUARIO;')
    Left = 128
    Top = 360
    object qUsuarioID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qUsuarioNOME: TStringField
      FieldName = 'NOME'
      Size = 14
    end
    object qUsuarioSENHA: TStringField
      FieldName = 'SENHA'
    end
  end
  object qTelasUsuarioNaoPossui: TADOQuery
    Connection = Connection
    CursorType = ctStatic
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
      'SELECT T.*'
      'FROM LAB.TELA T'
      'WHERE ID NOT IN (SELECT ST.ID'
      'FROM LAB.USUARIO_TELA SUT'
      'JOIN LAB.TELA ST ON (SUT.ID_TELA = ST.ID)'
      'WHERE SUT.ID_USUARIO = :idUsuario)')
    Left = 128
    Top = 456
    object qTelasUsuarioNaoPossuiID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qTelasUsuarioNaoPossuiNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object qLogin: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM LAB.USUARIO;')
    Left = 128
    Top = 264
    object qLoginID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qLoginNOME: TStringField
      FieldName = 'NOME'
      Size = 14
    end
    object qLoginSENHA: TStringField
      FieldName = 'SENHA'
    end
  end
  object dsoTelasUsuarioNaoPossui: TDataSource
    DataSet = qTelasUsuarioNaoPossui
    Left = 280
    Top = 456
  end
  object qUsuarioTelas: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.USUARIO_TELA;')
    Left = 128
    Top = 504
    object qUsuarioTelasID_USUARIO: TLargeintField
      FieldName = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUsuarioTelasID_TELA: TLargeintField
      FieldName = 'ID_TELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUsuarioTelasALTERAR: TBooleanField
      FieldName = 'ALTERAR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qUsuarioTelasEXCLUIR: TBooleanField
      FieldName = 'EXCLUIR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qUsuarioTelasIMPRIMIR: TBooleanField
      FieldName = 'IMPRIMIR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qUsuarioTelasINSERIR: TBooleanField
      FieldName = 'INSERIR'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsoTelasUsuarioPossui: TDataSource
    DataSet = qTelasUsuarioPossui
    Left = 280
    Top = 408
  end
  object qTelasLoginPossui: TADOQuery
    Connection = Connection
    CursorType = ctStatic
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
      'SELECT T.*'
      'FROM LAB.USUARIO_TELA UT'
      'JOIN LAB.TELA T ON (UT.ID_TELA = T.ID)'
      'WHERE UT.ID_USUARIO = :idUsuario')
    Left = 128
    Top = 312
    object qTelasLoginPossuiID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qTelasLoginPossuiNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object dsoDocente: TDataSource
    DataSet = qDocente
    Left = 280
    Top = 96
  end
  object dsoAula: TDataSource
    DataSet = qAula
    Left = 280
    Top = 192
  end
  object qTelasUsuarioPossui: TADOQuery
    Connection = Connection
    CursorType = ctStatic
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
      'SELECT T.*'
      'FROM LAB.USUARIO_TELA UT'
      'JOIN LAB.TELA T ON (UT.ID_TELA = T.ID)'
      'WHERE UT.ID_USUARIO = :idUsuario;')
    Left = 128
    Top = 408
    object qTelasUsuarioPossuiID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qTelasUsuarioPossuiNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
end
