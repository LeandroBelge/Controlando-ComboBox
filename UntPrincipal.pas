unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TUIPrincipal = class(TForm)
    CboTextoNormal: TComboBox;
    CboTextoMaior: TComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(); reintroduce;
  end;

implementation

{$R *.dfm}

{ TUIPrincipal }

{ TUIPrincipal }

constructor TUIPrincipal.Create;
begin
  inherited Create(Application);
end;

end.
