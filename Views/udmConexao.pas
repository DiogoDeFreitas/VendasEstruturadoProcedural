unit udmConexao;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait,
  Data.DB, FireDAC.Comp.Client, FireDAC.Phys.FB, FireDAC.Phys.FBDef,Vcl.Forms, ufrmConfigBanco, uBiblioteca;

type
  TdmConexao = class(TDataModule)
    fdConexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  private
    procedure CarregaBanco;
  public
    { Public declarations }
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TdmConexao.CarregaBanco;
begin
  try
    fdConexao.Params.Clear;

    fdConexao.Params.Add('Database=' + GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini', 'CONFIGURACAO','LOCAL_DB'));
    fdConexao.Params.Add('User_Name=sysdba ');
    fdConexao.Params.Add('Password=masterkey ');
    fdConexao.Params.Add('CharacterSet=UTF8 ');
    fdConexao.Params.Add('Protocol=TCPIP ');
    fdConexao.Params.Add('Server=' + GetValorIni(ExtractFilePath(Application.ExeName) + 'config.ini', 'CONFIGURACAO','SERVER'));

    fdConexao.Params.Add('DriverID=FB ');

    fdConexao.Connected := True;
  except
    AbreTelaShowModal(TfrmConfigBanco, frmConfigBanco);
  end;
end;

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  CarregaBanco;
end;

end.
