object Form5: TForm5
  Left = 298
  Top = 3
  Width = 728
  Height = 490
  BorderIcons = [biSystemMenu]
  Caption = #32564#36153#21333#20803
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 288
    Width = 120
    Height = 13
    Caption = #29992#25143#32534#21495#65306'                    '
  end
  object Label2: TLabel
    Left = 272
    Top = 288
    Width = 120
    Height = 13
    Caption = #29992#25143#22995#21517#65306'                    '
  end
  object Label3: TLabel
    Left = 496
    Top = 288
    Width = 108
    Height = 13
    Caption = #38065#25968#65306'                        '
  end
  object Label4: TLabel
    Left = 40
    Top = 344
    Width = 171
    Height = 13
    Caption = #25353#26102#38388#26597#35810#65306'                                 '
  end
  object Label5: TLabel
    Left = 136
    Top = 344
    Width = 30
    Height = 13
    Caption = #24180'      '
  end
  object Label6: TLabel
    Left = 248
    Top = 344
    Width = 42
    Height = 13
    Caption = #26376'          '
  end
  object Label7: TLabel
    Left = 360
    Top = 344
    Width = 66
    Height = 13
    Caption = #26085'                  '
  end
  object StringGrid1: TStringGrid
    Left = -1
    Top = 0
    Width = 718
    Height = 257
    DefaultColWidth = 142
    FixedColor = clSkyBlue
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
    TabOrder = 0
    OnSelectCell = StringGrid1SelectCell
  end
  object Edit1: TEdit
    Left = 120
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 1
    OnChange = Edit1Change
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 352
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 560
    Top = 280
    Width = 121
    Height = 21
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object StaticText1: TStaticText
    Left = 48
    Top = 304
    Width = 58
    Height = 17
    Caption = 'StaticText1'
    TabOrder = 4
    Visible = False
  end
  object StaticText2: TStaticText
    Left = 120
    Top = 304
    Width = 58
    Height = 17
    Caption = 'StaticText2'
    TabOrder = 5
    Visible = False
  end
  object Edit4: TEdit
    Left = 160
    Top = 336
    Width = 81
    Height = 21
    TabOrder = 6
    OnChange = Edit4Change
    OnKeyPress = Edit4KeyPress
  end
  object Edit5: TEdit
    Left = 272
    Top = 336
    Width = 81
    Height = 21
    TabOrder = 7
    OnChange = Edit5Change
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 384
    Top = 336
    Width = 81
    Height = 21
    TabOrder = 8
    OnChange = Edit6Change
    OnKeyPress = Edit6KeyPress
  end
  object sButton3: TsButton
    Left = 424
    Top = 408
    Width = 75
    Height = 25
    Caption = #23548#20986'Excel'
    TabOrder = 9
    OnClick = sButton3Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton1: TsButton
    Left = 520
    Top = 408
    Width = 75
    Height = 25
    Caption = #20445#23384
    TabOrder = 10
    OnClick = sButton1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton2: TsButton
    Left = 616
    Top = 408
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 11
    OnClick = sButton2Click
    SkinData.SkinSection = 'BUTTON'
  end
  object SaveDialog1: TSaveDialog
    Left = 8
    Top = 264
  end
end
