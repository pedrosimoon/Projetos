unit unit_cliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SIMONEdit, Vcl.Mask,
  SIMONMaskEdit, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, System.ImageList, Vcl.ImgList;

type
  Tfrm_cliente = class(TForm)
    pnl_superior: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label14: TLabel;
    rb_cpf: TRadioButton;
    rb_nome: TRadioButton;
    txt_buscar_cpf: TSIMONMaskEdit;
    txt_buscar_nome: TSIMONEdit1;
    pnl_informacoes: TPanel;
    gp_inf_pessoais: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    txt_nome_cliente: TSIMONEdit1;
    txt_sobrenome_cliente: TSIMONEdit1;
    txt_cpf_cliente: TSIMONMaskEdit;
    txt_nascimento_cliente: TSIMONMaskEdit;
    gp_residencia: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    txt_rua_cliente: TSIMONEdit1;
    txt_numero_casa_cliente: TSIMONEdit1;
    txt_complemento_cliente: TSIMONEdit1;
    txt_bairro_cliente: TSIMONEdit1;
    txt_cidade_cliente: TSIMONEdit1;
    txt_cep_cliente: TSIMONMaskEdit;
    gp_contato: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    txt_email_cliente: TSIMONEdit1;
    txt_telefone_cliente: TSIMONMaskEdit;
    dbg_cliente: TDBGrid;
    ImageList1: TImageList;
    btn_novo: TSpeedButton;
    btn_salvar: TSpeedButton;
    btn_editar: TSpeedButton;
    btn_excluir: TSpeedButton;
    Label2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

end.
