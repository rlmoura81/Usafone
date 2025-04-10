program usafone;

uses
  Forms,
  untPadraoGeral in 'untPadraoGeral.pas' {FormPadrao},
  untPrincipal in 'untPrincipal.pas' {FormPrincipal},
  untCidade in 'untCidade.pas' {FormCidade},
  untUnidade in 'untUnidade.pas' {FormUnidade},
  untUsuario in 'untUsuario.pas' {FormUsuario},
  untOperadora in 'untOperadora.pas' {FormOperadora},
  untMarca in 'untMarca.pas' {FormMarca},
  untModelo in 'untModelo.pas' {FormModelo},
  untAparelhos in 'untAparelhos.pas' {FormAparelhos},
  untChip in 'untChip.pas' {FormChip},
  untAgenda in 'untAgenda.pas' {FormAgenda},
  untListaTelefone in 'untListaTelefone.pas' {FormListaTelefone},
  untDM in 'untDM.pas' {dm: TDataModule},
  untEstoque in 'untEstoque.pas' {FormEstoque},
  untPadraoRelatorio in 'untPadraoRelatorio.pas' {FormRelPadrao},
  untRelCidade in 'untRelCidade.pas' {FormRelCidade},
  untRelAparelho in 'untRelAparelho.pas' {FormRelAparelhos},
  untRelListaTelefone in 'untRelListaTelefone.pas' {FormRelListaTelefone},
  untRelChip in 'untRelChip.pas' {FormRelChip},
  untRelAgenda in 'untRelAgenda.pas' {FormRelAgenda},
  untRelMarca in 'untRelMarca.pas' {FormRelMarca},
  untRelModelo in 'untRelModelo.pas' {FormRelModelo},
  untRelOperadora in 'untRelOperadora.pas' {FormRelOperadora},
  untRelUnidade in 'untRelUnidade.pas' {FormRelUnidade},
  untRelUsuario in 'untRelUsuario.pas' {FormRelUsuario},
  untAcesso in 'untAcesso.pas' {FormAcesso},
  untRelEstoque in 'untRelEstoque.pas' {FormRelEstoque},
  untLogin in 'untLogin.pas' {FormLogin},
  untSenha in 'untSenha.pas' {FormSenha},
  untGasto in 'untGasto.pas' {FormGasto},
  untRelGasto in 'untRelGasto.pas' {FormRelGasto},
  untBlackberry in 'untBlackberry.pas' {FormBlackberry},
  untRelBlackberry in 'untRelBlackberry.pas' {FormRelBlackberry};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TFormLogin, FormLogin);
  Application.CreateForm(TFormGasto, FormGasto);
  Application.CreateForm(TFormRelGasto, FormRelGasto);
  Application.CreateForm(TFormBlackberry, FormBlackberry);
  Application.CreateForm(TFormRelBlackberry, FormRelBlackberry);
  Application.Run;
end.
