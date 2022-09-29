object Form2: TForm2
  Left = 64
  Top = 66
  Width = 1291
  Height = 740
  Caption = 'DataBase Explorer (c) 2022 Jens Kallup 1.0.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClick = FormClick
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 677
    Width = 1275
    Height = 24
    Panels = <>
  end
  object ScrollBox2: TScrollBox
    Left = 0
    Top = 0
    Width = 1275
    Height = 677
    Align = alClient
    TabOrder = 1
    object ScrollView: TScrollBox
      Left = 0
      Top = 0
      Width = 1271
      Height = 673
      Align = alClient
      TabOrder = 0
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1267
        Height = 669
        Align = alClient
        Caption = 'Panel2'
        TabOrder = 0
        object JvSplitter1: TJvSplitter
          Left = 1
          Top = 20
          Width = 1265
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object JvPanelABC: TJvPanel
          Left = 1
          Top = 1
          Width = 1265
          Height = 19
          Align = alTop
          TabOrder = 4
        end
        object TasksPageControl: TPageControl
          Left = 1
          Top = 97
          Width = 1265
          Height = 571
          ActivePage = TabSheet34
          Align = alClient
          TabOrder = 0
          OnChange = TasksPageControlChange
          object TabSheet28: TTabSheet
            Caption = 'Monitor'
            ImageIndex = 4
            object ScrollBox23: TScrollBox
              Left = 0
              Top = 0
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
              object Splitter3: TSplitter
                Left = 201
                Top = 0
                Width = 4
                Height = 539
              end
              object Panel22: TPanel
                Left = 0
                Top = 0
                Width = 201
                Height = 539
                Align = alLeft
                Caption = 'Panel3'
                TabOrder = 0
                object PageControl13: TPageControl
                  Left = 1
                  Top = 1
                  Width = 199
                  Height = 537
                  ActivePage = TabSheet31
                  Align = alClient
                  TabOrder = 0
                  object TabSheet29: TTabSheet
                    Caption = 'DataBases'
                    object Splitter9: TSplitter
                      Left = 0
                      Top = 169
                      Width = 191
                      Height = 3
                      Cursor = crVSplit
                      Align = alTop
                    end
                    object TreeView2: TTreeView
                      Left = 0
                      Top = 0
                      Width = 191
                      Height = 169
                      Align = alTop
                      Indent = 19
                      TabOrder = 0
                      Items.Data = {
                        01000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
                        09446174614261736573}
                    end
                    object PageControl14: TPageControl
                      Left = 0
                      Top = 172
                      Width = 191
                      Height = 337
                      ActivePage = TabSheet30
                      Align = alClient
                      TabOrder = 1
                      object TabSheet30: TTabSheet
                        Caption = 'Definition'
                        object DBGrid1: TDBGrid
                          Left = 0
                          Top = 0
                          Width = 183
                          Height = 239
                          Align = alTop
                          TabOrder = 0
                          TitleFont.Charset = DEFAULT_CHARSET
                          TitleFont.Color = clWindowText
                          TitleFont.Height = -11
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
                      Width = 191
                      Height = 509
                      Align = alClient
                      TabOrder = 0
                      object Splitter10: TSplitter
                        Left = 0
                        Top = 181
                        Width = 170
                        Height = 3
                        Cursor = crVSplit
                        Align = alTop
                      end
                      object Splitter15: TSplitter
                        Left = 0
                        Top = 380
                        Width = 170
                        Height = 3
                        Cursor = crVSplit
                        Align = alTop
                      end
                      object StringGrid6: TStringGrid
                        Left = 0
                        Top = 408
                        Width = 170
                        Height = 168
                        Align = alTop
                        DefaultRowHeight = 16
                        TabOrder = 0
                        ColWidths = (
                          64
                          64
                          64
                          64
                          64)
                      end
                      object Panel23: TPanel
                        Left = 0
                        Top = 383
                        Width = 170
                        Height = 25
                        Align = alTop
                        Alignment = taLeftJustify
                        Caption = ' High Average Activity :'
                        Color = 8454143
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clWindowText
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 1
                      end
                      object StringGrid7: TStringGrid
                        Left = 0
                        Top = 28
                        Width = 170
                        Height = 153
                        Align = alTop
                        DefaultRowHeight = 16
                        TabOrder = 2
                      end
                      object Panel26: TPanel
                        Left = 0
                        Top = 184
                        Width = 170
                        Height = 28
                        Align = alTop
                        Alignment = taLeftJustify
                        Caption = ' Critical :'
                        Color = 12615935
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 3
                      end
                      object Panel35: TPanel
                        Left = 0
                        Top = 0
                        Width = 170
                        Height = 28
                        Align = alTop
                        Alignment = taLeftJustify
                        Caption = ' Low Average Activitie'#39's :'
                        Color = 8454016
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = [fsBold]
                        ParentFont = False
                        TabOrder = 4
                      end
                      object StringGrid8: TStringGrid
                        Left = 0
                        Top = 212
                        Width = 170
                        Height = 168
                        Align = alTop
                        DefaultRowHeight = 16
                        TabOrder = 5
                      end
                    end
                  end
                end
              end
              object ScrollBox1: TScrollBox
                Left = 205
                Top = 0
                Width = 1048
                Height = 539
                Align = alClient
                TabOrder = 1
                object Splitter7: TSplitter
                  Left = 0
                  Top = 239
                  Width = 1044
                  Height = 9
                  Cursor = crVSplit
                  Align = alBottom
                end
                object Splitter8: TSplitter
                  Left = 669
                  Top = 25
                  Height = 214
                  Align = alRight
                end
                object Panel7: TPanel
                  Left = 0
                  Top = 0
                  Width = 1044
                  Height = 25
                  Align = alTop
                  BevelInner = bvSpace
                  BevelOuter = bvNone
                  BorderStyle = bsSingle
                  TabOrder = 0
                  object Label1: TLabel
                    Left = 8
                    Top = 2
                    Width = 127
                    Height = 13
                    Caption = 'Database Structure Viewer'
                  end
                end
                object Panel8: TPanel
                  Left = 0
                  Top = 248
                  Width = 1044
                  Height = 287
                  Align = alBottom
                  Anchors = [akLeft, akTop, akRight, akBottom]
                  Caption = 'Panel8'
                  TabOrder = 1
                  object PageControl5: TPageControl
                    Left = 1
                    Top = 1
                    Width = 1042
                    Height = 285
                    ActivePage = TabSheet3
                    Align = alClient
                    TabOrder = 0
                    object TabSheet3: TTabSheet
                      Caption = 'Connection'#39's'
                      object ScrollBox7: TScrollBox
                        Left = 0
                        Top = 0
                        Width = 1034
                        Height = 257
                        Align = alClient
                        TabOrder = 0
                        object ConnectionListGrid: TStringGrid
                          Left = 0
                          Top = 73
                          Width = 1030
                          Height = 144
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
                          Width = 1030
                          Height = 41
                          Align = alTop
                          TabOrder = 1
                          object Button_SendWarning: TJvArrowButton
                            Left = 8
                            Top = 8
                            Width = 89
                            Height = 25
                            ArrowWidth = 21
                            Caption = 'Send Warn'
                            FillFont.Charset = DEFAULT_CHARSET
                            FillFont.Color = clBlack
                            FillFont.Height = -11
                            FillFont.Name = 'MS Sans Serif'
                            FillFont.Style = []
                          end
                          object JvArrowButton1: TJvArrowButton
                            Left = 112
                            Top = 8
                            Width = 89
                            Height = 25
                            ArrowWidth = 21
                            Caption = 'Close'
                            FillFont.Charset = DEFAULT_CHARSET
                            FillFont.Color = clWindowText
                            FillFont.Height = -11
                            FillFont.Name = 'MS Sans Serif'
                            FillFont.Style = []
                          end
                          object JvArrowButton2: TJvArrowButton
                            Left = 208
                            Top = 8
                            Width = 89
                            Height = 25
                            ArrowWidth = 21
                            Caption = 'Kick'
                            FillFont.Charset = DEFAULT_CHARSET
                            FillFont.Color = clWindowText
                            FillFont.Height = -11
                            FillFont.Name = 'MS Sans Serif'
                            FillFont.Style = []
                          end
                          object JvArrowButton4: TJvArrowButton
                            Left = 304
                            Top = 8
                            Width = 89
                            Height = 25
                            ArrowWidth = 21
                            Caption = 'Bann'
                            FillFont.Charset = SYMBOL_CHARSET
                            FillFont.Color = clRed
                            FillFont.Height = -11
                            FillFont.Name = 'MT Extra'
                            FillFont.Style = []
                          end
                          object JvArrowButton3: TJvArrowButton
                            Left = 408
                            Top = 8
                            Width = 89
                            Height = 25
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
                          Top = 41
                          Width = 1030
                          Height = 32
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
                        Width = 1034
                        Height = 137
                        Align = alClient
                        Caption = 'Panel11'
                        TabOrder = 0
                        object UserLogGrid: TStringGrid
                          Left = 1
                          Top = 1
                          Width = 1032
                          Height = 135
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
                        Width = 1034
                        Height = 137
                        Align = alClient
                        Caption = 'Panel10'
                        TabOrder = 0
                        object StringGrid2: TStringGrid
                          Left = 1
                          Top = 1
                          Width = 1032
                          Height = 135
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
                  Left = 672
                  Top = 25
                  Width = 372
                  Height = 214
                  ActivePage = TabSheet10
                  Align = alRight
                  TabOrder = 2
                  object TabSheet2: TTabSheet
                    Caption = 'Display'
                    object Panel9: TPanel
                      Left = 0
                      Top = 0
                      Width = 364
                      Height = 186
                      Align = alClient
                      BevelInner = bvLowered
                      BevelOuter = bvLowered
                      TabOrder = 0
                      object CheckBox1: TCheckBox
                        Left = 16
                        Top = 16
                        Width = 97
                        Height = 17
                        Caption = 'Connection'#39's'
                        TabOrder = 0
                      end
                      object CheckBox2: TCheckBox
                        Left = 16
                        Top = 40
                        Width = 97
                        Height = 17
                        Caption = 'User'#39's'
                        TabOrder = 1
                      end
                      object CheckBox3: TCheckBox
                        Left = 16
                        Top = 64
                        Width = 97
                        Height = 17
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
                      Width = 364
                      Height = 186
                      Align = alClient
                      TabOrder = 0
                      object Label2: TLabel
                        Left = 144
                        Top = 82
                        Width = 23
                        Height = 13
                        Caption = 'Size:'
                      end
                      object Label3: TLabel
                        Left = 144
                        Top = 116
                        Width = 45
                        Height = 13
                        Caption = 'Record'#39's:'
                      end
                      object Button2: TButton
                        Left = 8
                        Top = 15
                        Width = 75
                        Height = 22
                        Caption = 'Create'
                        TabOrder = 0
                      end
                      object DBEdit5: TDBEdit
                        Left = 96
                        Top = 16
                        Width = 121
                        Height = 21
                        TabOrder = 1
                      end
                      object Button5: TButton
                        Left = 8
                        Top = 47
                        Width = 75
                        Height = 22
                        Caption = 'Delete'
                        TabOrder = 2
                      end
                      object TreeView3: TTreeView
                        Left = 8
                        Top = 80
                        Width = 129
                        Height = 97
                        Indent = 19
                        TabOrder = 3
                      end
                      object Edit1: TEdit
                        Left = 195
                        Top = 80
                        Width = 105
                        Height = 21
                        TabOrder = 4
                        Text = 'Edit1'
                      end
                      object Edit2: TEdit
                        Left = 196
                        Top = 112
                        Width = 105
                        Height = 21
                        TabOrder = 5
                        Text = 'Edit1'
                      end
                      object Button22: TButton
                        Left = 224
                        Top = 14
                        Width = 75
                        Height = 22
                        Caption = 'Button22'
                        TabOrder = 6
                      end
                    end
                  end
                end
                object ScrollBox22: TScrollBox
                  Left = 0
                  Top = 25
                  Width = 669
                  Height = 214
                  Align = alClient
                  TabOrder = 3
                  DesignSize = (
                    665
                    210)
                  object SystemViewGrid: TStringGrid
                    Left = 0
                    Top = 0
                    Width = 265
                    Height = 153
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
                    Left = 8
                    Top = 160
                    Width = 89
                    Height = 35
                    Alignment = taCenter
                    AutoSize = False
                    BevelKind = bkSoft
                    BevelOuter = bvRaised
                    BorderStyle = sbsSingle
                    Caption = 'Requiere Action'
                    Color = 8454016
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentColor = False
                    ParentFont = False
                    TabOrder = 1
                  end
                  object PageControl9: TPageControl
                    Left = 280
                    Top = 8
                    Width = 376
                    Height = 185
                    ActivePage = TabSheet22
                    Anchors = [akLeft, akTop, akRight]
                    TabOrder = 2
                    object TabSheet22: TTabSheet
                      Caption = 'Wire Shark'
                      object ScrollBox28: TScrollBox
                        Left = 0
                        Top = 0
                        Width = 368
                        Height = 157
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
                    Left = 176
                    Top = 160
                    Width = 89
                    Height = 35
                    Alignment = taCenter
                    AutoSize = False
                    BevelKind = bkSoft
                    BevelOuter = bvRaised
                    BorderStyle = sbsSingle
                    Caption = '   System'#39's     Down'
                    Color = 8421631
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
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
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
              object PageControl11: TPageControl
                Left = 0
                Top = 0
                Width = 1253
                Height = 539
                ActivePage = TabSheet23
                Align = alClient
                TabOrder = 0
                object TabSheet23: TTabSheet
                  Caption = 'HTTP Server'
                  object ScrollBox21: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 1245
                    Height = 511
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
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
              object PageControl1: TPageControl
                Left = 0
                Top = 0
                Width = 1253
                Height = 539
                ActivePage = TabSheet11
                Align = alClient
                TabOrder = 0
                object TabSheet11: TTabSheet
                  Caption = 'DNS Server'
                  object ScrollBox26: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 1245
                    Height = 511
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
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
              object PageControl2: TPageControl
                Left = 0
                Top = 0
                Width = 1253
                Height = 539
                ActivePage = TabSheet21
                Align = alClient
                TabOrder = 0
                object TabSheet21: TTabSheet
                  Caption = 'Proxy Server'
                  object ScrollBox27: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 1245
                    Height = 511
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
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
              object PageControl7: TPageControl
                Left = 0
                Top = 0
                Width = 801
                Height = 539
                ActivePage = TabSheet8
                Align = alLeft
                TabOrder = 0
                object TabSheet7: TTabSheet
                  Caption = 'Statistic'#39's'
                end
                object TabSheet8: TTabSheet
                  Caption = 'Permission'#39's'
                  ImageIndex = 1
                  object ScrollBox11: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 793
                    Height = 511
                    Align = alClient
                    TabOrder = 0
                    object Label5: TLabel
                      Left = 8
                      Top = 8
                      Width = 44
                      Height = 13
                      Caption = 'User-List:'
                    end
                    object Label6: TLabel
                      Left = 8
                      Top = 48
                      Width = 67
                      Height = 13
                      Caption = 'Access Time :'
                    end
                    object Label7: TLabel
                      Left = 168
                      Top = 8
                      Width = 41
                      Height = 13
                      Caption = 'Location'
                    end
                    object Label8: TLabel
                      Left = 328
                      Top = 8
                      Width = 29
                      Height = 13
                      Caption = 'Week'
                    end
                    object Label9: TLabel
                      Left = 8
                      Top = 344
                      Width = 29
                      Height = 13
                      Caption = 'User'#39's'
                    end
                    object Label10: TLabel
                      Left = 176
                      Top = 344
                      Width = 38
                      Height = 13
                      Caption = 'Right'#39's :'
                    end
                    object TimeTableGrid: TStringGrid
                      Left = 8
                      Top = 64
                      Width = 312
                      Height = 273
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
                      Left = 8
                      Top = 24
                      Width = 145
                      Height = 21
                      ItemHeight = 13
                      TabOrder = 1
                      Text = 'ComboBox1'
                    end
                    object TimeTableGrid_SelectAllButton: TButton
                      Left = 328
                      Top = 64
                      Width = 89
                      Height = 25
                      Caption = 'Select All'
                      TabOrder = 2
                      OnClick = TimeTableGrid_SelectAllButtonClick
                    end
                    object TimeTableGrid_deSelectButton: TButton
                      Left = 328
                      Top = 96
                      Width = 89
                      Height = 25
                      Caption = 'De-Select All'
                      TabOrder = 3
                      OnClick = TimeTableGrid_deSelectButtonClick
                    end
                    object TimeTableGrid_SelectMark: TButton
                      Left = 328
                      Top = 144
                      Width = 89
                      Height = 25
                      Caption = 'Select Mark'
                      TabOrder = 4
                      OnClick = TimeTableGrid_SelectMarkClick
                    end
                    object TimeTableGrid_deSelectMark: TButton
                      Left = 328
                      Top = 176
                      Width = 89
                      Height = 25
                      Caption = 'De-Sel. Mark'
                      TabOrder = 5
                      OnClick = TimeTableGrid_deSelectMarkClick
                    end
                    object TimeTableGrid_MultipleCheck: TCheckBox
                      Left = 328
                      Top = 216
                      Width = 97
                      Height = 17
                      Caption = 'Multiple Select'
                      TabOrder = 6
                    end
                    object TimeTableGrid_Location_List: TComboBox
                      Left = 168
                      Top = 24
                      Width = 145
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
                      Left = 328
                      Top = 24
                      Width = 91
                      Height = 21
                      Style = csDropDownList
                      ItemHeight = 13
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
                      Left = 8
                      Top = 360
                      Width = 145
                      Height = 169
                      ItemHeight = 13
                      TabOrder = 9
                    end
                    object ListBox5: TListBox
                      Left = 176
                      Top = 360
                      Width = 145
                      Height = 169
                      ItemHeight = 13
                      TabOrder = 10
                    end
                  end
                end
                object TabSheet9: TTabSheet
                  Caption = 'Help Desk'
                  ImageIndex = 2
                  object ScrollBox8: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 793
                    Height = 511
                    Align = alClient
                    TabOrder = 0
                    DesignSize = (
                      789
                      507)
                    object Panel15: TPanel
                      Left = 8
                      Top = 8
                      Width = 721
                      Height = 105
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      DesignSize = (
                        721
                        105)
                      object Button6: TButton
                        Left = 8
                        Top = 7
                        Width = 75
                        Height = 22
                        Caption = 'Connect'
                        TabOrder = 0
                      end
                      object Edit3: TEdit
                        Left = 96
                        Top = 8
                        Width = 121
                        Height = 21
                        TabOrder = 1
                        Text = 'Edit3'
                      end
                      object Button7: TButton
                        Left = 8
                        Top = 39
                        Width = 75
                        Height = 22
                        Caption = 'Port'
                        TabOrder = 2
                      end
                      object Edit4: TEdit
                        Left = 96
                        Top = 40
                        Width = 121
                        Height = 21
                        TabOrder = 3
                        Text = 'Edit3'
                      end
                      object Button8: TButton
                        Left = 8
                        Top = 71
                        Width = 75
                        Height = 22
                        Caption = 'Proxy'
                        TabOrder = 4
                      end
                      object Edit5: TEdit
                        Left = 96
                        Top = 72
                        Width = 121
                        Height = 21
                        TabOrder = 5
                        Text = 'Edit3'
                      end
                      object ListBox1: TListBox
                        Left = 240
                        Top = 8
                        Width = 465
                        Height = 81
                        Anchors = [akLeft, akTop, akRight]
                        ItemHeight = 13
                        TabOrder = 6
                      end
                    end
                  end
                end
                object TabSheet12: TTabSheet
                  Caption = 'Help Chat'
                  ImageIndex = 3
                  object ScrollBox9: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 793
                    Height = 511
                    Align = alClient
                    TabOrder = 0
                    DesignSize = (
                      789
                      507)
                    object Panel19: TPanel
                      Left = 8
                      Top = 8
                      Width = 721
                      Height = 145
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      DesignSize = (
                        721
                        145)
                      object Button14: TButton
                        Left = 8
                        Top = 7
                        Width = 75
                        Height = 22
                        Caption = 'Connect'
                        TabOrder = 0
                      end
                      object Edit6: TEdit
                        Left = 96
                        Top = 8
                        Width = 121
                        Height = 21
                        TabOrder = 1
                        Text = 'Edit3'
                      end
                      object Button15: TButton
                        Left = 8
                        Top = 39
                        Width = 75
                        Height = 22
                        Caption = 'Port'
                        TabOrder = 2
                      end
                      object Edit7: TEdit
                        Left = 96
                        Top = 40
                        Width = 121
                        Height = 21
                        TabOrder = 3
                        Text = 'Edit3'
                      end
                      object Button16: TButton
                        Left = 8
                        Top = 71
                        Width = 75
                        Height = 22
                        Caption = 'Proxy'
                        TabOrder = 4
                      end
                      object Edit8: TEdit
                        Left = 96
                        Top = 72
                        Width = 121
                        Height = 21
                        TabOrder = 5
                        Text = 'Edit3'
                      end
                      object ListBox2: TListBox
                        Left = 240
                        Top = 8
                        Width = 465
                        Height = 121
                        Anchors = [akLeft, akTop, akRight]
                        ItemHeight = 13
                        TabOrder = 6
                      end
                      object Button17: TButton
                        Left = 8
                        Top = 111
                        Width = 75
                        Height = 22
                        Caption = 'User Name'
                        TabOrder = 7
                      end
                      object Edit9: TEdit
                        Left = 96
                        Top = 112
                        Width = 121
                        Height = 21
                        TabOrder = 8
                        Text = 'Edit3'
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
                    Width = 793
                    Height = 511
                    Align = alClient
                    TabOrder = 0
                    DesignSize = (
                      789
                      507)
                    object Panel20: TPanel
                      Left = 8
                      Top = 8
                      Width = 725
                      Height = 145
                      Anchors = [akLeft, akTop, akRight]
                      TabOrder = 0
                      DesignSize = (
                        725
                        145)
                      object Button18: TButton
                        Left = 8
                        Top = 7
                        Width = 75
                        Height = 22
                        Caption = 'Connect'
                        TabOrder = 0
                      end
                      object Edit10: TEdit
                        Left = 96
                        Top = 8
                        Width = 121
                        Height = 21
                        TabOrder = 1
                        Text = 'Edit3'
                      end
                      object Button19: TButton
                        Left = 8
                        Top = 39
                        Width = 75
                        Height = 22
                        Caption = 'Port'
                        TabOrder = 2
                      end
                      object Edit11: TEdit
                        Left = 96
                        Top = 40
                        Width = 121
                        Height = 21
                        TabOrder = 3
                        Text = 'Edit3'
                      end
                      object Button20: TButton
                        Left = 8
                        Top = 71
                        Width = 75
                        Height = 22
                        Caption = 'Proxy'
                        TabOrder = 4
                      end
                      object Edit12: TEdit
                        Left = 96
                        Top = 72
                        Width = 121
                        Height = 21
                        TabOrder = 5
                        Text = 'Edit3'
                      end
                      object ListBox3: TListBox
                        Left = 240
                        Top = 8
                        Width = 469
                        Height = 121
                        Anchors = [akLeft, akTop, akRight]
                        ItemHeight = 13
                        TabOrder = 6
                      end
                      object Button21: TButton
                        Left = 8
                        Top = 111
                        Width = 75
                        Height = 22
                        Caption = 'User Name'
                        TabOrder = 7
                      end
                      object Edit13: TEdit
                        Left = 96
                        Top = 112
                        Width = 121
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
                    Width = 793
                    Height = 511
                    Align = alClient
                    TabOrder = 0
                    object Label11: TLabel
                      Left = 8
                      Top = 10
                      Width = 83
                      Height = 13
                      Caption = 'Message Type'#39's :'
                    end
                    object PageControl8: TPageControl
                      Left = 8
                      Top = 33
                      Width = 449
                      Height = 384
                      ActivePage = TabSheet14
                      TabOrder = 0
                      object TabSheet14: TTabSheet
                        Caption = 'System Wide'
                        object ScrollBox12: TScrollBox
                          Left = 0
                          Top = 0
                          Width = 441
                          Height = 356
                          Align = alClient
                          TabOrder = 0
                          object Memo1: TMemo
                            Left = 8
                            Top = 8
                            Width = 289
                            Height = 145
                            Lines.Strings = (
                              'Memo1')
                            TabOrder = 0
                          end
                          object ListBox16: TListBox
                            Left = 176
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 1
                          end
                          object ListBox17: TListBox
                            Left = 8
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
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
                          Width = 441
                          Height = 356
                          Align = alClient
                          TabOrder = 0
                          object Memo2: TMemo
                            Left = 8
                            Top = 8
                            Width = 289
                            Height = 145
                            Lines.Strings = (
                              'Memo1')
                            TabOrder = 0
                          end
                          object ListBox14: TListBox
                            Left = 176
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 1
                          end
                          object ListBox15: TListBox
                            Left = 8
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
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
                          Width = 441
                          Height = 356
                          Align = alClient
                          TabOrder = 0
                          object Memo3: TMemo
                            Left = 8
                            Top = 8
                            Width = 289
                            Height = 145
                            Lines.Strings = (
                              'Memo1')
                            TabOrder = 0
                          end
                          object ListBox12: TListBox
                            Left = 176
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 1
                          end
                          object ListBox13: TListBox
                            Left = 8
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
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
                          Width = 441
                          Height = 356
                          Align = alClient
                          TabOrder = 0
                          object Memo4: TMemo
                            Left = 8
                            Top = 8
                            Width = 289
                            Height = 145
                            Lines.Strings = (
                              'Memo1')
                            TabOrder = 0
                          end
                          object ListBox10: TListBox
                            Left = 176
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 1
                          end
                          object ListBox11: TListBox
                            Left = 8
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
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
                          Width = 441
                          Height = 356
                          Align = alClient
                          TabOrder = 0
                          object Memo5: TMemo
                            Left = 8
                            Top = 8
                            Width = 289
                            Height = 145
                            Lines.Strings = (
                              'Memo1')
                            TabOrder = 0
                          end
                          object ListBox8: TListBox
                            Left = 176
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 1
                          end
                          object ListBox9: TListBox
                            Left = 8
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
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
                          Width = 441
                          Height = 356
                          Align = alClient
                          TabOrder = 0
                          object Memo6: TMemo
                            Left = 8
                            Top = 8
                            Width = 289
                            Height = 145
                            Lines.Strings = (
                              'Memo1')
                            TabOrder = 0
                          end
                          object ListBox6: TListBox
                            Left = 8
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 1
                          end
                          object ListBox7: TListBox
                            Left = 176
                            Top = 176
                            Width = 121
                            Height = 153
                            ItemHeight = 13
                            TabOrder = 2
                          end
                        end
                      end
                    end
                    object PageControl3: TPageControl
                      Left = 528
                      Top = 0
                      Width = 244
                      Height = 193
                      ActivePage = TabSheet1
                      TabOrder = 1
                      object TabSheet1: TTabSheet
                        Caption = 'User/Login DataBase'
                        object Panel5: TPanel
                          Left = 0
                          Top = 0
                          Width = 236
                          Height = 41
                          Align = alTop
                          TabOrder = 0
                          object Button3: TButton
                            Left = 0
                            Top = 8
                            Width = 75
                            Height = 25
                            Caption = 'Add User'
                            TabOrder = 0
                          end
                          object Button4: TButton
                            Left = 88
                            Top = 8
                            Width = 75
                            Height = 25
                            Caption = 'Delete User'
                            TabOrder = 1
                          end
                        end
                        object DBGrid3: TDBGrid
                          Left = 0
                          Top = 41
                          Width = 236
                          Height = 124
                          Align = alClient
                          TabOrder = 1
                          TitleFont.Charset = DEFAULT_CHARSET
                          TitleFont.Color = clWindowText
                          TitleFont.Height = -11
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
                    object DBNavigator1: TDBNavigator
                      Left = 0
                      Top = 0
                      Width = 789
                      Height = 24
                      Align = alTop
                      TabOrder = 2
                    end
                    object ScrollBox3: TScrollBox
                      Left = 280
                      Top = 120
                      Width = 428
                      Height = 241
                      TabOrder = 3
                      object UserNameLabel: TLabel
                        Left = 8
                        Top = 8
                        Width = 56
                        Height = 13
                        Caption = 'Nick Name:'
                      end
                      object UserPasswordLabel: TLabel
                        Left = 8
                        Top = 32
                        Width = 49
                        Height = 13
                        Caption = 'Password:'
                      end
                      object UserLocationLabel: TLabel
                        Left = 8
                        Top = 56
                        Width = 44
                        Height = 13
                        Caption = 'Location:'
                      end
                      object LastActiveLabel: TLabel
                        Left = 8
                        Top = 82
                        Width = 56
                        Height = 13
                        Caption = 'Last Active:'
                      end
                      object Label4: TLabel
                        Left = 8
                        Top = 106
                        Width = 25
                        Height = 13
                        Caption = 'Path:'
                      end
                      object Label20: TLabel
                        Left = 8
                        Top = 162
                        Width = 35
                        Height = 13
                        Caption = 'E-Mail :'
                      end
                      object Label21: TLabel
                        Left = 8
                        Top = 186
                        Width = 37
                        Height = 13
                        Caption = 'Phone :'
                      end
                      object Label22: TLabel
                        Left = 8
                        Top = 210
                        Width = 34
                        Height = 13
                        Caption = 'Name :'
                      end
                      object Image1: TImage
                        Left = 166
                        Top = 129
                        Width = 25
                        Height = 24
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
                        Left = 72
                        Top = 8
                        Width = 121
                        Height = 21
                        TabOrder = 0
                      end
                      object DBEdit2: TDBEdit
                        Left = 72
                        Top = 32
                        Width = 121
                        Height = 21
                        TabOrder = 1
                      end
                      object DBEdit3: TDBEdit
                        Left = 72
                        Top = 56
                        Width = 121
                        Height = 21
                        TabOrder = 2
                      end
                      object DBEdit4: TDBEdit
                        Left = 72
                        Top = 80
                        Width = 121
                        Height = 21
                        TabOrder = 3
                      end
                      object DBEdit6: TDBEdit
                        Left = 72
                        Top = 104
                        Width = 121
                        Height = 21
                        TabOrder = 4
                      end
                      object DBCheckBox1: TDBCheckBox
                        Left = 72
                        Top = 129
                        Width = 97
                        Height = 17
                        Caption = 'Locked'
                        Font.Charset = ANSI_CHARSET
                        Font.Color = clBlack
                        Font.Height = -11
                        Font.Name = 'MS Sans Serif'
                        Font.Style = []
                        ParentFont = False
                        TabOrder = 5
                        ValueChecked = 'True'
                        ValueUnchecked = 'False'
                      end
                      object Panel14: TPanel
                        Left = 160
                        Top = 152
                        Width = 67
                        Height = 145
                        TabOrder = 6
                      end
                      object DBEdit7: TDBEdit
                        Left = 72
                        Top = 160
                        Width = 121
                        Height = 21
                        TabOrder = 7
                      end
                      object DBEdit8: TDBEdit
                        Left = 72
                        Top = 184
                        Width = 121
                        Height = 21
                        TabOrder = 8
                      end
                      object DBEdit9: TDBEdit
                        Left = 72
                        Top = 208
                        Width = 121
                        Height = 21
                        TabOrder = 9
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
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
            end
          end
          object TabSheet34: TTabSheet
            Caption = 'Development'
            ImageIndex = 6
            object ScrollBox29: TScrollBox
              Left = 0
              Top = 0
              Width = 1257
              Height = 543
              Align = alClient
              TabOrder = 0
              object PageControl6: TPageControl
                Left = 0
                Top = 0
                Width = 1253
                Height = 539
                ActivePage = TabSheet6
                Align = alClient
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Consolas'
                Font.Style = [fsBold]
                MultiLine = True
                ParentFont = False
                TabOrder = 0
                TabPosition = tpLeft
                object TabSheet6: TTabSheet
                  Caption = 'Design'
                  object ScrollBox31: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 1224
                    Height = 531
                    Align = alClient
                    TabOrder = 0
                    object Splitter4: TSplitter
                      Left = 193
                      Top = 0
                      Height = 527
                    end
                    object Panel16: TPanel
                      Left = 0
                      Top = 0
                      Width = 193
                      Height = 527
                      Align = alLeft
                      TabOrder = 0
                      object Splitter5: TSplitter
                        Left = 1
                        Top = 361
                        Width = 191
                        Height = 3
                        Cursor = crVSplit
                        Align = alTop
                      end
                      object Panel17: TPanel
                        Left = 1
                        Top = 1
                        Width = 191
                        Height = 32
                        Align = alTop
                        Caption = 'Panel17'
                        TabOrder = 0
                      end
                      object PageControl10: TPageControl
                        Left = 1
                        Top = 33
                        Width = 191
                        Height = 328
                        ActivePage = TabSheet36
                        Align = alTop
                        TabOrder = 1
                        object TabSheet36: TTabSheet
                          Caption = 'Properties'
                          object JvInspector1: TJvInspector
                            Left = 0
                            Top = 0
                            Width = 183
                            Height = 299
                            Align = alClient
                            ItemHeight = 16
                            TabStop = True
                            TabOrder = 0
                          end
                        end
                        object TabSheet37: TTabSheet
                          Caption = 'Events'
                          ImageIndex = 1
                          object JvInspector2: TJvInspector
                            Left = 0
                            Top = 0
                            Width = 183
                            Height = 299
                            Align = alClient
                            ItemHeight = 16
                            TabStop = True
                            TabOrder = 0
                          end
                        end
                      end
                      object Panel24: TPanel
                        Left = 1
                        Top = 364
                        Width = 191
                        Height = 29
                        Align = alTop
                        Caption = 'Panel24'
                        TabOrder = 2
                      end
                    end
                    object Panel18: TPanel
                      Left = 196
                      Top = 0
                      Width = 1024
                      Height = 527
                      Align = alClient
                      Caption = 'Panel18'
                      TabOrder = 1
                      object Panel21: TPanel
                        Left = 1
                        Top = 1
                        Width = 1022
                        Height = 32
                        Align = alTop
                        Caption = 'Panel17'
                        TabOrder = 0
                      end
                      object JvDesignScrollBox1: TJvDesignScrollBox
                        Left = 1
                        Top = 33
                        Width = 1022
                        Height = 493
                        Align = alClient
                        TabOrder = 1
                      end
                      object JvDesignPanel1: TJvDesignPanel
                        Left = 8
                        Top = 40
                        Width = 793
                        Height = 481
                        Caption = 'JvDesignPanel1'
                        TabOrder = 2
                      end
                    end
                  end
                end
                object TabSheet35: TTabSheet
                  Caption = 'Editor'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clBlack
                  Font.Height = -11
                  Font.Name = 'Consolas'
                  Font.Pitch = fpFixed
                  Font.Style = []
                  ImageIndex = 1
                  ParentFont = False
                  object ScrollBox30: TScrollBox
                    Left = 0
                    Top = 0
                    Width = 1224
                    Height = 531
                    Align = alClient
                    TabOrder = 0
                    object Panel1: TPanel
                      Left = 0
                      Top = 0
                      Width = 169
                      Height = 527
                      Align = alLeft
                      TabOrder = 0
                      object Splitter1: TSplitter
                        Left = 1
                        Top = 345
                        Width = 167
                        Height = 3
                        Cursor = crVSplit
                        Align = alTop
                      end
                      object ListBox18: TListBox
                        Left = 1
                        Top = 25
                        Width = 167
                        Height = 320
                        Align = alTop
                        ItemHeight = 13
                        TabOrder = 0
                      end
                      object Panel3: TPanel
                        Left = 1
                        Top = 1
                        Width = 167
                        Height = 24
                        Align = alTop
                        Caption = 'Panel3'
                        TabOrder = 1
                      end
                      object Panel13: TPanel
                        Left = 1
                        Top = 348
                        Width = 167
                        Height = 21
                        Align = alTop
                        Caption = 'Panel13'
                        TabOrder = 2
                      end
                      object ListBox19: TListBox
                        Left = 1
                        Top = 369
                        Width = 167
                        Height = 157
                        Align = alClient
                        ItemHeight = 13
                        TabOrder = 3
                      end
                    end
                    object Panel4: TPanel
                      Left = 169
                      Top = 0
                      Width = 1051
                      Height = 527
                      Align = alClient
                      TabOrder = 1
                      object Panel6: TPanel
                        Left = 1
                        Top = 1
                        Width = 608
                        Height = 525
                        Align = alLeft
                        TabOrder = 0
                        object Splitter2: TSplitter
                          Left = 1
                          Top = 345
                          Width = 606
                          Height = 3
                          Cursor = crVSplit
                          Align = alTop
                        end
                        object SynEdit1: TSynEdit
                          Left = 1
                          Top = 1
                          Width = 606
                          Height = 344
                          Align = alTop
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
              end
            end
          end
        end
        object JvPanel1: TJvPanel
          Left = 1
          Top = 23
          Width = 1265
          Height = 25
          Align = alTop
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object JvArrowButton6: TJvArrowButton
            Left = 1
            Top = 1
            Width = 128
            Height = 23
            Align = alLeft
            ArrowWidth = 21
            Caption = 'Date View'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            FillFont.Charset = DEFAULT_CHARSET
            FillFont.Color = clBlack
            FillFont.Height = -11
            FillFont.Name = 'MS Sans Serif'
            FillFont.Style = [fsBold]
            ParentFont = False
            OnClick = JvArrowButton6Click
          end
          object JvArrowButton7: TJvArrowButton
            Left = 129
            Top = 1
            Width = 74
            Height = 23
            Align = alLeft
            ArrowWidth = 21
            Caption = 'File'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            FillFont.Charset = DEFAULT_CHARSET
            FillFont.Color = clWindowText
            FillFont.Height = -11
            FillFont.Name = 'MS Sans Serif'
            FillFont.Style = [fsBold]
            ParentFont = False
          end
        end
        object JvPanel2: TJvPanel
          Left = 1
          Top = 48
          Width = 1265
          Height = 49
          Align = alTop
          TabOrder = 2
        end
        object JvComboListBox1: TJvComboListBox
          Left = 992
          Top = 232
          Width = 129
          Height = 177
          DropdownMenu = LocationPopupMenu
          DrawStyle = dsProportional
          ScrollBars = ssVertical
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          Items.Strings = (
            'Januar'
            'Februar'
            'M'#228'rz'
            'April'
            'Mai'
            'Juni'
            'July'
            'August'
            'September'
            'Oktober'
            'November'
            'Dezember'
            '')
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnMeasureItem = JvComboListBox1MeasureItem
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Table1
    Left = 916
    Top = 316
  end
  object Table1: TTable
    Left = 916
    Top = 284
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
    Left = 208
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
          Caption = 'Dienstag'
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
          Caption = 'Mittwoch'
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
          Caption = 'Donnerstag'
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
          Caption = 'Freitag'
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
          Caption = 'Samstag'
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
          Caption = 'Sonntag'
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
          Caption = 'Dienstag'
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
          Caption = 'Mittwoch'
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
          Caption = 'Donnerstag'
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
          Caption = 'Freitag'
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
          Caption = 'Samstag'
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
          Caption = 'Sonntag'
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
          Caption = 'Dienstag'
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
          Caption = 'Mittwoch'
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
          Caption = 'Donnerstag'
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
          Caption = 'Freitag'
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
          Caption = 'Samstag'
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
          Caption = 'Sonntag'
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
          Caption = 'Dienstag'
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
          Caption = 'Mittwoch'
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
          Caption = 'Donnerstag'
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
          Caption = 'Freitag'
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
          Caption = 'Samstag'
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
          Caption = 'Sonntag'
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
  object ImageList1: TImageList
    BlendColor = clWhite
    BkColor = clWhite
    DrawingStyle = dsTransparent
    Height = 24
    Masked = False
    Width = 24
    Left = 321
    Top = 244
    Bitmap = {
      494C010108000900040018001800FFFFFF00FF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000060000000480000000100200000000000006C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF9866266FA57A43FDB9976BFFCCB188FFCEB38AFFD0B084FFBC9B68FFAB8C
      56FFA07E48FFFFFFFFFF1111DAFF1616C4F9FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF2525BFEF1616AEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB9976BFFCCB188FFCEB38AFFD0B084FFBC9B68FFAB8C
      56FFDFD8CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFF8FFFFFFF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFA7793CFDE2C190FEECD1A8FFEFD6AEFFECD0A4FFE6C696FFD4AD73FFC99E
      5FFFC19350FF39329BFF1111DEFF0000DFFF2020D3F3FFFFFFFFFFFFFFFF0202
      BBFF0000AFFF0303B3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE2C190FEECD1A8FFEFD6AEFFECD0A4FFE6C696FFD4AD73FFC99E
      5FFFC19350FFF6F3F0FF3A6A1DFF009D2EFF00DC52FF00DB51FF00DB51FF00DB
      51FF00DC51FF00DB51FF007919D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF8F8F8ABF7F7F7A1FDFDFDE9FEFEFEF3FFFFFFF8FFFFFFFFFFFF
      FFFAFEFEFEF1FDFDFDEBFEFEFEEEFFFFFFFAFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFAA7D42FAE5C79AFEF0D7B1FFF1DAB4FFEED3A9FFE7C899FFD5AE76FFCCA2
      65FFC29553FF896434FF38319AFF1616E4FF0101E6FF2A29D2F32828D4F50000
      C7FF0303C2FF2020D2F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFE5C79AFEF0D7B1FFF1DAB4FFEED3A9FFE7C899FFD5AE76FFCCA2
      65FFC29553FFFFFFFFFF2D711AFF00C645FF00ED57FF00EE58FF00EE58FF00EE
      58FF00ED56FF00F85EFF008E23E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFDFDFDE0C85D18B4BA5111AE9653268A7D5F56548A7C79499F9A97458E85
      824873594A5F8F6C4A8391644579BDBDBC52FFFFFFFBFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF0002B4
      E064139FC4DC1E92B4FF1F92B4FF1F91B4FF1F92B4FF1F93B6FF1E9DC0FF1B9C
      C1FF1F93B5FF1F91B4FF1F91B4FF1F92B4FF1F92B4FF2098BBFF42829FFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFAA7E4494BD99
      68FFB98E57FCE8C99EFFF3DBB6FFF4DCB9FFF0D5ADFFE8C99BFFD7B078FFCEA5
      68FFC49857FFA8793AFF7D5729FE3A339BFF0000E8FF1010E4FF0101E8FF0909
      DBFF2121D2F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBD99
      68FFB98E57FCE8C99EFFF3DBB6FFF4DCB9FFF0D5ADFFE8C99BFFD7B078FFCEA5
      68FFC49857FFFFFFFFFF2F711AFF00CD46FF00CC42FF00CE43FF00CE43FF00CE
      43FF00CB41FF00DE4EFF009224E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF5F5F596D1682BEFDC6B28F5DE671AEBC8662DC8A7531EA1985C2D8F9F59
      2698D08B55D5E2C899E8C88E67D58E786371FAFAFAC1FFFFFFF7FFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF0000BC
      E6CE00BCE7FF00C6F2FF00C7F2FF00C7F2FF00C8F3FF01C6EFFF2488A6FF598F
      ACFF12C4EDFF00C9F4FF00C7F3FF00C7F3FF01C8F3FF01C5F2FF1FBCE3FF5C38
      3CCAFDFDFDE2FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFCAA678CFECD7
      B8FAC39C69FFE8CAA2FFF5E1BFFFF8E4C5FFF4DBB7FFECCFA3FFDAB47DFFD2AA
      6FFFCAA062FFB58644FFA27235FF8D6F4FFF3E3EF2FF4343EFFF2B2BEFFF0303
      B3E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA678CFECD7
      B8FAC39C69FFE8CAA2FFF5E1BFFFF8E4C5FFF4DBB7FFECCFA3FFDAB47DFFD2AA
      6FFFCAA062FFE1D8CEFF2F731CFF00CB3EFF00B33AFF00B63AFF00B73AFF00B7
      3AFF00B238FF00CA43FF009321E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
      FEECBAB6B553F1BA89FFF4BC8CFFE9A877FFE8A371FFE7A170FFEAA977FEEDB5
      84FFF8E4B3FFF3D8A8FFEAA976FFF4CB9EF98F6E547F81726D4DCECDCC53FDFD
      FDE8FEFEFEF0FFFFFFFAFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF0000C2
      EB9802C5EFFF07DAFEFF01D5FFFF01D5FFFF01D7FFFF03CDE9FF220000FF8742
      50FF39A7C2FF00DCFFFF01D5FFFF01D5FFFF0CDFFFFF06D4FCFF2AB7DCF96707
      008DFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFC9A575C8F0DE
      C2FCC5A16FFFE6C9A1FFF8E4C6FFFAEACFFFF6DFBFFFEFD3ABFFDCB781FFD5AD
      73FFCDA467FFB38545FF835F3AFF3836D3FF8F8FF9FF6C6CF8FF6262F8FF5D5D
      F5FF2626C2E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9A575C8F0DE
      C2FCC5A16FFFE6C9A1FFF8E4C6FFFAEACFFFF6DFBFFFEFD3ABFFDCB781FFD5AD
      73FFCDA467FFCBB9A3FF30731DFF00CB54FF00D950FF00D951FF00DA52FF00DA
      52FF00D84FFF00E75EFF009029E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
      FBC0A08D875EFBCB98FFFDC691FFFCC898FFFBC996FFF7C28DFFEDB887FFF0BF
      8FFFFAE9B7FFEABF90FFF1B784FFFDD4A2FFE6C3A0E4B1764DA78258406BA19D
      9B3EDBDBDB5CF9F9F9BAFFFFFFF7FFFFFFFFFFFFFF00FFFFFF00FFFFFF0000C6
      EC4900C4EBE90ADAFBFF05DCFFFF00D6FFFF00D8FFFF02D3EDFF0C4A56FF232B
      35FF14BDDBFF00DDFFFF00D6FFFF07DCFFFF14E7FFFF07D3F7FF437A8CE47400
      003BFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFC09965B1F4E5
      CCFDC7A473FFE0C29BFFF8E7CAFFFBEDD6FFF7E3C5FFF1D6B0FFE0BC88FFD8B1
      79FFD1A86DFF8E6D47FF3A37D6FF7575F8FF7A7AF8FF3E3BC8F83534C7E79A9A
      FAFF7777F9FF3636D6E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC09965B1F4E5
      CCFDC7A473FFE0C29BFFF8E7CAFFFBEDD6FFF7E3C5FFF1D6B0FFE0BC88FFD8B1
      79FFD1A86DFFD6C9BBFF30731EFF00CA69FF00FF6AFF00FE6BFF00FE6BFF00FE
      6BFF00FE68FF00FF7BFF008E31E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0
      F08691573A73FEC88EFFFE9F49FFFE9336FFFD9345FFFE9D36FFECB889FFF1C5
      93FFFAE0AEFFE6B384FFF6C291FFFFDAAAFFFDE3C2FDF3D6B7F3DB9363DB8F4C
      1C7C744E4060AA9E9A49F6F6F5A0FFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFF00C7EAAA05D2F4FC0CE4FFFF02DBFFFF00DBFFFF00DEFDFF04D0E6FF05CC
      E1FF00E0FFFF00DBFFFF01DAFFFF12EAFFFF10E7FFFF1FAFCBFD5F3B3F9EFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF3E2
      C7FCD9BD93FFD3B58BFFF2DCBDFFFBF0DBFFFAECD2FFF6E0BFFFE7C89AFFE2C0
      8FFFDBB682FF2F2EE8FFA3A3F7FF8E8EF8FF987A5AF7FFFFFFFFFFFFFFFF2C2C
      CBE38181F9FFA4A4FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E2
      C7FCD9BD93FFD3B58BFFF2DCBDFFFBF0DBFFFAECD2FFF6E0BFFFE7C89AFFE2C0
      8FFFDBB682FFC7B8A6FF357B29FF00C563FF00FF7BFF00FF7CFF00FF7CFF00FF
      7CFF00FF7AFF00FF88FF008C2EE9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC7C6
      C667BE6436C4FEB87BFFFF8C01FFFF7C01FFFF8E00FFFEA729FFF5AD71FFF6CA
      93FFF1CF9EFFE39968FFF4C391FFFEDEB2FFFDE9CBFFF5ECDAFFFDF3E3FFF9BE
      92FEF79E5AFBED6F1DDFC9BEB66EFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFF00CFEF5301CDECED09E0FAFF06E3FFFF00DEFFFF00DFFFFF16B9D0FF14A9
      C4FF00E3FEFF00DDFFFF06E3FFFF16F1FFFF08D6F1FF447B8AE26D222139FFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFE5CB
      A8EFE9D3B1FFD7BC94FFEAD2B0FFFCF0DBFFFCEFD8FFF9E6C9FFEBCDA3FFE5C5
      97FFD9B584FF846C53FF2E2EEBFF3D3CDCFFB4884DDFFFFFFFFFFFFFFFFFFFFF
      FFFF3030CCE52E2EF1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5CB
      A8EFE9D3B1FFD7BC94FFEAD2B0FFFCF0DBFFFCEFD8FFF9E6C9FFEBCDA3FFE5C5
      97FFD9B584FFB0905CFF56893FFF01A543FF00E17CFF00E07AFF00DF7AFF00DF
      7AFF00E07BFF00DE79FF008C2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7947
      3554CD865CDEFEA456FFFF8500FFFF7901FFFF9700FFFAAC47FFF5B06FFFFBC8
      8CFFEBBE8EFFE6A06EFFF7CE9FFFF3C89FFFEEE7D3FF8FC3EDFFE1EDEDFFFEF7
      F1FFFDDEC2FFEE8045E3C9BBB46FFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFF00CFEBB903D6F1FF09E8FEFF01E3FFFF00E2FBFF2CA5ADFF267E
      94FF01EDFEFF00E1FFFF12F0FFFF0CE9FDFF28B9D1FC6049508EFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF6E8CFFEE7D1AEFFEAD4B2FFFDF1DDFFFDF1DDFFFAEBD1FFEFD4ACFFE8C9
      9CFFDBB888FFC3A376FFC1A67FFFCAB089FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCAA5
      73A9F6E8CFFEE7D1AEFFEAD4B2FFFDF1DDFFFDF1DDFFFAEBD1FFEFD4ACFFE8C9
      9CFFDBB888FFD1B07FFFB4B17AFF619950FF4F8D53F1008C2EFF008C2EFF008C
      2EFF008C2EFF008C2EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF5B14E
      10A3F4C595FBFF8906FFFF7B07FFFE7607FFFFA521FFF2B681FFFAB97CFFFAE0
      ADFFE19362FFF0B582FFF5CCA1FFF3CAA7FF8EC2ECFF00B3FFFF0CD1FEFF5DD0
      FDFF97D1EDFFD4BB98ACE7E7E76DFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFF00D3EC5201D1EBF608E6F9FF04E9FFFF00E4F7FF478E9AFF4C5E
      6FFF04EFFDFF04E9FFFF15F5FEFF07DEF4FF4992A0E06D0B003AFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4E6C9FFFFFCECFFFCF4E0FFFCF2E0FFFCF1DDFFFAECD2FFF5DCB8FFEFD4
      ABFFEACCA0FFE5C594FFD8B483FFBD935BEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF4E6C9FFFFFCECFFFCF4E0FFFCF2E0FFFCF1DDFFFAECD2FFF5DCB8FFEFD4
      ABFFEACCA0FFE5C594FFD8B483FFBC925AEDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDEAC57E
      52C7F9C897FEFD9F4BFFFE883DFFFF8D3AFFF8B168FFEFB785FFF5D2A0FFFBEE
      BCFFE49D6BFFF8C794FFF5CDA4FFF9D7B4FF60B5F5FF00C0FFFF02D8FFFF0CC2
      FFFF32ADFCFFBFB09776FBFBFBC3FFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFCFEFFC000D4EAAC06E1F3FF09F2FFFF01E9EFFF3C5A66FF5837
      46FF08E7F4FF11F6FFFF0EF0FEFF26C3D6FD5A3D3F94FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFEFDDC0FFFFFDE9FFFFF8E3FFFFF8E1FFFFF3D6FFFCE2BCFFF4D7
      ABFFECCC9EFED7B482F9C0965DE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFD6B687C5EFDDC0FFFFFDE9FFFFF8E3FFFFF8E1FFFFF3D6FFFCE2BCFFF4D7
      ABFFECCC9EFED7B482F9C0965DE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB7CE8AF
      7FF6EBC8A2FFB4A7BDFFB7A9BBFFB0A3BDFFD2AEA4FFEFB987FFF7DFADFFF5DB
      A9FFF2BA87FFFDD6A4FFFDE1BEFFFCE3C4FF1EB9FEFF01D3FFFF01DBFFFF0BAD
      FEFF9ABEE1FAF0EFED92FFFFFFFEFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFF00D8EC5102DCEEEF0AF3FCFF06E9EAFF2B1423FF461A
      27FF13BAC8FF13FDFFFF09E8F6FF3F888EE76D000045FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFD8BE95FFE9D6B4FFD8C5A2FFCEB793FFC8AB81FFCFAE
      7EFED7B380FFB88E57EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFCEAB7AAAD8BE95FFE9D6B4FFD8C5A2FFCEB793FFC8AB81FFCFAE
      7EFED7B380FFBE9A6FEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8B0A9A747F1BB
      87FDC4B5BBFF3757F8FF384DF8FF3556F9FFD9AF9EFFF0BC8BFFFCDBA5FFEEC2
      91FFF7C592FFFFDAAAFFFEE6C3FFFEEBCFFF4BCAFCFF11DDFFFF01D5FFFF34A8
      FAFEA2BBCCDDFDFDFDE0FFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFF6FDFE8100DCECB006EBF6FF0BE7E8FF1C0000FF3B0C
      13FF239CA5FF0CFBFFFF1CC8D2FD5F44469FFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA17C4DFEB48E5FFFBD9869FFBA9468FFAC86
      5BFF98744AF7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFA17C4DFEB48E5FFFBD9869FFBA9468FFAC86
      5BFFD1C6BDFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3F3F38B9D694F6EEBC8
      9FFF657FF0FF003EFFFF014AFFFF1768FDFFF0B984FFF3BB86FFF6D7A4FEE6A8
      78FFF9CB9AFFF6CA9FFFFAE9CBFFC1D9AAFFF6F9F0FFEEF9FAFFB2DDF3FF8BBA
      E0F3CDB99282FFFFFFFEFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00E0EC5D01E3F0F30BE6EBFF0C5B5CFF1853
      55FF20CCD1FF01F8FEFF468D91E8721A1948FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A171FFCEA977FFD0AB7AFFD2AD80FFCCA8
      7AFFBA9469FF87684090FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A171FFCEA977FFD0AB7AFFD2AD80FFCCA8
      7AFFBA9469FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE4E4E465A9653C95C9B9
      BAFF3B6FF8FF003EFFFF0154FFFF3670FAFFF5B073FFF7BF86FEEAC998EEE8AA
      79FBF6C89BFFF6CDA4FFF3EACDFF85C778FFB6F2BDFFF6FCF5FFF5F2E8FFDFD1
      BAD9D3CCC37BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF00E6F01900E3EBBD04ECF3FF08E4E6FF0EDE
      DFFF12FAFDFF21D4D8FF645E60A0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB39365FFE1C396FFE0C090FFDCBA88FFD6B281FFD4B0
      81FFCDA87AFF98754BD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFB39365FFE1C396FFE0C090FFDCBA88FFD6B281FFD4B0
      81FFCDA87AFF98754BD8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDCDBDA6CC67F53C59495
      DAFF3959FAFF3750FBFF416DF6FF8894D3FFECA970E8D4AE8399DDDCDB6CD2A7
      7C9BF6CDA2FFF2C5A0FFBDDAA9FF00BE1BFF2DF65CFF30E853FF37C440FFC6B3
      988DF7F7F79EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00E7EC5F01E8ECF311FBFDFF1FFF
      FFFF07F2F5FF429B9DF06629273DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAB8F61DCF0DBB7FFF9EDD2FFF7E9CAFFF3DFB8FFE6C48FFFDDB7
      81FFD1A976FFAD8555FF927044B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFDBD1C6ECF0DBB7FFF9EDD2FFF7E9CAFFF3DFB8FFE6C48FFFDDB7
      81FFD1A976FFB4926DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEFEF7FCF9C74ACD9BF
      ABFCBCA8C4FEB29EC5FDC9ACACFAE6B690F6CBAA898CEAE7E386FDFDFDDED4CB
      C272F0C59BFDF7D8B5FF7CC970FF10CD31FF2DF55BFF1FD940FF22BB2BFFC2BB
      B362FEFEFEE8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FEFE8101E9ECC124F7F8FF25FE
      FFFF1CDDDEFA525B5BA5FBFAFAA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAF9466ECF9EAC9FFFBF2DBFFFAF0D8FFF8E9CBFFEBCD9BFFE2BF
      88FFD7B079FFB28A59FF957446B5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFAF9466ECF9EAC9FFFBF2DBFFFAF0D8FFF8E9CBFFEBCD9BFFE2BF
      88FFD7B079FFE4DAD1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDDED8C3B07AE9BE
      94D2F0C496E5E7BA90DADAB18CC6DBB28EB4F6F5F4B0FEFEFEF0FFFFFFFFF8F8
      F8B0F1D2AEEAF7D3B4FE3BBE3BFF1FDA41FF29EC53FF12C92FFF68BF5BFED9D8
      D75BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00F3F44B05F8F8F105FE
      FEF62ABCBCA06800002DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB29767D1F4E1BEFFFBF3DEFFFCF3DEFFFAEED4FFEED2A4FFE5C4
      8EFFDAB57CFFB58D5BFB987649A5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFB29767D1F4E1BEFFFBF3DEFFFCF3DEFFFAEED4FFEED2A4FFE5C4
      8EFFDAB57CFFD2BEABFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFE
      FEF1FDFDFDF1FDFDFDF0FEFEFEF2FEFEFEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFECEAE789D6C7B28AC5EBC1FA65F37EFF20D039FF42BB3AFFB5C086DFFEFE
      FEECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF06FDFD5B05FF
      FF66F6FAFA81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFBBA06FF0FDF4DCFFFCF1D9FFFAEED1FFEED3A4FFE6C3
      8DFFDDB57DFEA18150C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFA88A563EBBA06FF0FDF4DCFFFCF1D9FFFAEED1FFEED3A4FFE6C3
      8DFFDDB57DFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFEFEFEEDF0EFEE93E7E6DBD1DCF6E1F563CD62FE80BC67FACAC299B0FFFF
      FFFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFECD6ACFFFAEACAFFF6E4C1FFEBCD9BFFE0BB
      84FFC8A26BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFAF915D79ECD6ACFFFAEACAFFF6E4C1FFEBCD9BFFE0BB
      84FFC8A26BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFCFCFCDFEBEAEA80DDD1BF9FE4D3B6A7F2EEEAAEFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB59863DAD3B27CFBE3C28EFFD8B57DFEBF9D
      66F3A68854BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFB59863DAD3B27CFBE3C28EFFD8B57DFEBF9D
      66F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFEFEF3FBFBFAD8FBFAF8CCFEFEFEF7FFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF424D3E000000000000003E000000
      2800000060000000480000000100010000000000600300000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
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
  object JvDatabaseItems1: TJvDatabaseItems
    Left = 526
    Top = 202
  end
  object JvDesignSurface1: TJvDesignSurface
    Left = 614
    Top = 173
  end
  object JvInspectorBorlandPainter1: TJvInspectorBorlandPainter
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
    Left = 350
    Top = 157
  end
end