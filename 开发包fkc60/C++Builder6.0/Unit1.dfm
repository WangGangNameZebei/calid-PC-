object Form1: TForm1
  Left = 353
  Top = 290
  Width = 1164
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 36
    Width = 1148
    Height = 406
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 0
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #35835#20889#22120
      object Label2: TLabel
        Left = 352
        Top = 136
        Width = 24
        Height = 15
        Caption = #27627#31186
      end
      object Label3: TLabel
        Left = 0
        Top = 40
        Width = 24
        Height = 15
        Caption = #25159#21306
      end
      object Label4: TLabel
        Left = 88
        Top = 40
        Width = 24
        Height = 15
        Caption = #22359#21495
      end
      object Button1: TButton
        Left = 80
        Top = 1
        Width = 41
        Height = 25
        Caption = #23547#21345
        TabOrder = 0
        OnClick = Button1Click
      end
      object Button4: TButton
        Left = 376
        Top = 136
        Width = 41
        Height = 25
        Caption = #40483#21483
        TabOrder = 1
        OnClick = Button4Click
      end
      object Edit2: TEdit
        Left = 304
        Top = 136
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 2
        Text = '5'
      end
      object Edit3: TEdit
        Left = 0
        Top = 1
        Width = 81
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 3
      end
      object RadioGroup1: TRadioGroup
        Left = 0
        Top = 60
        Width = 257
        Height = 44
        ItemIndex = 0
        Items.Strings = (
          'A'#23494#38053
          'B'#23494#38053)
        TabOrder = 4
      end
      object Edit4: TEdit
        Left = 60
        Top = 75
        Width = 120
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 12
        TabOrder = 5
        Text = 'FFFFFFFFFFFF'
      end
      object Button3: TButton
        Left = 208
        Top = 72
        Width = 41
        Height = 25
        Caption = #39564#35777
        TabOrder = 6
        OnClick = Button3Click
      end
      object Edit5: TEdit
        Left = 24
        Top = 40
        Width = 57
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 7
        Text = '3'
      end
      object Button5: TButton
        Left = 255
        Top = 110
        Width = 41
        Height = 25
        Caption = #35835
        TabOrder = 8
        OnClick = Button5Click
      end
      object Edit7: TEdit
        Left = 1
        Top = 120
        Width = 241
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 9
      end
      object Button6: TButton
        Left = 255
        Top = 134
        Width = 41
        Height = 25
        Caption = #20889
        TabOrder = 10
        OnClick = Button6Click
      end
      object Edit6: TEdit
        Left = 112
        Top = 40
        Width = 57
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 11
        Text = '0'
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 168
        Width = 673
        Height = 217
        Caption = #38065#21253#21151#33021
        TabOrder = 12
        object Label5: TLabel
          Left = 8
          Top = 29
          Width = 36
          Height = 15
          Caption = #38065#21253#20540
        end
        object Label6: TLabel
          Left = 50
          Top = 14
          Width = 38
          Height = 15
          Caption = '10'#36827#21046
        end
        object Label7: TLabel
          Left = 194
          Top = 14
          Width = 38
          Height = 15
          Caption = '16'#36827#21046
        end
        object Label8: TLabel
          Left = 155
          Top = 80
          Width = 36
          Height = 15
          Caption = #24403#21069#20540
        end
        object Label9: TLabel
          Left = 155
          Top = 104
          Width = 36
          Height = 15
          Caption = #30446#30340#22359
        end
        object Button7: TButton
          Left = 344
          Top = 9
          Width = 75
          Height = 25
          Caption = #21021#22987#21270#38065#21253#22359
          TabOrder = 0
          OnClick = Button7Click
        end
        object Edit8: TEdit
          Left = 47
          Top = 30
          Width = 129
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 10
          TabOrder = 1
          OnKeyUp = Edit8KeyUp
        end
        object Edit9: TEdit
          Left = 191
          Top = 30
          Width = 129
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 10
          ReadOnly = True
          TabOrder = 2
        end
        object Button8: TButton
          Left = 344
          Top = 33
          Width = 75
          Height = 25
          Caption = #21152#20540#21629#20196
          TabOrder = 3
          OnClick = Button8Click
        end
        object Button9: TButton
          Left = 344
          Top = 57
          Width = 75
          Height = 25
          Caption = #20943#20540#21629#20196
          TabOrder = 4
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 344
          Top = 81
          Width = 75
          Height = 25
          Caption = #35835#20313#39069
          TabOrder = 5
          OnClick = Button10Click
        end
        object Edit10: TEdit
          Left = 200
          Top = 80
          Width = 105
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 6
        end
        object Button11: TButton
          Left = 344
          Top = 105
          Width = 75
          Height = 25
          Caption = #22791#20221#38065#21253
          TabOrder = 7
          OnClick = Button11Click
        end
        object Edit11: TEdit
          Left = 200
          Top = 106
          Width = 105
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 8
          Text = '0'
        end
      end
      object Button12: TButton
        Left = 184
        Top = 1
        Width = 65
        Height = 25
        Caption = #23547#21345'.ALL'
        TabOrder = 13
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 184
        Top = 25
        Width = 65
        Height = 25
        Caption = #23547#21345'.IDL'
        TabOrder = 14
        OnClick = Button13Click
      end
      object Button14: TButton
        Left = 264
        Top = 1
        Width = 65
        Height = 25
        Caption = #38450#20914#25758
        TabOrder = 15
        OnClick = Button14Click
      end
      object Button15: TButton
        Left = 328
        Top = 1
        Width = 65
        Height = 25
        Caption = #36873#23450#21345
        TabOrder = 16
        OnClick = Button15Click
      end
      object Button16: TButton
        Left = 448
        Top = 1
        Width = 65
        Height = 25
        Caption = #20241#30496#21345
        TabOrder = 17
        OnClick = Button16Click
      end
      object Button36: TButton
        Left = 488
        Top = 56
        Width = 75
        Height = 25
        Caption = 'Button36'
        TabOrder = 18
      end
    end
    object TabSheet2: TTabSheet
      Caption = #26426#22120
      ImageIndex = 1
      object Label11: TLabel
        Left = 8
        Top = 8
        Width = 48
        Height = 15
        Caption = #26426#22120#32534#21495
      end
      object Bevel1: TBevel
        Left = 4
        Top = 150
        Width = 665
        Height = 2
      end
      object Label12: TLabel
        Left = 8
        Top = 192
        Width = 12
        Height = 15
        Caption = #20174
      end
      object Label13: TLabel
        Left = 80
        Top = 192
        Width = 48
        Height = 15
        Caption = #31508#25968#25454#21040
      end
      object Label14: TLabel
        Left = 188
        Top = 192
        Width = 36
        Height = 15
        Caption = #31508#25968#25454
      end
      object Edit12: TEdit
        Left = 56
        Top = 8
        Width = 57
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 0
        Text = '1'
      end
      object Button17: TButton
        Left = 136
        Top = 8
        Width = 65
        Height = 25
        Caption = #28165#38500#25968#25454
        TabOrder = 1
        OnClick = Button17Click
      end
      object Edit13: TEdit
        Left = 0
        Top = 40
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 2
      end
      object Button18: TButton
        Left = 136
        Top = 40
        Width = 65
        Height = 25
        Caption = #35835#21462#26102#38388
        TabOrder = 3
        OnClick = Button18Click
      end
      object Button19: TButton
        Left = 216
        Top = 40
        Width = 65
        Height = 25
        Caption = #19979#20256#26102#38388
        TabOrder = 4
        OnClick = Button19Click
      end
      object Button20: TButton
        Left = 216
        Top = 64
        Width = 65
        Height = 25
        Caption = #19979#20256#31649#29702#21345
        TabOrder = 5
        OnClick = Button20Click
      end
      object Button21: TButton
        Left = 136
        Top = 64
        Width = 65
        Height = 25
        Caption = #35835#21462#31649#29702#21345
        TabOrder = 6
        OnClick = Button21Click
      end
      object Edit14: TEdit
        Left = 0
        Top = 64
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 7
      end
      object Button22: TButton
        Left = 136
        Top = 88
        Width = 113
        Height = 25
        Caption = #19979#20256#19968#27425#26368#22823#28040#36153#39069
        TabOrder = 8
        OnClick = Button22Click
      end
      object Button23: TButton
        Left = 248
        Top = 88
        Width = 33
        Height = 25
        Caption = #35835#21462
        TabOrder = 9
        OnClick = Button23Click
      end
      object MaskEdit1: TMaskEdit
        Left = 0
        Top = 88
        Width = 120
        Height = 23
        EditMask = '999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        TabOrder = 10
        Text = '      .  '
      end
      object Button24: TButton
        Left = 136
        Top = 112
        Width = 113
        Height = 25
        Caption = #19979#20256#26368#22823#28040#36153#24635#39069
        TabOrder = 11
        OnClick = Button24Click
      end
      object Button25: TButton
        Left = 248
        Top = 112
        Width = 33
        Height = 25
        Caption = #35835#21462
        TabOrder = 12
        OnClick = Button25Click
      end
      object MaskEdit2: TMaskEdit
        Left = 0
        Top = 112
        Width = 120
        Height = 23
        EditMask = '99999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 11
        TabOrder = 13
        Text = '        .  '
      end
      object ComboBox1: TComboBox
        Left = 296
        Top = 8
        Width = 81
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 14
        Items.Strings = (
          #26222#36890
          #33756#21333
          #23450#39069
          #32423#21035#26102#27573)
      end
      object Button26: TButton
        Left = 384
        Top = 6
        Width = 75
        Height = 25
        Caption = #19979#20256#28040#36153#31867#21035
        TabOrder = 15
        OnClick = Button26Click
      end
      object Button27: TButton
        Left = 464
        Top = 6
        Width = 75
        Height = 25
        Caption = #35835#21462#28040#36153#31867#21035
        TabOrder = 16
        OnClick = Button27Click
      end
      object ComboBox2: TComboBox
        Left = 296
        Top = 32
        Width = 81
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 17
        Items.Strings = (
          #25346#22833#22411
          #24320#25143#22411)
      end
      object Button28: TButton
        Left = 384
        Top = 30
        Width = 75
        Height = 25
        Caption = #19979#20256#26426#22120#31867#22411
        TabOrder = 18
        OnClick = Button28Click
      end
      object Button29: TButton
        Left = 464
        Top = 30
        Width = 75
        Height = 25
        Caption = #35835#21462#26426#22120#31867#22411
        TabOrder = 19
        OnClick = Button29Click
      end
      object Edit15: TEdit
        Left = 296
        Top = 57
        Width = 81
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 20
      end
      object Button30: TButton
        Left = 384
        Top = 56
        Width = 75
        Height = 25
        Caption = #35835#28040#36153#24635#39069
        TabOrder = 21
        OnClick = Button30Click
      end
      object Button31: TButton
        Left = 464
        Top = 56
        Width = 75
        Height = 25
        Caption = #35835#35760#24405#24635#25968
        TabOrder = 22
        OnClick = Button31Click
      end
      object Button32: TButton
        Left = 384
        Top = 80
        Width = 75
        Height = 25
        Caption = #19979#20256#26426#22120#32534#21495
        TabOrder = 23
        OnClick = Button32Click
      end
      object Edit16: TEdit
        Left = 296
        Top = 80
        Width = 81
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 24
      end
      object Button33: TButton
        Left = 8
        Top = 152
        Width = 41
        Height = 25
        Caption = #25569#25163
        TabOrder = 25
        OnClick = Button33Click
      end
      object Button34: TButton
        Left = 56
        Top = 152
        Width = 41
        Height = 25
        Caption = #22797#20301
        TabOrder = 26
        OnClick = Button34Click
      end
      object Button35: TButton
        Left = 232
        Top = 192
        Width = 75
        Height = 25
        Caption = #37319#38598#25968#25454
        TabOrder = 27
        OnClick = Button35Click
      end
      object Edit17: TEdit
        Left = 24
        Top = 192
        Width = 49
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 28
        Text = '1'
      end
      object Edit18: TEdit
        Left = 136
        Top = 192
        Width = 49
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 29
        Text = '2'
      end
      object Memo1: TMemo
        Left = 0
        Top = 211
        Width = 1140
        Height = 165
        Align = alBottom
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ScrollBars = ssBoth
        TabOrder = 30
        OnDblClick = Memo1DblClick
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      object Label15: TLabel
        Left = 8
        Top = 24
        Width = 35
        Height = 15
        Caption = 'In hex:'
      end
      object Edit19: TEdit
        Left = 48
        Top = 24
        Width = 1073
        Height = 23
        TabOrder = 0
      end
      object Button37: TButton
        Left = 56
        Top = 64
        Width = 75
        Height = 25
        Caption = #36716#25442
        TabOrder = 1
        OnClick = Button37Click
      end
      object Edit20: TEdit
        Left = 48
        Top = 104
        Width = 1073
        Height = 23
        TabOrder = 2
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1148
    Height = 36
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 24
      Height = 15
      Caption = #20018#21475
    end
    object Label10: TLabel
      Left = 176
      Top = 8
      Width = 57
      Height = 18
      Caption = 'Label10'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
    end
    object Button2: TButton
      Left = 88
      Top = 8
      Width = 49
      Height = 25
      Caption = #25171#24320#20018#21475
      TabOrder = 0
      OnClick = Button2Click
    end
    object Edit1: TEdit
      Left = 32
      Top = 8
      Width = 49
      Height = 23
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      TabOrder = 1
      Text = '1'
    end
  end
end
