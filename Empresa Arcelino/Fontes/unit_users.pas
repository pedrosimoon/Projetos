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
    Label3: TLabel;
    Label4: TLabel;
    txt_nome: TSIMONEdit1;
    txt_usuario: TSIMONEdit1;
    txt_senha: TSIMONEdit1;
    DBGrid1: TDBGrid;
    ImageList1: TImageList;
    btn_novo: TSpeedButton;
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
    procedure btn_busca_funcClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure txt_senhaExit(Sender: TObject);
    procedure txt_usuarioExit(Sender: TObject);
    procedure txt_buscar_nomeChange(Sender: TObject);
  private
    { Private declarations }
    procedure associar_campos;
    procedure desabiltar_campos;
    procedure habilitar_campos;
    procedure limpar_campos;
    procedure listar;
    procedure buscar_nome;
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;

implementation

{$R *.dfm}

procedure Tfrm_usuario.associar_campos;
begin
  dm.query_usuario.FieldByName('nome').Value                       := Trim(txt_nome.Text);
  dm.query_usuario.FieldByName('usuario').Value                    := Trim(txt_usuario.Text);
  dm.query_usuario.FieldByName('senha').Value                      := Trim(txt_senha.Text);
  dm.query_usuario.FieldByName('cargo').Value                      := cargo_func;
  dm.query_usuario.FieldByName('funcionario_id_funcionario').Value := id_func;
end;

procedure Tfrm_usuario.desabiltar_campos;
begin
  txt_nome.Enabled       := False;
  btn_busca_func.Enabled := False;
  txt_usuario.Enabled    := False;
  txt_senha.Enabled      := False;

end;

procedure Tfrm_usuario.FormActivate(Sender: TObject);
begin
  txt_nome.Text := nome_func;
end;

procedure Tfrm_usuario.FormShow(Sender: TObject);
begin
  dm.tb_usuario.Active := True;
  desabiltar_campos;
  listar;
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

procedure Tfrm_usuario.txt_buscar_nomeChange(Sender: TObject);
begin
  buscar_nome;
end;

procedure Tfrm_usuario.txt_senhaExit(Sender: TObject);
begin
  if txt_senha.Text = '' then
    begin
      Application.MessageBox('Campo Senha Obrigatório', 'Campo Obrigatório', MB_YESNO + MB_ICONINFORMATION);
      txt_senha.SetFocus;
      exit;
    end;
end;

procedure Tfrm_usuario.txt_usuarioExit(Sender: TObject);
begin
  if txt_usuario.Text = '' then
    begin
      Application.MessageBox('Campo usuário Obrigatório.', 'Campo Obrigatório', MB_YESNO + MB_ICONINFORMATION);
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

procedure Tfrm_usuario.btn_novoClick(Sender: TObject);
begin
  listar;
  dm.tb_usuario.Insert;
  habilitar_campos;
  btn_salvar.Enabled := True;
end;

procedure Tfrm_usuario.btn_salvarClick(Sender: TObject);
var
  usuario: String;
begin
  if txt_nome.Text = '' then
    begin
      Application.MessageBox('Campo nome vazio!', 'Campo Vazio', MB_YESNO + MB_ICONINFORMATION);
      exit;
    end;

  dm.query_usuario.Close;
  dm.query_usuario.SQL.Clear;
  dm.query_usuario.SQL.Add('SELECT * FROM usuario where usuario = ' + QuotedStr(Trim(txt_usuario.Text)));
  dm.query_usuario.Open;

  if not dm.query_usuario.IsEmpty then
    begin
      MessageDlg('Este nome de usuário: ' + usuario + ' já está em uso!', mtInformation, mbOKCancel, 0);
      txt_usuario.SetFocus;
      exit;
    end;

  associar_campos;
  dm.tb_usuario.Post;

  Application.MessageBox('Usuário cadastrado com sucesso!', 'Sucesso', MB_OKCANCEL + MB_ICONINFORMATION);

  listar;
  limpar_campos;
  desabiltar_campos;
  btn_editar.Enabled   := False;
  btn_excluir.Enabled  := False;
  btn_novo.Enabled     := True;
  btn_cancelar.Enabled := False;
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
