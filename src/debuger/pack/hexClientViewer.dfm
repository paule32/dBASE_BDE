object BCB6_hexForm: TBCB6_hexForm
  Left = 240
  Top = 150
  Width = 816
  Height = 389
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
    Left = 0
    Top = 0
    Width = 800
    Height = 13
    Align = alTop
    Caption = '  Hex View for DOS Header / Stub:'
    Color = 8454143
    ParentColor = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 13
    Width = 800
    Height = 268
    ActivePage = TabSheet1
    Align = alTop
    TabIndex = 1
    TabOrder = 0
    object hexViewTabSheet: TTabSheet
      Caption = 'Header + Stub View'
      object ScrollBox1: TScrollBox
        Left = 0
        Top = 0
        Width = 792
        Height = 240
        Align = alClient
        TabOrder = 0
        object ATBinHex1: TATBinHex
          Left = 0
          Top = 0
          Width = 788
          Height = 236
          Cursor = crIBeam
          Align = alClient
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
          TabOrder = 0
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
          Mode = vbmodeHex
          TextNonPrintable = True
          TextGutter = True
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Stub Assembly'
      ImageIndex = 1
      object ScrollBox2: TScrollBox
        Left = 0
        Top = 0
        Width = 792
        Height = 240
        Align = alClient
        TabOrder = 0
        object SynEdit1: TSynEdit
          Left = 0
          Top = 0
          Width = 788
          Height = 236
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = []
          TabOrder = 0
          Gutter.Font.Charset = DEFAULT_CHARSET
          Gutter.Font.Color = clWindowText
          Gutter.Font.Height = -11
          Gutter.Font.Name = 'Courier New'
          Gutter.Font.Style = []
          Lines.UnicodeStrings = 'SynEdit1'
          FontSmoothing = fsmNone
        end
      end
    end
  end
end
