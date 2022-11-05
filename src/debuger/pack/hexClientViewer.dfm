object BCB6_hexForm: TBCB6_hexForm
  Left = 2
  Top = 125
  Width = 728
  Height = 260
  Caption = 'BCB6_hexForm'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 0
    Width = 127
    Height = 13
    Caption = 'Hex View for DOS Header:'
  end
  object Button1: TButton
    Left = 120
    Top = 152
    Width = 129
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object ATBinHex1: TATBinHex
    Left = 8
    Top = 24
    Width = 689
    Height = 89
    Cursor = crIBeam
    BevelOuter = bvNone
    BorderStyle = bsSingle
    Caption = 'ATBinHex1'
    Color = clWindow
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    FontOEM.Charset = OEM_CHARSET
    FontOEM.Color = clWindowText
    FontOEM.Height = -12
    FontOEM.Name = 'Terminal'
    FontOEM.Style = []
    FontFooter.Charset = DEFAULT_CHARSET
    FontFooter.Color = clBlack
    FontFooter.Height = -12
    FontFooter.Name = 'Arial'
    FontFooter.Style = []
    FontGutter.Charset = DEFAULT_CHARSET
    FontGutter.Color = clBlack
    FontGutter.Height = -12
    FontGutter.Name = 'Courier New'
    FontGutter.Style = []
    TextGutter = True
  end
end
