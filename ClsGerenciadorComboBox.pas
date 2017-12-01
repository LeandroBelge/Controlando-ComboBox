unit ClsGerenciadorComboBox;

interface

uses
  Vcl.StdCtrls;
type
  TGerenciadorComboBox = class
  private
    procedure ControlarComboBox(Sender: TObject);
    procedure DimensionarComboBox(const ComboBox: TComboBox);
  public
    constructor Create();
  end;
implementation

uses
  Vcl.Forms, System.Classes, Vcl.Graphics, Winapi.Windows, Winapi.Messages;

{ TGerenciadorComboBox }

procedure TGerenciadorComboBox.ControlarComboBox(Sender: TObject);
var
  I : Integer;
begin
  if Assigned(Screen) and (Screen.ActiveForm <> nil) then begin
    with Screen.ActiveForm do begin
      for I:= 0 to ComponentCount -1 do begin

        if csDestroying in TComponent(Components[I]).ComponentState then Continue;

        if Components[I] is TComboBox then begin
          if (Components[I] as TComboBox).Focused then begin
            (Components[I] as TComboBox).Color := clSilver;
          end
          else begin
            (Components[I] as TComboBox).Color := clWindow;
          end;
          self.DimensionarComboBox(Components[I] as TComboBox);
        end;
      end;
    end;
  end;
end;

constructor TGerenciadorComboBox.Create;
begin
  Screen.OnActiveControlChange := ControlarComboBox;
end;

procedure TGerenciadorComboBox.DimensionarComboBox(const ComboBox: TComboBox);
const
  HORIZONTAL_PADDING = 4;
var
  itemsFullWidth: integer;
  i: integer;
  itemWidth: integer;
begin
  itemsFullWidth := 0;
  for i := 0 to -1 + ComboBox.Items.Count do begin
    itemWidth := ComboBox.Canvas.TextWidth(ComboBox.Items[i]);
    Inc(itemWidth, 2 * HORIZONTAL_PADDING);
    if (itemWidth > itemsFullWidth) then itemsFullWidth := itemWidth;
  end;
  if (itemsFullWidth > ComboBox.Width) then begin
    if ComboBox.DropDownCount < ComboBox.Items.Count then
      itemsFullWidth := itemsFullWidth + GetSystemMetrics(SM_CXVSCROLL);
    SendMessage(ComboBox.Handle, CB_SETDROPPEDWIDTH, itemsFullWidth, 0);
  end;
end;

end.
