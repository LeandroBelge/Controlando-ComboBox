object UIPrincipal: TUIPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Controlando Combo Box'
  ClientHeight = 110
  ClientWidth = 292
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 9
    Top = 19
    Width = 113
    Height = 13
    Caption = 'Itens com texto curtos:'
  end
  object Label2: TLabel
    Left = 8
    Top = 67
    Width = 114
    Height = 13
    Caption = 'Itens com texto longos:'
  end
  object CboTextoNormal: TComboBox
    Left = 128
    Top = 16
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    Items.Strings = (
      'Texto normal'
      'Texto pequeno'
      'Textinho'
      'Pequeno texto')
  end
  object CboTextoMaior: TComboBox
    Left = 128
    Top = 64
    Width = 145
    Height = 21
    Style = csDropDownList
    TabOrder = 1
    Items.Strings = (
      'Texto maior que o tamanho do combo'
      'Texto com muitas informa'#231#245'es para o combo'
      'Texto grande para verificar se a aplica'#231#227'o funciona')
  end
end
