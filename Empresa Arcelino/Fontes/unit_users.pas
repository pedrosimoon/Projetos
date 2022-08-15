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
    Panel1: TPanel;
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
  private
    { Private declarations }
    procedure associar_campos;
    procedure desabiltar_campos;
    procedure habilitar_campos;
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
  associar_campos;
end;

procedure Tfrm_usuario.FormShow(Sender: TObject);
begin
  dm.tb_usuario.Active := True;
  desabiltar_campos;
end;

procedure Tfrm_usuario.habilitar_campos;
begin
  btn_busca_func.Enabled := True;
  txt_usuario.Enabled    := True;
  txt_senha.Enabled      := True;
end;

procedure Tfrm_usuario.btn_busca_funcClick(Sender: TObject);
begin
  chamada         := 'rec';
  frm_funcionario := Tfrm_funcionario.Create(self);
  frm_funcionario.ShowModal;
end;

procedure Tfrm_usuario.btn_novoClick(Sender: TObject);
begin
  habilitar_campos;
  dm.tb_usuario.Insert;
end;

end.
