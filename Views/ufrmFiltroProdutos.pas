unit ufrmFiltroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmFiltroProdutos = class(TfrmFiltroPai)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    edtDescricao: TEdit;
    fdQryFiltroID_PRODUTO_PRO: TIntegerField;
    fdQryFiltroDESCRICAO_PRO: TWideStringField;
    fdQryFiltroQTDE_PRO: TSingleField;
    fdQryFiltroCUSTO_PRO: TSingleField;
    fdQryFiltroV_UNITARIO_PRO: TSingleField;
    fdQryFiltroUNIDADE_PRO: TWideStringField;
    fdQryFiltroPESO_LIQUIDO_PRO: TSingleField;
    fdQryFiltroPESO_BRUTO_PRO: TSingleField;
    fdQryFiltroFABRICANTE_PRO: TWideStringField;
    fdQryFiltroMARCA_MODELO_PRO: TWideStringField;
    fdQryFiltroRAZAO_SOCIAL_FOR: TWideStringField;
    edtNovo: TButton;
    edtVisualizar: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure edtVisualizarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Filtrar;
  public
    { Public declarations }
  end;

var
  frmFiltroProdutos: TfrmFiltroProdutos;

implementation

{$R *.dfm}

uses ufrmCadastroProdutos, ufrmCadastroFornecedor;

{ TfrmFiltroProdutos }

procedure TfrmFiltroProdutos.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TfrmFiltroProdutos.edtVisualizarClick(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;

  frmCadastroProdutos := TfrmCadastroProdutos.Create(Self);
  try
    frmCadastroProdutos.fdQryCadastro.Locate('ID_PRODUTO_PRO', fdQryFiltro.FieldByName('ID_PRODUTO_PRO').AsInteger, []);
    frmCadastroProdutos.ShowModal;
  finally
    FreeAndNil(frmCadastroFornecedor);
  end;
end;

procedure TfrmFiltroProdutos.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT P.ID_PRODUTO_PRO,');
  fdQryFiltro.SQL.Add('    P.DESCRICAO_PRO,');
  fdQryFiltro.SQL.Add('    P.QTDE_PRO,');
  fdQryFiltro.SQL.Add('    P.CUSTO_PRO,');
  fdQryFiltro.SQL.Add('    P.V_UNITARIO_PRO,');
  fdQryFiltro.SQL.Add('    P.UNIDADE_PRO,');
  fdQryFiltro.SQL.Add('    P.PESO_LIQUIDO_PRO,');
  fdQryFiltro.SQL.Add('    P.PESO_BRUTO_PRO,');
  fdQryFiltro.SQL.Add('    P.FABRICANTE_PRO,');
  fdQryFiltro.SQL.Add('    P.MARCA_MODELO_PRO,');
  fdQryFiltro.SQL.Add('    F.RAZAO_SOCIAL_FOR');
  fdQryFiltro.SQL.Add(' FROM PRODUTO P');
  fdQryFiltro.SQL.Add(' INNER JOIN FORNECEDOR F ON F.ID_FORNECEDOR_FOR = P.ID_FORNECEDOR_FOR');
  fdQryFiltro.SQL.Add(' WHERE 1 = 1');
  fdQryFiltro.SQL.Add(' AND DT_EXCLUIDO IS NULL');

  if StrToIntDef(edtFiltro.Text, 0 ) > 0 then
     fdQryFiltro.SQL.Add( 'AND P.ID_PRODUTO_PRO = ' + edtFiltro.Text);

  if Trim(edtFiltro.Text) <> '' then
     fdQryFiltro.SQL.Add( 'AND UPPER(P.DESCRICAO) LIKE ' + QuotedStr('%' + UpperCase(Trim(edtDescricao.Text) + '%')));

  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
