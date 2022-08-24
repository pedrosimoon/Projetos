unit unit_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, unit_funcionario, unit_users, unit_cargo,
  unit_cliente, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, unit_modulo;

type
  Tfrm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    cliente1: TMenuItem;
    veiculo1: TMenuItem;
    fornecedor1: TMenuItem;
    produto1: TMenuItem;
    cargo1: TMenuItem;
    ImageList1: TImageList;
    Manuteno1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    funcionario1: TMenuItem;
    Usuario1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    pnl_info_logado: TPanel;
    Label2: TLabel;
    lbl_cargo: TLabel;
    lbl_usuario: TLabel;
    Label1: TLabel;
    procedure Sair1Click(Sender: TObject);
    procedure funcionario1Click(Sender: TObject);
    procedure Usuario1Click(Sender: TObject);
    procedure cargo1Click(Sender: TObject);
    procedure cliente1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_menu: Tfrm_menu;

implementation

{$R *.dfm}
uses
  unit_login;

procedure Tfrm_menu.cliente1Click(Sender: TObject);
begin
  frm_cliente := Tfrm_cliente.Create(self);
  frm_cliente.ShowModal;
end;

procedure Tfrm_menu.cargo1Click(Sender: TObject);
begin
  frm_cargo := Tfrm_cargo.Create(self);
  frm_cargo.ShowModal;
end;

procedure Tfrm_menu.FormShow(Sender: TObject);
begin
  lbl_usuario.Caption := nome_usuario;
  lbl_cargo.Caption   := cargo_usuario;

  if (cargo_usuario = 'Admin') or (cargo_usuario = 'Diretor') or (cargo_usuario = 'Gerente') then
    begin
      Usuario1.Enabled     := True;
      cargo1.Enabled       := True;
      funcionario1.Enabled := True;
      cliente1.Enabled     := True;
      veiculo1.Enabled     := True;
      fornecedor1.Enabled  := True;
      produto1.Enabled     := True;
    end;
end;

procedure Tfrm_menu.funcionario1Click(Sender: TObject);
begin
  frm_funcionario := Tfrm_funcionario.Create(self);
  frm_funcionario.ShowModal;
end;

procedure Tfrm_menu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_menu.Usuario1Click(Sender: TObject);
begin
  frm_usuario := Tfrm_usuario.Create(self);
  frm_usuario.ShowModal;
end;

end.
