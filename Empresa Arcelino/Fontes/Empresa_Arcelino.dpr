program Empresa_Arcelino;

uses
  Vcl.Forms,
  unit_login in 'unit_login.pas' {frm_login},
  unit_menu in 'unit_menu.pas' {frm_menu},
  unit_funcionario in 'Cadastros\unit_funcionario.pas' {frm_funcionario},
  unit_users in 'unit_users.pas' {frm_usuario},
  unit_cargo in 'unit_cargo.pas' {frm_cargo},
  unit_modulo in 'unit_modulo.pas' {dm: TDataModule},
  unit_cliente in 'unit_cliente.pas' {frm_cliente},
  unit_fornecedores in 'unit_fornecedores.pas' {frm_forn};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_login, frm_login);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(Tfrm_forn, frm_forn);
  Application.Run;
end.
