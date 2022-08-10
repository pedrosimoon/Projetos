unit unit_menu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  System.ImageList, Vcl.ImgList, unit_funcionario, unit_users, unit_cargo,
  unit_cliente, Data.DB, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    Cadastros2: TMenuItem;
    Fornecedores1: TMenuItem;
    Funcionrios1: TMenuItem;
    Cargos1: TMenuItem;
    Cargos3: TMenuItem;
    ImageList1: TImageList;
    Manuteno1: TMenuItem;
    Estoque1: TMenuItem;
    Movimentaes1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    Funcionrio1: TMenuItem;
    Usurios1: TMenuItem;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure Sair1Click(Sender: TObject);
    procedure Funcionrio1Click(Sender: TObject);
    procedure Usurios1Click(Sender: TObject);
    procedure Cargos3Click(Sender: TObject);
    procedure Cadastros2Click(Sender: TObject);

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

procedure Tfrm_menu.Cadastros2Click(Sender: TObject);
begin
  frm_cliente := Tfrm_cliente.Create(self);
  frm_cliente.ShowModal;
end;

procedure Tfrm_menu.Cargos3Click(Sender: TObject);
begin
  frm_cargo := Tfrm_cargo.Create(self);
  frm_cargo.ShowModal;
end;

procedure Tfrm_menu.Funcionrio1Click(Sender: TObject);
begin
  frm_funcionario := Tfrm_funcionario.Create(self);
  frm_funcionario.ShowModal;
end;

procedure Tfrm_menu.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tfrm_menu.Usurios1Click(Sender: TObject);
begin
  frm_usuario := Tfrm_usuario.Create(self);
  frm_usuario.ShowModal;
end;

end.
