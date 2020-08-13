object Persistencia: TPersistencia
  OldCreateOrder = False
  Height = 622
  Width = 741
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
    Left = 72
    Top = 8
  end
  object qUsuario: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    AfterScroll = qUsuarioAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.USUARIO;')
    Left = 72
    Top = 152
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
        DataType = ftLargeint
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT T.*'
      'FROM LAB.TELA T'
      'WHERE ID NOT IN (SELECT ST.ID'
      'FROM LAB.USUARIO_TELA SUT'
      'JOIN LAB.TELA ST ON (SUT.ID_TELA = ST.ID)'
      'WHERE SUT.ID_USUARIO = :idUsuario)')
    Left = 72
    Top = 248
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
    Left = 72
    Top = 56
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
    Left = 224
    Top = 248
  end
  object qUsuarioTelas: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.USUARIO_TELA;')
    Left = 72
    Top = 296
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
    Left = 224
    Top = 200
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
    Left = 72
    Top = 104
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
    Left = 72
    Top = 200
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
    Left = 384
    Top = 56
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
    Left = 384
    Top = 104
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
  object qPedido: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    BeforePost = qPedidoBeforePost
    AfterScroll = qPedidoAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.Pedidos')
    Left = 384
    Top = 152
    object qPedidoidPedido: TLargeintField
      FieldName = 'idPedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qPedidoidCliente: TLargeintField
      FieldName = 'idCliente'
      Required = True
    end
    object qPedidodtCadastro: TDateTimeField
      FieldName = 'dtCadastro'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object qPedidodtPrevistaEntrega: TDateTimeField
      FieldName = 'dtPrevistaEntrega'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object qPedidoProduto: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.VendasProdutos')
    Left = 384
    Top = 296
    object qPedidoProdutoidPedido: TLargeintField
      FieldName = 'idPedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedidoProdutoidProduto: TLargeintField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPedidoProdutoquantidade: TIntegerField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object qProdutosPedidoPossui: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPedido'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT P.*'
      'FROM LAB.VendasProdutos VP'
      'JOIN LAB.Produtos P ON (VP.idProduto = P.idProduto)'
      'WHERE VP.idPedido = :idPedido')
    Left = 384
    Top = 200
    object qProdutosPedidoPossuiidProduto: TLargeintField
      FieldName = 'idProduto'
      ReadOnly = True
    end
    object qProdutosPedidoPossuiproduto: TStringField
      FieldName = 'produto'
      Size = 80
    end
    object qProdutosPedidoPossuivalor: TBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 0
    end
    object qProdutosPedidoPossuiqtdeEstoque: TIntegerField
      FieldName = 'qtdeEstoque'
    end
    object qProdutosPedidoPossuicodigobarras: TIntegerField
      FieldName = 'codigobarras'
    end
  end
  object qProdutosPedidoNaoPossui: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idPedido'
        DataType = ftLargeint
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT P.*'
      'FROM LAB.Produtos P'
      'WHERE idProduto NOT IN (SELECT SP.idProduto'
      'FROM LAB.VendasProdutos SVP'
      'JOIN LAB.Produtos SP ON (SVP.idProduto = SP.idProduto)'
      'WHERE SVP.idPedido = :idPedido)')
    Left = 384
    Top = 248
    object qProdutosPedidoNaoPossuiidProduto: TLargeintField
      FieldName = 'idProduto'
      ReadOnly = True
    end
    object qProdutosPedidoNaoPossuiproduto: TStringField
      FieldName = 'produto'
      Size = 80
    end
    object qProdutosPedidoNaoPossuivalor: TBCDField
      FieldName = 'valor'
      Precision = 18
      Size = 0
    end
    object qProdutosPedidoNaoPossuiqtdeEstoque: TIntegerField
      FieldName = 'qtdeEstoque'
    end
    object qProdutosPedidoNaoPossuicodigobarras: TIntegerField
      FieldName = 'codigobarras'
    end
  end
  object dsoCliente: TDataSource
    DataSet = qCliente
    Left = 552
    Top = 104
  end
  object dsoProdutosPedidoPossui: TDataSource
    DataSet = qProdutosPedidoPossui
    Left = 552
    Top = 200
  end
  object dsoProdutosPedidoNaoPossui: TDataSource
    DataSet = qProdutosPedidoNaoPossui
    Left = 552
    Top = 248
  end
  object qEntradaEstoque: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.EntradasEstoque')
    Left = 384
    Top = 352
  end
  object dsEntradaEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pEntradaEstoque'
    Left = 544
    Top = 384
    object dsEntradaEstoqueidEntrada: TLargeintField
      FieldName = 'idEntrada'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object dsEntradaEstoqueidProduto: TLargeintField
      FieldName = 'idProduto'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dsEntradaEstoquedataEntrada: TDateTimeField
      FieldName = 'dataEntrada'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
    object dsEntradaEstoquequantidade: TIntegerField
      FieldName = 'quantidade'
      ProviderFlags = [pfInUpdate]
      Required = True
    end
  end
  object dsoEntradaEstoque: TDataSource
    DataSet = dsEntradaEstoque
    Left = 624
    Top = 400
  end
  object pEntradaEstoque: TDataSetProvider
    DataSet = qEntradaEstoque
    Left = 464
    Top = 368
  end
end
