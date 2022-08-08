unit uClienteController;

interface

uses uClienteModel, uClienteDAO;

type
  TClienteController = Class
    private

    public
      function GetNomeTabela: String;
      function GetChavePrimaria: String;
      procedure Gravar(Cliente: TCliente);
      procedure Alterar(Cliente: TCliente; IdCliente: Integer);
  End;

implementation

procedure TClienteController.Alterar(Cliente: TCliente; IdCliente: Integer);
begin
  frmClienteDAO.Alterar(Cliente, IdCliente);
end;

function TClienteController.GetChavePrimaria: String;
begin
  Result := 'ID_CLIENTE_CLI';
end;

function TClienteController.GetNomeTabela: String;
begin
  Result := 'CLIENTE ';
end;

procedure TClienteController.Gravar(Cliente: TCliente);
begin
  frmClienteDAO.Gravar(Cliente);
end;

end.
