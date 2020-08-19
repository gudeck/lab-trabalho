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
    Top = 344
  end
  object dsEntradaEstoque: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'pEntradaEstoque'
    Left = 544
    Top = 376
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
    Top = 392
  end
  object pEntradaEstoque: TDataSetProvider
    DataSet = qEntradaEstoque
    Left = 464
    Top = 360
  end
  object qFaturamento: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.Faturamento')
    Left = 72
    Top = 392
    object qFaturamentoidFaturamento: TLargeintField
      FieldName = 'idFaturamento'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qFaturamentodataFaturamento: TDateTimeField
      FieldName = 'dataFaturamento'
      Required = True
    end
    object qFaturamentoidCliente: TLargeintField
      FieldName = 'idCliente'
      Required = True
    end
  end
  object qProdutosNaoForamFaturados: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'idCliente'
        Attributes = [paSigned]
        DataType = ftLargeint
        Precision = 19
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT VP.idPedido, VP.idProduto, Pr.produto, VP.quantidade'
      'FROM LAB.VendasProdutos VP'
      'FULL OUTER JOIN LAB.FaturamentoItem FI'
      'ON VP.idPedido = FI.idPedido and VP.idProduto = FI.idProduto'
      'INNER JOIN LAB.Pedidos Pe ON VP.idPedido = Pe.idPedido'
      'INNER JOIN LAB.Cliente C ON Pe.idCliente = C.idCliente'
      'INNER JOIN LAB.Produtos Pr ON VP.idProduto = Pr.idProduto'
      
        'WHERE (VP.idPedido IS NULL OR FI.idPedido IS NULL OR VP.idProdut' +
        'o IS NULL OR FI.idProduto IS NULL)'
      'AND C.idCliente = :idCliente')
    Left = 72
    Top = 440
    object qProdutosNaoForamFaturadosidPedido: TLargeintField
      FieldName = 'idPedido'
    end
    object qProdutosNaoForamFaturadosidProduto: TLargeintField
      FieldName = 'idProduto'
    end
    object qProdutosNaoForamFaturadosproduto: TStringField
      FieldName = 'produto'
      Size = 80
    end
    object qProdutosNaoForamFaturadosquantidade: TIntegerField
      FieldName = 'quantidade'
    end
  end
  object qFaturamentoItem: TADOQuery
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM LAB.FaturamentoItem')
    Left = 72
    Top = 488
    object qFaturamentoItemidFaturamento: TLargeintField
      FieldName = 'idFaturamento'
    end
    object qFaturamentoItemidProduto: TLargeintField
      FieldName = 'idProduto'
    end
    object qFaturamentoItemidPedido: TLargeintField
      FieldName = 'idPedido'
    end
  end
  object qRelatorio05: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TV.idPedido, TOTAL_VENDIDO, TOTAL_FATURADO, (TOTAL_VENDID' +
        'O - TOTAL_FATURADO) AS TOTAL_ABERTO'
      
        'FROM (SELECT PE.idPedido, SUM(VP.quantidade * PR.valor) AS TOTAL' +
        '_VENDIDO'
      '      FROM LAB.Pedidos PE'
      
        '               INNER JOIN LAB.VendasProdutos VP ON PE.idPedido =' +
        ' VP.idPedido'
      
        '               INNER JOIN LAB.Produtos PR ON VP.idProduto = PR.i' +
        'dProduto'
      '      GROUP BY PE.idPedido'
      '     ) TV'
      
        '         LEFT JOIN (SELECT FI.idPedido, SUM(VP.quantidade * PR.v' +
        'alor) AS TOTAL_FATURADO'
      '                    FROM LAB.Pedidos PE'
      
        '                             INNER JOIN LAB.VendasProdutos VP ON' +
        ' PE.idPedido = VP.idPedido'
      
        '                             INNER JOIN LAB.Produtos PR ON VP.id' +
        'Produto = PR.idProduto'
      '                             INNER JOIN LAB.FaturamentoItem FI'
      
        '                                        ON VP.idPedido = FI.idPe' +
        'dido and VP.idProduto = FI.idProduto'
      '                    WHERE idFaturamento IS NOT NULL'
      
        '                    GROUP BY FI.idPedido) TF ON TF.idPedido = TV' +
        '.idPedido')
    Left = 272
    Top = 568
    object qRelatorio05idPedido: TLargeintField
      FieldName = 'idPedido'
      ReadOnly = True
    end
    object qRelatorio05TOTAL_VENDIDO: TFMTBCDField
      FieldName = 'TOTAL_VENDIDO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object qRelatorio05TOTAL_FATURADO: TFMTBCDField
      FieldName = 'TOTAL_FATURADO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object qRelatorio05TOTAL_ABERTO: TFMTBCDField
      FieldName = 'TOTAL_ABERTO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object dsoRelatorio05: TDataSource
    DataSet = qRelatorio05
    Left = 344
    Top = 568
  end
  object qRelatorio04: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT TV.idProduto, TV.produto, VALOR_TOTAL_VENDIDO, QUANTIDADE' +
        '_VENDIDA, VALOR_TOTAL_FATURADO, QUANTIDADE_FATURADA'
      'FROM (SELECT PR.idProduto,'
      '             PR.produto,'
      
        '             SUM(VP.quantidade * PR.valor) AS VALOR_TOTAL_VENDID' +
        'O,'
      '             SUM(VP.quantidade)            AS QUANTIDADE_VENDIDA'
      '      FROM LAB.Pedidos PE'
      
        '               INNER JOIN LAB.VendasProdutos VP ON PE.idPedido =' +
        ' VP.idPedido'
      
        '               INNER JOIN LAB.Produtos PR ON VP.idProduto = PR.i' +
        'dProduto'
      '      GROUP BY PR.idProduto, PR.produto'
      '     ) TV'
      '         LEFT JOIN (SELECT PR.idProduto,'
      
        '                           SUM(VP.quantidade * PR.valor) AS VALO' +
        'R_TOTAL_FATURADO,'
      
        '                           SUM(VP.quantidade)            AS QUAN' +
        'TIDADE_FATURADA'
      '                    FROM LAB.Pedidos PE'
      
        '                             INNER JOIN LAB.VendasProdutos VP ON' +
        ' PE.idPedido = VP.idPedido'
      
        '                             INNER JOIN LAB.Produtos PR ON VP.id' +
        'Produto = PR.idProduto'
      '                             INNER JOIN LAB.FaturamentoItem FI'
      
        '                                        ON VP.idPedido = FI.idPe' +
        'dido and VP.idProduto = FI.idProduto'
      '                    WHERE idFaturamento IS NOT NULL'
      
        '                    GROUP BY PR.idProduto) TF ON TF.idProduto = ' +
        'TV.idProduto')
    Left = 272
    Top = 520
    object qRelatorio04idProduto: TLargeintField
      FieldName = 'idProduto'
      ReadOnly = True
    end
    object qRelatorio04produto: TStringField
      FieldName = 'produto'
      Size = 80
    end
    object qRelatorio04VALOR_TOTAL_VENDIDO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_VENDIDO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object qRelatorio04QUANTIDADE_VENDIDA: TIntegerField
      FieldName = 'QUANTIDADE_VENDIDA'
      ReadOnly = True
    end
    object qRelatorio04VALOR_TOTAL_FATURADO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_FATURADO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object qRelatorio04QUANTIDADE_FATURADA: TIntegerField
      FieldName = 'QUANTIDADE_FATURADA'
      ReadOnly = True
    end
  end
  object dsoRelatorio04: TDataSource
    DataSet = qRelatorio04
    Left = 344
    Top = 520
  end
  object qRelatorio03: TADOQuery
    Active = True
    Connection = Connection
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT Venda.idCidade,'
      '       Venda.Cidade,'
      '       VALOR_TOTAL_VENDIDO,'
      '       QUANTIDADE_VENDIDA,'
      '       VALOR_TOTAL_FATURADO,'
      '       QUANTIDADE_FATURADA'
      'FROM (SELECT CI.idCidade,'
      '             CI.Cidade,'
      
        '             SUM(VP.quantidade * PR.valor) AS VALOR_TOTAL_VENDID' +
        'O,'
      '             SUM(VP.quantidade)            AS QUANTIDADE_VENDIDA'
      '      FROM LAB.Pedidos PE'
      
        '               INNER JOIN LAB.Cliente CL on CL.idCliente = PE.id' +
        'Cliente'
      
        '               INNER JOIN LAB.Cidade CI ON CL.idCidade = CI.idCi' +
        'dade'
      
        '               INNER JOIN LAB.VendasProdutos VP ON PE.idPedido =' +
        ' VP.idPedido'
      
        '               INNER JOIN LAB.Produtos PR ON VP.idProduto = PR.i' +
        'dProduto'
      '      GROUP BY CI.idCidade, CI.Cidade'
      '     ) Venda'
      '         LEFT JOIN (SELECT C.idCidade,'
      
        '                           SUM(VP.quantidade * PR.valor) AS VALO' +
        'R_TOTAL_FATURADO,'
      
        '                           SUM(VP.quantidade)            AS QUAN' +
        'TIDADE_FATURADA'
      '                    FROM LAB.Pedidos PE'
      
        '                             INNER JOIN LAB.Cliente C on C.idCli' +
        'ente = PE.idCliente'
      
        '                             INNER JOIN LAB.VendasProdutos VP ON' +
        ' PE.idPedido = VP.idPedido'
      
        '                             INNER JOIN LAB.Produtos PR ON VP.id' +
        'Produto = PR.idProduto'
      '                             INNER JOIN LAB.FaturamentoItem FI'
      
        '                                        ON VP.idPedido = FI.idPe' +
        'dido and VP.idProduto = FI.idProduto'
      '                    WHERE idFaturamento IS NOT NULL'
      
        '                    GROUP BY C.idCidade) Faturamento ON Faturame' +
        'nto.idCidade = Venda.idCidade')
    Left = 272
    Top = 472
    object qRelatorio03idCidade: TLargeintField
      FieldName = 'idCidade'
      ReadOnly = True
    end
    object qRelatorio03Cidade: TStringField
      FieldName = 'Cidade'
      Size = 80
    end
    object qRelatorio03VALOR_TOTAL_VENDIDO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_VENDIDO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object qRelatorio03QUANTIDADE_VENDIDA: TIntegerField
      FieldName = 'QUANTIDADE_VENDIDA'
      ReadOnly = True
    end
    object qRelatorio03VALOR_TOTAL_FATURADO: TFMTBCDField
      FieldName = 'VALOR_TOTAL_FATURADO'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
    object qRelatorio03QUANTIDADE_FATURADA: TIntegerField
      FieldName = 'QUANTIDADE_FATURADA'
      ReadOnly = True
    end
  end
  object dsoRelatorio03: TDataSource
    DataSet = qRelatorio03
    Left = 344
    Top = 472
  end
end
