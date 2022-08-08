unit ufrmFiltroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmFiltroClientes = class(TfrmFiltroPai)
    DBGrid1: TDBGrid;
    edtFantasia: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    edtCnpjCpf: TEdit;
    edtCodigo: TEdit;
    Label4: TLabel;
    edtNovo: TButton;
    edtVisualizar: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure edtNovoClick(Sender: TObject);
    procedure edtVisualizarClick(Sender: TObject);
  private
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  frmFiltroClientes: TfrmFiltroClientes;

implementation

{$R *.dfm}

uses ufrmCadastroCliente;

{ TfrmFiltroClientes }

procedure TfrmFiltroClientes.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
  ValidaQueryVazia;
end;

procedure TfrmFiltroClientes.edtVisualizarClick(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;

  frmCadastroCliente := TfrmCadastroCliente.Create(Self);
  try
    frmCadastroCliente.fdQryCadastro.Locate('ID_CLIENTE_CLI', fdQryFiltro.FieldByName('ID_CLIENTE_CLI').AsInteger, []);
    frmCadastroCliente.ShowModal;
  finally
    FreeAndNil(frmCadastroCliente);
  end;
end;

procedure TfrmFiltroClientes.edtNovoClick(Sender: TObject);
begin
  inherited;
  frmCadastroCliente := TfrmCadastroCliente.Create(Self);
  try
    frmCadastroCliente.fdQryCadastro.Insert;
    frmCadastroCliente.ShowModal;
  finally
    FreeAndNil(frmCadastroCliente);
  end;
end;

procedure TfrmFiltroClientes.Filtrar;
var
  sTeste: String;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM CLIENTE');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1');
  fdQryFiltro.SQL.Add(' AND DT_EXCLUIDO IS NULL');

  if edtFiltro.Text <> '' then
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(RAZAO_SOCIAL_CLI)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text))+ '%'));

  if edtFantasia.Text <> '' then
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(FANTASIA_CLI)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFantasia.Text)) + '%'));

  if edtCnpjCpf.Text <> '' then
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(REPLACE(REPLACE(REPLACE(CPF_CNPJ_CLI, ''.'', ''''), ''-'', ''''), ''/'', ''''))) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtCnpjCpf.Text)) + '%'));

  if StrToIntDef(edtCodigo.Text, 0) > 0 then
    fdQryFiltro.SQL.Add(' AND ID_CLIENTE_CLI = ' + edtCodigo.Text);

 // sTeste := fdQryFiltro.SQL.Text;
  fdQryFiltro.Open;
  fdQryFiltro.FetchAll;
end;

end.
