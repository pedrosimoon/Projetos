unit unit_funcionario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, SIMONMaskEdit,
  SIMONEdit, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Data.DB, Vcl.Grids, Vcl.DBGrids,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ComCtrls, unit_modulo,
  SIMONMaskEditBD;

type
  Tfrm_funcionario = class(TForm)
    txt_buscar_nome: TSIMONEdit1;
    rb_cpf: TRadioButton;
    rb_nome: TRadioButton;
    txt_buscar_cpf: TSIMONMaskEdit;
    Label1: TLabel;
    pnl_superior: TPanel;
    Image1: TImage;
    pnl_cadastro: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    txt_nome_func: TSIMONEdit1;
    gp_inf_pessoais_func: TGroupBox;
    Label5: TLabel;
    txt_sobrenome_func: TSIMONEdit1;
    gp_residencia_func: TGroupBox;
    txt_rua_func: TSIMONEdit1;
    Label6: TLabel;
    txt_numero_casa_func: TSIMONEdit1;
    Label7: TLabel;
    Label8: TLabel;
    txt_complemento_func: TSIMONEdit1;
    txt_bairro_func: TSIMONEdit1;
    Label9: TLabel;
    Label10: TLabel;
    txt_cidade_func: TSIMONEdit1;
    Label11: TLabel;
    gp_contato_func: TGroupBox;
    Label12: TLabel;
    txt_email_func: TSIMONEdit1;
    Label13: TLabel;
    Label14: TLabel;
    ImageList1: TImageList;
    gp_func_empresarial: TGroupBox;
    cb_cargo: TComboBox;
    Label19: TLabel;
    btn_novo: TSpeedButton;
    Label15: TLabel;
    btn_salvar: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    btn_editar: TSpeedButton;
    btn_excluir: TSpeedButton;
    Label18: TLabel;
    dbg_funcionario: TDBGrid;
    Label20: TLabel;
    Label21: TLabel;
    txt_uf_func: TSIMONEdit1;
    btn_cancelar: TSpeedButton;
    Label22: TLabel;
    txt_cpf_func: TSIMONMaskEditBD;
    txt_nascimento_func: TSIMONMaskEditBD;
    txt_cep_func: TSIMONMaskEditBD;
    txt_telefone_func: TSIMONMaskEditBD;
    txt_data_contrato: TSIMONMaskEditBD;
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure txt_nome_funcExit(Sender: TObject);
    procedure txt_cpf_funcExit(Sender: TObject);
    procedure txt_nascimento_funcExit(Sender: TObject);
    procedure txt_rua_funcExit(Sender: TObject);
    procedure txt_numero_casa_funcExit(Sender: TObject);
    procedure txt_bairro_funcExit(Sender: TObject);
    procedure txt_cidade_funcExit(Sender: TObject);
    procedure txt_uf_funcExit(Sender: TObject);
    procedure txt_cep_funcExit(Sender: TObject);
    procedure cb_cargoExit(Sender: TObject);
    procedure txt_data_contratoExit(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure dbg_funcionarioCellClick(Column: TColumn);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
    procedure rb_nomeClick(Sender: TObject);
    procedure txt_buscar_nomeChange(Sender: TObject);
    procedure txt_buscar_cpfChange(Sender: TObject);
    procedure rb_cpfClick(Sender: TObject);
    procedure dbg_funcionarioDblClick(Sender: TObject);
  private
    { Private declarations }

    procedure limpar_campos;
    procedure habilitar_campos;
    procedure desabilitar_campos;
    procedure carregar_combobox;
    procedure buscar_nome;
    procedure buscar_cpf;
    procedure associar_campos;
    procedure listar;
  public
    { Public declarations }
  end;

var
  frm_funcionario: Tfrm_funcionario;
  id        : Integer;
  cpf_antigo: String;

implementation

{$R *.dfm}

{ Tfrm_funcionario }

procedure Tfrm_funcionario.associar_campos;
begin
  dm.tb_func.FieldByName('nome').Value              := Trim(txt_nome_func.Text);
  dm.tb_func.FieldByName('sobrenome').Value         := Trim(txt_sobrenome_func.Text);
  dm.tb_func.FieldByName('cpf').Value               := Trim(txt_cpf_func.Text);
  dm.tb_func.FieldByName('data_nascimento').Value   := Trim(txt_nascimento_func.Text);
  dm.tb_func.FieldByName('logradouro').Value        := Trim(txt_rua_func.Text);
  dm.tb_func.FieldByName('numero_residencia').Value := Trim(txt_numero_casa_func.Text);
  dm.tb_func.FieldByName('complemento').Value       := Trim(txt_complemento_func.Text);
  dm.tb_func.FieldByName('bairro').Value            := Trim(txt_bairro_func.Text);
  dm.tb_func.FieldByName('cidade').Value            := Trim(txt_cidade_func.Text);
  dm.tb_func.FieldByName('uf').Value                := Trim(txt_uf_func.Text);
  dm.tb_func.FieldByName('cep').Value               := Trim(txt_cep_func.Text);
  dm.tb_func.FieldByName('email').Value             := Trim(txt_email_func.Text);
  dm.tb_func.FieldByName('telefone').Value          := Trim(txt_telefone_func.Text);
  dm.tb_func.FieldByName('data_contrato').Value     := Trim(txt_data_contrato.Text);
  dm.tb_func.FieldByName('cargo').Value             := cb_cargo.Text;
end;

procedure Tfrm_funcionario.btn_cancelarClick(Sender: TObject);
begin
  dm.query_func.Close;
  dm.query_func.SQL.Clear;
  listar;
  //desabilitar_campos;
  limpar_campos;
  btn_novo.Enabled       := True;
  btn_salvar.Enabled     := False;
  btn_editar.Enabled     := False;
  btn_excluir.Enabled    := False;
  btn_cancelar.Enabled   := False;
end;

procedure Tfrm_funcionario.btn_editarClick(Sender: TObject);
var
  cpf: String;
begin
  //Verificando se o campo não está vazio
  if txt_nome_func.Text = '' then
    begin
      MessageDlg('Campo Vazio!', mtError, mbOKCancel, 0);
      txt_nome_func.SetFocus;
      exit;
    end;

  if cpf_antigo <> txt_cpf_func.Text then
    begin
      dm.query_func.Close;
      dm.query_func.SQL.Clear;
      dm.query_func.SQL.Add('SELECT * FROM funcionario WHERE cpf = ' + QuotedStr(Trim(txt_cpf_func.Text)));
      dm.query_func.Open;

      if not dm.query_func.IsEmpty then
        begin
          cpf := dm.query_func['cpf'];
          MessageDlg('O CPF ' + cpf + ' já está cadastrado!', mtError, mbOKCancel, 0);
          txt_cpf_func.SetFocus;
          exit;
      end;
    end;

  associar_campos;

  dm.query_func.Close;
  dm.query_func.SQL.Clear;
  dm.query_func.SQL.Add('UPDATE funcionario SET nome = :nome, sobrenome = :sobrenome, cpf = :cpf, logradouro = :logradouro, numero_residencia = :numero_residencia,' +
                          'complemento = :complemento, bairro = :bairro, cidade = :cidade, uf = :uf, cep = :cep, email = :email, telefone = :telefone, cargo = :cargo WHERE id_funcionario = :id_funcionario');

  dm.query_func.ParamByName('id_funcionario').Value    := id;
  dm.query_func.ParamByName('nome').Value              := Trim(txt_nome_func.Text);
  dm.query_func.ParamByName('sobrenome').Value         := Trim(txt_sobrenome_func.Text);
  dm.query_func.ParamByName('cpf').Value               := Trim(txt_cpf_func.Text);
  dm.query_func.ParamByName('logradouro').Value        := Trim(txt_rua_func.Text);
  dm.query_func.ParamByName('numero_residencia').Value := Trim(txt_numero_casa_func.Text);
  dm.query_func.ParamByName('complemento').Value       := Trim(txt_complemento_func.Text);
  dm.query_func.ParamByName('bairro').Value            := Trim(txt_bairro_func.Text);
  dm.query_func.ParamByName('cidade').Value            := Trim(txt_cidade_func.Text);
  dm.query_func.ParamByName('uf').Value                := Trim(txt_uf_func.Text);
  dm.query_func.ParamByName('cep').Value               := Trim(txt_cep_func.Text);
  dm.query_func.ParamByName('email').Value             := Trim(txt_email_func.Text);
  dm.query_func.ParamByName('telefone').Value          := Trim(txt_telefone_func.Text);
  dm.query_func.ParamByName('cargo').Value             := cb_cargo.Text;
  dm.query_func.ExecSQL;

  MessageDlg('Editado com sucesso!', mtInformation, mbOKCancel, 0);

  listar;
  btn_editar.Enabled  := False;
  btn_excluir.Enabled := False;
  desabilitar_campos;
  limpar_campos;

end;

procedure Tfrm_funcionario.btn_excluirClick(Sender: TObject);
begin
  try
    if MessageDlg('Deseja excluir o registro?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
      
        dm.query_func.Close;
        dm.query_func.SQL.Clear;
        dm.query_func.SQL.Add('DELETE FROM funcionario WHERE id_funcionario = :id_funcionario');
        dm.query_func.ParamByName('id_funcionario').Value := id;
        dm.query_func.ExecSQL;

        MessageDlg('Funcionário deletado com sucesso!', mtInformation, mbOKCancel, 0);
      end;
  except

    ShowMessage('Erro inesperado ao Deletar!');
  
  end;


  listar;

  desabilitar_campos;
  limpar_campos;
  btn_cancelar.Enabled   := True;
  btn_novo.Enabled       := True;
  btn_editar.Enabled     := False;
  btn_excluir.Enabled    := False;

end;

procedure Tfrm_funcionario.btn_novoClick(Sender: TObject);
begin
  limpar_campos;
  listar;
  habilitar_campos;
  dm.tb_func.Insert;
  txt_nome_func.SetFocus;
  cb_cargo.ItemIndex   := 0;
  btn_cancelar.Enabled := True;
  btn_salvar.Enabled   := True;
end;

procedure Tfrm_funcionario.btn_salvarClick(Sender: TObject);
var
  cpf: String;
begin

  if Length(txt_cpf_func.Text) < 14 then
    begin
      MessageDlg('Preencha corretamente o CPF!', mtInformation, mbOKCancel, 0);
      txt_cpf_func.SetFocus;
      exit;
    end;

  dm.query_func.Close;
  dm.query_func.SQL.Clear;
  dm.query_func.SQL.Add('SELECT * FROM funcionario WHERE cpf = ' + QuotedStr(Trim(txt_cpf_func.Text)));
  dm.query_func.Open;


  if not dm.query_func.IsEmpty then
    begin
      cpf := dm.query_func['cpf'];
      MessageDlg('O CPF ' + cpf + ' já está cadastrado!', mtError, mbOKCancel, 0);
      txt_cpf_func.Text := '';
      txt_cpf_func.SetFocus;
      exit;
    end;

  associar_campos;

  dm.tb_func.Post;

  MessageDlg('Funcionário cadastrado com sucesso!', mtInformation, mbOKCancel, 0);

  listar;
  txt_nome_func.Text    := '';
  desabilitar_campos;
  limpar_campos;
  btn_salvar.Enabled     := False;
  btn_novo.Enabled       := True;

end;

procedure Tfrm_funcionario.buscar_cpf;
begin
  dm.query_func.Close;
  dm.query_func.SQL.Clear;
  dm.query_func.SQL.Add('SELECT * FROM funcionario WHERE cpf = :cpf');
  dm.query_func.ParamByName('cpf').Value := txt_buscar_cpf.Text;
  dm.query_func.Open;
end;

procedure Tfrm_funcionario.buscar_nome;
begin
  dm.query_func.Close;
  dm.query_func.SQL.Clear;
  dm.query_func.SQL.Add('SELECT * FROM funcionario WHERE nome LIKE :nome');
  dm.query_func.ParamByName('nome').Value := txt_buscar_nome.Text + '%';
  dm.query_func.Open;
end;

procedure Tfrm_funcionario.carregar_combobox;
begin

  //Fechar a query.
  dm.query_cargo.Close;

  //Carregar a tabela antes de jogar no ComboBox
  dm.query_cargo.Open;

  //Se tiver cargos cadastrados.
  try
    if not dm.query_cargo.isEmpty then
      begin
        //Enquanto não chegar no fim da tabela.
        while not dm.query_cargo.Eof do
          begin
            //Combobox de cargo vai receber os cargos.
            cb_cargo.Items.Add(dm.query_cargo.FieldByName('cargo').AsString);
            dm.query_cargo.Next;
          end;
      end;
  except
    ShowMessage('Não existe cargos cadastrados!');
  end;
end;

procedure Tfrm_funcionario.cb_cargoExit(Sender: TObject);
begin
  if cb_cargo.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      cb_cargo.SetFocus;
    end;
end;

procedure Tfrm_funcionario.dbg_funcionarioCellClick(Column: TColumn);
begin
  habilitar_campos;
  btn_novo.Enabled := False;
  btn_editar.Enabled     := True;
  btn_excluir.Enabled    := True;
  btn_cancelar.Enabled   := True;

  dm.tb_func.Edit;

  if dm.query_func.FieldByName('nome').Value <> null then
    begin
      txt_nome_func.Text        := dm.query_func.FieldByName('nome').Value;
      txt_cpf_func.Text         := dm.query_func.FieldByName('cpf').Value;
      txt_nascimento_func.Text  := dm.query_func.FieldByName('data_nascimento').Value;
      txt_rua_func.Text         := dm.query_func.FieldByName('logradouro').Value;
      txt_numero_casa_func.Text := dm.query_func.FieldByName('numero_residencia').Value;
      txt_bairro_func.Text      := dm.query_func.FieldByName('bairro').Value;
      txt_cidade_func.Text      := dm.query_func.FieldByName('cidade').Value;
      txt_uf_func.Text          := dm.query_func.FieldByName('uf').Value;
      txt_cep_func.Text         := dm.query_func.FieldByName('cep').Value;
      txt_data_contrato.Text    := dm.query_func.FieldByName('data_contrato').Text;
      cb_cargo.Text             := dm.query_func.FieldByName('cargo').Value;
    end;

  id := dm.query_func.FieldByName('id_funcionario').Value;

  if dm.query_func.FieldByName('sobrenome').Value <> null then
    begin
      txt_sobrenome_func.Text   := dm.query_func.FieldByName('sobrenome').Value;
    end;

  if dm.query_func.FieldByName('complemento').Value <> null then
    begin
      txt_complemento_func.Text := dm.query_func.FieldByName('complemento').Value;
    end;

   if dm.query_func.FieldByName('email').Value <> null then
    begin
      txt_email_func.Text       := dm.query_func.FieldByName('email').Value;
    end;

   if dm.query_func.FieldByName('telefone').Value <> null then
    begin
      txt_telefone_func.Text    := dm.query_func.FieldByName('telefone').Value;
    end;

  cpf_antigo := dm.query_func.FieldByName('cpf').Value;

end;

procedure Tfrm_funcionario.dbg_funcionarioDblClick(Sender: TObject);
begin
  if chamada = 'rec' then
    begin
      id_func := dm.query_func.FieldByName('id_funcionario').Value;
      nome_func := dm.query_func.FieldByName('nome').Value;
      sobrenome_func := dm.query_func.FieldByName('sobrenome').Value;
      cargo_func := dm.query_func.FieldByName('cargo').Value;
      Close;
      chamada := '';
    end;

end;

procedure Tfrm_funcionario.desabilitar_campos;
begin
  txt_nome_func.Enabled          := False;
  txt_sobrenome_func.Enabled     := False;
  txt_cpf_func.Enabled           := False;
  txt_nascimento_func.Enabled    := False;
  txt_rua_func.Enabled           := False;
  txt_numero_casa_func.Enabled   := False;
  txt_complemento_func.Enabled   := False;
  txt_bairro_func.Enabled        := False;
  txt_cidade_func.Enabled        := False;
  txt_uf_func.Enabled            := False;
  txt_cep_func.Enabled           := False;
  txt_email_func.Enabled         := False;
  txt_telefone_func.Enabled      := False;
  txt_cpf_func.Enabled           := False;
  txt_data_contrato.Enabled      := False;
  cb_cargo.Enabled               := False;
end;

procedure Tfrm_funcionario.FormCreate(Sender: TObject);
begin
    //dm.tb_func.Active := True;
    //listar;
    //desabilitar_campos;
    //carregar_combobox;
end;

procedure Tfrm_funcionario.FormShow(Sender: TObject);
begin
    dm.tb_func.Active := True;
    listar;
    desabilitar_campos;
    carregar_combobox;
    cb_cargo.ItemIndex := 0;
    rb_nome.Checked := True;
end;

procedure Tfrm_funcionario.habilitar_campos;
begin
  txt_nome_func.Enabled          := True;
  txt_sobrenome_func.Enabled     := True;
  txt_cpf_func.Enabled           := True;
  txt_nascimento_func.Enabled    := True;
  txt_rua_func.Enabled           := True;
  txt_numero_casa_func.Enabled   := True;
  txt_complemento_func.Enabled   := True;
  txt_bairro_func.Enabled        := True;
  txt_cidade_func.Enabled        := True;
  txt_uf_func.Enabled            := True;
  txt_cep_func.Enabled           := True;
  txt_email_func.Enabled         := True;
  txt_telefone_func.Enabled      := True;
  txt_cpf_func.Enabled           := True;
  txt_data_contrato.Enabled      := True;
  cb_cargo.Enabled               := True;
end;

procedure Tfrm_funcionario.limpar_campos;
begin
  txt_nome_func.Text        := '';
  txt_sobrenome_func.Text   := '';
  txt_cpf_func.Text         := '';
  txt_nascimento_func.Text  := '';
  txt_rua_func.Text         := '';
  txt_numero_casa_func.Text := '';
  txt_complemento_func.Text := '';
  txt_bairro_func.Text      := '';
  txt_cidade_func.Text      := '';
  txt_uf_func.Text          := '';
  txt_cep_func.Text         := '';
  txt_email_func.Text       := '';
  txt_telefone_func.Text    := '';
  txt_cpf_func.Text         := '';
  txt_data_contrato.Text    := '';
  cb_cargo.Text             := '';
end;

procedure Tfrm_funcionario.listar;
begin
  dm.query_func.Close;
  dm.query_func.SQL.Clear;
  dm.query_func.SQL.ADD('SELECT * FROM funcionario order by nome ASC');
  dm.query_func.Open;
end;

procedure Tfrm_funcionario.rb_cpfClick(Sender: TObject);
begin
  listar;
  txt_buscar_cpf.Visible := True;
  txt_buscar_nome.Visible := False;
  txt_buscar_cpf.SetFocus;
end;

procedure Tfrm_funcionario.rb_nomeClick(Sender: TObject);
begin
  listar;
  txt_buscar_cpf.Visible := False;
  txt_buscar_nome.Visible := True;
  txt_buscar_nome.SetFocus;
end;

procedure Tfrm_funcionario.txt_bairro_funcExit(Sender: TObject);
begin
  if txt_bairro_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_bairro_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_buscar_cpfChange(Sender: TObject);
begin
  buscar_cpf;
end;

procedure Tfrm_funcionario.txt_buscar_nomeChange(Sender: TObject);
begin
  buscar_nome;
end;

procedure Tfrm_funcionario.txt_cep_funcExit(Sender: TObject);
begin
  if txt_cep_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_cep_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_cidade_funcExit(Sender: TObject);
begin
  if txt_cidade_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_cidade_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_cpf_funcExit(Sender: TObject);
begin
  if txt_cpf_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_cpf_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_data_contratoExit(Sender: TObject);
begin
  if txt_data_contrato.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_data_contrato.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_nascimento_funcExit(Sender: TObject);
begin
  if txt_nascimento_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_nascimento_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_nome_funcExit(Sender: TObject);
begin
  if (txt_nome_func.Text = '') then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_nome_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_numero_casa_funcExit(Sender: TObject);
begin
  if txt_numero_casa_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_numero_casa_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_rua_funcExit(Sender: TObject);
begin
  if txt_rua_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_rua_func.SetFocus;
      exit;
    end;
end;

procedure Tfrm_funcionario.txt_uf_funcExit(Sender: TObject);
begin
  if txt_uf_func.Text = '' then
    begin
      MessageDlg('Campo Obrigatório!', mtInformation, mbOKCancel, 0);
      txt_uf_func.SetFocus;
      exit;
    end;
end;

end.
