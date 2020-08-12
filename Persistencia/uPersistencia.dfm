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
  object qUsuario: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    AfterScroll = qUsuarioAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.USUARIO;')
    Left = 128
    Top = 192
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
    Top = 288
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
    Top = 96
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
    Top = 288
  end
  object qUsuarioTelas: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.USUARIO_TELA;')
    Left = 128
    Top = 336
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
    Top = 240
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
    Top = 144
    object qTelasLoginPossuiID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qTelasLoginPossuiNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
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
    Top = 240
    object qTelasUsuarioPossuiID: TLargeintField
      FieldName = 'ID'
      ReadOnly = True
    end
    object qTelasUsuarioPossuiNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
  end
  object qProduto: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.Produtos')
    Left = 392
    Top = 96
    object qProdutoidProduto: TLargeintField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qProdutoproduto: TStringField
      FieldName = 'produto'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object qProdutovalor: TBCDField
      FieldName = 'valor'
      ProviderFlags = [pfInUpdate]
      Required = True
      Precision = 18
      Size = 0
    end
    object qProdutoqtdeEstoque: TIntegerField
      FieldName = 'qtdeEstoque'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qProdutocodigobarras: TIntegerField
      FieldName = 'codigobarras'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object qCliente: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.Cliente')
    Left = 392
    Top = 144
    object qClienteidCliente: TLargeintField
      FieldName = 'idCliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qClientenomeCliente: TStringField
      FieldName = 'nomeCliente'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object qClientecnpj: TIntegerField
      FieldName = 'cnpj'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qClientedtNascimento: TDateTimeField
      FieldName = 'dtNascimento'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qClienteidCidade: TLargeintField
      FieldName = 'idCidade'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qClienteendereco: TStringField
      FieldName = 'endereco'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object qClientecep: TIntegerField
      FieldName = 'cep'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qClientenumero: TIntegerField
      FieldName = 'numero'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qClientecomplemento: TStringField
      FieldName = 'complemento'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
    object qClienteemail: TStringField
      FieldName = 'email'
      ProviderFlags = [pfInUpdate]
      Required = True
      Size = 80
    end
  end
end
