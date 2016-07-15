object Form19: TForm19
  Left = 12
  Top = 33
  Width = 1005
  Height = 695
  BorderIcons = [biSystemMenu]
  Caption = #20449#24687
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
  object CGauge1: TCGauge
    Left = 16
    Top = 168
    Width = 953
    Height = 25
    ForeColor = clRed
    Progress = 22
    Visible = False
  end
  object sGroupBox22: TsGroupBox
    Left = 16
    Top = 2
    Width = 953
    Height = 159
    TabOrder = 0
    SkinData.SkinSection = 'GROUPBOX'
    object sButton62: TsButton
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = #36830#25509#25511#21046#22120
      TabOrder = 0
      OnClick = sButton62Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sButton2: TsButton
      Left = 24
      Top = 64
      Width = 75
      Height = 25
      Caption = #21516#27493#26102#38388
      Enabled = False
      TabOrder = 1
      OnClick = sButton2Click
      SkinData.SkinSection = 'BUTTON'
    end
    object StaticText2: TStaticText
      Left = 125
      Top = 12
      Width = 52
      Height = 37
      Caption = '---'
      Color = clGradientActiveCaption
      Font.Charset = GB2312_CHARSET
      Font.Color = clRed
      Font.Height = -32
      Font.Name = #26032#23435#20307
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object sButton3: TsButton
      Left = 24
      Top = 104
      Width = 89
      Height = 25
      Caption = #23548#20986'Excel'#34920#26684
      Enabled = False
      TabOrder = 3
      OnClick = sButton3Click
      SkinData.SkinSection = 'BUTTON'
    end
    object sGroupBox1: TsGroupBox
      Left = 392
      Top = 56
      Width = 553
      Height = 97
      Caption = #36873#25321#35835#21462#26041#24335
      TabOrder = 4
      SkinData.SkinSection = 'GROUPBOX'
      object sLabel1: TsLabel
        Left = 288
        Top = 72
        Width = 111
        Height = 13
        Caption = #32456#27490'                             '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sLabel2: TsLabel
        Left = 152
        Top = 72
        Width = 78
        Height = 13
        Caption = #36215#22987'                  '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sLabel3: TsLabel
        Left = 248
        Top = 32
        Width = 66
        Height = 13
        Caption = #26465#33267'              '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sLabel4: TsLabel
        Left = 352
        Top = 32
        Width = 72
        Height = 13
        Caption = #26465'                    '
        ParentFont = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
      end
      object sButton61: TsButton
        Left = 446
        Top = 24
        Width = 75
        Height = 25
        Caption = #35835#21462#25968#25454
        Enabled = False
        TabOrder = 0
        OnClick = sButton61Click
        SkinData.SkinSection = 'BUTTON'
      end
      object sButton1: TsButton
        Left = 446
        Top = 56
        Width = 75
        Height = 25
        Caption = #20572#27490#35835#21462
        Enabled = False
        TabOrder = 1
        OnClick = sButton1Click
        SkinData.SkinSection = 'BUTTON'
      end
      object DateTimePicker1: TDateTimePicker
        Left = 184
        Top = 64
        Width = 89
        Height = 21
        CalAlignment = dtaLeft
        Date = 41923.4450457986
        Time = 41923.4450457986
        DateFormat = dfShort
        DateMode = dmComboBox
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkDate
        ParseInput = False
        TabOrder = 2
      end
      object DateTimePicker2: TDateTimePicker
        Left = 328
        Top = 64
        Width = 89
        Height = 21
        CalAlignment = dtaLeft
        Date = 41954.4490900694
        Time = 41954.4490900694
        DateFormat = dfShort
        DateMode = dmComboBox
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        Kind = dtkDate
        ParseInput = False
        TabOrder = 3
      end
      object sEdit1: TsEdit
        Left = 152
        Top = 28
        Width = 89
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 4
        Text = '0'
        OnKeyPress = sEdit1KeyPress
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
      object sRadioButton1: TsRadioButton
        Left = 16
        Top = 32
        Width = 112
        Height = 20
        Caption = #25353#26368#36817#26465#25968#35835#21462
        Checked = True
        TabOrder = 5
        TabStop = True
        SkinData.SkinSection = 'RADIOBUTTON'
      end
      object sRadioButton2: TsRadioButton
        Left = 16
        Top = 64
        Width = 106
        Height = 20
        Caption = #25353#26102#38388#27573#35835#21462'  '
        TabOrder = 6
        SkinData.SkinSection = 'RADIOBUTTON'
      end
      object sEdit2: TsEdit
        Left = 280
        Top = 28
        Width = 65
        Height = 21
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
        ParentFont = False
        TabOrder = 7
        Text = '100'
        OnKeyPress = sEdit2KeyPress
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
  object StringGrid3: TStringGrid
    Left = 0
    Top = 204
    Width = 997
    Height = 457
    Align = alBottom
    ColCount = 2
    FixedColor = clSkyBlue
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowMoving, goRowSelect]
    TabOrder = 1
  end
  object SaveDialog1: TSaveDialog
    Left = 8
    Top = 88
  end
end
