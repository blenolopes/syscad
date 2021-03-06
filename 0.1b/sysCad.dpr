program sysCad;

uses
  Forms,
  formCadProdutos in 'formCadProdutos.pas' {fCadProduto},
  cadProdutos in 'cadProdutos.pas',
  formCadCliente in 'formCadCliente.pas' {fCadCliente},
  formPrincipal in 'formPrincipal.pas' {fPrincipal},
  formSobre in 'formSobre.pas' {fSobre},
  formAutentica in 'formAutentica.pas' {fAutentica};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfAutentica, fAutentica);
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.CreateForm(TfCadProduto, fCadProduto);
  Application.CreateForm(TfCadCliente, fCadCliente);
  Application.CreateForm(TfSobre, fSobre);
  Application.Run;
end.
