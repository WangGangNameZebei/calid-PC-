object Form20: TForm20
  Left = 14
  Top = 31
  Width = 1002
  Height = 659
  BorderIcons = [biSystemMenu]
  Caption = #25346#22833#21015#34920
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
  object StringGrid3: TStringGrid
    Left = 0
    Top = 0
    Width = 994
    Height = 537
    Align = alTop
    BiDiMode = bdLeftToRight
    ColCount = 2
    FixedColor = clSkyBlue
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goDrawFocusSelected, goColSizing, goRowSelect]
    ParentBiDiMode = False
    PopupMenu = PopupMenu1
    TabOrder = 0
    OnSelectCell = StringGrid3SelectCell
  end
  object sButton1: TsButton
    Left = 696
    Top = 568
    Width = 75
    Height = 25
    Caption = #31227#38500#29992#25143
    Enabled = False
    TabOrder = 1
    OnClick = sButton1Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sButton2: TsButton
    Left = 792
    Top = 568
    Width = 75
    Height = 25
    Caption = #25209#37327#25346#22833#21345
    TabOrder = 2
    OnClick = sButton2Click
    SkinData.SkinSection = 'BUTTON'
  end
  object sEdit1: TsEdit
    Left = 40
    Top = 552
    Width = 121
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ImeName = #20013#25991' ('#31616#20307') - '#25628#29399#25340#38899#36755#20837#27861
    ParentFont = False
    TabOrder = 3
    Visible = False
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
  object sButton3: TsButton
    Left = 888
    Top = 568
    Width = 75
    Height = 25
    Caption = #25209#37327#35299#25346#21345
    TabOrder = 4
    OnClick = sButton3Click
    SkinData.SkinSection = 'BUTTON'
  end
  object PopupMenu1: TPopupMenu
    Left = 232
    Top = 552
    object N1: TMenuItem
      Caption = #31227#38500#20840#37096#29992#25143
      OnClick = N1Click
    end
  end
end
