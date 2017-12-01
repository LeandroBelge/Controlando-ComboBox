program ControlandoComboBox;

uses
  Vcl.Forms,
  UntPrincipal in 'UntPrincipal.pas' {UIPrincipal},
  ClsGerenciadorComboBox in 'ClsGerenciadorComboBox.pas',
  ClsPrincipal in 'ClsPrincipal.pas';

{$R *.res}

begin
  Application.Initialize;
  TPrincipal.Create;
  Principal.IniciarAplicacao();
  Application.Run;
end.
