object Form14: TForm14
  Left = 479
  Top = 5
  Width = 544
  Height = 636
  Caption = #25353#23618#35745#36153#35774#32622
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
  object Label15: TLabel
    Left = 296
    Top = 24
    Width = 81
    Height = 13
    Caption = #32534#21495#65306'               '
  end
  object Label16: TLabel
    Left = 296
    Top = 56
    Width = 108
    Height = 13
    Caption = #25152#25187#38065#25968#65306'                '
  end
  object Label17: TLabel
    Left = 288
    Top = 560
    Width = 132
    Height = 13
    Caption = #23454#38469#20301#32622#65306'                        '
    Visible = False
  end
  object Label1: TLabel
    Left = 472
    Top = 56
    Width = 57
    Height = 13
    Caption = #20803'               '
  end
  object sButton7: TsButton
    Left = 416
    Top = 480
    Width = 75
    Height = 25
    Caption = #28155#21152
    TabOrder = 0
    Visible = False
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton8: TsButton
    Left = 392
    Top = 80
    Width = 75
    Height = 25
    Caption = #20462#25913
    TabOrder = 1
    OnClick = sButton8Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton9: TsButton
    Left = 416
    Top = 504
    Width = 75
    Height = 25
    Caption = #21024#38500
    TabOrder = 2
    Visible = False
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton10: TsButton
    Left = 416
    Top = 528
    Width = 75
    Height = 25
    Caption = #20445#23384
    TabOrder = 3
    Visible = False
    SkinData.SkinSection = 'BUTTON'
  end
  object sComboBox1: TsComboBox
    Left = 352
    Top = 552
    Width = 145
    Height = 21
    Alignment = taLeftJustify
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
    SkinData.SkinSection = 'COMBOBOX'
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ItemIndex = -1
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object sEdit1: TsEdit
    Left = 360
    Top = 16
    Width = 105
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object sEdit2: TsEdit
    Left = 360
    Top = 48
    Width = 105
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    SkinData.SkinSection = 'EDIT'
    BoundLabel.Indent = 0
    BoundLabel.Font.Charset = DEFAULT_CHARSET
    BoundLabel.Font.Color = clWindowText
    BoundLabel.Font.Height = -11
    BoundLabel.Font.Name = 'MS Sans Serif'
    BoundLabel.Font.Style = []
    BoundLabel.Layout = sclLeft
    BoundLabel.MaxWidth = 0
    BoundLabel.UseSkinColor = True
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 4
    Width = 265
    Height = 581
    ColCount = 2
    FixedColor = clSkyBlue
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
    TabOrder = 7
    OnSelectCell = StringGrid2SelectCell
  end
  object sGroupBox1: TsGroupBox
    Left = 296
    Top = 136
    Width = 193
    Height = 121
    Caption = #26080#23618#25968#40664#35748#37329#39069
    TabOrder = 8
    SkinData.SkinSection = 'GROUPBOX'
    object sLabel1: TsLabel
      Left = 128
      Top = 40
      Width = 51
      Height = 13
      Caption = #20803'             '
      ParentFont = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
    end
    object sButton1: TsButton
      Left = 96
      Top = 80
      Width = 75
      Height = 25
      Caption = #30830#23450
      TabOrder = 0
      OnClick = sButton1Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sEdit3: TsEdit
      Left = 24
      Top = 32
      Width = 97
      Height = 21
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      SkinData.SkinSection = 'EDIT'
      BoundLabel.Indent = 0
      BoundLabel.Font.Charset = DEFAULT_CHARSET
      BoundLabel.Font.Color = clWindowText
      BoundLabel.Font.Height = -11
      BoundLabel.Font.Name = 'MS Sans Serif'
      BoundLabel.Font.Style = []
      BoundLabel.Layout = sclLeft
      BoundLabel.MaxWidth = 0
      BoundLabel.UseSkinColor = True
    end
  end
end
