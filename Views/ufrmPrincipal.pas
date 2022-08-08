unit ufrmPrincipal;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton;

type
  TfrmPrincipal = class(TAdvToolBarForm)
    AdvToolBarPager1: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvToolBar1: TAdvToolBar;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvQuickAccessToolBar1: TAdvQuickAccessToolBar;
    AdvShapeButton1: TAdvShapeButton;
    AdvPage3: TAdvPage;
    AdvPage2: TAdvPage;
    AdvToolBar2: TAdvToolBar;
    AdvToolBar3: TAdvToolBar;
    AdvToolBar4: TAdvToolBar;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    btnCadastroEstados: TAdvGlowButton;
    btnCadastroClientes: TAdvGlowButton;
    btnCadastroCidades: TAdvGlowButton;
    btnCadastroFornecedor: TAdvGlowButton;
    AdvToolBarSeparator3: TAdvToolBarSeparator;
    AdvToolBarSeparator4: TAdvToolBarSeparator;
    btnFiltroFornecedores: TAdvGlowButton;
    btnFiltroClientes: TAdvGlowButton;
    AdvToolBarSeparator5: TAdvToolBarSeparator;
    btnFiltroProdutos: TAdvGlowButton;
    btnCadastroProdutos: TAdvGlowButton;
    AdvPage4: TAdvPage;
    AdvToolBar5: TAdvToolBar;
    AdvToolBarSeparator6: TAdvToolBarSeparator;
    btnCadastroVendas: TAdvGlowButton;
    btnFiltroVendas: TAdvGlowButton;
    AdvToolBarSeparator8: TAdvToolBarSeparator;
    AdvToolBarSeparator7: TAdvToolBarSeparator;
    btnFiltroUsuarios: TAdvGlowButton;
    btnCadastroUsuarios: TAdvGlowButton;
    AdvToolBarSeparator9: TAdvToolBarSeparator;
    procedure btnCadastroClientesClick(Sender: TObject);
    procedure btnCadastroCidadesClick(Sender: TObject);
    procedure btnCadastroEstadosClick(Sender: TObject);
    procedure btnFiltroClientesClick(Sender: TObject);
    procedure btnFiltroFornecedoresClick(Sender: TObject);
    procedure btnFiltroProdutosClick(Sender: TObject);
    procedure btnCadastroProdutosClick(Sender: TObject);
    procedure btnCadastroVendasClick(Sender: TObject);
    procedure btnFiltroVendasClick(Sender: TObject);
    procedure btnFiltroUsuariosClick(Sender: TObject);
    procedure btnCadastroUsuariosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure AdvShapeButton1Click(Sender: TObject);
    procedure btnCadastroFornecedorClick(Sender: TObject);
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmCadastroCidades, ufrmCadastroCliente, ufrmCadastroEstado,
  ufrmFiltroClientes, ufrmCadastroFornecedor, ufrmFiltroFornecedor,
  ufrmFiltroProdutos, ufrmCadastroProdutos, ufrmCadastroVenda, uBiblioteca,
  ufrmFiltroVendas, ufrmFiltroUsuarios, ufrmCadastroUsuarios, ufrmLogin;


procedure TfrmPrincipal.btnCadastroEstadosClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroEstado, frmCadastroEstado);
end;

procedure TfrmPrincipal.btnCadastroFornecedorClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroFornecedor, frmCadastroFornecedor);
end;

procedure TfrmPrincipal.btnCadastroProdutosClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroProdutos, frmCadastroProdutos);
end;

procedure TfrmPrincipal.btnCadastroUsuariosClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroUsuarios, frmCadastroUsuarios);
end;

procedure TfrmPrincipal.btnFiltroClientesClick(Sender: TObject);
begin
  AbreTelaShow(TfrmFiltroClientes, frmFiltroClientes);
end;

procedure TfrmPrincipal.btnFiltroFornecedoresClick(Sender: TObject);
begin
  AbreTelaShow(TfrmFiltroFornecedor, frmFiltroFornecedor);
end;

procedure TfrmPrincipal.btnFiltroProdutosClick(Sender: TObject);
begin
  AbreTelaShow(TfrmFiltroProdutos, frmFiltroProdutos);
end;

procedure TfrmPrincipal.btnFiltroUsuariosClick(Sender: TObject);
begin
  AbreTelaShow(TfrmFiltroUsuarios, frmFiltroUsuarios);
end;

procedure TfrmPrincipal.btnFiltroVendasClick(Sender: TObject);
begin
  AbreTelaShow(TfrmFiltroVendas, frmFiltroVendas);
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  AbreTelaShowModal(TfrmLogin, frmLogin);
end;

procedure TfrmPrincipal.btnCadastroClientesClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroCliente, frmCadastroCliente);
end;

procedure TfrmPrincipal.btnCadastroVendasClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroVenda, frmCadastroVenda);
end;

procedure TfrmPrincipal.AdvShapeButton1Click(Sender: TObject);
begin
  AbreTelaShowModal(TfrmLogin, frmLogin);
end;

procedure TfrmPrincipal.btnCadastroCidadesClick(Sender: TObject);
begin
  AbreTelaShowModal(TfrmCadastroCidades, frmCadastroCidades);
end;

end.
