unit unit_users;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SIMONEdit, Vcl.Mask,
  SIMONMaskEdit, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.Buttons, unit_funcionario,
  unit_modulo;

type
  Tfrm_usuario = class(TForm)
    pnl_superior: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label14: TLabel;
    rb_nome: TRadioButton;
    txt_buscar_nome: TSIMONEdit1;
    pnl_fundo: TPanel;
    Label2: TLabel;
    lbl_usuario: TLabel;
    Label4: TLabel;
    txt_nome: TSIMONEdit1;
    txt_usuario: TSIMONEdit1;
    txt_senha: TSIMONEdit1;
    dg_usuario: TDBGrid;
    ImageList1: TImageList;
    Label15: TLabel;
    btn_cancelar: TSpeedButton;
    Label22: TLabel;
    btn_salvar: TSpeedButton;
    Label16: TLabel;
    btn_editar: TSpeedButton;
    Label17: TLabel;
    btn_excluir: TSpeedButton;
    Label18: TLabel;
    btn_busca_func: TSpeedButton;
    btn_novo: TSpeedButton;
    txt_sobrenome: TSIMONEdit1;
    lbl_sobrenome: TLabel;
    procedure btn_busca_funcClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure txt_senhaExit(Sender: TObject);
    procedure txt_usuarioExit(Sender: TObject);
    procedure txt_buscar_nomeChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure dg_usuarioCellClick(Column: TColumn);
  private
    { Private declarations }
    procedure associar_campos;
    procedure desabilitar_campos;
    procedure habilitar_campos;
    procedure limpar_campos;
    procedure listar;
    procedure buscar_nome;
    procedure esconder_campos;
    procedure mostrar_campos;
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;
  id             : String;
  usuario_antigo : String;

implementation

{$R *.dfm}

procedure Tfrm_usuario.associar_campos;
begin
  dm.tb_usuario.FieldByName('nome').Value                       := Trim(txt_nome.Text);
  dm.tb_usuario.FieldByName('usuario').Value                    := Trim(txt_usuario.Text);
  dm.tb_usuario.FieldByName('senha').Value                      := Trim(txt_senha.Text);
  dm.tb_usuario.FieldByName('cargo').Value                      := cargo_func;
  dm.tb_usuario.FieldByName('funcionario_id_funcionario').Value := id_func;
end;

procedure Tfrm_usuario.desabilitar_campos;
begin
  btn_busca_func.Enabled := False;
  txt_usuario.Enabled    := False;
  txt_senha.Enabled      := False;
  txt_sobrenome.Enabled  := False;
end;

procedure Tfrm_usuario.dg_usuarioCellClick(Column: TColumn);
begin
  esconder_campos;
  habilitar_campos;
  btn_editar.Enabled   := True;
  btn_novo.Enabled     := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;

  dm.tb_usuario.Edit;

  txt_nome.Text := dm.tb_usuario.FieldByName('nome').Value;
  txt_usuario.Text := dm.tb_usuario.FieldByName('usuario').Value;
  txt_senha.Text := dm.tb_usuario.FieldByName('senha').Value;

  id := dm.query_usuario.FieldByName('id_usuario').Value;
  usuario_antigo := dm.query_usuario.FieldByName('usuario').Value;
end;

procedure Tfrm_usuario.esconder_campos;
begin
  lbl_sobrenome.Visible := False;
  txt_sobrenome.Visible := False;
  txt_usuario.Left := 340;
  txt_usuario.Top  := 65;
  lbl_usuario.Left := 340;
  lbl_usuario.Top := 48;
end;

procedure Tfrm_usuario.FormActivate(Sender: TObject);
begin
  txt_nome.Text := nome_func;
  txt_sobrenome.Text := sobrenome_func;
end;

procedure Tfrm_usuario.FormCreate(Sender: TObject);
begin
  dm.tb_usuario.Active := True;
  listar;
  desabilitar_campos;
  rb_nome.Checked := True;
end;

procedure Tfrm_usuario.habilitar_campos;
begin
  btn_busca_func.Enabled := True;
  txt_usuario.Enabled    := True;
  txt_senha.Enabled      := True;
end;

procedure Tfrm_usuario.limpar_campos;
begin
  txt_nome.Text    := '';
  txt_usuario.Text := '';
  txt_senha.Text   := '';
end;

procedure Tfrm_usuario.listar;
begin
  dm.query_usuario.Close;
  dm.query_usuario.SQL.Clear;
  dm.query_usuario.SQL.Add('SELECT * FROM usuario ORDER BY usuario ASC');
  dm.query_usuario.Open;
end;

procedure Tfrm_usuario.mostrar_campos;
begin
  lbl_sobrenome.Visible := True;
  txt_sobrenome.Visible := True;
  txt_usuario.Left := 440;
  txt_usuario.Top  := 65;
  lbl_usuario.Left := 440;
  lbl_usuario.Top := 48;
end;

procedure Tfrm_usuario.txt_buscar_nomeChange(Sender: TObject);
begin
  buscar_nome;
end;

procedure Tfrm_usuario.txt_senhaExit(Sender: TObject);
begin
  if txt_senha.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_senha.SetFocus;
      exit;
    end;
end;

procedure Tfrm_usuario.txt_usuarioExit(Sender: TObject);
begin
  if txt_usuario.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_usuario.SetFocus;
      exit;
    end;
end;

procedure Tfrm_usuario.btn_busca_funcClick(Sender: TObject);
begin
  chamada         := 'rec';
  frm_funcionario := Tfrm_funcionario.Create(self);
  frm_funcionario.Show;
end;

procedure Tfrm_usuario.btn_cancelarClick(Sender: TObject);
begin
  dm.query_usuario.Close;
  dm.query_usuario.SQL.Clear;
  limpar_campos;
  desabilitar_campos;
  listar;
  mostrar_campos;
  btn_novo.Enabled     := True;
  btn_cancelar.Enabled := True;
end;

procedure Tfrm_usuario.btn_editarClick(Sender: TObject);
var
  usuario : String;
begin

  mostrar_campos;

  if txt_usuario.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtError, mbOKCancel, 0);
      txt_usuario.SetFocus;
      exit;
    end;

  if usuario_antigo <> txt_usuario.Text then
    begin
      dm.query_usuario.Close;
      dm.query_usuario.SQL.Clear;
      dm.query_usuario.SQL.Add('SELECT * FROM usuario WHERE usuario = ' + QuotedStr(Trim(txt_usuario.Text)));
      dm.query_usuario.Open;

      if not dm.query_usuario.IsEmpty then
        begin
          usuario := dm.query_usuario['usuario'];
          MessageDlg('Usuário: ' + usuario + ' já cadastrado!', mtInformation, mbOKCancel, 0);
          txt_usuario.SetFocus;
          txt_usuario.Text := '';
          exit;
        end;
   end;

  //associar_campos;

  dm.query_usuario.Close;
  dm.query_usuario.SQL.Clear;
  dm.query_usuario.SQL.Add('UPDATE usuario SET nome = :nome, usuario = :usuario, senha = :senha WHERE id_usuario = :id_usuario');

  dm.query_usuario.ParamByName('nome').Value    := Trim(txt_nome.Text);
  dm.query_usuario.ParamByName('usuario').Value := Trim(txt_usuario.Text);
  dm.query_usuario.ParamByName('senha').Value   := Trim(txt_senha.Text);
  dm.query_usuario.ExecSQL;

  MessageDlg('Editado com Sucesso!', mtInformation, mbOKCancel, 0);

  listar;
  desabilitar_campos;
  btn_editar.Enabled  := False;
  btn_excluir.Enabled := False;
    
end;

procedure Tfrm_usuario.btn_novoClick(Sender: TObject);
begin
  listar;
  limpar_campos;
  habilitar_campos;
  mostrar_campos;
  btn_editar.Enabled   := False;
  btn_excluir.Enabled  := False;
  btn_cancelar.Enabled := True;
  btn_salvar.Enabled   := True;

  dm.tb_usuario.Insert;
end;

procedure Tfrm_usuario.btn_salvarClick(Sender: TObject);
var
  usuario: String;
begin

  //Verificando se o campo está vazio.
  if Trim(txt_nome.Text) = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_nome.SetFocus;
      exit;
    end;

  //VERIFICAR SE O USUÁRIO JÁ ESTÁ CADASTRADO.

  //Fechando a query antes de chamar.
  dm.query_usuario.Close;

  //Está limpando o campo SQL, caso tenha alguma outra requisição rodando
  dm.query_usuario.SQL.Clear;

  //Está selecionando a partir da tabela cargo, onde o cargo for igual ai que foi passado no txt.
  dm.query_usuario.SQL.Add('SELECT * FROM usuario WHERE usuario = ' + QuotedStr(Trim(txt_usuario.Text)));

  dm.query_usuario.Open;

  //Verificação para cargo repetido
  if not dm.query_usuario.IsEmpty then
    begin
      //Está atribuindo a variável cargo o resultado da pesquisa no campo cargo.
      usuario :=  dm.query_usuario['usuario'];
      MessageDlg('O usuario: '+ usuario + ' já está cadastrado!', mtError, mbOKCancel, 0);
      txt_nome.Text := '';
      txt_nome.SetFocus;
      exit;
    end;

  associar_campos;

  //Vai entrar na DM, na tabela cargo e dar o comando de Salvar
  dm.tb_usuario.Post;

  MessageDlg('Salvo com sucesso!', mtInformation, mbOKCancel, 0);

  listar;
  //limpar_campos;
  desabilitar_campos;
  btn_salvar.Enabled     := False;
  btn_novo.Enabled       := True;
end;

procedure Tfrm_usuario.buscar_nome;
begin
  dm.query_usuario.Close;
  dm.query_usuario.SQL.Clear;
  dm.query_usuario.SQL.Add('SELECT * FROM usuario where usuario LIKE :usuario ORDER BY usuario ASC');
  dm.query_usuario.ParamByName('usuario').Value := txt_usuario.Text + '%';
  dm.query_usuario.Open;
end;

end.
