unit ufrmConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls;

type
  TfrmConfigBanco = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    edtLocalBD: TEdit;
    Button1: TButton;
    Label2: TLabel;
    edtServer: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure Configura;
  public
    { Public declarations }
  end;

var
  frmConfigBanco: TfrmConfigBanco;

implementation

uses uBiblioteca, udmConexao;

{$R *.dfm}

{ TfrmConfigBanco }

procedure TfrmConfigBanco.Button1Click(Sender: TObject);
begin
  Configura;
end;

procedure TfrmConfigBanco.Configura;
var
  vFileName: string;
begin
  vFileName:= ExtractFilePath(Application.ExeName) + 'config.ini';
  SetValorIni(vFileName, 'CONFIGURACAO', 'LOCAL_DB', edtLocalBD.Text);
  SetValorIni(vFileName, 'CONFIGURACAO', 'SERVER', edtServer.Text);
  ShowMessage('Pronto.');
end;

procedure TfrmConfigBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

end.
