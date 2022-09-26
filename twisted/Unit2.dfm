object Form2: TForm2
  Left = 67
  Top = 108
  Width = 1010
  Height = 670
  Caption = 'DataBase Explorer (c) 2022 Jens Kallup 1.0.0'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClick = FormClick
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 587
    Width = 994
    Height = 24
    Panels = <>
  end
  object ScrollBox2: TScrollBox
    Left = 0
    Top = 0
    Width = 994
    Height = 587
    Align = alClient
    TabOrder = 1
    object ScrollView: TScrollBox
      Left = 0
      Top = 0
      Width = 985
      Height = 566
      Align = alLeft
      TabOrder = 0
      object Splitter1: TSplitter
        Left = 0
        Top = 442
        Width = 981
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 41
        Width = 981
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter4: TSplitter
        Left = 749
        Top = 44
        Height = 398
        Align = alRight
      end
      object Splitter3: TSplitter
        Left = 201
        Top = 44
        Width = 8
        Height = 398
      end
      object Panel1: TPanel
        Left = 0
        Top = 445
        Width = 981
        Height = 117
        Align = alBottom
        Caption = 'Panel1'
        TabOrder = 0
        object PageControl6: TPageControl
          Left = 1
          Top = 1
          Width = 979
          Height = 115
          ActivePage = TabSheet6
          Align = alClient
          TabOrder = 0
          object TabSheet6: TTabSheet
            Caption = 'TabSheet6'
            object ScrollBox6: TScrollBox
              Left = 0
              Top = 0
              Width = 971
              Height = 87
              VertScrollBar.Position = 70
              Align = alClient
              TabOrder = 0
              object StringGrid1: TStringGrid
                Left = -1
                Top = -72
                Width = 409
                Height = 155
                DefaultRowHeight = 16
                TabOrder = 0
              end
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 981
        Height = 41
        Align = alTop
        Caption = 'Panel2'
        TabOrder = 1
      end
      object Panel4: TPanel
        Left = 752
        Top = 44
        Width = 229
        Height = 398
        Align = alRight
        Caption = 'Panel4'
        TabOrder = 2
        object Splitter6: TSplitter
          Left = 1
          Top = 194
          Width = 227
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object PageControl3: TPageControl
          Left = 1
          Top = 1
          Width = 227
          Height = 193
          ActivePage = TabSheet1
          Align = alTop
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 'User/Login DataBase'
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 219
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
              Width = 219
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
                  Title.Caption = 'Username'
                  Visible = True
                end
                item
                  Expanded = False
                  Title.Caption = 'Userpaassword'
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
        object Panel6: TPanel
          Left = 1
          Top = 197
          Width = 227
          Height = 200
          Align = alClient
          TabOrder = 1
          object DBNavigator1: TDBNavigator
            Left = 1
            Top = 1
            Width = 225
            Height = 24
            Align = alTop
            TabOrder = 0
          end
          object ScrollBox3: TScrollBox
            Left = 1
            Top = 25
            Width = 225
            Height = 174
            Align = alClient
            TabOrder = 1
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
              Left = 168
              Top = 144
              Width = 177
              Height = 161
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
      object ScrollBox1: TScrollBox
        Left = 209
        Top = 44
        Width = 540
        Height = 398
        Align = alClient
        TabOrder = 3
        object Splitter7: TSplitter
          Left = 0
          Top = 253
          Width = 536
          Height = 3
          Cursor = crVSplit
          Align = alBottom
        end
        object Splitter8: TSplitter
          Left = 169
          Top = 25
          Height = 228
        end
        object Panel7: TPanel
          Left = 0
          Top = 0
          Width = 536
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
        object TreeView2: TTreeView
          Left = 0
          Top = 25
          Width = 169
          Height = 228
          Align = alLeft
          Indent = 19
          TabOrder = 1
          Items.Data = {
            06000000220000000000000000000000FFFFFFFFFFFFFFFF0000000000000000
            095761726E696E672773250000000000000000000000FFFFFFFFFFFFFFFF0000
            0000000000000C436F6E6E656374696F6E2773240000000000000000000000FF
            FFFFFFFFFFFFFF00000000000000000B50726F63656475726527732700000000
            00000000000000FFFFFFFFFFFFFFFF00000000000000000E53595354454D2054
            41424C452773260000000000000000000000FFFFFFFFFFFFFFFF000000000000
            00000D53595354454D20564945572773200000000000000000000000FFFFFFFF
            FFFFFFFF0000000000000000075441424C452773}
        end
        object Panel8: TPanel
          Left = 0
          Top = 256
          Width = 536
          Height = 138
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Panel8'
          TabOrder = 2
          object PageControl5: TPageControl
            Left = 1
            Top = 1
            Width = 534
            Height = 136
            ActivePage = TabSheet3
            Align = alClient
            TabOrder = 0
            object TabSheet3: TTabSheet
              Caption = 'Connection'#39's'
              object ScrollBox7: TScrollBox
                Left = 0
                Top = 0
                Width = 526
                Height = 108
                Align = alClient
                TabOrder = 0
                object ConnectionListGrid: TStringGrid
                  Left = 0
                  Top = 41
                  Width = 522
                  Height = 63
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
                  Width = 522
                  Height = 41
                  Align = alTop
                  TabOrder = 1
                  object Button9: TButton
                    Left = 120
                    Top = 8
                    Width = 75
                    Height = 25
                    Caption = 'Close'
                    TabOrder = 0
                  end
                  object Button10: TButton
                    Left = 208
                    Top = 8
                    Width = 75
                    Height = 25
                    Caption = 'Kick'
                    TabOrder = 1
                  end
                  object Button11: TButton
                    Left = 296
                    Top = 8
                    Width = 75
                    Height = 25
                    Caption = 'Bann'
                    TabOrder = 2
                  end
                  object Button12: TButton
                    Left = 392
                    Top = 8
                    Width = 75
                    Height = 25
                    Caption = 'Statistic'#39's'
                    TabOrder = 3
                  end
                  object Button13: TButton
                    Left = 8
                    Top = 8
                    Width = 75
                    Height = 25
                    Caption = 'Send Warn'
                    TabOrder = 4
                  end
                end
              end
            end
            object TabSheet4: TTabSheet
              Caption = 'User'#39's'
              ImageIndex = 1
              object Panel11: TPanel
                Left = 0
                Top = 0
                Width = 483
                Height = 179
                Align = alClient
                Caption = 'Panel11'
                TabOrder = 0
                object UserLogGrid: TStringGrid
                  Left = 1
                  Top = 1
                  Width = 481
                  Height = 177
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
                Width = 523
                Height = 97
                Align = alClient
                Caption = 'Panel10'
                TabOrder = 0
                object StringGrid2: TStringGrid
                  Left = 1
                  Top = 1
                  Width = 521
                  Height = 95
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
          Left = 172
          Top = 25
          Width = 364
          Height = 228
          ActivePage = TabSheet10
          Align = alClient
          TabOrder = 3
          object TabSheet2: TTabSheet
            Caption = 'Display'
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 356
              Height = 200
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
              Width = 356
              Height = 200
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
      end
      object Panel3: TPanel
        Left = 0
        Top = 44
        Width = 201
        Height = 398
        Align = alLeft
        Caption = 'Panel3'
        TabOrder = 4
        object PageControl1: TPageControl
          Left = 1
          Top = 1
          Width = 199
          Height = 396
          ActivePage = TabSheet11
          Align = alClient
          TabOrder = 0
          object DataBases: TTabSheet
            Caption = 'DataBases'
            object Splitter5: TSplitter
              Left = 0
              Top = 169
              Width = 191
              Height = 3
              Cursor = crVSplit
              Align = alTop
            end
            object TreeView1: TTreeView
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
            object PageControl2: TPageControl
              Left = 0
              Top = 172
              Width = 191
              Height = 196
              ActivePage = Definition
              Align = alClient
              TabOrder = 1
              object Definition: TTabSheet
                Caption = 'Definition'
                object DBGrid2: TDBGrid
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
          object TabSheet11: TTabSheet
            Caption = 'Activities'
            ImageIndex = 1
            object ScrollBox8: TScrollBox
              Left = 0
              Top = 0
              Width = 191
              Height = 368
              Align = alClient
              TabOrder = 0
              object Splitter12: TSplitter
                Left = 0
                Top = 181
                Width = 170
                Height = 3
                Cursor = crVSplit
                Align = alTop
              end
              object Splitter13: TSplitter
                Left = 0
                Top = 380
                Width = 170
                Height = 3
                Cursor = crVSplit
                Align = alTop
              end
              object StringGrid3: TStringGrid
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
              object Panel16: TPanel
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
              object StringGrid4: TStringGrid
                Left = 0
                Top = 28
                Width = 170
                Height = 153
                Align = alTop
                DefaultRowHeight = 16
                TabOrder = 2
              end
              object Panel17: TPanel
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
              object Panel18: TPanel
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
              object StringGrid5: TStringGrid
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
    end
    object Panel27: TPanel
      Left = 2211
      Top = 0
      Width = 38
      Height = 566
      Align = alLeft
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      OnDblClick = Panel27DblClick
      object Label12: TLabel
        Left = 1
        Top = 0
        Width = 34
        Height = 37
        Caption = #197
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 3
        Top = 32
        Width = 26
        Height = 13
        Caption = 'Proxy'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel13: TPanel
      Left = 1017
      Top = 0
      Width = 480
      Height = 566
      Align = alLeft
      Caption = 'Panel13'
      TabOrder = 2
      object MiscToolsPanel: TPanel
        Left = 1
        Top = 1
        Width = 478
        Height = 564
        Align = alLeft
        TabOrder = 0
        object Splitter14: TSplitter
          Left = 1
          Top = 42
          Width = 476
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object PageControl7: TPageControl
          Left = 1
          Top = 45
          Width = 478
          Height = 518
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
              Width = 470
              Height = 490
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
            object ScrollBox5: TScrollBox
              Left = 0
              Top = 0
              Width = 470
              Height = 490
              Align = alClient
              TabOrder = 0
              DesignSize = (
                466
                486)
              object Panel15: TPanel
                Left = 8
                Top = 8
                Width = 434
                Height = 105
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 0
                DesignSize = (
                  434
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
                  Width = 178
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
              Width = 470
              Height = 490
              Align = alClient
              TabOrder = 0
              DesignSize = (
                466
                486)
              object Panel19: TPanel
                Left = 8
                Top = 8
                Width = 434
                Height = 145
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 0
                DesignSize = (
                  434
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
                  Width = 178
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
              Width = 470
              Height = 490
              Align = alClient
              TabOrder = 0
              DesignSize = (
                466
                486)
              object Panel20: TPanel
                Left = 8
                Top = 8
                Width = 438
                Height = 145
                Anchors = [akLeft, akTop, akRight]
                TabOrder = 0
                DesignSize = (
                  438
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
                  Width = 182
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
              Width = 470
              Height = 490
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
                ActivePage = TabSheet19
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
            end
          end
        end
        object Panel28: TPanel
          Left = 1
          Top = 1
          Width = 476
          Height = 41
          Align = alTop
          Caption = 'Panel14'
          TabOrder = 1
        end
      end
    end
    object Panel29: TPanel
      Left = 985
      Top = 0
      Width = 32
      Height = 566
      Align = alLeft
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnDblClick = Panel29DblClick
      object Label13: TLabel
        Left = 0
        Top = 0
        Width = 34
        Height = 37
        Caption = #197
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
      end
      object Label16: TLabel
        Left = 3
        Top = 32
        Width = 22
        Height = 13
        Caption = 'Misc'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel21: TPanel
      Left = 1537
      Top = 0
      Width = 674
      Height = 566
      Align = alLeft
      Caption = 'Panel21'
      TabOrder = 4
      object DNServerPanel: TPanel
        Left = 1
        Top = 1
        Width = 672
        Height = 564
        Align = alClient
        Caption = 'Panel21'
        TabOrder = 0
        object Splitter11: TSplitter
          Left = 1
          Top = 42
          Width = 670
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object Panel30: TPanel
          Left = 1
          Top = 1
          Width = 670
          Height = 41
          Align = alTop
          Caption = 'Panel14'
          TabOrder = 0
        end
        object PageControl9: TPageControl
          Left = 1
          Top = 46
          Width = 670
          Height = 517
          ActivePage = TabSheet21
          Align = alClient
          TabOrder = 1
          object TabSheet21: TTabSheet
            Caption = 'DNS Server'
            object ScrollBox19: TScrollBox
              Left = 0
              Top = 0
              Width = 662
              Height = 489
              Align = alClient
              TabOrder = 0
            end
          end
        end
      end
    end
    object Panel31: TPanel
      Left = 1497
      Top = 0
      Width = 40
      Height = 566
      Align = alLeft
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      OnDblClick = Panel31DblClick
      object Label14: TLabel
        Left = 2
        Top = 0
        Width = 29
        Height = 37
        Caption = #197
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 6
        Top = 32
        Width = 23
        Height = 13
        Caption = 'DNS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel32: TPanel
      Left = 2249
      Top = 0
      Width = 597
      Height = 566
      Align = alLeft
      Caption = 'Panel32'
      TabOrder = 6
      object ProxyServerPanel: TPanel
        Left = 1
        Top = 1
        Width = 595
        Height = 564
        Align = alClient
        Caption = 'ProxyServerPanel'
        TabOrder = 0
        object Splitter16: TSplitter
          Left = 1
          Top = 42
          Width = 593
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object Panel24: TPanel
          Left = 1
          Top = 1
          Width = 593
          Height = 41
          Align = alTop
          Caption = 'Panel14'
          TabOrder = 0
        end
        object PageControl10: TPageControl
          Left = 1
          Top = 46
          Width = 593
          Height = 517
          ActivePage = TabSheet22
          Align = alClient
          TabOrder = 1
          object TabSheet22: TTabSheet
            Caption = 'Proxy Server'
            object ScrollBox20: TScrollBox
              Left = 0
              Top = 0
              Width = 585
              Height = 489
              Align = alClient
              TabOrder = 0
            end
          end
        end
      end
    end
    object Panel33: TPanel
      Left = 2846
      Top = 0
      Width = 35
      Height = 566
      Align = alLeft
      Font.Charset = SYMBOL_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = 'Webdings'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      OnDblClick = Panel33DblClick
      object Label15: TLabel
        Left = 0
        Top = 0
        Width = 29
        Height = 37
        Caption = #197
        Font.Charset = SYMBOL_CHARSET
        Font.Color = clRed
        Font.Height = -32
        Font.Name = 'Wingdings 3'
        Font.Style = []
        ParentFont = False
      end
      object Label19: TLabel
        Left = 3
        Top = 32
        Width = 29
        Height = 13
        Caption = 'HTTP'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
    end
    object Panel25: TPanel
      Left = 2881
      Top = 0
      Width = 645
      Height = 566
      Align = alLeft
      Caption = 'Panel25'
      TabOrder = 8
      object HttpServerPanel: TPanel
        Left = 1
        Top = 1
        Width = 637
        Height = 564
        Align = alLeft
        Caption = 'Panel25'
        TabOrder = 0
        object Splitter18: TSplitter
          Left = 1
          Top = 42
          Width = 635
          Height = 3
          Cursor = crVSplit
          Align = alTop
        end
        object Panel34: TPanel
          Left = 1
          Top = 1
          Width = 635
          Height = 41
          Align = alTop
          Caption = 'Panel14'
          TabOrder = 0
        end
        object PageControl11: TPageControl
          Left = 1
          Top = 45
          Width = 635
          Height = 518
          ActivePage = TabSheet23
          Align = alClient
          TabOrder = 1
          object TabSheet23: TTabSheet
            Caption = 'HTTP Server'
            object ScrollBox21: TScrollBox
              Left = 0
              Top = 0
              Width = 627
              Height = 490
              Align = alClient
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 116
    Top = 4
    object File1: TMenuItem
      Caption = 'File'
      object Exit1: TMenuItem
        Caption = 'Exit'
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
    Left = 621
    Top = 8
  end
  object LocationPopupMenu: TPopupMenu
    Left = 1424
    Top = 140
  end
  object LocationListTimer: TTimer
    Enabled = False
    Interval = 2000
    OnTimer = LocationListTimerTimer
    Left = 1424
    Top = 172
  end
end