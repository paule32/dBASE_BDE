object Form2: TForm2
  Left = 269
  Top = 135
  Width = 1314
  Height = 848
  Caption = 'DataBase Explorer (c) 2022 Jens Kallup 1.0.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnResize = FormResize
  PixelsPerInch = 115
  TextHeight = 16
  object StatusBar1: TStatusBar
    Left = 0
    Top = 780
    Width = 1296
    Height = 23
    Panels = <
      item
        Text = ' Ready :'
        Width = 50
      end
      item
        Style = psOwnerDraw
        Width = 90
      end
      item
        Text = 'Row: 1, Col: 1'
        Width = 156
      end
      item
        Width = 50
      end>
    OnDrawPanel = StatusBar1DrawPanel
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1296
    Height = 780
    Align = alClient
    Caption = 'Panel2'
    TabOrder = 1
    object JvSplitter1: TJvSplitter
      Left = 1
      Top = 21
      Width = 1294
      Height = 4
      Cursor = crVSplit
      Align = alTop
    end
    object BackgroundViewPanel: TJvPanel
      Left = 1
      Top = 1
      Width = 1294
      Height = 20
      Align = alTop
      TabOrder = 3
    end
    object TasksPageControl: TPageControl
      Left = 1
      Top = 155
      Width = 1294
      Height = 624
      ActivePage = TaskPageDevelopment
      Align = alClient
      TabOrder = 0
      OnChange = TasksPageControlChange
      object TabSheet28: TTabSheet
        Caption = 'Monitor'
        ImageIndex = 4
        object ScrollBox23: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object Splitter3: TSplitter
            Left = 247
            Top = 0
            Width = 5
            Height = 589
          end
          object Panel22: TPanel
            Left = 0
            Top = 0
            Width = 247
            Height = 589
            Align = alLeft
            Caption = 'Panel3'
            TabOrder = 0
            object PageControl13: TPageControl
              Left = 1
              Top = 1
              Width = 245
              Height = 587
              ActivePage = TabSheet31
              Align = alClient
              TabOrder = 0
              object TabSheet29: TTabSheet
                Caption = 'DataBases'
                object Splitter9: TSplitter
                  Left = 0
                  Top = 208
                  Width = 237
                  Height = 4
                  Cursor = crVSplit
                  Align = alTop
                end
                object TreeView2: TTreeView
                  Left = 0
                  Top = 0
                  Width = 237
                  Height = 208
                  Align = alTop
                  Indent = 19
                  TabOrder = 0
                  Items.Data = {
                    01000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
                    09446174614261736573}
                end
                object PageControl14: TPageControl
                  Left = 0
                  Top = 212
                  Width = 237
                  Height = 344
                  ActivePage = TabSheet30
                  Align = alClient
                  TabOrder = 1
                  object TabSheet30: TTabSheet
                    Caption = 'Definition'
                    object DBGrid1: TDBGrid
                      Left = 0
                      Top = 0
                      Width = 229
                      Height = 294
                      Align = alTop
                      TabOrder = 0
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -13
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                    end
                  end
                end
              end
              object TabSheet31: TTabSheet
                Caption = 'Activities'
                ImageIndex = 1
                object ScrollBox24: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 237
                  Height = 556
                  Align = alClient
                  TabOrder = 0
                  object Splitter15: TSplitter
                    Left = 0
                    Top = 159
                    Width = 233
                    Height = 3
                    Cursor = crVSplit
                    Align = alTop
                  end
                  object Splitter20: TSplitter
                    Left = 0
                    Top = 306
                    Width = 233
                    Height = 4
                    Cursor = crVSplit
                    Align = alTop
                  end
                  object Panel23: TPanel
                    Left = 0
                    Top = 0
                    Width = 233
                    Height = 159
                    Align = alTop
                    Caption = 'Panel23'
                    TabOrder = 0
                    object Panel45: TPanel
                      Left = 1
                      Top = 1
                      Width = 231
                      Height = 35
                      Align = alTop
                      Alignment = taLeftJustify
                      Caption = ' Critical :'
                      Color = 12615935
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                    end
                    object JvStringGrid3: TJvStringGrid
                      Left = 1
                      Top = 36
                      Width = 231
                      Height = 122
                      Align = alClient
                      DefaultRowHeight = 16
                      TabOrder = 1
                      Alignment = taLeftJustify
                      FixedFont.Charset = DEFAULT_CHARSET
                      FixedFont.Color = clWindowText
                      FixedFont.Height = -11
                      FixedFont.Name = 'MS Sans Serif'
                      FixedFont.Style = []
                    end
                  end
                  object Panel35: TPanel
                    Left = 0
                    Top = 162
                    Width = 233
                    Height = 144
                    Align = alTop
                    Caption = 'Panel35'
                    TabOrder = 1
                    object Panel46: TPanel
                      Left = 1
                      Top = 1
                      Width = 231
                      Height = 31
                      Align = alTop
                      Alignment = taLeftJustify
                      Caption = ' High Average Activity :'
                      Color = 8454143
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                    end
                    object JvStringGrid4: TJvStringGrid
                      Left = 1
                      Top = 32
                      Width = 231
                      Height = 111
                      Align = alClient
                      DefaultRowHeight = 16
                      TabOrder = 1
                      Alignment = taLeftJustify
                      FixedFont.Charset = DEFAULT_CHARSET
                      FixedFont.Color = clWindowText
                      FixedFont.Height = -11
                      FixedFont.Name = 'MS Sans Serif'
                      FixedFont.Style = []
                    end
                  end
                  object Panel42: TPanel
                    Left = 0
                    Top = 310
                    Width = 233
                    Height = 242
                    Align = alClient
                    Caption = 'Panel42'
                    TabOrder = 2
                    object Panel44: TPanel
                      Left = 1
                      Top = 1
                      Width = 231
                      Height = 35
                      Align = alTop
                      Alignment = taLeftJustify
                      Caption = ' Low Average Activitie'#39's :'
                      Color = 8454016
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                      TabOrder = 0
                    end
                    object JvStringGrid5: TJvStringGrid
                      Left = 1
                      Top = 36
                      Width = 231
                      Height = 205
                      Align = alClient
                      DefaultRowHeight = 16
                      TabOrder = 1
                      Alignment = taLeftJustify
                      FixedFont.Charset = DEFAULT_CHARSET
                      FixedFont.Color = clWindowText
                      FixedFont.Height = -11
                      FixedFont.Name = 'MS Sans Serif'
                      FixedFont.Style = []
                    end
                  end
                end
              end
            end
          end
          object ScrollBox1: TScrollBox
            Left = 252
            Top = 0
            Width = 1030
            Height = 589
            Align = alClient
            TabOrder = 1
            object Splitter7: TSplitter
              Left = 0
              Top = 130
              Width = 1026
              Height = 11
              Cursor = crVSplit
              Align = alBottom
            end
            object Splitter8: TSplitter
              Left = 565
              Top = 31
              Width = 4
              Height = 99
              Align = alRight
            end
            object Panel7: TPanel
              Left = 0
              Top = 0
              Width = 1026
              Height = 31
              Align = alTop
              BevelInner = bvSpace
              BevelOuter = bvNone
              BorderStyle = bsSingle
              TabOrder = 0
              object Label1: TLabel
                Left = 10
                Top = 2
                Width = 159
                Height = 16
                Caption = 'Database Structure Viewer'
              end
            end
            object Panel8: TPanel
              Left = 0
              Top = 141
              Width = 1026
              Height = 444
              Align = alBottom
              Anchors = [akLeft, akTop, akRight, akBottom]
              Caption = 'Panel8'
              TabOrder = 1
              object PageControl5: TPageControl
                Left = 1
                Top = 1
                Width = 1024
                Height = 442
                ActivePage = TabSheet3
                Align = alClient
                TabOrder = 0
                object TabSheet3: TTabSheet
                  Caption = 'Connection'#39's'
                  object ScrollBox7: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 1016
                    Height = 411
                    Align = alClient
                    TabOrder = 0
                    object ConnectionListGrid: TStringGrid
                      Left = 0
                      Top = 90
                      Width = 1012
                      Height = 177
                      Align = alTop
                      ColCount = 6
                      DefaultRowHeight = 16
                      FixedColor = 8454016
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
                      TabOrder = 0
                      ColWidths = (
                        64
                        83
                        61
                        140
                        87
                        135)
                      RowHeights = (
                        16
                        16
                        16
                        16
                        16)
                    end
                    object Panel12: TPanel
                      Left = 0
                      Top = 0
                      Width = 1012
                      Height = 50
                      Align = alTop
                      TabOrder = 1
                      object Button_SendWarning: TJvArrowButton
                        Left = 10
                        Top = 10
                        Width = 109
                        Height = 31
                        ArrowWidth = 21
                        Caption = 'Send Warn'
                        FillFont.Charset = DEFAULT_CHARSET
                        FillFont.Color = clBlack
                        FillFont.Height = -11
                        FillFont.Name = 'MS Sans Serif'
                        FillFont.Style = []
                      end
                      object JvArrowButton1: TJvArrowButton
                        Left = 138
                        Top = 10
                        Width = 109
                        Height = 31
                        ArrowWidth = 21
                        Caption = 'Close'
                        FillFont.Charset = DEFAULT_CHARSET
                        FillFont.Color = clWindowText
                        FillFont.Height = -11
                        FillFont.Name = 'MS Sans Serif'
                        FillFont.Style = []
                      end
                      object JvArrowButton2: TJvArrowButton
                        Left = 256
                        Top = 10
                        Width = 110
                        Height = 31
                        ArrowWidth = 21
                        Caption = 'Kick'
                        FillFont.Charset = DEFAULT_CHARSET
                        FillFont.Color = clWindowText
                        FillFont.Height = -11
                        FillFont.Name = 'MS Sans Serif'
                        FillFont.Style = []
                      end
                      object JvArrowButton4: TJvArrowButton
                        Left = 374
                        Top = 10
                        Width = 110
                        Height = 31
                        ArrowWidth = 21
                        Caption = 'Bann'
                        FillFont.Charset = SYMBOL_CHARSET
                        FillFont.Color = clRed
                        FillFont.Height = -11
                        FillFont.Name = 'MT Extra'
                        FillFont.Style = []
                      end
                      object JvArrowButton3: TJvArrowButton
                        Left = 502
                        Top = 10
                        Width = 110
                        Height = 31
                        ArrowWidth = 21
                        Caption = 'Statistic'
                        FillFont.Charset = DEFAULT_CHARSET
                        FillFont.Color = clWindowText
                        FillFont.Height = -11
                        FillFont.Name = 'MS Sans Serif'
                        FillFont.Style = []
                      end
                    end
                    object ConnectionFilterPanel: TPanel
                      Left = 0
                      Top = 50
                      Width = 1012
                      Height = 40
                      Align = alTop
                      BevelInner = bvRaised
                      BorderWidth = 1
                      TabOrder = 2
                    end
                  end
                end
                object TabSheet4: TTabSheet
                  Caption = 'User'#39's'
                  ImageIndex = 1
                  object Panel11: TPanel
                    Left = 0
                    Top = 0
                    Width = 1273
                    Height = 169
                    Align = alClient
                    Caption = 'Panel11'
                    TabOrder = 0
                    object UserLogGrid: TStringGrid
                      Left = 1
                      Top = 1
                      Width = 1270
                      Height = 166
                      Align = alClient
                      ColCount = 6
                      DefaultRowHeight = 16
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
                      TabOrder = 0
                      ColWidths = (
                        64
                        83
                        61
                        140
                        87
                        70)
                    end
                  end
                end
                object TabSheet5: TTabSheet
                  Caption = 'Warning'#39's'
                  ImageIndex = 2
                  object Panel10: TPanel
                    Left = 0
                    Top = 0
                    Width = 1273
                    Height = 169
                    Align = alClient
                    Caption = 'Panel10'
                    TabOrder = 0
                    object StringGrid2: TStringGrid
                      Left = 1
                      Top = 1
                      Width = 1270
                      Height = 166
                      Align = alClient
                      ColCount = 6
                      DefaultRowHeight = 16
                      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goRowSelect]
                      TabOrder = 0
                      ColWidths = (
                        64
                        83
                        61
                        140
                        87
                        70)
                    end
                  end
                end
              end
            end
            object PageControl4: TPageControl
              Left = 569
              Top = 31
              Width = 457
              Height = 99
              ActivePage = TabSheet10
              Align = alRight
              TabOrder = 2
              object TabSheet2: TTabSheet
                Caption = 'Display'
                object Panel9: TPanel
                  Left = 0
                  Top = 0
                  Width = 449
                  Height = 68
                  Align = alClient
                  BevelInner = bvLowered
                  BevelOuter = bvLowered
                  TabOrder = 0
                  object CheckBox1: TCheckBox
                    Left = 20
                    Top = 20
                    Width = 119
                    Height = 21
                    Caption = 'Connection'#39's'
                    TabOrder = 0
                  end
                  object CheckBox2: TCheckBox
                    Left = 20
                    Top = 49
                    Width = 119
                    Height = 21
                    Caption = 'User'#39's'
                    TabOrder = 1
                  end
                  object CheckBox3: TCheckBox
                    Left = 20
                    Top = 79
                    Width = 119
                    Height = 21
                    Caption = 'Warning'#39's'
                    TabOrder = 2
                  end
                end
              end
              object TabSheet10: TTabSheet
                Caption = 'Table'#39's'
                ImageIndex = 1
                object ScrollBox4: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 449
                  Height = 68
                  Align = alClient
                  TabOrder = 0
                  object Label2: TLabel
                    Left = 177
                    Top = 101
                    Width = 29
                    Height = 16
                    Caption = 'Size:'
                  end
                  object Label3: TLabel
                    Left = 177
                    Top = 143
                    Width = 58
                    Height = 16
                    Caption = 'Record'#39's:'
                  end
                  object Button2: TButton
                    Left = 10
                    Top = 18
                    Width = 92
                    Height = 28
                    Caption = 'Create'
                    TabOrder = 0
                  end
                  object DBEdit5: TDBEdit
                    Left = 118
                    Top = 20
                    Width = 149
                    Height = 24
                    TabOrder = 1
                  end
                  object Button5: TButton
                    Left = 10
                    Top = 58
                    Width = 92
                    Height = 27
                    Caption = 'Delete'
                    TabOrder = 2
                  end
                  object TreeView3: TTreeView
                    Left = 10
                    Top = 98
                    Width = 159
                    Height = 120
                    Indent = 19
                    TabOrder = 3
                  end
                  object Edit1: TEdit
                    Left = 240
                    Top = 98
                    Width = 129
                    Height = 24
                    TabOrder = 4
                    Text = 'Edit1'
                  end
                  object Edit2: TEdit
                    Left = 241
                    Top = 138
                    Width = 129
                    Height = 24
                    TabOrder = 5
                    Text = 'Edit1'
                  end
                  object Button22: TButton
                    Left = 276
                    Top = 17
                    Width = 92
                    Height = 27
                    Caption = 'Button22'
                    TabOrder = 6
                  end
                end
              end
            end
            object ScrollBox22: TScrollBox
              Left = 0
              Top = 31
              Width = 565
              Height = 99
              Align = alClient
              TabOrder = 3
              DesignSize = (
                541
                95)
              object SystemViewGrid: TStringGrid
                Left = 0
                Top = 0
                Width = 326
                Height = 188
                ColCount = 3
                DefaultDrawing = False
                FixedColor = clWhite
                RowCount = 6
                FixedRows = 0
                Options = [goVertLine, goRowSelect]
                TabOrder = 0
                OnDrawCell = SystemViewGridDrawCell
                ColWidths = (
                  64
                  98
                  64)
                RowHeights = (
                  24
                  24
                  24
                  24
                  24
                  24)
              end
              object StaticText1: TStaticText
                Left = 10
                Top = 197
                Width = 109
                Height = 43
                Alignment = taCenter
                AutoSize = False
                BevelKind = bkSoft
                BevelOuter = bvRaised
                BorderStyle = sbsSingle
                Caption = 'Requiere Action'
                Color = 8454016
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -14
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                TabOrder = 1
              end
              object PageControl9: TPageControl
                Left = 345
                Top = 10
                Width = 470
                Height = 228
                ActivePage = TabSheet22
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 2
                object TabSheet22: TTabSheet
                  Caption = 'Wire Shark'
                  object ScrollBox28: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 462
                    Height = 197
                    Align = alClient
                    TabOrder = 0
                  end
                end
                object TabSheet32: TTabSheet
                  Caption = 'Scan Ports'
                  ImageIndex = 1
                end
              end
              object StaticText2: TStaticText
                Left = 217
                Top = 197
                Width = 109
                Height = 43
                Alignment = taCenter
                AutoSize = False
                BevelKind = bkSoft
                BevelOuter = bvRaised
                BorderStyle = sbsSingle
                Caption = '   System'#39's     Down'
                Color = 8421631
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -14
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                TabOrder = 3
              end
            end
          end
        end
      end
      object TabSheet24: TTabSheet
        Caption = 'HTTP'
        object ScrollBox20: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object PageControl11: TPageControl
            Left = 0
            Top = 0
            Width = 1282
            Height = 589
            ActivePage = TabSheet23
            Align = alClient
            TabOrder = 0
            object TabSheet23: TTabSheet
              Caption = 'HTTP Server'
              object ScrollBox21: TScrollBox
                Left = 0
                Top = 0
                Width = 1274
                Height = 558
                Align = alClient
                TabOrder = 0
              end
            end
          end
        end
      end
      object TabSheet26: TTabSheet
        Caption = 'DNS'
        ImageIndex = 2
        object ScrollBox25: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object PageControl1: TPageControl
            Left = 0
            Top = 0
            Width = 1282
            Height = 589
            ActivePage = TabSheet11
            Align = alClient
            TabOrder = 0
            object TabSheet11: TTabSheet
              Caption = 'DNS Server'
              object ScrollBox26: TScrollBox
                Left = 0
                Top = 0
                Width = 1274
                Height = 558
                Align = alClient
                TabOrder = 0
              end
            end
          end
        end
      end
      object TabSheet27: TTabSheet
        Caption = 'Proxy'
        ImageIndex = 3
        object ScrollBox19: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object PageControl2: TPageControl
            Left = 0
            Top = 0
            Width = 1282
            Height = 589
            ActivePage = TabSheet21
            Align = alClient
            TabOrder = 0
            object TabSheet21: TTabSheet
              Caption = 'Proxy Server'
              object ScrollBox27: TScrollBox
                Left = 0
                Top = 0
                Width = 1274
                Height = 558
                Align = alClient
                TabOrder = 0
              end
            end
          end
        end
      end
      object TabSheet25: TTabSheet
        Caption = 'Admin'
        ImageIndex = 1
        object ScrollBox5: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object PageControl7: TPageControl
            Left = 0
            Top = 0
            Width = 1212
            Height = 589
            ActivePage = TabSheet8
            Align = alLeft
            TabOrder = 0
            object TabSheet7: TTabSheet
              Caption = 'Statistic'#39's'
              object ScrollBox37: TScrollBox
                Left = 0
                Top = 0
                Width = 1204
                Height = 653
                Align = alClient
                TabOrder = 0
                object Chart1: TChart
                  Left = 39
                  Top = 30
                  Width = 493
                  Height = 307
                  BackWall.Brush.Color = clWhite
                  BackWall.Brush.Style = bsClear
                  Title.Text.Strings = (
                    'TChart')
                  TabOrder = 0
                end
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'Permission'#39's'
              ImageIndex = 1
              object ScrollBox11: TScrollBox
                Left = 0
                Top = 0
                Width = 1204
                Height = 558
                Align = alClient
                TabOrder = 0
                object Label5: TLabel
                  Left = 10
                  Top = 10
                  Width = 56
                  Height = 16
                  Caption = 'User-List:'
                end
                object Label6: TLabel
                  Left = 10
                  Top = 59
                  Width = 85
                  Height = 16
                  Caption = 'Access Time :'
                end
                object Label7: TLabel
                  Left = 207
                  Top = 10
                  Width = 51
                  Height = 16
                  Caption = 'Location'
                end
                object Label8: TLabel
                  Left = 404
                  Top = 10
                  Width = 36
                  Height = 16
                  Caption = 'Week'
                end
                object Label9: TLabel
                  Left = 10
                  Top = 423
                  Width = 39
                  Height = 16
                  Caption = 'User'#39's'
                end
                object Label10: TLabel
                  Left = 217
                  Top = 423
                  Width = 47
                  Height = 16
                  Caption = 'Right'#39's :'
                end
                object TimeTableGrid: TStringGrid
                  Left = 10
                  Top = 79
                  Width = 384
                  Height = 336
                  Color = 191
                  ColCount = 8
                  DefaultColWidth = 32
                  DefaultRowHeight = 18
                  RowCount = 14
                  TabOrder = 0
                  OnDblClick = TimeTableGridDblClick
                  OnDrawCell = TimeTableGridDrawCell
                end
                object ComboBox1: TComboBox
                  Left = 10
                  Top = 30
                  Width = 178
                  Height = 24
                  ItemHeight = 16
                  TabOrder = 1
                  Text = 'ComboBox1'
                end
                object TimeTableGrid_SelectAllButton: TButton
                  Left = 404
                  Top = 79
                  Width = 109
                  Height = 31
                  Caption = 'Select All'
                  TabOrder = 2
                  OnClick = TimeTableGrid_SelectAllButtonClick
                end
                object TimeTableGrid_deSelectButton: TButton
                  Left = 404
                  Top = 118
                  Width = 109
                  Height = 31
                  Caption = 'De-Select All'
                  TabOrder = 3
                  OnClick = TimeTableGrid_deSelectButtonClick
                end
                object TimeTableGrid_SelectMark: TButton
                  Left = 404
                  Top = 177
                  Width = 109
                  Height = 31
                  Caption = 'Select Mark'
                  TabOrder = 4
                  OnClick = TimeTableGrid_SelectMarkClick
                end
                object TimeTableGrid_deSelectMark: TButton
                  Left = 404
                  Top = 217
                  Width = 109
                  Height = 30
                  Caption = 'De-Sel. Mark'
                  TabOrder = 5
                  OnClick = TimeTableGrid_deSelectMarkClick
                end
                object TimeTableGrid_MultipleCheck: TCheckBox
                  Left = 404
                  Top = 266
                  Width = 119
                  Height = 21
                  Caption = 'Multiple Select'
                  TabOrder = 6
                end
                object TimeTableGrid_Location_List: TComboBox
                  Left = 207
                  Top = 30
                  Width = 178
                  Height = 27
                  Style = csOwnerDrawFixed
                  DropDownCount = 9
                  ItemHeight = 21
                  TabOrder = 7
                  OnDrawItem = TimeTableGrid_Location_ListDrawItem
                  OnMeasureItem = TimeTableGrid_Location_ListMeasureItem
                  OnSelect = TimeTableGrid_Location_ListSelect
                end
                object TimeTableGrid_WeekList: TComboBox
                  Left = 404
                  Top = 30
                  Width = 112
                  Height = 24
                  Style = csDropDownList
                  ItemHeight = 16
                  TabOrder = 8
                  Items.Strings = (
                    'ALL'
                    ' 1'
                    ' 2'
                    ' 3'
                    ' 4'
                    ' 5'
                    ' 6'
                    ' 7'
                    ' 8'
                    ' 9'
                    '10'
                    '11'
                    '12'
                    '13'
                    '14'
                    '15'
                    '16'
                    '17'
                    '18'
                    '19'
                    '20'
                    '21'
                    '22'
                    '23'
                    '24'
                    '25'
                    '26'
                    '27'
                    '28'
                    '29'
                    '30'
                    '31'
                    '32'
                    '33'
                    '34'
                    '35'
                    '36'
                    '37'
                    '38'
                    '39'
                    '40'
                    '41'
                    '42'
                    '43'
                    '44'
                    '45'
                    '46'
                    '47'
                    '48'
                    '49'
                    '50'
                    '51'
                    '52'
                    '53')
                end
                object ListBox4: TListBox
                  Left = 10
                  Top = 443
                  Width = 178
                  Height = 208
                  ItemHeight = 16
                  TabOrder = 9
                end
                object ListBox5: TListBox
                  Left = 217
                  Top = 443
                  Width = 178
                  Height = 208
                  ItemHeight = 16
                  TabOrder = 10
                end
                object PageControl3: TPageControl
                  Left = 542
                  Top = 6
                  Width = 493
                  Height = 257
                  ActivePage = TabSheet1
                  TabOrder = 11
                  object TabSheet1: TTabSheet
                    Caption = 'User/Login DataBase'
                    object Panel5: TPanel
                      Left = 0
                      Top = 0
                      Width = 485
                      Height = 50
                      Align = alTop
                      TabOrder = 0
                      object Button3: TButton
                        Left = 0
                        Top = 10
                        Width = 92
                        Height = 31
                        Caption = 'Add User'
                        TabOrder = 0
                      end
                      object Button4: TButton
                        Left = 108
                        Top = 10
                        Width = 93
                        Height = 31
                        Caption = 'Delete User'
                        TabOrder = 1
                      end
                    end
                    object DBGrid3: TDBGrid
                      Left = 0
                      Top = 50
                      Width = 485
                      Height = 176
                      Align = alClient
                      TabOrder = 1
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -13
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = []
                      Columns = <
                        item
                          Expanded = False
                          Title.Caption = 'Nick'
                          Visible = True
                        end
                        item
                          Expanded = False
                          Title.Caption = 'Password'
                          Width = 81
                          Visible = True
                        end
                        item
                          Expanded = False
                          Title.Caption = 'Location'
                          Width = 128
                          Visible = True
                        end
                        item
                          Expanded = False
                          Title.Caption = 'Last seen'
                          Visible = True
                        end>
                    end
                  end
                end
                object ScrollBox3: TScrollBox
                  Left = 542
                  Top = 305
                  Width = 286
                  Height = 307
                  TabOrder = 12
                  object UserNameLabel: TLabel
                    Left = 10
                    Top = 10
                    Width = 70
                    Height = 16
                    Caption = 'Nick Name:'
                  end
                  object UserPasswordLabel: TLabel
                    Left = 10
                    Top = 39
                    Width = 63
                    Height = 16
                    Caption = 'Password:'
                  end
                  object UserLocationLabel: TLabel
                    Left = 10
                    Top = 69
                    Width = 54
                    Height = 16
                    Caption = 'Location:'
                  end
                  object LastActiveLabel: TLabel
                    Left = 10
                    Top = 101
                    Width = 68
                    Height = 16
                    Caption = 'Last Active:'
                  end
                  object Label4: TLabel
                    Left = 10
                    Top = 130
                    Width = 30
                    Height = 16
                    Caption = 'Path:'
                  end
                  object Label20: TLabel
                    Left = 10
                    Top = 199
                    Width = 44
                    Height = 16
                    Caption = 'E-Mail :'
                  end
                  object Label21: TLabel
                    Left = 10
                    Top = 229
                    Width = 45
                    Height = 16
                    Caption = 'Phone :'
                  end
                  object Label22: TLabel
                    Left = 10
                    Top = 258
                    Width = 43
                    Height = 16
                    Caption = 'Name :'
                  end
                  object Image1: TImage
                    Left = 204
                    Top = 159
                    Width = 31
                    Height = 29
                    Picture.Data = {
                      07544269746D617042100000424D421000000000000042000000280000002000
                      000020000000010020000300000000100000130B0000130B0000000000000000
                      00000000FF0000FF0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB9976BFFC8AA81FFCCB188FFCEB38AFFD0B0
                      84FFCAA879FFBC9B68FFAB8C56FFDFD8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFD1B17EFEE6C999FEEBCFA2FFECD0A3FFE8CA9BFFE1C0
                      8DFFD8B57DFFCEA76AFFC39A59FFBB924EFFB48C4AFFE1D8CFFF676028FF215E
                      17EE036F18E200741AE2007319E0007319E0007319E1007319E100741AE00073
                      19E3006813D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFE2C190FEECD1A8FFF0D8B1FFEFD6AEFFECD0A4FFE6C6
                      96FFDDBB85FFD4AD73FFC99E5FFFC19350FFBC8B47FFF6F3F0FF3A6A1DFF009D
                      2EFF00D24DFF00DC52FF00DB51FF00DB51FF00DC51FF00DB51FF00DC51FF00DB
                      51FF00B53BFF007919D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFE5C79AFEF0D7B1FFF3DCB8FFF1DAB4FFEED3A9FFE7C8
                      99FFDFBB87FFD5AE76FFCCA265FFC29553FFBD8C48FFFFFFFFFF2D711AFF00C6
                      45FF00F961FF00ED57FF00EE58FF00EE58FF00EE58FF00EE58FF00ED56FF00F8
                      5EFF00E356FF008E23E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD99
                      68FFB78C54FFB98E57FCE8C99EFFF3DBB6FFF5DFBCFFF4DCB9FFF0D5ADFFE8C9
                      9BFFDFBC88FFD7B078FFCEA568FFC49857FFBE8E4BFFFFFFFFFF2F711AFF00CD
                      46FF00EC55FF00CC42FF00CE43FF00CE43FF00CE43FF00CE43FF00CB41FF00DE
                      4EFF00E454FF009224E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC09866CDE7CD
                      A6F9CFAB75FFBF9761FFE8CBA1FFF4DEBAFFF7E2C2FFF6E0BEFFF1D7B1FFEACB
                      9DFFE1BE8AFFD8B27BFFD0A76BFFC89C5CFFBF904EFFF6F3F0FF2F721BFF00CB
                      41FF00E350FF00C03FFF00C240FF00C340FF00C340FF00C340FF00BF3EFF00D4
                      49FF00E14DFF009222E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA678CFECD7
                      B8FAD1B282FEC39C69FFE8CAA2FFF5E1BFFFF8E6C9FFF8E4C5FFF4DBB7FFECCF
                      A3FFE3C18FFFDAB47DFFD2AA6FFFCAA062FFC29453FFE1D8CEFF2F731CFF00CB
                      3EFF00DB4AFF00B33AFF00B63AFF00B73AFF00B73AFF00B73AFF00B238FF00CA
                      43FF00E049FF009321E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9A575C8F0DE
                      C2FCD9BC91FEC5A16FFFE6C9A1FFF8E4C6FFFAECD2FFFAEACFFFF6DFBFFFEFD3
                      ABFFE6C595FFDCB781FFD5AD73FFCDA467FFC59958FFCBB9A3FF30731DFF00CB
                      54FF00F168FF00D950FF00D951FF00DA52FF00DA52FF00DA52FF00D84FFF00E7
                      5EFF00E364FF009029E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC09965B1F4E5
                      CCFDE3CBA5FEC7A473FFE0C29BFFF8E7CAFFFBEED7FFFBEDD6FFF7E3C5FFF1D6
                      B0FFE9C99BFFE0BC88FFD8B179FFD1A86DFFC89D5EFFD6C9BBFF30731EFF00CA
                      69FF00FF86FF00FF6AFF00FE6BFF00FE6BFF00FE6BFF00FE6BFF00FE68FF00FF
                      7BFF00E580FF008E31E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEE7E2CEF6E8
                      D0FCEFDBBCFECEAC7DFFD7B98FFFF7E4C6FFFBEED7FFFBF0D9FFF8E8CCFFF3DB
                      B7FFEBCDA1FFE3C291FFDDB883FFD7AF77FFCAA167FFE0D8CFFF317523FF00CB
                      6AFF00FF85FF00FF66FF00FF68FF00FF69FF00FF68FF00FF69FF00FF65FF00FF
                      79FF00E680FF008F31E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2
                      C7FCF6E8CEFED9BD93FFD3B58BFFF2DCBDFFFBECD3FFFBF0DBFFFAECD2FFF6E0
                      BFFFEFD3AAFFE7C89AFFE2C08FFFDBB682FFC69F68FFC7B8A6FF357B29FF00C5
                      63FF00FF8CFF00FF7BFF00FF7CFF00FF7CFF00FF7CFF00FF7CFF00FF7AFF00FF
                      88FF00E47DFF008C2EE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CB
                      A8EFFBEFDAFFE9D3B1FFD7BC94FFEAD2B0FFFAE8CDFFFCF0DBFFFCEFD8FFF9E6
                      C9FFF3D9B5FFEBCDA3FFE5C597FFD9B584FFC29B67FFB0905CFF56893FFF01A5
                      43FF00D671FF00E17CFF00E07AFF00DF7AFF00DF7AFF00DF7AFF00E07BFF00DE
                      79FF008C2EFF008C2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA5
                      73A9FCF0D9FFF6E8CFFEE7D1AEFFEAD4B2FFF9E8CDFFFDF1DDFFFDF1DDFFFAEB
                      D1FFF5E0BEFFEFD4ACFFE8C99CFFDBB888FFCEAA77FFD1B07FFFB4B17AFF6199
                      50FF29852FFF4F8D53F1008C2EFF008C2EFF008C2EFF008C2EFF008C2EFF008C
                      2EFF008C2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFE9D3B0FCFFF9E6FFF7EBD4FFF6E6CCFFFBEED7FFFDF3E0FFFDF3DFFFFBED
                      D5FFF7E3C2FFF2D9B3FFECCEA4FFE4C496FFE1C090FFE3C292FFDEC091FEBDA8
                      72FFD1CCBFF1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFCBA470A3F4E6C9FFFFFCECFFFCF4E0FFFCF2DFFFFCF2E0FFFCF1DDFFFAEC
                      D2FFF7E5C5FFF5DCB8FFEFD4ABFFEACCA0FFE7C89AFFE5C594FFD8B483FFBC92
                      5AEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFD6B687C5EFDDC0FFFFFDE9FFFFFAE5FFFFF8E3FFFFF8E1FFFFF3
                      D6FFFFECCAFFFCE2BCFFF4D7ABFFECCC9EFEE4C495FAD7B482F9C0965DE5FFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFCEAB7AAAD8BE95FFE3CFABFFE9D6B4FFD8C5A2FFCEB7
                      93FFC7AD87FFC8AB81FFCFAE7EFED7B380FFCEA975FFBE9A6FEEFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB39263B2AA8A5EFFAD916EFFBBA5
                      8FFFBBA58FFFBBA58FFFBBA58FFFBBA58FFFD4C5B5CFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA17C4DFEB48E5FFFBD98
                      69FFC09A6DFFBA9468FFAC865BFFD1C6BDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB38F5FFFC6A171FFCEA977FFD0AB
                      7AFFD1AD7EFFD2AD80FFCCA87AFFBA9469FF9E7A51EDFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB39365FFDCBC90FFE1C396FFE0C090FFDCBA
                      88FFD8B581FFD6B281FFD4B081FFCDA87AFFB69063FF98754BD8FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8BB90FFF1DBB7FFF1DCB8FFEFD8B0FFEACE
                      A1FFE4C490FFDEBA84FFD6B17EFFCEA777FFC09768FFA67F52F2FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFDBD1C6ECF0DBB7FFF7EACEFFF9EDD2FFF7E9CAFFF3DF
                      B8FFEDD1A2FFE6C48FFFDDB781FFD1A976FFC49A69FFB4926DFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFAF9466ECF9EAC9FFFAF1D9FFFBF2DBFFFAF0D8FFF8E9
                      CBFFF2DBB2FFEBCD9BFFE2BF88FFD7B079FFC9A16DFFE4DAD1FFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFB29767D1F4E1BEFFFCF4DEFFFBF3DEFFFCF3DEFFFAEE
                      D4FFF5E2BEFFEED2A4FFE5C48EFFDAB57CFFCDA56FFFD2BEABFCFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFB195629DDFC89CFFFEF7DEFFFBF2DEFFFCF2DDFFFBEF
                      D7FFF7E5C3FFF0D5A7FFE7C68FFFDDB77EFFCEA56FFFE6DDD4F6FFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFA88A563EBBA06FF0F4E2BCFFFDF4DCFFFCF1D9FFFAEE
                      D1FFF5E3BFFFEED3A4FFE6C38DFFDDB57DFEC49D67FBFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFAF915D79C7AA77FCECD6ACFFFAEACAFFF6E4
                      C1FFF2DBB2FFEBCD9BFFE0BB84FFC8A26BFFF5F1EEF8FFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA88B5865B59863DAD3B27CFBE3C2
                      8EFFE7C58FFFD8B57DFEBF9D66F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                    Stretch = True
                  end
                  object DBEdit1: TDBEdit
                    Left = 89
                    Top = 10
                    Width = 149
                    Height = 24
                    TabOrder = 0
                  end
                  object DBEdit2: TDBEdit
                    Left = 89
                    Top = 39
                    Width = 149
                    Height = 24
                    TabOrder = 1
                  end
                  object DBEdit3: TDBEdit
                    Left = 89
                    Top = 69
                    Width = 149
                    Height = 24
                    TabOrder = 2
                  end
                  object DBEdit4: TDBEdit
                    Left = 89
                    Top = 98
                    Width = 149
                    Height = 24
                    TabOrder = 3
                  end
                  object DBEdit6: TDBEdit
                    Left = 89
                    Top = 128
                    Width = 149
                    Height = 24
                    TabOrder = 4
                  end
                  object DBCheckBox1: TDBCheckBox
                    Left = 89
                    Top = 159
                    Width = 119
                    Height = 21
                    Caption = 'Locked'
                    Font.Charset = ANSI_CHARSET
                    Font.Color = clBlack
                    Font.Height = -14
                    Font.Name = 'MS Sans Serif'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 5
                    ValueChecked = 'True'
                    ValueUnchecked = 'False'
                  end
                  object DBEdit7: TDBEdit
                    Left = 89
                    Top = 197
                    Width = 149
                    Height = 24
                    TabOrder = 6
                  end
                  object DBEdit8: TDBEdit
                    Left = 89
                    Top = 226
                    Width = 149
                    Height = 24
                    TabOrder = 7
                  end
                  object DBEdit9: TDBEdit
                    Left = 89
                    Top = 256
                    Width = 149
                    Height = 24
                    TabOrder = 8
                  end
                end
                object DBNavigator1: TDBNavigator
                  Left = 542
                  Top = 270
                  Width = 490
                  Height = 29
                  TabOrder = 13
                end
              end
            end
            object TabSheet9: TTabSheet
              Caption = 'Help Desk'
              ImageIndex = 2
              object ScrollBox8: TScrollBox
                Left = 0
                Top = 0
                Width = 1204
                Height = 558
                Align = alClient
                TabOrder = 0
                DesignSize = (
                  1200
                  554)
                object Panel15: TPanel
                  Left = 10
                  Top = 10
                  Width = 1173
                  Height = 129
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                  DesignSize = (
                    1173
                    129)
                  object Button6: TButton
                    Left = 10
                    Top = 9
                    Width = 92
                    Height = 27
                    Caption = 'Connect'
                    TabOrder = 0
                  end
                  object Edit3: TEdit
                    Left = 118
                    Top = 10
                    Width = 149
                    Height = 21
                    TabOrder = 1
                    Text = 'Edit3'
                  end
                  object Button7: TButton
                    Left = 10
                    Top = 48
                    Width = 92
                    Height = 27
                    Caption = 'Port'
                    TabOrder = 2
                  end
                  object Edit4: TEdit
                    Left = 118
                    Top = 49
                    Width = 149
                    Height = 21
                    TabOrder = 3
                    Text = 'Edit3'
                  end
                  object Button8: TButton
                    Left = 10
                    Top = 87
                    Width = 92
                    Height = 27
                    Caption = 'Proxy'
                    TabOrder = 4
                  end
                  object Edit5: TEdit
                    Left = 118
                    Top = 89
                    Width = 149
                    Height = 21
                    TabOrder = 5
                    Text = 'Edit3'
                  end
                  object ListBox1: TListBox
                    Left = 295
                    Top = 10
                    Width = 858
                    Height = 100
                    Anchors = [akLeft, akTop, akRight]
                    ItemHeight = 16
                    TabOrder = 6
                  end
                end
                object PageControl15: TPageControl
                  Left = 10
                  Top = 158
                  Width = 927
                  Height = 587
                  ActivePage = TabSheet39
                  Anchors = [akLeft, akTop, akBottom]
                  TabOrder = 1
                  object TabSheet39: TTabSheet
                    Caption = 'Desktops'
                    object ScrollBox36: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 919
                      Height = 651
                      Align = alClient
                      TabOrder = 0
                    end
                  end
                  object TabSheet43: TTabSheet
                    Caption = 'Terminals'
                    ImageIndex = 1
                    object ScrollBox41: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 919
                      Height = 651
                      Align = alClient
                      TabOrder = 0
                    end
                  end
                end
                object ListBox21: TListBox
                  Left = 965
                  Top = 183
                  Width = 218
                  Height = 562
                  Anchors = [akLeft, akTop, akBottom]
                  ItemHeight = 16
                  TabOrder = 2
                end
              end
            end
            object TabSheet12: TTabSheet
              Caption = 'Help Chat'
              ImageIndex = 3
              object ScrollBox9: TScrollBox
                Left = 0
                Top = 0
                Width = 1204
                Height = 558
                Align = alClient
                TabOrder = 0
                DesignSize = (
                  1200
                  554)
                object Panel19: TPanel
                  Left = 10
                  Top = 10
                  Width = 1119
                  Height = 493
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                  DesignSize = (
                    1119
                    493)
                  object Button14: TButton
                    Left = 10
                    Top = 9
                    Width = 92
                    Height = 27
                    Caption = 'Connect'
                    TabOrder = 0
                  end
                  object Edit6: TEdit
                    Left = 118
                    Top = 10
                    Width = 149
                    Height = 21
                    TabOrder = 1
                    Text = 'Edit3'
                  end
                  object Button15: TButton
                    Left = 10
                    Top = 48
                    Width = 92
                    Height = 27
                    Caption = 'Port'
                    TabOrder = 2
                  end
                  object Edit7: TEdit
                    Left = 118
                    Top = 49
                    Width = 149
                    Height = 21
                    TabOrder = 3
                    Text = 'Edit3'
                  end
                  object Button16: TButton
                    Left = 10
                    Top = 87
                    Width = 92
                    Height = 27
                    Caption = 'Proxy'
                    TabOrder = 4
                  end
                  object Edit8: TEdit
                    Left = 118
                    Top = 89
                    Width = 149
                    Height = 21
                    TabOrder = 5
                    Text = 'Edit3'
                  end
                  object ListBox2: TListBox
                    Left = 295
                    Top = 10
                    Width = 804
                    Height = 395
                    Anchors = [akLeft, akTop, akRight]
                    ItemHeight = 16
                    TabOrder = 6
                  end
                  object Button17: TButton
                    Left = 10
                    Top = 137
                    Width = 92
                    Height = 27
                    Caption = 'User Name'
                    TabOrder = 7
                  end
                  object Edit9: TEdit
                    Left = 118
                    Top = 138
                    Width = 149
                    Height = 21
                    TabOrder = 8
                    Text = 'Edit3'
                  end
                  object ListBox20: TListBox
                    Left = 10
                    Top = 207
                    Width = 257
                    Height = 198
                    ItemHeight = 16
                    TabOrder = 9
                  end
                  object RichEdit1: TRichEdit
                    Left = 295
                    Top = 414
                    Width = 779
                    Height = 60
                    Lines.Strings = (
                      'RichEdit1')
                    TabOrder = 10
                  end
                  object ChatSendTextButton: TJvImgBtn
                    Left = 148
                    Top = 414
                    Width = 117
                    Height = 60
                    Caption = 'Send'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -14
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 11
                    OnClick = BackgroundViewButtonClick
                    Color = 8454016
                    HotTrackFont.Charset = DEFAULT_CHARSET
                    HotTrackFont.Color = clWindowText
                    HotTrackFont.Height = -14
                    HotTrackFont.Name = 'MS Sans Serif'
                    HotTrackFont.Style = []
                  end
                end
              end
            end
            object TabSheet13: TTabSheet
              Caption = 'Voice'
              ImageIndex = 4
              object ScrollBox10: TScrollBox
                Left = 0
                Top = 0
                Width = 1204
                Height = 558
                Align = alClient
                TabOrder = 0
                DesignSize = (
                  1200
                  554)
                object Panel20: TPanel
                  Left = 10
                  Top = 10
                  Width = 578
                  Height = 178
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                  DesignSize = (
                    578
                    178)
                  object Button18: TButton
                    Left = 10
                    Top = 9
                    Width = 92
                    Height = 27
                    Caption = 'Connect'
                    TabOrder = 0
                  end
                  object Edit10: TEdit
                    Left = 118
                    Top = 10
                    Width = 149
                    Height = 21
                    TabOrder = 1
                    Text = 'Edit3'
                  end
                  object Button19: TButton
                    Left = 10
                    Top = 48
                    Width = 92
                    Height = 27
                    Caption = 'Port'
                    TabOrder = 2
                  end
                  object Edit11: TEdit
                    Left = 118
                    Top = 49
                    Width = 149
                    Height = 21
                    TabOrder = 3
                    Text = 'Edit3'
                  end
                  object Button20: TButton
                    Left = 10
                    Top = 87
                    Width = 92
                    Height = 27
                    Caption = 'Proxy'
                    TabOrder = 4
                  end
                  object Edit12: TEdit
                    Left = 118
                    Top = 89
                    Width = 149
                    Height = 21
                    TabOrder = 5
                    Text = 'Edit3'
                  end
                  object ListBox3: TListBox
                    Left = 295
                    Top = 10
                    Width = 263
                    Height = 149
                    Anchors = [akLeft, akTop, akRight]
                    ItemHeight = 16
                    TabOrder = 6
                  end
                  object Button21: TButton
                    Left = 10
                    Top = 137
                    Width = 92
                    Height = 27
                    Caption = 'User Name'
                    TabOrder = 7
                  end
                  object Edit13: TEdit
                    Left = 118
                    Top = 138
                    Width = 149
                    Height = 21
                    TabOrder = 8
                    Text = 'Edit3'
                  end
                end
              end
            end
            object TabSheet20: TTabSheet
              Caption = 'Message'#39's'
              ImageIndex = 5
              object ScrollBox18: TScrollBox
                Left = 0
                Top = 0
                Width = 1204
                Height = 558
                Align = alClient
                TabOrder = 0
                object Label11: TLabel
                  Left = 10
                  Top = 12
                  Width = 108
                  Height = 16
                  Caption = 'Message Type'#39's :'
                end
                object PageControl8: TPageControl
                  Left = 10
                  Top = 41
                  Width = 552
                  Height = 472
                  ActivePage = TabSheet14
                  TabOrder = 0
                  object TabSheet14: TTabSheet
                    Caption = 'System Wide'
                    object ScrollBox12: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 544
                      Height = 441
                      Align = alClient
                      TabOrder = 0
                      object Memo1: TMemo
                        Left = 10
                        Top = 10
                        Width = 356
                        Height = 178
                        Lines.Strings = (
                          'Memo1')
                        TabOrder = 0
                      end
                      object ListBox16: TListBox
                        Left = 217
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 1
                      end
                      object ListBox17: TListBox
                        Left = 10
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 2
                      end
                    end
                  end
                  object TabSheet15: TTabSheet
                    Caption = 'Login'
                    ImageIndex = 1
                    object ScrollBox13: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 544
                      Height = 441
                      Align = alClient
                      TabOrder = 0
                      object Memo2: TMemo
                        Left = 10
                        Top = 10
                        Width = 356
                        Height = 178
                        Lines.Strings = (
                          'Memo1')
                        TabOrder = 0
                      end
                      object ListBox14: TListBox
                        Left = 217
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 1
                      end
                      object ListBox15: TListBox
                        Left = 10
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 2
                      end
                    end
                  end
                  object TabSheet16: TTabSheet
                    Caption = 'Info'
                    ImageIndex = 2
                    object ScrollBox14: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 544
                      Height = 441
                      Align = alClient
                      TabOrder = 0
                      object Memo3: TMemo
                        Left = 10
                        Top = 10
                        Width = 356
                        Height = 178
                        Lines.Strings = (
                          'Memo1')
                        TabOrder = 0
                      end
                      object ListBox12: TListBox
                        Left = 217
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 1
                      end
                      object ListBox13: TListBox
                        Left = 10
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 2
                      end
                    end
                  end
                  object TabSheet17: TTabSheet
                    Caption = 'Warning'
                    ImageIndex = 3
                    object ScrollBox15: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 544
                      Height = 441
                      Align = alClient
                      TabOrder = 0
                      object Memo4: TMemo
                        Left = 10
                        Top = 10
                        Width = 356
                        Height = 178
                        Lines.Strings = (
                          'Memo1')
                        TabOrder = 0
                      end
                      object ListBox10: TListBox
                        Left = 217
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 1
                      end
                      object ListBox11: TListBox
                        Left = 10
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 2
                      end
                    end
                  end
                  object TabSheet18: TTabSheet
                    Caption = 'Kick'
                    ImageIndex = 4
                    object ScrollBox16: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 544
                      Height = 441
                      Align = alClient
                      TabOrder = 0
                      object Memo5: TMemo
                        Left = 10
                        Top = 10
                        Width = 356
                        Height = 178
                        Lines.Strings = (
                          'Memo1')
                        TabOrder = 0
                      end
                      object ListBox8: TListBox
                        Left = 217
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 1
                      end
                      object ListBox9: TListBox
                        Left = 10
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 2
                      end
                    end
                  end
                  object TabSheet19: TTabSheet
                    Caption = 'Banned'
                    ImageIndex = 5
                    object ScrollBox17: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 544
                      Height = 441
                      Align = alClient
                      TabOrder = 0
                      object Memo6: TMemo
                        Left = 10
                        Top = 10
                        Width = 356
                        Height = 178
                        Lines.Strings = (
                          'Memo1')
                        TabOrder = 0
                      end
                      object ListBox6: TListBox
                        Left = 10
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 1
                      end
                      object ListBox7: TListBox
                        Left = 217
                        Top = 217
                        Width = 149
                        Height = 188
                        ItemHeight = 16
                        TabOrder = 2
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
      object TabSheet33: TTabSheet
        Caption = 'Setup'
        ImageIndex = 5
        object ScrollBox6: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object Splitter14: TSplitter
            Left = 228
            Top = 0
            Height = 589
          end
          object Panel14: TPanel
            Left = 0
            Top = 0
            Width = 228
            Height = 589
            Align = alLeft
            TabOrder = 0
            object Splitter19: TSplitter
              Left = 1
              Top = 222
              Width = 226
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object Panel34: TPanel
              Left = 1
              Top = 1
              Width = 226
              Height = 51
              Align = alTop
              Caption = 'Screens'
              TabOrder = 0
            end
            object SetupPageTreeView: TJvSettingsTreeView
              Left = 1
              Top = 52
              Width = 226
              Height = 170
              PageDefault = 0
              PageList = SetupPageList
              Align = alTop
              Indent = 19
              TabOrder = 1
              OnClick = SetupPageTreeViewClick
              Items.Data = {
                02000000220000000000000000000000FFFFFFFFFFFFFFFF0100000002000000
                094C616E67756167657320000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
                00000000000007456E676C6973681F000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFF0000000000000000064765726D616E210000000000000000000000FFFFFF
                FFFFFFFFFF0100000002000000084D616E696665737424000000020000000200
                0000FFFFFFFFFFFFFFFF01000000000000000B4170706C69636174696F6E2200
                0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000009526573736F
                75726365}
              Items.Links = {06000000010000000000000000000000010000000100000000000000}
            end
          end
          object Panel29: TPanel
            Left = 231
            Top = 0
            Width = 1051
            Height = 589
            Align = alClient
            Caption = 'Panel29'
            TabOrder = 1
            object Splitter16: TSplitter
              Left = 1
              Top = 438
              Width = 1049
              Height = 4
              Cursor = crVSplit
              Align = alBottom
            end
            object Splitter17: TSplitter
              Left = 1
              Top = 52
              Width = 1049
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object Splitter18: TSplitter
              Left = 788
              Top = 55
              Width = 4
              Height = 383
              Align = alRight
            end
            object Panel31: TPanel
              Left = 1
              Top = 442
              Width = 1049
              Height = 146
              Align = alBottom
              Caption = 'Panel31'
              TabOrder = 0
            end
            object Panel32: TPanel
              Left = 1
              Top = 1
              Width = 1049
              Height = 51
              Align = alTop
              Caption = 'Panel32'
              TabOrder = 1
            end
            object Panel33: TPanel
              Left = 792
              Top = 55
              Width = 258
              Height = 383
              Align = alRight
              Caption = 'Panel33'
              TabOrder = 2
            end
            object SetupPageList: TJvPageList
              Left = 1
              Top = 55
              Width = 787
              Height = 383
              ActivePage = SetupPageLanguage
              PropagateEnable = False
              Align = alClient
              object SetupPageLanguage: TJvStandardPage
                Left = 0
                Top = 0
                Width = 787
                Height = 383
                Caption = 'JvStandardPage1'
                object ScrollBox38: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 787
                  Height = 383
                  Align = alClient
                  TabOrder = 0
                  DesignSize = (
                    783
                    379)
                  object SetupLangPageControl: TPageControl
                    Left = 0
                    Top = 0
                    Width = 1037
                    Height = 525
                    ActivePage = SetupPageLangDEU
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 0
                    object SetupPageLangENU: TTabSheet
                      Caption = 'English'
                    end
                    object SetupPageLangDEU: TTabSheet
                      Caption = 'Gernan'
                      ImageIndex = 1
                      object ScrollBox40: TScrollBox
                        Left = 0
                        Top = 0
                        Width = 1029
                        Height = 494
                        Align = alClient
                        TabOrder = 0
                      end
                    end
                  end
                end
              end
              object LangPage0: TJvStandardPage
                Left = 0
                Top = 0
                Width = 787
                Height = 383
                object SetupLangInfoLabel: TLabel
                  Left = 10
                  Top = 10
                  Width = 365
                  Height = 119
                  Alignment = taCenter
                  AutoSize = False
                  Caption = 'labler'
                  WordWrap = True
                end
              end
            end
          end
        end
      end
      object TaskPageDevelopment: TTabSheet
        Caption = 'Development'
        ImageIndex = 7
        object DevPanelBar: TJvTabBar
          Left = 0
          Top = 0
          Width = 1286
          Height = 29
          CloseButton = False
          PageList = DevPageList
          Painter = JvModernTabBarPainter1
          Tabs = <
            item
              Caption = 'Design'
              Selected = True
            end
            item
              Caption = 'Editor'
            end
            item
              Caption = 'SQL-Builder'
            end
            item
              Caption = 'Tables'
            end
            item
              Caption = 'DEBUG'
            end>
          OnTabSelected = DevPanelBarTabSelected
        end
        object DevPageList: TJvPageList
          Left = 0
          Top = 29
          Width = 1286
          Height = 564
          ActivePage = EditorPage
          PropagateEnable = False
          Align = alClient
          object DesignerPage: TJvStandardPage
            Left = 0
            Top = 0
            Width = 1286
            Height = 564
            Caption = 'DesignerPage'
            OnShow = DesignerPageShow
            object ScrollBox31: TScrollBox
              Left = 0
              Top = 0
              Width = 1286
              Height = 564
              Align = alClient
              TabOrder = 0
              object Splitter4: TSplitter
                Left = 238
                Top = 0
                Height = 560
              end
              object Panel16: TPanel
                Left = 0
                Top = 0
                Width = 238
                Height = 560
                Align = alLeft
                TabOrder = 0
                object Splitter5: TSplitter
                  Left = 1
                  Top = 436
                  Width = 236
                  Height = 3
                  Cursor = crVSplit
                  Align = alTop
                end
                object Panel17: TPanel
                  Left = 1
                  Top = 1
                  Width = 236
                  Height = 31
                  Align = alTop
                  TabOrder = 0
                  object DesignerControlsComboBox: TJvCheckedComboBox
                    Left = 1
                    Top = 1
                    Width = 234
                    Height = 29
                    Items.Strings = (
                      'Form'
                      '')
                    CapSelectAll = '&Select all'
                    CapDeSelectAll = '&Deselect all'
                    CapInvertAll = '&Invert all'
                    Align = alClient
                    TabOrder = 0
                  end
                end
                object PageControl10: TPageControl
                  Left = 1
                  Top = 32
                  Width = 236
                  Height = 404
                  ActivePage = TabSheet36
                  Align = alTop
                  TabOrder = 1
                  object TabSheet36: TTabSheet
                    Caption = 'Properties'
                    object JvInspector1: TJvInspector
                      Left = 0
                      Top = 0
                      Width = 228
                      Height = 373
                      Style = isItemPainter
                      Align = alClient
                      ItemHeight = 16
                      Painter = BorlandPainter
                      AfterItemCreate = JvInspector1AfterItemCreate
                      TabStop = True
                      TabOrder = 0
                      OnDataValueChanged = JvInspector1DataValueChanged
                      OnItemValueChanging = JvInspector1ItemValueChanging
                    end
                  end
                  object TabSheet37: TTabSheet
                    Caption = 'Events'
                    ImageIndex = 1
                    object JvInspector2: TJvInspector
                      Left = 0
                      Top = 0
                      Width = 225
                      Height = 369
                      Align = alClient
                      ItemHeight = 16
                      TabStop = True
                      TabOrder = 0
                    end
                  end
                end
                object Panel24: TPanel
                  Left = 1
                  Top = 439
                  Width = 236
                  Height = 36
                  Align = alTop
                  Caption = 'Panel24'
                  TabOrder = 2
                end
                object ListView1: TListView
                  Left = 1
                  Top = 475
                  Width = 236
                  Height = 84
                  Align = alClient
                  Columns = <>
                  TabOrder = 3
                end
              end
              object Panel18: TPanel
                Left = 241
                Top = 0
                Width = 1041
                Height = 560
                Align = alClient
                Caption = 'Panel18'
                TabOrder = 1
                object Splitter6: TSplitter
                  Left = 891
                  Top = 41
                  Height = 518
                end
                object Panel21: TPanel
                  Left = 1
                  Top = 1
                  Width = 1039
                  Height = 40
                  Align = alTop
                  Caption = 'Panel17'
                  TabOrder = 0
                  object AppSwitchButton: TJvImgBtn
                    Tag = 1
                    Left = 0
                    Top = 4
                    Width = 92
                    Height = 30
                    Caption = 'DOS-App'
                    TabOrder = 0
                    OnClick = AppSwitchButtonClick
                    Color = clLime
                  end
                end
                object Panel25: TPanel
                  Left = 1
                  Top = 41
                  Width = 890
                  Height = 518
                  Align = alLeft
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  Caption = 'Panel25'
                  TabOrder = 1
                  object JvDesignScrollBox1: TJvDesignScrollBox
                    Left = 1
                    Top = 1
                    Width = 887
                    Height = 516
                    Align = alLeft
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    TabOrder = 0
                    object DevelopmentDesignerPanel: TJvDesignPanel
                      Left = 0
                      Top = 0
                      Width = 1477
                      Height = 1260
                      TabOrder = 0
                      OnGetAddClass = DevelopmentDesignerPanelGetAddClass
                      OnSelectionChange = DevelopmentDesignerPanelSelectionChange
                    end
                  end
                end
                object ScrollBox32: TScrollBox
                  Left = 894
                  Top = 41
                  Width = 146
                  Height = 518
                  Align = alClient
                  Anchors = [akTop, akRight, akBottom]
                  TabOrder = 2
                  object ProgressBar1: TProgressBar
                    Left = 0
                    Top = 0
                    Width = 110
                    Height = 20
                    TabOrder = 0
                  end
                end
              end
            end
          end
          object EditorPage: TJvStandardPage
            Left = 0
            Top = 0
            Width = 1286
            Height = 564
            Caption = 'EditorPage'
            OnShow = EditorPageShow
            object ScrollBox30: TScrollBox
              Left = 0
              Top = 0
              Width = 1286
              Height = 564
              Align = alClient
              TabOrder = 0
              object Panel4: TPanel
                Left = 0
                Top = 0
                Width = 1282
                Height = 560
                Align = alClient
                TabOrder = 0
                object Splitter10: TSplitter
                  Left = 198
                  Top = 1
                  Width = 4
                  Height = 558
                end
                object Splitter11: TSplitter
                  Left = 1016
                  Top = 1
                  Height = 558
                  Align = alRight
                end
                object PageControl12: TPageControl
                  Left = 1019
                  Top = 1
                  Width = 262
                  Height = 558
                  ActivePage = TabSheet38
                  Align = alRight
                  TabOrder = 0
                  object TabSheet38: TTabSheet
                    Caption = 'Git'
                    object ScrollBox33: TScrollBox
                      Left = 0
                      Top = 0
                      Width = 254
                      Height = 527
                      Align = alClient
                      TabOrder = 0
                      object Splitter12: TSplitter
                        Left = 0
                        Top = 238
                        Width = 250
                        Height = 3
                        Cursor = crVSplit
                        Align = alTop
                      end
                      object Panel27: TPanel
                        Left = 0
                        Top = 0
                        Width = 250
                        Height = 238
                        Align = alTop
                        Caption = 'Reprosities'
                        TabOrder = 0
                        object ScrollBox35: TScrollBox
                          Left = 1
                          Top = 1
                          Width = 248
                          Height = 236
                          Align = alClient
                          TabOrder = 0
                          object Splitter13: TSplitter
                            Left = 0
                            Top = 41
                            Width = 4
                            Height = 171
                          end
                          object JvSettingsTreeView1: TJvSettingsTreeView
                            Left = 0
                            Top = 39
                            Width = 208
                            Height = 170
                            PageDefault = 0
                            PageList = JvPageList1
                            Indent = 19
                            TabOrder = 0
                            Items.Data = {
                              040000001D000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0100000000000000
                              047A7A7A7A220000000100000001000000FFFFFFFFFFFFFFFF01000000020000
                              00097A7A7A7A7A676767671E000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF01
                              0000000000000005687A6868681D000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                              FF000000000000000004363736371C0000000100000001000000FFFFFFFFFFFF
                              FFFF01000000010000000367676723000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                              FFFF01000000000000000A393938393839383938391F00000001000000010000
                              00FFFFFFFFFFFFFFFF0000000001000000066868686868681F000000FFFFFFFF
                              FFFFFFFFFFFFFFFFFFFFFFFF000000000000000006303030303939}
                            Items.Links = {
                              0800000001000000010000000100000000000000010000000100000000000000
                              00000000}
                          end
                          object JvPageList1: TJvPageList
                            Left = 213
                            Top = 41
                            Width = 418
                            Height = 167
                            ActivePage = JvStandardPage1
                            PropagateEnable = False
                            object JvStandardPage1: TJvStandardPage
                              Left = 0
                              Top = 0
                              Width = 418
                              Height = 167
                              Caption = 'JvStandardPage1'
                            end
                            object JvStandardPage2: TJvStandardPage
                              Left = 0
                              Top = 0
                              Width = 418
                              Height = 167
                              Caption = 'JvStandardPage2'
                              object JvImageComboBox1: TJvImageComboBox
                                Left = 148
                                Top = 20
                                Width = 178
                                Height = 26
                                Style = csOwnerDrawVariable
                                ButtonStyle = fsLighter
                                DroppedWidth = 178
                                ImageHeight = 0
                                ImageWidth = 0
                                ItemHeight = 20
                                ItemIndex = -1
                                TabOrder = 0
                                Items = <>
                              end
                            end
                          end
                          object Panel28: TPanel
                            Left = 0
                            Top = 0
                            Width = 631
                            Height = 41
                            Align = alTop
                            Alignment = taLeftJustify
                            Caption = ' Reprositories'
                            TabOrder = 2
                          end
                        end
                      end
                      object Panel30: TPanel
                        Left = 0
                        Top = 241
                        Width = 250
                        Height = 51
                        Align = alTop
                        Caption = 'Panel29'
                        TabOrder = 1
                      end
                      object ScrollBox34: TScrollBox
                        Left = 0
                        Top = 292
                        Width = 250
                        Height = 231
                        Align = alClient
                        TabOrder = 2
                        object SynEdit2: TSynEdit
                          Left = 0
                          Top = 0
                          Width = 246
                          Height = 159
                          Align = alTop
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -16
                          Font.Name = 'Courier New'
                          Font.Style = []
                          TabOrder = 0
                          Gutter.Font.Charset = DEFAULT_CHARSET
                          Gutter.Font.Color = clWindowText
                          Gutter.Font.Height = -14
                          Gutter.Font.Name = 'Courier New'
                          Gutter.Font.Style = []
                          Gutter.LeftOffset = 20
                          Gutter.Width = 37
                          Lines.UnicodeStrings = 'SynEdit1'
                          FontSmoothing = fsmNone
                        end
                      end
                    end
                  end
                end
                object Panel1: TPanel
                  Left = 1
                  Top = 1
                  Width = 197
                  Height = 558
                  Align = alLeft
                  TabOrder = 1
                  object Splitter1: TSplitter
                    Left = 1
                    Top = 287
                    Width = 195
                    Height = 3
                    Cursor = crVSplit
                    Align = alTop
                  end
                  object ListBox18: TJvSettingsTreeView
                    Left = 1
                    Top = 31
                    Width = 195
                    Height = 256
                    PageDefault = 0
                    Align = alTop
                    Indent = 19
                    TabOrder = 0
                    Items.Data = {
                      0200000024000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
                      0B50726F636564757265277323000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                      00000000000000000A46756E6374696F6E2773}
                    Items.Links = {020000000000000000000000}
                  end
                  object Panel3: TPanel
                    Left = 1
                    Top = 1
                    Width = 195
                    Height = 30
                    Align = alTop
                    Caption = 'Panel3'
                    TabOrder = 1
                    object JvCheckedComboBox1: TJvCheckedComboBox
                      Left = 1
                      Top = 1
                      Width = 193
                      Height = 28
                      Items.Strings = (
                        'Form'
                        '')
                      CapSelectAll = '&Select all'
                      CapDeSelectAll = '&Deselect all'
                      CapInvertAll = '&Invert all'
                      Align = alClient
                      TabOrder = 0
                    end
                  end
                  object Panel13: TPanel
                    Left = 1
                    Top = 290
                    Width = 195
                    Height = 26
                    Align = alTop
                    Caption = 'Panel13'
                    TabOrder = 2
                  end
                  object ListBox19: TListBox
                    Left = 1
                    Top = 316
                    Width = 195
                    Height = 241
                    Align = alClient
                    Columns = 1
                    ItemHeight = 16
                    Items.Strings = (
                      'tztzt'
                      'kjhhkj'
                      '433434')
                    TabOrder = 3
                  end
                end
                object ScrollBox39: TScrollBox
                  Left = 202
                  Top = 1
                  Width = 814
                  Height = 558
                  Align = alClient
                  TabOrder = 2
                  object Panel6: TPanel
                    Left = 0
                    Top = 0
                    Width = 898
                    Height = 586
                    TabOrder = 0
                    object Splitter2: TSplitter
                      Left = 1
                      Top = 490
                      Width = 896
                      Height = 4
                      Cursor = crVSplit
                      Align = alTop
                    end
                    object EditorScrollBox: TScrollBox
                      Left = 1
                      Top = 106
                      Width = 896
                      Height = 384
                      Align = alTop
                      TabOrder = 0
                      object SourceEditorSplitter: TSplitter
                        Left = 472
                        Top = 0
                        Width = 4
                        Height = 380
                        OnCanResize = SourceEditorSplitterCanResize
                      end
                      object Panel48: TPanel
                        Left = 0
                        Top = 0
                        Width = 472
                        Height = 380
                        Align = alLeft
                        Anchors = [akLeft, akTop, akRight]
                        Caption = 'Panel48'
                        TabOrder = 0
                        object SourceTextEditor: TSynEdit
                          Left = 1
                          Top = 1
                          Width = 470
                          Height = 378
                          Align = alClient
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -16
                          Font.Name = 'Courier New'
                          Font.Style = []
                          TabOrder = 0
                          OnClick = SourceTextEditorClick
                          OnKeyDown = SourceTextEditorKeyDown
                          OnKeyPress = SourceTextEditorKeyPress
                          OnKeyUp = SourceTextEditorKeyUp
                          OnMouseDown = SourceTextEditorMouseDown
                          Gutter.AutoSize = True
                          Gutter.Font.Charset = DEFAULT_CHARSET
                          Gutter.Font.Color = clWindowText
                          Gutter.Font.Height = -14
                          Gutter.Font.Name = 'Courier New'
                          Gutter.Font.Style = [fsBold]
                          Gutter.LeftOffset = 20
                          Gutter.ShowLineNumbers = True
                          Gutter.Width = 37
                          Lines.UnicodeStrings = 
                            '** END HEADER -- do not remove this line'#13#10'//'#13#10'// Generated on 09' +
                            '/28/97'#13#10'//'#13#10'parameter bModal'#13#10'local f'#13#10'f = new AboutForm()'#13#10'if (' +
                            'bModal)'#13#10'  f.mdi = .f.   // ensure not MDI'#13#10'  f.readModal()'#13#10'els' +
                            'e'#13#10'  f.open()'#13#10'endif'#13#10#13#10'CLASS AboutForm OF FORM'#13#10#13#10'ENDCLASS'
                          SearchEngine = SynEditSearch1
                          WantTabs = True
                          OnChange = SourceTextEditorChange
                          FontSmoothing = fsmNone
                        end
                      end
                      object ScrollBox53: TScrollBox
                        Left = 476
                        Top = 0
                        Width = 416
                        Height = 380
                        Align = alClient
                        TabOrder = 1
                        object SpeedButton1: TSpeedButton
                          Left = 310
                          Top = 167
                          Width = 41
                          Height = 41
                          OnClick = SpeedButton1Click
                        end
                        object Label12: TLabel
                          Left = 21
                          Top = 149
                          Width = 98
                          Height = 16
                          Caption = 'Output Directory:'
                        end
                        object SourceTextEditorRedo: TJvImgBtn
                          Tag = 1
                          Left = 260
                          Top = 309
                          Width = 92
                          Height = 33
                          Caption = 'Redo'
                          TabOrder = 0
                          OnClick = SourceTextEditorDeleteClick
                          Color = 8454016
                        end
                        object SourceTextEditorUndo: TJvImgBtn
                          Tag = 1
                          Left = 260
                          Top = 230
                          Width = 92
                          Height = 33
                          Caption = 'Undo'
                          TabOrder = 1
                          OnClick = SourceTextEditorUndoClick
                          Color = 8454016
                        end
                        object SourceTextEditorSelectAll: TJvImgBtn
                          Tag = 1
                          Left = 144
                          Top = 309
                          Width = 92
                          Height = 33
                          Caption = 'Select All'
                          TabOrder = 2
                          OnClick = SourceTextEditorSelectAllClick
                          Color = 8454016
                        end
                        object SourceTextEditorDelete: TJvImgBtn
                          Tag = 1
                          Left = 144
                          Top = 230
                          Width = 92
                          Height = 33
                          Caption = 'Delete'
                          TabOrder = 3
                          OnClick = SourceTextEditorDeleteClick
                          Color = 8454016
                        end
                        object SourceTextEditorPaste: TJvImgBtn
                          Tag = 1
                          Left = 16
                          Top = 309
                          Width = 92
                          Height = 33
                          Caption = 'Paste'
                          TabOrder = 4
                          OnClick = SourceTextEditorPasteClick
                          Color = 8454016
                        end
                        object SourceTextEditorCopy: TJvImgBtn
                          Tag = 1
                          Left = 16
                          Top = 270
                          Width = 92
                          Height = 33
                          Caption = 'Copy'
                          TabOrder = 5
                          OnClick = SourceTextEditorCopyClick
                          Color = 8454016
                        end
                        object SourceTextEditorCut: TJvImgBtn
                          Tag = 1
                          Left = 16
                          Top = 230
                          Width = 92
                          Height = 33
                          Caption = 'Cut'
                          TabOrder = 6
                          OnClick = SourceTextEditorCutClick
                          Color = 8454016
                        end
                        object TranspileOutputEdit: TEdit
                          Left = 18
                          Top = 177
                          Width = 269
                          Height = 24
                          TabOrder = 7
                        end
                        object RadioGroup1: TRadioGroup
                          Left = 137
                          Top = 10
                          Width = 209
                          Height = 119
                          Caption = ' Output: '
                          TabOrder = 8
                        end
                        object RadioButton2: TRadioButton
                          Left = 151
                          Top = 92
                          Width = 175
                          Height = 21
                          Caption = 'C++ Builder VCL'
                          TabOrder = 9
                        end
                        object RadioButton3: TRadioButton
                          Left = 151
                          Top = 63
                          Width = 175
                          Height = 21
                          Caption = 'GNU C++ Qt5'
                          TabOrder = 10
                        end
                        object RadioButton1: TRadioButton
                          Left = 151
                          Top = 33
                          Width = 175
                          Height = 21
                          Caption = 'Delphi VCL'
                          Checked = True
                          TabOrder = 11
                          TabStop = True
                        end
                        object JvImgBtn6: TJvImgBtn
                          Tag = 1
                          Left = 16
                          Top = 97
                          Width = 92
                          Height = 32
                          Caption = 'Compile'
                          TabOrder = 12
                          OnClick = JvImgBtn6Click
                          Color = clLime
                        end
                        object JvImgBtn1: TJvImgBtn
                          Tag = 1
                          Left = 16
                          Top = 57
                          Width = 92
                          Height = 32
                          Caption = 'Interpret'
                          TabOrder = 13
                          OnClick = CompileButtonClick
                          Color = clLime
                        end
                        object CompileButton: TJvImgBtn
                          Tag = 1
                          Left = 16
                          Top = 14
                          Width = 92
                          Height = 33
                          Caption = 'Transpile'
                          TabOrder = 14
                          OnClick = CompileButtonClick
                          Color = clLime
                        end
                      end
                    end
                    object Panel26: TPanel
                      Left = 1
                      Top = 494
                      Width = 896
                      Height = 91
                      Align = alClient
                      TabOrder = 1
                      DesignSize = (
                        896
                        91)
                      object JvImgBtn4: TJvImgBtn
                        Tag = 1
                        Left = 784
                        Top = 11
                        Width = 92
                        Height = 31
                        Anchors = [akTop, akRight]
                        Caption = 'Transpile'
                        TabOrder = 0
                        OnClick = CompileButtonClick
                        Color = clLime
                      end
                      object JvImgBtn5: TJvImgBtn
                        Tag = 1
                        Left = 784
                        Top = 50
                        Width = 92
                        Height = 31
                        Anchors = [akTop, akRight]
                        Caption = 'Transpile'
                        TabOrder = 1
                        OnClick = CompileButtonClick
                        Color = clLime
                      end
                      object SourceCodeGrid: TStringGrid
                        Left = 1
                        Top = 1
                        Width = 765
                        Height = 93
                        Anchors = [akLeft, akTop, akRight, akBottom]
                        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSizing, goColSizing, goRowSelect]
                        TabOrder = 2
                      end
                    end
                    object Panel43: TPanel
                      Left = 1
                      Top = 73
                      Width = 896
                      Height = 33
                      Align = alTop
                      Caption = 'Panel43'
                      TabOrder = 2
                      object JvTabBar1: TJvTabBar
                        Left = 1
                        Top = 1
                        Width = 894
                        Height = 29
                        Painter = JvModernTabBarPainter2
                        Tabs = <
                          item
                            Caption = 'Editor '
                            Selected = True
                          end
                          item
                            Caption = 'Designer '
                          end>
                      end
                    end
                    object Panel47: TPanel
                      Left = 1
                      Top = 1
                      Width = 896
                      Height = 72
                      Align = alTop
                      TabOrder = 3
                      object JvSpeedButton7: TJvSpeedButton
                        Left = 10
                        Top = 5
                        Width = 60
                        Height = 60
                        Caption = 'Open'
                        Glyph.Data = {
                          42100000424D4210000000000000420000002800000020000000200000000100
                          20000300000000100000130B0000130B000000000000000000000000FF0000FF
                          0000FF000000000000000000000000000000020202060909084E232220962D2B
                          28B02D2B29B32D2B29B32D2B29B32D2B29B32D2B29B32D2B29B32D2B29B32D2B
                          29B32D2B29B3302E2BB333312EB333312EB333312EB332302DAC23211F890403
                          0334000000030000000000000000000000000000000000000000000000000000
                          00000000000000000000000000000303030C252422A57F7C76F9ACA79FFFBBB6
                          ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7
                          ADFFBFB9B0FFCEC6BBFFD3CBBFFFD3CBBFFFD3CBBFFFD0C8BCFFB9B2A8FE7873
                          6CF3141312720000000400000000000000000000000000000000000000000000
                          00000000000000000000010101021918167F918D86FDCAC4BAFFCCC6BCFFCCC6
                          BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFD1CB
                          C0FFE1D8CCFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE0D7
                          CAFF817C74F50909084700000000000000000000000000000000000000000000
                          000000000000000000000202020C474541E2C7C1B7FFCCC6BCFFCCC6BCFFCCC6
                          BCFFC9C3B9FFC2BCB3FFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFC1BAB1FFD0C8
                          BCFFD3CBBFFFD3CBBFFFD3CBBFFFDDD4C8FFE2DACDFFE5DCCFFFE5DCCFFFE5DC
                          CFFFCCC4B9FF312F2BA900000004000000000000000000000000000000000000
                          00000000000000000000000000236F6C66F6CAC4BAFFCCC6BCFFCCC6BCFFACA7
                          9EFF5F5C59FF6D6B6AFF737070FF737070FF737070FF757272FF7C7979FF7D7A
                          7AFF7D7A7AFF7D7A7AFF7D7A79FF716D6DFF7C7871FFD0C8BCFFE5DCCFFFE5DC
                          CFFFE1D8CBFF43403CD201010008000000000000000000000000000000000000
                          000000000000000000000000002976736CF7CAC4BAFFCCC6BCFFB9B4ABFF6765
                          64FFD3CECFFFE5E0E1FFE5E0E1FFE5E0E1FFE6E1E2FFF4EEEFFFF8F2F4FFF8F2
                          F4FFF8F2F4FFF8F2F4FFF8F2F4FFF7F1F3FFD3CED0FF726D68FFE0D8CBFFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF99948DFFAEAB
                          ABFFE8E3E4FFE8E3E4FFE8E3E4FFE8E3E3FFF5EFF1FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF9F3F5FF9A9697FFC3BCB1FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                          B5FFE8E3E4FFE8E3E4FFE8E3E4FFF2EDEDFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B5FFB7AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                          B5FFE8E3E4FFE8E3E4FFEDE7E8FFFAF4F6FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                          B5FFE8E3E4FFE9E3E4FFF8F2F4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                          B5FFE8E3E4FFF3EDEEFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                          B5FFEBE6E6FFFAF4F6FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                          B5FFF4EEEFFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFBCB7
                          B7FFFAF4F6FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF9F4F5FFE4DF
                          E1FFBBB6B8FFBAB6B7FFDFDADBFFF9F3F5FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFC5C0
                          C1FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF8F2F4FFA6A2A4FF4249
                          4DFF7595A2FF7B9DABFF424D52FF989596FFF7F1F3FFB9B4B6FFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97938BFFC7C2
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFC4BFC1FF51666FFFA8D6
                          E9FFB8EAFEFFB8EAFEFFB0E0F3FF68848FFF918E8FFFB2AEAFFFB6AFA5FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF99948CFFC7C3
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF7F1F3FF5D5D5FFF9AC4D4FFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E5F9FF688490FF2F2E2EFFB6AFA4FFE5DC
                          CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000000000002976736DF7CAC4BAFFCDC7BCFFA19C93FFC7C3
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF6F0F2FF464D51FFB5E6FAFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6F9FF688490FF837E76FFE1D8
                          CBFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                          000000000000000000004C4A45179F9B93EACBC5BBFFCFC9BEFFA8A198FFC7C3
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF7F1F3FF4E5053FFA5D2E4FFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6F9FF6A8793FF8882
                          7AFFDDD4C8FF484540DA01010109000000050000000300000000000000000000
                          000000000000000000002726231B8E8A83EFCBC5BBFFD4CDC2FFA9A299FFC7C3
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFAF4F6FFAEAAABFF688591FFB6E7
                          FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6FAFF6A87
                          93FF807B73FF3B3935DE0E1518712C3A40B5222D329E0304052C000000000000
                          000000000000000000005C595415A7A299E8CBC5BBFFD9D1C6FFAAA399FFC7C3
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF6F0F2FF878485FF6C8A
                          96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6
                          FAFF698692FF151C1EF97697A4FCB0DFF2FF9EC9DAFF3B4C54D7000000130000
                          000000000000000000001F1E1C1E8A867FF0CBC5BBFFDDD5C9FFAAA399FFC7C3
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF2ECEEFF8784
                          85FF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                          FFFFB5E6FAFF90B8C7FFB6E8FBFFB9EBFFFFB9EBFEFF82A7B5F90203044A0000
                          000000000000000000000000002976736DF7CBC5BBFFE0D7CBFFAAA399FFC7C2
                          C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF2EC
                          EEFF878485FF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFF8CB3C2FD0E14176A0000
                          000000000000000000000000002976736DF7CBC5BBFFE2DACDFFACA59BFFBDB9
                          BAFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                          F7FFF2ECEEFF878485FF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFF95BDCDFF192226840000
                          000100000000000000000000002976736CF7CCC6BBFFE4DBCEFFD0C7BCFF726E
                          6EFFE5DFE1FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2
                          F4FFF8F2F4FFEFE9EBFF807E7EFF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFA2CEDFFF2430359D0000
                          00030000000000000000000000236F6C66F6CCC6BBFFE4DBCEFFE4DBCFFFC1B9
                          AEFF686561FF787574FF7D7A7AFF7D7A7AFF7D7A7AFF7D7A7AFF7D7A7AFF7D7A
                          7AFF7D7A7AFF7D7A7AFF716E6DFF272625FF71919DFFB8E9FDFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB1E1F5FF2D3B41B70000
                          000500000000000000000201010C474541E2C9C3B9FFE4DBCEFFE5DCCFFFE5DC
                          CFFFE1D8CCFFD9D1C4FFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CB
                          BFFFD3CBBFFFD3CBBFFFCFC8BCFF736F68FF71909DFFB8E9FDFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB6E7FAFF35444BD10101
                          010800000000000000000100000219181780948F88FDE2D9CCFFE5DCCFFFE5DC
                          CFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DC
                          CFFFE5DCCFFFE5DCCFFFB8B1A7FF617B85FFB5E7FAFFB9EBFFFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB6E7FBFF455961EC0202
                          020B0000000000000000000000000303030C282724A6918B83F9C2BAAFFFD2CA
                          BEFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CB
                          BFFFD3CBBFFFD3CBBFFF9C968DFF83A7B6FFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                          FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB7E8FCFF5C7681F60000
                          001B00000000000000000000000000000000020202060B09084F2A2825953432
                          2EAC34322EAE34322EAE34322EAE34322EAE34322EAE34322EAE34322EAE3432
                          2EAE34322EAE34322EAE24221FB13E5158EEA7D5E7FFB6E7FBFFB6E8FCFFB7E9
                          FDFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB6E8FBFF5A747EF40000
                          001C000000000000000000000000000000000000000000000000000000020000
                          0004000000040000000400000004000000040000000400000004000000040000
                          0004000000040000000400000005070B0C3D29363BB33D4F56E1526972F46C8A
                          96F784A8B7F98BB1C0FB91B8C8FE9CC6D7FFA7D4E6FF89AEBDFD232E33AA0101
                          0105000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000502020209000000110000
                          002A01010144080D0E5F151D207A1F2A2F94263339A7161E217B020202120000
                          000000000000}
                        Margin = 1
                        Spacing = 4
                        Style = bsNew
                        Transparent = True
                      end
                      object JvSpeedButton8: TJvSpeedButton
                        Left = 78
                        Top = 5
                        Width = 60
                        Height = 60
                        Caption = 'Open'
                        Glyph.Data = {
                          42100000424D4210000000000000420000002800000020000000200000000100
                          20000300000000100000232E0000232E000000000000000000000000FF0000FF
                          0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FCFDFFF0F4F5FFE6EB
                          EDFFDFE4E6FFDCE1E4FFDEE3E6FFE6EAECFFEEF3F4FFF9FBFCFFFEFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFDFEFEFFEEF2F4FFD1D7DAFFC4CACDFFC9CFD2FFCED5
                          D9FFD2D9DDFFD0D7DAFFC6CCD1FFBBC1C5FFABB0B3FFB2B8BBFFCED4D7FFEBEF
                          F1FFFCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFF1F4F6FFD1D7D9FFD8DDE0FFEDF3F6FFEFF4F6FFDDDDDDFFD0CA
                          CBFFC9C1C0FFC8C2C2FFCCC9CBFFD9DCDFFFE9F1F6FFDCE3E8FFBDC2C7FFA3A7
                          ABFFC5CBCEFFEDF1F3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFE
                          FEFFE1E6E8FFDCE2E4FFF3F9FAFFDAD2CFFFB79487FF994F1AFF934A14FF8C47
                          18FF85421BFF803F1DFF7D3E1EFF7C3E1FFF814C3AFFA99897FFD3D4D8FFE3EA
                          EFFFB7BCC0FFA6ABAEFFDAE0E2FFFBFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFDFEFFDEE3
                          E6FFEDF4F4FFE3DDDAFFB27E66FFA05104FF974C10FF834119FF826156FF9588
                          85FFA19A9AFF9D9897FF8E8482FF6C544DFF602D1AFF6F361DFF7B3C1EFF9F86
                          81FFDADEE0FFD1D7DBFF9FA3A7FFCFD5D8FFFAFCFCFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFFE0E6E7FFF2F9
                          F8FFCFB9AEFFA65909FFA15306FF925B42FFB5ACA9FFD3D6D7FFDEE4E7FFD9DF
                          E1FFD7DDE0FFD4DBDEFFD3D9DCFFD8DDDFFFC7CBCCFFA19F9EFF613F36FF7237
                          1DFF874E37FFC7C2C2FFDBE0E4FF9FA3A6FFCFD5D8FFFBFDFDFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7ECEEFFF2F9F8FFC8A9
                          99FFAB5F17FFA1540AFFB5A09AFFE0E6E9FFE2E9ECFFE1E7E9FFE0E5E7FFDEE4
                          E6FFDCE2E4FFDAE0E3FFD9DEE1FFD6DCDFFFD4DBDEFFD3D9DBFFCFD4D6FF908A
                          88FF68321BFF86431AFFC4B8B5FFDADFE1FF9FA3A6FFDBE1E3FFFEFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F4F5FFEEF6F6FFCEB7AAFFAD62
                          1EFFA25713FFCDC6C4FFE8F1F5FFE6EFF3FFE5EDF1FFE4EBEFFFE3EAEDFFADB2
                          B3FF727575FF959A9BFFD8DDE0FFDBE1E4FFDAE0E3FFD8DEE1FFD5DCDFFFD6DD
                          DFFFADACACFF68321BFF8D4717FFCCC2BFFFCED2D5FFA7ACAFFFEEF2F4FFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE8EFF0FFE2D9D3FFAE6422FFA65A
                          11FFD1C9C7FFECF5FAFFEBF4F8FFEAF3F7FFE9F1F6FFE7F0F5FFB9C0C3FF0809
                          07FF070806FF060705FF8D9192FFE1E6E8FFDFE4E6FFDDE3E5FFDBE1E4FFD9DF
                          E2FFD8DFE1FFAEADADFF753A1BFF995835FFDAD9DAFFB2B6B8FFC7CDD0FFFCFE
                          FEFFFFFFFFFFFFFFFFFFFFFFFFFFEEF1F2FFF3F9F8FFB67E5BFFAB611CFFC2AB
                          A2FFF0F9FDFFEFF8FCFFEEF7FCFFEDF6FBFFECF5F9FFEBF4F8FF9EA4A6FF1111
                          10FF0D0E0CFF0A0A08FF6C6F70FFE4EBEEFFE2E9ECFFE1E8EAFFE0E6E8FFDEE4
                          E6FFDCE2E5FFDCE3E5FF968D8BFF8C4617FFB38E81FFDBE0E1FFA3A8ABFFEDF1
                          F2FFFFFFFFFFFFFFFFFFFFFFFFFFEBF1F2FFDACBC3FFAF6627FFAB6F4CFFEFF5
                          F7FFF2FBFEFFF2FBFEFFF1FAFEFFF0F9FDFFEFF8FCFFEEF7FCFFCFD7DBFF2220
                          22FF191819FF151414FFA6ACAFFFE7EFF4FFE5EDF2FFE4EBF0FFE3EAEEFFE2E9
                          ECFFE1E7E9FFE0E5E7FFD8DDDEFF7A4B38FF9D4F09FFD5D0CEFFB4B8BBFFD2D8
                          DBFFFFFFFFFFFFFFFFFFF6F6F6FFF3FAFAFFBC8B6CFFAD6420FFCFC1B9FFF5FD
                          FFFFF4FDFFFFF4FCFFFFF3FCFFFFF2FBFEFFF2FBFEFFF1FAFDFFF0F9FDFFD3DB
                          DFFFA6ACB0FFC1C7CCFFEBF4F8FFEAF3F7FFE9F2F6FFE8F0F5FFE7EEF3FFE5ED
                          F1FFE4EBEFFFE3EAEDFFE2E9EBFFADA6A5FF974D0EFFBD9F92FFCED3D5FFB6BC
                          BFFFFAFCFDFFFFFFFFFFF0F3F3FFECEDEAFFB16A2BFFA95F18FFEEF1F0FFF6FE
                          FEFFF6FEFEFFF5FDFFFFF5FDFFFFF4FCFFFFF4FCFFFFF3FBFEFFF1FAFDFFEEF7
                          FBFFEDF6FAFFECF5F9FFECF5FAFFEDF6FBFFECF5FAFFEBF4F8FFEAF3F7FFE9F1
                          F6FFE7F0F5FFE6EEF2FFE5ECF0FFD4D8DAFF8B4614FFAA6940FFDFE4E6FFA8AC
                          B0FFF1F5F6FFFFFFFFFFEFF3F3FFDED4CCFFB16B2BFFB6866EFFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF5FDFFFFF5FDFFFFC3CACCFF0607
                          05FF060705FF060705FF6D7274FFF0F9FDFFEFF8FCFFEEF7FCFFEDF6FBFFECF5
                          F9FFEBF4F7FFEAF3F7FFE9F1F6FFE9F1F5FF8F614FFFA75A0DFFD7D4D3FFB0B5
                          B8FFE9EDEFFFFFFFFFFFEAF0F0FFD3BEB1FFB16C2DFFC6AC9FFFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFCED4D5FF0607
                          05FF060705FF060705FF111312FFE0E8EAFFF2FBFEFFF1FAFEFFF0F9FDFFEFF8
                          FCFFEEF7FCFFEDF5FBFFECF5F9FFEAF3F7FFA68D85FFA85C12FFD0C4C0FFB7BC
                          BFFFE3E7EAFFFFFFFFFFF0F6F6FFD0B7A9FFB16D2DFFCBB5A9FFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFEDF5F5FF3436
                          35FF060705FF060705FF060705FF5E6162FFE4EBEEFFF3FCFFFFF2FBFEFFF2FB
                          FEFFF1FAFDFFF0F9FDFFEEF7FCFFEEF6FBFFB5A5A1FFA85D13FFCCBEB7FFBDC2
                          C5FFE1E6E8FFFFFFFFFFF1F6F6FFD1B8A8FFB26F2FFFCCB5AAFFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFC0C6
                          C6FF060705FF060705FF060705FF060705FF464949FFDAE1E3FFF4FCFFFFF4FC
                          FFFFF3FBFEFFF2FBFEFFF1FAFEFFF0F9FDFFB7A8A3FFA95E16FFCDBEB8FFBEC4
                          C7FFE4E9EBFFFFFFFFFFEAF0F0FFD4BEB1FFB37234FFC9AFA1FFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FE
                          FEFFBCC2C2FF090A08FF070806FF060705FF060705FF3B3D3DFFE2E9EAFFF5FD
                          FFFFF5FDFFFFF4FCFFFFF4FCFFFFF3FBFEFFAB9188FFAB601AFFD0C4BFFFBBC1
                          C4FFEBEFF1FFFFFFFFFFEFF4F4FFDED3CAFFB57536FFBC9075FFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFEDF4F4FFF1F9
                          F9FFF6FEFEFFC7CECDFF1D1E1DFF080907FF070806FF070806FF828686FFF6FE
                          FEFFF6FEFEFFF6FEFEFFF5FDFFFFF5FDFFFF9B6C55FFAD6320FFD7D3D1FFBDC3
                          C6FFF4F7F8FFFFFFFFFFEFF2F2FFECEBE7FFB67737FFAF6B25FFF0F4F3FFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFF929797FF747777FF373838FF111110FFCBD1
                          D1FFF6FEFEFFF6FEFEFFADB2B2FF090A08FF090A08FF080907FF090B09FFF1F9
                          F9FFF6FEFEFFF6FEFEFFF6FEFEFFE5E9E8FF9D530FFFB27142FFDFE3E5FFC0C6
                          C9FFFCFDFEFFFFFFFFFFF5F5F5FFF4FCFCFFBF9069FFB47433FFD7C9C0FFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFF666969FF191718FF181516FF161415FF8488
                          89FFF4FCFCFFF6FEFEFFAEB3B3FF0F0F0DFF0C0D0BFF0A0B09FF090A08FFEFF6
                          F6FFF6FEFEFFF6FEFEFFF6FEFEFFC2B6B1FFAA6018FFC3A190FFD3D8DAFFD9DF
                          E2FFFFFFFFFFFFFFFFFFFFFFFFFFEBF1F1FFDACBBFFFB77A3BFFB7815AFFF4F9
                          F8FFF6FEFEFFF6FEFEFFF6FEFEFFAEB4B4FF1E1C1EFF1C1A1CFF1A181AFF1816
                          17FF5E6161FF777B7BFF161515FF121211FF121110FF10100EFF606363FFF6FE
                          FEFFF6FEFEFFF6FEFEFFEEF5F4FF9E6340FFAF6827FFD6CECAFFC8CDD0FFF2F6
                          F7FFFFFFFFFFFFFFFFFFFFFFFFFFEFF1F1FFF3F8F6FFBD895AFFB57835FFD1BC
                          AFFFF6FEFEFFF6FEFEFFF6FEFEFFECF3F3FF4F5051FF222022FF201E20FF1E1C
                          1EFF1C191BFF1A1819FF181617FF171516FF151414FF131312FFC7CDCDFFF6FE
                          FEFFF6FEFEFFF6FEFEFFBAA69DFFAC631DFFBD937BFFDDE2E3FFD3D8DBFFFEFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFEBF1F1FFE0D6CCFFB97F3EFFB473
                          2DFFE0D8D2FFF6FEFEFFF6FEFEFFF6FEFEFFDBE2E2FF505152FF262426FF2321
                          23FF211F21FF1F1D1FFF1D1B1DFF1B191AFF1C1B1CFFB4B9BAFFF6FEFEFFF6FE
                          FEFFF6FEFEFFD1CAC7FFA75E15FFB27139FFDBD8D7FFCDD2D4FFF5F8F9FFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F6F6FFF2F9F9FFD0B6A0FFB97F
                          3EFFB5783CFFE0D8D2FFF6FEFEFFF6FEFEFFF6FEFEFFEDF5F5FFB9BEBFFF8A8D
                          8EFF6F7273FF6A6C6DFF7B7E7FFFA9AEAEFFE0E7E7FFF6FEFEFFF6FEFEFFF6FE
                          FEFFD3CCC8FFA65E17FFB36F2FFFD1C0B7FFD9DEE0FFE6EAEDFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF0F1FFF3F9F8FFCDAB
                          91FFBB8040FFB4752EFFD2BDB0FFF3F9F8FFF6FEFEFFF6FEFEFFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFF1F7F6FFC2AC
                          A2FFAB641AFFB47233FFCCB4A7FFDFE4E6FFDFE4E6FFFEFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF1F1FFF2F9
                          F8FFD2B9A4FFBC8243FFB87C39FFB8845BFFD8CAC0FFF0F4F3FFF6FEFEFFF6FE
                          FEFFF6FEFEFFF6FEFEFFF6FEFEFFF6FEFEFFEDF2F1FFCFC1BAFFAD744EFFB16E
                          2AFFB5773AFFD1C0B7FFE0E6EAFFE1E6E8FFFDFEFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEF0
                          F1FFF1F9F9FFE2DAD0FFC29263FFBC8242FFB87D3AFFB3722BFFBD9476FFCBB1
                          A2FFCCB7AAFFCBB6A9FFC8AE9FFFB88B6EFFAD6920FFB3732EFFB67839FFBF95
                          75FFDDDAD8FFDEE5E9FFE7EBEDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFF5F6F6FFECF1F2FFF3F8F9FFDED1C6FFC79E7AFFBC8343FFBB8242FFBA80
                          3EFFB97D3CFFB87C3AFFB87D3BFFB97E3DFFB97F3EFFC6A38AFFD9D1CCFFE6EC
                          F1FFE0E6E9FFF4F7F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFF0F1F2FFECF0F2FFF1F8FAFFECEFEEFFE1DAD3FFD8C9
                          BDFFD4C0B1FFD4BFB1FFD9CBC1FFDED8D5FFE8EDF0FFE5EDF2FFE5EAEDFFEFF2
                          F3FFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F7FFF0F2F3FFECF0F2FFEAEF
                          F2FFE5ECEEFFE4EAEDFFEBF0F3FFEAEEF1FFEFF1F2FFF9F9F9FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFF}
                        Margin = 1
                        Spacing = 4
                        Style = bsNew
                        Transparent = True
                      end
                      object modusButton: TJvArrowButton
                        Left = 158
                        Top = 20
                        Width = 188
                        Height = 30
                        AllowAllUp = True
                        ArrowWidth = 21
                        DropDown = JvPopupMenu1
                        DropOnButtonClick = True
                        Caption = 'dBase Mode 1'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -16
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold]
                        FillFont.Charset = DEFAULT_CHARSET
                        FillFont.Color = clWindowText
                        FillFont.Height = -12
                        FillFont.Name = 'MS Sans Serif'
                        FillFont.Style = [fsBold]
                        ParentFont = False
                      end
                      object JvSpeedButton9: TJvSpeedButton
                        Left = 363
                        Top = 4
                        Width = 62
                        Height = 61
                        Caption = 'Open'
                        Glyph.Data = {
                          42100000424D4210000000000000420000002800000020000000200000000100
                          20000300000000100000D70D0000D70D000000000000000000000000FF0000FF
                          0000FF0000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000A6A6A614A8A8
                          A838A8ABAB46A8ABAB46A8A8A838AEAEAE130000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000000FFFFFF01ABABAB43AAACAC9CAAABABE1AAABABFFAAAB
                          ABFFAAABABFFAAABABFFAAABABFFAAABABFFAAABABE0A9ABAB9BAAAAAA42FFFF
                          FF01000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          000000000000ABABAB3AACADADC4ACADADFFACADADFFACADADFFACADADFFACAD
                          ADFFACADADFFACADADFFACADADFFACADADFFACADADFFACADADFFACADADFFACAD
                          ADCAADADAD410000000000000000000000000000000000000000000000000000
                          000000000000000000000000000000000000000000000000000000000000AAAA
                          AA0FAEAEAEAEAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAF
                          AFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAF
                          AFFFAEAFAFFFAEAEAEABB6B6B60E000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000AFAFAF23B0B1
                          B0D5B0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1
                          B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1
                          B0FFB0B1B0FFB0B1B0FFB0B1B0D9B3B3B3280000000000000000000000000000
                          00000000000000000000000000000000000000000000B3B3B325B1B2B2ECB1B2
                          B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2
                          B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2
                          B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2EBB1B1B12400000000000000000000
                          000000000000000000000000000000000000B6B6B60EB3B4B4D4B3B4B4FFB3B4
                          B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4
                          B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4
                          B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4D7AFAFAF10000000000000
                          000000000000000000000000000000000000B5B7B5B0B5B6B5FFB5B6B5FFB5B6
                          B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6
                          B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6
                          B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B5B5AD000000000000
                          0000000000000000000000000000B7B7B740B6B8B7FFB6B8B7FFB6B8B7FFB6B8
                          B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8
                          B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8
                          B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB7B7B7430000
                          00000000000000000000FFFFFF01B8B9B9CCB8B9B9FFB8B9B9FFB8B9B9FFB8B9
                          B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FF8D9091FFB8B9B9FFB8B9
                          B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9
                          B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8BABACAFFFF
                          FF010000000000000000BBBBBB40BABBBAFFBABBBAFFBABBBAFFBABBBAFFBABB
                          BAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFF192224FF454B4CFF9EA1
                          A0FFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABB
                          BAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFB9B9
                          B93E0000000000000000BBBDBB8FBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBD
                          BCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFF1E2528FF1E2528FF2127
                          2AFF5D6263FFAEB0AFFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBD
                          BCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBCBD
                          BC8C0000000000000000BEBFBEDEBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBF
                          BEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFF22292BFF22292BFF2229
                          2BFF22292BFF2D3234FF757979FFB8BAB9FFBDBFBEFFBDBFBEFFBDBFBEFFBDBF
                          BEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBF
                          BEDC00000000BFBFBF18BFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0
                          BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFF272C2EFF272C2EFF272C
                          2EFF272C2FFF272D2FFF272D2FFF383F3FFF878A8AFFBEBFBEFFBFC0BFFFBFC0
                          BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0
                          BFFFC2C2C215C2C2C23BC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2
                          C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FF2B3032FF2B3032FF2B30
                          32FF2B3032FF2B3032FF2B3032FF2B3032FF2C3032FF4D5051FF9FA1A0FFC1C2
                          C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2
                          C1FFC0C0C039C1C4C44AC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
                          C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FF2F3335FF2F3335FF3033
                          35FF303435FF303435FF303435FF303435FF303435FF303435FF313537FF6164
                          65FFB0B2B2FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
                          C3FFC4C4C449C4C4C44AC4C5C4FFC6C6C6FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5
                          C4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FF343738FF343738FF3437
                          38FF343739FF343739FF343739FF343739FF343739FF343739FF36393BFF6467
                          67FFB3B5B4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FFC6C7C6FFC4C5
                          C4FFC3C6C348C7C7C73BC6C7C6FFC9CAC9FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7
                          C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FF383A3CFF383B3CFF383B
                          3CFF383B3CFF383B3CFF393B3CFF393B3CFF393B3CFF5C5F5FFFABACACFFC6C7
                          C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFCACBCAFFC6C7
                          C6FFC5C5C539CACACA18C7C9C8FFCBCDCCFFC7C9C8FFC7C9C8FFC7C9C8FFC7C9
                          C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FF3D3E3FFF3D3E3FFF3D3E
                          3FFF3D3E3FFF3D3E3FFF3D3E3FFF515253FF999B9AFFC7C9C8FFC7C9C8FFC7C9
                          C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFCCCDCCFFC7C9
                          C8FFC2CEC21500000000C9CBC9DED1D3D1FFC9CBC9FFC9CBC9FFC9CBC9FFC9CB
                          C9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FF414242FF414242FF4142
                          42FF414242FF4A4C4CFF898B8AFFC5C7C5FFC9CBC9FFC9CBC9FFC9CBC9FFC9CB
                          C9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFD1D4D1FFC9CB
                          C9DC0000000000000000CCCCCC90D3D4D3FFCCCDCCFFCBCCCBFFCBCCCBFFCBCC
                          CBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFF454546FF454546FF4848
                          49FF7B7B7BFFC0C1C0FFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCC
                          CBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCCCDCCFFD3D5D3FFCBCC
                          CB8D0000000000000000CBCFCB40CDD0CEFFD6D8D7FFCCCECDFFCCCECDFFCCCE
                          CDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFF4A4949FF6C6D6DFFB6B8
                          B7FFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCE
                          CDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFD7D8D8FFCDCFCEFFCECE
                          CE3E0000000000000000FFFFFF01CED0CECCDBDDDBFFCFD1CFFFCED0CEFFCED0
                          CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFAEB0AEFFCED0CEFFCED0
                          CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0
                          CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCFD1CFFFDBDCDBFFCED0CECFFFFF
                          FF02000000000000000000000000D0D4D041D2D4D2FFDCDEDCFFD0D2D0FFD0D2
                          D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2
                          D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2
                          D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFDDDFDDFFD2D3D2FFCED2CE440000
                          000000000000000000000000000000000000D3D3D3B2DCDDDCFFDADCDAFFD2D3
                          D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3
                          D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3
                          D2FFD2D3D2FFD2D3D2FFD2D3D2FFDBDCDBFFDCDDDCFFD2D3D2AF000000000000
                          000000000000000000000000000000000000DBDBDB0ED3D5D3D5E0E2E0FFD9DB
                          D9FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5
                          D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5
                          D3FFD3D5D3FFD3D5D3FFD9DCD9FFE0E2E0FFD3D5D3D8CFCFCF10000000000000
                          00000000000000000000000000000000000000000000D7D7D726D5D7D5EDE4E6
                          E4FFDEE1DEFFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7
                          D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7
                          D5FFD5D7D5FFDFE0DFFFE3E5E3FFD5D7D5ECD6D6D62500000000000000000000
                          0000000000000000000000000000000000000000000000000000D4DCD424D6D9
                          D6D6E1E3E1FFE5E7E5FFDADBDAFFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9
                          D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFDADB
                          DAFFE6E8E6FFE1E3E1FFD7DAD7DAD9D9D9280000000000000000000000000000
                          000000000000000000000000000000000000000000000000000000000000DFDF
                          DF10D8DAD8B1DCDDDCFFE7E9E7FFE5E7E5FFDDDFDDFFD8DAD8FFD8DAD8FFD8DA
                          D8FFD8DAD8FFD8DAD8FFD8DAD8FFD8DAD8FFD8DAD8FFDDDFDDFFE5E6E5FFE7E9
                          E7FFDCDDDCFFD7DAD7AEDDDDDD0F000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          000000000000D9DDD943DADCDACDDEE1DEFFE6E7E6FFEAEBEAFFE8E9E8FFE6E8
                          E6FFE4E5E4FFE4E5E4FFE6E8E6FFE8E9E8FFEAEBEAFFE6E7E6FFDEE1DEFFDADC
                          DACCD8DCD8420000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          00000000000000000000FFFFFF01DEDEDE45DCDDDC9FDCDEDCE3DEE0DEFFE0E3
                          E0FFE2E4E2FFE2E4E2FFE0E3E0FFDEE0DEFFDCDEDCE2DBDFDB9EDDDDDD44FFFF
                          FF01000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000DBDBDB15DCE1
                          DC3BDEDEDE46DEDEDE46DCE1DC3BDBDBDB150000000000000000000000000000
                          0000000000000000000000000000000000000000000000000000000000000000
                          000000000000}
                        Margin = 1
                        Spacing = 4
                        Style = bsNew
                        Transparent = True
                      end
                      object JvSpeedButton10: TJvSpeedButton
                        Left = 513
                        Top = 4
                        Width = 64
                        Height = 61
                        Caption = 'Open'
                        Glyph.Data = {
                          42100000424D4210000000000000420000002800000020000000200000000100
                          20000300000000100000232E0000232E000000000000000000000000FF0000FF
                          0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BF
                          C0FFC2B8B9FFC2B8B9FFC9BFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD5D6FFA99698FF835C59FF876339FF9679
                          36FF9F8635FF9F8635FF967836FF876239FF835D5AFFA99799FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFA89597FF825B43FFA58D32FFBBA82AFFBEAC28FFB6A2
                          2CFFB19D2EFFB19D2EFFB6A22CFFBEAC28FFBBA82AFFA58C32FF825B43FFA996
                          98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFE4E0E1FF886666FF9E8334FFBEAC28FFB19C2EFF917238FF7D5348FF9072
                          74FFA18E90FFA18E90FF907273FF7D5348FF927338FFB19C2EFFBEAB28FF9D82
                          35FF886768FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
                          E1FF815B57FFAD962FFFBBA82AFF917239FF8D6F70FFC8BFC0FFE9E7E7FFF0F0
                          F0FFF2F2F2FFF2F2F2FFF0F0F0FFE9E7E7FFC8BEBFFF8D6E6FFF927338FFBBA9
                          29FFAC9630FF825B58FFE9E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8866
                          66FFAD972FFFB7A42BFF825B44FFBAACAEFFEEECEDFFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEDECECFFB8A9ABFF825C
                          43FFB8A52BFFAC9530FF896768FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89597FF9E83
                          34FFBBA82AFF825B44FFC8BDBFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC7BC
                          BDFF825C43FFBBA929FF9D8135FFAA9799FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD5D6FF825B43FFBEAC
                          28FF917239FFB9ABADFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFB8AAABFF927338FFBDAB28FF815A44FFE4E0E0FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99698FFA58D32FFB19C
                          2EFF8D6F71FFEEEDEDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECECFFF2F1F1FFF2F2F2FFF2F2F2FFF2F2
                          F2FFEDECECFF8C6D6EFFB29D2DFFA48B32FFAA989AFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835D59FFBBA82AFF9272
                          38FFC8BFC0FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F1F1FFA28D8FFFC4B9BAFFF2F1F1FFF2F2F2FFF2F2
                          F2FFF2F2F2FFC7BDBEFF937438FFBBA82AFF835E5BFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD4D5FF876339FFBEAC28FF7D53
                          48FFE9E7E7FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF1F1F1FF957C7FFF794D44FFC3B8B9FFF1F1F1FFF2F2
                          F2FFF2F2F2FFE8E6E6FF7D5346FFBFAD28FF866139FFDFD9DAFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BFC0FF967936FFB6A22CFF9072
                          74FFF0F0F0FFF2F2F2FFAB999BFF805D60FF805E60FF805E60FF805E60FF805E
                          60FF805E60FF805E60FF805D60FF754747FFAF992EFF835E42FFC2B6B7FFF1F1
                          F1FFF2F2F2FFF0EFEFFF8E6F70FFB6A22BFF957736FFCAC0C1FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B8B9FF9F8635FFB19D2EFFA18E
                          90FFF2F2F2FFF1F1F1FF9B8587FFB09C2EFFBEAC29FFBEAC29FFBEAC29FFBEAC
                          29FFBEAC29FFBEAC29FFBEAC29FFBEAD28FFC1B027FFBAA72AFF835D40FFC5BA
                          BBFFF2F2F2FFF2F2F2FF9F8B8DFFB29E2EFF9D8435FFC3BABBFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B8B9FF9F8635FFB19D2EFFA18D
                          8FFFF2F2F2FFF1F1F1FF9B8587FFB09C2EFFBEAC29FFBEAC29FFBEAC29FFBEAC
                          29FFBEAC29FFBEAC29FFBEAC29FFBEAD28FFC1B027FFBAA72AFF835D40FFC5BA
                          BBFFF2F2F2FFF2F2F2FF9F8A8DFFB29E2EFF9D8435FFC3BABBFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BFC0FF967836FFB6A22CFF9071
                          73FFF0F0F0FFF2F2F2FFAB999BFF805D60FF805E60FF805E60FF805E60FF805E
                          60FF805E60FF805E60FF805D60FF754747FFAF992EFF835E41FFC2B6B7FFF1F1
                          F1FFF2F2F2FFF0EFEFFF8E6E70FFB6A22CFF957736FFCAC0C1FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD5D5FF876339FFBEAC28FF7D53
                          48FFE9E6E7FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF1F1F1FF957C7FFF7A4E44FFC3B8B9FFF1F1F1FFF2F2
                          F2FFF2F2F2FFE8E5E6FF7D5346FFBFAD28FF856139FFE4E0E0FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835D5AFFBBA82AFF9273
                          38FFC8BEBFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F1F1FFA28D90FFC4B9BBFFF2F1F1FFF2F2F2FFF2F2
                          F2FFF2F2F2FFC6BCBDFF937438FFBBA82AFF835E5CFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA9799FFA58C32FFB19C
                          2EFF8D6E70FFEEECECFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECEDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFEDECECFF8B6C6DFFB29D2DFFA48B32FFAB999CFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED9DAFF825B43FFBEAB
                          28FF927338FFB8AAACFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFB7A8AAFF937438FFBDAB29FF815A44FFE4E0E1FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99698FF9D82
                          34FFBBA929FF825C43FFC7BCBDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC5BA
                          BBFF835C42FFBCA929FF9C8135FFAB989AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8867
                          68FFAC9630FFB8A42BFF825C43FFB8AAACFFEDECECFFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEDECECFFB7A8AAFF835C
                          42FFB8A52BFFAB9530FF8A696AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E6
                          E7FF825B58FFAC9630FFBBA929FF927338FF8C6D6EFFC7BDBEFFE8E6E6FFF0EF
                          EFFFF2F2F2FFF2F2F2FFF0EFEFFFE8E5E6FFC6BCBDFF8B6C6DFF937438FFBCA9
                          29FFAB9530FF825D5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFE9E6E7FF896868FF9D8135FFBDAB28FFB29D2DFF937438FF7D5346FF8E6F
                          70FF9F8B8DFF9F8A8DFF8E6E70FF7D5346FF937438FFB29D2DFFBDAB29FF9C81
                          35FF89696AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFAA9799FF815A44FFA48B32FFBBA82AFFBFAD28FFB6A2
                          2BFFB29E2EFFB29E2EFFB6A22CFFBFAD28FFBBA82AFFA48B32FF815A44FFAB98
                          9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E0FFA99698FF835D5BFF866139FF9577
                          36FF9D8435FF9D8435FF957736FF866139FF835E5CFFAC9A9CFFE4E0E1FFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9DAFFCAC0
                          C1FFC3BABBFFC3BABBFFCAC0C1FFDFD9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFF}
                        Margin = 1
                        Spacing = 4
                        Style = bsNew
                        Transparent = True
                      end
                      object JvSpeedButton11: TJvSpeedButton
                        Left = 446
                        Top = 4
                        Width = 60
                        Height = 61
                        Caption = 'Open'
                        Glyph.Data = {
                          42100000424D4210000000000000420000002800000020000000200000000100
                          20000300000000100000130B0000130B000000000000000000000000FF0000FF
                          0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BF
                          C0FFC2B8B9FFC2B8B9FFC9BFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99799FF835D5AFF876239FF9678
                          36FF9F8635FF9F8635FF967936FF876339FF835C59FFA99698FFDBD5D6FFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFA99698FF825B43FFA58C32FFBBA82AFFBEAC28FFB6A2
                          2CFFB19D2EFFB19D2EFFB6A22CFFBEAC28FFBBA82AFFA58D32FF825B43FFA895
                          97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFF886768FF9D8235FFBEAB28FFB19C2EFF927338FF7D5348FF9072
                          73FFA18E90FFA18E90FF907274FF7D5348FF917238FFB19C2EFFBEAC28FF9E83
                          34FF886666FFE4E0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E6
                          E7FF825B58FFAC9630FFBBA929FF927338FF8D6E6FFFC8BEBFFFE9E7E7FFF0F0
                          F0FFF2F2F2FFF2F2F2FFF0F0F0FFE9E7E7FFC8BFC0FF8D6F70FF917239FFBBA8
                          2AFFAD962FFF815B57FFE4E0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8967
                          68FFAC9530FFB8A52BFF825C43FFB8A9ABFFEDECECFFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECEDFFBAACAEFF825B
                          44FFB7A42BFFAD972FFF886666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA9799FF9D81
                          35FFBBA929FF825C43FFC7BCBDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC8BD
                          BFFF825B44FFBBA82AFF9E8334FFA89597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E0FF815A44FFBDAB
                          28FF927338FFB8AAABFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFB9ABADFF917239FFBEAC28FF825B43FFDBD5D6FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA989AFFA48B32FFB29D
                          2DFF8C6D6EFFEDECECFFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFEEECECFFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFEEEDEDFF8D6F71FFB19C2EFFA58D32FFA99698FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835E5BFFBBA82AFF9374
                          38FFC7BDBEFFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFC4B9BAFFA28D8FFFF2F1
                          F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFC8BFC0FF927238FFBBA82AFF835D59FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9DAFF866139FFBFAD28FF7D53
                          46FFE8E6E6FFF2F2F2FFF2F2F2FFF1F1F1FFC3B8B9FF794D44FF957C7FFFF1F1
                          F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFE9E7E7FF7D5348FFBEAC28FF876339FFDAD4D5FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC0C1FF957736FFB6A22BFF8E6F
                          70FFF0EFEFFFF2F2F2FFF1F1F1FFC2B6B7FF835E42FFAF992EFF754747FF805D
                          60FF805E60FF805E60FF805E60FF805E60FF805E60FF805E60FF805D60FFAB99
                          9BFFF2F2F2FFF0F0F0FF907274FFB6A22CFF967936FFC9BFC0FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3BABBFF9D8435FFB29E2EFF9F8B
                          8DFFF2F2F2FFF2F2F2FFC5BABBFF835D40FFBAA72AFFC1B027FFBEAD28FFBEAC
                          29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFB09C2EFF9B85
                          87FFF1F1F1FFF2F2F2FFA18E90FFB19D2EFF9F8635FFC2B8B9FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3BABBFF9D8435FFB29E2EFF9F8A
                          8DFFF2F2F2FFF2F2F2FFC5BABBFF835D40FFBAA72AFFC1B027FFBEAD28FFBEAC
                          29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFB09C2EFF9B85
                          87FFF1F1F1FFF2F2F2FFA18D8FFFB19D2EFF9F8635FFC2B8B9FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC0C1FF957736FFB6A22CFF8E6E
                          70FFF0EFEFFFF2F2F2FFF1F1F1FFC2B6B7FF835E41FFAF992EFF754747FF805D
                          60FF805E60FF805E60FF805E60FF805E60FF805E60FF805E60FF805D60FFAB99
                          9BFFF2F2F2FFF0F0F0FF907173FFB6A22CFF967836FFC9BFC0FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E0FF856139FFBFAD28FF7D53
                          46FFE8E5E6FFF2F2F2FFF2F2F2FFF1F1F1FFC3B8B9FF7A4E44FF957C7FFFF1F1
                          F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFE9E6E7FF7D5348FFBEAC28FF876339FFDAD5D5FFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835E5CFFBBA82AFF9374
                          38FFC6BCBDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFC4B9BBFFA28D90FFF2F1
                          F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFC8BEBFFF927338FFBBA82AFF835D5AFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB999CFFA48B32FFB29D
                          2DFF8B6C6DFFEDECECFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECEDFFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFEEECECFF8D6E70FFB19C2EFFA58C32FFAA9799FFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E1FF815A44FFBDAB
                          29FF937438FFB7A8AAFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFB8AAACFF927338FFBEAB28FF825B43FFDED9DAFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB989AFF9C81
                          35FFBCA929FF835C42FFC5BABBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC7BC
                          BDFF825C43FFBBA929FF9D8234FFA99698FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A69
                          6AFFAB9530FFB8A52BFF835C42FFB7A8AAFFEDECECFFF2F2F2FFF2F2F2FFF2F2
                          F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEDECECFFB8AAACFF825C
                          43FFB8A42BFFAC9630FF886768FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFF825D5AFFAB9530FFBCA929FF937438FF8B6C6DFFC6BCBDFFE8E5E6FFF0EF
                          EFFFF2F2F2FFF2F2F2FFF0EFEFFFE8E6E6FFC7BDBEFF8C6D6EFF927338FFBBA9
                          29FFAC9630FF825B58FFE9E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFF89696AFF9C8135FFBDAB29FFB29D2DFF937438FF7D5346FF8E6E
                          70FF9F8A8DFF9F8B8DFF8E6F70FF7D5346FF937438FFB29D2DFFBDAB28FF9D81
                          35FF896868FFE9E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFAB989AFF815A44FFA48B32FFBBA82AFFBFAD28FFB6A2
                          2CFFB29E2EFFB29E2EFFB6A22BFFBFAD28FFBBA82AFFA48B32FF815A44FFAA97
                          99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E1FFAC9A9CFF835E5CFF866139FF9577
                          36FF9D8435FF9D8435FF957736FF866139FF835D5BFFA99698FFE4E0E0FFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9DAFFCAC0
                          C1FFC3BABBFFC3BABBFFCAC0C1FFDFD9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                          FFFFFFFFFFFF}
                        Margin = 1
                        Spacing = 4
                        Style = bsNew
                        Transparent = True
                      end
                    end
                  end
                end
              end
            end
          end
          object SQLPage: TJvStandardPage
            Left = 0
            Top = 0
            Width = 1286
            Height = 564
            Caption = 'SQL-Builder'
            object ScrollBox49: TScrollBox
              Left = 0
              Top = 0
              Width = 1237
              Height = 602
              Align = alClient
              TabOrder = 0
              object StringGrid1: TStringGrid
                Left = 0
                Top = 440
                Width = 1233
                Height = 158
                Align = alBottom
                TabOrder = 0
                RowHeights = (
                  24
                  24
                  24
                  24
                  24)
              end
              object JvScrollBox1: TJvScrollBox
                Left = 21
                Top = 0
                Width = 1212
                Height = 419
                Align = alClient
                PopupMenu = SQLBuilderMenu
                TabOrder = 1
                object SQLBuilderPainter: TPaintBox
                  Left = 0
                  Top = 0
                  Width = 1154
                  Height = 527
                  OnPaint = SQLBuilderPainterPaint
                end
              end
              object JvScrollBar1: TJvScrollBar
                Left = 0
                Top = 419
                Width = 1233
                Height = 21
                Align = alBottom
                PageSize = 0
                TabOrder = 2
              end
              object JvScrollBar2: TJvScrollBar
                Left = 0
                Top = 0
                Width = 21
                Height = 419
                Align = alLeft
                Kind = sbVertical
                PageSize = 0
                TabOrder = 3
              end
            end
          end
          object TableDataPage: TJvStandardPage
            Left = 0
            Top = 0
            Width = 1286
            Height = 564
            Caption = 'TableDataPage'
            OnShow = TableDataPageShow
            object ScrollBox42: TScrollBox
              Left = 0
              Top = 0
              Width = 1286
              Height = 564
              Align = alClient
              TabOrder = 0
              object DataTablePageControl: TPageControl
                Left = 0
                Top = 0
                Width = 1282
                Height = 560
                ActivePage = DataPage
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -16
                Font.Name = 'Arial'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
                OnChange = DataTablePageControlChange
                object DataPage: TTabSheet
                  Caption = 'Data'
                  DesignSize = (
                    1274
                    527)
                  object ToolBar1: TToolBar
                    Left = 0
                    Top = 0
                    Width = 1274
                    Height = 29
                    ButtonHeight = 26
                    Caption = 'ToolBar1'
                    TabOrder = 0
                    object ToolButton1: TToolButton
                      Left = 0
                      Top = 2
                      Caption = 'ToolButton1'
                      ImageIndex = 0
                    end
                    object ToolButton2: TToolButton
                      Left = 23
                      Top = 2
                      Caption = 'ToolButton2'
                      ImageIndex = 1
                    end
                    object ToolButton3: TToolButton
                      Left = 46
                      Top = 2
                      Caption = 'ToolButton3'
                      ImageIndex = 2
                    end
                    object ToolButton4: TToolButton
                      Left = 69
                      Top = 2
                      Caption = 'ToolButton4'
                      ImageIndex = 3
                    end
                    object ToolButton5: TToolButton
                      Left = 92
                      Top = 2
                      Caption = 'ToolButton5'
                      ImageIndex = 4
                    end
                    object ToolButton6: TToolButton
                      Left = 115
                      Top = 2
                      Caption = 'ToolButton6'
                      ImageIndex = 5
                    end
                    object ToolButton7: TToolButton
                      Left = 138
                      Top = 2
                      Width = 7
                      Caption = 'ToolButton7'
                      ImageIndex = 6
                      Style = tbsSeparator
                    end
                    object Panel36: TPanel
                      Left = 145
                      Top = 2
                      Width = 48
                      Height = 26
                      BevelOuter = bvNone
                      Caption = 'Index :'
                      TabOrder = 0
                    end
                    object JvCheckedComboBox2: TJvCheckedComboBox
                      Left = 193
                      Top = 2
                      Width = 121
                      Height = 26
                      Items.Strings = (
                        '<empty>'
                        'one'
                        'two'
                        'three')
                      CapSelectAll = '&Select all'
                      CapDeSelectAll = '&Deselect all'
                      CapInvertAll = '&Invert all'
                      TabOrder = 1
                    end
                    object ToolButton8: TToolButton
                      Left = 314
                      Top = 2
                      Width = 8
                      Caption = 'ToolButton8'
                      ImageIndex = 7
                      Style = tbsSeparator
                    end
                    object ToolButton9: TToolButton
                      Left = 322
                      Top = 2
                      Caption = 'ToolButton9'
                      ImageIndex = 7
                    end
                    object ToolButton10: TToolButton
                      Left = 345
                      Top = 2
                      Width = 8
                      Caption = 'ToolButton10'
                      ImageIndex = 8
                      Style = tbsSeparator
                    end
                    object Panel37: TPanel
                      Left = 353
                      Top = 2
                      Width = 48
                      Height = 26
                      BevelOuter = bvNone
                      Caption = 'Table :'
                      TabOrder = 2
                    end
                    object DatabaseTableListButton2: TJvArrowButton
                      Left = 401
                      Top = 2
                      Width = 161
                      Height = 26
                      Alignment = taLeftJustify
                      AllowAllUp = True
                      DropDown = TableListMenuPopup
                      FillFont.Charset = DEFAULT_CHARSET
                      FillFont.Color = clWindowText
                      FillFont.Height = -11
                      FillFont.Name = 'MS Sans Serif'
                      FillFont.Style = []
                      OnClick = DatabaseTableListButton2Click
                    end
                    object Panel38: TPanel
                      Left = 562
                      Top = 2
                      Width = 79
                      Height = 26
                      BevelOuter = bvNone
                      Caption = 'Database :'
                      TabOrder = 3
                    end
                    object DatabaseListButton2: TJvArrowButton
                      Left = 641
                      Top = 2
                      Width = 137
                      Height = 26
                      Alignment = taLeftJustify
                      AllowAllUp = True
                      DropDown = DatabaseButtonPopupMenu
                      FillFont.Charset = DEFAULT_CHARSET
                      FillFont.Color = clWindowText
                      FillFont.Height = -11
                      FillFont.Name = 'MS Sans Serif'
                      FillFont.Style = []
                      OnClick = DatabaseListButton2Click
                    end
                  end
                  object DataPageGrid1: TDBGrid
                    Left = 0
                    Top = 39
                    Width = 1518
                    Height = 482
                    Anchors = [akLeft, akTop, akRight, akBottom]
                    DataSource = DataSource1
                    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete]
                    TabOrder = 1
                    TitleFont.Charset = ANSI_CHARSET
                    TitleFont.Color = clBlack
                    TitleFont.Height = -16
                    TitleFont.Name = 'Arial'
                    TitleFont.Style = []
                    OnCellClick = DataPageGrid1CellClick
                    OnColExit = DataPageGrid1ColExit
                    OnDrawColumnCell = DataPageGrid1DrawColumnCell
                    OnDblClick = DataPageGrid1DblClick
                    OnKeyPress = DataPageGrid1KeyPress
                  end
                  object JvCheckBox1: TCheckBox
                    Left = 118
                    Top = 286
                    Width = 120
                    Height = 20
                    Caption = 'JvCheckBox1'
                    Enabled = False
                    TabOrder = 2
                    Visible = False
                  end
                  object DBComboBox1: TComboBox
                    Left = 778
                    Top = 138
                    Width = 178
                    Height = 26
                    AutoDropDown = True
                    AutoCloseUp = True
                    Style = csDropDownList
                    ItemHeight = 18
                    TabOrder = 3
                    Visible = False
                    OnChange = DBComboBox1Change
                    OnClick = DBComboBox1Click
                    OnKeyPress = DBComboBox1KeyPress
                    OnSelect = DBComboBox1Select
                    Items.Strings = (
                      'Auto Increment'
                      'String'
                      'Boolean'
                      'Numeric'
                      'Float'
                      'Date'
                      'Time')
                  end
                end
                object FieldPage: TTabSheet
                  Caption = 'Fields'
                  ImageIndex = 1
                  object ToolBar2: TToolBar
                    Left = 0
                    Top = 0
                    Width = 1274
                    Height = 29
                    ButtonHeight = 26
                    Caption = 'ToolBar1'
                    TabOrder = 0
                    object ToolButton11: TToolButton
                      Left = 0
                      Top = 2
                      Caption = 'ToolButton1'
                      ImageIndex = 0
                    end
                    object ToolButton12: TToolButton
                      Left = 23
                      Top = 2
                      Caption = 'ToolButton2'
                      ImageIndex = 1
                    end
                    object ToolButton13: TToolButton
                      Left = 46
                      Top = 2
                      Caption = 'ToolButton3'
                      ImageIndex = 2
                    end
                    object ToolButton14: TToolButton
                      Left = 69
                      Top = 2
                      Caption = 'ToolButton4'
                      ImageIndex = 3
                    end
                    object ToolButton15: TToolButton
                      Left = 92
                      Top = 2
                      Caption = 'ToolButton5'
                      ImageIndex = 4
                    end
                    object ToolButton16: TToolButton
                      Left = 115
                      Top = 2
                      Caption = 'ToolButton6'
                      ImageIndex = 5
                    end
                    object ToolButton17: TToolButton
                      Left = 138
                      Top = 2
                      Width = 7
                      Caption = 'ToolButton7'
                      ImageIndex = 6
                      Style = tbsSeparator
                    end
                    object Panel39: TPanel
                      Left = 145
                      Top = 2
                      Width = 48
                      Height = 26
                      BevelOuter = bvNone
                      Caption = 'Index :'
                      TabOrder = 0
                    end
                    object JvCheckedComboBox3: TJvCheckedComboBox
                      Left = 193
                      Top = 2
                      Width = 121
                      Height = 26
                      Items.Strings = (
                        '<empty>'
                        'one'
                        'two'
                        'three')
                      CapSelectAll = '&Select all'
                      CapDeSelectAll = '&Deselect all'
                      CapInvertAll = '&Invert all'
                      TabOrder = 1
                    end
                    object ToolButton18: TToolButton
                      Left = 314
                      Top = 2
                      Width = 8
                      Caption = 'ToolButton8'
                      ImageIndex = 7
                      Style = tbsSeparator
                    end
                    object ToolButton19: TToolButton
                      Left = 322
                      Top = 2
                      Caption = 'ToolButton9'
                      ImageIndex = 7
                    end
                    object ToolButton20: TToolButton
                      Left = 345
                      Top = 2
                      Width = 8
                      Caption = 'ToolButton10'
                      ImageIndex = 8
                      Style = tbsSeparator
                    end
                    object Panel40: TPanel
                      Left = 353
                      Top = 2
                      Width = 48
                      Height = 26
                      BevelOuter = bvNone
                      Caption = 'Table :'
                      TabOrder = 2
                    end
                    object DatabaseTableListButton1: TJvArrowButton
                      Left = 401
                      Top = 2
                      Width = 161
                      Height = 26
                      Alignment = taLeftJustify
                      AllowAllUp = True
                      DropDown = TableListMenuPopup
                      FillFont.Charset = DEFAULT_CHARSET
                      FillFont.Color = clWindowText
                      FillFont.Height = -11
                      FillFont.Name = 'MS Sans Serif'
                      FillFont.Style = []
                      OnClick = DatabaseTableListButton1Click
                    end
                    object Panel41: TPanel
                      Left = 562
                      Top = 2
                      Width = 79
                      Height = 26
                      BevelOuter = bvNone
                      Caption = 'Database :'
                      TabOrder = 3
                    end
                    object DatabaseListButton1: TJvArrowButton
                      Left = 641
                      Top = 2
                      Width = 144
                      Height = 26
                      Alignment = taLeftJustify
                      AllowAllUp = True
                      DropDown = DatabaseButtonPopupMenu
                      FillFont.Charset = DEFAULT_CHARSET
                      FillFont.Color = clWindowText
                      FillFont.Height = -11
                      FillFont.Name = 'MS Sans Serif'
                      FillFont.Style = []
                      OnClick = DatabaseListButton1Click
                    end
                  end
                  object DataPageGrid2: TJvStringGrid
                    Left = 0
                    Top = 29
                    Width = 1274
                    Height = 498
                    Align = alClient
                    ColCount = 1
                    FixedCols = 0
                    RowCount = 1
                    FixedRows = 0
                    TabOrder = 1
                    Visible = False
                    OnDrawCell = DataPageGrid2DrawCell
                    Alignment = taLeftJustify
                    FixedFont.Charset = DEFAULT_CHARSET
                    FixedFont.Color = clWindowText
                    FixedFont.Height = -11
                    FixedFont.Name = 'MS Sans Serif'
                    FixedFont.Style = []
                  end
                end
                object TabSheet47: TTabSheet
                  Caption = 'Index'
                  ImageIndex = 2
                end
                object TabSheet48: TTabSheet
                  Caption = 'Info'
                  ImageIndex = 3
                end
              end
            end
          end
          object DebugPage: TJvStandardPage
            Left = 0
            Top = 0
            Width = 1286
            Height = 564
            Caption = 'DebugPage'
            object ScrollBox29: TScrollBox
              Left = 0
              Top = 0
              Width = 1286
              Height = 564
              Align = alClient
              TabOrder = 0
              object Splitter21: TSplitter
                Left = 273
                Top = 65
                Height = 495
              end
              object Panel61: TPanel
                Left = 0
                Top = 65
                Width = 273
                Height = 495
                Align = alLeft
                TabOrder = 1
                object TreeView5: TTreeView
                  Left = 1
                  Top = 1
                  Width = 271
                  Height = 184
                  Align = alTop
                  Indent = 21
                  ReadOnly = True
                  RowSelect = True
                  TabOrder = 0
                  Items.Data = {
                    010000001D0000000000000000000000FFFFFFFFFFFFFFFF0000000005000000
                    0446696C65230000000000000000000000FFFFFFFFFFFFFFFF00000000000000
                    000A444F5320486561646572220000000000000000000000FFFFFFFFFFFFFFFF
                    0000000002000000094E5420486561646572240000000000000000000000FFFF
                    FFFFFFFFFFFF00000000000000000B46696C6520486561646572210000000000
                    000000000000FFFFFFFFFFFFFFFF0000000001000000084F7074696F6E616C29
                    0000000000000000000000FFFFFFFFFFFFFFFF00000000000000001044617461
                    204469726563746F72696573280000000000000000000000FFFFFFFFFFFFFFFF
                    00000000000000000F53656374696F6E20486561646572732900000000000000
                    00000000FFFFFFFFFFFFFFFF000000000000000010496D706F72742044697265
                    63746F72792B0000000000000000000000FFFFFFFFFFFFFFFF00000000000000
                    00125265736F75726365204469726563746F7279}
                end
                object JvListView1: TJvListView
                  Left = 1
                  Top = 185
                  Width = 271
                  Height = 160
                  Align = alTop
                  Columns = <
                    item
                      Caption = 'OS'
                      MinWidth = 42
                      Width = 64
                    end
                    item
                      Caption = 'EXE'
                      MinWidth = 42
                    end
                    item
                      Caption = 'DLL'
                      MinWidth = 42
                    end
                    item
                      Caption = 'ELF'
                      MinWidth = 42
                    end
                    item
                      Caption = 'COM'
                      MinWidth = 42
                    end>
                  ColumnClick = False
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlack
                  Font.Height = -16
                  Font.Name = 'Arial'
                  Font.Style = []
                  FlatScrollBars = True
                  GridLines = True
                  Items.Data = {
                    C00000000400000000000000FFFFFFFFFFFFFFFF040000000000000005444F53
                    313603455845012D012D03434F4D00000000FFFFFFFFFFFFFFFF040000000000
                    00000557696E31360345584503444C4C012D012DFFFFFFFFFFFFFFFFFFFFFFFF
                    04000000000000000557696E33320345584503444C4C012D012D00000000FFFF
                    FFFFFFFFFFFF0400000000000000074C696E75783332012D012D03454C46012D
                    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                  ReadOnly = True
                  RowSelect = True
                  ParentFont = False
                  ShowWorkAreas = True
                  TabOrder = 1
                  ViewStyle = vsReport
                  OnDblClick = JvListView1DblClick
                  ColumnsOrder = '0=64,1=50,2=50,3=50,4=50'
                  SortOnClick = False
                  GroupView = True
                  Groups = <
                    item
                      GroupId = 1
                      Header = 'Group'
                    end
                    item
                      GroupId = 2
                      Header = 'Group'
                    end>
                  ExtendedColumns = <
                    item
                    end
                    item
                    end
                    item
                    end
                    item
                    end
                    item
                    end>
                end
              end
              object PageControl16: TPageControl
                Left = 276
                Top = 65
                Width = 1006
                Height = 495
                ActivePage = TabSheet53
                Align = alClient
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                object TabSheet53: TTabSheet
                  Caption = 'MS-DOS Header'
                  object ScrollBox2: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 998
                    Height = 464
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -14
                    Font.Name = 'Consolas'
                    Font.Style = []
                    ParentFont = False
                    TabOrder = 0
                    object Label17: TLabel
                      Left = 10
                      Top = 12
                      Width = 88
                      Height = 16
                      Caption = 'Magic Number'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label18: TLabel
                      Left = 10
                      Top = 60
                      Width = 78
                      Height = 16
                      Caption = 'Pages in File'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label19: TLabel
                      Left = 10
                      Top = 84
                      Width = 72
                      Height = 16
                      Caption = 'Relocations'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label23: TLabel
                      Left = 10
                      Top = 108
                      Width = 89
                      Height = 16
                      Caption = 'Size of Header'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label24: TLabel
                      Left = 10
                      Top = 132
                      Width = 85
                      Height = 16
                      Caption = 'Minimum alloc'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label25: TLabel
                      Left = 10
                      Top = 156
                      Width = 89
                      Height = 16
                      Caption = 'Maximum alloc'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label26: TLabel
                      Left = 10
                      Top = 180
                      Width = 87
                      Height = 16
                      Caption = 'Initial SS value'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label27: TLabel
                      Left = 10
                      Top = 204
                      Width = 87
                      Height = 16
                      Caption = 'Initial SP value'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label28: TLabel
                      Left = 10
                      Top = 228
                      Width = 69
                      Height = 16
                      Caption = 'Check-Sum'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label29: TLabel
                      Left = 10
                      Top = 252
                      Width = 81
                      Height = 16
                      Caption = 'Initial IP value'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label30: TLabel
                      Left = 10
                      Top = 276
                      Width = 87
                      Height = 16
                      Caption = 'Initial CS value'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label31: TLabel
                      Left = 10
                      Top = 300
                      Width = 98
                      Height = 16
                      Caption = 'Relocation table'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label32: TLabel
                      Left = 10
                      Top = 324
                      Width = 95
                      Height = 16
                      Caption = 'Overlay number'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label33: TLabel
                      Left = 10
                      Top = 348
                      Width = 62
                      Height = 16
                      Caption = 'OEM ident'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label34: TLabel
                      Left = 10
                      Top = 372
                      Width = 54
                      Height = 16
                      Caption = 'OEM info'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label35: TLabel
                      Left = 10
                      Top = 396
                      Width = 102
                      Height = 16
                      Caption = 'New EXE header'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object Label37: TLabel
                      Left = 10
                      Top = 36
                      Width = 100
                      Height = 16
                      Caption = 'Last Page of File'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -14
                      Font.Name = 'MS Sans Serif'
                      Font.Style = []
                      ParentFont = False
                    end
                    object JvArrowButton5: TJvArrowButton
                      Left = 808
                      Top = 264
                      Width = 145
                      Height = 25
                      AllowAllUp = True
                      ArrowWidth = 24
                      DropDown = AssemblyJvPopupMenu
                      DropOnButtonClick = True
                      Caption = 'Choose Action'
                      FillFont.Charset = DEFAULT_CHARSET
                      FillFont.Color = clWindowText
                      FillFont.Height = -13
                      FillFont.Name = 'MS Sans Serif'
                      FillFont.Style = []
                    end
                    object dosEdit1: TEdit
                      Left = 120
                      Top = 8
                      Width = 121
                      Height = 25
                      TabOrder = 0
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit2: TEdit
                      Left = 120
                      Top = 32
                      Width = 121
                      Height = 25
                      TabOrder = 1
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit3: TEdit
                      Left = 120
                      Top = 56
                      Width = 121
                      Height = 25
                      TabOrder = 2
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit4: TEdit
                      Left = 120
                      Top = 80
                      Width = 121
                      Height = 25
                      TabOrder = 3
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit5: TEdit
                      Left = 120
                      Top = 104
                      Width = 121
                      Height = 25
                      TabOrder = 4
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit6: TEdit
                      Left = 120
                      Top = 128
                      Width = 121
                      Height = 25
                      TabOrder = 5
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit7: TEdit
                      Left = 120
                      Top = 152
                      Width = 121
                      Height = 25
                      TabOrder = 6
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit8: TEdit
                      Left = 120
                      Top = 176
                      Width = 121
                      Height = 25
                      TabOrder = 7
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit9: TEdit
                      Left = 120
                      Top = 200
                      Width = 121
                      Height = 25
                      TabOrder = 8
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit10: TEdit
                      Left = 120
                      Top = 224
                      Width = 121
                      Height = 25
                      TabOrder = 9
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit11: TEdit
                      Left = 120
                      Top = 248
                      Width = 121
                      Height = 25
                      TabOrder = 10
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit12: TEdit
                      Left = 120
                      Top = 272
                      Width = 121
                      Height = 25
                      TabOrder = 11
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit13: TEdit
                      Left = 120
                      Top = 296
                      Width = 121
                      Height = 25
                      TabOrder = 12
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit14: TEdit
                      Left = 120
                      Top = 320
                      Width = 121
                      Height = 25
                      TabOrder = 13
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit15: TEdit
                      Left = 120
                      Top = 344
                      Width = 121
                      Height = 25
                      TabOrder = 14
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit16: TEdit
                      Left = 120
                      Top = 368
                      Width = 121
                      Height = 25
                      TabOrder = 15
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object dosEdit17: TEdit
                      Left = 120
                      Top = 392
                      Width = 121
                      Height = 25
                      TabOrder = 16
                      OnEnter = dosEditEnter
                      OnExit = dosEditExit
                    end
                    object PageControl17: TPageControl
                      Left = 256
                      Top = 8
                      Width = 697
                      Height = 225
                      ActivePage = TabSheet55
                      TabOrder = 17
                      Visible = False
                      object TabSheet55: TTabSheet
                        Caption = 'Header View'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -14
                        Font.Name = 'Arial'
                        Font.Style = []
                        ParentFont = False
                        object ATBinHex1: TATBinHex
                          Left = 0
                          Top = 0
                          Width = 689
                          Height = 193
                          Cursor = crIBeam
                          Align = alClient
                          BevelOuter = bvNone
                          BorderStyle = bsSingle
                          Caption = 'ATBinHex1'
                          Color = clWindow
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -16
                          Font.Name = 'Courier New'
                          Font.Style = []
                          ParentFont = False
                          TabOrder = 0
                          Visible = False
                          FontOEM.Charset = OEM_CHARSET
                          FontOEM.Color = clWindowText
                          FontOEM.Height = -14
                          FontOEM.Name = 'Terminal'
                          FontOEM.Style = []
                          FontFooter.Charset = DEFAULT_CHARSET
                          FontFooter.Color = clBlack
                          FontFooter.Height = -14
                          FontFooter.Name = 'Arial'
                          FontFooter.Style = []
                          FontGutter.Charset = DEFAULT_CHARSET
                          FontGutter.Color = clBlack
                          FontGutter.Height = -14
                          FontGutter.Name = 'Courier New'
                          FontGutter.Style = []
                          TextGutter = True
                        end
                      end
                    end
                    object Panel62: TPanel
                      Left = 8
                      Top = 424
                      Width = 185
                      Height = 57
                      BevelOuter = bvNone
                      TabOrder = 18
                    end
                    object PageControl18: TPageControl
                      Left = 256
                      Top = 240
                      Width = 537
                      Height = 185
                      ActivePage = TabSheet56
                      TabOrder = 19
                      Visible = False
                      object TabSheet56: TTabSheet
                        Caption = 'Header Assembly'
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -14
                        Font.Name = 'Arial'
                        Font.Style = []
                        ParentFont = False
                        object DosAssemblySynEdit: TSynEdit
                          Left = 0
                          Top = 0
                          Width = 529
                          Height = 153
                          Align = alClient
                          Font.Charset = DEFAULT_CHARSET
                          Font.Color = clWindowText
                          Font.Height = -16
                          Font.Name = 'Courier New'
                          Font.Style = []
                          TabOrder = 0
                          Visible = False
                          Gutter.Font.Charset = DEFAULT_CHARSET
                          Gutter.Font.Color = clWindowText
                          Gutter.Font.Height = -13
                          Gutter.Font.Name = 'Courier New'
                          Gutter.Font.Style = []
                          Lines.UnicodeStrings = 'DosAssemblySynEdit'
                          FontSmoothing = fsmNone
                        end
                      end
                    end
                  end
                end
                object TabSheet54: TTabSheet
                  Caption = 'NT Header'
                  ImageIndex = 1
                  object ScrollBox54: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 998
                    Height = 464
                    Align = alClient
                    TabOrder = 0
                  end
                end
              end
              object Panel60: TPanel
                Left = 0
                Top = 0
                Width = 1282
                Height = 65
                Align = alTop
                Caption = 'Panel60'
                TabOrder = 0
                object SpeedButton3: TSpeedButton
                  Left = 8
                  Top = 0
                  Width = 65
                  Height = 65
                  Glyph.Data = {
                    42100000424D4210000000000000420000002800000020000000200000000100
                    20000300000000100000130B0000130B000000000000000000000000FF0000FF
                    0000FF000000000000000000000000000000020202060909084E232220962D2B
                    28B02D2B29B32D2B29B32D2B29B32D2B29B32D2B29B32D2B29B32D2B29B32D2B
                    29B32D2B29B3302E2BB333312EB333312EB333312EB332302DAC23211F890403
                    0334000000030000000000000000000000000000000000000000000000000000
                    00000000000000000000000000000303030C252422A57F7C76F9ACA79FFFBBB6
                    ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFBCB7
                    ADFFBFB9B0FFCEC6BBFFD3CBBFFFD3CBBFFFD3CBBFFFD0C8BCFFB9B2A8FE7873
                    6CF3141312720000000400000000000000000000000000000000000000000000
                    00000000000000000000010101021918167F918D86FDCAC4BAFFCCC6BCFFCCC6
                    BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFCCC6BCFFD1CB
                    C0FFE1D8CCFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE0D7
                    CAFF817C74F50909084700000000000000000000000000000000000000000000
                    000000000000000000000202020C474541E2C7C1B7FFCCC6BCFFCCC6BCFFCCC6
                    BCFFC9C3B9FFC2BCB3FFBCB7ADFFBCB7ADFFBCB7ADFFBCB7ADFFC1BAB1FFD0C8
                    BCFFD3CBBFFFD3CBBFFFD3CBBFFFDDD4C8FFE2DACDFFE5DCCFFFE5DCCFFFE5DC
                    CFFFCCC4B9FF312F2BA900000004000000000000000000000000000000000000
                    00000000000000000000000000236F6C66F6CAC4BAFFCCC6BCFFCCC6BCFFACA7
                    9EFF5F5C59FF6D6B6AFF737070FF737070FF737070FF757272FF7C7979FF7D7A
                    7AFF7D7A7AFF7D7A7AFF7D7A79FF716D6DFF7C7871FFD0C8BCFFE5DCCFFFE5DC
                    CFFFE1D8CBFF43403CD201010008000000000000000000000000000000000000
                    000000000000000000000000002976736CF7CAC4BAFFCCC6BCFFB9B4ABFF6765
                    64FFD3CECFFFE5E0E1FFE5E0E1FFE5E0E1FFE6E1E2FFF4EEEFFFF8F2F4FFF8F2
                    F4FFF8F2F4FFF8F2F4FFF8F2F4FFF7F1F3FFD3CED0FF726D68FFE0D8CBFFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF99948DFFAEAB
                    ABFFE8E3E4FFE8E3E4FFE8E3E4FFE8E3E3FFF5EFF1FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF9F3F5FF9A9697FFC3BCB1FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                    B5FFE8E3E4FFE8E3E4FFE8E3E4FFF2EDEDFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B5FFB7AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                    B5FFE8E3E4FFE8E3E4FFEDE7E8FFFAF4F6FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                    B5FFE8E3E4FFE9E3E4FFF8F2F4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                    B5FFE8E3E4FFF3EDEEFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                    B5FFEBE6E6FFFAF4F6FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFB8B4
                    B5FFF4EEEFFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFBCB7
                    B7FFFAF4F6FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF9F4F5FFE4DF
                    E1FFBBB6B8FFBAB6B7FFDFDADBFFF9F3F5FFFBF5F7FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97928BFFC5C0
                    C1FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF8F2F4FFA6A2A4FF4249
                    4DFF7595A2FF7B9DABFF424D52FF989596FFF7F1F3FFB9B4B6FFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF97938BFFC7C2
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFC4BFC1FF51666FFFA8D6
                    E9FFB8EAFEFFB8EAFEFFB0E0F3FF68848FFF918E8FFFB2AEAFFFB6AFA5FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCCC6BCFF99948CFFC7C3
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF7F1F3FF5D5D5FFF9AC4D4FFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E5F9FF688490FF2F2E2EFFB6AFA4FFE5DC
                    CFFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000000000002976736DF7CAC4BAFFCDC7BCFFA19C93FFC7C3
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF6F0F2FF464D51FFB5E6FAFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6F9FF688490FF837E76FFE1D8
                    CBFFE1D8CBFF484540DA01010108000000000000000000000000000000000000
                    000000000000000000004C4A45179F9B93EACBC5BBFFCFC9BEFFA8A198FFC7C3
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF7F1F3FF4E5053FFA5D2E4FFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6F9FF6A8793FF8882
                    7AFFDDD4C8FF484540DA01010109000000050000000300000000000000000000
                    000000000000000000002726231B8E8A83EFCBC5BBFFD4CDC2FFA9A299FFC7C3
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFAF4F6FFAEAAABFF688591FFB6E7
                    FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6FAFF6A87
                    93FF807B73FF3B3935DE0E1518712C3A40B5222D329E0304052C000000000000
                    000000000000000000005C595415A7A299E8CBC5BBFFD9D1C6FFAAA399FFC7C3
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF6F0F2FF878485FF6C8A
                    96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB5E6
                    FAFF698692FF151C1EF97697A4FCB0DFF2FF9EC9DAFF3B4C54D7000000130000
                    000000000000000000001F1E1C1E8A867FF0CBC5BBFFDDD5C9FFAAA399FFC7C3
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF2ECEEFF8784
                    85FF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                    FFFFB5E6FAFF90B8C7FFB6E8FBFFB9EBFFFFB9EBFEFF82A7B5F90203044A0000
                    000000000000000000000000002976736DF7CBC5BBFFE0D7CBFFAAA399FFC7C2
                    C4FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFF2EC
                    EEFF878485FF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFF8CB3C2FD0E14176A0000
                    000000000000000000000000002976736DF7CBC5BBFFE2DACDFFACA59BFFBDB9
                    BAFFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5F7FFFBF5
                    F7FFF2ECEEFF878485FF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFF95BDCDFF192226840000
                    000100000000000000000000002976736CF7CCC6BBFFE4DBCEFFD0C7BCFF726E
                    6EFFE5DFE1FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2F4FFF8F2
                    F4FFF8F2F4FFEFE9EBFF807E7EFF6C8A96FFB6E7FBFFB9EBFFFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFA2CEDFFF2430359D0000
                    00030000000000000000000000236F6C66F6CCC6BBFFE4DBCEFFE4DBCFFFC1B9
                    AEFF686561FF787574FF7D7A7AFF7D7A7AFF7D7A7AFF7D7A7AFF7D7A7AFF7D7A
                    7AFF7D7A7AFF7D7A7AFF716E6DFF272625FF71919DFFB8E9FDFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB1E1F5FF2D3B41B70000
                    000500000000000000000201010C474541E2C9C3B9FFE4DBCEFFE5DCCFFFE5DC
                    CFFFE1D8CCFFD9D1C4FFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CB
                    BFFFD3CBBFFFD3CBBFFFCFC8BCFF736F68FF71909DFFB8E9FDFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB6E7FAFF35444BD10101
                    010800000000000000000100000219181780948F88FDE2D9CCFFE5DCCFFFE5DC
                    CFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DCCFFFE5DC
                    CFFFE5DCCFFFE5DCCFFFB8B1A7FF617B85FFB5E7FAFFB9EBFFFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB6E7FBFF455961EC0202
                    020B0000000000000000000000000303030C282724A6918B83F9C2BAAFFFD2CA
                    BEFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CBBFFFD3CB
                    BFFFD3CBBFFFD3CBBFFF9C968DFF83A7B6FFB9EBFFFFB9EBFFFFB9EBFFFFB9EB
                    FFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB7E8FCFF5C7681F60000
                    001B00000000000000000000000000000000020202060B09084F2A2825953432
                    2EAC34322EAE34322EAE34322EAE34322EAE34322EAE34322EAE34322EAE3432
                    2EAE34322EAE34322EAE24221FB13E5158EEA7D5E7FFB6E7FBFFB6E8FCFFB7E9
                    FDFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB9EBFFFFB6E8FBFF5A747EF40000
                    001C000000000000000000000000000000000000000000000000000000020000
                    0004000000040000000400000004000000040000000400000004000000040000
                    0004000000040000000400000005070B0C3D29363BB33D4F56E1526972F46C8A
                    96F784A8B7F98BB1C0FB91B8C8FE9CC6D7FFA7D4E6FF89AEBDFD232E33AA0101
                    0105000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000000000000000000000000
                    0000000000000000000000000000000000000000000502020209000000110000
                    002A01010144080D0E5F151D207A1F2A2F94263339A7161E217B020202120000
                    000000000000}
                  OnClick = SpeedButton3Click
                end
              end
            end
          end
        end
      end
      object TabSheet6: TTabSheet
        Caption = 'Translation'
        ImageIndex = 7
        object ScrollBox43: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
        end
      end
      object TaskPageHelpAuthoring: TTabSheet
        Caption = 'Help Authoring'
        ImageIndex = 8
        object ScrollBox44: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object JvSplitter4: TJvSplitter
            Left = 1039
            Top = 0
            Width = 4
            Height = 550
            Align = alRight
          end
          object Splitter22: TSplitter
            Left = 208
            Top = 0
            Width = 4
            Height = 550
          end
          object JvPanel3: TJvPanel
            Left = 0
            Top = 550
            Width = 1282
            Height = 39
            Align = alBottom
            TabOrder = 0
          end
          object Panel50: TPanel
            Left = 0
            Top = 0
            Width = 208
            Height = 550
            Align = alLeft
            TabOrder = 1
            object Splitter23: TSplitter
              Left = 1
              Top = 356
              Width = 206
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object Panel51: TPanel
              Left = 1
              Top = 1
              Width = 206
              Height = 355
              Align = alTop
              Caption = 'Panel51'
              TabOrder = 0
              object Panel52: TPanel
                Left = 1
                Top = 1
                Width = 204
                Height = 67
                Align = alTop
                TabOrder = 0
                DesignSize = (
                  204
                  67)
                object Edit14: TEdit
                  Left = 0
                  Top = 38
                  Width = 199
                  Height = 28
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                  Text = 'Edit14'
                end
                object JvImgBtn7: TJvImgBtn
                  Tag = 1
                  Left = 2
                  Top = 1
                  Width = 196
                  Height = 32
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  Caption = 'HTML Refresh / View'
                  TabOrder = 1
                  OnClick = JvImgBtn7Click
                  Color = clLime
                end
              end
              object TreeView1: TTreeView
                Left = 1
                Top = 68
                Width = 204
                Height = 286
                Align = alClient
                Indent = 19
                ReadOnly = True
                RowSelect = True
                ShowRoot = False
                TabOrder = 1
                Items.Data = {
                  02000000250000000000000000000000FFFFFFFFFFFFFFFF0000000001000000
                  0C536F757263652046696C6573240000000000000000000000FFFFFFFFFFFFFF
                  FF00000000020000000B64656661756C742E7072671E00000000000000000000
                  00FFFFFFFFFFFFFFFF000000000200000005496E646578220000000000000000
                  000000FFFFFFFFFFFFFFFF0000000000000000097374796C652E6373731C0000
                  000000000000000000FFFFFFFFFFFFFFFF000000000000000003584D4C200000
                  000000000000000000FFFFFFFFFFFFFFFF000000000200000007546F70696320
                  31220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000097374
                  796C652E6373731C0000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  00000003584D4C250000000000000000000000FFFFFFFFFFFFFFFF0000000000
                  0000000C416C7465726E617469766573}
              end
            end
            object Panel58: TPanel
              Left = 1
              Top = 359
              Width = 206
              Height = 190
              Align = alClient
              TabOrder = 1
              object ScrollBox45: TScrollBox
                Left = 1
                Top = 1
                Width = 204
                Height = 188
                Align = alClient
                TabOrder = 0
                DesignSize = (
                  200
                  184)
                object Label13: TLabel
                  Left = 10
                  Top = 10
                  Width = 97
                  Height = 20
                  Caption = 'Description:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label14: TLabel
                  Left = 10
                  Top = 69
                  Width = 67
                  Height = 20
                  Caption = 'Help ID:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label15: TLabel
                  Left = 10
                  Top = 128
                  Width = 110
                  Height = 20
                  Caption = 'Help Context:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Edit16: TEdit
                  Left = 10
                  Top = 30
                  Width = 190
                  Height = 28
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 0
                end
                object Edit17: TEdit
                  Left = 10
                  Top = 89
                  Width = 190
                  Height = 28
                  Anchors = [akLeft, akTop, akRight]
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  ParentFont = False
                  TabOrder = 1
                end
                object JvSpinEdit1: TJvSpinEdit
                  Left = 10
                  Top = 148
                  Width = 190
                  Height = 25
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Anchors = [akLeft, akTop, akRight]
                  ParentFont = False
                  TabOrder = 2
                end
              end
            end
          end
          object Panel53: TPanel
            Left = 212
            Top = 0
            Width = 827
            Height = 550
            Align = alClient
            TabOrder = 2
            object Panel54: TPanel
              Left = 1
              Top = 1
              Width = 825
              Height = 86
              Align = alTop
              TabOrder = 0
              object JvSpeedButton12: TJvSpeedButton
                Left = 514
                Top = 21
                Width = 61
                Height = 55
                Caption = 'Open'
                Glyph.Data = {
                  42100000424D4210000000000000420000002800000020000000200000000100
                  20000300000000100000130B0000130B000000000000000000000000FF0000FF
                  0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BF
                  C0FFC2B8B9FFC2B8B9FFC9BFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99799FF835D5AFF876239FF9678
                  36FF9F8635FF9F8635FF967936FF876339FF835C59FFA99698FFDBD5D6FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFA99698FF825B43FFA58C32FFBBA82AFFBEAC28FFB6A2
                  2CFFB19D2EFFB19D2EFFB6A22CFFBEAC28FFBBA82AFFA58D32FF825B43FFA895
                  97FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF886768FF9D8235FFBEAB28FFB19C2EFF927338FF7D5348FF9072
                  73FFA18E90FFA18E90FF907274FF7D5348FF917238FFB19C2EFFBEAC28FF9E83
                  34FF886666FFE4E0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E6
                  E7FF825B58FFAC9630FFBBA929FF927338FF8D6E6FFFC8BEBFFFE9E7E7FFF0F0
                  F0FFF2F2F2FFF2F2F2FFF0F0F0FFE9E7E7FFC8BFC0FF8D6F70FF917239FFBBA8
                  2AFFAD962FFF815B57FFE4E0E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8967
                  68FFAC9530FFB8A52BFF825C43FFB8A9ABFFEDECECFFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECEDFFBAACAEFF825B
                  44FFB7A42BFFAD972FFF886666FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA9799FF9D81
                  35FFBBA929FF825C43FFC7BCBDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC8BD
                  BFFF825B44FFBBA82AFF9E8334FFA89597FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E0FF815A44FFBDAB
                  28FF927338FFB8AAABFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFB9ABADFF917239FFBEAC28FF825B43FFDBD5D6FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA989AFFA48B32FFB29D
                  2DFF8C6D6EFFEDECECFFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFEEECECFFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFEEEDEDFF8D6F71FFB19C2EFFA58D32FFA99698FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835E5BFFBBA82AFF9374
                  38FFC7BDBEFFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFC4B9BAFFA28D8FFFF2F1
                  F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFC8BFC0FF927238FFBBA82AFF835D59FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9DAFF866139FFBFAD28FF7D53
                  46FFE8E6E6FFF2F2F2FFF2F2F2FFF1F1F1FFC3B8B9FF794D44FF957C7FFFF1F1
                  F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFE9E7E7FF7D5348FFBEAC28FF876339FFDAD4D5FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC0C1FF957736FFB6A22BFF8E6F
                  70FFF0EFEFFFF2F2F2FFF1F1F1FFC2B6B7FF835E42FFAF992EFF754747FF805D
                  60FF805E60FF805E60FF805E60FF805E60FF805E60FF805E60FF805D60FFAB99
                  9BFFF2F2F2FFF0F0F0FF907274FFB6A22CFF967936FFC9BFC0FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3BABBFF9D8435FFB29E2EFF9F8B
                  8DFFF2F2F2FFF2F2F2FFC5BABBFF835D40FFBAA72AFFC1B027FFBEAD28FFBEAC
                  29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFB09C2EFF9B85
                  87FFF1F1F1FFF2F2F2FFA18E90FFB19D2EFF9F8635FFC2B8B9FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC3BABBFF9D8435FFB29E2EFF9F8A
                  8DFFF2F2F2FFF2F2F2FFC5BABBFF835D40FFBAA72AFFC1B027FFBEAD28FFBEAC
                  29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFBEAC29FFB09C2EFF9B85
                  87FFF1F1F1FFF2F2F2FFA18D8FFFB19D2EFF9F8635FFC2B8B9FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAC0C1FF957736FFB6A22CFF8E6E
                  70FFF0EFEFFFF2F2F2FFF1F1F1FFC2B6B7FF835E41FFAF992EFF754747FF805D
                  60FF805E60FF805E60FF805E60FF805E60FF805E60FF805E60FF805D60FFAB99
                  9BFFF2F2F2FFF0F0F0FF907173FFB6A22CFF967836FFC9BFC0FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E0FF856139FFBFAD28FF7D53
                  46FFE8E5E6FFF2F2F2FFF2F2F2FFF1F1F1FFC3B8B9FF7A4E44FF957C7FFFF1F1
                  F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFE9E6E7FF7D5348FFBEAC28FF876339FFDAD5D5FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835E5CFFBBA82AFF9374
                  38FFC6BCBDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F1F1FFC4B9BBFFA28D90FFF2F1
                  F1FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFC8BEBFFF927338FFBBA82AFF835D5AFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB999CFFA48B32FFB29D
                  2DFF8B6C6DFFEDECECFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECEDFFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFEEECECFF8D6E70FFB19C2EFFA58C32FFAA9799FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E1FF815A44FFBDAB
                  29FF937438FFB7A8AAFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFB8AAACFF927338FFBEAB28FF825B43FFDED9DAFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB989AFF9C81
                  35FFBCA929FF835C42FFC5BABBFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC7BC
                  BDFF825C43FFBBA929FF9D8234FFA99698FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8A69
                  6AFFAB9530FFB8A52BFF835C42FFB7A8AAFFEDECECFFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEDECECFFB8AAACFF825C
                  43FFB8A42BFFAC9630FF886768FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF825D5AFFAB9530FFBCA929FF937438FF8B6C6DFFC6BCBDFFE8E5E6FFF0EF
                  EFFFF2F2F2FFF2F2F2FFF0EFEFFFE8E6E6FFC7BDBEFF8C6D6EFF927338FFBBA9
                  29FFAC9630FF825B58FFE9E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF89696AFF9C8135FFBDAB29FFB29D2DFF937438FF7D5346FF8E6E
                  70FF9F8A8DFF9F8B8DFF8E6F70FF7D5346FF937438FFB29D2DFFBDAB28FF9D81
                  35FF896868FFE9E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFAB989AFF815A44FFA48B32FFBBA82AFFBFAD28FFB6A2
                  2CFFB29E2EFFB29E2EFFB6A22BFFBFAD28FFBBA82AFFA48B32FF815A44FFAA97
                  99FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E1FFAC9A9CFF835E5CFF866139FF9577
                  36FF9D8435FF9D8435FF957736FF866139FF835D5BFFA99698FFE4E0E0FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9DAFFCAC0
                  C1FFC3BABBFFC3BABBFFCAC0C1FFDFD9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF}
                Margin = 1
                Spacing = 4
                Style = bsNew
                Transparent = True
              end
              object JvSpeedButton13: TJvSpeedButton
                Left = 582
                Top = 21
                Width = 60
                Height = 55
                Caption = 'Open'
                Glyph.Data = {
                  42100000424D4210000000000000420000002800000020000000200000000100
                  20000300000000100000232E0000232E000000000000000000000000FF0000FF
                  0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BF
                  C0FFC2B8B9FFC2B8B9FFC9BFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD5D6FFA99698FF835C59FF876339FF9679
                  36FF9F8635FF9F8635FF967836FF876239FF835D5AFFA99799FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFA89597FF825B43FFA58D32FFBBA82AFFBEAC28FFB6A2
                  2CFFB19D2EFFB19D2EFFB6A22CFFBEAC28FFBBA82AFFA58C32FF825B43FFA996
                  98FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFE4E0E1FF886666FF9E8334FFBEAC28FFB19C2EFF917238FF7D5348FF9072
                  74FFA18E90FFA18E90FF907273FF7D5348FF927338FFB19C2EFFBEAB28FF9D82
                  35FF886768FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0
                  E1FF815B57FFAD962FFFBBA82AFF917239FF8D6F70FFC8BFC0FFE9E7E7FFF0F0
                  F0FFF2F2F2FFF2F2F2FFF0F0F0FFE9E7E7FFC8BEBFFF8D6E6FFF927338FFBBA9
                  29FFAC9630FF825B58FFE9E6E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8866
                  66FFAD972FFFB7A42BFF825B44FFBAACAEFFEEECEDFFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEDECECFFB8A9ABFF825C
                  43FFB8A52BFFAC9530FF896768FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA89597FF9E83
                  34FFBBA82AFF825B44FFC8BDBFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC7BC
                  BDFF825C43FFBBA929FF9D8135FFAA9799FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD5D6FF825B43FFBEAC
                  28FF917239FFB9ABADFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFB8AAABFF927338FFBDAB28FF815A44FFE4E0E0FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99698FFA58D32FFB19C
                  2EFF8D6F71FFEEEDEDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECECFFF2F1F1FFF2F2F2FFF2F2F2FFF2F2
                  F2FFEDECECFF8C6D6EFFB29D2DFFA48B32FFAA989AFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835D59FFBBA82AFF9272
                  38FFC8BFC0FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F1F1FFA28D8FFFC4B9BAFFF2F1F1FFF2F2F2FFF2F2
                  F2FFF2F2F2FFC7BDBEFF937438FFBBA82AFF835E5BFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD4D5FF876339FFBEAC28FF7D53
                  48FFE9E7E7FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF1F1F1FF957C7FFF794D44FFC3B8B9FFF1F1F1FFF2F2
                  F2FFF2F2F2FFE8E6E6FF7D5346FFBFAD28FF866139FFDFD9DAFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BFC0FF967936FFB6A22CFF9072
                  74FFF0F0F0FFF2F2F2FFAB999BFF805D60FF805E60FF805E60FF805E60FF805E
                  60FF805E60FF805E60FF805D60FF754747FFAF992EFF835E42FFC2B6B7FFF1F1
                  F1FFF2F2F2FFF0EFEFFF8E6F70FFB6A22BFF957736FFCAC0C1FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B8B9FF9F8635FFB19D2EFFA18E
                  90FFF2F2F2FFF1F1F1FF9B8587FFB09C2EFFBEAC29FFBEAC29FFBEAC29FFBEAC
                  29FFBEAC29FFBEAC29FFBEAC29FFBEAD28FFC1B027FFBAA72AFF835D40FFC5BA
                  BBFFF2F2F2FFF2F2F2FF9F8B8DFFB29E2EFF9D8435FFC3BABBFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2B8B9FF9F8635FFB19D2EFFA18D
                  8FFFF2F2F2FFF1F1F1FF9B8587FFB09C2EFFBEAC29FFBEAC29FFBEAC29FFBEAC
                  29FFBEAC29FFBEAC29FFBEAC29FFBEAD28FFC1B027FFBAA72AFF835D40FFC5BA
                  BBFFF2F2F2FFF2F2F2FF9F8A8DFFB29E2EFF9D8435FFC3BABBFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9BFC0FF967836FFB6A22CFF9071
                  73FFF0F0F0FFF2F2F2FFAB999BFF805D60FF805E60FF805E60FF805E60FF805E
                  60FF805E60FF805E60FF805D60FF754747FFAF992EFF835E41FFC2B6B7FFF1F1
                  F1FFF2F2F2FFF0EFEFFF8E6E70FFB6A22CFF957736FFCAC0C1FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAD5D5FF876339FFBEAC28FF7D53
                  48FFE9E6E7FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF1F1F1FF957C7FFF7A4E44FFC3B8B9FFF1F1F1FFF2F2
                  F2FFF2F2F2FFE8E5E6FF7D5346FFBFAD28FF856139FFE4E0E0FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF835D5AFFBBA82AFF9273
                  38FFC8BEBFFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F1F1FFA28D90FFC4B9BBFFF2F1F1FFF2F2F2FFF2F2
                  F2FFF2F2F2FFC6BCBDFF937438FFBBA82AFF835E5CFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAA9799FFA58C32FFB19C
                  2EFF8D6E70FFEEECECFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFEEECEDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFEDECECFF8B6C6DFFB29D2DFFA48B32FFAB999CFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDED9DAFF825B43FFBEAB
                  28FF927338FFB8AAACFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFB7A8AAFF937438FFBDAB29FF815A44FFE4E0E1FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA99698FF9D82
                  34FFBBA929FF825C43FFC7BCBDFFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFC5BA
                  BBFF835C42FFBCA929FF9C8135FFAB989AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8867
                  68FFAC9630FFB8A42BFF825C43FFB8AAACFFEDECECFFF2F2F2FFF2F2F2FFF2F2
                  F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFEDECECFFB7A8AAFF835C
                  42FFB8A52BFFAB9530FF8A696AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E6
                  E7FF825B58FFAC9630FFBBA929FF927338FF8C6D6EFFC7BDBEFFE8E6E6FFF0EF
                  EFFFF2F2F2FFF2F2F2FFF0EFEFFFE8E5E6FFC6BCBDFF8B6C6DFF937438FFBCA9
                  29FFAB9530FF825D5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFE9E6E7FF896868FF9D8135FFBDAB28FFB29D2DFF937438FF7D5346FF8E6F
                  70FF9F8B8DFF9F8A8DFF8E6E70FF7D5346FF937438FFB29D2DFFBDAB29FF9C81
                  35FF89696AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFAA9799FF815A44FFA48B32FFBBA82AFFBFAD28FFB6A2
                  2BFFB29E2EFFB29E2EFFB6A22CFFBFAD28FFBBA82AFFA48B32FF815A44FFAB98
                  9AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E0E0FFA99698FF835D5BFF866139FF9577
                  36FF9D8435FF9D8435FF957736FF866139FF835E5CFFAC9A9CFFE4E0E1FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD9DAFFCAC0
                  C1FFC3BABBFFC3BABBFFCAC0C1FFDFD9DAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF}
                Margin = 1
                Spacing = 4
                Style = bsNew
                Transparent = True
              end
              object PageControl6: TPageControl
                Left = 1
                Top = 1
                Width = 504
                Height = 84
                ActivePage = TabSheet50
                Align = alLeft
                TabOrder = 0
                object TabSheet50: TTabSheet
                  Caption = 'Standard'
                  object PageScroller2: TPageScroller
                    Left = 0
                    Top = 0
                    Width = 569
                    Height = 53
                    Align = alLeft
                    TabOrder = 0
                    object XMLDesignButton: TJvSpeedButton
                      Left = 0
                      Top = 0
                      Width = 49
                      Height = 53
                      Align = alLeft
                      GroupIndex = 1
                      Down = True
                      Glyph.Data = {
                        46090000424D4609000000000000360400002800000024000000240000000100
                        0800000000001005000025160000251600000001000000000000000000000000
                        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                        A6000020400000206000002080000020A0000020C0000020E000004000000040
                        20000040400000406000004080000040A0000040C0000040E000006000000060
                        20000060400000606000006080000060A0000060C0000060E000008000000080
                        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                        20004000400040006000400080004000A0004000C0004000E000402000004020
                        20004020400040206000402080004020A0004020C0004020E000404000004040
                        20004040400040406000404080004040A0004040C0004040E000406000004060
                        20004060400040606000406080004060A0004060C0004060E000408000004080
                        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                        20008000400080006000800080008000A0008000C0008000E000802000008020
                        20008020400080206000802080008020A0008020C0008020E000804000008040
                        20008040400080406000804080008040A0008040C0008040E000806000008060
                        20008060400080606000806080008060A0008060C0008060E000808000008080
                        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFF00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFF00FFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFF00FFFFFF00FF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF0000FFFF
                        FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                        FF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFF00FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                        FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FF00FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFF}
                      OnMouseEnter = XMLDesignButtonMouseEnter
                      OnMouseLeave = XMLDesignButtonMouseLeave
                    end
                    object HtmlMenuSpeedButton: TJvSpeedButton
                      Tag = 1
                      Left = 49
                      Top = 0
                      Width = 49
                      Height = 53
                      Align = alLeft
                      GroupIndex = 1
                      Flat = True
                      Glyph.Data = {
                        46090000424D4609000000000000360400002800000024000000240000000100
                        0800000000001005000025160000251600000001000000000000000000000000
                        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                        A6000020400000206000002080000020A0000020C0000020E000004000000040
                        20000040400000406000004080000040A0000040C0000040E000006000000060
                        20000060400000606000006080000060A0000060C0000060E000008000000080
                        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                        20004000400040006000400080004000A0004000C0004000E000402000004020
                        20004020400040206000402080004020A0004020C0004020E000404000004040
                        20004040400040406000404080004040A0004040C0004040E000406000004060
                        20004060400040606000406080004060A0004060C0004060E000408000004080
                        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                        20008000400080006000800080008000A0008000C0008000E000802000008020
                        20008020400080206000802080008020A0008020C0008020E000804000008040
                        20008040400080406000804080008040A0008040C0008040E000806000008060
                        20008060400080606000806080008060A0008060C0008060E000808000008080
                        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFF525252525252525252525252525252525252FFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        52FFFF00000000000000FFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFF52525252525252525252525252529BFFFF52FFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF0000000000
                        000000FFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFF52FFFF000000000000FFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF00000000000000000000FFFFFF
                        FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF00
                        00000000000000FFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFF525252525252525252525252525252525252525252525252
                        525252529BF6FFFFFFFFFFFF52F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                        F6F6F6F6F6F6F6F6F79BF6FFFFFFFFFF52F60707070707070707070707070708
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F75BF6FFFFFFFF52F607000000000000000000
                        0000F708000000000000F6F60000000000F6075B08FFFFFF52F6070707070707
                        0707070707070708F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6075B08FFFF52F6F6F6
                        F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F75B08FFFF
                        52525252525252525252525252525252525252525252525252525252525252A4
                        F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFF}
                      OnMouseEnter = HtmlMenuSpeedButtonMouseEnter
                      OnMouseLeave = HtmlMenuSpeedButtonMouseLeave
                      OnClick = HtmlMenuSpeedButtonClick
                    end
                  end
                end
              end
            end
            object HTMLEditorView: TPageControl
              Left = 1
              Top = 87
              Width = 825
              Height = 462
              ActivePage = TabSheet46
              Align = alClient
              TabOrder = 1
              object TabSheet46: TTabSheet
                Caption = 'HTML-Designer'
                ImageIndex = 2
                object ScrollBox48: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 817
                  Height = 431
                  Align = alClient
                  TabOrder = 0
                  object HtmlDesignPanel: TJvDesignPanel
                    Left = 0
                    Top = 0
                    Width = 813
                    Height = 427
                    Align = alClient
                    TabOrder = 0
                    OnPaint = HtmlDesignPanelPaint
                    OnGetAddClass = HtmlDesignPanelGetAddClass
                    OnSelectionChange = HtmlDesignPanelSelectionChange
                  end
                end
              end
              object TabSheet34: TTabSheet
                Caption = 'HTML Editor'
                object ScrollBox47: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 714
                  Height = 546
                  Align = alClient
                  TabOrder = 0
                  object SynEdit1: TSynEdit
                    Left = 0
                    Top = 0
                    Width = 710
                    Height = 542
                    Align = alClient
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -16
                    Font.Name = 'Courier New'
                    Font.Style = []
                    TabOrder = 0
                    Gutter.AutoSize = True
                    Gutter.Font.Charset = DEFAULT_CHARSET
                    Gutter.Font.Color = clWindowText
                    Gutter.Font.Height = -14
                    Gutter.Font.Name = 'Courier New'
                    Gutter.Font.Style = []
                    Gutter.LeftOffset = 20
                    Gutter.ShowLineNumbers = True
                    Gutter.Width = 37
                    Highlighter = SynHTMLSyn1
                    Lines.UnicodeStrings = '<html>'#13#10'  <div>'#13#10'  </div>'#13#10'</html>'
                    FontSmoothing = fsmNone
                  end
                end
              end
              object TabSheet45: TTabSheet
                Caption = 'HTML Viewer'
                ImageIndex = 1
                object ScrollBox46: TScrollBox
                  Left = 0
                  Top = 0
                  Width = 714
                  Height = 546
                  Align = alClient
                  TabOrder = 0
                  object WebBrowser1: TWebBrowser
                    Left = 0
                    Top = 0
                    Width = 710
                    Height = 542
                    Align = alClient
                    TabOrder = 0
                    ControlData = {
                      4C000000964C0000981E00000000000000000000000000000000000000000000
                      000000004C000000000000000000000001000000E0D057007335CF11AE690800
                      2B2E126208000000000000004C0000000114020000000000C000000000000046
                      8000000000000000000000000000000000000000000000000000000000000000
                      00000000000000000100000000000000000000000000000000000000}
                  end
                end
              end
            end
          end
          object Panel55: TPanel
            Left = 1043
            Top = 0
            Width = 239
            Height = 550
            Align = alRight
            TabOrder = 3
            object Splitter24: TSplitter
              Left = 1
              Top = 356
              Width = 237
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object Panel56: TPanel
              Left = 1
              Top = 1
              Width = 237
              Height = 355
              Align = alTop
              Caption = 'Panel51'
              TabOrder = 0
              object Panel57: TPanel
                Left = 1
                Top = 1
                Width = 235
                Height = 30
                Align = alTop
                TabOrder = 0
                DesignSize = (
                  235
                  30)
                object Edit15: TEdit
                  Left = 0
                  Top = 0
                  Width = 228
                  Height = 24
                  Anchors = [akLeft, akTop, akRight]
                  TabOrder = 0
                  Text = 'Edit14'
                end
              end
              object TreeView4: TTreeView
                Left = 1
                Top = 31
                Width = 235
                Height = 323
                Align = alClient
                Indent = 19
                TabOrder = 1
              end
            end
          end
        end
      end
      object ConsoleTabSheet: TTabSheet
        Caption = 'Terminal'
        ImageIndex = 9
        object ScrollBox50: TScrollBox
          Left = 0
          Top = 0
          Width = 1286
          Height = 593
          Align = alClient
          TabOrder = 0
          object ConsolePageControl: TPageControl
            Left = 0
            Top = 0
            Width = 1282
            Height = 589
            ActivePage = ClientConsole
            Align = alClient
            TabOrder = 0
            OnChange = ConsolePageControlChange
            object ClientConsole: TTabSheet
              Caption = 'Client: 127.0.0.1'
              object ScrollBox51: TScrollBox
                Left = 0
                Top = 0
                Width = 1274
                Height = 558
                Align = alClient
                TabOrder = 0
                object Label16: TLabel
                  Left = 827
                  Top = 59
                  Width = 53
                  Height = 16
                  Caption = 'NIC-Port:'
                end
                object IPAddressClientLabel: TLabel
                  Left = 827
                  Top = 10
                  Width = 70
                  Height = 16
                  Caption = 'IP-Address:'
                end
                object Console1: TConsole
                  Left = 10
                  Top = 10
                  Width = 797
                  Height = 523
                  AutoUseInsertMode = True
                  InsertMode = True
                  InsertCaret = ctHorizontalLine
                  OverwriteCaret = ctHalfBlock
                  BorderSize = 3
                  ExtraLineSpacing = 0
                  OnCommandExecute = Console1CommandExecute
                  OnGetPrompt = Console1GetPrompt
                  OnPromptKeyPress = Console1PromptKeyPress
                  Color = clBlack
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  ParentColor = False
                  TabOrder = 0
                  TabStop = False
                end
                object Panel49: TPanel
                  Left = 10
                  Top = 508
                  Width = 799
                  Height = 25
                  BevelOuter = bvNone
                  TabOrder = 1
                end
                object FakeClientConnectButton: TJvImgBtn
                  Left = 1001
                  Top = 27
                  Width = 123
                  Height = 73
                  Caption = 'Connect'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  OnClick = FakeClientConnectButtonClickClick
                  Color = clRed
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -16
                  HotTrackFont.Name = 'MS Sans Serif'
                  HotTrackFont.Style = []
                end
                object IPPortEditClient: TEdit
                  Left = 827
                  Top = 79
                  Width = 149
                  Height = 24
                  TabOrder = 3
                end
                object IPAddressEditClient: TEdit
                  Left = 827
                  Top = 30
                  Width = 149
                  Height = 24
                  TabOrder = 4
                  Text = '127.0.0.1'
                  OnChange = IPAddressEditServerChange
                end
              end
            end
            object ServerConsole: TTabSheet
              Caption = 'Server: 10.0.0.10'
              ImageIndex = 1
              object ScrollBox52: TScrollBox
                Left = 0
                Top = 0
                Width = 1171
                Height = 673
                Align = alClient
                TabOrder = 0
                object IPAddressServerLabel: TLabel
                  Left = 827
                  Top = 10
                  Width = 70
                  Height = 16
                  Caption = 'IP-Address:'
                end
                object NICPortLabelClient: TLabel
                  Left = 827
                  Top = 59
                  Width = 53
                  Height = 16
                  Caption = 'NIC-Port:'
                end
                object Console2: TConsole
                  Left = 10
                  Top = 10
                  Width = 797
                  Height = 523
                  AutoUseInsertMode = True
                  InsertMode = True
                  InsertCaret = ctHorizontalLine
                  OverwriteCaret = ctHalfBlock
                  BorderSize = 3
                  ExtraLineSpacing = 0
                  OnCommandExecute = Console2CommandExecute
                  OnGetPrompt = Console2GetPrompt
                  OnPromptKeyPress = Console2PromptKeyPress
                  Color = clBlack
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWhite
                  Font.Height = -13
                  Font.Name = 'Courier New'
                  Font.Style = [fsBold]
                  ParentColor = False
                  TabOrder = 0
                  TabStop = False
                end
                object Panel59: TPanel
                  Left = 10
                  Top = 508
                  Width = 799
                  Height = 25
                  BevelOuter = bvNone
                  TabOrder = 1
                end
                object IPAddressEditServer: TEdit
                  Left = 827
                  Top = 30
                  Width = 149
                  Height = 21
                  TabOrder = 2
                  Text = '10.0.0.10'
                  OnChange = IPAddressEditServerChange
                end
                object NICPortEditServer: TEdit
                  Left = 827
                  Top = 79
                  Width = 149
                  Height = 21
                  TabOrder = 3
                  Text = '2048'
                end
                object FakeServerConnectButton: TJvImgBtn
                  Left = 1001
                  Top = 27
                  Width = 123
                  Height = 73
                  Caption = 'Listen'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clYellow
                  Font.Height = -16
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 4
                  OnClick = FakeServerConnectButtonClick
                  Color = clRed
                  HotTrackFont.Charset = DEFAULT_CHARSET
                  HotTrackFont.Color = clWindowText
                  HotTrackFont.Height = -16
                  HotTrackFont.Name = 'MS Sans Serif'
                  HotTrackFont.Style = []
                end
              end
            end
          end
        end
      end
    end
    object JvPanel1: TJvPanel
      Left = 1
      Top = 25
      Width = 1294
      Height = 30
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -14
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object MenuEdit: TJvArrowButton
        Left = 80
        Top = 1
        Width = 79
        Height = 28
        Align = alLeft
        ArrowWidth = 0
        Caption = 'Edit'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FillFont.Charset = DEFAULT_CHARSET
        FillFont.Color = clBlack
        FillFont.Height = -11
        FillFont.Name = 'MS Sans Serif'
        FillFont.Style = [fsBold]
        ParentFont = False
        PressBoth = False
        SplittedButton = False
        OnClick = MenuEditClick
        OnMouseMove = MenuEditMouseMove
      end
      object MenuFile: TJvArrowButton
        Left = 1
        Top = 1
        Width = 79
        Height = 28
        Align = alLeft
        ArrowWidth = 0
        Caption = 'File'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        FillFont.Charset = DEFAULT_CHARSET
        FillFont.Color = clBlack
        FillFont.Height = -11
        FillFont.Name = 'MS Sans Serif'
        FillFont.Style = [fsBold]
        ParentFont = False
        PressBoth = False
        SplittedButton = False
        OnClick = MenuFileClick
        OnMouseMove = MenuFileMouseMove
      end
    end
    object JvPanel2: TJvPanel
      Left = 1
      Top = 55
      Width = 1294
      Height = 100
      Align = alTop
      TabOrder = 2
      object ComponentPageControl: TPageControl
        Left = 1
        Top = 1
        Width = 640
        Height = 98
        ActivePage = TabSheet40
        Align = alLeft
        TabOrder = 0
        object TabSheet40: TTabSheet
          Caption = 'Standard'
          object PageScroller1: TPageScroller
            Left = 107
            Top = 0
            Width = 511
            Height = 63
            Control = DevelopmentMenuPanel
            TabOrder = 0
            object DevelopmentMenuPanel: TPanel
              Left = 0
              Top = 0
              Width = 511
              Height = 63
              TabOrder = 0
              object JvSpeedButton1: TJvSpeedButton
                Left = 10
                Top = 6
                Width = 49
                Height = 49
                GroupIndex = 1
                Down = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF00FF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF00FFFFFFFF00FFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFF00FFFFFF00FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF0000FFFF
                  FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFF00FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFF00FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
                  00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFF
                  FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF00FFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF00FFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF00FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnMouseEnter = JvSpeedButton1MouseEnter
                OnMouseLeave = JvSpeedButton1MouseLeave
              end
              object JvSpeedButton2: TJvSpeedButton
                Tag = 1
                Left = 62
                Top = 6
                Width = 49
                Height = 49
                GroupIndex = 1
                Flat = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF525252525252525252525252525252525252FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  52FFFF00000000000000FFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF52525252525252525252525252529BFFFF52FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF0000000000
                  000000FFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF52FFFF000000000000FFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF00000000000000000000FFFFFF
                  FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF00
                  00000000000000FFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFF525252525252525252525252525252525252525252525252
                  525252529BF6FFFFFFFFFFFF52F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6F6F6F6F79BF6FFFFFFFFFF52F60707070707070707070707070708
                  F6F6F6F6F6F6F6F6F6F6F6F6F6F75BF6FFFFFFFF52F607000000000000000000
                  0000F708000000000000F6F60000000000F6075B08FFFFFF52F6070707070707
                  0707070707070708F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6075B08FFFF52F6F6F6
                  F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F75B08FFFF
                  52525252525252525252525252525252525252525252525252525252525252A4
                  F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnMouseEnter = JvSpeedButton2MouseEnter
                OnMouseLeave = JvSpeedButton2MouseLeave
              end
              object JvSpeedButton3: TJvSpeedButton
                Tag = 2
                Left = 112
                Top = 6
                Width = 49
                Height = 49
                GroupIndex = 1
                Flat = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7A4F6FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5252005B
                  07FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF07
                  49FFF6F74952FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF5BA4FFFFFFA49BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFF708FFFFF600F6FFFFFF4907FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF52005207A49BFFFFFFF752FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF5207F7520008FFFFFF52F7FFFFFFFFFFFFFFFFFFFFFF
                  FF525252525252525252525252524908FFFF08FFFFFF0849FFFFFFFFFFFFFFFF
                  FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF4908FFFFFFFFFFFFA400A4F6FFFF
                  FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF4908FFFFFFFFFFFFFF07
                  9B005BF6FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF4908FFFFFFFF
                  FFFFFFFFF6529BFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF4908
                  FFFFFFFFFFFFFFF6529BFFFFFFFFFFFFFFFFFFFFFF52FFFF000000000000009B
                  FFFF49F6FFFFFFFFFFFFF6529BFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFF
                  FFFFFFFFFFFF49F6FFFFFFFFFFF6529BFFFFFFFFFFFFFFFFFFFFFFFFFF52F6F6
                  F6F6F6F6F6F6F6F6F6F600F6FFFFFFFFF6529BFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF5252525252525252525252525200F6FFFFFFF6525BFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF00F6FFFFFF525BFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF00F6FFFF525BFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF000000000000009BFFFF00F6FF5249FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFF00F6
                  525B52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                  FFFF00525BFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF00000000
                  0000F6FFFFFF005BFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF
                  FFFFFFFFFFFFFFFFFFFF52FFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFF52FFFF000000000000000000F6FFFFFFFF52FFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFF000000000000009BFFFFFFFF
                  FFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF52FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF525252
                  525252525252525252525252525252FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnMouseEnter = JvSpeedButton3MouseEnter
              end
              object JvSpeedButton4: TJvSpeedButton
                Tag = 3
                Left = 162
                Top = 6
                Width = 50
                Height = 49
                GroupIndex = 1
                Flat = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFDADADADADADADADADADADADAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFF609FFFFFFFFFFFFFFFF0909FF0909FF09ECF5F6FFFFFF
                  FFFFF6F5ECED09FFFFFFFFFFFFF6DA09FFFFFFFFFFFF09DA09FFECE3E3E3ECE3
                  DA09FFFFFF09DAE3ECECE2FFFFFFFFFFFFFFE3E3FFFFFFFFFFFFECE2FFFFECDA
                  09FFFFFFECE2FFFFF6DAECFFFFFFFFFFFFFFFFFFFFFF09DAF6FFFFFFFFFFE2EC
                  FFFFECE2FFFFFFFFF6DA09FFF5DAFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2E2E2
                  E2E2DAF6FFFFECE3FFFFFFFFFFE2ECFFECE2FFFFFFFFFFFFFFFFFFFFFFFFFFEC
                  DA09090909E2E3FFFFFFECE3FFFFFFFFFFE3ECFFECE2FFFFFFFFFFFFFFFFFFFF
                  FFFFFF09DA09FFFFF6DA09FFFFFFECE2FFFFFFFFFFDAF5FF09DAF6FFFFFFFFFF
                  FFFFFFFFFFFFFFFFE3ECFFFFF5DAFFFFFFFFECDAF5FFFFFF09DA09FFFFE2ECFF
                  FFFFFFFFFFFFFFFFFFFFFFFF09E2FFFFE3ECFFFFFFFFECE3EBECF5ECDAECFFFF
                  FF09E2E3F5F5E3FFFFFFFFFFFFFFFFFFFFDA0909DA09FFFFFFFFECE3FF09EBEB
                  09FFFFFFFFFFF6EDEBEBF5FFFFFFFFFFFFFFFFFFFFECEBECE2FFFFFFFFFFECE3
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09DAE2F5FFFFFF
                  FFFFECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2DA
                  F6FFFFFFFFFFECE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFF6FFFFFFFFFFFFEDECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnMouseEnter = JvSpeedButton4MouseEnter
                OnMouseLeave = JvSpeedButton4MouseLeave
                OnClick = JvSpeedButton4Click
              end
              object JvSpeedButton5: TJvSpeedButton
                Tag = 4
                Left = 213
                Top = 6
                Width = 49
                Height = 49
                GroupIndex = 1
                Flat = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF09E2E2E2E2E2
                  E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E209E2F5
                  F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F5E2E2F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6F6F6F607F707F6F6
                  F6F607F6F60707F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6F6074952
                  5B495BF6F60752F6074907F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6
                  0800F7F6F6F65B5BF60752074907F6F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6
                  F6F6F6F6A45BF6F6F6F608000807494907F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6
                  F6F6F6F6F6F6F6F65BA4F6F6F6F6F64907074952F7F6F6F6F6F6F6F6F6F6F6F6
                  F6E2E2F6F6F6F6F6F6F6F6F65BA4F6F6F6F6F6490707520849F7F6F6F6F6F6F6
                  F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6A45BF6F6F6F6F600080752F6085207F6
                  F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F60800F7F6F6F69B52F60752F6
                  F6F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6F60749529B525208
                  F60752F6F6F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6F6F6F6F7
                  F707F6F6F6079BF6F6F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6F6F6F6F6
                  F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6E2E2F6
                  F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6E2E2F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6E2E2F5F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6
                  F6F6F6F6F6F6F6F6F5E209E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2
                  E2E2E2E2E2E2E2E2E2E2E2E2E209FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                Margin = 0
                OnClick = JvSpeedButton5Click
              end
              object JvSpeedButton6: TJvSpeedButton
                Tag = 5
                Left = 263
                Top = 6
                Width = 50
                Height = 49
                GroupIndex = 1
                Flat = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECECECECECEC
                  ECECECECECECECECECECECECECECECECECECECECECECECECFFFFFFFFECFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFF
                  ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC
                  FFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF0000
                  00FFFFECFFFFFFFFECFFFFFFF79BA40708A4F6FFF6A408079B9BF7FFFFFFFFFF
                  FF00FFFFFFFFFFECFFFFFFFFECFFFFA400525B499B00F6FF08005B005B520052
                  F6FFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFF005BFFFFF64900F6FF080049F6
                  FFFF0700A4FFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFF00A4FFFFFFA400F6FF
                  0800F7FFFFFFFF5B49FFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFFA400A407F6
                  F700F6FF080007FFFFFFFFA400F6FFFFFF00FFFFFFFFFFECFFFFFFFFECFFFFFF
                  F75200000000F6FF080007FFFFFFFFF700F6FFFFFF00FFFFFFFFFFECFFFFFFFF
                  ECFFFFFFFFFFFFF6A400F6FF0800A4FFFFFFFFA400FFFFFFFF00FFFFFFFFFFEC
                  FFFFFFFFECFFFFF607FFFFFF9B00FFFF080049F6FFFFF64952FFFFFFFF00FFFF
                  FFFFFFECFFFFFFFFECFFFFF6005BA49B00A4FFFF08009B49A4A4490007FFFFFF
                  FF00FFFFFFFFFFECFFFFFFFFECFFFFFF079B5252F7FFFFFF080007075B529B08
                  FFFFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFF080007FF
                  FFFFFFFFFFFFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFF
                  080007FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFFFFFFFFFFFF
                  FFFFFFFF080007FFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFECFFFFFFFFECFFFFFF
                  FFFFFFFFFFFFFFFF084907FFFFFFFFFFFFFF000000FF000000FFFFECFFFFFFFF
                  ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC
                  FFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFECFFFFFFFFECECECECECECECECECECECECECECECECECECECECECECECEC
                  ECECECECECECECECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnClick = JvSpeedButton6Click
              end
              object JvSpeedButton14: TJvSpeedButton
                Tag = 5
                Left = 314
                Top = 6
                Width = 50
                Height = 49
                GroupIndex = 1
                Flat = True
                Glyph.Data = {
                  46090000424D4609000000000000360400002800000024000000240000000100
                  0800000000001005000025160000251600000001000000000000000000000000
                  80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
                  A6000020400000206000002080000020A0000020C0000020E000004000000040
                  20000040400000406000004080000040A0000040C0000040E000006000000060
                  20000060400000606000006080000060A0000060C0000060E000008000000080
                  20000080400000806000008080000080A0000080C0000080E00000A0000000A0
                  200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
                  200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
                  200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
                  20004000400040006000400080004000A0004000C0004000E000402000004020
                  20004020400040206000402080004020A0004020C0004020E000404000004040
                  20004040400040406000404080004040A0004040C0004040E000406000004060
                  20004060400040606000406080004060A0004060C0004060E000408000004080
                  20004080400040806000408080004080A0004080C0004080E00040A0000040A0
                  200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
                  200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
                  200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
                  20008000400080006000800080008000A0008000C0008000E000802000008020
                  20008020400080206000802080008020A0008020C0008020E000804000008040
                  20008040400080406000804080008040A0008040C0008040E000806000008060
                  20008060400080606000806080008060A0008060C0008060E000808000008080
                  20008080400080806000808080008080A0008080C0008080E00080A0000080A0
                  200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
                  200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
                  200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
                  2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
                  2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
                  2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
                  2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
                  2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
                  2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
                  2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
                  FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFECECECECECECECECECECECECECECECECECECECEC
                  ECECECECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFF
                  ECFFFFFFFF52525252F7FF52525252F7FF525252FFFFFFECFFFFFFFFFFFFFFFF
                  FFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFF
                  FFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEC
                  FFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFF52525252525252F7FF525252525252
                  FFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFF6F6
                  F6F6F6FFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFF525252
                  FFFFF6080808F6F75252F7FFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFF
                  FFFFFFFFFF07A4A4F7070708F6F6FFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFF
                  ECFFFFFFFFFFFFFFFFF6A407AF65AD0708F6F6FFFFFFFFECFFFFFFFFFFFFFFFF
                  FFFFFFFFECFFFFFFFF52525252F7F7F608A536AD07525252FFFFFFECFFFFFFFF
                  FFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFF0708AE7F2D36AD0708F6F6FFFFEC
                  FFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFF6DAEBF7F3636AD0708
                  F6F6FFECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFF525252FFFFFF087FB6BF7F
                  3636AD0708F6F6ECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFF
                  087FB6BF7F3636AD0708F6ECFFFFFFFFFFFFFFFFFFFFFFFFECFFFFFFFFFFFFFF
                  FFFFFFFFFF087FB6BF7F3636AD0708E4F6FFFFFFFFFFFFFFFFFFFFFFECFFFFFF
                  FF525252525252FFFFFF087FB6BF7F3636AD07A3F6F6FFFFFFFFFFFFFFFFFFFF
                  ECFFFFFFFFFFFFFFFFFFFFFFFFFFFF087FB6BF7F3636ADA308F6F6FFFFFFFFFF
                  FFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF087FB6BF7F36369B0708F6F6
                  FFFFFFFFFFFFFFFFECFFFFFFFF525252525252525252FFFFFF087FB6BF7FADA4
                  F70708F6F6FFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF087F
                  B6F70707F7F70708F6FFFFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFF08AD070807F754A507F6F6FFFFFFFFFFFFECFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFF60708079D4E0EA5F6F6FFFFFFFFFFFFECFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFF6F7A5A7574F0CF6FFFFFFFFFFFFFFECECECEC
                  ECECECECECECECECECECECECECECECECECECEC0EEFA75607F6FFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF080E5E07FFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0808FFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFF}
                OnClick = JvSpeedButton6Click
              end
            end
          end
          object BackgroundViewButton: TJvImgBtn
            Left = 6
            Top = 7
            Width = 96
            Height = 50
            Caption = 'View'
            TabOrder = 1
            OnClick = BackgroundViewButtonClick
            Color = 8454016
            Images = ImageList1
            ImageIndex = 8
          end
        end
        object TabSheet41: TTabSheet
          Caption = 'Database Control'#39's'
          ImageIndex = 1
          object JvImgBtn2: TJvImgBtn
            Left = 6
            Top = 7
            Width = 96
            Height = 50
            Caption = 'View'
            TabOrder = 0
            OnClick = BackgroundViewButtonClick
            Color = 8454016
          end
        end
        object TabSheet42: TTabSheet
          Caption = 'Database Source'#39's'
          ImageIndex = 2
          object JvImgBtn3: TJvImgBtn
            Left = 6
            Top = 7
            Width = 96
            Height = 50
            Caption = 'View'
            TabOrder = 0
            OnClick = BackgroundViewButtonClick
            Color = 8454016
          end
        end
      end
      object HelpAuthoringPageControl: TPageControl
        Left = 641
        Top = 1
        Width = 512
        Height = 98
        ActivePage = TabSheet35
        Align = alLeft
        Enabled = False
        TabOrder = 1
        Visible = False
        object TabSheet35: TTabSheet
          Caption = 'Start'
          object SpeedButton2: TSpeedButton
            Left = 0
            Top = 0
            Width = 60
            Height = 60
            Glyph.Data = {
              42100000424D4210000000000000420000002800000020000000200000000100
              20000300000000100000D70D0000D70D000000000000000000000000FF0000FF
              0000FF0000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000A6A6A614A8A8
              A838A8ABAB46A8ABAB46A8A8A838AEAEAE130000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000FFFFFF01ABABAB43AAACAC9CAAABABE1AAABABFFAAAB
              ABFFAAABABFFAAABABFFAAABABFFAAABABFFAAABABE0A9ABAB9BAAAAAA42FFFF
              FF01000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000ABABAB3AACADADC4ACADADFFACADADFFACADADFFACADADFFACAD
              ADFFACADADFFACADADFFACADADFFACADADFFACADADFFACADADFFACADADFFACAD
              ADCAADADAD410000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000AAAA
              AA0FAEAEAEAEAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAF
              AFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAFAFFFAEAF
              AFFFAEAFAFFFAEAEAEABB6B6B60E000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000AFAFAF23B0B1
              B0D5B0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1
              B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1B0FFB0B1
              B0FFB0B1B0FFB0B1B0FFB0B1B0D9B3B3B3280000000000000000000000000000
              00000000000000000000000000000000000000000000B3B3B325B1B2B2ECB1B2
              B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2
              B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2
              B2FFB1B2B2FFB1B2B2FFB1B2B2FFB1B2B2EBB1B1B12400000000000000000000
              000000000000000000000000000000000000B6B6B60EB3B4B4D4B3B4B4FFB3B4
              B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4
              B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4
              B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4FFB3B4B4D7AFAFAF10000000000000
              000000000000000000000000000000000000B5B7B5B0B5B6B5FFB5B6B5FFB5B6
              B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6
              B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6
              B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B6B5FFB5B5B5AD000000000000
              0000000000000000000000000000B7B7B740B6B8B7FFB6B8B7FFB6B8B7FFB6B8
              B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8
              B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8
              B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB6B8B7FFB7B7B7430000
              00000000000000000000FFFFFF01B8B9B9CCB8B9B9FFB8B9B9FFB8B9B9FFB8B9
              B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FF8D9091FFB8B9B9FFB8B9
              B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9
              B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8B9B9FFB8BABACAFFFF
              FF010000000000000000BBBBBB40BABBBAFFBABBBAFFBABBBAFFBABBBAFFBABB
              BAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFF192224FF454B4CFF9EA1
              A0FFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABB
              BAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFBABBBAFFB9B9
              B93E0000000000000000BBBDBB8FBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBD
              BCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFF1E2528FF1E2528FF2127
              2AFF5D6263FFAEB0AFFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBD
              BCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBBBDBCFFBCBD
              BC8C0000000000000000BEBFBEDEBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBF
              BEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFF22292BFF22292BFF2229
              2BFF22292BFF2D3234FF757979FFB8BAB9FFBDBFBEFFBDBFBEFFBDBFBEFFBDBF
              BEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBFBEFFBDBF
              BEDC00000000BFBFBF18BFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0
              BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFF272C2EFF272C2EFF272C
              2EFF272C2FFF272D2FFF272D2FFF383F3FFF878A8AFFBEBFBEFFBFC0BFFFBFC0
              BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0BFFFBFC0
              BFFFC2C2C215C2C2C23BC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2
              C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FF2B3032FF2B3032FF2B30
              32FF2B3032FF2B3032FF2B3032FF2B3032FF2C3032FF4D5051FF9FA1A0FFC1C2
              C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2C1FFC1C2
              C1FFC0C0C039C1C4C44AC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
              C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FF2F3335FF2F3335FF3033
              35FF303435FF303435FF303435FF303435FF303435FF303435FF313537FF6164
              65FFB0B2B2FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4C3FFC2C4
              C3FFC4C4C449C4C4C44AC4C5C4FFC6C6C6FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5
              C4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FF343738FF343738FF3437
              38FF343739FF343739FF343739FF343739FF343739FF343739FF36393BFF6467
              67FFB3B5B4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FFC4C5C4FFC6C7C6FFC4C5
              C4FFC3C6C348C7C7C73BC6C7C6FFC9CAC9FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7
              C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FF383A3CFF383B3CFF383B
              3CFF383B3CFF383B3CFF393B3CFF393B3CFF393B3CFF5C5F5FFFABACACFFC6C7
              C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFC6C7C6FFCACBCAFFC6C7
              C6FFC5C5C539CACACA18C7C9C8FFCBCDCCFFC7C9C8FFC7C9C8FFC7C9C8FFC7C9
              C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FF3D3E3FFF3D3E3FFF3D3E
              3FFF3D3E3FFF3D3E3FFF3D3E3FFF515253FF999B9AFFC7C9C8FFC7C9C8FFC7C9
              C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFC7C9C8FFCCCDCCFFC7C9
              C8FFC2CEC21500000000C9CBC9DED1D3D1FFC9CBC9FFC9CBC9FFC9CBC9FFC9CB
              C9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FF414242FF414242FF4142
              42FF414242FF4A4C4CFF898B8AFFC5C7C5FFC9CBC9FFC9CBC9FFC9CBC9FFC9CB
              C9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFC9CBC9FFD1D4D1FFC9CB
              C9DC0000000000000000CCCCCC90D3D4D3FFCCCDCCFFCBCCCBFFCBCCCBFFCBCC
              CBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFF454546FF454546FF4848
              49FF7B7B7BFFC0C1C0FFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCC
              CBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCBCCCBFFCCCDCCFFD3D5D3FFCBCC
              CB8D0000000000000000CBCFCB40CDD0CEFFD6D8D7FFCCCECDFFCCCECDFFCCCE
              CDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFF4A4949FF6C6D6DFFB6B8
              B7FFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCE
              CDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFCCCECDFFD7D8D8FFCDCFCEFFCECE
              CE3E0000000000000000FFFFFF01CED0CECCDBDDDBFFCFD1CFFFCED0CEFFCED0
              CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFAEB0AEFFCED0CEFFCED0
              CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCED0
              CEFFCED0CEFFCED0CEFFCED0CEFFCED0CEFFCFD1CFFFDBDCDBFFCED0CECFFFFF
              FF02000000000000000000000000D0D4D041D2D4D2FFDCDEDCFFD0D2D0FFD0D2
              D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2
              D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2
              D0FFD0D2D0FFD0D2D0FFD0D2D0FFD0D2D0FFDDDFDDFFD2D3D2FFCED2CE440000
              000000000000000000000000000000000000D3D3D3B2DCDDDCFFDADCDAFFD2D3
              D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3
              D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3D2FFD2D3
              D2FFD2D3D2FFD2D3D2FFD2D3D2FFDBDCDBFFDCDDDCFFD2D3D2AF000000000000
              000000000000000000000000000000000000DBDBDB0ED3D5D3D5E0E2E0FFD9DB
              D9FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5
              D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5D3FFD3D5
              D3FFD3D5D3FFD3D5D3FFD9DCD9FFE0E2E0FFD3D5D3D8CFCFCF10000000000000
              00000000000000000000000000000000000000000000D7D7D726D5D7D5EDE4E6
              E4FFDEE1DEFFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7
              D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7D5FFD5D7
              D5FFD5D7D5FFDFE0DFFFE3E5E3FFD5D7D5ECD6D6D62500000000000000000000
              0000000000000000000000000000000000000000000000000000D4DCD424D6D9
              D6D6E1E3E1FFE5E7E5FFDADBDAFFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9
              D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFD7D9D7FFDADB
              DAFFE6E8E6FFE1E3E1FFD7DAD7DAD9D9D9280000000000000000000000000000
              000000000000000000000000000000000000000000000000000000000000DFDF
              DF10D8DAD8B1DCDDDCFFE7E9E7FFE5E7E5FFDDDFDDFFD8DAD8FFD8DAD8FFD8DA
              D8FFD8DAD8FFD8DAD8FFD8DAD8FFD8DAD8FFD8DAD8FFDDDFDDFFE5E6E5FFE7E9
              E7FFDCDDDCFFD7DAD7AEDDDDDD0F000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000D9DDD943DADCDACDDEE1DEFFE6E7E6FFEAEBEAFFE8E9E8FFE6E8
              E6FFE4E5E4FFE4E5E4FFE6E8E6FFE8E9E8FFEAEBEAFFE6E7E6FFDEE1DEFFDADC
              DACCD8DCD8420000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000FFFFFF01DEDEDE45DCDDDC9FDCDEDCE3DEE0DEFFE0E3
              E0FFE2E4E2FFE2E4E2FFE0E3E0FFDEE0DEFFDCDEDCE2DBDFDB9EDDDDDD44FFFF
              FF01000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000DBDBDB15DCE1
              DC3BDEDEDE46DEDEDE46DCE1DC3BDBDBDB150000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000}
          end
          object SpeedButton4: TSpeedButton
            Left = 207
            Top = 31
            Width = 28
            Height = 27
            Glyph.Data = {
              42090000424D4209000000000000420000002800000018000000180000000100
              20000300000000090000232E0000232E000000000000000000000000FF0000FF
              0000FF000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
              4EFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFCB9165FFE1A87CFFE1A87CFFE1A87CFFE1A87CFFCC91
              65FFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB57A4EFFB57A4EFFB57A4EFFB57A
              4EFFB57A4EFFB57A4EFFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFD3B7A1FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A2FFB57A4EFFCE9468FFE1A8
              7CFFE1A87CFFE1A87CFFE9AF83FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE9B0
              84FFE1A87CFFE1A87CFFE1A87CFFCF9569FFB57A4EFFD3B7A2FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFDCA3
              77FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B
              4FFFDCA377FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7
              A1FFB67B4FFFDCA377FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFDEA579FFB67C50FFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFD3B7A1FFB67B4FFFDCA377FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFDEA5
              79FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFD3B7A2FFB67B4FFFDCA377FFF0B78BFFF0B78BFFDEA579FFB67B
              4FFFD3B7A2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFDCA377FFDEA579FFB67B4FFFD3B7
              A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFB67B4FFFD3B7A1FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFD3B7A1FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FF}
          end
          object SpeedButton5: TSpeedButton
            Left = 249
            Top = 31
            Width = 28
            Height = 27
            Glyph.Data = {
              42090000424D4209000000000000420000002800000018000000180000000100
              20000300000000090000232E0000232E000000000000000000000000FF0000FF
              0000FF000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B39DFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B39CFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFD2B39DFFB57A4EFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFD2B39DFFB67C50FFCF9569FFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFD2B39DFFB67B4FFFDEA579FFE1A87CFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B3
              9DFFB67C50FFDEA579FFF0B78BFFE1A87CFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B39CFFB67C
              50FFDEA579FFF0B78BFFF0B78BFFE1A87CFFB57A4EFFC49877FFC49877FFC498
              77FFC49877FFC49877FFC49877FFC49877FFC49877FFC49877FFC49877FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B39DFFB67C50FFDEA5
              79FFF0B78BFFF0B78BFFF0B78BFFE8B084FFD3996DFFD3996DFFD3996DFFD399
              6DFFD3996DFFD3996DFFD3996DFFD3996DFFD3996DFFCB9165FFB57A4EFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B39DFFB67C50FFDEA579FFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE1A87CFFB57A4EFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD2B39DFFB67B4FFFDEA579FFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE1A87CFFB57A4EFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFDCA377FFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE1A87CFFB57A4EFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A2FFB67B4FFFDCA377FFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE1A87CFFB57A4EFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFDCA3
              77FFF0B78BFFF0B78BFFF0B78BFFE8AF83FFD2986CFFD2986CFFD2986CFFD298
              6CFFD2986CFFD2986CFFD2986CFFD2986CFFD2986CFFCB9165FFB57A4EFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B
              4FFFDCA377FFF0B78BFFF0B78BFFE1A87CFFB57A4EFFC49776FFC49776FFC497
              76FFC49776FFC49776FFC49776FFC49776FFC49776FFC49776FFC49776FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7
              A1FFB67B4FFFDCA377FFF0B78BFFE1A87CFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFD3B7A1FFB67B4FFFDCA377FFE1A87CFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFD3B7A2FFB67B4FFFCE9468FFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFD3B7A1FFB57A4EFFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB57A4EFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FF}
          end
          object SpeedButton6: TSpeedButton
            Left = 332
            Top = 31
            Width = 29
            Height = 27
            Glyph.Data = {
              42090000424D4209000000000000420000002800000018000000180000000100
              20000300000000090000232E0000232E000000000000000000000000FF0000FF
              0000FF000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A
              4EFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFCB9165FFE1A87CFFE1A87CFFE1A87CFFE1A87CFFCC91
              65FFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFC49776FFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFC49877FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB57A4EFFB57A4EFFB57A4EFFB57A
              4EFFB57A4EFFB57A4EFFD2986CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFD399
              6DFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFB57A4EFFD3B7A1FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A2FFB57A4EFFCE9468FFE1A8
              7CFFE1A87CFFE1A87CFFE9AF83FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE9B0
              84FFE1A87CFFE1A87CFFE1A87CFFCF9569FFB57A4EFFD3B7A2FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFDCA3
              77FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B
              4FFFDCA377FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7
              A1FFB67B4FFFDCA377FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFDEA579FFB67C50FFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFD3B7A1FFB67B4FFFDCA377FFF0B78BFFF0B78BFFF0B78BFFF0B78BFFDEA5
              79FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFD3B7A2FFB67B4FFFDCA377FFF0B78BFFF0B78BFFDEA579FFB67B
              4FFFD3B7A2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFDCA377FFDEA579FFB67B4FFFD3B7
              A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFB67B4FFFB67B4FFFD3B7A1FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFD3B7A1FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FF}
          end
          object SpeedButton7: TSpeedButton
            Left = 290
            Top = 31
            Width = 29
            Height = 27
            Glyph.Data = {
              A2090000424DA209000000000000420000002800000019000000180000000100
              20000300000060090000232E0000232E000000000000000000000000FF0000FF
              0000FF000000F0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFD2B39DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFB57A4EFFD2B39CFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFB57A4EFFB57A4EFFD2B39DFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A4EFFD1976BFFB77C50FFD2B39DFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A4EFFE1A87CFFE0A67AFFB77C
              50FFD2B39DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A4EFFE1A87CFFF0B7
              8BFFE0A67AFFB77C50FFD2B39DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFC49877FFC49877FFC49877FFC498
              77FFC49877FFC49877FFC49877FFC49877FFC49877FFC49877FFB57A4EFFE1A8
              7CFFF0B78BFFF0B78BFFE0A67AFFB77C50FFD2B39CFFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A4EFFCB9165FFD399
              6DFFD3996DFFD3996DFFD3996DFFD3996DFFD3996DFFD3996DFFD3996DFFD399
              6DFFE8B084FFF0B78BFFF0B78BFFF0B78BFFE0A67AFFB77C50FFD2B39DFFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A4EFFE1A8
              7CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFE0A67AFFB77C
              50FFD2B39DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A
              4EFFE1A87CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFE0A67AFFB77C50FFD2B39DFFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFB57A4EFFE1A87CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFB57A4EFFE1A87CFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B78BFFF0B7
              8BFFF0B78BFFDEA579FFB67B4FFFD3B7A2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFB57A4EFFCB9165FFD2986CFFD2986CFFD2986CFFD298
              6CFFD2986CFFD2986CFFD2986CFFD2986CFFD2986CFFE8AF83FFF0B78BFFF0B7
              8BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFC49776FFC49776FFC49776FFC49776FFC497
              76FFC49776FFC49776FFC49776FFC49776FFC49776FFB57A4EFFE1A87CFFF0B7
              8BFFF0B78BFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A4EFFE1A8
              7CFFF0B78BFFDEA579FFB67C50FFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFB57A
              4EFFE1A87CFFDEA579FFB67B4FFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFB57A4EFFCF9569FFB67B4FFFD3B7A2FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFB57A4EFFB57A4EFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFB57A4EFFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFD3B7A1FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0
              F0FFF0F0F0FF}
          end
          object JvArrowButton6: TJvArrowButton
            Left = 70
            Top = 0
            Width = 120
            Height = 60
            AllowAllUp = True
            ArrowWidth = 26
            DropDown = TopicPopupMenu
            DropOnButtonClick = True
            Caption = 'Topic'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -14
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            FillFont.Charset = DEFAULT_CHARSET
            FillFont.Color = clWindowText
            FillFont.Height = -11
            FillFont.Name = 'MS Sans Serif'
            FillFont.Style = [fsBold]
            Glyph.Data = {
              42090000424D4209000000000000420000002800000018000000180000000100
              20000300000000090000232E0000232E000000000000000000000000FF0000FF
              0000FF000000FFFFFFFFFFFFFFFFAAABACFFACACADFFB1B2B3FFB7B9B9FFBEBE
              BFFFC4C5C5FFCBCBCCFFD1D1D2FFD9D9D9FFE1E1E2FFE9E9E9FFF1F1F1FFFAFA
              FAFFFCFCFCFFF2F2F2FFE7E8E8FFDDDDDEFFD3D3D4FFCACACBFFC6C7C7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABACFFACACADFFB1B2B3FFB7B9B9FFBEBE
              BFFFC4C5C5FFCBCBCCFFD1D1D2FFD9D9D9FFE1E1E2FFE9E9E9FFF1F1F1FFFAFA
              FAFFFCFCFCFFF2F2F2FFE7E8E8FFDDDDDEFFD3D3D4FFCACACBFFC6C7C7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB7B9B9FFBEBE
              BFFFC4C5C5FFCACACBFFD0D0D1FFD8D8D8FFE0E0E1FFE8E8E8FFF1F1F1FFFAFA
              FAFFFCFCFCFFF2F2F2FFE7E8E8FFDDDDDEFFD3D3D4FFCACACBFFC5C6C6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB4B5B6FFBBBD
              BFFFC4C8CEFFCFD3DBFFD9DCE6FFE1E5EEFFE9EDF6FFF0F4FDFFF7FCFFFFFEFF
              FFFFFFFFFFFFF6F9FDFFE8EAEDFFDBDCDDFFD3D3D4FFCACACBFFC5C5C6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9AAAAFFA8A9AAFFB4B7BDFFCED2D9FFD8D4
              CCFFDFCEABFFE6CE9BFFE7CA8EFFE4C583FFE1C07DFFDEBC7CFFDDBC82FFDDC0
              8DFFE0C69EFFE3CFB2FFEAE3D9FFECEFF3FFDBDEE3FFC7C8C9FFC3C4C4FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABADFFC0C2C4FFDECCADFFD6AA55FFCE93
              1BFFCC8900FFCF8B00FFD08B00FFCD8700FFC68000FFBF7800FFB77000FFB16A
              00FFAA6400FFA55F00FFA86810FFB68749FFD0BA9EFFDEDFDFFFCACCCDFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E3EAFFEBE1D1FFB67101FFBF7600FFC781
              00FFD18B00FFD99400FFDC9A00FFD69604FFCE900AFFC7890AFFC08006FFB673
              00FFAD6600FFA55D00FF9E5400FF924900FF7F3A00FFD3C4B0FFF4F7FAFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B2B4FFCBCBCCFFB99F72FFB28223FFC699
              3DFFCBA95BFFD1B981FFD5C6A1FFD9CFB7FFDFD7C6FFE4DDCEFFEAE0CEFFECDD
              C4FFE3CCA7FFCDAB76FFBC9052FF9C6A28FF9D7F59FFCBCAC8FFBEC0C2FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9EFFA2A3A4FFC4C8CDFFB3B6BAFFBDC1
              C7FFC3C8D1FFCACED7FFD1D3DBFFD9DBE0FFE1E3E8FFEAEBEFFFF3F5F9FFFCFE
              FFFFFFFFFFFFF6FBFFFFEBEFF3FFD8DADCFFDCDFE3FFBABCBCFFACADADFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFABACACFFACADAEFFAFB0B1FFB8B9BAFFBEBE
              BFFFC4C5C5FFCBCBCCFFD0D0D2FFD8D8D8FFE0E0E1FFE8E8E9FFF1F1F1FFFAFA
              FAFFFCFCFCFFF2F2F2FFE7E7E8FFDEDFE0FFD2D2D4FFCBCCCDFFC8C9C9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB5B6B7FFBBBC
              BEFFC2C5C9FFCBCFD7FFD5D9E3FFDFE3ECFFE8EBF4FFEFF3FBFFF6FBFFFFFEFF
              FFFFFFFFFFFFF4F7FAFFE7E9EAFFDCDCDDFFD3D3D4FFCACACBFFC5C5C6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9AAAAFFA9AAAAFFB2B6BBFFC7CAD1FFDCDB
              D7FFE2DAC8FFE2CEA4FFE1C487FFE0BE77FFDEBB73FFDBB773FFD9B678FFDBBC
              88FFE3CCA8FFECE1D0FFF0EEEAFFE9EBEEFFD9DBE0FFC8C9C9FFC3C4C4FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9ABFFBCBEBFFFE0D4BCFFD4A959FFD198
              26FFD0900BFFD08C00FFD08B00FFCC8600FFC68100FFBF7900FFB87100FFB16A
              00FFAB6400FFAA6704FFAE711FFFB58648FFD9C8B3FFDADBDCFFC8CACBFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE1E8FFEAE1D1FFBA7400FFBF7700FFC681
              00FFD08900FFD89300FFDC9800FFD59200FFCD8A00FFC48100FFBC7800FFB46F
              00FFAC6600FFA45C00FF9D5400FF934B00FF833F00FFD4C5B2FFF3F7F9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B7BBFFD1D0CEFFB39663FFB47D12FFC794
              2CFFCBAA61FFD1B87CFFD7C18EFFD9C79EFFDCCCA9FFE0D1B1FFE4D2B0FFE5D0
              ACFFE0C79DFFD0AF7FFFB88643FF985E11FF927149FFCECAC5FFC3C5C7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF999A9BFFA2A3A5FFBCC0C7FFB0B0AEFFBEC0
              C1FFC3C8D2FFCACED7FFD0D4DDFFD9DCE3FFE2E5ECFFEAEDF3FFF4F7FDFFFDFF
              FFFFFFFFFFFFF7FBFFFFEAECF0FFD3D1CEFFD3D5D9FFB8B9BBFFA7A8A8FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFABACACFFACADAEFFB0B0B2FFB8BABCFFBEBF
              C0FFC4C5C5FFCBCBCCFFD1D1D2FFD8D8D9FFE1E1E2FFE9E9E9FFF1F1F1FFFAFA
              FAFFFCFCFCFFF2F2F2FFE7E8E9FFDFE0E2FFD4D3D5FFCBCCCCFFC8C9C9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB5B6B7FFBBBC
              BEFFC2C5C9FFCBCFD5FFD4D7DFFFDDE1E9FFE6E9F2FFEEF2F9FFF5F9FFFFFDFF
              FFFFFEFFFFFFF4F7FAFFE7E9EBFFDCDCDDFFD3D3D4FFCACACBFFC5C5C6FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFA9AAAAFFB1B4B9FFC6CBD3FFD3D2
              CFFFE0D8C6FFE8DABEFFE9D6B0FFE6CD9BFFE3C891FFE1C691FFE2C99BFFE8D4
              B2FFECDDC6FFEDE3D4FFECE9E6FFE9EDF2FFD8DBDFFFC7C8C9FFC4C5C5FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8AAFFB9BBBFFFDCD1BDFFDCBA79FFD099
              2AFFCF900AFFD08E01FFD08C00FFCC8800FFC68100FFBF7A00FFB87300FFB26D
              00FFAD6900FFAA6806FFAD701EFFC39C6AFFDACBB8FFD9DBDCFFC7C9C9FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFDADEE5FFEAE2D3FFBD7908FFBE7600FFC682
              00FFCE8C00FFD69500FFDA9900FFD59400FFCD8C00FFC58400FFBE7C00FFB774
              00FFAF6C00FFA86400FFA15A00FF934B00FF854200FFD8C9B5FFF2F4F7FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEC1FFD5D4D1FFB39256FFB57B0BFFC280
              00FFD08B00FFDC9700FFE39F00FFDB9700FFD38E00FFCA8600FFC27D00FFB974
              00FFB16A00FFA76000FF9D5700FF905506FF957040FFD1CDC7FFCDCFD1FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8F90FF97989AFFC1C4C9FFBBB7B1FFBBAB
              8AFFC9A962FFC59C3FFFC2962FFFBC8D21FFB6851EFFB0801DFFAC7B20FFAA7B
              2CFFAB803BFFB5915AFFB39F84FFB4AFA8FFC6C8CBFF9EA0A2FF8F9091FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF949596FF939495FF929394FF979A9CFFAAAE
              B4FFB7BCC4FFB8BBC1FFB6B7BAFFB4B4B4FFB5B6B8FFB5B7B9FFB4B4B4FFB6B7
              B8FFB9BCC0FFBABFC5FFAFB3B8FF9B9DA0FF919394FF939495FF949596FFFFFF
              FFFFFFFFFFFF}
            Layout = blGlyphTop
            ParentFont = False
          end
          object TopicSettingButton: TJvArrowButton
            Left = 210
            Top = -1
            Width = 185
            Height = 31
            AllowAllUp = True
            ArrowWidth = 26
            DropDown = TopicSettingPopupMenu
            DropOnButtonClick = True
            Caption = 'Topic Settings'
            FillFont.Charset = DEFAULT_CHARSET
            FillFont.Color = clWindowText
            FillFont.Height = -11
            FillFont.Name = 'MS Sans Serif'
            FillFont.Style = []
          end
        end
        object TabSheet44: TTabSheet
          Caption = 'Format'
          ImageIndex = 1
        end
        object TabSheet49: TTabSheet
          Caption = 'Insert'
          ImageIndex = 2
        end
        object TabSheet51: TTabSheet
          Caption = 'Tools'
          ImageIndex = 3
        end
      end
      object NavigatorPageControl: TPageControl
        Left = 1153
        Top = 1
        Width = 473
        Height = 98
        ActivePage = TabSheet52
        Align = alLeft
        TabOrder = 2
        object TabSheet52: TTabSheet
          Caption = 'Navigator'
          object JvToolBar1: TJvToolBar
            Left = 156
            Top = 0
            Width = 164
            Height = 67
            Align = alLeft
            AutoSize = True
            ButtonHeight = 36
            ButtonWidth = 41
            Customizable = True
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Wingdings 2'
            Font.Style = []
            List = True
            ParentFont = False
            ShowCaptions = True
            TabOrder = 0
            Transparent = True
            object NavigatorAdd: TToolButton
              Left = 0
              Top = 2
              AutoSize = True
              Caption = #202
              Enabled = False
              OnClick = NavigatorAddClick
            end
            object NavigatorDelete: TToolButton
              Left = 39
              Top = 2
              AutoSize = True
              Caption = #207
              Enabled = False
              ImageIndex = 1
              OnClick = NavigatorDeleteClick
            end
            object NavigatorSave: TToolButton
              Left = 82
              Top = 2
              AutoSize = True
              Caption = 'P'
              ImageIndex = 2
              OnClick = NavigatorSaveClick
            end
            object NavigatorCancel: TToolButton
              Left = 127
              Top = 2
              AutoSize = True
              Caption = 'V'
              Enabled = False
              ImageIndex = 3
            end
          end
          object JvToolBar2: TJvToolBar
            Left = 0
            Top = 0
            Width = 156
            Height = 67
            Align = alLeft
            AutoSize = True
            ButtonHeight = 36
            ButtonWidth = 39
            Customizable = True
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Webdings'
            Font.Style = []
            List = True
            ParentFont = False
            ShowCaptions = True
            TabOrder = 1
            Transparent = True
            object NavigatorFirst: TToolButton
              Left = 0
              Top = 2
              AutoSize = True
              Caption = '9'
              Enabled = False
              OnClick = NavigatorFirstClick
            end
            object NavigatorPrev: TToolButton
              Left = 38
              Top = 2
              AutoSize = True
              Caption = '3'
              Enabled = False
              ImageIndex = 1
              OnClick = NavigatorPrevClick
            end
            object NavigatorNext: TToolButton
              Left = 81
              Top = 2
              AutoSize = True
              Caption = '4'
              Enabled = False
              ImageIndex = 2
              OnClick = NavigatorNextClick
            end
            object NavigatorLast: TToolButton
              Left = 124
              Top = 2
              AutoSize = True
              Caption = ':'
              Enabled = False
              ImageIndex = 3
              OnClick = NavigatorLastClick
            end
          end
          object JvToolBar3: TJvToolBar
            Left = 320
            Top = 0
            Width = 30
            Height = 67
            Align = alLeft
            AutoSize = True
            ButtonHeight = 36
            ButtonWidth = 30
            Customizable = True
            Font.Charset = SYMBOL_CHARSET
            Font.Color = clBlack
            Font.Height = -27
            Font.Name = 'Wingdings 2'
            Font.Style = []
            List = True
            ParentFont = False
            ShowCaptions = True
            TabOrder = 2
            Transparent = True
            object NavigatorRefresh: TToolButton
              Left = 0
              Top = 2
              AutoSize = True
              Caption = 'N'
              Enabled = False
              ImageIndex = 3
            end
          end
        end
      end
    end
  end
  object IdTCPClient1: TIdTCPClient
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 0
    Left = 668
    Top = 12
  end
  object IdAntiFreeze1: TIdAntiFreeze
    Left = 581
  end
  object LocationPopupMenu: TPopupMenu
    AutoPopup = False
    OwnerDraw = True
    Left = 312
    Top = 44
    object data1: TMenuItem
      Caption = 'Date'
      OnMeasureItem = data1MeasureItem
      object Week13: TMenuItem
        Caption = 'Week 1'
        OnMeasureItem = Week13MeasureItem
        object Monday3: TMenuItem
          Caption = 'Monday'
          OnMeasureItem = Monday3MeasureItem
          object AfterMeridan28: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan28MeasureItem
            object N00000100am27: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am27: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am27: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am27: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am27: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am27: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N1: TMenuItem
              Caption = '-'
            end
            object N06000700am27: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am28: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am27: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am28: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am28: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am28: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian28: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian28MeasureItem
            object N12000100pm27: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm27: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm28: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm27: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm27: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm28: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N2: TMenuItem
              Caption = '-'
            end
            object N06000700pm27: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm28: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm27: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm28: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm29: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm28: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Dienstag3: TMenuItem
          Caption = 'Tuesday'
          OnMeasureItem = Dienstag3MeasureItem
          object AfterMeridan27: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan27MeasureItem
            object N00000100am26: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am26: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am26: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am26: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am26: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am26: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N3: TMenuItem
              Caption = '-'
            end
            object N06000700am26: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am27: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am26: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am27: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am27: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am27: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian27: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian27MeasureItem
            object N12000100pm26: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm26: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm27: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm26: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm26: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm27: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N4: TMenuItem
              Caption = '-'
            end
            object N06000700pm26: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm27: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm26: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm27: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm28: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm27: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Mittwoch3: TMenuItem
          Caption = 'Wednesday'
          OnMeasureItem = Mittwoch3MeasureItem
          object AfterMeridan26: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan26MeasureItem
            object N00000100am25: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am25: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am25: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am25: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am25: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am25: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N5: TMenuItem
              Caption = '-'
            end
            object N06000700am25: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am26: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am25: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am26: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am26: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am26: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian26: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian26MeasureItem
            object N12000100pm25: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm25: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm26: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm25: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm25: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm26: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N6: TMenuItem
              Caption = '-'
            end
            object N06000700pm25: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm26: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm25: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm26: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm27: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm26: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Donnerstag3: TMenuItem
          Caption = 'Thursday'
          OnMeasureItem = Donnerstag3MeasureItem
          object AfterMeridan25: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan25MeasureItem
            object N00000100am24: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am24: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am24: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am24: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am24: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am24: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N7: TMenuItem
              Caption = '-'
            end
            object N06000700am24: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am25: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am24: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am25: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am25: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am25: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian25: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian25MeasureItem
            object N12000100pm24: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm24: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm25: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm24: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm24: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm25: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N8: TMenuItem
              Caption = '-'
            end
            object N06000700pm24: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm25: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm24: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm25: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm26: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm25: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Freitag3: TMenuItem
          Caption = 'Friday'
          OnMeasureItem = Freitag3MeasureItem
          object AfterMeridan24: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan24MeasureItem
            object N00000100am23: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am23: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am23: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am23: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am23: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am23: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N9: TMenuItem
              Caption = '-'
            end
            object N06000700am23: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am24: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am23: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am24: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am24: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am24: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian24: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian24MeasureItem
            object N12000100pm23: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm23: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm24: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm23: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm23: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm24: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N10: TMenuItem
              Caption = '-'
            end
            object N06000700pm23: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm24: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm23: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm24: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm25: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm24: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Samstag3: TMenuItem
          Caption = 'Saturday'
          OnMeasureItem = Samstag3MeasureItem
          object AfterMeridan23: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan23MeasureItem
            object N00000100am22: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am22: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am22: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am22: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am22: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am22: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N11: TMenuItem
              Caption = '-'
            end
            object N06000700am22: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am23: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am22: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am23: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am23: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am23: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian23: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian23MeasureItem
            object N12000100pm22: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm22: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm23: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm22: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm22: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm23: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N12: TMenuItem
              Caption = '-'
            end
            object N06000700pm22: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm23: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm22: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm23: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm24: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm23: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Sonntag3: TMenuItem
          Caption = 'Sunday'
          OnMeasureItem = Sonntag3MeasureItem
          object AfterMeridan22: TMenuItem
            Caption = 'After Meridan'
            OnClick = AfterMeridan22Click
            OnMeasureItem = AfterMeridan22MeasureItem
            object N00000100am21: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am21: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am21: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am21: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am21: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am21: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N13: TMenuItem
              Caption = '-'
            end
            object N06000700am21: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am22: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am21: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am22: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am22: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am22: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian22: TMenuItem
            Caption = 'Past Meridian'
            OnMeasureItem = PastMeridian22MeasureItem
            object N12000100pm21: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm21: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm22: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm21: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm21: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm22: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N14: TMenuItem
              Caption = '-'
            end
            object N06000700pm21: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm22: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm21: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm22: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm23: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm22: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
      end
      object Week12: TMenuItem
        Caption = 'Week 2'
        object Monday2: TMenuItem
          Caption = 'Monday'
          OnMeasureItem = Monday2MeasureItem
          object AfterMeridan21: TMenuItem
            Caption = 'After Meridan'
            object N00000100am20: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am20: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am20: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am20: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am20: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am20: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am20: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am21: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am20: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am21: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am21: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am21: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian21: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm20: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm20: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm21: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm20: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm20: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm21: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm20: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm21: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm20: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm21: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm22: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm21: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Dienstag2: TMenuItem
          Caption = 'Tuesday'
          OnMeasureItem = Dienstag2MeasureItem
          object AfterMeridan20: TMenuItem
            Caption = 'After Meridan'
            object N00000100am19: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am19: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am19: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am19: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am19: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am19: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am19: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am20: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am19: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am20: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am20: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am20: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian20: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm19: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm19: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm20: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm19: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm19: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm20: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm19: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm20: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm19: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm20: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm21: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm20: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Mittwoch2: TMenuItem
          Caption = 'Wednesday'
          OnMeasureItem = Mittwoch2MeasureItem
          object AfterMeridan19: TMenuItem
            Caption = 'After Meridan'
            object N00000100am18: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am18: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am18: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am18: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am18: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am18: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am18: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am19: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am18: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am19: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am19: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am19: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian19: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm18: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm18: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm19: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm18: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm18: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm19: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm18: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm19: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm18: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm19: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm20: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm19: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Donnerstag2: TMenuItem
          Caption = 'Thursday'
          OnMeasureItem = Donnerstag2MeasureItem
          object AfterMeridan18: TMenuItem
            Caption = 'After Meridan'
            object N00000100am17: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am17: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am17: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am17: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am17: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am17: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am17: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am18: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am17: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am18: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am18: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am18: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian18: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm17: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm17: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm18: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm17: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm17: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm18: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm17: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm18: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm17: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm18: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm19: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm18: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Freitag2: TMenuItem
          Caption = 'Friday'
          OnMeasureItem = Freitag2MeasureItem
          object AfterMeridan17: TMenuItem
            Caption = 'After Meridan'
            object N00000100am16: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am16: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am16: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am16: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am16: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am16: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am16: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am17: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am16: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am17: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am17: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am17: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian17: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm16: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm16: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm17: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm16: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm16: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm17: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm16: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm17: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm16: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm17: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm18: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm17: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Samstag2: TMenuItem
          Caption = 'Saturday'
          OnMeasureItem = Samstag2MeasureItem
          object AfterMeridan16: TMenuItem
            Caption = 'After Meridan'
            object N00000100am15: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am15: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am15: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am15: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am15: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am15: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am15: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am16: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am15: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am16: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am16: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am16: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian16: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm15: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm15: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm16: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm15: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm15: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm16: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm15: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm16: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm15: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm16: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm17: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm16: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Sonntag2: TMenuItem
          Caption = 'Sunday'
          OnMeasureItem = Sonntag2MeasureItem
          object AfterMeridan15: TMenuItem
            Caption = 'After Meridan'
            object N00000100am14: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am14: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am14: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am14: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am14: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am14: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am14: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am15: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am14: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am15: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am15: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am15: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian15: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm14: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm14: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm15: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm14: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm14: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm15: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm14: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm15: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm14: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm15: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm16: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm15: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
      end
      object Week11: TMenuItem
        Caption = 'Week 3'
        object Monday1: TMenuItem
          Caption = 'Monday'
          OnMeasureItem = Monday1MeasureItem
          object AfterMeridan14: TMenuItem
            Caption = 'After Meridan'
            object N00000100am13: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am13: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am13: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am13: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am13: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am13: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am13: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am14: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am13: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am14: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am14: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am14: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian14: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm13: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm13: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm14: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm13: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm13: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm14: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm13: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm14: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm13: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm14: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm15: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm14: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Dienstag1: TMenuItem
          Caption = 'Tuesday'
          OnMeasureItem = Dienstag1MeasureItem
          object AfterMeridan13: TMenuItem
            Caption = 'After Meridan'
            object N00000100am12: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am12: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am12: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am12: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am12: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am12: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am12: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am13: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am12: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am13: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am13: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am13: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian13: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm12: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm12: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm13: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm12: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm12: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm13: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm12: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm13: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm12: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm13: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm14: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm13: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Mittwoch1: TMenuItem
          Caption = 'Wednesday'
          OnMeasureItem = Mittwoch1MeasureItem
          object AfterMeridan12: TMenuItem
            Caption = 'After Meridan'
            object N00000100am11: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am11: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am11: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am11: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am11: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am11: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am11: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am12: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am11: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am12: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am12: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am12: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian12: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm11: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm11: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm12: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm11: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm11: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm12: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm11: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm12: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm11: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm12: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm13: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm12: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Donnerstag1: TMenuItem
          Caption = 'Thursday'
          OnMeasureItem = Donnerstag1MeasureItem
          object AfterMeridan11: TMenuItem
            Caption = 'After Meridan'
            object N00000100am10: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am10: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am10: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am10: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am10: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am10: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am10: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am11: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am10: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am11: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am11: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am11: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian11: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm10: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm10: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm11: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm10: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm10: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm11: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm10: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm11: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm10: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm11: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm12: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm11: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Freitag1: TMenuItem
          Caption = 'Friday'
          OnMeasureItem = Freitag1MeasureItem
          object AfterMeridan10: TMenuItem
            Caption = 'After Meridan'
            object N00000100am9: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am9: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am9: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am9: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am9: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am9: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am9: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am10: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am9: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am10: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am10: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am10: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian10: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm9: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm9: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm10: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm9: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm9: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm10: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm9: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm10: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm9: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm10: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm11: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm10: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Samstag1: TMenuItem
          Caption = 'Saturday'
          OnMeasureItem = Samstag1MeasureItem
          object AfterMeridan9: TMenuItem
            Caption = 'After Meridan'
            object N00000100am8: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am8: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am8: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am8: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am8: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am8: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am8: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am9: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am8: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am9: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am9: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am9: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian9: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm8: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm8: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm9: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm8: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm8: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm9: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm8: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm9: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm8: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm9: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm10: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm9: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Sonntag1: TMenuItem
          Caption = 'Sunday'
          OnMeasureItem = Sonntag1MeasureItem
          object AfterMeridan8: TMenuItem
            Caption = 'After Meridan'
            object N00000100am7: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am7: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am7: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am7: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am7: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am7: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am7: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am8: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am7: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am8: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am8: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am8: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian8: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm7: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm7: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm8: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm7: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm7: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm8: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm7: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm8: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm7: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm8: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm9: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm8: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
      end
      object Week14: TMenuItem
        Caption = 'Week 4'
        object Monday10: TMenuItem
          Caption = 'Monday'
          OnMeasureItem = Monday10MeasureItem
          object AfterMeridan7: TMenuItem
            Caption = 'After Meridan'
            object N00000100am6: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am6: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am6: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am6: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am6: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am6: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am6: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am7: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am6: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am7: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am7: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am7: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian7: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm6: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm6: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm7: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm6: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm6: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm7: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm6: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm7: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm6: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm7: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm8: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm7: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Monday9: TMenuItem
          Caption = 'Tuesday'
          OnMeasureItem = Monday9MeasureItem
          object AfterMeridan6: TMenuItem
            Caption = 'After Meridan'
            object N00000100am5: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am5: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am5: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am5: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am5: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am5: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am5: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am6: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am5: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am6: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am6: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am6: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian6: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm5: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm5: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm6: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm5: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm5: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm6: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm5: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm6: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm5: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm6: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm7: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm6: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Monday8: TMenuItem
          Caption = 'Wednesday'
          OnMeasureItem = Monday8MeasureItem
          object AfterMeridan5: TMenuItem
            Caption = 'After Meridan'
            object N00000100am4: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am4: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am4: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am4: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am4: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am4: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am4: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am5: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am4: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am5: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am5: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am5: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian5: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm4: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm4: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm5: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm4: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm4: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm5: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm4: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm5: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm4: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm5: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm6: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm5: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Monday7: TMenuItem
          Caption = 'Thursday'
          OnMeasureItem = Monday7MeasureItem
          object AfterMeridan4: TMenuItem
            Caption = 'After Meridan'
            object N00000100am3: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am3: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am3: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am3: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am3: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am3: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am3: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am4: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am3: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am4: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am4: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am4: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian4: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm3: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm3: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm4: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm3: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm3: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm4: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm3: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm4: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm3: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm4: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm5: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm4: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Monday6: TMenuItem
          Caption = 'Friday'
          OnMeasureItem = Monday6MeasureItem
          object AfterMeridan3: TMenuItem
            Caption = 'After Meridan'
            object N00000100am2: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am2: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am2: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am2: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am2: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am2: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am2: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am3: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am2: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am3: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am3: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am3: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian3: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm2: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm2: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm3: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm2: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm2: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm3: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm2: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm3: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm2: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm3: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm4: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm3: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Monday5: TMenuItem
          Caption = 'Saturday'
          OnMeasureItem = Monday5MeasureItem
          object AfterMeridan2: TMenuItem
            Caption = 'After Meridan'
            object N00000100am1: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N01000200am1: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N02000300am1: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N03000400am1: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N04000500am1: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N05000600am1: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N06000700am1: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am2: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N08000900am1: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am2: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am2: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am2: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian2: TMenuItem
            Caption = 'Past Meridian'
            object N12000100pm1: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N01000200pm1: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm2: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N03000400pm1: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N04000500pm1: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm2: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N06000700pm1: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm2: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N08000900pm1: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm2: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm3: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm2: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
        object Monday4: TMenuItem
          Caption = 'Sunday'
          OnMeasureItem = Monday4MeasureItem
          object AfterMeridan1: TMenuItem
            Caption = 'After Meridan'
            OnMeasureItem = AfterMeridan1MeasureItem
            object N0001am12: TMenuItem
              Caption = '00:00 - 01:00 am'
            end
            object N0001am11: TMenuItem
              Caption = '01:00 - 02:00 am'
            end
            object N0001am10: TMenuItem
              Caption = '02:00 - 03:00 am'
            end
            object N0001am9: TMenuItem
              Caption = '03:00 - 04:00 am'
            end
            object N0001am8: TMenuItem
              Caption = '04:00 - 05:00 am'
            end
            object N0001am7: TMenuItem
              Caption = '05:00 - 06:00 am'
            end
            object N0001am6: TMenuItem
              Caption = '06:00 - 07:00 am'
            end
            object N07000800am1: TMenuItem
              Caption = '07:00 - 08:00 am'
            end
            object N8000900am1: TMenuItem
              Caption = '08:00 - 09:00 am'
            end
            object N09001000am1: TMenuItem
              Caption = '09:00 - 10:00 am'
            end
            object N10001100am1: TMenuItem
              Caption = '10:00 - 11:00 am'
            end
            object N11001200am1: TMenuItem
              Caption = '11:00 - 12:00 am'
            end
          end
          object PastMeridian1: TMenuItem
            Caption = 'Past Meridian'
            object N0001am5: TMenuItem
              Caption = '12:00 - 01:00 pm'
            end
            object N0001am4: TMenuItem
              Caption = '01:00 - 02:00 pm'
            end
            object N02000300pm1: TMenuItem
              Caption = '02:00 - 03:00 pm'
            end
            object N0001am3: TMenuItem
              Caption = '03:00 - 04:00 pm'
            end
            object N0001am2: TMenuItem
              Caption = '04:00 - 05:00 pm'
            end
            object N05000600pm1: TMenuItem
              Caption = '05:00 - 06:00 pm'
            end
            object N0001AM1: TMenuItem
              Caption = '06:00 - 07:00 pm'
            end
            object N07000800pm1: TMenuItem
              Caption = '07:00 - 08:00 pm'
            end
            object N10001100pm1: TMenuItem
              Caption = '08:00 - 09:00 pm'
            end
            object N09001000pm1: TMenuItem
              Caption = '09:00 - 10:00 pm'
            end
            object N10001100pm2: TMenuItem
              Caption = '10:00 - 11:00 pm'
            end
            object N11001200pm1: TMenuItem
              Caption = '11:00 - 12:00 pm'
            end
          end
        end
      end
    end
    object dududa1: TMenuItem
      Caption = 'Statistic'
      OnMeasureItem = dududa1MeasureItem
    end
  end
  object LocationListTimer: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = LocationListTimerTimer
    Left = 896
    Top = 148
  end
  object JvDatabaseItems1: TJvDatabaseItems
    SessionName = 'Default'
    Left = 374
    Top = 386
    object JvDatabaseItems1NAME: TStringField
      FieldName = 'NAME'
      Size = 260
    end
    object JvDatabaseItems1FILENAME: TStringField
      FieldName = 'FILENAME'
      Size = 260
    end
    object JvDatabaseItems1EXTENSION: TStringField
      FieldName = 'EXTENSION'
      Size = 3
    end
    object JvDatabaseItems1TYPE: TStringField
      FieldName = 'TYPE'
      Size = 31
    end
    object JvDatabaseItems1DATE: TDateField
      FieldName = 'DATE'
    end
    object JvDatabaseItems1TIME: TTimeField
      FieldName = 'TIME'
    end
    object JvDatabaseItems1SIZE: TIntegerField
      FieldName = 'SIZE'
    end
    object JvDatabaseItems1VIEW: TBooleanField
      FieldName = 'VIEW'
    end
    object JvDatabaseItems1SYNONYM: TBooleanField
      FieldName = 'SYNONYM'
    end
  end
  object JvDesignSurface1: TJvDesignSurface
    Left = 894
    Top = 173
  end
  object BorlandPainter: TJvInspectorBorlandPainter
    CategoryFont.Charset = DEFAULT_CHARSET
    CategoryFont.Color = clBtnText
    CategoryFont.Height = -11
    CategoryFont.Name = 'MS Sans Serif'
    CategoryFont.Style = []
    NameFont.Charset = DEFAULT_CHARSET
    NameFont.Color = clWindowText
    NameFont.Height = -11
    NameFont.Name = 'MS Sans Serif'
    NameFont.Style = []
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clNavy
    ValueFont.Height = -11
    ValueFont.Name = 'MS Sans Serif'
    ValueFont.Style = []
    DrawNameEndEllipsis = False
    Left = 385
    Top = 257
  end
  object DotNETPainter: TJvInspectorDotNETPainter
    CategoryFont.Charset = DEFAULT_CHARSET
    CategoryFont.Color = clBtnText
    CategoryFont.Height = -11
    CategoryFont.Name = 'MS Sans Serif'
    CategoryFont.Style = []
    NameFont.Charset = DEFAULT_CHARSET
    NameFont.Color = clWindowText
    NameFont.Height = -11
    NameFont.Name = 'MS Sans Serif'
    NameFont.Style = []
    ValueFont.Charset = DEFAULT_CHARSET
    ValueFont.Color = clWindowText
    ValueFont.Height = -11
    ValueFont.Name = 'MS Sans Serif'
    ValueFont.Style = []
    DrawNameEndEllipsis = False
    HideSelectFont.Charset = DEFAULT_CHARSET
    HideSelectFont.Color = clHighlightText
    HideSelectFont.Height = -11
    HideSelectFont.Name = 'MS Sans Serif'
    HideSelectFont.Style = []
    SelectedFont.Charset = DEFAULT_CHARSET
    SelectedFont.Color = clHighlightText
    SelectedFont.Height = -11
    SelectedFont.Name = 'MS Sans Serif'
    SelectedFont.Style = []
    Left = 356
    Top = 257
  end
  object OpenDialog1: TOpenDialog
    Left = 640
    Top = 265
  end
  object SaveDialog1: TSaveDialog
    Left = 520
    Top = 265
  end
  object FindDialog1: TFindDialog
    Options = [frDown, frFindNext]
    OnFind = FindDialog1Find
    Left = 536
    Top = 297
  end
  object SynEditSearch1: TSynEditSearch
    Left = 528
    Top = 233
  end
  object JvTableItems1: TJvTableItems
    Active = True
    AutoCalcFields = False
    AutoRefresh = True
    DatabaseName = 'DBDEMOS'
    SessionName = 'Default'
    TableName = 'clients.dbf'
    Left = 405
    Top = 384
  end
  object JvBDEItems1: TJvBDEItems
    SessionName = 'Default'
    Left = 325
    Top = 384
  end
  object JvDataSource1: TJvDataSource
    DataSet = JvTableItems1
    Left = 317
    Top = 288
  end
  object JvQuery1: TJvQuery
    Macros = <>
    Left = 433
    Top = 386
  end
  object JvSelectDirectory1: TJvSelectDirectory
    Left = 553
    Top = 267
  end
  object JvOpenDialog1: TJvOpenDialog
    Options = [ofHideReadOnly, ofPathMustExist, ofCreatePrompt, ofEnableSizing]
    Height = 559
    Width = 758
    Left = 609
    Top = 267
  end
  object JvModernTabBarPainter1: TJvModernTabBarPainter
    TabColor = clYellow
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsItalic]
    DisabledFont.Charset = DEFAULT_CHARSET
    DisabledFont.Color = clGrayText
    DisabledFont.Height = -11
    DisabledFont.Name = 'MS Sans Serif'
    DisabledFont.Style = []
    SelectedFont.Charset = DEFAULT_CHARSET
    SelectedFont.Color = clBlack
    SelectedFont.Height = -13
    SelectedFont.Name = 'MS Sans Serif'
    SelectedFont.Style = [fsBold]
    Left = 595
    Top = 296
  end
  object JvModernTabBarPainter2: TJvModernTabBarPainter
    TabColor = clYellow
    CloseColorSelected = clRed
    CloseColor = clLime
    CloseCrossColorSelected = clWhite
    CloseRectColor = clBlue
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    DisabledFont.Charset = DEFAULT_CHARSET
    DisabledFont.Color = clGrayText
    DisabledFont.Height = -11
    DisabledFont.Name = 'MS Sans Serif'
    DisabledFont.Style = []
    SelectedFont.Charset = DEFAULT_CHARSET
    SelectedFont.Color = clWindowText
    SelectedFont.Height = -12
    SelectedFont.Name = 'MS Sans Serif'
    SelectedFont.Style = [fsBold]
    Left = 401
    Top = 319
  end
  object JvPopupMenu1: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1041
    Top = 133
    object dBASE1: TMenuItem
      Bitmap.Data = {
        42090000424D4209000000000000420000002800000018000000180000000100
        20000300000000090000232E0000232E000000000000000000000000FF0000FF
        0000FF000000FFFFFFFFFFFFFFFFAAABACFFACACADFFB1B2B3FFB7B9B9FFBEBE
        BFFFC4C5C5FFCBCBCCFFD1D1D2FFD9D9D9FFE1E1E2FFE9E9E9FFF1F1F1FFFAFA
        FAFFFCFCFCFFF2F2F2FFE7E8E8FFDDDDDEFFD3D3D4FFCACACBFFC6C7C7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABACFFACACADFFB1B2B3FFB7B9B9FFBEBE
        BFFFC4C5C5FFCBCBCCFFD1D1D2FFD9D9D9FFE1E1E2FFE9E9E9FFF1F1F1FFFAFA
        FAFFFCFCFCFFF2F2F2FFE7E8E8FFDDDDDEFFD3D3D4FFCACACBFFC6C7C7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB7B9B9FFBEBE
        BFFFC4C5C5FFCACACBFFD0D0D1FFD8D8D8FFE0E0E1FFE8E8E8FFF1F1F1FFFAFA
        FAFFFCFCFCFFF2F2F2FFE7E8E8FFDDDDDEFFD3D3D4FFCACACBFFC5C6C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB4B5B6FFBBBD
        BFFFC4C8CEFFCFD3DBFFD9DCE6FFE1E5EEFFE9EDF6FFF0F4FDFFF7FCFFFFFEFF
        FFFFFFFFFFFFF6F9FDFFE8EAEDFFDBDCDDFFD3D3D4FFCACACBFFC5C5C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9AAAAFFA8A9AAFFB4B7BDFFCED2D9FFD8D4
        CCFFDFCEABFFE6CE9BFFE7CA8EFFE4C583FFE1C07DFFDEBC7CFFDDBC82FFDDC0
        8DFFE0C69EFFE3CFB2FFEAE3D9FFECEFF3FFDBDEE3FFC7C8C9FFC3C4C4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAABADFFC0C2C4FFDECCADFFD6AA55FFCE93
        1BFFCC8900FFCF8B00FFD08B00FFCD8700FFC68000FFBF7800FFB77000FFB16A
        00FFAA6400FFA55F00FFA86810FFB68749FFD0BA9EFFDEDFDFFFCACCCDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E3EAFFEBE1D1FFB67101FFBF7600FFC781
        00FFD18B00FFD99400FFDC9A00FFD69604FFCE900AFFC7890AFFC08006FFB673
        00FFAD6600FFA55D00FF9E5400FF924900FF7F3A00FFD3C4B0FFF4F7FAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB0B2B4FFCBCBCCFFB99F72FFB28223FFC699
        3DFFCBA95BFFD1B981FFD5C6A1FFD9CFB7FFDFD7C6FFE4DDCEFFEAE0CEFFECDD
        C4FFE3CCA7FFCDAB76FFBC9052FF9C6A28FF9D7F59FFCBCAC8FFBEC0C2FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9C9D9EFFA2A3A4FFC4C8CDFFB3B6BAFFBDC1
        C7FFC3C8D1FFCACED7FFD1D3DBFFD9DBE0FFE1E3E8FFEAEBEFFFF3F5F9FFFCFE
        FFFFFFFFFFFFF6FBFFFFEBEFF3FFD8DADCFFDCDFE3FFBABCBCFFACADADFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFABACACFFACADAEFFAFB0B1FFB8B9BAFFBEBE
        BFFFC4C5C5FFCBCBCCFFD0D0D2FFD8D8D8FFE0E0E1FFE8E8E9FFF1F1F1FFFAFA
        FAFFFCFCFCFFF2F2F2FFE7E7E8FFDEDFE0FFD2D2D4FFCBCCCDFFC8C9C9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB5B6B7FFBBBC
        BEFFC2C5C9FFCBCFD7FFD5D9E3FFDFE3ECFFE8EBF4FFEFF3FBFFF6FBFFFFFEFF
        FFFFFFFFFFFFF4F7FAFFE7E9EAFFDCDCDDFFD3D3D4FFCACACBFFC5C5C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9AAAAFFA9AAAAFFB2B6BBFFC7CAD1FFDCDB
        D7FFE2DAC8FFE2CEA4FFE1C487FFE0BE77FFDEBB73FFDBB773FFD9B678FFDBBC
        88FFE3CCA8FFECE1D0FFF0EEEAFFE9EBEEFFD9DBE0FFC8C9C9FFC3C4C4FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA9A9ABFFBCBEBFFFE0D4BCFFD4A959FFD198
        26FFD0900BFFD08C00FFD08B00FFCC8600FFC68100FFBF7900FFB87100FFB16A
        00FFAB6400FFAA6704FFAE711FFFB58648FFD9C8B3FFDADBDCFFC8CACBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE1E8FFEAE1D1FFBA7400FFBF7700FFC681
        00FFD08900FFD89300FFDC9800FFD59200FFCD8A00FFC48100FFBC7800FFB46F
        00FFAC6600FFA45C00FF9D5400FF934B00FF833F00FFD4C5B2FFF3F7F9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB6B7BBFFD1D0CEFFB39663FFB47D12FFC794
        2CFFCBAA61FFD1B87CFFD7C18EFFD9C79EFFDCCCA9FFE0D1B1FFE4D2B0FFE5D0
        ACFFE0C79DFFD0AF7FFFB88643FF985E11FF927149FFCECAC5FFC3C5C7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF999A9BFFA2A3A5FFBCC0C7FFB0B0AEFFBEC0
        C1FFC3C8D2FFCACED7FFD0D4DDFFD9DCE3FFE2E5ECFFEAEDF3FFF4F7FDFFFDFF
        FFFFFFFFFFFFF7FBFFFFEAECF0FFD3D1CEFFD3D5D9FFB8B9BBFFA7A8A8FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFABACACFFACADAEFFB0B0B2FFB8BABCFFBEBF
        C0FFC4C5C5FFCBCBCCFFD1D1D2FFD8D8D9FFE1E1E2FFE9E9E9FFF1F1F1FFFAFA
        FAFFFCFCFCFFF2F2F2FFE7E8E9FFDFE0E2FFD4D3D5FFCBCCCCFFC8C9C9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFACACADFFB1B2B3FFB5B6B7FFBBBC
        BEFFC2C5C9FFCBCFD5FFD4D7DFFFDDE1E9FFE6E9F2FFEEF2F9FFF5F9FFFFFDFF
        FFFFFEFFFFFFF4F7FAFFE7E9EBFFDCDCDDFFD3D3D4FFCACACBFFC5C5C6FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAAAAABFFA9AAAAFFB1B4B9FFC6CBD3FFD3D2
        CFFFE0D8C6FFE8DABEFFE9D6B0FFE6CD9BFFE3C891FFE1C691FFE2C99BFFE8D4
        B2FFECDDC6FFEDE3D4FFECE9E6FFE9EDF2FFD8DBDFFFC7C8C9FFC4C5C5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA8A8AAFFB9BBBFFFDCD1BDFFDCBA79FFD099
        2AFFCF900AFFD08E01FFD08C00FFCC8800FFC68100FFBF7A00FFB87300FFB26D
        00FFAD6900FFAA6806FFAD701EFFC39C6AFFDACBB8FFD9DBDCFFC7C9C9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFDADEE5FFEAE2D3FFBD7908FFBE7600FFC682
        00FFCE8C00FFD69500FFDA9900FFD59400FFCD8C00FFC58400FFBE7C00FFB774
        00FFAF6C00FFA86400FFA15A00FF934B00FF854200FFD8C9B5FFF2F4F7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBEC1FFD5D4D1FFB39256FFB57B0BFFC280
        00FFD08B00FFDC9700FFE39F00FFDB9700FFD38E00FFCA8600FFC27D00FFB974
        00FFB16A00FFA76000FF9D5700FF905506FF957040FFD1CDC7FFCDCFD1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF8E8F90FF97989AFFC1C4C9FFBBB7B1FFBBAB
        8AFFC9A962FFC59C3FFFC2962FFFBC8D21FFB6851EFFB0801DFFAC7B20FFAA7B
        2CFFAB803BFFB5915AFFB39F84FFB4AFA8FFC6C8CBFF9EA0A2FF8F9091FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF949596FF939495FF929394FF979A9CFFAAAE
        B4FFB7BCC4FFB8BBC1FFB6B7BAFFB4B4B4FFB5B6B8FFB5B7B9FFB4B4B4FFB6B7
        B8FFB9BCC0FFBABFC5FFAFB3B8FF9B9DA0FF919394FF939495FF949596FFFFFF
        FFFFFFFFFFFF}
      Caption = 'dBASE 4 Windows'
      OnClick = dBASE1Click
    end
    object dBase4DOS1: TMenuItem
      Bitmap.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000232E0000232E000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000001500000065000000650000
        0065000000650000006500000065000000650000003900000000000000510000
        0065000000650000006500000065000000650000001400000065000000650000
        0065000000650000006500000014000000000000000000000000000000000000
        000000000000000000000000000000000000000037AE000065FF000065FF0000
        65FF000065FF000065FF000065FF000065FF000054D3000000995E0000EB6500
        63FF65002DFF65004FFF65004AFF650041FF370000AD006565FF006565FF0065
        65FF006565FF006565FF003737AD0000007F0000000000000000000000000000
        000000000000000000000000000000000000000073FF0000D1FF000080FF0000
        80FF000080FF000080FF000080FF000080FF00007BFF00004AFF730068FF8000
        3FFF80006BFF800057FF80005BFF5F0024FF186868FF008080FF008080FF0080
        80FF008080FF008080FF007676FF006B6BF6000000A100000000000000000000
        00000000000000000000000000000000000000007DFF0000FAFF0000F0FF0000
        F0FF0000F0FF0000F0FF0000F0FF0000F0FF0000C9FF000053FFD90030FFF000
        E7FFF0007AFFF000BDFFB00023FF205C5CFF007E7EFF008D8DFF00F0F0FF00F0
        F0FF00F0F0FF00F0F0FF009F9FFF007E7EFF006B6BF60000007F000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000BFFF00004DFFE400
        13FFFF00D7FFCB0061FF005F5FFF009797FF00F0F0FF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FFFFFF009F9FFF007373FF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        E4FF0000D0FF0000D0FF0000D0FF0000D0FF0000E6FF0000FFFF0000A4FF0D00
        14FFD00064FFA500A5FF005F5FFF00D8D8FF00FFFFFF00FCFCFF00D0D0FF00D0
        D0FF00D0D0FF00EFEFFF00FFFFFF00F5F5FF00AAAAFF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        AAFF000000AC00000097000000AC6F006FFF8400B9FF0000ECFF0000CFFF0000
        5AFF000000EA000000C1009090FF00E9E9FF00FFFFFF31C3C3FF9B0000FF0000
        00D60000009700B1B1D900F6F6FF00FFFFFF00E6E6FF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        AAFF0000003200000000750075ADE200BFFFC70083FF000086FF0000F1FF0000
        D9FF000000CC00000029009393B600AAAAFF00AAAAFF7A003BFFF600B8FFAF00
        00D600000099005757D900EAEAFF00FFFFFF00E6E6FF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        AAFF00000032000000007C0038FFFF00B0FFD200B4FF4B0000FF0000E7FF0000
        FEFF000000CC000000000000001A00000032000000D68F0074FFFF0098FFCB00
        B8FF005A5AFF00CBCBFF00FCFCFF00FFFFFF00E6E6FF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        AAFF00000032000000007C0077FFFF00CAFFD40064FF530050FF0000E7FF0000
        FEFF000000CC00000000000000000000008C000000FB8F0052FFFF00E2FFCB00
        3BFF00C5C5FF00FDFDFF00FFFFFF00EDEDFF004D4DCF0000000C000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        AAFF00000032000000007C0038FFFF00B0FFD400B7FF530024FF0000E7FF0000
        FEFF000000CC000000150036369E008686FF004D4DFF8F0074FFFF0099FFCB00
        B8FF00B7B7FF00E7E7FF007979D6000000AA0000000000000000000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        AAFF00000085000000667C0061FFFF00BFFFD40091FF530040FF0000E7FF0000
        FEFF000000E1000000A4009090FF00E9E9FF007C7CFF8F0063FFFF00C5FFCB00
        87FF000000C20000009800000071000000670000005200000000000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        B5FF00005AFF00005AFF7C0057FFFF00BBFFD4009EFF530039FF0000E7FF0000
        FEFF270000FF460000FF00C0C0FF00FFFFFF007C7CFF8F0069FFFF00B9FFCB00
        98FF000000680000004D005555E4005A5AFF005555E300000049000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        C0FF000080FF000080FF500077FFD100B8FFEF00A5FFA0005EFF2C009FFF0000
        AAFF3B002DFF64004EFF00C0C0FF00FFFFFF00D7D7FF5E002FFFAA009AFF8700
        00FF000000C2005757D900C7C7FF00CCCCFF007373FF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        F4FF0000EDFF0000EDFF0000D6FFA8004FFFFF00B4FFF4009FFFE800D3FFE700
        31FFE800D3FFBC002DFF00C0C0FF00FFFFFF00FFFFFF00E7E7FF00E7E7FF00E7
        E7FF00E7E7FF00EBEBFF00FBFBFF00FCFCFF00D6D6FF00000099000000000000
        00000000000000000000000000000000000000007DFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000EDFF08006BFFAE0013FFFE00C8FFFF0082FFFF00
        F7FFFF0082FFD900C9FF600B25FF09C8C8FF00FEFEFF00FFFFFF00FFFFFF00FF
        FFFF00FFFFFF00FFFFFF00FCFCFF00E8E8FE001313C400000001000000000000
        000000000000000000000000000000000000000070FF0000E7FF0000E7FF0000
        E7FF0000E7FF0000E7FF0000E7FF0000C4FF00005CE9BF0000EBE700D2FFE700
        31FFE700D1FFE7009AFFB700A6FF4F0000E100D5D5F500E7E7FF00E7E7FF00E7
        E7FF00E7E7FF00E7E7FF007979D6000000AA0000000000000000000000000000
        000000000000000000000000000000000000000000AE4A4A4AFF707070FF3434
        34FF000000AD000000983A3A3AFF646464FF000000910000005C000000EB7D7D
        7DFF4A4A4AFF000000D6000000990000007B797979E07F7F7FFF7F7F7FFF7F7F
        7FFF7F7F7FFF666666FF33333385000000000000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFAAAAAAFF5353
        53FF000000320000007E9F9F9FFFB1B1B1FF7E7E7ECF0000003A000000CCBDBD
        BDFF737373FF000000980000004C808080D3B8B8B8FF838383FF838383FF8383
        83FFABABABFFB1B1B1FF757575FF000000780000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFAAAAAAFF5353
        53FF00000032000000DFBABABAFFACACACFF959595FF00000066000000CCBDBD
        BDFF737373FF0000009800000086989898FFC0C0C0FF000000F3000000640000
        0064707070C0ABABABFF909090FF000000D40000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFAAAAAAFF5353
        53FF000000D6A5A5A5F9AFAFAFFF858585FFB8B8B8FF797979E0000000F5BDBD
        BDFF737373FF0000009800000086474747FF5B5B5BFF0000002E000000000000
        00528E8E8EEABABABAFF909090FF000000D40000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFAAAAAAFF5353
        53FF414141FFB7B7B7FF6D6D6DF97B7B7BECBABABAFF898989FF1E1E1EFFBDBD
        BDFF737373FF0000009800000000000000120000001F484848FF484848FF8585
        85FFB7B7B7FF929292FF393939E6000000000000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFAAAAAAFF5E5E
        5EFFB0B0B0FFB7B7B7FF000000CC00000064838383FFC0C0C0FF686868FFBDBD
        BDFF737373FF000000980000001A555555AC424242FFB5B5B5FFAEAEAEFF9A9A
        9AFF505050E1000000CD00000029000000000000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFAAAAAAFF9393
        93FFBABABAFF757575FF0000007A0000003C757575C5B2B2B2FFA5A5A5FFBFBF
        BFFF737373FF0000009800000086989898FF909090FF626262F7000000990000
        00990000007B0000006600000066000000550000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFB8B8B8FFB8B8
        B8FFA5A5A5FF3A3A3AFF00000000000000000000006E989898FFC0C0C0FFC0C0
        C0FF737373FF0000009800000086989898FF909090FF000000EC000000000000
        0000000000977C7C7CFF727272FF000000D40000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFC0C0C0FFC0C0
        C0FF6F6F6FFF28282869000000000000000000000024696969BAB4B4B4FFC0C0
        C0FF737373FF0000009800000086989898FFB2B2B2FF686868F9000000AC0000
        00AC878787DDB5B5B5FF909090FF000000D40000000000000000000000000000
        00000000000000000000000000000000000000000034737373FFC0C0C0FFA5A5
        A5FF424242FF0000002000000000000000000000000000000099AEAEAEFFC0C0
        C0FF737373FF000000980000001B575757AD5C5C5CFFB5B5B5FFADADADFFADAD
        ADFF9D9D9DFF737373FF434343FF0000002B0000000000000000000000000000
        0000000000000000000000000000000000000000002A000000CE000000CE0000
        00CE000000280000000000000000000000000000000000000000000000A50000
        00CE000000CE0000007B000000000000000000000000000000CE000000CE0000
        00CE000000CE0000004C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
      Caption = 'dBASE 4 DOS'
      OnClick = dBase4DOS1Click
    end
    object N17: TMenuItem
      Caption = '-'
    end
    object Pascal1: TMenuItem
      Bitmap.Data = {
        520E0000424D520E00000000000042000000280000001E0000001E0000000100
        200003000000100E0000232E0000232E000000000000000000000000FF0000FF
        0000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3434ACFF3434ACFF3535ADFF3535ADFF3434ACFF3434ACFF3535
        ADFF3636AEFF3535ABFF3535AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF3434AAFF3535ADFF3636
        ADFF3A3AB8FF3F3FBFFF4040C3FF4242C6FF4242C6FF4040C2FF3F3FBFFF3A3A
        B7FF3636AEFF3535ADFF3535ABFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3535ADFF3535ACFF3737AEFF3F3FC0FF4343C7FF4343C7FF4343
        C7FF4343C7FF4343C7FF4343C7FF4647C9FF889DF6FF6C78E3FF4647C9FF3F3F
        BFFF3636AFFF3535ADFF3838A7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3434ABFF3434
        ACFF3C3CBAFF4242C6FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF4343C7FF6772E0FFA7BAFDFFB1C1FCFF8DA3F9FF4A4CCCFF4242C6FF3C3C
        BAFF3535ACFF3535AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333ADFF3535ACFF3F3FC0FF4343C7FF5757
        E6FF5454E1FF4D4DD6FF4B4BD4FF4E4ED8FF5555E1FF5E5EF1FF5455E1FF90A7
        FBFFE7ECFEFFFDFDFEFFABBDFDFF6672E0FF4343C7FF4343C7FF3F3FBFFF3535
        ADFF3535AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF3838A7FF3434ABFF3F3FC0FF4343C7FF4343C7FF4C4CD5FF6868FFFF696A
        FFFF6868FFFF6868FFFF6868FFFF6868FFFF7680FCFFA6B8FCFFFDFDFEFFF0F3
        FEFF91AAFDFF494BCBFF4343C7FF4343C7FF4343C7FF3F3FC0FF3434ACFF3333
        A8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF3535ADFF3D3D
        BBFF4343C7FF4343C7FF4343C7FF4D50CEFF7176FCFF7B86FFFF7F8DFFFF7984
        FFFF6D70FFFF6969FFFF90A7FDFFE2E8FEFFFDFDFEFFAFC0FDFF6E7CE4FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF3C3CBAFF3535ADFF0000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3333ABFF3636AEFF4242C6FF4343C7FF5B5B
        CEFFD3D3F1FF94A8F9FFC3CDFEFF9595FCFF7070FDFF6969FFFF6D6DFDFF838C
        FDFFA2B6FDFFFDFDFEFFC5D2FDFF8BA0F8FF4546C9FF4343C7FF4343C7FF4343
        C7FF4343C7FF4343C7FF4242C6FF3737AEFF3636AAFFFFFFFFFFFFFFFFFFFFFF
        FFFF0000FFFF3535ACFF3F3FC0FF4343C7FF4343C7FF4646C8FF6F78E0FFA2B6
        FCFFF1F4FEFFDBE4FEFFFDFDFEFFFDFDFEFFFDFDFEFF9FB4FDFFD5DEFEFFA4B7
        FCFF889CF5FF4B4ECDFF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF4343C7FF3F3FBFFF3535ADFFFFFFFFFFFFFFFFFFFFFFFFFF3333ADFF3636
        AEFF4343C7FF4343C7FF7E7ED9FFFCFCFEFFA9BBFCFFD8E1FEFFBFCEFFFFB6C7
        FFFFFDFDFEFFFDFDFEFFDFE6FEFF95AEFEFF99B0FCFF6F7CE5FF4444C8FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF3434ADFF3636AEFFFFFFFFFFFFFFFFFF3434ACFF3B3BB7FF4343C7FF4343
        C7FF7D7DD9FF7676D6FF92AAFCFFF2F5FEFFA1B8FFFFE4EAFEFFFDFDFEFFB5C5
        FDFF98B0FEFF93ABFDFF7282E9FF5258D2FF4545C8FF4343C7FF4343C7FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF3B3BB8FF3535
        ABFFFFFFFFFFFFFFFFFF3535ACFF3F3FC0FF4343C7FF4343C7FF9797E0FFE1E1
        F6FF93ACFFFFFAFBFEFF94AEFFFFF7F9FEFFFDFDFEFF99B0FDFFC5D3FFFFCFDA
        FEFFB1C2FCFF99AFFCFF91AAFEFF8BA0F7FF7888EAFF626CDDFF5257D2FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF3F3FBFFF3535ADFFFFFFFFFFFFFF
        FFFF3535ADFF4141C2FF4343C7FF4343C7FFF3F3FCFFC6C6EEFF92A9FCFFF2F4
        FEFF9DB4FFFFF4F6FEFFFDFDFEFFD9E2FEFF97AFFEFFBAC9FDFFF8F9FEFFFDFD
        FEFFF9FAFEFFE4EAFEFFCFDAFEFFAFC0FDFF8FA7FCFF4343C7FF4343C7FF4343
        C7FF4343C7FF4343C7FF4040C3FF3535ADFFFFFFFFFFFFFFFFFF3434ACFF4343
        C6FF4343C7FF4343C7FF7A7AD8FF5F5FCFFFA2B5FAFFD8E1FEFFBCCCFFFFD7E0
        FEFFFDFDFEFFFDFDFEFFF6F8FEFFB6C6FDFF99B0FDFFE0E7FEFFFDFDFEFFFDFD
        FEFFFDFDFEFFE6EBFEFF8CA1F7FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF4242C5FF3535ACFFFFFFFFFFFFFFFFFF3434ACFF4242C6FF4343C7FF4343
        C7FF7A7AD8FFF1F1FBFFCED7FCFFA2B6FCFFEFF2FEFFA7BBFFFFF7F8FEFFFDFD
        FEFFFDFDFEFFFDFDFEFFDFE7FEFF99B0FDFFAFC0FDFFF5F7FEFFFDFDFEFFD9E2
        FEFF8294F0FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4242C6FF3434
        ACFFFFFFFFFFFFFFFFFF3434ACFF4141C3FF4343C7FF4343C7FFD7D7F3FFFBFB
        FEFF7C7CD8FF99AEFBFFCED9FEFFDFE7FEFFAEC1FFFFF0F3FEFFFDFDFEFFFDFD
        FEFFFDFDFEFFF9FAFEFFBDCBFDFF97AFFDFFD9E1FEFFCBD7FEFF7180E7FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4141C3FF3535ADFFFFFFFFFFFFFF
        FFFF3535ACFF3F3FC0FF4343C7FF4343C7FF8383DAFFAAAAE5FF7777D7FFEDF1
        FEFF95ADFDFFCED9FEFFEFF2FEFFBFCEFFFFBECDFFFFD2DCFEFFFDFDFEFFFDFD
        FEFFFDFDFEFFC0CEFEFF94ACFDFF96AEFEFF646FDEFF4343C7FF4343C7FF4343
        C7FF4343C7FF4343C7FF3F3FBFFF3535ADFFFFFFFFFFFFFFFFFF3535ACFF3B3B
        B8FF4343C7FF4343C7FF4646C8FF4848C9FFD8D8F3FFFCFCFEFF8589E0FF9CB1
        FCFFA3B7FDFFD8E1FEFFF2F4FEFFFBFBFEFFF2F4FEFFD8E1FEFFA2B6FCFF8BA0
        F7FF5052D0FF6C79E4FF585FD6FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF3A3AB8FF3434ACFFFFFFFFFFFFFFFFFF3636ACFF3636AEFF4343C7FF4343
        C7FF4343C7FF7E7ED9FFFCFCFEFFFCFCFEFF5959CEFFF4F4FCFFD6DFFEFF8D9F
        F4FF98AFFEFF93ACFFFF92AAFCFFA7B9FBFFD8E1FEFFE1E1F6FF6262D0FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF3636AFFF3434
        ACFFFFFFFFFFFFFFFFFF0000FFFF3535ADFF3F3FBFFF4343C7FF4343C7FF5252
        CCFFDDDDF5FFE7E7F8FF4E4ECAFFFCFCFEFFFCFCFEFF7373D6FFE7E7F8FFFCFC
        FEFFC6C6EEFF8282DAFFFDFDFEFFFDFDFEFFF4F4FBFF7E7ED9FF4343C7FF4343
        C7FF4343C7FF4343C7FF4343C7FF3F3FC0FF3535ACFF0000FFFFFFFFFFFFFFFF
        FFFFFFFFFFFF3434ABFF3636AFFF4343C7FF4343C7FF4343C7FF5454CCFF9E9E
        E2FF6161D0FFFCFCFEFFFCFCFEFF9595E0FFAFAFE7FFFCFCFEFFFCFCFEFF7C7C
        D8FFB4B4E8FFFDFDFEFFFDFDFEFFFCFCFEFFA6A6E4FF4444C7FF4343C7FF4343
        C7FF4343C7FF3737AFFF3434AAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        FFFF3535ACFF3D3DBBFF4343C7FF4343C7FF4343C7FF4343C7FF7373D6FFFCFC
        FEFFFCFCFEFFB5B5E8FF7676D6FFFCFCFEFFFCFCFEFFE7E7F8FF5252CCFFD9D9
        F3FFFDFDFEFFFDFDFEFFFDFDFEFFC6C6EDFF4D4DCAFF4343C7FF3D3DBBFF3535
        ACFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3636AAFF3535
        ABFF3F3FBFFF4343C7FF4343C7FF4343C7FF5252CBFFA5A5E4FFEFEFFAFFD7D7
        F3FF4747C8FFF0F0FAFFFCFCFEFFFCFCFEFFAAAAE5FF6060D0FFF4F4FBFFFDFD
        FEFFFDFDFEFFFAFAFDFFA7A7E4FF4040C1FF3535ACFF3232AAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232AAFF3535ACFF3F3F
        C0FF4343C7FF4343C7FF4343C7FF4343C7FF4A4AC9FF8787DCFF4343C7FFBABA
        EAFFFCFCFEFFFCFCFEFFF9F9FDFF6666D2FF8282DAFFDDDDF5FF9A9AE1FF5555
        CCFF3F3FC0FF3535ACFF3434ABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3232AAFF3434ACFF3D3DBBFF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF3C3CBAFF3535ADFF3333
        ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF3232AAFF3535ACFF3636AFFF3F3FBFFF4343
        C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343C7FF4343
        C7FF4343C7FF3F3FC0FF3737AFFF3535ADFF3535ADFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000FFFF3535AAFF3535ADFF3636AEFF3B3BB8FF3F3F
        C0FF4040C3FF4242C5FF4242C5FF4040C3FF3F3FC0FF3B3BB8FF3636AFFF3535
        ADFF3333ABFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF0000FFFF3232AAFF3535ABFF3535ACFF3535ADFF3434
        ACFF3434ACFF3535ADFF3535ADFF3434ADFF3333ADFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      Caption = 'Pascal / Delphi'
      OnClick = Pascal1Click
    end
    object N15: TMenuItem
      Caption = '-'
    end
    object ISOLISP1: TMenuItem
      Caption = 'Standard LISP'
      OnClick = ISOLISP1Click
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 421
    Top = 78
  end
  object SelectionTimer: TTimer
    Enabled = False
    Interval = 700
    OnTimer = SelectionTimerTimer
    Left = 461
    Top = 78
  end
  object SourceTextEditorStringHolder: TJvStrHolder
    Macros = <>
    Left = 577
    Top = 45
    InternalVer = 2
  end
  object TopicPopupMenu: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1041
    Top = 165
    object InsertNewTopic1: TMenuItem
      Caption = 'Insert New Topic'
    end
    object N19: TMenuItem
      Caption = '-'
    end
    object InsertAfter1: TMenuItem
      Caption = 'Insert After'
    end
    object InsertBefore1: TMenuItem
      Caption = 'Insert Before'
    end
    object N18: TMenuItem
      Caption = '-'
    end
    object InsertSubTopic1: TMenuItem
      Caption = 'Insert Sub Topic'
    end
  end
  object TopicSettingPopupMenu: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 977
    Top = 133
    object opicSymbol1: TMenuItem
      Caption = 'Topic Symbol'
      object N22: TMenuItem
        Caption = ' '
      end
    end
    object opicKind1: TMenuItem
      Caption = 'Topic Kind'
      object NormalTopic1: TMenuItem
        Caption = 'Normal Topic'
      end
      object EmptyTopic1: TMenuItem
        Caption = 'Empty Topic'
      end
      object N23: TMenuItem
        Caption = '-'
      end
      object ExternalURL1: TMenuItem
        Caption = 'External URL'
      end
      object ExternalFile1: TMenuItem
        Caption = 'External File'
      end
    end
    object N20: TMenuItem
      Caption = '-'
    end
    object HeadLine1: TMenuItem
      Caption = 'Topic Head Line'
      object ShowTopicTitle1: TMenuItem
        Caption = 'Show Topic Title'
      end
      object ShowHeadLine1: TMenuItem
        Caption = 'Show Head Line'
        Checked = True
      end
      object N24: TMenuItem
        Caption = '-'
      end
      object ShowcustomizedText1: TMenuItem
        Caption = 'Show customized Text'
      end
      object CustomizedText1: TMenuItem
        Caption = 'Customized Text:'
        Enabled = False
      end
    end
    object FoorLine1: TMenuItem
      Caption = 'Topic Foot Line'
      object ShowCopyright1: TMenuItem
        Caption = 'Show Copyright'
      end
      object ShowFootLine1: TMenuItem
        Caption = 'Show Foot Line'
        Checked = True
      end
      object N25: TMenuItem
        Caption = '-'
      end
      object ShowcustomizedText2: TMenuItem
        Caption = 'Show customized Text'
      end
      object CustomizedText2: TMenuItem
        Caption = 'Customized Text:'
        Enabled = False
      end
    end
    object N21: TMenuItem
      Caption = '-'
    end
    object Status1: TMenuItem
      Caption = 'Status'
      object Complete1: TMenuItem
        Caption = 'Complete'
      end
      object NeedsReview1: TMenuItem
        Caption = 'Needs Review'
      end
      object InProgress1: TMenuItem
        Caption = 'In Progress'
      end
      object OutofDate1: TMenuItem
        Caption = 'Out of Date'
      end
    end
    object ContaininBuilds1: TMenuItem
      Caption = 'Contain in Builds'
      object AllBuilds1: TMenuItem
        Caption = 'All Builds'
      end
      object N26: TMenuItem
        Caption = '-'
      end
      object chm1: TMenuItem
        Caption = 'chm'
      end
      object html1: TMenuItem
        Caption = 'html'
      end
      object pdf1: TMenuItem
        Caption = 'pdf'
      end
    end
    object HiddenTopic1: TMenuItem
      Caption = 'Hidden Topic'
      object Hidden1: TMenuItem
        Caption = 'Available'
      end
      object HiddeninTopicList1: TMenuItem
        Caption = 'Hidden in Topic List'
      end
      object Hidden2: TMenuItem
        Caption = 'Hidden'
      end
    end
  end
  object TopicSettingMenuItemPainter: TJvXPMenuItemPainter
    SelectionFrameBrush.Color = 13811126
    SelectionFramePen.Color = 6956042
    Left = 1009
    Top = 133
  end
  object DatabaseButtonPopupMenu: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 977
    Top = 165
  end
  object TableListMenuPopup: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 977
    Top = 197
  end
  object JvPopupMenu2: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1073
    Top = 133
  end
  object Table1: TTable
    SessionName = 'Default'
    TableName = 'animals.dbf'
    TableType = ttDBase
    Left = 89
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 89
    Top = 352
  end
  object SynHTMLSyn1: TSynHTMLSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 465
    Top = 222
  end
  object XMLDocument1: TXMLDocument
    Left = 318
    Top = 317
    DOMVendorDesc = 'MSXML'
  end
  object HintTimer: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = HintTimerTimer
    Left = 389
    Top = 78
  end
  object MenuFilePopup: TJvPopupMenu
    OnPopup = JvPopupMenu1Popup
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1041
    Top = 197
    object N27: TMenuItem
      Caption = 'New'
      object dBaseForm2: TMenuItem
        Caption = 'dBase Form'
      end
      object dBaseTestModule1: TMenuItem
        Caption = 'dBase Test-Module'
      end
      object dBaseSQL2: TMenuItem
        Caption = 'dBase SQL'
      end
    end
    object N28: TMenuItem
      Caption = '-'
    end
    object Open2: TMenuItem
      Caption = 'Open ...'
      ShortCut = 16463
    end
    object Save2: TMenuItem
      Caption = 'Save'
      ShortCut = 16467
    end
    object SaveAs2: TMenuItem
      Caption = 'Save As ...'
    end
    object N29: TMenuItem
      Caption = '-'
    end
    object Exit2: TMenuItem
      Caption = 'Exit'
      ShortCut = 16499
    end
  end
  object HTMLdesignerMenu: TJvPopupMenu
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1073
    Top = 165
    object AddmenuItem1: TMenuItem
      Caption = 'Add menu Item'
    end
  end
  object JvInterpreterProgram1: TJvInterpreterProgram
    OnGetValue = JvInterpreterProgram1GetValue
    Left = 474
    Top = 303
  end
  object SQLBuilderMenu: TJvPopupMenu
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1073
    Top = 197
    object AddTable1: TMenuItem
      Caption = 'Add Table'
      OnClick = AddTable1Click
    end
  end
  object SynPasSyn1: TSynPasSyn
    Options.AutoDetectEnabled = False
    Options.AutoDetectLineLimit = 0
    Options.Visible = False
    Left = 437
    Top = 222
  end
  object JvDataEmbedded1: TJvDataEmbedded
    Left = 269
    Top = 182
    EmbeddedData = {
      67580000494D414745424153452065717520343030303030680D0A6F72672049
      4D414745424153450D0A626974732033320D0A0D0A25646566696E6520505245
      4649585F4F504552414E4453495A45206462203636680D0A0D0A494D4147455F
      5245534F555243455F444154415F49535F4449524543544F5259206571752038
      30303030303030680D0A504147455F5245414457524954452065717520340D0A
      457863657074696F6E436F6E74696E7565457865637574696F6E206571752030
      0D0A0D0A444C4C5F50524F434553535F4154544143482065717520310D0A444C
      4C5F50524F434553535F4445544143482065717520300D0A0D0A494D4147455F
      53434E5F434E545F434F44452020202020202020202020202020206571752030
      3030303030303230680D0A494D4147455F53434E5F434E545F494E495449414C
      495A45445F4441544120202065717520303030303030303430680D0A494D4147
      455F53434E5F4D454D5F53484152454420202020202020202020202020657175
      20303130303030303030680D0A494D4147455F53434E5F4D454D5F4558454355
      544520202020202020202020202065717520303230303030303030680D0A494D
      4147455F53434E5F4D454D5F5245414420202020202020202020202020202065
      717520303430303030303030680D0A494D4147455F53434E5F4D454D5F575249
      5445202020202020202020202020202065717520303830303030303030680D0A
      0D0A4D454D5F434F4D4D4954206571752031303030680D0A0D0A425245414B50
      4F494E542065717520303830303030303033680D0A53494E474C455F53544550
      20657175203830303030303034680D0A4143434553535F56494F4C4154494F4E
      2065717520306330303030303035680D0A494E56414C49445F48414E444C4520
      65717520304330303030303038680D0A494E56414C49445F4C4F434B5F534551
      55454E43452065717520304330303030303165680D0A494E54454745525F4449
      564944455F42595F5A45524F2065717520304330303030303934680D0A494E54
      454745525F4F564552464C4F572065717520304330303030303935680D0A5052
      4956494C454745445F494E535452554354494F4E206571752030433030303030
      3936680D0A0D0A737472756320657863657074696F6E48616E646C65720D0A20
      2020202E70457863657074696F6E20726573642031202020202020202020203B
      20455843455054494F4E5F5245434F52440D0A202020202E7052656769737472
      6174696F6E5265636F726420726573642031203B20455843455054494F4E5F52
      4547495354524154494F4E5F5245434F52440D0A202020202E70436F6E746578
      74207265736420312020202020202020202020203B20434F4E544558540D0A65
      6E6473747275630D0A0D0A53495A455F4F465F38303338375F52454749535445
      5253206571752038300D0A4D4158494D554D5F535550504F525445445F455854
      454E53494F4E20657175203531320D0A0D0A737472756320434F4E544558540D
      0A202020202E436F6E74657874466C61677320207265736420310D0A20202020
      3B434F4E544558545F44454255475F5245474953544552530D0A202020202E69
      447230202020202020202020207265736420310D0A202020202E694472312020
      20202020202020207265736420310D0A202020202E6944723220202020202020
      2020207265736420310D0A202020202E69447233202020202020202020207265
      736420310D0A202020202E69447236202020202020202020207265736420310D
      0A202020202E69447237202020202020202020207265736420310D0A20202020
      3B434F4E544558545F464C4F4154494E475F504F494E540D0A202020202E436F
      6E74726F6C576F72642020207265736420310D0A202020202E53746174757357
      6F7264202020207265736420310D0A202020202E546167576F72642020202020
      20207265736420310D0A202020202E4572726F724F6666736574202020726573
      6420310D0A202020202E4572726F7253656C6563746F72207265736420310D0A
      202020202E446174614F6666736574202020207265736420310D0A202020202E
      4461746153656C6563746F7220207265736420310D0A202020202E5265676973
      746572417265612020726573622053495A455F4F465F38303338375F52454749
      53544552530D0A202020202E4372304E70785374617465202020726573642031
      0D0A202020203B434F4E544558545F5345474D454E54530D0A202020202E7265
      6747732020207265736420310D0A202020202E72656746732020207265736420
      310D0A202020202E72656745732020207265736420310D0A202020202E726567
      44732020207265736420310D0A202020203B434F4E544558545F494E54454745
      520D0A202020202E72656745646920207265736420310D0A202020202E726567
      45736920207265736420310D0A202020202E7265674562782020726573642031
      0D0A202020202E72656745647820207265736420310D0A202020202E72656745
      637820207265736420310D0A202020202E72656745617820207265736420310D
      0A202020203B434F4E544558545F434F4E54524F4C0D0A202020202E72656745
      627020207265736420310D0A202020202E72656745697020207265736420310D
      0A202020202E72656743732020207265736420310D0A202020202E726567466C
      6167207265736420310D0A202020202E72656745737020207265736420310D0A
      202020202E72656753732020207265736420310D0A202020203B434F4E544558
      545F455854454E4445445F5245474953544552530D0A202020202E457874656E
      6465645265676973746572732072657362204D4158494D554D5F535550504F52
      5445445F455854454E53494F4E0D0A656E6473747275630D0A0D0A494D414745
      5F53495A454F465F53484F52545F4E414D452065717520380D0A0D0A73747275
      6320494D4147455F444F535F4845414445520D0A20202E655F6D616769632020
      202020207265737720310D0A20202E655F63626C702020202020202072657377
      20310D0A20202E655F63702020202020202020207265737720310D0A20202E65
      5F63726C63202020202020207265737720310D0A20202E655F63706172686472
      202020207265737720310D0A20202E655F6D696E616C6C6F6320202072657377
      20310D0A20202E655F6D6178616C6C6F632020207265737720310D0A20202E65
      5F73732020202020202020207265737720310D0A20202E655F73702020202020
      202020207265737720310D0A20202E655F6373756D2020202020202072657377
      20310D0A20202E655F69702020202020202020207265737720310D0A20202E65
      5F63732020202020202020207265737720310D0A20202E655F6C6661726C6320
      202020207265737720310D0A20202E655F6F766E6F2020202020202072657377
      20310D0A20202E655F72657320202020202020207265737720340D0A20202E65
      5F6F656D69642020202020207265737720310D0A20202E655F6F656D696E666F
      202020207265737720310D0A20202E655F726573322020202020202072657377
      2031300D0A20202E655F6C66616E657720202020207265736420310D0A656E64
      73747275630D0A0D0A737472756320494D4147455F4E545F484541444552530D
      0A20202E5369676E61747572652020202020202020207265736420310D0A3B20
      202E46696C6548656164657220202020202020207265736220494D4147455F46
      494C455F4845414445525F73697A650D0A3B20202E4F7074696F6E616C486561
      646572202020207265736220494D4147455F4F5054494F4E414C5F4845414445
      5233325F73697A650D0A656E6473747275630D0A0D0A737472756320494D4147
      455F46494C455F4845414445520D0A20202E4D616368696E6520202020202020
      202020202020207265737720310D0A20202E4E756D6265724F6653656374696F
      6E7320202020207265737720310D0A20202E54696D65446174655374616D7020
      202020202020207265736420310D0A20202E506F696E746572546F53796D626F
      6C5461626C65207265736420310D0A20202E4E756D6265724F6653796D626F6C
      732020202020207265736420310D0A20202E53697A654F664F7074696F6E616C
      486561646572207265737720310D0A20202E4368617261637465726973746963
      732020202020207265737720310D0A656E6473747275630D0A0D0A494D414745
      5F46494C455F4D414348494E455F493338362020202020202020206571752030
      313463680D0A494D4147455F46494C455F444C4C20657175203032303030680D
      0A494D4147455F4E545F4F5054494F4E414C5F48445233325F4D414749432065
      71752030313062680D0A0D0A737472756320494D4147455F4F5054494F4E414C
      5F48454144455233320D0A20202E4D6167696320202020202020202020202020
      20202020202020202020207265737720310D0A20202E4D616A6F724C696E6B65
      7256657273696F6E20202020202020202020207265736220310D0A20202E4D69
      6E6F724C696E6B657256657273696F6E20202020202020202020207265736220
      310D0A20202E53697A654F66436F646520202020202020202020202020202020
      2020207265736420310D0A20202E53697A654F66496E697469616C697A656444
      61746120202020202020207265736420310D0A20202E53697A654F66556E696E
      697469616C697A6564446174612020202020207265736420310D0A20202E4164
      64726573734F66456E747279506F696E74202020202020202020207265736420
      310D0A20202E426173654F66436F646520202020202020202020202020202020
      2020207265736420310D0A20202E426173654F66446174612020202020202020
      20202020202020202020207265736420310D0A20202E496D6167654261736520
      202020202020202020202020202020202020207265736420310D0A20202E5365
      6374696F6E416C69676E6D656E74202020202020202020202020207265736420
      310D0A20202E46696C65416C69676E6D656E7420202020202020202020202020
      2020207265736420310D0A20202E4D616A6F724F7065726174696E6753797374
      656D56657273696F6E20207265737720310D0A20202E4D696E6F724F70657261
      74696E6753797374656D56657273696F6E20207265737720310D0A20202E4D61
      6A6F72496D61676556657273696F6E2020202020202020202020207265737720
      310D0A20202E4D696E6F72496D61676556657273696F6E202020202020202020
      2020207265737720310D0A20202E4D616A6F7253756273797374656D56657273
      696F6E20202020202020207265737720310D0A20202E4D696E6F725375627379
      7374656D56657273696F6E20202020202020207265737720310D0A20202E5769
      6E333256657273696F6E56616C75652020202020202020202020207265736420
      310D0A20202E53697A654F66496D616765202020202020202020202020202020
      2020207265736420310D0A20202E53697A654F66486561646572732020202020
      20202020202020202020207265736420310D0A20202E436865636B53756D2020
      202020202020202020202020202020202020207265736420310D0A20202E5375
      6273797374656D20202020202020202020202020202020202020207265737720
      310D0A20202E446C6C4368617261637465726973746963732020202020202020
      2020207265737720310D0A20202E53697A654F66537461636B52657365727665
      20202020202020202020207265736420310D0A20202E53697A654F6653746163
      6B436F6D6D69742020202020202020202020207265736420310D0A20202E5369
      7A654F6648656170526573657276652020202020202020202020207265736420
      310D0A20202E53697A654F6648656170436F6D6D697420202020202020202020
      2020207265736420310D0A20202E4C6F61646572466C61677320202020202020
      20202020202020202020207265736420310D0A20202E4E756D6265724F665276
      61416E6453697A6573202020202020202020207265736420310D0A20202E4461
      74614469726563746F7279202020202020202020202020202020207265736220
      300D0A656E6473747275630D0A0D0A737472756320494D4147455F444154415F
      4449524543544F52590D0A20205669727475616C416464726573732020202072
      65736420310D0A20206973697A65202020202020202020202020207265736420
      310D0A656E6473747275630D0A0D0A737472756320494D4147455F444154415F
      4449524543544F52595F31360D0A202020202E4578706F727473564120202020
      202020207265736420310D0A202020202E4578706F72747353697A6520202020
      20207265736420310D0A202020202E496D706F72747356412020202020202020
      7265736420310D0A202020202E496D706F72747353697A652020202020207265
      736420310D0A202020202E5265736F7572636556412020202020202072657364
      20310D0A202020202E5265736F7572636553697A652020202020726573642031
      0D0A202020202E457863657074696F6E20202020202020207265736420320D0A
      202020202E53656375726974792020202020202020207265736420320D0A2020
      20202E46697875707356412020202020202020207265736420310D0A20202020
      2E46697875707353697A65202020202020207265736420310D0A202020202E44
      656275675641202020202020202020207265736420310D0A202020202E446562
      756753697A6520202020202020207265736420310D0A202020202E4465736372
      697074696F6E2020202020207265736420320D0A202020202E4D495053202020
      202020202020202020207265736420320D0A202020202E544C53564120202020
      20202020202020207265736420310D0A202020202E544C5353697A6520202020
      2020202020207265736420310D0A202020202E4C6F6164202020202020202020
      202020207265736420320D0A202020202E426F756E64496D706F727473564120
      20207265736420310D0A202020202E426F756E64496D706F72747353697A6520
      7265736420310D0A202020202E49415456412020202020202020202020207265
      736420310D0A202020202E49415453697A652020202020202020202072657364
      20310D0A202020202E44656C6179496D706F7274735641202020726573642031
      0D0A202020202E44656C6179496D706F72747353697A65207265736420310D0A
      202020202E434F4D20202020202020202020202020207265736420320D0A2020
      20202E72657365727665642020202020202020207265736420320D0A656E6473
      747275630D0A0D0A737472756320494D4147455F53454354494F4E5F48454144
      45520D0A202020202E4E616D6520202020202020202020202020202020202020
      207265736220494D4147455F53495A454F465F53484F52545F4E414D450D0A20
      2020202E5669727475616C53697A652020202020202020202020202072657364
      20310D0A202020202E5669727475616C41646472657373202020202020202020
      207265736420310D0A202020202E53697A654F66526177446174612020202020
      2020202020207265736420310D0A202020202E506F696E746572546F52617744
      61746120202020202020207265736420310D0A202020202E506F696E74657254
      6F52656C6F636174696F6E73202020207265736420310D0A202020202E506F69
      6E746572546F4C696E656E756D62657273202020207265736420310D0A202020
      202E4E756D6265724F6652656C6F636174696F6E732020202020726573772031
      0D0A202020202E4E756D6265724F664C696E656E756D62657273202020202072
      65737720310D0A202020202E4368617261637465726973746963732020202020
      202020207265736420310D0A656E6473747275630D0A0D0A0D0A494D4147455F
      53554253595354454D5F57494E444F57535F4355492020202065717520330D0A
      494D4147455F53554253595354454D5F57494E444F57535F4755492020202065
      717520320D0A494D4147455F46494C455F52454C4F43535F5354524950504544
      202020202020202020657175203030303031680D0A494D4147455F46494C455F
      45584543555441424C455F494D41474520202020202020206571752030303030
      32680D0A494D4147455F46494C455F4C494E455F4E554D535F53545249505045
      44202020202020657175203030303034680D0A494D4147455F46494C455F4C4F
      43414C5F53594D535F5354524950504544202020202065717520303030303868
      0D0A494D4147455F46494C455F33324249545F4D414348494E45202020202020
      2020202020657175203030313030680D0A0D0A256D6163726F205F20300D0A20
      2020206E6F700D0A25656E646D6163726F0D0A0D0A256D6163726F205F632030
      0D0A20202020696E74330D0A20202020616C69676E20342C20696E74330D0A25
      656E646D6163726F0D0A0D0A256D6163726F205F6420300D0A20202020646220
      300D0A20202020616C69676E2031362C20646220300D0A25656E646D6163726F
      0D0A0D0A0D0A256D6163726F2073657453454820310D0A202020207075736820
      2025310D0A20202020707573682064776F7264205B66733A305D0D0A20202020
      6D6F76205B66733A305D2C206573700D0A25656E646D6163726F0D0A0D0A256D
      6163726F20636C65617253454820300D0A20202020706F702064776F7264205B
      66733A305D0D0A20202020616464206573702C20340D0A25656E646D6163726F
      0D0A0D0A737472756320494D4147455F4F5054494F4E414C5F48454144455236
      340D0A20202E4D61676963202020202020202020202020202020202020202020
      2020207265737720310D0A20202E4D616A6F724C696E6B657256657273696F6E
      20202020202020202020207265736220310D0A20202E4D696E6F724C696E6B65
      7256657273696F6E20202020202020202020207265736220310D0A20202E5369
      7A654F66436F6465202020202020202020202020202020202020207265736420
      310D0A20202E53697A654F66496E697469616C697A6564446174612020202020
      2020207265736420310D0A20202E53697A654F66556E696E697469616C697A65
      64446174612020202020207265736420310D0A20202E416464726573734F6645
      6E747279506F696E74202020202020202020207265736420310D0A20202E4261
      73654F66436F6465202020202020202020202020202020202020207265736420
      310D0A20202E496D616765426173652020202020202020202020202020202020
      2020207265737120310D0A20202E53656374696F6E416C69676E6D656E742020
      20202020202020202020207265736420310D0A20202E46696C65416C69676E6D
      656E74202020202020202020202020202020207265736420310D0A20202E4D61
      6A6F724F7065726174696E6753797374656D56657273696F6E20207265737720
      310D0A20202E4D696E6F724F7065726174696E6753797374656D56657273696F
      6E20207265737720310D0A20202E4D616A6F72496D61676556657273696F6E20
      20202020202020202020207265737720310D0A20202E4D696E6F72496D616765
      56657273696F6E2020202020202020202020207265737720310D0A20202E4D61
      6A6F7253756273797374656D56657273696F6E20202020202020207265737720
      310D0A20202E4D696E6F7253756273797374656D56657273696F6E2020202020
      2020207265737720310D0A20202E57696E333256657273696F6E56616C756520
      20202020202020202020207265736420310D0A20202E53697A654F66496D6167
      652020202020202020202020202020202020207265736420310D0A20202E5369
      7A654F6648656164657273202020202020202020202020202020207265736420
      310D0A20202E436865636B53756D202020202020202020202020202020202020
      2020207265736420310D0A20202E53756273797374656D202020202020202020
      20202020202020202020207265737720310D0A20202E446C6C43686172616374
      657269737469637320202020202020202020207265737720310D0A20202E5369
      7A654F66537461636B5265736572766520202020202020202020207265737120
      310D0A20202E53697A654F66537461636B436F6D6D6974202020202020202020
      2020207265737120310D0A20202E53697A654F66486561705265736572766520
      20202020202020202020207265737120310D0A20202E53697A654F6648656170
      436F6D6D6974202020202020202020202020207265737120310D0A20202E4C6F
      61646572466C6167732020202020202020202020202020202020207265736420
      310D0A20202E4E756D6265724F66527661416E6453697A657320202020202020
      2020207265736420310D0A20202E446174614469726563746F72792020202020
      20202020202020202020207265736220300D0A656E6473747275630D0A0D0A49
      4D4147455F46494C455F4D414348494E455F414D443634202020202020202065
      71752038363634680D0A494D4147455F4E545F4F5054494F4E414C5F48445236
      345F4D414749432020206571752030323062680D0A0D0A494D4147455F52454C
      5F42415345445F4142534F4C555445202020202020206571752030203B207573
      656420666F722070616464696E670D0A494D4147455F52454C5F42415345445F
      48494748202020202020202020202065717520310D0A494D4147455F52454C5F
      42415345445F4C4F572020202020202020202020206571752032203B20646F65
      73206E6F7468696E670D0A494D4147455F52454C5F42415345445F484947484C
      4F5720202020202020206571752033203B0D0A494D4147455F52454C5F424153
      45445F4849474841444A20202020202020206571752034203B2074616B657320
      616E20617267756D656E74206275742061637475616C6C7920646F6573206E6F
      7468696E670D0A494D4147455F52454C5F42415345445F4D4950535F4A4D5041
      4444522020206571752035203B20756E74696C205737206F6E6C790D0A494D41
      47455F52454C5F42415345445F53454354494F4E202020202020202065717520
      36203B20756E74696C205737206F6E6C79203B20646F6573206E6F7468696E67
      20616E797761790D0A494D4147455F52454C5F42415345445F52454C33322020
      20202020202020206571752037203B20756E74696C205737206F6E6C79203B20
      646F6573206E6F7468696E6720616E797761790D0A3B203820697320616C7761
      79732072656A65637465642C20686973746F726963616C6C790D0A494D414745
      5F52454C5F42415345445F4D4950535F4A4D504144445231362065717520390D
      0A494D4147455F52454C5F42415345445F494136345F494D4D36342020202020
      65717520390D0A494D4147455F52454C5F42415345445F444952363420202020
      2020202020206571752031300D0A494D4147455F52454C5F42415345445F4849
      47483341444A20202020202020657175203131203B2057696E326B206F6E6C79
      0D0A0D0A435220657175203064680D0A454F4620657175203161680D0A4C4620
      657175203061680D0A0D0A737472756320494D4147455F5245534F555243455F
      4449524543544F52590D0A202E43686172616374657269737469637320202020
      20202020207265736420310D0A202E54696D65446174655374616D7020202020
      202020202020207265736420310D0A202E4D616A6F7256657273696F6E202020
      2020202020202020207265737720310D0A202E4D696E6F7256657273696F6E20
      20202020202020202020207265737720310D0A202E4E756D6265724F664E616D
      6564456E7472696573202020207265737720310D0A202E4E756D6265724F6649
      64456E7472696573202020202020207265737720310D0A656E6473747275630D
      0A0D0A737472756320494D4147455F5245534F555243455F4449524543544F52
      595F454E5452590D0A202020202E4E616D654944207265736420310D0A202020
      202E4F6666736574546F44617461207265736420310D0A656E6473747275630D
      0A0D0A737472756320494D4147455F5245534F555243455F444154415F454E54
      52590D0A202020202E4F6666736574546F44617461207265736420310D0A2020
      20202E53697A653120202020202020207265736420310D0A202020202E436F64
      655061676520202020207265736420310D0A202020202E526573657276656420
      202020207265736420310D0A656E6473747275630D0A0D0A7374727563205F49
      4D4147455F44454C41595F494D504F52545F44455343524950544F520D0A2020
      20202E677241747472732020202020202072657364203120203B206174747269
      62757465730D0A202020202E727661444C4C4E616D6520202020726573642031
      20203B2052564120746F20646C6C206E616D650D0A202020202E727661486D6F
      642020202020202072657364203120203B20525641206F66206D6F64756C6520
      68616E646C650D0A202020202E72766149415420202020202020207265736420
      3120203B20525641206F6620746865204941540D0A202020202E727661494E54
      202020202020202072657364203120203B20525641206F662074686520494E54
      0D0A202020202E727661426F756E6449415420202072657364203120203B2052
      5641206F6620746865206F7074696F6E616C20626F756E64204941540D0A2020
      20202E727661556E6C6F6164494154202072657364203120203B20525641206F
      66206F7074696F6E616C20636F7079206F66206F726967696E616C204941540D
      0A202020202E647754696D655374616D7020202072657364203120203B203020
      6966206E6F7420626F756E640D0A656E6473747275630D0A0D0A737472756320
      5452554E435F4F5054494F4E414C5F48454144455233320D0A20202E4D616769
      632020202020202020202020202020202020202020202020207265737720310D
      0A20202E4D616A6F724C696E6B657256657273696F6E20202020202020202020
      207265736220310D0A20202E4D696E6F724C696E6B657256657273696F6E2020
      2020202020202020207265736220310D0A20202E53697A654F66436F64652020
      20202020202020202020202020202020207265736420310D0A20202E53697A65
      4F66496E697469616C697A65644461746120202020202020207265736420310D
      0A20202E53697A654F66556E696E697469616C697A6564446174612020202020
      207265736420310D0A20202E416464726573734F66456E747279506F696E7420
      2020202020202020207265736420310D0A20202E426173654F66436F64652020
      20202020202020202020202020202020207265736420310D0A20202E42617365
      4F6644617461202020202020202020202020202020202020207265736420310D
      0A20202E496D6167654261736520202020202020202020202020202020202020
      207265736420310D0A20202E53656374696F6E416C69676E6D656E7420202020
      2020202020202020207265736420310D0A20202E46696C65416C69676E6D656E
      74202020202020202020202020202020207265736420310D0A20202E4D616A6F
      724F7065726174696E6753797374656D56657273696F6E20207265737720310D
      0A20202E4D696E6F724F7065726174696E6753797374656D56657273696F6E20
      207265737720310D0A20202E4D616A6F72496D61676556657273696F6E202020
      2020202020202020207265737720310D0A20202E4D696E6F72496D6167655665
      7273696F6E2020202020202020202020207265737720310D0A20202E4D616A6F
      7253756273797374656D56657273696F6E20202020202020207265737720310D
      0A20202E4D696E6F7253756273797374656D56657273696F6E20202020202020
      207265737720310D0A20202E57696E333256657273696F6E56616C7565202020
      2020202020202020207265736420310D0A20202E53697A654F66496D61676520
      20202020202020202020202020202020207265736420310D0A20202E53697A65
      4F6648656164657273202020202020202020202020202020207265736420310D
      0A20202E436865636B53756D2020202020202020202020202020202020202020
      207265736420310D0A20202E53756273797374656D2020202020202020202020
      20202020202020202072657362203120203B207472756E636174656420617320
      6120627974650D0A20203B206E6F206D6F726520646174610D0A656E64737472
      75630D0A0D0A73747275632056535F464958454446494C45494E464F0D0A2020
      2E64775369676E617475726520202020202020202020207265736420310D0A20
      202E6477537472756356657273696F6E20202020202020207265736420310D0A
      20202E647746696C6556657273696F6E4D53202020202020207265736420310D
      0A20202E647746696C6556657273696F6E4C5320202020202020726573642031
      0D0A20202E647750726F6475637456657273696F6E4D53202020207265736420
      310D0A20202E647750726F6475637456657273696F6E4C532020202072657364
      20310D0A20202E647746696C65466C6167734D61736B20202020202020726573
      6420310D0A20202E647746696C65466C61677320202020202020202020207265
      736420310D0A20202E647746696C654F53202020202020202020202020202072
      65736420310D0A20202E647746696C6554797065202020202020202020202020
      7265736420310D0A20202E647746696C65537562747970652020202020202020
      207265736420310D0A20202E647746696C65446174654D532020202020202020
      20207265736420310D0A20202E647746696C65446174654C5320202020202020
      2020207265736420310D0A656E6473747275630D0A0D0A43524541544550524F
      434553535F4D414E49464553545F5245534F555243455F49442045515520310D
      0A49534F4C4154494F4E41574152455F4D414E49464553545F5245534F555243
      455F49442045515520320D0A49534F4C4154494F4E41574152455F4E4F535441
      544943494D504F52545F4D414E49464553545F5245534F555243455F49442045
      515520330D0A0D0A0D0A73747275632041435443545820202020202020202020
      202020202020202020202020203B207479706564656620737472756374207461
      67414354435458207B0D0A2E636253697A652072657364203120202020202020
      20202020202020202020202020203B202020554C4F4E47202020636253697A65
      3B0D0A2E6477466C616773207265736420312020202020202020202020202020
      2020202020203B20202044574F52442020206477466C6167733B0D0A2E6C7053
      6F7572636520726573642031202020202020202020202020202020202020203B
      2020204C504357535452206C70536F757263653B0D0A2E7750726F636573736F
      724172636869746563747572652072657377203120202020203B202020555348
      4F525420207750726F636573736F724172636869746563747572653B0D0A2E77
      4C616E6749642072657377203120202020202020202020202020202020202020
      203B2020204C414E4749442020774C616E6749643B0D0A2E6C70417373656D62
      6C794469726563746F72792072657364203120202020202020203B2020204C50
      4354535452206C70417373656D626C794469726563746F72793B0D0A2E6C7052
      65736F757263654E616D6520726573642031202020202020202020202020203B
      2020204C504354535452206C705265736F757263654E616D653B0D0A2E6C7041
      70706C69636174696F6E4E616D6520726573642031202020202020202020203B
      2020204C504354535452206C704170706C69636174696F6E4E616D653B0D0A2E
      684D6F64756C6520726573642031202020202020202020202020202020202020
      20203B202020484D4F44554C4520684D6F64756C653B0D0A656E647374727563
      2020202020202020202020202020202020202020202020202020203B207D2041
      43544354582C202A504143544354583B0D0A0D0A4143544354585F464C41475F
      50524F434553534F525F4152434849544543545552455F56414C494420657175
      20310D0A4143544354585F464C41475F4C414E4749445F56414C494420657175
      20320D0A4143544354585F464C41475F415353454D424C595F4449524543544F
      52595F56414C49442065717520340D0A4143544354585F464C41475F5245534F
      555243455F4E414D455F56414C49442065717520380D0A4143544354585F464C
      41475F5345545F50524F434553535F44454641554C54206571752031360D0A41
      43544354585F464C41475F4150504C49434154494F4E5F4E414D455F56414C49
      44206571752033320D0A4143544354585F464C41475F484D4F44554C455F5641
      4C494420657175203132380D0A0D0A3B20776964656368617220737472696E67
      206D6163726F0D0A256D6163726F205749444520310D0A2561737369676E2025
      255F5F6920310D0A257374726C656E2025255F5F6C656E2025310D0A25726570
      2025255F5F6C656E0D0A09257375627374722025255F5F632025312025255F5F
      690D0A090964622025255F5F630D0A0909646220300D0A092561737369676E20
      25255F5F692025255F5F69202B20310D0A25656E647265700D0A09646220302C
      20300D0A25656E646D6163726F0D0A0D0A256D6163726F205F77696465737472
      5F6E6F3020310D0A2561737369676E2025255F5F6920310D0A257374726C656E
      2025255F5F6C656E2025310D0A257265702025255F5F6C656E0D0A0925737562
      7374722025255F5F632025312025255F5F690D0A090964622025255F5F630D0A
      0909646220300D0A092561737369676E2025255F5F692025255F5F69202B2031
      0D0A25656E647265700D0A25656E646D6163726F0D0A0D0A256D6163726F205F
      5F737472696E6720320D0A2525737472696E673A0D0A6477202525534C454E0D
      0A647720252556414C4C454E202F2032203B2064616D6D697420210D0A647720
      31203B207465787420747970650D0A574944452025310D0A09616C69676E2034
      2C20646220300D0A252576616C3A0D0A09574944452025320D0A09252556414C
      4C454E206571752024202D20252576616C0D0A09616C69676E20342C20646220
      300D0A2525534C454E206571752024202D202525737472696E670D0A25656E64
      6D6163726F0D0A0D0A0D0A73747275632052554E54494D455F46554E4354494F
      4E0D0A202020202E46756E6374696F6E5374617274207265736420310D0A2020
      20202E46756E6374696F6E456E642020207265736420310D0A202020202E556E
      77696E64496E666F202020207265736420310D0A656E6473747275630D0A0D0A
      737472756320554E57494E445F494E464F0D0A202020202E566572335F466C61
      67732020202020726573622031203B2076657273696F6E7320616E6420666C61
      67730D0A202020202E50726F6C6F6753697A6520202020207265736220310D0A
      202020202E436E74556E77696E64436F646573207265736220310D0A20202020
      2E46725265675F46725265674F666620726573622031203B206672616D652072
      6567697374657220616E64206F6666736574730D0A202020203B206464204578
      63657074696F6E48616E646C6572206F722046756E6374696F6E456E7472790D
      0A202020203B20457863657074696F6E446174610D0A656E6473747275630D0A
      0D0A737472756320554E57494E445F434F44450D0A202020202E50726F6C6F67
      4F666620202020207265736220310D0A202020202E4F70436F64655F4F70496E
      666F20726573622031203B206F7065726174696F6E20636F646520616E642069
      6E666F0D0A656E6473747275630D0A0D0A554E575F464C41475F4548414E444C
      45522065717520310D0A0D0A737472756320494D4147455F44454255475F4449
      524543544F52590D0A202020202E436861726163746572697374696373202072
      65736420310D0A202020202E54696D65446174655374616D7020202020726573
      6420310D0A202020202E4D616A6F7256657273696F6E20202020207265737720
      310D0A202020202E4D696E6F7256657273696F6E20202020207265737720310D
      0A202020202E54797065202020202020202020202020207265736420310D0A20
      2020202E53697A654F6644617461202020202020207265736420310D0A202020
      202E416464726573734F6652617744617461207265736420310D0A202020202E
      506F696E746572546F52617744617461207265736420310D0A656E6473747275
      630D0A0D0A494D4147455F44454255475F545950455F434F4646206571752031
      0D0A494D4147455F44454255475F545950455F434F4445564945572065717520
      320D0A494D4147455F44454255475F545950455F4D4953432065717520340D0A
      0D0A53594D4F50545F44454255472065717520303830303030303030680D0A0D
      0A737472756320494D4147455F4558504F52545F4449524543544F52590D0A20
      2020202E43686172616374657269737469637320202020202020726573642031
      0D0A202020202E54696D65446174655374616D70202020202020202020726573
      6420310D0A202020202E4D616A6F7256657273696F6E20202020202020202020
      7265737720310D0A202020202E4D696E6F7256657273696F6E20202020202020
      2020207265737720310D0A202020202E6E4E616D652020202020202020202020
      2020202020207265736420310D0A202020202E6E426173652020202020202020
      2020202020202020207265736420310D0A202020202E4E756D6265724F664675
      6E6374696F6E7320202020207265736420310D0A202020202E4E756D6265724F
      664E616D65732020202020202020207265736420310D0A202020202E41646472
      6573734F6646756E6374696F6E73202020207265736420310D0A202020202E41
      6464726573734F664E616D657320202020202020207265736420310D0A202020
      202E416464726573734F664E616D654F7264696E616C73207265736420310D0A
      656E6473747275630D0A0D0A737472756320494D4147455F494D504F52545F44
      455343524950544F520D0A202020202E4F726967696E616C4669727374546875
      6E6B20726573642031203B204368617261637465726973746963730D0A202020
      202E54696D65446174655374616D702020202020207265736420310D0A202020
      202E466F72776172646572436861696E20202020207265736420310D0A202020
      202E4E616D653120202020202020202020202020207265736420310D0A202020
      202E46697273745468756E6B2020202020202020207265736420310D0A656E64
      73747275630D0A0D0A256D6163726F205F696D706F72745F6465736372697074
      6F7220310D0A69737472756320494D4147455F494D504F52545F444553435249
      50544F520D0A20202020617420494D4147455F494D504F52545F444553435249
      50544F522E4F726967696E616C46697273745468756E6B2C2064642025315F68
      696E746E616D6573202D20494D414745424153450D0A20202020617420494D41
      47455F494D504F52545F44455343524950544F522E4E616D6531202020202020
      202020202020202C206464202531202D20494D414745424153450D0A20202020
      617420494D4147455F494D504F52545F44455343524950544F522E4669727374
      5468756E6B20202020202020202C2064642025315F696174202D20494D414745
      424153450D0A69656E640D0A25656E646D6163726F0D0A0D0A73747275632049
      4D4147455F4C4F41445F434F4E4649475F4449524543544F525933320D0A2020
      20202E53697A6520202020202020202020202020202020202020202020202020
      20207265736420310D0A202020202E54696D65446174655374616D7020202020
      20202020202020202020202020207265736420310D0A202020202E4D616A6F72
      56657273696F6E20202020202020202020202020202020202020726573772031
      0D0A202020202E4D696E6F7256657273696F6E20202020202020202020202020
      2020202020207265737720310D0A202020202E476C6F62616C466C616773436C
      6561722020202020202020202020202020207265736420310D0A202020202E47
      6C6F62616C466C61677353657420202020202020202020202020202020207265
      736420310D0A202020202E437269746963616C53656374696F6E44656661756C
      7454696D656F757420207265736420310D0A202020202E4465436F6D6D697446
      726565426C6F636B5468726573686F6C6420202020207265736420310D0A2020
      20202E4465436F6D6D6974546F74616C467265655468726573686F6C64202020
      20207265736420310D0A202020202E4C6F636B5072656669785461626C652020
      2020202020202020202020202020726573642031203B2056410D0A202020202E
      4D6178696D756D416C6C6F636174696F6E53697A652020202020202020202072
      65736420310D0A202020202E5669727475616C4D656D6F72795468726573686F
      6C642020202020202020207265736420310D0A202020202E50726F6365737348
      656170466C6167732020202020202020202020202020207265736420310D0A20
      2020202E50726F63657373416666696E6974794D61736B202020202020202020
      2020207265736420310D0A202020202E43534456657273696F6E202020202020
      2020202020202020202020202020207265737720310D0A202020202E52657365
      7276656431202020202020202020202020202020202020202020207265737720
      310D0A202020202E456469744C69737420202020202020202020202020202020
      20202020202020726573642031203B2056410D0A202020202E53656375726974
      79436F6F6B69652020202020202020202020202020202020726573642031203B
      2056410D0A202020202E534548616E646C65725461626C652020202020202020
      202020202020202020726573642031203B2056410D0A202020202E534548616E
      646C6572436F756E742020202020202020202020202020202020726573642031
      0D0A202020202E47756172644346436865636B46756E6374696F6E506F696E74
      657220202020726573642031203B2056410D0A202020202E5265736572766564
      32202020202020202020202020202020202020202020207265736420310D0A20
      2020202E4775617264434646756E6374696F6E5461626C652020202020202020
      202020726573642031203B2056410D0A202020202E4775617264434646756E63
      74696F6E436F756E7420202020202020202020207265736420310D0A20202020
      2E4775617264466C616773202020202020202020202020202020202020202020
      7265736420310D0A656E6473747275630D0A0D0A737472756320494D4147455F
      4C4F41445F434F4E4649475F4449524543544F525936340D0A202020202E5369
      7A65202020202020202020202020202020202020202020202020202020726573
      6420310D0A202020202E54696D65446174655374616D70202020202020202020
      2020202020202020207265736420310D0A202020202E4D616A6F725665727369
      6F6E202020202020202020202020202020202020207265737720310D0A202020
      202E4D696E6F7256657273696F6E202020202020202020202020202020202020
      207265737720310D0A202020202E476C6F62616C466C616773436C6561722020
      202020202020202020202020207265736420310D0A202020202E476C6F62616C
      466C61677353657420202020202020202020202020202020207265736420310D
      0A202020202E437269746963616C53656374696F6E44656661756C7454696D65
      6F757420207265736420310D0A202020202E4465436F6D6D697446726565426C
      6F636B5468726573686F6C6420202020207265737120310D0A202020202E4465
      436F6D6D6974546F74616C467265655468726573686F6C642020202020726573
      7120310D0A202020202E4C6F636B5072656669785461626C6520202020202020
      202020202020202020726573712031203B2056410D0A202020202E4D6178696D
      756D416C6C6F636174696F6E53697A6520202020202020202020726573712031
      0D0A202020202E5669727475616C4D656D6F72795468726573686F6C64202020
      2020202020207265737120310D0A202020202E50726F63657373416666696E69
      74794D61736B2020202020202020202020207265737120310D0A202020202E50
      726F6365737348656170466C6167732020202020202020202020202020207265
      736420310D0A202020202E43534456657273696F6E2020202020202020202020
      202020202020202020207265737720310D0A202020202E526573657276656431
      202020202020202020202020202020202020202020207265737720310D0A2020
      20202E456469744C697374202020202020202020202020202020202020202020
      2020726573712031203B2056410D0A202020202E5365637572697479436F6F6B
      69652020202020202020202020202020202020726573712031203B2056410D0A
      202020202E534548616E646C65725461626C6520202020202020202020202020
      20202020726573712031203B2056410D0A202020202E534548616E646C657243
      6F756E7420202020202020202020202020202020207265737120310D0A202020
      202E47756172644346436865636B46756E6374696F6E506F696E746572202020
      20726573712031203B2056410D0A202020202E52657365727665643220202020
      2020202020202020202020202020202020207265737120310D0A202020202E47
      75617264434646756E6374696F6E5461626C6520202020202020202020207265
      73712031203B2056410D0A202020202E4775617264434646756E6374696F6E43
      6F756E7420202020202020202020207265737120310D0A202020202E47756172
      64466C6167732020202020202020202020202020202020202020207265736420
      310D0A656E6473747275630D0A0D0A52545F49434F4E20202020202020657175
      2020330D0A52545F535452494E4720202020206571752020360D0A52545F4752
      4F55505F49434F4E206571752031340D0A52545F56455253494F4E2020202065
      71752031360D0A52545F4D414E49464553542020206571752032340D0A0D0A73
      747275632047525049434F4E4449520D0A202020202E69645265736572766564
      20726573772031203B20616C776179732030202D20656E666F726365640D0A20
      2020202E6964547970652020202020726573772031203B20616C776179732031
      20666F722069636F6E730D0A202020202E6964436F756E742020202072657377
      20310D0A656E6473747275630D0A0D0A73747275632047525049434F4E444952
      454E5452590D0A202020202E625769647468202020202020207265736220310D
      0A202020202E624865696768742020202020207265736220310D0A202020202E
      62436F6C6F72436F756E7420207265736220310D0A202020202E625265736572
      766564202020207265736220310D0A202020202E77506C616E65732020202020
      207265737720310D0A202020202E77426974436F756E74202020207265737720
      310D0A202020202E64774279746573496E526573207265736420310D0A202020
      202E6E4964202020202020202020207265737720310D0A656E6473747275630D
      0A0D0A256D6163726F205F7265736F757263654469726563746F7279456E7472
      7920320D0A69737472756320494D4147455F5245534F555243455F4449524543
      544F52595F454E5452590D0A20202020617420494D4147455F5245534F555243
      455F4449524543544F52595F454E5452592E4E616D6549442C2064642025310D
      0A20202020617420494D4147455F5245534F555243455F4449524543544F5259
      5F454E5452592E4F6666736574546F446174612C20646420494D4147455F5245
      534F555243455F444154415F49535F4449524543544F5259207C20282532202D
      204469726563746F72795F456E7472795F5265736F75726365290D0A69656E64
      0D0A25656E646D6163726F0D0A0D0A256D6163726F205F7265736F757263655F
      747265652033203B2049442C204F66667365742C2053697A650D0A6973747275
      6320494D4147455F5245534F555243455F4449524543544F52590D0A20202020
      617420494D4147455F5245534F555243455F4449524543544F52592E4E756D62
      65724F664964456E74726965732C20647720310D0A69656E640D0A6973747275
      6320494D4147455F5245534F555243455F4449524543544F52595F454E545259
      0D0A20202020617420494D4147455F5245534F555243455F4449524543544F52
      595F454E5452592E4E616D6549442C2064642025310D0A20202020617420494D
      4147455F5245534F555243455F4449524543544F52595F454E5452592E4F6666
      736574546F446174612C20646420494D4147455F5245534F555243455F444154
      415F49535F4449524543544F5259207C202825256C616E6775616765202D2044
      69726563746F72795F456E7472795F5265736F75726365290D0A69656E640D0A
      0D0A25256C616E67756167653A0D0A69737472756320494D4147455F5245534F
      555243455F4449524543544F52590D0A20202020617420494D4147455F524553
      4F555243455F4449524543544F52592E4E756D6265724F664964456E74726965
      732C20647720310D0A69656E640D0A69737472756320494D4147455F5245534F
      555243455F4449524543544F52595F454E5452590D0A202020203B206C616E67
      7561676520646F65736E2774206D61747465720D0A20202020617420494D4147
      455F5245534F555243455F4449524543544F52595F454E5452592E4F66667365
      74546F446174612C206464202525656E747279202D204469726563746F72795F
      456E7472795F5265736F757263650D0A69656E640D0A0D0A2525656E7472793A
      0D0A69737472756320494D4147455F5245534F555243455F444154415F454E54
      52590D0A20202020617420494D4147455F5245534F555243455F444154415F45
      4E5452592E4F6666736574546F446174612C206464202532202D20494D414745
      424153450D0A20202020617420494D4147455F5245534F555243455F44415441
      5F454E5452592E53697A65312C2064642025330D0A69656E640D0A25656E646D
      6163726F0D0A0D0A526963684B65792045515520303932303333643139680D0A
      0D0A737472756320494D4147455F544C535F4449524543544F525933320D0A20
      2020202E5374617274416464726573734F665261774461746120726573642031
      0D0A202020202E456E64416464726573734F6652617744617461202020726573
      6420310D0A202020202E416464726573734F66496E6465782020202020202020
      7265736420310D0A202020202E416464726573734F6643616C6C4261636B7320
      2020207265736420310D0A202020202E53697A654F665A65726F46696C6C2020
      2020202020207265736420310D0A202020202E43686172616374657269737469
      6373202020202020207265736420310D0A656E6473747275630D0A0D0A737472
      756320494D4147455F544C535F4449524543544F525936340D0A202020202E53
      74617274416464726573734F6652617744617461207265737120310D0A202020
      202E456E64416464726573734F66526177446174612020207265737120310D0A
      202020202E416464726573734F66496E64657820202020202020207265737120
      310D0A202020202E416464726573734F6643616C6C4261636B73202020207265
      737120310D0A202020202E53697A654F665A65726F46696C6C20202020202020
      207265736420310D0A202020202E436861726163746572697374696373202020
      202020207265736420310D0A656E6473747275630D0A0D0A737472756320494D
      4147455F424F554E445F494D504F52545F44455343524950544F520D0A202020
      202E54696D65446174655374616D702020202020202020202020202020202072
      65736420310D0A202020202E4F66667365744D6F64756C654E616D6520202020
      2020202020202020207265737720310D0A202020202E4E756D6265724F664D6F
      64756C6573466F7277617264657252656673207265737720310D0A656E647374
      7275630D0A0D0A73747275632057494E5F43455254494649434154450D0A2020
      20202E64774C656E6774682020202020202020207265736420310D0A20202020
      2E775265766973696F6E20202020202020207265737720310D0A202020202E77
      436572746966696361746554797065207265737720310D0A202020202E624365
      72746966696361746520202020207265736220300D0A656E6473747275630D0A
      0D0A737472756320494D4147455F424153455F52454C4F434154494F4E0D0A20
      2020202E5669727475616C41646472657373207265736420310D0A202020202E
      53697A654F66426C6F636B202020207265736420310D0A656E6473747275630D
      0A0D0A3B2063616E2774206D616B65206120737472756374206F662074686174
      206F6E652077697468205961736D203A280D0A256D6163726F205F494D414745
      5F494D504F52545F42595F4E414D4520310D0A202020202E48696E7420202064
      7720300D0A202020202E4E616D6520202064622025312C20300D0A25656E646D
      6163726F0D0A0D0A494D4147455F444C4C434841524143544552495354494353
      5F44594E414D49435F42415345202020206571752030303430680D0A494D4147
      455F444C4C4348415241435445524953544943535F464F5243455F494E544547
      52495459206571752030303830680D0A494D4147455F444C4C43484152414354
      45524953544943535F4E585F434F4D5041542020202020202065717520303130
      30680D0A494D4147455F444C4C4348415241435445524953544943535F4E4F5F
      534548202020202020202020206571752030343030680D0A494D4147455F444C
      4C4348415241435445524953544943535F415050434F4E5441494E4552202020
      20657175203130303068203B2057380D0A494D4147455F444C4C434841524143
      5445524953544943535F47554152445F43462020202020202020657175203430
      303068203B2057382E310D0A0D0A464C475F53484F575F4C44525F534E415053
      2065717520320D0A0D0A4D425F4F4B2020202020202020202020657175203030
      303030303030680D0A4D425F49434F4E415354455249534B2065717520303030
      3030303430680D0A4D425F4150504C4D4F44414C202020206571752030303030
      30303030680D0A0D0A4C4F41445F4C4942524152595F41535F4441544146494C
      452065717520303030303030303032680D0A0D0A494D4147455F47554152445F
      43465F494E535452554D454E5445442020202020202020202020657175203030
      3030303031303068203B4D6F64756C6520706572666F726D7320636F6E74726F
      6C20666C6F7720696E7465677269747920636865636B73207573696E67207379
      7374656D2D737570706C69656420737570706F72740D0A494D4147455F475541
      52445F4346575F494E535452554D454E54454420202020202020202020657175
      2030303030303032303068203B4D6F64756C6520706572666F726D7320636F6E
      74726F6C20666C6F7720616E6420777269746520696E74656772697479206368
      65636B730D0A494D4147455F47554152445F43465F46554E4354494F4E5F5441
      424C455F50524553454E54206571752030303030303034303068203B4D6F6475
      6C6520636F6E7461696E732076616C696420636F6E74726F6C20666C6F772074
      6172676574206D657461646174610D0A494D4147455F47554152445F53454355
      524954595F434F4F4B49455F554E555345442020202065717520303030303030
      38303068203B4D6F64756C6520646F6573206E6F74206D616B6520757365206F
      6620746865202F475320736563757269747920636F6F6B69650D0A0D0A434F4F
      4B49455F44454641554C542065717520306262343065363465680D0A0D0A5345
      4354494F4E414C49474E206571752031303030680D0A46494C45414C49474E20
      65717520323030680D0A0D0A69737472756320494D4147455F444F535F484541
      4445520D0A20202020617420494D4147455F444F535F4845414445522E655F6D
      616769632C20646220274D5A270D0A20202020617420494D4147455F444F535F
      4845414445522E655F6C66616E65772C206464204E545F48656164657273202D
      20494D414745424153450D0A69656E640D0A0D0A4E545F486561646572733A0D
      0A69737472756320494D4147455F4E545F484541444552530D0A202020206174
      20494D4147455F4E545F484541444552532E5369676E61747572652C20646220
      275045272C20302C20300D0A69656E640D0A69737472756320494D4147455F46
      494C455F4845414445520D0A20202020617420494D4147455F46494C455F4845
      414445522E4D616368696E652C2020202020202020202020202020647720494D
      4147455F46494C455F4D414348494E455F493338360D0A20202020617420494D
      4147455F46494C455F4845414445522E4E756D6265724F6653656374696F6E73
      2C20202020206477204E554D4245524F4653454354494F4E530D0A2020202061
      7420494D4147455F46494C455F4845414445522E53697A654F664F7074696F6E
      616C4865616465722C2064772053495A454F464F5054494F4E414C4845414445
      520D0A20202020617420494D4147455F46494C455F4845414445522E43686172
      61637465726973746963732C202020202020647720494D4147455F46494C455F
      45584543555441424C455F494D414745207C20494D4147455F46494C455F3332
      4249545F4D414348494E450D0A69656E640D0A0D0A4F7074696F6E616C486561
      6465723A0D0A69737472756320494D4147455F4F5054494F4E414C5F48454144
      455233320D0A20202020617420494D4147455F4F5054494F4E414C5F48454144
      455233322E4D616769632C202020202020202020202020202020202064772049
      4D4147455F4E545F4F5054494F4E414C5F48445233325F4D414749430D0A2020
      2020617420494D4147455F4F5054494F4E414C5F48454144455233322E416464
      726573734F66456E747279506F696E742C202020646420456E747279506F696E
      74202D20494D414745424153450D0A20202020617420494D4147455F4F505449
      4F4E414C5F48454144455233322E496D616765426173652C2020202020202020
      2020202020646420494D414745424153450D0A20202020617420494D4147455F
      4F5054494F4E414C5F48454144455233322E53656374696F6E416C69676E6D65
      6E742C20202020202064642053454354494F4E414C49474E0D0A202020206174
      20494D4147455F4F5054494F4E414C5F48454144455233322E46696C65416C69
      676E6D656E742C20202020202020202064642046494C45414C49474E0D0A2020
      2020617420494D4147455F4F5054494F4E414C5F48454144455233322E4D616A
      6F7253756273797374656D56657273696F6E2C20647720340D0A202020206174
      20494D4147455F4F5054494F4E414C5F48454144455233322E53697A654F6649
      6D6167652C202020202020202020202064642032202A2053454354494F4E414C
      49474E0D0A20202020617420494D4147455F4F5054494F4E414C5F4845414445
      5233322E53697A654F66486561646572732C2020202020202020206464205349
      5A454F46484541444552530D0A20202020617420494D4147455F4F5054494F4E
      414C5F48454144455233322E53756273797374656D2C20202020202020202020
      202020647720494D4147455F53554253595354454D5F57494E444F57535F4355
      490D0A20202020617420494D4147455F4F5054494F4E414C5F48454144455233
      322E4E756D6265724F66527661416E6453697A65732C20202064642031360D0A
      69656E640D0A0D0A69737472756320494D4147455F444154415F444952454354
      4F52595F31360D0A20202020617420494D4147455F444154415F444952454354
      4F52595F31362E496D706F72747356412C20646420496D706F72745F44657363
      726970746F72202D20494D414745424153450D0A69656E640D0A0D0A53495A45
      4F464F5054494F4E414C484541444552206571752024202D204F7074696F6E61
      6C4865616465720D0A53656374696F6E4865616465723A0D0A69737472756320
      494D4147455F53454354494F4E5F4845414445520D0A20202020617420494D41
      47455F53454354494F4E5F4845414445522E5669727475616C53697A652C2020
      2020202064642031202A2053454354494F4E414C49474E0D0A20202020617420
      494D4147455F53454354494F4E5F4845414445522E5669727475616C41646472
      6573732C20202064642031202A2053454354494F4E414C49474E0D0A20202020
      617420494D4147455F53454354494F4E5F4845414445522E53697A654F665261
      77446174612C2020202064642031202A2046494C45414C49474E0D0A20202020
      617420494D4147455F53454354494F4E5F4845414445522E506F696E74657254
      6F526177446174612C2064642031202A2046494C45414C49474E0D0A20202020
      617420494D4147455F53454354494F4E5F4845414445522E4368617261637465
      726973746963732C2020646420494D4147455F53434E5F4D454D5F4558454355
      5445207C20494D4147455F53434E5F4D454D5F57524954450D0A69656E640D0A
      4E554D4245524F4653454354494F4E5320657175202824202D2053656374696F
      6E48656164657229202F20494D4147455F53454354494F4E5F4845414445525F
      73697A650D0A53495A454F4648454144455253206571752024202D20494D4147
      45424153450D0A0D0A73656374696F6E2070726F676269747320767374617274
      3D494D41474542415345202B2053454354494F4E414C49474E20616C69676E3D
      46494C45414C49474E0D0A}
  end
  object zlibFile: TJvZlibMultiple
    StorePaths = False
    CompressionLevel = 9
    OnProgress = zlibFileProgress
    OnCompressedFile = zlibFileCompressedFile
    OnCompletedAction = zlibFileCompletedAction
    Left = 309
    Top = 182
  end
  object JvCreateProcess1: TJvCreateProcess
    CreationFlags = [cfNewConsole, cfUnicode]
    Left = 354
    Top = 295
  end
  object JvGradientCaption1: TJvGradientCaption
    Captions = <>
    DefaultFont = False
    FormCaption = 'DataBase Explorer (c) 2022 Jens Kallup 1.0.0'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = []
    GradientSteps = 100
    EndColor = clYellow
    Left = 521
    Top = 334
  end
  object AssemblyJvPopupMenu: TJvPopupMenu
    Style = msItemPainter
    ImageMargin.Left = 0
    ImageMargin.Top = 0
    ImageMargin.Right = 0
    ImageMargin.Bottom = 0
    ImageSize.Height = 21
    ImageSize.Width = 21
    ItemPainter = TopicSettingMenuItemPainter
    Left = 1097
    Top = 533
    object Assemble1: TMenuItem
      Caption = 'Diss-Assemble DOS Stub'
      OnClick = Assemble1Click
    end
    object AssembleDOSStub1: TMenuItem
      Caption = 'Assemble DOS-Stub'
    end
  end
  object ImageList1: TImageList
    BlendColor = clBlack
    DrawingStyle = dsTransparent
    Height = 24
    Masked = False
    Width = 24
    Left = 321
    Top = 236
    Bitmap = {
      494C01010A000E00040018001800FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000006000000001002000000000000090
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F700B5B5B5006363
      630063636300BDBDBD00F7F7F700000000000000000000000000000000000000
      0000000000000000000000000000F7F7F700FCFCFCFFFCFCFCFFF8F8F8FF6969
      69FF383838FF0A0B0AFF000000FF000000FF141414FF5D5D5DFFBFBFBFFFFAFA
      FAFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9C9C00292929009C9C9C00D6D6
      D600CECECE009C9C9C0021212100A5A5A5000000000000000000000000000000
      0000000000000000000000000000F7F7F700FBFBFBFF3F3F3FFF01150BFF169F
      69FF1AB57FFF1BB986FF1CBB89FF1CBA87FF1BB884FF17AB73FF055133FF0100
      01FFF0F0F0FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600BDBDBD00BDBDBD00BDBDBD0063636300635A5A00C6C6BD00C6BDBD00C6BD
      BD00C6BDBD00C6BDBD00C6C6BD00525252006B6B6B00B5B5B500B5B5B500B5B5
      B500B5B5B5000000000000000000F7F7F7001F1F1FFF118254FF1CBA88FF21C6
      A0FF23CBAAFF24CEAFFF25CFB1FF25CFB1FF24CDADFF22C8A2FF14B487FF1BB7
      81FF000000FFF8F8F8FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFEFEF0000000000524A
      4200524A4200524A4200524A420052524200948C7B00948C7B00948C7B00948C
      7B00948C7B00948C7B00948C7B00948C7B006363520063635200636352006B63
      5A006363520000000000F7F7F700F7F7F70014945DFF1FBC8AFF23C7A2FF29D3
      BAFF2BD6C1FF2BD7C1FF2BD8C1FF2BD8C1FF2BD7C1FF2AD4BCFF19C1A0FF22C4
      9CFF19AD71FF2A2A2AFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000009C948400A59C
      8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C
      8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C8C00A59C8C00DECE
      8C00A5948C00948C7B0008080800F7F7F700179C5FFF20B884FF26C59DFF2CD0
      B2FF28CDAFFF2BD0B3FF2CD1B4FF2CD1B4FF25CBACFF2CD0B3FF22C5A1FF25C1
      96FF1BAB6CFF111111FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70008080800ADA59400E7DE
      DE00D6C68C00D6C68400D6C68400DEC68400DEC68400DECE8C00DECE8C00DECE
      8C00DECE8C00DECE8C00DECE8C00DEC68400D6C68400D6C68400D6C68400D6C6
      8C00DEDEDE00ADA5940000000000F7F7F700000C03FF1EA35EFF25AF74FF2CBC
      89FFCEE2D9FFE2E9E4FF30C198FF3FB58AFFEEEDEAFF28BB8AFF29B680FF24AC
      6FFF083E20FFB4B4B4FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70010101000ADA59C00E7DE
      BD00C69C3100CEB54A00D6BD6300DEC67300DECE8400E7D69C00E7DEAD00E7DE
      B500E7DEB500E7D6A500DED69400DECE8400D6C67300D6BD6300CEAD4200BD9C
      2900E7DEBD00B5AD9C0000000000F7F7F700919191FF062E13FF21974CFF32A4
      62FF8BB8E8FF94CCFFFFBEE2FFFFB1DBFFFF81C4FFFF69AB81FF259E56FF1F93
      48FF222222FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70021211800B5ADA500DED6
      B500CEAD3900D6BD5A00DEC67300DECE8400E7D69400E7DEAD00EFDEBD00EFE7
      C600EFE7C600EFDEB500E7DEA500E7D68C00DECE7B00DEC66B00D6BD5200C6A5
      3100DED6B500B5ADA50000000000F7F7F700FCFCFCFFA3A3A3FF000000FF5AB3
      F6FFA1D4FFFFABD9FFFFB1DCFFFFAFDBFFFFA8D8FFFF75C0FFFF165A38FF0000
      00FF5F5F5FFF939393FFF5F5F5FFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70029292100BDB5A500DECE
      AD00CEAD3900D6BD5200DEC66B00DECE7B00DED68C00E7D69C00E7DEAD00E7DE
      B500E7DEB500E7DEA500E7D69C00DECE8400DECE7300DEC66B00D6BD5200C6A5
      3100DECEAD00BDB5AD0000000000F7F7F700FAFAFAFF000000FF245A85FF89CA
      FFFF9FD4FFFFAFDBFFFFB9DFFFFFB6DEFFFFABD9FFFF8ECCFFFF70BFFFFF030E
      19FF000000FF7A7561FF706B59FF000000FFDFDFDFFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F70031313100BDBDAD00DECE
      A500CEAD3900D6BD4A00DEC66300DEC67300DECE8400E7D69400E7D69C00E7D6
      A500E7D69C00E7D69C00DED68C00DECE7B00DEC66B00D6C66300D6BD4A00C6A5
      3100DECEA500BDBDAD0000000000F7F7F7003D3D3DFF3E9AE3FF53B1FEFF8DCB
      FFFFA6D7FFFFB8DFFFFFC2E3FFFFBFE2FFFFB3DCFFFF93CEFFFF75C1FFFF63B7
      FCFF000000FF201F19FF7D7965FF787360FF000000FFF8F8F8FFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7004A4A4200C6C6B500CEBD
      9C00C6A52900D6B54200D6BD5200DEC66300DEC66B00DECE7B00DECE8400DECE
      8400DECE8400DECE8400DECE7B00DEC66B00D6BD6300D6BD5200D6B54200C6A5
      2900D6C69C00C6C6B50010101000EFEFEF00000000FF56B2FCFF59B5FFFF8FCC
      FFFFAAD8FFFFBCE1FFFFC0E3FFFFC0E3FFFFB8DFFFFF95CFFFFF76C1FFFF4394
      D6FF213446FF474539FF847F6CFF84806CFF686454FF0F0E0BFF5D5D5DFFF8F8
      F8FFFCFCFCFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7005A525200CEC6BD00CEBD
      9400C6A52900CEB53900D6BD4A00D6BD5200D6C66300DEC66B00DEC67300DEC6
      7300DEC67300DEC67300DEC66B00D6BD5A00D6BD5200D6B54A00CEB53900C6A5
      2100CEBD9400CEC6BD0029292900EFEFEF009C9C9CFF192734FF3570A2FF5489
      B6FF6CA5DCFF91C6F9FFBDE1FFFFBCE0FFFFB0DBFFFF8CCBFFFF6CBCFDFF2A5D
      89FF979483FFA19E8EFFA6A394FFA9A697FFA6A394FFA29F90FF8C8977FF524F
      43FF0C0C0CFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF0063636300D6CEC600C6B5
      8C00C6A52100CEB53100D6B54200D6BD4A00D6BD5200D6BD5A00DEC66300DEC6
      6300DEC66300DEC66300D6BD5A00D6BD5200D6B54A00D6B53900CEAD2900C69C
      1800C6B58C00D6CEC60042424200EFEFEF00F8F8F8FF030A13FF1C3D5AFF1C3D
      5AFF1C3D5AFF1C3D5AFF20415EFF6296C9FF99D0FFFF3C70A1FF1C3D5AFF1C3D
      5AFFAAA799FFB2B0A2FFB6B4A7FFB7B5A8FFB4B1A4FFAEAC9EFFA29E8FFF9692
      82FF797564FF989898FFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF0073736B00D6D6CE00BDA5
      8400C69C1800CEAD2900CEB53100D6B53900D6B54200D6BD4A00D6BD5200D6BD
      5200D6BD5200D6BD5200D6BD4A00D6B54200D6B53900CEB53100CEAD2100BD9C
      1000BDAD8400D6D6CE0052524A00EFEFEF00FCFCFCFF333333FF193751FF1C3D
      5AFF1C3D5AFF1C3D5AFF1C3D5AFF1C3D5AFF1C3D5AFF1C3D5AFF1C3D5AFF6D77
      78FFC2C0B6FFC8C6BCFFC9C8BEFFCAC8BEFFC9C7BCFFC5C3B9FFBAB8ABFFAEAB
      9EFF9F9B8CFF575448FF6C6C6CFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DEDEDE007B7B7B00DEDED600B59C
      7300C69C1800CEAD2100CEAD2900CEB53100CEB53900D6B54200D6B54200D6B5
      4200D6B54200D6B54200D6B54200CEB53900CEB53100CEAD2900CEAD1800C69C
      1000B59C7300DEDED6006B6B6B00EFEFEF00FCFCFCFFF2F2F2FF000000FF2145
      66FF214566FF214566FF214566FF214566FF214566FF214566FF334E68FFBEBC
      B1FFCECCC3FFD3D2C9FFD4D3CBFFD4D3CBFFD2D1C8FFD0CEC5FFC7C6BCFFBDBB
      AFFFAFAC9EFF918D7DFF020202FFF2F2F2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D60084848400DEDEDE00AD94
      6B00C6A52100CEAD2900CEB53100D6B53900D6B53900D6B54200D6B54A00D6BD
      4A00D6B54A00D6B54200D6B54200D6B53900CEB53900CEB53100CEAD2900C6A5
      2100AD946B00DEDEDE007B737300E7E7E700FCFCFCFFFCFCFCFFD6D6D6FF0F24
      36FF3B6286FF476B8CFF466A8CFF466A8CFF476B8CFF526575FFB5B3A7FFCBC9
      BFFFD8D7D0FFDDDCD6FFDFDDD8FFDEDDD7FFDDDCD5FFD9D8D1FFD1D0C8FFC9C7
      BEFFBAB8ADFF9E9A8BFF434138FFC2C2C2FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C6C6C6008C8C8C00E7E7DE00AD8C
      5A00CEB54200D6BD4A00D6BD5200D6BD5200D6BD5200D6BD5A00DEC65A00DEC6
      5A00DEC65A00D6BD5A00D6BD5A00D6BD5200D6BD5200D6BD4A00D6BD4A00CEB5
      4200AD946300E7E7DE0084847B00E7E7E700FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFA8A8A8FF303030FF000000FF000000FF5B5846FFA7A598FFC4C2B8FFD8D7
      D0FFE6E5E1FFEAEAE6FFEDECE8FFECEBE8FFEAE9E5FFE6E5E1FFDFDDD8FFD7D6
      CFFFCAC9BFFFABA89AFF888475FF484848FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000BDBDBD0094948C00E7E7E700A584
      5200DECE8400E7CE8400E7D68400E7D68C00E7D68C00E7D68C00E7D68C00E7D6
      8C00E7D68C00E7D68C00E7D68C00E7D68C00E7D68C00E7D68400E7CE8400DECE
      8400A58C5A00E7E7E7008C8C8C00DEDEDE00FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFDFDFDFFA4A4A4FF454235FFAFAC9FFFCAC8C0FFDEDD
      D7FFEDEDE9FFF2F1EFFFF3F3F1FFF3F3F0FFF2F1EEFFEEEDEAFFE6E5E0FFDEDE
      D8FFD2D0C7FFB2B0A4FF878375FF4B4B4BFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000ADADAD009C9C9400EFEFE7009C84
      4A00E7DEBD00EFDEBD00EFE7BD00EFE7BD00EFE7BD00EFE7BD00EFE7BD00EFE7
      BD00EFE7BD00EFE7BD00EFE7BD00EFE7BD00EFE7BD00EFE7BD00EFE7BD00E7DE
      BD009C845200EFEFE70094948C00C6C6C600FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFF9F9F9FF050503FFB3B1A5FFCFCDC5FFE3E2
      DCFFF3F3F1FFF8F8F6FFFAF9F8FFF9F9F8FFF7F6F5FFF3F3F0FFECEBE8FFE4E3
      DDFFD6D5CEFFB5B1A6FF545249FFA6A6A6FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000D6D6D60084848400F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EFEF00F7EF
      EF00F7EFEF00F7EFEF006B6B6B00E7E7E700FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFBBBBBBFF8A8678FFD4D2CBFFE9E8
      E5FFF7F6F5FFFCFCFBFFFDFDFDFFFDFDFDFFFCFCFCFFF9F9F8FFF0EFEDFFE6E5
      E1FFD9D7D1FFA6A295FF0D0D0DFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000D6CECE00F7F7
      EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7EF00F7F7F700F7F7
      F700F7F7F700F7F7F700F7F7F700F7F7EF00F7F7EF00F7F7EF00F7EFEF00F7EF
      EF00EFEFEF00B5B5B50018181800F7F7F700FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF000000FFAAA69AFFEAE9
      E6FFF8F8F7FFFBFBFAFFFDFDFCFFFEFEFDFFFCFCFBFFF9F9F7FFEFEEEBFFE5E4
      E0FFD7D5CFFF1F1E1BFFDADADAFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000F7F7F7006B6B6B004A42
      4200A59C9400BDB5AD00D6CECE00DEDEDE00E7E7E700F7F7EF00F7F7F700F7F7
      F700F7F7F700F7F7F700EFEFEF00E7E7E700DED6D600CECEC600B5ADA5009C94
      8C00292121008C8C8C0000000000F7F7F700FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFF7A7A7AFF1313
      11FFDCDAD4FFFDFDFDFFFEFEFDFFFDFDFDFFFCFCFBFFF8F8F7FFE2E1DCFFA9A6
      9CFF0B0B09FFF7F7F7FFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000ADAD
      AD00000000006B6363007B7B7300BDB5AD00D6CEC600E7E7E700F7F7EF00F7F7
      F700F7F7F700EFE7E700DEDED600BDB5B500A59C9400736B6B005A5252000000
      0000CECECE000000000000000000F7F7F700FCFCFCFFFCFCFCFFFCFCFCFFFCFC
      FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFEAEA
      EAFF020202FF474642FF939089FFCBC7C0FFC6C3BBFF9D9B93FF1D1C1AFF1D1D
      1DFFECECECFFFCFCFCFFFCFCFCFFF4F4F4FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000F7F7F700DEDEDE00C6C6C600101010000000000000000000080808000808
      08000808080008080800080808000808080021212100DEDEDE00EFEFEF000000
      0000000000000000000000000000F7F7F700FBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFB
      FBFFFAFAFAFFEFEFEFFF8A8A8AFF5E5E5EFF5F5F5FFF7F7F7FFFF7F7F7FFFBFB
      FBFFFBFBFBFFFBFBFBFFFBFBFBFFF8F8F8FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFEFEFFFEFEFEFFFCFCFCFFFEFD
      FBFFFFFFFBFFFCF9F6FFFFFEFDFFFFFDFCFFFEFEFDFFFAFFFDFFF9FEFEFFFBFF
      FFFFFCFEFEFFFEFDFDFFFEFFFEFFFEFEFDFFFCFEFCFFFDFFFEFFFBFFFDFFFAFE
      FDFFFBFFFEFFF9FBFAFFFDFFFDFFFDFEFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F3F2FFA9B5AFFFAAB6
      B0FFF2F5F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFCFCFFFEFAFBFFF5F3F2FFD6D1
      CEFFC9C3BEFFB8AFACFFC6BCBBFFE5DEDEFFF4F0EFFFFCFDFCFFF8FCFCFFFBFE
      FEFFFAFCFCFFFFFFFFFFFAFDFBFFF5F7F6FFE3E4E2FFCCCAC9FFB7B3B2FFBCB9
      B8FFC2BFBEFFECEBEAFFF9FBF9FFFDFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFFFF
      FFFFFCFCFCFFE3E3E3FFD9D9D9FFD2D2D2FFD2D2D2FFDCDCDCFFE7E7E7FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFBFCFFECE7E8FFB3ACACFFA497
      95FFA79794FFA49390FF8E7E7CFF8C807FFFACA3A2FFF7F6F5FFFCFFFFFFFCFF
      FFFFFCFDFEFFFBFDFDFFF0F3F2FFB1B2B0FFAFABA9FFA09696FFA29293FF8D7D
      7EFF887A7AFF988F8FFFEDECEBFFFBFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F2FFDFDFDFFFEFEF
      EFFFD9DED9FF459545FF2C8B2CFF118111FF318D31FF8DAE8DFFC7C7C7FFE9E9
      E9FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFCFC9CAFFE8DFE0FFF6E4
      E2FFE7D1CEFFD5BDBBFFAD9694FF9B8A89FFA39694FFF3EFEFFFFEFFFFFFFCFE
      FEFFFCFDFDFFFFFFFFFFDFE0DFFFD4CDCDFFF2E8E8FFF3DFE0FFD7BABDFFB597
      9AFFBEA2A5FF998687FFEDE7E6FFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFDDD4C7FFDCC298FFB68D45FF1290
      12FF19A419FF118C11FF0D800DFF118D11FF179D17FF23C123FF1CAC1CFF74A4
      74FFC8C8C8FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFDFDFDFFFDFD
      FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
      FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFFD5D0D1FFE6DDDCFFF7E4
      DEFFF2D7D1FFC8ABA7FFB29896FFAF9C9BFFC1B2B1FFFBF8F8FFFBFDFEFFF1F5
      F5FFF0F3F4FFF8F8FAFFE3E2E2FFDFD5D5FFF0E3E2FFFBE2E1FFD0ABADFFAA86
      88FFBC9B9EFFB9A2A4FFF7EFF0FFFDFCFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFEFEFEFFCDBBA0FFB37F2FFFFFFEFBFF59A758FF199C
      19FF139113FF108910FF0F850FFF0D800DFF0D800DFF149514FF21BB21FF118B
      11FF78A678FFEAEAEAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFE6E6E6FFD6D7D7FFCCCCCCFFCDCD
      CDFFD6D6D6FFE7E7E7FFFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF7F7F7FF7A7B74FF868782FF868782FF868782FF8687
      82FF868782FF868782FF868782FF868782FF868782FF868782FF858781FF8889
      84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFAFCFFFEFDFAFFD5C7B9FFCDA4
      75FFDBAA77FFBF8363FFA97164FFA48885FFCDBCBCFFDCDDE0FFC0CFD4FF7F9C
      A4FF768C98FF9394A4FFD0CCD6FFDCC7C4FFD4B3A2FFDCA17AFFD78B77FFAA77
      61FF9C7466FFBA9FABFFFEF7F7FFF6FBF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE1DCD5FFAC8549FFFFFEFCFFFEFBECFF198719FF2CAD2FFF27A9
      27FF22A422FF7CA67CFFC6D7C6FF128412FF0F860FFF0D800DFF0D800DFF21BC
      21FF1AA81AFFCACACAFFEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF2F2F2FFC0C0C0FFA7A7A7FFB1ACA7FFC2BBB7FFC0B9
      B4FFB2ADA8FFA4A4A4FFC2C2C2FFF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF5F6F5FFB6B7B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFFFEFDF6FFDFC6ACFFE0A7
      53FFEFAB50FFEFA261FFDC9470FF937262FF72645CFF535F64FF365A67FF5593
      A4FF528C9FFF294157FF4C494FFF977E6AFFCEA97BFFE7A451FFF7A56BFFD6A4
      68FFBB9667FF927A7CFFF0E9E4FFFBFEFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F5F5FFA47B39FFEEE3D0FFFEF9E6FFFEF8E1FF229D2BFF38BB38FF2FB2
      2FFF2B9F2BFFFFFFFFFFFFFFFFFF296B29FF138713FF0E850EFF0D810DFF1699
      16FF23C023FFA1B6A1FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE6E6E6FFA1A1A1FFC5C4C4FFD7C9BDFFB38C69FFB18662FFB186
      61FFB58D6BFFDBCFC4FFC0C0C0FFA2A2A2FFECECECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6F6F5FFB5B6B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFCFFFCFAF2FFDCC2A4FFF3BE
      60FFF8C056FFFFC972FFF9BC80FF937755FF605743FF9DB4B6FF83AEBDFF9DDE
      EEFF8ED0E1FF87B1BFFFA7ACA1FF87704AFFDDBD7DFFF4C357FFFFCC72FFE4BD
      63FFDBBB71FF96816EFFEDE8D9FFFFFDF9FFFFFFFFFFFFFFFFFFFBFBFBFFA589
      5CFFC9B38FFFFEFCF1FFFEF9E4FFFEF8E1FFFEF8E1FF48CC49FF46C946FFB2CC
      B2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCADACAFF158B15FF118E11FF0F86
      0FFF19A319FF419341FFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFE8E8E8FFA2A2A2FFDAD9D9FFE8DDD4FFB8854FFFD89B59FFF4B16CFFF3B1
      6CFFD99B59FFB5814DFFEADED4FFDADADAFFA2A2A2FFEAEAEAFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF6F6F5FFB5B6B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFCF9F0FFD6BFA1FFF6CC
      71FFFDD56CFFFDD377FFF7C582FFA58A62FF8C836BFF9EB0B0FF93B3C1FF7DB0
      C1FF83B5C5FF73969FFFA9ADA0FFCCB68DFFE5C584FFF9D364FFFED06EFFF1CE
      6FFFE2C575FF917C62FFECE9DAFFFFFCFBFFFFFFFFFFFCFCFCFFD8D1C4FFE6DD
      CCFFFFFFFDFFFEFAEAFFFEFAE8FFFDF8E2FFD7C996FF51D351FF4DCF4DFFFFFF
      FFFFFFFFFFFFE7F1E7FFB0E1B0FFFFFFFFFFFFFFFFFF2E722EFF198F19FF118C
      11FF159915FF2F8C2FFFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE9E9
      E9FFA2A2A2FFDEDEDEFFFAF6F4FFB78C66FFE5A561FFF7B46FFFEBAD6BFFEBAD
      6BFFF7B46FFFE6A762FFBE946DFFFBF8F6FFDADADAFFA5A5A5FFEEEEEEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFAFAFAFFF8F8F7FFEFEFEFFFB5B6B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFFF8EDE2FFCEB89EFFF9DA
      9BFFFCE096FFFEEAA0FFFCD79CFFAE8C68FFA4917AFFF0F6F4FFF4FCFFFF9DB0
      B6FFA7BDBDFF576A62FFE6E5DEFFD1B79DFFE0C191FFFDE78EFFFEED9BFFFCDF
      90FFEFD08FFF94816DFFEAE7E0FFFFFAFEFFFFFFFFFFD7C3A4FFCDB893FFFFFD
      F7FFFFFDF5FFFDF8EBFFE4C798FFF2E3C5FFFEFAE9FF5CDB5EFF5ADA5AFFFFFF
      FFFFE9F3E9FF46C846FF42C442FFA9E1A9FFFFFFFFFFFFFFFFFFCBDBCBFF1F96
      1FFF1B9F1BFF429342FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFA8A8
      A8FFDFDFDFFFFEFEFEFFE4D5C9FFD09456FFF8B56FFFC49460FF836C4DFF826B
      4EFFC2925FFFF6B46EFFC88C4BFFDECFC3FFFDFDFDFFD9D9D9FFACACACFFFAFA
      FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF797B74FFAAAAA7FFA3A4A1FFB7B8B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDF7FFE9DED3FFCAB6A4FFE3C9
      ADFFE6D3B0FFEADDB1FFFAD8B1FFB19177FFB7A293FFFAF7F8FFFEF6FDFFACA8
      A7FFBAB9B1FF8E9282FFE0DBDFFFCCB1ADFFD4B7A5FFECD9AAFFEAD9ACFFF6DD
      B2FFEED0ADFF9F8D88FFE9EAE9FFFEF7FFFFFFFFFFFFFFFFFFFFDCCBAFFFF6F1
      E8FFFFFEF9FFD8B274FFE4C89AFFFEFBEFFFFEFBEDFF54D05EFF60DD60FFEAF4
      EAFF68D968FF4DCF4DFF48CB48FF40C340FFAAE2AAFFFFFFFFFFFFFFFFFF3278
      32FF22A222FF66A366FFEAEAEAFFFFFFFFFFFFFFFFFFFDFDFDFFBDBDBDFFC4C4
      C4FFFDFDFDFFFFFFFFFFCEAE93FFE9A965FFE9AC6BFF595646FF4D4F43FF4D4F
      43FF695D48FFEBAD6BFFE1A25FFFC9B09BFFFEFEFDFFFEFEFEFFBCBCBCFFCECE
      CEFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFF6F6F6FFB5B5B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFFFFFFF8FFFFF7EFFFEFE6
      E0FFE3E1D7FFC5CBB7FFCCBBA8FFD3C5B7FFEDE4DDFFF3EEF4FFE4D1DEFF8979
      7CFF4F3F3CFF8F837AFFC0B6BDFFF8E1E9FFFBE7E8FFF1E8DBFFD7CEC3FFD5C1
      B4FFCFB9AFFFDAD0CEFFFBFFFDFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFDAC8
      AAFFB5935DFFFFFEFCFFFFFEFAFFFFFDF7FFFFFDF5FF1B891DFF61D867FF64DD
      64FF61DD61FF5ADA5AFF56D656FF4ED04EFF4ACC4AFFADE5ADFFFFFFFFFFF3F7
      F3FF2B792CFFE8E8E8FFFEFEFEFFFFFFFFFFFFFFFFFFE0E0E0FFA5A5A4FFFBFB
      FBFFFFFFFFFFFFFFFFFFBF997AFFF0AF6AFFC4945FFF65675FFF595B51FF4D4F
      43FF4C4F43FFDBA266FFF1AF6AFFBFA38FFFFEFDFDFFFFFFFFFFF6F6F6FF9C9C
      9CFFE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFF6F6F5FFB5B6B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8586
      81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFDFFFFFFF9FFFFFEF6FFFAFB
      F7FFF3FAF5FFEBF8EBFFF1ECDDFFEFECE3FFF7F7F2FFD3D2D9FFA998A6FF8A79
      80FF7E6B6EFF806D6AFF83777CFFD0BFC5FFF2E5E9FFFDFBF9FFFAF7F4FFF7ED
      E6FFEEE0D9FFF7F2EDFFFAFFF7FFFCFEF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFCDB58EFFFFFFFFFFFFFFFEFFFFFEFAFFFFFDF8FF90C48BFF2BA23AFF69DE
      69FF66DE66FF60DD60FF5DDC5DFF54D554FF51D251FF48CA48FFAEE6AEFFF3F7
      F3FF236625FFF5F5F5FFFFFFFFFFFFFFFFFFFFFFFFFFDCDCDBFF90918DFFD9D9
      D7FFFFFFFFFFFFFFFFFFC09A7BFFF0AF6AFFD1A67AFFDCDCDCFFBFBFBDFF5052
      46FF4D4F43FFDCA266FFF1AF69FFC0A48FFFFEFEFDFFFFFFFFFFE8E8E7FF898A
      86FFDCDCDCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFF7F5F3FFA27F62FFBFA391FFBFA390FFBFA390FFBFA3
      90FFBFA390FFBFA390FFBFA390FFBFA390FFBFA390FFBFA390FFBFA491FF9D7B
      5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFFFFFFFFFFFEFFFFFFFBFFFEFC
      FBFFFBFCFBFFFBFFFAFFFEFCF7FFF9FFFBFFEAF3EFFFC0C3C4FFE3D9DFFFCBC4
      CBFFC4B8BEFFB49CA1FFA08C8AFF968D8CFFD1CCCDFFFBFCFFFFFCFEFFFFFBFB
      F9FFFFFFFBFFFFFEF6FFFEFFF6FFF9FFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB28D52FFFBF9F5FFE4C99FFFD3A661FFF6ECDCFFF6FAF2FF29A0
      39FF62D66BFF6ADE6AFF67DE67FF61DD61FF5EDC5EFF56D656FF40BF4AFFC6DE
      C6FFC6C6C6FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFA9AAA7FF6364
      5CFF868782FFCCCDCBFFB99C82FFE3A565FFF3CFB1FFFBFBFCFFECECEBFF5F61
      57FF685D49FFE8AB6BFFDE9F5EFFBBA28DFFDDDDDBFF9F9F9BFF6E6F68FFAAAB
      A9FFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFF7F4F2FFC98C47FFF7B56FFFF7B46EFFF7B46EFFF7B4
      6EFFF7B46EFFF7B46EFFF7B46EFFF7B46EFFF7B46EFFF7B46EFFF8B56FFFB281
      56FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCFFFFFAFDFFFFFEFCFDFFFFFC
      FEFFFFFBFEFFFFFBFEFFFFF9FCFFF9FEFCFFF1F7F2FFD3CAC2FFDFCEC8FFE3D0
      CCFFC9ADADFFB8868CFFBC9D99FFC5BEBBFFEDEEEDFFFAFEFFFFF8FCFDFFF8FF
      FCFFF9FEFAFFFEFEF6FFFFFFFCFFF7FDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFD3BC96FFD2BD9AFFEBD7B8FFFCF9F4FFFFFFFFFFFFFFFEFF9ECC
      9BFF218A20FF56CB64FF60D668FF64DC66FF56D25EFF239B2EFF369336FFFEFE
      FEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FF7879
      72FF74746FFF6E6F69FF68675DFF7E6D56FF95846FFFA3A4A0FFA2A29EFF5C5E
      54FF7C705BFF9A8061FF816C53FF6B675BFF676961FF56584EFF8B8C88FFF7F7
      F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFF8F6F3FFAB6F1CFFC28644FFC28643FFC28643FFC286
      43FFC28643FFC28643FFC28643FFC28643FFC28643FFC4894AFFC28644FFA978
      4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FEFFFFFBFEFFFFFCFCFEFFFFFD
      FEFFFFFDFFFFFFFAFEFFFEFCFFFFF5FDFEFFFAFFFCFFFBF5E2FFD0A17DFFD09B
      74FFD49874FFC17863FF99685AFFCBC2BDFFECEDEEFFF6FCFFFFFCFDFEFFFBFF
      FDFFFBFFFBFFFEFFFCFFFFF9FDFFFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFCFB58AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFCF9F3FFFFFEFAFFFFFDF8FFD3BA91FFD7D7D7FFF8F8F8FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEDE
      DDFF6B6D65FF91918FFF999998FF8F908EFF858684FF80817DFF7D7D7AFF7E7F
      7BFF7F807DFF828380FF8B8C8AFF91918FFF7C7C78FF868681FFE6E6E6FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFFFFFFFFFFCFBFBFFFCFBFBFFFCFBFBFFFCFBFBFFFCFB
      FBFFFCFBFBFFFCFBFBFFFCFBFBFFFCFBFBFFFDFCFCFF85847DFFFEFDFDFFFCFB
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFFFFFFFDFFFFFFFFFFFFFFFFFF
      FFFFFFFFFDFFFFFFFBFFFCFEFFFFF2FDFFFFF7FEFDFFFDF5DBFFD9A165FFE29F
      54FFEDA860FFD99361FFA4684DFFAB9F97FFDBDDDDFFF2FBFFFFFFFDFFFFFFFF
      FDFFFEFFFCFFFBFFFEFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFEDE3D2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE0
      C8FFE5CCA3FFD8B376FFFCFAF5FFFFFEFAFFE5D5BEFFD3D3D3FFF4F4F4FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEFFD9D9D7FF6C6D66FF959694FFA5A5A5FFA5A5A5FFA4A4A4FFA4A4A4FFA4A4
      A4FFA4A4A4FFA4A4A4FFA2A2A2FF838480FF81827DFFE9E9E9FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF858681FFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
      FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFFFF848580FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
      FFFFFFFFFEFFFFFFF8FFFBFFFDFFF1FDFFFFF6FEFDFFF0DEBFFFECB768FFFDBC
      58FFFEC262FFEDB46BFFDB9E76FF9D9283FFCFD5CFFFF3FEFFFFFFFCFEFFFFFF
      FDFFFFFFFBFFF8FFFFFFFDFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4EEE4FFFAF5EDFFF1E3CDFFFDFAF7FFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE8DDFFCECECEFFEEEEEEFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDFFCECFCDFF70716AFF80807CFF9F9F9FFFA4A4A3FFA5A5A4FFA4A4
      A4FFA2A2A2FF979795FF72736DFF8C8D89FFECECECFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE
      FEFFA47853FFB2845CFFB2845BFFB2845BFFB2845BFFB2845BFFB2845BFFB284
      5BFFB2845BFFB2845BFFB2845BFFB2845BFFB2845BFFA88162FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFDFE
      FFFFFEFFFEFFFFFFFAFFFDFFFEFFF4FDFFFFF8FEFDFFD6C8ABFFF3C77CFFFFD2
      74FFFED77AFFF5CE84FFDAA978FF948F77FFCFD8C9FFF4FFFFFFFFFFFCFFFFFF
      FAFFFFFFFBFFF9FFFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECE0CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F4EEFFCBCAC7FFECECECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFDDDDDBFFA4A5A2FF6E6F68FF7A7A76FF838480FF7F7F
      7CFF72736DFF84857FFFBDBDBBFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FEFFB28155FFFBB871FFFAB670FFFAB670FFFAB670FFFAB670FFFAB670FFFAB6
      70FFFAB670FFFAB670FFFAB670FFFAB670FFFBB771FFB28763FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFBFF
      FFFFFDFFFEFFFFFFFBFFFEFFFEFFF9FDFFFFF7FAF9FFD3C7AFFFF0D195FFFFE4
      98FFFFF0A4FFF9E3A6FFDCB688FF95937BFFCCD6C6FFF6FFFDFFFFFFFBFFFFFF
      FAFFFFFFFBFFFBFEFFFFFFFDFFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE2CCA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAF7F4FFC6C1B8FFECECECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FFDFDFDEFFCACAC8FF9C9D99FFB2B3
      B0FFDADAD9FFECECEBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAD8564FFB38256FFB28256FFB28256FFB28256FFB28256FFB28256FFB282
      56FFB28256FFB28256FFB28256FFB28256FFB28256FFB28D71FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFBFF
      FFFFFCFFFEFFFFFFFBFFFFFFFEFFFAFDFFFFF5F7F7FFCABEACFFE9D09EFFFDE9
      ABFFFBE8AAFFF9E9B6FFD6B48DFF9D9B87FFCFD8CBFFF7FFFDFFFFFFFBFFFFFF
      FAFFFFFFFBFFFCFEFFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE4CEA9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F7F3FFC7C1B9FFECECECFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFF9F9F9FFFBFB
      FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFAFF
      FEFFFBFFFDFFFFFFFBFFFFFFFEFFFEFCFFFFFBF8FBFFEDE5E0FFEBD9C3FFE8D7
      BAFFDBD0B1FFCAC1AAFFCBB09CFFCDCBC5FFE9EDECFFFAFEFFFFFFFEFDFFFEFF
      FCFFFDFFFDFFFEFDFFFFFFFDFFFFFFFFFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CCA1FFF4EBDBFFE6D3B5FFE4D2B4FFDBC6
      A4FFCEB489FFC8AF86FFBDA274FFAB8B57FFA58450FFEDEBE9FFFAFAFAFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFFBFF
      FDFFFCFFFCFFFFFFFBFFFFFFFDFFFFFDFFFFFFFCFFFFFFFBFDFFFFFCFAFFFEFD
      F9FFFEFDF9FFFDFBF7FFF8E9E7FFF9F5F9FFFAFBFEFFFCFAFFFFFFFDFFFFFCFF
      FEFFFBFFFEFFFFFDFFFFFFFDFFFFFEFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFF
      FEFFFDFFFDFFFFFFFCFFFFFFFDFFFFFFFFFFFFFDFFFFFFFDFFFFFEFBFFFFFCF8
      FFFFFBF7FFFFFFFAFFFFFFFBFFFFFCFAFFFFFAFBFFFFFDF8FFFFFFFDFEFFFCFF
      FEFFFBFFFFFFFFFBFFFFFFFCFFFFFEFFF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF74DDDDFF747474FF747171FF74FF
      FFFF74FFFFFF74B3B3FF747474FF748787FF74FFFFFF74FFFFFF748787FF7474
      74FF74B3B3FF74FFFFFF74FFFFFF747171FF747474FF74DDDDFF74FFFFFF74F7
      F7FF747070FF747070FF74F7F7FF74FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9866266FA57A43FDB9976BFFCCB188FFCEB38AFFD0B084FFBC9B68FFAB8C
      56FFA07E48FFFFFFFFFF1111DAFF1616C4F9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2525BFEF1616AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9976BFFCCB188FFCEB38AFFD0B084FFBC9B68FFAB8C
      56FFDFD8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF8FFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA7793CFDE2C190FEECD1A8FFEFD6AEFFECD0A4FFE6C696FFD4AD73FFC99E
      5FFFC19350FF39329BFF1111DEFF0000DFFF2020D3F3FFFFFFFFFFFFFFFF0202
      BBFF0000AFFF0303B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE2C190FEECD1A8FFEFD6AEFFECD0A4FFE6C696FFD4AD73FFC99E
      5FFFC19350FFF6F3F0FF3A6A1DFF009D2EFF00DC52FF00DB51FF00DB51FF00DB
      51FF00DC51FF00DB51FF007919D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8ABF7F7F7A1FDFDFDE9FEFEFEF3FFFFFFF8FFFFFFFFFFFF
      FFFAFEFEFEF1FDFDFDEBFEFEFEEEFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAA7D42FAE5C79AFEF0D7B1FFF1DAB4FFEED3A9FFE7C899FFD5AE76FFCCA2
      65FFC29553FF896434FF38319AFF1616E4FF0101E6FF2A29D2F32828D4F50000
      C7FF0303C2FF2020D2F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5C79AFEF0D7B1FFF1DAB4FFEED3A9FFE7C899FFD5AE76FFCCA2
      65FFC29553FFFFFFFFFF2D711AFF00C645FF00ED57FF00EE58FF00EE58FF00EE
      58FF00ED56FF00F85EFF008E23E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDE0C85D18B4BA5111AE9653268A7D5F56548A7C79499F9A97458E85
      824873594A5F8F6C4A8391644579BDBDBC52FFFFFFFBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000002B4
      E064139FC4DC1E92B4FF1F92B4FF1F91B4FF1F92B4FF1F93B6FF1E9DC0FF1B9C
      C1FF1F93B5FF1F91B4FF1F91B4FF1F92B4FF1F92B4FF2098BBFF42829FFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFAA7E4494BD99
      68FFB98E57FCE8C99EFFF3DBB6FFF4DCB9FFF0D5ADFFE8C99BFFD7B078FFCEA5
      68FFC49857FFA8793AFF7D5729FE3A339BFF0000E8FF1010E4FF0101E8FF0909
      DBFF2121D2F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD99
      68FFB98E57FCE8C99EFFF3DBB6FFF4DCB9FFF0D5ADFFE8C99BFFD7B078FFCEA5
      68FFC49857FFFFFFFFFF2F711AFF00CD46FF00CC42FF00CE43FF00CE43FF00CE
      43FF00CB41FF00DE4EFF009224E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F5F596D1682BEFDC6B28F5DE671AEBC8662DC8A7531EA1985C2D8F9F59
      2698D08B55D5E2C899E8C88E67D58E786371FAFAFAC1FFFFFFF7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000000BC
      E6CE00BCE7FF00C6F2FF00C7F2FF00C7F2FF00C8F3FF01C6EFFF2488A6FF598F
      ACFF12C4EDFF00C9F4FF00C7F3FF00C7F3FF01C8F3FF01C5F2FF1FBCE3FF5C38
      3CCAFDFDFDE2000000000000000000000000FFFFFFFFFFFFFFFFCAA678CFECD7
      B8FAC39C69FFE8CAA2FFF5E1BFFFF8E4C5FFF4DBB7FFECCFA3FFDAB47DFFD2AA
      6FFFCAA062FFB58644FFA27235FF8D6F4FFF3E3EF2FF4343EFFF2B2BEFFF0303
      B3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA678CFECD7
      B8FAC39C69FFE8CAA2FFF5E1BFFFF8E4C5FFF4DBB7FFECCFA3FFDAB47DFFD2AA
      6FFFCAA062FFE1D8CEFF2F731CFF00CB3EFF00B33AFF00B63AFF00B73AFF00B7
      3AFF00B238FF00CA43FF009321E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEECBAB6B553F1BA89FFF4BC8CFFE9A877FFE8A371FFE7A170FFEAA977FEEDB5
      84FFF8E4B3FFF3D8A8FFEAA976FFF4CB9EF98F6E547F81726D4DCECDCC53FDFD
      FDE8FEFEFEF0FFFFFFFAFFFFFFFFFFFFFFFF00000000000000000000000000C2
      EB9802C5EFFF07DAFEFF01D5FFFF01D5FFFF01D7FFFF03CDE9FF220000FF8742
      50FF39A7C2FF00DCFFFF01D5FFFF01D5FFFF0CDFFFFF06D4FCFF2AB7DCF96707
      008DFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFC9A575C8F0DE
      C2FCC5A16FFFE6C9A1FFF8E4C6FFFAEACFFFF6DFBFFFEFD3ABFFDCB781FFD5AD
      73FFCDA467FFB38545FF835F3AFF3836D3FF8F8FF9FF6C6CF8FF6262F8FF5D5D
      F5FF2626C2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9A575C8F0DE
      C2FCC5A16FFFE6C9A1FFF8E4C6FFFAEACFFFF6DFBFFFEFD3ABFFDCB781FFD5AD
      73FFCDA467FFCBB9A3FF30731DFF00CB54FF00D950FF00D951FF00DA52FF00DA
      52FF00D84FFF00E75EFF009029E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBC0A08D875EFBCB98FFFDC691FFFCC898FFFBC996FFF7C28DFFEDB887FFF0BF
      8FFFFAE9B7FFEABF90FFF1B784FFFDD4A2FFE6C3A0E4B1764DA78258406BA19D
      9B3EDBDBDB5CF9F9F9BAFFFFFFF7FFFFFFFF00000000000000000000000000C6
      EC4900C4EBE90ADAFBFF05DCFFFF00D6FFFF00D8FFFF02D3EDFF0C4A56FF232B
      35FF14BDDBFF00DDFFFF00D6FFFF07DCFFFF14E7FFFF07D3F7FF437A8CE47400
      003BFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFC09965B1F4E5
      CCFDC7A473FFE0C29BFFF8E7CAFFFBEDD6FFF7E3C5FFF1D6B0FFE0BC88FFD8B1
      79FFD1A86DFF8E6D47FF3A37D6FF7575F8FF7A7AF8FF3E3BC8F83534C7E79A9A
      FAFF7777F9FF3636D6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC09965B1F4E5
      CCFDC7A473FFE0C29BFFF8E7CAFFFBEDD6FFF7E3C5FFF1D6B0FFE0BC88FFD8B1
      79FFD1A86DFFD6C9BBFF30731EFF00CA69FF00FF6AFF00FE6BFF00FE6BFF00FE
      6BFF00FE68FF00FF7BFF008E31E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
      F08691573A73FEC88EFFFE9F49FFFE9336FFFD9345FFFE9D36FFECB889FFF1C5
      93FFFAE0AEFFE6B384FFF6C291FFFFDAAAFFFDE3C2FDF3D6B7F3DB9363DB8F4C
      1C7C744E4060AA9E9A49F6F6F5A0FFFFFFFF000000000000000000000000FFFF
      FFFF00C7EAAA05D2F4FC0CE4FFFF02DBFFFF00DBFFFF00DEFDFF04D0E6FF05CC
      E1FF00E0FFFF00DBFFFF01DAFFFF12EAFFFF10E7FFFF1FAFCBFD5F3B3F9EFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFF3E2
      C7FCD9BD93FFD3B58BFFF2DCBDFFFBF0DBFFFAECD2FFF6E0BFFFE7C89AFFE2C0
      8FFFDBB682FF2F2EE8FFA3A3F7FF8E8EF8FF987A5AF7FFFFFFFFFFFFFFFF2C2C
      CBE38181F9FFA4A4FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2
      C7FCD9BD93FFD3B58BFFF2DCBDFFFBF0DBFFFAECD2FFF6E0BFFFE7C89AFFE2C0
      8FFFDBB682FFC7B8A6FF357B29FF00C563FF00FF7BFF00FF7CFF00FF7CFF00FF
      7CFF00FF7AFF00FF88FF008C2EE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C6
      C667BE6436C4FEB87BFFFF8C01FFFF7C01FFFF8E00FFFEA729FFF5AD71FFF6CA
      93FFF1CF9EFFE39968FFF4C391FFFEDEB2FFFDE9CBFFF5ECDAFFFDF3E3FFF9BE
      92FEF79E5AFBED6F1DDFC9BEB66EFFFFFFFF000000000000000000000000FFFF
      FFFF00CFEF5301CDECED09E0FAFF06E3FFFF00DEFFFF00DFFFFF16B9D0FF14A9
      C4FF00E3FEFF00DDFFFF06E3FFFF16F1FFFF08D6F1FF447B8AE26D222139FFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFE5CB
      A8EFE9D3B1FFD7BC94FFEAD2B0FFFCF0DBFFFCEFD8FFF9E6C9FFEBCDA3FFE5C5
      97FFD9B584FF846C53FF2E2EEBFF3D3CDCFFB4884DDFFFFFFFFFFFFFFFFFFFFF
      FFFF3030CCE52E2EF1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CB
      A8EFE9D3B1FFD7BC94FFEAD2B0FFFCF0DBFFFCEFD8FFF9E6C9FFEBCDA3FFE5C5
      97FFD9B584FFB0905CFF56893FFF01A543FF00E17CFF00E07AFF00DF7AFF00DF
      7AFF00E07BFF00DE79FF008C2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7947
      3554CD865CDEFEA456FFFF8500FFFF7901FFFF9700FFFAAC47FFF5B06FFFFBC8
      8CFFEBBE8EFFE6A06EFFF7CE9FFFF3C89FFFEEE7D3FF8FC3EDFFE1EDEDFFFEF7
      F1FFFDDEC2FFEE8045E3C9BBB46FFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFF00CFEBB903D6F1FF09E8FEFF01E3FFFF00E2FBFF2CA5ADFF267E
      94FF01EDFEFF00E1FFFF12F0FFFF0CE9FDFF28B9D1FC6049508EFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E8CFFEE7D1AEFFEAD4B2FFFDF1DDFFFDF1DDFFFAEBD1FFEFD4ACFFE8C9
      9CFFDBB888FFC3A376FFC1A67FFFCAB089FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA5
      73A9F6E8CFFEE7D1AEFFEAD4B2FFFDF1DDFFFDF1DDFFFAEBD1FFEFD4ACFFE8C9
      9CFFDBB888FFD1B07FFFB4B17AFF619950FF4F8D53F1008C2EFF008C2EFF008C
      2EFF008C2EFF008C2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF5B14E
      10A3F4C595FBFF8906FFFF7B07FFFE7607FFFFA521FFF2B681FFFAB97CFFFAE0
      ADFFE19362FFF0B582FFF5CCA1FFF3CAA7FF8EC2ECFF00B3FFFF0CD1FEFF5DD0
      FDFF97D1EDFFD4BB98ACE7E7E76DFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFF00D3EC5201D1EBF608E6F9FF04E9FFFF00E4F7FF478E9AFF4C5E
      6FFF04EFFDFF04E9FFFF15F5FEFF07DEF4FF4992A0E06D0B003AFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4E6C9FFFFFCECFFFCF4E0FFFCF2E0FFFCF1DDFFFAECD2FFF5DCB8FFEFD4
      ABFFEACCA0FFE5C594FFD8B483FFBD935BEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4E6C9FFFFFCECFFFCF4E0FFFCF2E0FFFCF1DDFFFAECD2FFF5DCB8FFEFD4
      ABFFEACCA0FFE5C594FFD8B483FFBC925AEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEAC57E
      52C7F9C897FEFD9F4BFFFE883DFFFF8D3AFFF8B168FFEFB785FFF5D2A0FFFBEE
      BCFFE49D6BFFF8C794FFF5CDA4FFF9D7B4FF60B5F5FF00C0FFFF02D8FFFF0CC2
      FFFF32ADFCFFBFB09776FBFBFBC3FFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFCFEFFC000D4EAAC06E1F3FF09F2FFFF01E9EFFF3C5A66FF5837
      46FF08E7F4FF11F6FFFF0EF0FEFF26C3D6FD5A3D3F94FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFDDC0FFFFFDE9FFFFF8E3FFFFF8E1FFFFF3D6FFFCE2BCFFF4D7
      ABFFECCC9EFED7B482F9C0965DE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD6B687C5EFDDC0FFFFFDE9FFFFF8E3FFFFF8E1FFFFF3D6FFFCE2BCFFF4D7
      ABFFECCC9EFED7B482F9C0965DE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB7CE8AF
      7FF6EBC8A2FFB4A7BDFFB7A9BBFFB0A3BDFFD2AEA4FFEFB987FFF7DFADFFF5DB
      A9FFF2BA87FFFDD6A4FFFDE1BEFFFCE3C4FF1EB9FEFF01D3FFFF01DBFFFF0BAD
      FEFF9ABEE1FAF0EFED92FFFFFFFEFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFF00D8EC5102DCEEEF0AF3FCFF06E9EAFF2B1423FF461A
      27FF13BAC8FF13FDFFFF09E8F6FF3F888EE76D000045FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD8BE95FFE9D6B4FFD8C5A2FFCEB793FFC8AB81FFCFAE
      7EFED7B380FFB88E57EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCEAB7AAAD8BE95FFE9D6B4FFD8C5A2FFCEB793FFC8AB81FFCFAE
      7EFED7B380FFBE9A6FEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B0A9A747F1BB
      87FDC4B5BBFF3757F8FF384DF8FF3556F9FFD9AF9EFFF0BC8BFFFCDBA5FFEEC2
      91FFF7C592FFFFDAAAFFFEE6C3FFFEEBCFFF4BCAFCFF11DDFFFF01D5FFFF34A8
      FAFEA2BBCCDDFDFDFDE0FFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFF6FDFE8100DCECB006EBF6FF0BE7E8FF1C0000FF3B0C
      13FF239CA5FF0CFBFFFF1CC8D2FD5F44469FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA17C4DFEB48E5FFFBD9869FFBA9468FFAC86
      5BFF98744AF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA17C4DFEB48E5FFFBD9869FFBA9468FFAC86
      5BFFD1C6BDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38B9D694F6EEBC8
      9FFF657FF0FF003EFFFF014AFFFF1768FDFFF0B984FFF3BB86FFF6D7A4FEE6A8
      78FFF9CB9AFFF6CA9FFFFAE9CBFFC1D9AAFFF6F9F0FFEEF9FAFFB2DDF3FF8BBA
      E0F3CDB99282FFFFFFFEFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0EC5D01E3F0F30BE6EBFF0C5B5CFF1853
      55FF20CCD1FF01F8FEFF468D91E8721A1948FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A171FFCEA977FFD0AB7AFFD2AD80FFCCA8
      7AFFBA9469FF87684090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A171FFCEA977FFD0AB7AFFD2AD80FFCCA8
      7AFFBA9469FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E465A9653C95C9B9
      BAFF3B6FF8FF003EFFFF0154FFFF3670FAFFF5B073FFF7BF86FEEAC998EEE8AA
      79FBF6C89BFFF6CDA4FFF3EACDFF85C778FFB6F2BDFFF6FCF5FFF5F2E8FFDFD1
      BAD9D3CCC37BFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00E6F01900E3EBBD04ECF3FF08E4E6FF0EDE
      DFFF12FAFDFF21D4D8FF645E60A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB39365FFE1C396FFE0C090FFDCBA88FFD6B281FFD4B0
      81FFCDA87AFF98754BD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB39365FFE1C396FFE0C090FFDCBA88FFD6B281FFD4B0
      81FFCDA87AFF98754BD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDBDA6CC67F53C59495
      DAFF3959FAFF3750FBFF416DF6FF8894D3FFECA970E8D4AE8399DDDCDB6CD2A7
      7C9BF6CDA2FFF2C5A0FFBDDAA9FF00BE1BFF2DF65CFF30E853FF37C440FFC6B3
      988DF7F7F79EFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E7EC5F01E8ECF311FBFDFF1FFF
      FFFF07F2F5FF429B9DF06629273DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB8F61DCF0DBB7FFF9EDD2FFF7E9CAFFF3DFB8FFE6C48FFFDDB7
      81FFD1A976FFAD8555FF927044B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDBD1C6ECF0DBB7FFF9EDD2FFF7E9CAFFF3DFB8FFE6C48FFFDDB7
      81FFD1A976FFB4926DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFEF7FCF9C74ACD9BF
      ABFCBCA8C4FEB29EC5FDC9ACACFAE6B690F6CBAA898CEAE7E386FDFDFDDED4CB
      C272F0C59BFDF7D8B5FF7CC970FF10CD31FF2DF55BFF1FD940FF22BB2BFFC2BB
      B362FEFEFEE8FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FEFE8101E9ECC124F7F8FF25FE
      FFFF1CDDDEFA525B5BA5FBFAFAA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAF9466ECF9EAC9FFFBF2DBFFFAF0D8FFF8E9CBFFEBCD9BFFE2BF
      88FFD7B079FFB28A59FF957446B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAF9466ECF9EAC9FFFBF2DBFFFAF0D8FFF8E9CBFFEBCD9BFFE2BF
      88FFD7B079FFE4DAD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDED8C3B07AE9BE
      94D2F0C496E5E7BA90DADAB18CC6DBB28EB4F6F5F4B0FEFEFEF0FFFFFFFFF8F8
      F8B0F1D2AEEAF7D3B4FE3BBE3BFF1FDA41FF29EC53FF12C92FFF68BF5BFED9D8
      D75BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F3F44B05F8F8F105FE
      FEF62ABCBCA06800002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB29767D1F4E1BEFFFBF3DEFFFCF3DEFFFAEED4FFEED2A4FFE5C4
      8EFFDAB57CFFB58D5BFB987649A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB29767D1F4E1BEFFFBF3DEFFFCF3DEFFFAEED4FFEED2A4FFE5C4
      8EFFDAB57CFFD2BEABFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE
      FEF1FDFDFDF1FDFDFDF0FEFEFEF2FEFEFEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECEAE789D6C7B28AC5EBC1FA65F37EFF20D039FF42BB3AFFB5C086DFFEFE
      FEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06FDFD5B05FF
      FF66F6FAFA81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFF000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBBA06FF0FDF4DCFFFCF1D9FFFAEED1FFEED3A4FFE6C3
      8DFFDDB57DFEA18150C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA88A563EBBA06FF0FDF4DCFFFCF1D9FFFAEED1FFEED3A4FFE6C3
      8DFFDDB57DFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEEDF0EFEE93E7E6DBD1DCF6E1F563CD62FE80BC67FACAC299B0FFFF
      FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECD6ACFFFAEACAFFF6E4C1FFEBCD9BFFE0BB
      84FFC8A26BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAF915D79ECD6ACFFFAEACAFFF6E4C1FFEBCD9BFFE0BB
      84FFC8A26BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCDFEBEAEA80DDD1BF9FE4D3B6A7F2EEEAAEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB59863DAD3B27CFBE3C28EFFD8B57DFEBF9D
      66F3A68854BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB59863DAD3B27CFBE3C28EFFD8B57DFEBF9D
      66F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFEF3FBFBFAD8FBFAF8CCFEFEFEF7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000060000000600000000100010000000000800400000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF81FE000000000000000000FF00FE00
      0000000000000000E00006000000000000000000800000000000000000000000
      8000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      800000000000000000000000800002000000000000000000E000060000000000
      00000000F0001E00000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFFFF000000000000000000FFFFFF00
      0000000000000000FFFFFF000000000000000000E00007000000000000000000
      E00007000000000000000000E00007000000000000000000E000070000000000
      00000000E00007000000000000000000E00007000000000000000000E0000700
      0000000000000000E00007000000000000000000E00007000000000000000000
      E00007000000000000000000E00007000000000000000000E000070000000000
      00000000E00007000000000000000000E00007000000000000000000E0000700
      0000000000000000E00007000000000000000000E00007000000000000000000
      E00007000000000000000000FFFFFF000000000000000000FFFFFF0000000000
      00000000FFFFFF00000000000000000000000000000000000000000000000000
      000000000000}
  end
end
