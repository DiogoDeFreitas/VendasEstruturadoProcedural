unit ufrmCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroPai, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.Client, FireDAC.Comp.DataSet, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroUsuarios = class(TfrmCadastroPai)
    fdQryCadastroID_USUARIO: TFDAutoIncField;
    fdQryCadastroNOME: TWideStringField;
    fdQryCadastroLOGIN: TWideStringField;
    fdQryCadastroSENHA: TWideStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    edtNome: TDBEdit;
    edtLogin: TDBEdit;
    edtSenha: TDBEdit;
    fdQryCadastroDT_EXCLUIDO: TDateField;
    procedure fdQryCadastroBeforePost(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
  private
    procedure ValidaCampos;
  public
    { Public declarations }
  end;

var
  frmCadastroUsuarios: TfrmCadastroUsuarios;

implementation

{$R *.dfm}

uses uCrpt;

procedure TfrmCadastroUsuarios.btnGravarClick(Sender: TObject);
begin
  ValidaCampos;
  inherited;
end;

procedure TfrmCadastroUsuarios.fdQryCadastroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if fdQryCadastro.State in [dsInsert] then
    fdQryCadastroSENHA.AsAnsiString := Criptografa('C', fdQryCadastroSENHA.AsAnsiString)
  else
    if fdQryCadastro.State in [dsEdit] then
    begin
      if fdQryCadastroSENHA.AsAnsiString <> fdQryCadastroSENHA.OldValue then
        fdQryCadastroSENHA.AsAnsiString := Criptografa('C', fdQryCadastroSENHA.AsAnsiString);
    end;
end;

procedure TfrmCadastroUsuarios.ValidaCampos;
begin
  if (edtNome.Text = '') or
     (edtLogin.Text = '')or
     (edtSenha.Text = '') then
    raise Exception.Create('Todos os campos s�o obrigat�rios!');
end;

end.
