unit unit_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.StdCtrls, SIMONEdit, unit_menu;

type
  Tfrm_login = class(TForm)
    pnl_fundo: TPanel;
    img_fundo: TImage;
    pnl_login: TPanel;
    Image1: TImage;
    pnl_botao: TPanel;
    pnl_user: TPanel;
    pnl_senha: TPanel;
    btn_login: TSpeedButton;
    img_user: TImage;
    img_password: TImage;
    txt_usuario: TSIMONEdit1;
    txt_senha: TSIMONEdit1;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure btn_loginClick(Sender: TObject);
  private
    { Private declarations }
    procedure centralizar_painel;
    procedure login;
  public
    { Public declarations }
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

procedure Tfrm_login.centralizar_painel;
begin
  //Calculo para centralizar painel de login
  pnl_login.Top := Round((self.Height - pnl_login.Height) / 2);
  pnl_login.Left := Round((self.Width - pnl_login.Width) / 2);
end;

procedure Tfrm_login.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  centralizar_painel;
end;

procedure Tfrm_login.login;
begin
//Código para login

  //Criando o FORM de MENU
  frm_menu := TFrm_menu.Create(self);
  frm_menu.ShowModal;
end;

procedure Tfrm_login.btn_loginClick(Sender: TObject);
begin
  //Verificação de Usuário
  if Trim(txt_usuario.Text) = '' then
    begin
      MessageDlg('Preencha o campo de Usuário!', mtInformation, mbOKCancel, 0);
      txt_usuario.SetFocus;
      exit;
    end;
  //Verificação de Senha
  if Trim(txt_senha.Text) = '' then
    begin
      MessageDlg('Preencha o campo de Senha!', mtInformation, mbOkCancel, 0);
      txt_senha.SetFocus;
      exit;
    end;

    login;
end;

end.
