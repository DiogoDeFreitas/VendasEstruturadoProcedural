unit ufrmCadastroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroFornecedor = class(TfrmCadastroPai)
    fdQryCadastroID_FORNECEDOR_FOR: TIntegerField;
    fdQryCadastroRAZAO_SOCIAL_FOR: TWideStringField;
    fdQryCadastroFANTASIA_FOR: TWideStringField;
    fdQryCadastroCNPJ_FOR: TWideStringField;
    fdQryCadastroENDERECO_FOR: TWideStringField;
    fdQryCadastroBAIRRO_FOR: TWideStringField;
    fdQryCadastroEMAIL_FOR: TWideStringField;
    fdQryCadastroID_CIDADE_CID: TIntegerField;
    fdQryCadastroID_ESTADO_EST: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    edtRazaoSocial: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFornecedor: TfrmCadastroFornecedor;

implementation

{$R *.dfm}

uses uLookUp;

procedure TfrmCadastroFornecedor.FormShow(Sender: TObject);
begin
  inherited;
  dmLookUp.fdQryEstados.Open();
  dmLookUp.fdQryEstados.FetchAll;

  dmLookUp.fdQryCidades.Open();
  dmLookUp.fdQryEstados.FetchAll;

  edtRazaoSocial.SetFocus;
end;

end.
