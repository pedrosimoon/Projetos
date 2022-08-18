object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 514
  Width = 746
  object conexao: TFDConnection
    Params.Strings = (
      'Database=empresa_arcelino'
      'User_Name=root'
      'Password=@mora1759293'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 29
    Top = 19
  end
  object ds_cargo: TDataSource
    DataSet = query_cargo
    Left = 29
    Top = 283
  end
  object tb_cargo: TFDTable
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'cargo'
    Left = 29
    Top = 136
  end
  object query_cargo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM cargo order by cargo asc')
    Left = 29
    Top = 211
    object query_cargoid: TFDAutoIncField
      Alignment = taCenter
      DisplayLabel = 'ID'
      DisplayWidth = 7
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object query_cargocargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
  end
  object SQLDriverLink: TFDPhysMySQLDriverLink
    Left = 113
    Top = 19
  end
  object tb_func: TFDTable
    Connection = conexao
    TableName = 'funcionario'
    Left = 112
    Top = 135
  end
  object ds_func: TDataSource
    DataSet = query_func
    Left = 112
    Top = 282
  end
  object query_func: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM funcionario')
    Left = 112
    Top = 212
    object query_funcid_funcionario: TFDAutoIncField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_funcnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 10
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_funcsobrenome: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sobrenome'
      DisplayWidth = 10
      FieldName = 'sobrenome'
      Origin = 'sobrenome'
      Size = 30
    end
    object query_funccpf: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'CPF'
      DisplayWidth = 16
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      Size = 15
    end
    object query_funcdata_nascimento: TStringField
      FieldName = 'data_nascimento'
      Origin = 'data_nascimento'
      Required = True
      Visible = False
      Size = 10
    end
    object query_funccidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 20
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
      Size = 50
    end
    object query_funcuf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      Visible = False
      FixedChar = True
      Size = 2
    end
    object query_funclogradouro: TStringField
      DisplayLabel = 'Rua'
      DisplayWidth = 30
      FieldName = 'logradouro'
      Origin = 'logradouro'
      Required = True
      Size = 100
    end
    object query_funcnumero_residencia: TStringField
      DisplayLabel = 'N'#186
      DisplayWidth = 5
      FieldName = 'numero_residencia'
      Origin = 'numero_residencia'
      Required = True
      Size = 10
    end
    object query_funccomplemento: TStringField
      AutoGenerateValue = arDefault
      DisplayWidth = 10
      FieldName = 'complemento'
      Origin = 'complemento'
      Visible = False
      Size = 50
    end
    object query_funcbairro: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 30
      FieldName = 'bairro'
      Origin = 'bairro'
      Required = True
      Size = 100
    end
    object query_funccep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Required = True
      Visible = False
      Size = 12
    end
    object query_funcemail: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'E-mail'
      DisplayWidth = 30
      FieldName = 'email'
      Origin = 'email'
      Size = 100
    end
    object query_functelefone: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Telefone'
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 18
    end
    object query_funccargo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
    object query_funcdata_contrato: TDateField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data de Contrata'#231#227'o'
      FieldName = 'data_contrato'
      Origin = 'data_contrato'
    end
  end
  object tb_usuario: TFDTable
    IndexFieldNames = 'id_usuario'
    Connection = conexao
    TableName = 'usuario'
    Left = 201
    Top = 134
  end
  object query_usuario: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM usuario')
    Left = 201
    Top = 212
    object query_usuarioid_usuario: TFDAutoIncField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
      Visible = False
    end
    object query_usuarionome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 15
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object query_usuariousuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 25
    end
    object query_usuariosenha: TStringField
      DisplayLabel = 'Senha'
      DisplayWidth = 10
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 10
    end
    object query_usuariocargo: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 15
      FieldName = 'cargo'
      Origin = 'cargo'
      Required = True
      Size = 25
    end
    object query_usuariofuncionario_id_funcionario: TIntegerField
      FieldName = 'funcionario_id_funcionario'
      Origin = 'funcionario_id_funcionario'
      Required = True
      Visible = False
    end
  end
  object ds_usuario: TDataSource
    DataSet = query_usuario
    Left = 201
    Top = 282
  end
end
