unit ufrmCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, MoneyEdit, dbmnyed, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxSpinEdit, cxDBEdit, AdvEdit, AdvMoneyEdit,
  DBAdvMoneyEdit;

type
  TfrmCadastroProdutos = class(TfrmCadastroPai)
    fdQryCadastroID_PRODUTO_PRO: TFDAutoIncField;
    fdQryCadastroDESCRICAO_PRO: TWideStringField;
    fdQryCadastroQTDE_PRO: TSingleField;
    fdQryCadastroCUSTO_PRO: TSingleField;
    fdQryCadastroV_UNITARIO_PRO: TSingleField;
    fdQryCadastroUNIDADE_PRO: TWideStringField;
    fdQryCadastroPESO_LIQUIDO_PRO: TSingleField;
    fdQryCadastroPESO_BRUTO_PRO: TSingleField;
    fdQryCadastroFABRICANTE_PRO: TWideStringField;
    fdQryCadastroMARCA_MODELO_PRO: TWideStringField;
    fdQryCadastroID_FORNECEDOR_FOR: TIntegerField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBMoneyEdit1: TDBAdvMoneyEdit;
    DBMoneyEdit2: TDBAdvMoneyEdit;
    DBMoneyEdit3: TDBAdvMoneyEdit;
    DBMoneyEdit4: TDBAdvMoneyEdit;
    DBMoneyEdit5: TDBAdvMoneyEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProdutos: TfrmCadastroProdutos;

implementation

{$R *.dfm}

uses uLookUp, uBiblioteca;

procedure TfrmCadastroProdutos.FormCreate(Sender: TObject);
begin
  inherited;
  AtualizaFDQuery(dmLookUp.fdQryFornecedor, '');
end;

end.
