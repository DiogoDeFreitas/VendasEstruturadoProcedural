unit ufrmFiltroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmFiltroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, Data.DB, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  TfrmFiltroUsuarios = class(TfrmFiltroPai)
    DBGrid1: TDBGrid;
    edtNovo: TButton;
    edtVisualizar: TButton;
    procedure btnFiltroClick(Sender: TObject);
    procedure edtVisualizarClick(Sender: TObject);
    procedure edtNovoClick(Sender: TObject);
  private
    procedure Filtrar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltroUsuarios: TfrmFiltroUsuarios;

implementation

{$R *.dfm}

uses ufrmCadastroUsuarios;

procedure TfrmFiltroUsuarios.btnFiltroClick(Sender: TObject);
begin
  inherited;
  Filtrar;
end;

procedure TfrmFiltroUsuarios.edtNovoClick(Sender: TObject);
begin
  inherited;
  frmCadastroUsuarios := TfrmCadastroUsuarios.Create(self);
  try
    frmCadastroUsuarios.fdQryCadastro.Insert;
    frmCadastroUsuarios.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuarios);
  end;
end;

procedure TfrmFiltroUsuarios.edtVisualizarClick(Sender: TObject);
begin
  inherited;
  ValidaQueryVazia;
  frmCadastroUsuarios := TfrmCadastroUsuarios.Create(self);
  try
    frmCadastroUsuarios.fdQryCadastro.Locate('ID_USUARIO', fdQryFiltro.FieldByName('ID_USUARIO').AsInteger, []);
    frmCadastroUsuarios.ShowModal;
  finally
    FreeAndNil(frmCadastroUsuarios);
  end;
end;

procedure TfrmFiltroUsuarios.Filtrar;
begin
  fdQryFiltro.Close;
  fdQryFiltro.SQL.Clear;
  fdQryFiltro.SQL.Add('SELECT ID_USUARIO, ');
  fdQryFiltro.SQL.Add('NOME, ');
  fdQryFiltro.SQL.Add('LOGIN ');
  fdQryFiltro.SQL.Add('FROM USUARIO ');
  fdQryFiltro.SQL.Add('WHERE 1 = 1');
  fdQryFiltro.SQL.Add('AND DT_EXCLUIDO IS NULL');

  if Trim(edtFiltro.Text) <> '' then
    fdQryFiltro.SQL.Add('AND UPPER(NOME) LIKE ' + QuotedStr(UpperCase('%' + (Trim(edtFiltro.Text) + '%'))));

  //fdQryFiltro.SQL.SaveToFile('C:\temp\sql.txt');
  fdQryFiltro.Open();
  fdQryFiltro.FetchAll;
end;

end.
