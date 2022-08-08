unit uLookUp;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  Data.DB, FireDAC.Comp.DataSet, udmConexao;

type
  TdmLookUp = class(TDataModule)
    fdQryEstados: TFDQuery;
    dsEstados: TDataSource;
    fdTransaction: TFDTransaction;
    fdQryCidades: TFDQuery;
    dsCidades: TDataSource;
    fdQryFornecedor: TFDQuery;
    dsFornecedor: TDataSource;
    fdQryCliente: TFDQuery;
    dsCliente: TDataSource;
    fdQryProduto: TFDQuery;
    dsProduto: TDataSource;
    fdQryProdutoID_PRODUTO_PRO: TIntegerField;
    fdQryProdutoDESCRICAO_PRO: TWideStringField;
    fdQryProdutoV_UNITARIO_PRO: TSingleField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmLookUp: TdmLookUp;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
