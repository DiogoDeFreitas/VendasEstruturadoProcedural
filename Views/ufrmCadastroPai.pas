unit ufrmCadastroPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, udmConexao;

type
  TfrmCadastroPai = class(TForm)
    pnlCabecalho: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    fdQryCadastro: TFDQuery;
    fdUpdCadastro: TFDUpdateSQL;
    fdTransaction: TFDTransaction;
    dsCadastro: TDataSource;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    procedure Gravar; Virtual; Abstract;
    procedure Alterar; Virtual; Abstract;
  end;

var
  frmCadastroPai: TfrmCadastroPai;

implementation

{$R *.dfm}


procedure TfrmCadastroPai.btnCancelarClick(Sender: TObject);
begin
  if fdQryCadastro.State in [dsInsert, dsEdit] then
  begin
    fdTransaction.StartTransaction;
    fdQryCadastro.Cancel;
    fdTransaction.RollbackRetaining;
  end;

end;

procedure TfrmCadastroPai.btnExcluirClick(Sender: TObject);
begin
  if fdQryCadastro.IsEmpty then
    raise Exception.Create('Não existe registro na tabela');

  if MessageDlg('Deseja excluir o registro?', mtConfirmation, [mbYes, mbNo ], 0) = mrYes then
  begin
    fdQryCadastro.Edit;
    fdQryCadastro.FieldByName('DT_EXCLUIDO').AsDateTime := Date;
    fdTransaction.StartTransaction;
    fdQryCadastro.Post;
    fdTransaction.CommitRetaining;

    fdQryCadastro.Refresh;
  end;

end;

procedure TfrmCadastroPai.btnGravarClick(Sender: TObject);
begin
 { if fdQryCadastro.State in [dsInsert] then
    Gravar
  else if fdQryCadastro.State in [dsEdit] then
    Alterar;    }
  if fdQryCadastro.State in [dsInsert, dsEdit] then
  begin
    fdTransaction.StartTransaction;
    fdQryCadastro.Post;
    fdTransaction.CommitRetaining;
    MessageDlg('Salvo',mtInformation,[mbOK],0);
  end;
end;

procedure TfrmCadastroPai.btnNovoClick(Sender: TObject);
begin
  if not(fdQryCadastro.State in [dsInsert, dsEdit]) then
    fdQryCadastro.Insert;
end;

procedure TfrmCadastroPai.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmCadastroPai.FormCreate(Sender: TObject);
begin
  fdQryCadastro.Open();
end;

end.
