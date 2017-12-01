unit ClsPrincipal;

interface

uses ClsGerenciadorComboBox;
type
  TPrincipal = class
  private
    FGerenciadorComboBox: TGerenciadorComboBox;
    procedure FinalizaAplicacao();
  public
    constructor Create();
    Destructor Destroy(); override;
    procedure IniciarAplicacao();
  end;
var
  Principal: TPrincipal;
implementation

{ TPrincipal }

uses UntPrincipal, Vcl.Forms;


destructor TPrincipal.Destroy;
begin
  FGerenciadorComboBox.Free;
  inherited;
end;

procedure TPrincipal.FinalizaAplicacao;
begin
  Application.Terminate;
end;

procedure TPrincipal.IniciarAplicacao;
var
  TelaPrincipal: TUIPrincipal;
begin
  TelaPrincipal := TUIPrincipal.Create();
  try
    TelaPrincipal.ShowModal();
  finally
    TelaPrincipal.Free;
    self.FinalizaAplicacao();
  end;
end;

{ TPrincipal }

constructor TPrincipal.Create;
begin
  FGerenciadorComboBox := TGerenciadorComboBox.Create;
end;

end.
