unit unit_modulo;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  FireDAC.Phys.MySQLDef, Data.FMTBcd, FireDAC.Phys.MySQL, Data.DB, Data.SqlExpr,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tdm = class(TDataModule)
    conexao: TFDConnection;
    ds_cargo: TDataSource;
    tb_cargo: TFDTable;
    query_cargo: TFDQuery;
    SQLDriverLink: TFDPhysMySQLDriverLink;
    query_cargoid: TFDAutoIncField;
    query_cargocargo: TStringField;
    tb_func: TFDTable;
    ds_func: TDataSource;
    query_func: TFDQuery;
    query_funcid_funcionario: TFDAutoIncField;
    query_funcnome: TStringField;
    query_funcsobrenome: TStringField;
    query_funccpf: TStringField;
    query_funcdata_nascimento: TStringField;
    query_funccidade: TStringField;
    query_funcuf: TStringField;
    query_funclogradouro: TStringField;
    query_funcnumero_residencia: TStringField;
    query_funccomplemento: TStringField;
    query_funcbairro: TStringField;
    query_funccep: TStringField;
    query_funcemail: TStringField;
    query_functelefone: TStringField;
    query_funccargo: TStringField;
    query_funcdata_contrato: TDateField;
    tb_usuario: TFDTable;
    query_usuario: TFDQuery;
    ds_usuario: TDataSource;
    query_usuarioid_usuario: TFDAutoIncField;
    query_usuarionome: TStringField;
    query_usuariousuario: TStringField;
    query_usuariosenha: TStringField;
    query_usuariocargo: TStringField;
    query_usuariofuncionario_id_funcionario: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

//DECLARAÇÃO DAS VARIÁVEIS GLOBAIS
  id_func        : String;
  nome_func      : String;
  sobrenome_func : String;
  cargo_func     : String;
  chamada        : String;
  nome_usuario   : String;
  cargo_usuario  : String;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
  conexao.Connected := True;
end;

end.
