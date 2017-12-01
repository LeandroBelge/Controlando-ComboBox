object UIPrincipal: TUIPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Controlando Combo Box'
  ClientHeight = 201
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object CboTextoNormal: TComboBox
    Left = 152
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Texto normal'
    Items.Strings = (
      'Texto normal'
      'Texto pequeno'
      'Textinho'
      'Pequeno texto')
  end
  object CboTextoMaior: TComboBox
    Left = 152
    Top = 88
    Width = 145
    Height = 21
    TabOrder = 1
    Text = 'Texto maior que o tamanho do combo'
    Items.Strings = (
      'Texto maior que o tamanho do combo'
      'Texto com muitas informa'#231#245'es para o combo'
      'Texto grande para verificar se a aplica'#231#227'o funciona')
  end
end
