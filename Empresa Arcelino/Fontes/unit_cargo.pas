unit unit_cargo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SIMONEdit, Vcl.Mask,
  SIMONMaskEdit, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  Tfrm_cargo = class(TForm)
    pnl_superior: TPanel;
    Image1: TImage;
    Label14: TLabel;
    txt_nome_cargo: TSIMONEdit1;
    Label2: TLabel;
    dbg_cargo: TDBGrid;
    ImageList1: TImageList;
    btn_novo: TSpeedButton;
    Label15: TLabel;
    btn_salvar: TSpeedButton;
    Label16: TLabel;
    btn_editar: TSpeedButton;
    Label17: TLabel;
    btn_excluir: TSpeedButton;
    Label18: TLabel;
    btn_cancelar: TSpeedButton;
    Label1: TLabel;
    ImageList2: TImageList;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbg_cargoCellClick(Column: TColumn);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_excluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure associar_campos;
    procedure listar;
  public
    { Public declarations }
  end;

var
  frm_cargo: Tfrm_cargo;
  id: String;

implementation

{$R *.dfm}

uses unit_modulo;

procedure Tfrm_cargo.associar_campos;
begin
  (*Vai entrar na DM, na tabela cargo, pegar o campo cargo e atribuir o que
    vir do txt_nome_cargo a ele.*)
  dm.tb_cargo.FieldByName('cargo').Value := Trim(txt_nome_cargo.Text);
end;

procedure Tfrm_cargo.btn_cancelarClick(Sender: TObject);
begin
  dm.query_cargo.Close;
  dm.query_cargo.SQL.Clear;
  listar;
  btn_novo.Enabled       := True;
  btn_salvar.Enabled     := False;
  btn_editar.Enabled     := False;
  btn_excluir.Enabled    := False;
  btn_cancelar.Enabled   := False;
  txt_nome_cargo.Text    := '';
  txt_nome_cargo.Enabled := False;
end;

procedure Tfrm_cargo.btn_editarClick(Sender: TObject);
var
  cargo: String;
begin

  //Verificando se o campo está vazio.
  if Trim(txt_nome_cargo.Text) = '' then
    begin
      MessageDlg('Preencha o nome do cargo!', mtInformation, mbOKCancel, 0);
      txt_nome_cargo.SetFocus;
      exit;
    end;

  //Fechando a query antes de chamar.
  dm.query_cargo.Close;

  //Está limpando o campo SQL, caso tenha alguma outra requisição rodando
  dm.query_cargo.SQL.Clear;

  //Está selecionando a partir da tabela cargo, onde o cargo for igual ai que foi passado no txt.
  dm.query_cargo.SQL.Add('SELECT * FROM cargo WHERE cargo = ' + QuotedStr(Trim(txt_nome_cargo.Text)));

  dm.query_cargo.Open;

  //Verificação para cargo repetido
  if not dm.query_cargo.IsEmpty then
    begin
      //Está atribuindo a variável cargo o resultado da pesquisa no campo cargo.
      cargo :=  dm.query_cargo['cargo'];
      MessageDlg('O cargo '+ cargo + ' já está cadastrado!', mtError, mbOKCancel, 0);
      txt_nome_cargo.Text := '';
      txt_nome_cargo.SetFocus;
      exit;
    end;

  associar_campos;

  dm.query_cargo.Close;
  dm.query_cargo.SQL.Clear;
  dm.query_cargo.SQL.Add('UPDATE cargo SET cargo = :cargo WHERE id = :id');
  dm.query_cargo.ParamByName('cargo').Value := txt_nome_cargo.Text;
  dm.query_cargo.ParamByName('id').Value := id;
  dm.query_cargo.ExecSQL;

  listar;

  MessageDlg('Editado com sucesso!', mtInformation, mbOKCancel, 0);
  btn_editar.Enabled  := False;
  btn_excluir.Enabled := False;
  txt_nome_cargo.Text := '';

end;

procedure Tfrm_cargo.btn_excluirClick(Sender: TObject);
begin

  if MessageDlg('Deseja excluir o registro?', TMsgDlgType.mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      dm.tb_cargo.Delete;
      MessageDlg('Cargo deletado com sucesso!', mtInformation, mbOKCancel, 0);
    end;

  listar;

  txt_nome_cargo.Enabled := False;
  btn_cancelar.Enabled   := True;
  btn_editar.Enabled     := False;
  btn_excluir.Enabled    := False;
  txt_nome_cargo.Text := '';

end;

procedure Tfrm_cargo.btn_novoClick(Sender: TObject);
begin
  btn_novo.Enabled       := False;
  btn_cancelar.Enabled   := True;
  btn_salvar.Enabled     := True;
  txt_nome_cargo.Enabled := True;
  txt_nome_cargo.Text    := '';
  txt_nome_cargo.SetFocus;

  dm.tb_cargo.Insert;

end;

procedure Tfrm_cargo.btn_salvarClick(Sender: TObject);
var
  cargo: String;
begin

  //Verificando se o campo está vazio.
  if Trim(txt_nome_cargo.Text) = '' then
    begin
      MessageDlg('Preencha o nome do cargo!', mtInformation, mbOKCancel, 0);
      txt_nome_cargo.SetFocus;
      exit;
    end;

  //VERIFICAR SE O CARGO JÁ ESTÁ CADASTRADO.

  //Fechando a query antes de chamar.
  dm.query_cargo.Close;

  //Está limpando o campo SQL, caso tenha alguma outra requisição rodando
  dm.query_cargo.SQL.Clear;

  //Está selecionando a partir da tabela cargo, onde o cargo for igual ai que foi passado no txt.
  dm.query_cargo.SQL.Add('SELECT * FROM cargo WHERE cargo = ' + QuotedStr(Trim(txt_nome_cargo.Text)));

  dm.query_cargo.Open;

  //Verificação para cargo repetido
  if not dm.query_cargo.IsEmpty then
    begin
      //Está atribuindo a variável cargo o resultado da pesquisa no campo cargo.
      cargo :=  dm.query_cargo['cargo'];
      MessageDlg('O cargo '+ cargo + ' já está cadastrado!', mtError, mbOKCancel, 0);
      txt_nome_cargo.Text := '';
      txt_nome_cargo.SetFocus;
      exit;
    end;

  associar_campos;

  //Vai entrar na DM, na tabela cargo e dar o comando de Salvar
  dm.tb_cargo.Post;

  MessageDlg('Salvo com sucesso!', mtInformation, mbOKCancel, 0);

  txt_nome_cargo.Text    := '';
  txt_nome_cargo.Enabled := False;
  btn_salvar.Enabled     := False;
  btn_novo.Enabled       := True;
  listar;
end;

procedure Tfrm_cargo.dbg_cargoCellClick(Column: TColumn);
begin
  txt_nome_cargo.Enabled := True;
  btn_editar.Enabled     := True;
  btn_excluir.Enabled    := True;
  btn_cancelar.Enabled   := True;

  dm.tb_cargo.Edit;

  if dm.query_cargo.FieldByName('cargo').Value <> null then
    begin
      //Está recuperando o valor do campo cargo e atribuindo a caixa de nome do cargo
      txt_nome_cargo.Text := dm.query_cargo.FieldByName('cargo').Value;
      id := dm.query_cargo.FieldByName('id').Value;
    end;


end;

procedure Tfrm_cargo.FormCreate(Sender: TObject);
begin
  dm.tb_cargo.Active   := True;
  listar;
  btn_cancelar.Enabled := False;
end;

procedure Tfrm_cargo.listar;
begin
  dm.query_cargo.Close;
  dm.query_cargo.SQL.Clear;
  dm.query_cargo.SQL.Add('SELECT * FROM cargo ORDER BY cargo ASC');
  dm.query_cargo.Open;
end;

end.
