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
    LoginPrompt = False
    Left = 64
    Top = 56
  end
  object ds_cargo: TDataSource
    DataSet = query_cargo
    Left = 64
    Top = 320
  end
  object tb_cargo: TFDTable
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'empresa_arcelino.cargo'
    Left = 64
    Top = 173
  end
  object query_cargo: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM cargo order by cargo asc')
    Left = 64
    Top = 248
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
    Left = 624
    Top = 80
  end
  object tb_func: TFDTable
    Connection = conexao
    TableName = 'empresa_arcelino.funcionario'
    Left = 192
    Top = 173
  end
  object ds_func: TDataSource
    DataSet = query_func
    Left = 192
    Top = 320
  end
  object query_func: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM funcionario')
    Left = 192
    Top = 256
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
end
