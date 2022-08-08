unit ufrmFiltroFornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmFiltroFornecedor = class(TfrmFiltroPai)
    fdQryFiltroID_FORNECEDOR_FOR: TIntegerField;
    fdQryFiltroRAZAO_SOCIAL_FOR: TWideStringField;
    fdQryFiltroFANTASIA_FOR: TWideStringField;
    fdQryFiltroCNPJ_FOR: TWideStringField;
    fdQryFiltroENDERECO_FOR: TWideStringField;
    fdQryFiltroBAIRRO_FOR: TWideStringField;
    fdQryFiltroEMAIL_FOR: TWideStringField;
    fdQryFiltroID_CIDADE_CID: TIntegerField;
    fdQryFiltroID_ESTADO_EST: TIntegerField;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtCnpj: TEdit;
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
  frmFiltroFornecedor: TfrmFiltroFornecedor;

implementation

{$R *.dfm}

uses ufrmCadastroFornecedor;

{ TfrmFiltroFornecedor }

procedure TfrmFiltroFornecedor.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TfrmFiltroFornecedor.edtNovoClick(Sender: TObject);
begin
  inherited;
  frmCadastroFornecedor := TfrmCadastroFornecedor.Create(Self);
  try
    frmCadastroFornecedor.fdQryCadastro.Insert;
    frmCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(frmCadastroFornecedor);
  end;
end;

procedure TfrmFiltroFornecedor.edtVisualizarClick(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;

  frmCadastroFornecedor := TfrmCadastroFornecedor.Create(Self);
  try
    frmCadastroFornecedor.fdQryCadastro.Locate('ID_FORNECEDOR_FOR', fdQryFiltro.FieldByName('ID_FORNECEDOR_FOR').AsInteger, []);
    frmCadastroFornecedor.ShowModal;
  finally
    FreeAndNil(frmCadastroFornecedor);
  end;
end;

procedure TfrmFiltroFornecedor.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT * FROM FORNECEDOR ');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1 ');
  fdQryFiltro.SQL.Add(' AND DT_EXCLUIDO IS NULL');

 if edtFiltro.Text <> '' then//Campo Raz�o Social
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(RAZAO_SOCIAL_FOR)) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtFiltro.Text)) + '%'));

  if edtCnpj.Text <> '' then
    fdQryFiltro.SQL.Add(' AND UPPER(TRIM(REPLACE(REPLACE(REPLACE(CNPJ_FOR, ''.'', ''''), ''-'', ''''), ''/'', ''''))) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtCnpj.Text)) + '%'));

  //fdQryFiltro.SQL.SaveToFile('C:\temp\teste.txt');
  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
