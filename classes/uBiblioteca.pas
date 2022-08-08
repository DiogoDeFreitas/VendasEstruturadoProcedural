unit uBiblioteca;

interface
  uses IniFiles, System.SysUtils, Vcl.Forms, FireDAC.Comp.Client,
  System.Classes, frxClass;

  procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);

  function GetValorIni(pLocal, pSessao, pSubSessao: string): string;

  procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: String);
  procedure AbreTelaShowModal(pClass: TComponentClass; pForm: TForm);
  procedure AbreTelaShow(pClass: TComponentClass; pForm: TForm);
  procedure CarregaRelatorio(const pReport: TFrxReport);

implementation
procedure SetValorIni(pLocal, pSessao, pSubSessao, pValor: string);
var
  Arquivo: TIniFile;
begin
  Arquivo := TIniFile.Create(pLocal);
  Arquivo.WriteString(pSessao, pSubSessao, pValor);
  arquivo.Free;
end;

function GetValorIni(pLocal, pSessao, pSubSessao: string): string;
var
  Arquivo: TIniFile;
begin
  Arquivo := TIniFile.Create(pLocal);
  try
    Result := Arquivo.ReadString(pSessao, pSubSessao, '');
  finally
    Arquivo.Free;
  end;

end;

procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: String);
begin
  pFDQuery.Close;
  if Trim(pSQL) <> '' then
  begin
    pFDQuery.SQL.Clear;
    pFDQuery.SQL.Text := pSQL;
  end;

  pFDQuery.Open();
  pFDQuery.FetchAll;
end;

procedure AbreTelaShowModal(pClass: TComponentClass; pForm: TForm);
begin
  try
    Application.CreateForm(pClass, pForm);
    pForm.ShowModal;
  finally
    FreeAndNil(pForm);
  end;
end;

procedure AbreTelaShow(pClass: TComponentClass; pForm: TForm);
begin
  Application.CreateForm(pClass, pForm);
  pForm.Show;
end;

procedure CarregaRelatorio(const pReport: TFrxReport);
begin
  pReport.PrepareReport;
  pReport.ShowPreparedReport;
end;

end.
