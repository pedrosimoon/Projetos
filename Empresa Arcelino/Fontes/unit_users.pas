unit unit_users;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SIMONEdit, Vcl.Mask,
  SIMONMaskEdit, Vcl.Imaging.pngimage, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, System.ImageList, Vcl.ImgList, Vcl.Buttons, unit_funcionario;

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
    SpeedButton1: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_usuario: Tfrm_usuario;

implementation

{$R *.dfm}

procedure Tfrm_usuario.SpeedButton1Click(Sender: TObject);
begin
  frm_funcionario := Tfrm_funcionario.Create(self);
  frm_funcionario.ShowModal;
end;

end.
