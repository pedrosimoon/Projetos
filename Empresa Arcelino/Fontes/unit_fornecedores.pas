unit unit_fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, System.ImageList, Vcl.ImgList,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, SIMONMaskEditBD, Vcl.Buttons, SIMONEdit,
  Vcl.Mask, SIMONMaskEdit, Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  Tfrm_forn = class(TForm)
    pnl_superior: TPanel;
    Label1: TLabel;
    Image1: TImage;
    Label14: TLabel;
    rb_cpf: TRadioButton;
    rb_nome: TRadioButton;
    txt_buscar_cnpj: TSIMONMaskEdit;
    txt_buscar_nome: TSIMONEdit1;
    pnl_cadastro: TPanel;
    btn_novo: TSpeedButton;
    Label15: TLabel;
    btn_salvar: TSpeedButton;
    Label16: TLabel;
    Label17: TLabel;
    btn_editar: TSpeedButton;
    btn_excluir: TSpeedButton;
    Label18: TLabel;
    btn_cancelar: TSpeedButton;
    Label22: TLabel;
    gp_inf_pessoais_func: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    txt_nome: TSIMONEdit1;
    txt_cnpj: TSIMONMaskEditBD;
    gp_residencia_func: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label21: TLabel;
    txt_rua: TSIMONEdit1;
    txt_numero: TSIMONEdit1;
    txt_complemento: TSIMONEdit1;
    txt_bairro: TSIMONEdit1;
    txt_cidade: TSIMONEdit1;
    txt_uf: TSIMONEdit1;
    txt_cep: TSIMONMaskEditBD;
    gp_contato_func: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    txt_email: TSIMONEdit1;
    dbg_funcionario: TDBGrid;
    ImageList1: TImageList;
    txt_data_cad: TSIMONMaskEditBD;
    Label20: TLabel;
    txt_celular: TSIMONMaskEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_forn: Tfrm_forn;

implementation

{$R *.dfm}

end.
