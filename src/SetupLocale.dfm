object SetupLocaleFrame: TSetupLocaleFrame
  Left = 0
  Top = 0
  Width = 427
  Height = 240
  TabOrder = 0
  Visible = False
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 427
    Height = 240
    Align = alClient
    TabOrder = 0
    object LangTextStringGrid: TJvStringGrid
      Left = 0
      Top = 0
      Width = 423
      Height = 236
      Align = alClient
      ColCount = 2
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goRowSizing, goColSizing, goEditing]
      TabOrder = 0
      Alignment = taLeftJustify
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'MS Sans Serif'
      FixedFont.Style = []
      ColWidths = (
        145
        294)
    end
  end
end
