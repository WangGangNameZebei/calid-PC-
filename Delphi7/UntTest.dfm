object FrmTest: TFrmTest
  Left = 201
  Top = 141
  Width = 744
  Height = 544
  Caption = 'Delphi'#35843#29992#28436#31034'('#20844#21496#20869#37096#36164#26009')'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = PageControl1Change
  PixelsPerInch = 96
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 736
    Height = 30
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label3: TLabel
      Left = 312
      Top = 8
      Width = 6
      Height = 12
      Caption = '0'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
    end
    object edtPort: TLabeledEdit
      Left = 48
      Top = 0
      Width = 57
      Height = 23
      EditLabel.Width = 30
      EditLabel.Height = 12
      EditLabel.Caption = #20018#21475' '
      EditLabel.Font.Charset = ANSI_CHARSET
      EditLabel.Font.Color = clBlue
      EditLabel.Font.Height = -12
      EditLabel.Font.Name = #23435#20307
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
      LabelPosition = lpLeft
      TabOrder = 0
      Text = '1'
    end
    object Button18: TButton
      Left = 112
      Top = 0
      Width = 57
      Height = 25
      Caption = #25171#24320#20018#21475
      TabOrder = 1
      OnClick = Button18Click
    end
    object Button64: TButton
      Left = 648
      Top = 1
      Width = 25
      Height = 25
      Caption = 'V'
      TabOrder = 2
      OnClick = Button64Click
    end
    object Button65: TButton
      Left = 672
      Top = 1
      Width = 25
      Height = 25
      Caption = #65311
      TabOrder = 4
      OnClick = Button65Click
    end
    object Button66: TButton
      Left = 696
      Top = 1
      Width = 25
      Height = 25
      Caption = '..'
      TabOrder = 3
      OnClick = Button66Click
    end
    object Button103: TButton
      Left = 169
      Top = 0
      Width = 88
      Height = 25
      Caption = #26816#27979#35835#20889#22120#20018#21475
      TabOrder = 5
      OnClick = Button103Click
    end
    object Button14: TButton
      Left = 257
      Top = 0
      Width = 40
      Height = 25
      Caption = #40483#21483
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      OnClick = Button14Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 30
    Width = 736
    Height = 480
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = #35835#20889#22120#20844#29992#20989#25968
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -12
      Font.Name = #23435#20307
      Font.Style = []
      ParentFont = False
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 62
        Align = alTop
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label40: TLabel
          Left = 69
          Top = 36
          Width = 24
          Height = 15
          Caption = #27627#31186
        end
        object Button7: TButton
          Left = 208
          Top = 35
          Width = 57
          Height = 25
          Caption = #23547#21345'.IDL'
          TabOrder = 0
          OnClick = Button7Click
        end
        object Button6: TButton
          Left = 144
          Top = 8
          Width = 57
          Height = 25
          Caption = #23547#21345'.ALL'
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button2: TButton
          Left = 208
          Top = 7
          Width = 57
          Height = 25
          Caption = #38450#20914#25758
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 272
          Top = 7
          Width = 57
          Height = 25
          Caption = #36873#23450#21345
          TabOrder = 3
          OnClick = Button3Click
        end
        object edtRead: TEdit
          Left = 8
          Top = 8
          Width = 129
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          ParentFont = False
          TabOrder = 4
        end
        object Button15: TButton
          Left = 336
          Top = 7
          Width = 35
          Height = 25
          Caption = #20241#30496
          TabOrder = 5
          OnClick = Button15Click
        end
        object Edit53: TEdit
          Left = 8
          Top = 32
          Width = 57
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 6
          Text = '5'
        end
        object Button101: TButton
          Left = 104
          Top = 32
          Width = 33
          Height = 25
          Caption = #40483#21483
          TabOrder = 7
          OnClick = Button101Click
        end
        object Button102: TButton
          Left = 144
          Top = 35
          Width = 57
          Height = 25
          Caption = #23547#21345
          TabOrder = 8
          OnClick = Button102Click
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 62
        Width = 728
        Height = 107
        Align = alTop
        Caption = #38065#21253#21151#33021
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        object Label2: TLabel
          Left = 16
          Top = 17
          Width = 36
          Height = 15
          Caption = #25159#21306#65306
        end
        object Label4: TLabel
          Left = 120
          Top = 17
          Width = 24
          Height = 15
          Caption = #22359#65306
        end
        object Label6: TLabel
          Left = 344
          Top = 8
          Width = 71
          Height = 15
          Caption = #24403#21069'16'#36827#21046'   '
        end
        object Label5: TLabel
          Left = 248
          Top = 8
          Width = 71
          Height = 15
          Caption = #24403#21069'10'#36827#21046'   '
        end
        object Label10: TLabel
          Left = 440
          Top = 8
          Width = 99
          Height = 15
          Caption = #22791#20221#38065#21253#21040#30446#30340#22359' '
        end
        object ComboBox1: TComboBox
          Left = 56
          Top = 19
          Width = 57
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 0
          OnChange = ComboBox1Change
        end
        object ComboBox2: TComboBox
          Left = 144
          Top = 18
          Width = 57
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 1
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 41
          Width = 193
          Height = 49
          ItemIndex = 0
          Items.Strings = (
            'A'#23494#38053
            'B'#23494#38053)
          TabOrder = 2
        end
        object Edit1: TEdit
          Left = 72
          Top = 65
          Width = 121
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 12
          TabOrder = 3
          Text = 'FFFFFFFFFFFF'
        end
        object Edit2: TEdit
          Left = 248
          Top = 24
          Width = 89
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 10
          TabOrder = 4
          OnExit = Edit2Exit
          OnKeyPress = Edit2KeyPress
          OnKeyUp = Edit2KeyUp
        end
        object Button4: TButton
          Left = 304
          Top = 64
          Width = 41
          Height = 25
          Caption = #21152#20540
          TabOrder = 5
          OnClick = Button4Click
        end
        object Button5: TButton
          Left = 352
          Top = 64
          Width = 41
          Height = 25
          Caption = #20943#20540
          TabOrder = 6
          OnClick = Button5Click
        end
        object Button8: TButton
          Left = 256
          Top = 64
          Width = 41
          Height = 25
          Caption = #21021#22987#21270
          TabOrder = 7
          OnClick = Button8Click
        end
        object Button11: TButton
          Left = 200
          Top = 64
          Width = 49
          Height = 25
          Caption = #39564#35777
          TabOrder = 8
          OnClick = Button11Click
        end
        object Edit3: TEdit
          Left = 344
          Top = 24
          Width = 89
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 9
        end
        object Button13: TButton
          Left = 400
          Top = 64
          Width = 41
          Height = 25
          Caption = #35835#20313#39069
          TabOrder = 10
          OnClick = Button13Click
        end
        object Button17: TButton
          Left = 448
          Top = 63
          Width = 57
          Height = 25
          Caption = #22791#20221#38065#21253
          TabOrder = 11
          OnClick = Button17Click
        end
        object ComboBox4: TComboBox
          Left = 440
          Top = 24
          Width = 49
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 12
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 169
        Width = 728
        Height = 281
        Align = alClient
        Caption = #25805#20316#26694
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object Label7: TLabel
          Left = 16
          Top = 16
          Width = 36
          Height = 15
          Caption = #25159#21306#65306
        end
        object ComboBox3: TComboBox
          Left = 56
          Top = 16
          Width = 65
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 0
          OnChange = ComboBox3Change
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12'
            '13'
            '14'
            '15')
        end
        object RadioGroup2: TRadioGroup
          Left = 8
          Top = 40
          Width = 185
          Height = 49
          ItemIndex = 0
          Items.Strings = (
            'A'#23494#38053
            'B'#23494#38053)
          TabOrder = 1
        end
        object Edit4: TEdit
          Left = 72
          Top = 58
          Width = 106
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 12
          TabOrder = 2
          Text = 'FFFFFFFFFFFF'
        end
        object L0: TLabeledEdit
          Left = 8
          Top = 108
          Width = 241
          Height = 23
          EditLabel.Width = 19
          EditLabel.Height = 15
          EditLabel.Caption = '0'#22359
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 3
          Text = 'FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF'
        end
        object L1: TLabeledEdit
          Left = 8
          Top = 148
          Width = 241
          Height = 23
          EditLabel.Width = 19
          EditLabel.Height = 15
          EditLabel.Caption = '1'#22359
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 4
        end
        object L2: TLabeledEdit
          Left = 8
          Top = 188
          Width = 241
          Height = 23
          EditLabel.Width = 19
          EditLabel.Height = 15
          EditLabel.Caption = '2'#22359
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 5
        end
        object L3: TLabeledEdit
          Left = 8
          Top = 228
          Width = 241
          Height = 23
          EditLabel.Width = 63
          EditLabel.Height = 15
          EditLabel.Caption = '3'#22359'('#23494#38053#22359')'
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 6
        end
        object Button9: TButton
          Left = 256
          Top = 120
          Width = 41
          Height = 25
          Caption = #35835
          TabOrder = 7
          OnClick = Button9Click
        end
        object Button10: TButton
          Left = 256
          Top = 168
          Width = 41
          Height = 25
          Caption = #20889
          TabOrder = 8
          OnClick = Button10Click
        end
        object Button16: TButton
          Left = 200
          Top = 64
          Width = 49
          Height = 25
          Caption = #39564#35777
          TabOrder = 9
          OnClick = Button16Click
        end
        object Button1: TButton
          Left = 200
          Top = 16
          Width = 75
          Height = 25
          Caption = #28165#31354#26174#31034#26694
          TabOrder = 10
          OnClick = Button1Click
        end
        object Button12: TButton
          Left = 256
          Top = 226
          Width = 57
          Height = 25
          Caption = #25913#20889#23494#38053
          TabOrder = 11
          OnClick = Button12Click
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #20844#20849#21306'/'#38065#21253#21306#20989#25968
      ImageIndex = 1
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 728
        Height = 44
        Align = alTop
      end
      object Button19: TButton
        Left = 216
        Top = 11
        Width = 33
        Height = 25
        Caption = #23547'1'
        TabOrder = 0
        OnClick = Button19Click
      end
      object Edit5: TEdit
        Left = 112
        Top = 18
        Width = 97
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 8
        TabOrder = 1
      end
      object RadioGroup3: TRadioGroup
        Left = 296
        Top = 4
        Width = 113
        Height = 31
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'A'#23494#38053
          'B'#23494#38053)
        TabOrder = 2
      end
      object Button20: TButton
        Left = 536
        Top = 9
        Width = 49
        Height = 25
        Caption = #39564#35777
        TabOrder = 3
        OnClick = Button20Click
      end
      object Edit6: TEdit
        Left = 413
        Top = 13
        Width = 113
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 12
        TabOrder = 4
        Text = 'FFFFFFFFFFFF'
      end
      object snrEdt: TLabeledEdit
        Left = 8
        Top = 19
        Width = 41
        Height = 23
        EditLabel.Width = 24
        EditLabel.Height = 15
        EditLabel.Caption = #25159#21306
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 2
        TabOrder = 5
        Text = '3'
      end
      object bnrEdt: TLabeledEdit
        Left = 64
        Top = 19
        Width = 41
        Height = 23
        EditLabel.Width = 24
        EditLabel.Height = 15
        EditLabel.Caption = #22359#21495
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 2
        TabOrder = 6
        Text = '1'
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 44
        Width = 353
        Height = 406
        Align = alLeft
        Caption = #20844#29992#25968#25454#25159#21306
        TabOrder = 7
        object Label8: TLabel
          Left = 104
          Top = 8
          Width = 114
          Height = 12
          Caption = #20197#19979#26159#20889#22312'1'#22359#30340#20869#23481
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = #23435#20307
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 104
          Top = 69
          Width = 115
          Height = 15
          Caption = #20197#19979#26159#20889#22312'2'#22359#30340#20869#23481
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 208
          Width = 48
          Height = 15
          Caption = #20844#20849#25159#21306
        end
        object Label14: TLabel
          Left = 57
          Top = 208
          Width = 48
          Height = 15
          Caption = #39135#22530#25159#21306
        end
        object Label47: TLabel
          Left = 111
          Top = 208
          Width = 48
          Height = 15
          Caption = #27700#25511#25159#21306
        end
        object Label48: TLabel
          Left = 167
          Top = 208
          Width = 48
          Height = 15
          Caption = #22791#29992#25159#21306
        end
        object Button38: TButton
          Left = 192
          Top = 358
          Width = 73
          Height = 25
          Caption = #35835#32423#21035
          TabOrder = 0
          OnClick = Button38Click
        end
        object Button36: TButton
          Left = 128
          Top = 275
          Width = 75
          Height = 25
          Caption = #35835#21345#24212#29992#26631#31034
          TabOrder = 1
          OnClick = Button36Click
        end
        object Button34: TButton
          Left = 192
          Top = 334
          Width = 75
          Height = 25
          Caption = #35835#21345#21495
          TabOrder = 2
          OnClick = Button34Click
        end
        object Button32: TButton
          Left = 184
          Top = 157
          Width = 75
          Height = 25
          Caption = #35835#38543#26426#23494#30721
          TabOrder = 3
          OnClick = Button32Click
        end
        object Button30: TButton
          Left = 184
          Top = 132
          Width = 75
          Height = 25
          Caption = #35835#29992#25143'id'
          TabOrder = 4
          OnClick = Button30Click
        end
        object Button28: TButton
          Left = 184
          Top = 107
          Width = 75
          Height = 25
          Caption = #35835#23458#25143'id'
          TabOrder = 5
          OnClick = Button28Click
        end
        object Button26: TButton
          Left = 184
          Top = 82
          Width = 75
          Height = 25
          Caption = #35835#32463#38144#21830'id'
          TabOrder = 6
          OnClick = Button26Click
        end
        object Button24: TButton
          Left = 184
          Top = 44
          Width = 75
          Height = 25
          Caption = #35835#22995#21517
          TabOrder = 7
          OnClick = Button24Click
        end
        object Button22: TButton
          Left = 184
          Top = 19
          Width = 75
          Height = 25
          Caption = #35835#32534#21495
          TabOrder = 8
          OnClick = Button22Click
        end
        object Button21: TButton
          Left = 104
          Top = 20
          Width = 75
          Height = 25
          Caption = #20889#32534#21495
          TabOrder = 9
          OnClick = Button21Click
        end
        object Button23: TButton
          Left = 104
          Top = 44
          Width = 75
          Height = 25
          Caption = #20889#22995#21517
          TabOrder = 10
          OnClick = Button23Click
        end
        object Button25: TButton
          Left = 104
          Top = 84
          Width = 75
          Height = 25
          Caption = #20889#32463#38144#21830'id'
          TabOrder = 11
          OnClick = Button25Click
        end
        object Button27: TButton
          Left = 104
          Top = 108
          Width = 75
          Height = 25
          Caption = #20889#23458#25143'id'
          TabOrder = 12
          OnClick = Button27Click
        end
        object Button29: TButton
          Left = 104
          Top = 133
          Width = 75
          Height = 25
          Caption = #20889#29992#25143'id'
          TabOrder = 13
          OnClick = Button29Click
        end
        object Button31: TButton
          Left = 104
          Top = 157
          Width = 75
          Height = 25
          Caption = #20889#38543#26426#23494#30721
          TabOrder = 14
          OnClick = Button31Click
        end
        object Button33: TButton
          Left = 112
          Top = 334
          Width = 75
          Height = 25
          Caption = #20889#21345#21495
          TabOrder = 15
          OnClick = Button33Click
        end
        object Button35: TButton
          Left = 128
          Top = 251
          Width = 75
          Height = 25
          Caption = #20889#21345#24212#29992#26631#31034
          TabOrder = 16
          OnClick = Button35Click
        end
        object Button37: TButton
          Left = 112
          Top = 358
          Width = 73
          Height = 25
          Caption = #20889#32423#21035
          TabOrder = 17
          OnClick = Button37Click
        end
        object Edit14: TEdit
          Left = 16
          Top = 358
          Width = 81
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          ParentFont = False
          TabOrder = 18
          Text = '255'
        end
        object Edit13: TEdit
          Left = 16
          Top = 335
          Width = 81
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 6
          ParentFont = False
          TabOrder = 19
          Text = '220000'
        end
        object Edit12: TEdit
          Left = 8
          Top = 159
          Width = 81
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 5
          ParentFont = False
          TabOrder = 20
          Text = '65535'
        end
        object Edit11: TEdit
          Left = 8
          Top = 136
          Width = 81
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 5
          ParentFont = False
          TabOrder = 21
          Text = '65535'
        end
        object Edit10: TEdit
          Left = 8
          Top = 113
          Width = 81
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 5
          ParentFont = False
          TabOrder = 22
          Text = '65535'
        end
        object Edit9: TEdit
          Left = 8
          Top = 90
          Width = 81
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 5
          ParentFont = False
          TabOrder = 23
          Text = '65535'
        end
        object Edit8: TEdit
          Left = 8
          Top = 48
          Width = 81
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 8
          TabOrder = 24
          Text = 'A'#38463#21834
        end
        object Edit7: TEdit
          Left = 8
          Top = 25
          Width = 81
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 8
          TabOrder = 25
          Text = 'ZZZZZZZZ'
        end
        object Button60: TButton
          Left = 216
          Top = 213
          Width = 59
          Height = 25
          Caption = #35774#23450#25159#21306
          TabOrder = 26
          OnClick = Button60Click
        end
        object Button61: TButton
          Left = 216
          Top = 237
          Width = 64
          Height = 25
          Caption = #35835#24050#35774#25159#21306
          TabOrder = 27
          OnClick = Button61Click
        end
        object Edit22: TEdit
          Left = 8
          Top = 224
          Width = 41
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 28
          Text = '1'
        end
        object Edit23: TEdit
          Left = 57
          Top = 224
          Width = 40
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 29
          Text = '2'
        end
        object Button67: TButton
          Left = 128
          Top = 301
          Width = 97
          Height = 25
          Caption = #23494#30721#20889#20837#31995#32479#21345'1'
          TabOrder = 30
          OnClick = Button67Click
        end
        object Button68: TButton
          Left = 224
          Top = 301
          Width = 57
          Height = 25
          Caption = #35835#20986'1'
          TabOrder = 31
          OnClick = Button68Click
        end
        object Button96: TButton
          Left = 104
          Top = 183
          Width = 73
          Height = 25
          Caption = #20889#31639#27861#26631#31034
          TabOrder = 32
          OnClick = Button96Click
        end
        object Button97: TButton
          Left = 184
          Top = 183
          Width = 73
          Height = 25
          Caption = #35835#31639#27861#26631#31034
          TabOrder = 33
          OnClick = Button97Click
        end
        object Edit51: TEdit
          Left = 8
          Top = 182
          Width = 81
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 34
          Text = '1'
        end
        object Edit54: TEdit
          Left = 111
          Top = 224
          Width = 41
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 35
          Text = '15'
        end
        object Edit55: TEdit
          Left = 167
          Top = 224
          Width = 41
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 36
          Text = '10'
        end
        object ComboBox17: TComboBox
          Left = 8
          Top = 256
          Width = 113
          Height = 23
          Style = csDropDownList
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          ItemIndex = 0
          TabOrder = 37
          Text = '---------------------'
          Items.Strings = (
            '---------------------'
            '1'#29992#25143#21345
            '2'#21806#39277#31995#32479#21345
            '3'#21806#39277#35774#32622#21345
            '4'#21806#39277#37319#38598#21345
            '5'#27700#25511#31995#32479#21345
            '6'#27700#25511#35774#32622#21345
            '7'#27700#25511#37319#38598#21345)
        end
      end
      object GroupBox5: TGroupBox
        Left = 353
        Top = 44
        Width = 375
        Height = 406
        Align = alClient
        Caption = #38065#21253#25159#21306
        TabOrder = 8
        object Label12: TLabel
          Left = 16
          Top = 185
          Width = 75
          Height = 15
          Caption = #22791#20221#21040#30446#30340#22359' '
        end
        object Label41: TLabel
          Left = 15
          Top = 370
          Width = 246
          Height = 15
          Caption = #27880#24847#65306#25353#38062#26631#39064#21069#38754#30340#25968#23383#20195#34920#35201#35835#20889#30340#22359#21495'  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Button39: TButton
          Left = 88
          Top = 7
          Width = 105
          Height = 25
          Caption = #39318#20808#21021#22987#21270#38065#21253#22359
          TabOrder = 0
          OnClick = Button39Click
        end
        object Button40: TButton
          Left = 104
          Top = 33
          Width = 84
          Height = 25
          Caption = '0'#20889#28040#36153#23494#30721
          TabOrder = 1
          OnClick = Button40Click
        end
        object Button41: TButton
          Left = 191
          Top = 33
          Width = 75
          Height = 25
          Caption = #35835#28040#36153#23494#30721
          TabOrder = 2
          OnClick = Button41Click
        end
        object Edit15: TEdit
          Left = 16
          Top = 33
          Width = 82
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 5
          TabOrder = 3
          Text = '88888'
        end
        object Button42: TButton
          Left = 104
          Top = 57
          Width = 84
          Height = 25
          Caption = '0'#20889#26377#25928#26085#26399
          TabOrder = 4
          OnClick = Button42Click
        end
        object Button43: TButton
          Left = 191
          Top = 57
          Width = 75
          Height = 25
          Caption = #35835#26377#25928#26085#26399
          TabOrder = 5
          OnClick = Button43Click
        end
        object Button44: TButton
          Left = 104
          Top = 81
          Width = 84
          Height = 25
          Caption = '0'#20889#20805#20540#26102#38388
          TabOrder = 6
          OnClick = Button44Click
        end
        object Button45: TButton
          Left = 191
          Top = 81
          Width = 75
          Height = 25
          Caption = #35835#20805#20540#26102#38388
          TabOrder = 7
          OnClick = Button45Click
        end
        object Edit16: TEdit
          Left = 16
          Top = 57
          Width = 82
          Height = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 6
          ParentFont = False
          TabOrder = 8
          Text = '061231'
        end
        object Edit17: TEdit
          Left = 16
          Top = 81
          Width = 82
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 8
          TabOrder = 9
          Text = '06122011'
        end
        object Button46: TButton
          Left = 104
          Top = 137
          Width = 73
          Height = 25
          Caption = '1'#20805#20540
          TabOrder = 10
          OnClick = Button46Click
        end
        object Button47: TButton
          Left = 186
          Top = 137
          Width = 81
          Height = 25
          Caption = '1'#20943#20540
          TabOrder = 11
          OnClick = Button47Click
        end
        object Button48: TButton
          Left = 104
          Top = 161
          Width = 73
          Height = 25
          Caption = '1'#35835#20313#39069
          TabOrder = 12
          OnClick = Button48Click
        end
        object MaskEdit1: TMaskEdit
          Left = 16
          Top = 145
          Width = 83
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 13
          Text = '      .00'
        end
        object Button49: TButton
          Left = 104
          Top = 201
          Width = 73
          Height = 25
          Caption = '2'#22791#20221#38065#21253
          TabOrder = 14
          OnClick = Button49Click
        end
        object Edit18: TEdit
          Left = 16
          Top = 201
          Width = 83
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 15
          Text = '2'
        end
        object Button50: TButton
          Left = 104
          Top = 267
          Width = 121
          Height = 25
          Caption = '2'#35835#21345#26368#21518#21047#21345#26102#38388
          TabOrder = 16
          OnClick = Button50Click
        end
        object Edit19: TEdit
          Left = 16
          Top = 267
          Width = 86
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 17
        end
        object Edit20: TEdit
          Left = 16
          Top = 292
          Width = 86
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 8
          TabOrder = 18
          Text = '16000000'
        end
        object Button51: TButton
          Left = 104
          Top = 291
          Width = 89
          Height = 25
          Caption = '2'#20889#21345#20132#26131#35745#27425
          TabOrder = 19
          OnClick = Button51Click
        end
        object Button52: TButton
          Left = 192
          Top = 291
          Width = 81
          Height = 25
          Caption = #35835#21345#20132#26131#35745#27425
          TabOrder = 20
          OnClick = Button52Click
        end
        object Button53: TButton
          Left = 104
          Top = 315
          Width = 88
          Height = 25
          Caption = '2'#20889#26085#20132#26131#35745#27425
          TabOrder = 21
          OnClick = Button53Click
        end
        object Button54: TButton
          Left = 192
          Top = 315
          Width = 81
          Height = 25
          Caption = #35835#26085#20132#26131#35745#27425
          TabOrder = 22
          OnClick = Button54Click
        end
        object Edit21: TEdit
          Left = 16
          Top = 317
          Width = 86
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          TabOrder = 23
          Text = '255'
        end
        object Button55: TButton
          Left = 186
          Top = 161
          Width = 81
          Height = 25
          Caption = '2'#35835#22791#20221#20313#39069
          TabOrder = 24
          OnClick = Button55Click
        end
        object Button56: TButton
          Left = 104
          Top = 112
          Width = 73
          Height = 25
          Caption = '0'#35835#20805#21069#20313#39069
          TabOrder = 25
          OnClick = Button56Click
        end
        object Button57: TButton
          Left = 186
          Top = 112
          Width = 81
          Height = 25
          Caption = '0'#35835#20805#21518#20313#39069
          TabOrder = 26
          OnClick = Button57Click
        end
        object Button58: TButton
          Left = 104
          Top = 225
          Width = 97
          Height = 25
          Caption = '1'#22791#20221#20805#21069#20313#39069
          TabOrder = 27
          OnClick = Button58Click
        end
        object Button59: TButton
          Left = 200
          Top = 225
          Width = 89
          Height = 25
          Caption = '1'#22791#20221#20805#21518#20313#39069
          TabOrder = 28
          OnClick = Button59Click
        end
        object Button62: TButton
          Left = 104
          Top = 339
          Width = 88
          Height = 25
          Caption = '2'#20889#26085#20132#26131#37329#39069
          TabOrder = 29
          OnClick = Button62Click
        end
        object Button63: TButton
          Left = 192
          Top = 339
          Width = 81
          Height = 25
          Caption = #35835#26085#20132#26131#37329#39069
          TabOrder = 30
          OnClick = Button63Click
        end
        object MaskEdit2: TMaskEdit
          Left = 16
          Top = 339
          Width = 86
          Height = 23
          EditMask = '999999.99;1;_'
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          TabOrder = 31
          Text = '      .00'
        end
        object Button98: TButton
          Left = 192
          Top = 7
          Width = 49
          Height = 25
          Caption = #21028#26029
          TabOrder = 32
          OnClick = Button98Click
        end
        object Button99: TButton
          Left = 248
          Top = 7
          Width = 49
          Height = 25
          Caption = #25193#23637
          TabOrder = 33
          OnClick = Button99Click
        end
      end
      object Button100: TButton
        Left = 256
        Top = 11
        Width = 33
        Height = 25
        Caption = #23547'2'
        TabOrder = 9
        OnClick = Button100Click
      end
      object Button127: TButton
        Left = 600
        Top = 8
        Width = 75
        Height = 25
        Caption = #35835#31995#32479#21345
        TabOrder = 10
        OnClick = Button127Click
      end
    end
    object TabSheet3: TTabSheet
      Caption = #26426#22120#20989#25968
      ImageIndex = 2
      object Bevel2: TBevel
        Left = 0
        Top = 32
        Width = 889
        Height = 2
      end
      object Label20: TLabel
        Left = 8
        Top = 294
        Width = 48
        Height = 15
        Caption = #24490#29615#23384#20648
      end
      object Label39: TLabel
        Left = 64
        Top = 294
        Width = 72
        Height = 15
        Caption = #35745#26102#25110#35745#27969#37327
      end
      object Label50: TLabel
        Left = 144
        Top = 294
        Width = 48
        Height = 15
        Caption = #21333#20301#25968#37327
      end
      object Label51: TLabel
        Left = 331
        Top = 296
        Width = 164
        Height = 15
        Caption = #21333#20301#31186#25110#33033#20914'('#32487#30005#22120#38381#21512#26102#38388')'
      end
      object Label74: TLabel
        Left = 104
        Top = 350
        Width = 72
        Height = 15
        Caption = #36716#20837#24080#25143#25159#21306
      end
      object Label75: TLabel
        Left = 11
        Top = 350
        Width = 72
        Height = 15
        Caption = #36716#20986#24080#25143#25159#21306
      end
      object Label78: TLabel
        Left = 202
        Top = 295
        Width = 60
        Height = 15
        Caption = #24320#38400#33033#20914#25968
      end
      object Label79: TLabel
        Left = 268
        Top = 296
        Width = 60
        Height = 15
        Caption = #24179#34913#33033#20914#25968
      end
      object Label103: TLabel
        Left = 117
        Top = 11
        Width = 10
        Height = 15
        Caption = 'ip'
      end
      object Label104: TLabel
        Left = 226
        Top = 11
        Width = 24
        Height = 15
        Caption = #31471#21475
      end
      object Label105: TLabel
        Left = 296
        Top = 11
        Width = 48
        Height = 15
        Caption = #21327#35758#31867#22411
      end
      object LabMach: TLabeledEdit
        Left = 56
        Top = 8
        Width = 41
        Height = 23
        EditLabel.Width = 48
        EditLabel.Height = 15
        EditLabel.Caption = #26426#22120#32534#21495
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        LabelPosition = lpLeft
        TabOrder = 0
        Text = '1'
      end
      object Button69: TButton
        Left = 182
        Top = 38
        Width = 75
        Height = 25
        Caption = #35835#21462#26102#38388
        TabOrder = 1
        OnClick = Button69Click
      end
      object Edit24: TEdit
        Left = 56
        Top = 40
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 2
      end
      object Button70: TButton
        Left = 262
        Top = 38
        Width = 75
        Height = 25
        Caption = #19979#20256#26102#38388
        TabOrder = 3
        OnClick = Button70Click
      end
      object Button75: TButton
        Left = 342
        Top = 38
        Width = 75
        Height = 25
        Caption = #28165#38500#25968#25454
        TabOrder = 4
        OnClick = Button75Click
      end
      object Button76: TButton
        Left = 183
        Top = 231
        Width = 97
        Height = 25
        Caption = #20889#20837#26426#22120#32534#21495
        TabOrder = 5
        OnClick = Button76Click
      end
      object Edit32: TEdit
        Left = 57
        Top = 232
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 6
        Text = '999'
      end
      object Button78: TButton
        Left = 183
        Top = 149
        Width = 97
        Height = 25
        Caption = #20889#20837#28040#36153#31867#21035
        TabOrder = 7
        OnClick = Button78Click
      end
      object Button79: TButton
        Left = 286
        Top = 148
        Width = 92
        Height = 25
        Caption = #35835#28040#36153#31867#21035
        TabOrder = 8
        OnClick = Button79Click
      end
      object Button80: TButton
        Left = 183
        Top = 176
        Width = 97
        Height = 25
        Caption = #35774#32622#26426#22120#31867#22411
        TabOrder = 9
        OnClick = Button80Click
      end
      object Button81: TButton
        Left = 286
        Top = 176
        Width = 92
        Height = 25
        Caption = #35835#21462#26426#22120#31867#22411
        TabOrder = 10
        OnClick = Button81Click
      end
      object Button82: TButton
        Left = 182
        Top = 67
        Width = 75
        Height = 25
        Caption = #35774#32622#31649#29702#21345
        TabOrder = 11
        OnClick = Button82Click
      end
      object Edit35: TEdit
        Left = 56
        Top = 68
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 12
        Text = '16777215'
      end
      object Button83: TButton
        Left = 262
        Top = 67
        Width = 75
        Height = 25
        Caption = #35835#21462#31649#29702#21345
        TabOrder = 13
        OnClick = Button83Click
      end
      object Button84: TButton
        Left = 182
        Top = 95
        Width = 123
        Height = 25
        Caption = #35774#32622#19968#27425#26368#22823#28040#36153#39069
        TabOrder = 14
        OnClick = Button84Click
      end
      object Button85: TButton
        Left = 320
        Top = 94
        Width = 65
        Height = 25
        Caption = #35835#21462
        TabOrder = 15
        OnClick = Button85Click
      end
      object MaskEdit3: TMaskEdit
        Left = 56
        Top = 96
        Width = 121
        Height = 23
        EditMask = '999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        TabOrder = 16
        Text = '      .00'
      end
      object Button88: TButton
        Left = 183
        Top = 203
        Width = 97
        Height = 25
        Caption = #35835#28040#36153#24635#39069
        TabOrder = 17
        OnClick = Button88Click
      end
      object Button89: TButton
        Left = 286
        Top = 203
        Width = 92
        Height = 25
        Caption = #35835#35760#24405#24635#25968
        TabOrder = 18
        OnClick = Button89Click
      end
      object Edit36: TEdit
        Left = 57
        Top = 204
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 19
      end
      object Button90: TButton
        Left = 182
        Top = 122
        Width = 123
        Height = 25
        Caption = #35774#32622#26426#22120#26368#22823#28040#36153#24635#39069
        TabOrder = 20
        OnClick = Button90Click
      end
      object Button91: TButton
        Left = 320
        Top = 121
        Width = 65
        Height = 25
        Caption = #35835#21462
        TabOrder = 21
        OnClick = Button91Click
      end
      object MaskEdit4: TMaskEdit
        Left = 56
        Top = 123
        Width = 121
        Height = 23
        EditMask = '99999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 11
        TabOrder = 22
        Text = '        .00'
      end
      object ComboBox10: TComboBox
        Left = 56
        Top = 150
        Width = 122
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 23
        Items.Strings = (
          #26222#36890
          #33756#21333
          #23450#39069
          #32423#21035#26102#27573)
      end
      object ComboBox11: TComboBox
        Left = 56
        Top = 177
        Width = 122
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 24
        Items.Strings = (
          #25346#22833#22411
          #24320#25143#22411)
      end
      object ComboBox12: TComboBox
        Left = 20
        Top = 310
        Width = 53
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 25
        Items.Strings = (
          #21542
          #26159)
      end
      object ComboBox13: TComboBox
        Left = 76
        Top = 310
        Width = 53
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 26
        Items.Strings = (
          #35745#26102#22411
          #35745#27969#37327#22411)
      end
      object Edit33: TEdit
        Left = 140
        Top = 310
        Width = 61
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 3
        TabOrder = 27
        Text = '255'
      end
      object Edit34: TEdit
        Left = 333
        Top = 311
        Width = 61
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 3
        TabOrder = 28
        Text = '255'
      end
      object Button110: TButton
        Left = 416
        Top = 316
        Width = 75
        Height = 25
        Caption = #20256#26426#22120#21442#25968
        TabOrder = 29
        OnClick = Button110Click
      end
      object Button111: TButton
        Left = 504
        Top = 316
        Width = 75
        Height = 25
        Caption = #35835#21462#26426#22120#21442#25968
        TabOrder = 30
        OnClick = Button111Click
      end
      object Button112: TButton
        Left = 214
        Top = 366
        Width = 75
        Height = 25
        Caption = #20256#36716#24080#26426#21442#25968
        TabOrder = 31
        OnClick = Button112Click
      end
      object Edit58: TEdit
        Left = 20
        Top = 366
        Width = 61
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 3
        TabOrder = 32
        Text = '2'
      end
      object Edit59: TEdit
        Left = 108
        Top = 366
        Width = 61
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 3
        TabOrder = 33
        Text = '3'
      end
      object Button113: TButton
        Left = 302
        Top = 366
        Width = 75
        Height = 25
        Caption = #35835#36716#24080#26426#21442#25968
        TabOrder = 34
        OnClick = Button113Click
      end
      object Edit90: TEdit
        Left = 205
        Top = 311
        Width = 61
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 3
        TabOrder = 35
        Text = '255'
      end
      object Edit91: TEdit
        Left = 269
        Top = 311
        Width = 61
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 3
        TabOrder = 36
        Text = '255'
      end
      object Edit113: TEdit
        Left = 128
        Top = 8
        Width = 89
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 37
        Text = '192.168.1.201'
      end
      object Edit114: TEdit
        Left = 248
        Top = 8
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 38
        Text = '1507'
      end
      object Button130: TButton
        Left = 424
        Top = 8
        Width = 75
        Height = 25
        Caption = 'SetConnect'
        TabOrder = 39
        OnClick = Button130Click
      end
      object ComboBox18: TComboBox
        Left = 344
        Top = 8
        Width = 65
        Height = 23
        Style = csDropDownList
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 40
        Items.Strings = (
          '0  TCP'
          '1 UDP'
          '2 RS485')
      end
    end
    object TabSheet4: TTabSheet
      Caption = #26426#22120#25193#23637#20989#25968
      ImageIndex = 3
      object Label22: TLabel
        Left = 10
        Top = 170
        Width = 48
        Height = 15
        Caption = #32423#21035#32534#21495
      end
      object Label23: TLabel
        Left = 66
        Top = 170
        Width = 24
        Height = 15
        Caption = #38480#39069
      end
      object Label24: TLabel
        Left = 146
        Top = 170
        Width = 24
        Height = 15
        Caption = #38480#27425
      end
      object Label25: TLabel
        Left = 202
        Top = 170
        Width = 36
        Height = 15
        Caption = #25171#20960#25240
      end
      object Label26: TLabel
        Left = 250
        Top = 170
        Width = 72
        Height = 15
        Caption = #21345#19978#26368#23567#20313#39069
      end
      object Bevel5: TBevel
        Left = 1
        Top = 57
        Width = 369
        Height = 2
      end
      object Label27: TLabel
        Left = 8
        Top = 210
        Width = 48
        Height = 15
        Caption = #26102#27573#24207#21495
      end
      object Label28: TLabel
        Left = 64
        Top = 210
        Width = 120
        Height = 15
        Caption = #20174#20960#28857#20960#20998#21040#20960#28857#20960#20998
      end
      object Label29: TLabel
        Left = 0
        Top = 250
        Width = 91
        Height = 15
        Caption = #31532'1'#27425#21047#21345#25187#30340#38065
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 0
        Top = 290
        Width = 91
        Height = 15
        Caption = #31532'2'#27425#21047#21345#25187#30340#38065
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 104
        Top = 290
        Width = 91
        Height = 15
        Caption = #31532'3'#27425#21047#21345#25187#30340#38065
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 208
        Top = 290
        Width = 103
        Height = 15
        Caption = '3'#27425#20197#21518#21047#21345#25187#30340#38065
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 389
        Top = 104
        Width = 24
        Height = 15
        Caption = #37096#31867
      end
      object Label33: TLabel
        Left = 451
        Top = 104
        Width = 24
        Height = 15
        Caption = #21517#31216
      end
      object Label34: TLabel
        Left = 405
        Top = 144
        Width = 24
        Height = 15
        Caption = #37096#31867
      end
      object Label35: TLabel
        Left = 469
        Top = 145
        Width = 24
        Height = 15
        Caption = #38190#21495
      end
      object Label36: TLabel
        Left = 531
        Top = 145
        Width = 24
        Height = 15
        Caption = #37329#39069
      end
      object Label37: TLabel
        Left = 405
        Top = 169
        Width = 24
        Height = 15
        Caption = #21517#31216
      end
      object Label38: TLabel
        Left = 8
        Top = 81
        Width = 24
        Height = 15
        Caption = #21345#21495
      end
      object Label45: TLabel
        Left = 21
        Top = 103
        Width = 116
        Height = 15
        Caption = #24320#25143#22411#65306' 0'#25346#22833' 1'#35299#25346
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 21
        Top = 119
        Width = 116
        Height = 15
        Caption = #25346#22833#22411#65306' 0'#35299#25346' 1'#25346#22833
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Label83: TLabel
        Left = 389
        Top = 5
        Width = 123
        Height = 15
        Caption = #34892#21495'     '#38656#35201#26174#31034#30340#20869#23481
      end
      object Label84: TLabel
        Left = 387
        Top = 53
        Width = 211
        Height = 15
        Caption = #24207#21495'     '#25171#38083#26102#38388'24'#23567#26102#21046'  '#21709#38083#26102#38271'('#31186')'
      end
      object Label88: TLabel
        Left = 94
        Top = 250
        Width = 116
        Height = 15
        Caption = #24320#38376#23494#30721'('#38376#31105#29366#24577#19979')'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object Bevel8: TBevel
        Left = 6
        Top = 161
        Width = 369
        Height = 2
      end
      object Bevel9: TBevel
        Left = 372
        Top = 51
        Width = 369
        Height = 2
      end
      object Bevel10: TBevel
        Left = 369
        Top = 97
        Width = 374
        Height = 2
      end
      object Bevel11: TBevel
        Left = 364
        Top = 133
        Width = 375
        Height = 2
      end
      object Label106: TLabel
        Left = 21
        Top = 35
        Width = 10
        Height = 15
        Caption = 'ip'
      end
      object Label107: TLabel
        Left = 130
        Top = 35
        Width = 24
        Height = 15
        Caption = #31471#21475
      end
      object Label108: TLabel
        Left = 200
        Top = 35
        Width = 48
        Height = 15
        Caption = #21327#35758#31867#22411
      end
      object Label109: TLabel
        Left = 95
        Top = 82
        Width = 12
        Height = 15
        Caption = #33267
      end
      object LabMach2: TLabeledEdit
        Left = 56
        Top = 1
        Width = 33
        Height = 23
        EditLabel.Width = 48
        EditLabel.Height = 15
        EditLabel.Caption = #26426#22120#32534#21495
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        LabelPosition = lpLeft
        TabOrder = 0
        Text = '1'
      end
      object Button71: TButton
        Left = 184
        Top = 1
        Width = 41
        Height = 25
        Caption = #25569#25163
        TabOrder = 1
        OnClick = Button71Click
      end
      object Button72: TButton
        Left = 232
        Top = 1
        Width = 41
        Height = 25
        Caption = #22797#20301
        TabOrder = 2
        OnClick = Button72Click
      end
      object Button92: TButton
        Left = 192
        Top = 75
        Width = 89
        Height = 25
        Caption = 'SetCard  0'
        TabOrder = 3
        OnClick = Button92Click
      end
      object Edit38: TEdit
        Left = 40
        Top = 79
        Width = 49
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 4
        Text = '7'
      end
      object Button93: TButton
        Left = 192
        Top = 99
        Width = 89
        Height = 25
        Caption = 'DelCard  1'
        TabOrder = 5
        OnClick = Button93Click
      end
      object Button86: TButton
        Left = 296
        Top = 304
        Width = 75
        Height = 25
        Caption = #19979#20256#32423#21035#26102#27573
        TabOrder = 6
        OnClick = Button86Click
      end
      object Edit39: TEdit
        Left = 10
        Top = 186
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 7
        Text = '16'
      end
      object MaskEdit5: TMaskEdit
        Left = 66
        Top = 186
        Width = 73
        Height = 23
        EditMask = '999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        TabOrder = 8
        Text = '      .00'
      end
      object Edit40: TEdit
        Left = 146
        Top = 186
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 9
        Text = '255'
      end
      object Edit41: TEdit
        Left = 202
        Top = 186
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 10
        Text = '100'
      end
      object MaskEdit6: TMaskEdit
        Left = 250
        Top = 186
        Width = 73
        Height = 23
        EditMask = '999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        TabOrder = 11
        Text = '      .00'
      end
      object Edit42: TEdit
        Left = 8
        Top = 226
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 12
        Text = '1'
      end
      object Edit43: TEdit
        Left = 64
        Top = 226
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 13
        Text = '0800'
      end
      object Edit44: TEdit
        Left = 120
        Top = 226
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 14
        Text = '1200'
      end
      object MaskEdit7: TMaskEdit
        Left = 8
        Top = 266
        Width = 72
        Height = 23
        EditMask = '999999.99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        ParentFont = False
        TabOrder = 15
        Text = '      .00'
      end
      object MaskEdit8: TMaskEdit
        Left = 8
        Top = 306
        Width = 72
        Height = 23
        EditMask = '999999.99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        ParentFont = False
        TabOrder = 16
        Text = '      .00'
      end
      object MaskEdit9: TMaskEdit
        Left = 104
        Top = 306
        Width = 72
        Height = 23
        EditMask = '999999.99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        ParentFont = False
        TabOrder = 17
        Text = '      .00'
      end
      object MaskEdit10: TMaskEdit
        Left = 208
        Top = 306
        Width = 72
        Height = 23
        EditMask = '999999.99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -12
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        ParentFont = False
        TabOrder = 18
        Text = '      .00'
      end
      object Button87: TButton
        Left = 588
        Top = 103
        Width = 89
        Height = 25
        Caption = #35774#32622#37096#31867#21517#31216
        TabOrder = 19
        OnClick = Button87Click
      end
      object Edit37: TEdit
        Left = 416
        Top = 103
        Width = 33
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 1
        TabOrder = 20
        Text = 'A'
      end
      object Edit45: TEdit
        Left = 477
        Top = 102
        Width = 100
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 10
        TabOrder = 21
        Text = #28895#37202#31958#37259#32905
      end
      object Button94: TButton
        Left = 579
        Top = 171
        Width = 105
        Height = 25
        Caption = #35774#32622#25353#38190#37329#39069'\'#21517#31216
        TabOrder = 22
        OnClick = Button94Click
      end
      object Edit46: TEdit
        Left = 432
        Top = 145
        Width = 33
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 1
        TabOrder = 23
        Text = 'A'
      end
      object Edit47: TEdit
        Left = 495
        Top = 144
        Width = 28
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 10
        TabOrder = 24
        Text = '0'
      end
      object MaskEdit11: TMaskEdit
        Left = 560
        Top = 143
        Width = 81
        Height = 23
        EditMask = '999999.99;1;_'
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 9
        TabOrder = 25
        Text = '      .00'
      end
      object Edit48: TEdit
        Left = 432
        Top = 167
        Width = 97
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 13
        TabOrder = 26
        Text = #30333#27801#29260#39321#28895#36719
      end
      object Edit95: TEdit
        Left = 112
        Top = 79
        Width = 33
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 27
        Text = '7'
      end
      object Button117: TButton
        Left = 589
        Top = 20
        Width = 89
        Height = 25
        Caption = #35774#32622#26426#22120#23631#24149
        TabOrder = 28
        OnClick = Button117Click
      end
      object Edit96: TEdit
        Left = 429
        Top = 21
        Width = 132
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 16
        TabOrder = 29
        Text = #28145#22323#26041#21345#27426#36814#20320#65281
      end
      object ComboBox14: TComboBox
        Left = 389
        Top = 21
        Width = 41
        Height = 23
        Style = csDropDownList
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 30
        Text = '1'
        Items.Strings = (
          '1'
          '2'
          '3')
      end
      object ComboBox15: TComboBox
        Left = 387
        Top = 69
        Width = 41
        Height = 23
        Style = csDropDownList
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        ItemIndex = 0
        TabOrder = 31
        Text = '0'
        Items.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9')
      end
      object Edit97: TEdit
        Left = 427
        Top = 69
        Width = 65
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 16
        TabOrder = 32
        Text = '2359'
      end
      object Button118: TButton
        Left = 587
        Top = 72
        Width = 89
        Height = 25
        Caption = #35774#32622#25171#38083#20449#24687
        TabOrder = 33
        OnClick = Button118Click
      end
      object Edit99: TEdit
        Left = 531
        Top = 69
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 16
        TabOrder = 34
        Text = '255'
      end
      object Button126: TButton
        Left = 480
        Top = 288
        Width = 75
        Height = 25
        Caption = 'Button126'
        TabOrder = 35
        OnClick = Button126Click
      end
      object Edit115: TEdit
        Left = 32
        Top = 32
        Width = 89
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 36
        Text = '192.168.1.201'
      end
      object Edit116: TEdit
        Left = 152
        Top = 32
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 37
        Text = '1507'
      end
      object ComboBox19: TComboBox
        Left = 248
        Top = 32
        Width = 65
        Height = 23
        Style = csDropDownList
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 15
        TabOrder = 38
        Items.Strings = (
          '0  TCP'
          '1 UDP'
          '2 RS485')
      end
      object Button131: TButton
        Left = 104
        Top = 1
        Width = 75
        Height = 25
        Caption = 'SetConnect'
        TabOrder = 39
        OnClick = Button131Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #21046#20316#21151#33021#21345
      ImageIndex = 4
      object GroupBox6: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 450
        Align = alClient
        Caption = #21508#31181#21151#33021#21345
        TabOrder = 0
        object Label9: TLabel
          Left = 56
          Top = 17
          Width = 48
          Height = 15
          Caption = #20844#20849#25159#21306
        end
        object Label49: TLabel
          Left = 105
          Top = 17
          Width = 48
          Height = 15
          Caption = #38065#21253#25159#21306
        end
        object Label52: TLabel
          Left = 491
          Top = 100
          Width = 103
          Height = 15
          Caption = '3'#27425#20197#21518#21047#21345#25187#30340#38065
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label53: TLabel
          Left = 395
          Top = 100
          Width = 91
          Height = 15
          Caption = #31532'3'#27425#21047#21345#25187#30340#38065
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label54: TLabel
          Left = 299
          Top = 100
          Width = 91
          Height = 15
          Caption = #31532'2'#27425#21047#21345#25187#30340#38065
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label55: TLabel
          Left = 203
          Top = 100
          Width = 91
          Height = 15
          Caption = #31532'1'#27425#21047#21345#25187#30340#38065
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Label56: TLabel
          Left = 64
          Top = 100
          Width = 120
          Height = 15
          Caption = #20174#20960#28857#20960#20998#21040#20960#28857#20960#20998
        end
        object Label57: TLabel
          Left = 8
          Top = 100
          Width = 48
          Height = 15
          Caption = #26102#27573#24207#21495
        end
        object Label58: TLabel
          Left = 248
          Top = 55
          Width = 72
          Height = 15
          Caption = #21345#19978#26368#23567#20313#39069
        end
        object Label59: TLabel
          Left = 200
          Top = 55
          Width = 36
          Height = 15
          Caption = #25171#20960#25240
        end
        object Label60: TLabel
          Left = 144
          Top = 55
          Width = 24
          Height = 15
          Caption = #38480#27425
        end
        object Label61: TLabel
          Left = 64
          Top = 55
          Width = 24
          Height = 15
          Caption = #38480#39069
        end
        object Label62: TLabel
          Left = 8
          Top = 55
          Width = 48
          Height = 15
          Caption = #32423#21035#32534#21495
        end
        object Label63: TLabel
          Left = 8
          Top = 248
          Width = 24
          Height = 15
          Caption = #26426#21495
        end
        object Label64: TLabel
          Left = 40
          Top = 248
          Width = 48
          Height = 15
          Caption = #28040#36153#31867#21035
        end
        object Label65: TLabel
          Left = 96
          Top = 248
          Width = 48
          Height = 15
          Caption = #26426#22120#31867#22411
        end
        object Label66: TLabel
          Left = 160
          Top = 248
          Width = 36
          Height = 15
          Caption = #31649#29702#21345
        end
        object Label67: TLabel
          Left = 208
          Top = 248
          Width = 48
          Height = 15
          Caption = #24490#29615#23384#20648
        end
        object Label68: TLabel
          Left = 264
          Top = 248
          Width = 72
          Height = 15
          Caption = #35745#26102#25110#35745#27969#37327
        end
        object Label69: TLabel
          Left = 344
          Top = 248
          Width = 48
          Height = 15
          Caption = #21333#20301#25968#37327
        end
        object Label70: TLabel
          Left = 536
          Top = 248
          Width = 180
          Height = 15
          Caption = #21333#20301#31186#25110#33033#20914#65288#32487#30005#22120#38381#21512#26102#38388#65289
        end
        object Label71: TLabel
          Left = 8
          Top = 367
          Width = 48
          Height = 15
          Caption = #24403#21069#26102#38388
        end
        object Label72: TLabel
          Left = 112
          Top = 367
          Width = 24
          Height = 15
          Caption = #26143#26399
        end
        object Label73: TLabel
          Left = 8
          Top = 323
          Width = 72
          Height = 15
          Caption = #35201#20889#20837#30340#20869#23481
        end
        object Label76: TLabel
          Left = 403
          Top = 248
          Width = 60
          Height = 15
          Caption = #24320#38400#33033#20914#25968
        end
        object Label77: TLabel
          Left = 470
          Top = 248
          Width = 60
          Height = 15
          Caption = #24179#34913#33033#20914#25968
        end
        object Label80: TLabel
          Left = 8
          Top = 296
          Width = 24
          Height = 15
          Caption = #26426#21495
        end
        object Label81: TLabel
          Left = 85
          Top = 296
          Width = 48
          Height = 15
          Caption = #35760#24405#24635#25968
        end
        object Label82: TLabel
          Left = 184
          Top = 296
          Width = 48
          Height = 15
          Caption = #28040#36153#24635#39069
        end
        object Label87: TLabel
          Left = 162
          Top = 117
          Width = 48
          Height = 15
          Caption = #24320#38376#23494#30721
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object Bevel7: TBevel
          Left = 4
          Top = 96
          Width = 604
          Height = 2
        end
        object Bevel12: TBevel
          Left = 6
          Top = 243
          Width = 689
          Height = 2
        end
        object Bevel13: TBevel
          Left = 2
          Top = 291
          Width = 689
          Height = 2
        end
        object Bevel14: TBevel
          Left = 3
          Top = 320
          Width = 689
          Height = 2
        end
        object Bevel15: TBevel
          Left = 3
          Top = 366
          Width = 689
          Height = 2
        end
        object Label85: TLabel
          Left = 160
          Top = 17
          Width = 36
          Height = 15
          Caption = #24207#21015#21495
        end
        object Label86: TLabel
          Left = 230
          Top = 17
          Width = 60
          Height = 15
          Caption = #20844#20849#21306#23494#38053
        end
        object Label89: TLabel
          Left = 325
          Top = 16
          Width = 60
          Height = 15
          Caption = #38065#21253#21306#23494#38053
        end
        object Bevel16: TBevel
          Left = 5
          Top = 53
          Width = 604
          Height = 2
        end
        object Label113: TLabel
          Left = 8
          Top = 408
          Width = 34
          Height = 15
          Caption = #26426#22120'ip'
        end
        object Label114: TLabel
          Left = 152
          Top = 408
          Width = 34
          Height = 15
          Caption = #30005#33041'ip'
        end
        object Label115: TLabel
          Left = 296
          Top = 408
          Width = 49
          Height = 15
          Caption = #30005#33041'MAC'
        end
        object Edit56: TEdit
          Left = 56
          Top = 30
          Width = 41
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 0
          Text = '1'
        end
        object Edit57: TEdit
          Left = 108
          Top = 30
          Width = 40
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 2
          TabOrder = 1
          Text = '2'
        end
        object Button104: TButton
          Left = 336
          Top = 375
          Width = 75
          Height = 25
          Caption = #28040#36153#26426#22797#20301#21345
          TabOrder = 2
          OnClick = Button104Click
        end
        object MaskEdit12: TMaskEdit
          Left = 498
          Top = 116
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 3
          Text = '      .00'
        end
        object MaskEdit13: TMaskEdit
          Left = 395
          Top = 116
          Width = 64
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 4
          Text = '      .00'
        end
        object MaskEdit14: TMaskEdit
          Left = 299
          Top = 116
          Width = 67
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 5
          Text = '      .00'
        end
        object MaskEdit15: TMaskEdit
          Left = 211
          Top = 116
          Width = 68
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 6
          Text = '      .00'
        end
        object Edit63: TEdit
          Left = 8
          Top = 116
          Width = 37
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 7
          Text = '1'
        end
        object Edit64: TEdit
          Left = 64
          Top = 116
          Width = 37
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 8
          Text = '0000'
        end
        object Edit65: TEdit
          Left = 120
          Top = 116
          Width = 37
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 9
          Text = '0800'
        end
        object Edit66: TEdit
          Left = 8
          Top = 71
          Width = 37
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 10
          Text = '16'
        end
        object MaskEdit16: TMaskEdit
          Left = 64
          Top = 71
          Width = 73
          Height = 23
          EditMask = '999999.99;1;_'
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          TabOrder = 11
          Text = '      .00'
        end
        object Edit67: TEdit
          Left = 144
          Top = 71
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 12
          Text = '255'
        end
        object Edit68: TEdit
          Left = 200
          Top = 71
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 13
          Text = '100'
        end
        object MaskEdit17: TMaskEdit
          Left = 248
          Top = 71
          Width = 73
          Height = 23
          EditMask = '999999.99;1;_'
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          TabOrder = 14
          Text = '      .00'
        end
        object Edit69: TEdit
          Left = 8
          Top = 140
          Width = 37
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 15
          Text = '2'
        end
        object Edit70: TEdit
          Left = 63
          Top = 140
          Width = 38
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 16
          Text = '0801'
        end
        object Edit71: TEdit
          Left = 119
          Top = 140
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 17
          Text = '1200'
        end
        object MaskEdit18: TMaskEdit
          Left = 211
          Top = 140
          Width = 69
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 18
          Text = '      .00'
        end
        object MaskEdit19: TMaskEdit
          Left = 299
          Top = 140
          Width = 68
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 19
          Text = '      .00'
        end
        object MaskEdit20: TMaskEdit
          Left = 395
          Top = 140
          Width = 64
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 20
          Text = '      .00'
        end
        object MaskEdit21: TMaskEdit
          Left = 498
          Top = 140
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 21
          Text = '      .00'
        end
        object Edit72: TEdit
          Left = 7
          Top = 165
          Width = 38
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 22
          Text = '3'
        end
        object Edit73: TEdit
          Left = 63
          Top = 165
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 23
          Text = '1201'
        end
        object Edit74: TEdit
          Left = 119
          Top = 165
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 24
          Text = '1300'
        end
        object MaskEdit22: TMaskEdit
          Left = 212
          Top = 165
          Width = 70
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 25
          Text = '      .00'
        end
        object MaskEdit23: TMaskEdit
          Left = 299
          Top = 165
          Width = 69
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 26
          Text = '      .00'
        end
        object MaskEdit24: TMaskEdit
          Left = 395
          Top = 165
          Width = 65
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 27
          Text = '      .00'
        end
        object MaskEdit25: TMaskEdit
          Left = 498
          Top = 165
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 28
          Text = '      .00'
        end
        object Edit75: TEdit
          Left = 7
          Top = 191
          Width = 38
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 29
          Text = '4'
        end
        object Edit76: TEdit
          Left = 63
          Top = 191
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 30
          Text = '1301'
        end
        object Edit77: TEdit
          Left = 119
          Top = 191
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 31
          Text = '1400'
        end
        object MaskEdit26: TMaskEdit
          Left = 212
          Top = 191
          Width = 70
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 32
          Text = '      .00'
        end
        object MaskEdit27: TMaskEdit
          Left = 298
          Top = 191
          Width = 70
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 33
          Text = '      .00'
        end
        object MaskEdit28: TMaskEdit
          Left = 394
          Top = 191
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 34
          Text = '      .00'
        end
        object MaskEdit29: TMaskEdit
          Left = 497
          Top = 191
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 35
          Text = '      .00'
        end
        object Edit78: TEdit
          Left = 7
          Top = 216
          Width = 38
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 36
          Text = '5'
        end
        object Edit79: TEdit
          Left = 62
          Top = 216
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 37
          Text = '1401'
        end
        object Edit80: TEdit
          Left = 118
          Top = 216
          Width = 40
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 38
          Text = '2359'
        end
        object MaskEdit30: TMaskEdit
          Left = 212
          Top = 216
          Width = 70
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 39
          Text = '      .00'
        end
        object MaskEdit31: TMaskEdit
          Left = 298
          Top = 216
          Width = 70
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 40
          Text = '      .00'
        end
        object MaskEdit32: TMaskEdit
          Left = 394
          Top = 216
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 41
          Text = '      .00'
        end
        object MaskEdit33: TMaskEdit
          Left = 498
          Top = 216
          Width = 66
          Height = 23
          EditMask = '999999.99;1;_'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 9
          ParentFont = False
          TabOrder = 42
          Text = '      .00'
        end
        object Button105: TButton
          Left = 584
          Top = 216
          Width = 75
          Height = 25
          Caption = #32423#21035#26102#27573#21345
          TabOrder = 43
          OnClick = Button105Click
        end
        object Edit81: TEdit
          Left = 4
          Top = 264
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          TabOrder = 44
          Text = '999'
        end
        object ComboBox5: TComboBox
          Left = 44
          Top = 264
          Width = 53
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 45
          Items.Strings = (
            #26222#36890
            #33756#21333
            #23450#39069
            #32423#21035#26102#27573)
        end
        object ComboBox6: TComboBox
          Left = 100
          Top = 264
          Width = 53
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 46
          Items.Strings = (
            #25346#22833#22411
            #24320#25143#22411)
        end
        object Edit82: TEdit
          Left = 155
          Top = 264
          Width = 64
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 8
          TabOrder = 47
          Text = '16777215'
        end
        object ComboBox7: TComboBox
          Left = 220
          Top = 264
          Width = 53
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 48
          Items.Strings = (
            #21542
            #26159)
        end
        object ComboBox8: TComboBox
          Left = 276
          Top = 264
          Width = 53
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 49
          Items.Strings = (
            #35745#26102#22411#65288#32771#21220#65289
            #35745#27969#37327#22411#65288#38376#31105#65289)
        end
        object Edit83: TEdit
          Left = 340
          Top = 264
          Width = 61
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          TabOrder = 50
          Text = '255'
        end
        object Edit84: TEdit
          Left = 540
          Top = 264
          Width = 61
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          TabOrder = 51
          Text = '255'
        end
        object Button106: TButton
          Left = 608
          Top = 264
          Width = 75
          Height = 25
          Caption = #26426#22120#21442#25968#21345
          TabOrder = 52
          OnClick = Button106Click
        end
        object Button107: TButton
          Left = 248
          Top = 376
          Width = 75
          Height = 25
          Caption = #26102#38388#21345
          TabOrder = 53
          OnClick = Button107Click
        end
        object ComboBox9: TComboBox
          Left = 144
          Top = 383
          Width = 65
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 54
          Items.Strings = (
            #35835#26102#38388
            #20889#26102#38388)
        end
        object Edit85: TEdit
          Left = 8
          Top = 383
          Width = 105
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 55
          Text = #35831#21452#20987#40736#26631#24038#38190
          OnDblClick = Edit85DblClick
        end
        object Edit86: TEdit
          Left = 112
          Top = 383
          Width = 33
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 56
          Text = '05'
        end
        object Edit87: TEdit
          Left = 8
          Top = 340
          Width = 241
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 57
          Text = '00000000000000000000000000000000'
        end
        object Button108: TButton
          Left = 264
          Top = 337
          Width = 81
          Height = 25
          Caption = #21021#22987#21270'24C56'
          TabOrder = 58
          OnClick = Button108Click
        end
        object Button109: TButton
          Left = 429
          Top = 375
          Width = 75
          Height = 25
          Caption = #21021#22987#21270#21345'98'
          TabOrder = 59
          OnClick = Button109Click
        end
        object Edit88: TEdit
          Left = 407
          Top = 264
          Width = 61
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          TabOrder = 60
          Text = '255'
        end
        object Edit89: TEdit
          Left = 474
          Top = 264
          Width = 61
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 3
          TabOrder = 61
          Text = '255'
        end
        object Button114: TButton
          Left = 384
          Top = 293
          Width = 57
          Height = 25
          Caption = #20889#37319#38598#21345
          TabOrder = 62
          OnClick = Button114Click
        end
        object Button115: TButton
          Left = 320
          Top = 293
          Width = 57
          Height = 25
          Caption = #35835#37319#38598#21345
          TabOrder = 63
          OnClick = Button115Click
        end
        object Edit92: TEdit
          Left = 32
          Top = 296
          Width = 49
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 64
        end
        object Edit93: TEdit
          Left = 132
          Top = 296
          Width = 49
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 65
        end
        object Edit94: TEdit
          Left = 232
          Top = 296
          Width = 73
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 66
        end
        object Button116: TButton
          Left = 464
          Top = 293
          Width = 57
          Height = 25
          Caption = #20889#28165#31354#21345
          TabOrder = 67
          OnClick = Button116Click
        end
        object Edit61: TEdit
          Left = 325
          Top = 30
          Width = 92
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 12
          PasswordChar = '#'
          TabOrder = 68
        end
        object Edit60: TEdit
          Left = 229
          Top = 30
          Width = 92
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 12
          PasswordChar = '#'
          TabOrder = 69
        end
        object Edit62: TEdit
          Left = 157
          Top = 30
          Width = 68
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 70
        end
        object Edit119: TEdit
          Left = 48
          Top = 408
          Width = 97
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 71
          Text = '192.168.1.201'
        end
        object Edit120: TEdit
          Left = 192
          Top = 408
          Width = 97
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 72
          Text = '192.168.1.93'
        end
        object Edit121: TEdit
          Left = 352
          Top = 408
          Width = 105
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 73
          Text = '00E04C577C6E'
        end
        object Button133: TButton
          Left = 480
          Top = 408
          Width = 65
          Height = 25
          Caption = #21046#20316'IP'#21345
          TabOrder = 74
          OnClick = Button133Click
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #39640#32423
      ImageIndex = 5
      object GroupBox7: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 137
        Align = alTop
        TabOrder = 0
        object Label42: TLabel
          Left = 295
          Top = 78
          Width = 24
          Height = 15
          Caption = #20174#31532
        end
        object Label43: TLabel
          Left = 362
          Top = 78
          Width = 12
          Height = 15
          Caption = #21040
        end
        object Label44: TLabel
          Left = 422
          Top = 77
          Width = 12
          Height = 15
          Caption = #31508
        end
        object Label15: TLabel
          Left = 8
          Top = 74
          Width = 48
          Height = 15
          Caption = #24320#22987#22320#22336
        end
        object Label16: TLabel
          Left = 72
          Top = 74
          Width = 60
          Height = 15
          Caption = #24490#29615#35835#20960#27425
        end
        object Label17: TLabel
          Left = 143
          Top = 73
          Width = 48
          Height = 15
          Caption = #32467#26463#22320#22336
        end
        object Bevel3: TBevel
          Left = -97
          Top = 69
          Width = 386
          Height = 2
        end
        object Label18: TLabel
          Left = 295
          Top = 16
          Width = 24
          Height = 15
          Caption = #22320#22336
        end
        object Label19: TLabel
          Left = 295
          Top = 39
          Width = 24
          Height = 15
          Caption = #25968#25454
        end
        object Bevel17: TBevel
          Left = 289
          Top = 8
          Width = 2
          Height = 131
        end
        object Label93: TLabel
          Left = 383
          Top = 16
          Width = 36
          Height = 15
          Caption = #20889#27425#25968
        end
        object Label110: TLabel
          Left = 5
          Top = 43
          Width = 10
          Height = 15
          Caption = 'ip'
        end
        object Label111: TLabel
          Left = 114
          Top = 43
          Width = 24
          Height = 15
          Caption = #31471#21475
        end
        object Label112: TLabel
          Left = 184
          Top = 43
          Width = 48
          Height = 15
          Caption = #21327#35758#31867#22411
        end
        object Edit49: TEdit
          Left = 320
          Top = 76
          Width = 42
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 0
          Text = '1'
        end
        object Edit50: TEdit
          Left = 379
          Top = 76
          Width = 39
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 1
          Text = '2'
        end
        object Button95: TButton
          Left = 443
          Top = 76
          Width = 57
          Height = 25
          Caption = #19979#36733#25968#25454
          TabOrder = 2
          OnClick = Button95Click
        end
        object Edit25: TEdit
          Left = 7
          Top = 89
          Width = 50
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 3
          Text = '0000'
        end
        object Edit29: TEdit
          Left = 80
          Top = 99
          Width = 45
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 4
          Text = '5'
        end
        object Edit28: TEdit
          Left = 142
          Top = 113
          Width = 50
          Height = 23
          Enabled = False
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 5
        end
        object Edit26: TEdit
          Left = 142
          Top = 89
          Width = 50
          Height = 23
          Enabled = False
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 6
        end
        object Button73: TButton
          Left = 197
          Top = 87
          Width = 89
          Height = 25
          Caption = #35835'AT24C256'
          TabOrder = 7
          OnClick = Button73Click
        end
        object Button77: TButton
          Left = 197
          Top = 111
          Width = 89
          Height = 25
          Caption = #35835'EEPROM'
          TabOrder = 8
          OnClick = Button77Click
        end
        object Edit27: TEdit
          Left = 7
          Top = 113
          Width = 50
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 9
          Text = '000000'
        end
        object Edit52: TEdit
          Left = 423
          Top = 13
          Width = 49
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 10
          Text = '1792'
        end
        object Edit31: TEdit
          Left = 326
          Top = 13
          Width = 50
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 11
          Text = '0000'
        end
        object Edit30: TEdit
          Left = 327
          Top = 36
          Width = 251
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 12
          Text = '00000000000000000000000000000000'
        end
        object Button74: TButton
          Left = 583
          Top = 33
          Width = 89
          Height = 25
          Caption = #20889'AT24C256'
          TabOrder = 13
          OnClick = Button74Click
        end
        object LabeledEdit1: TLabeledEdit
          Left = 56
          Top = 9
          Width = 33
          Height = 23
          EditLabel.Width = 48
          EditLabel.Height = 15
          EditLabel.Caption = #26426#22120#32534#21495
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          LabelPosition = lpLeft
          TabOrder = 14
          Text = '1'
        end
        object Button119: TButton
          Left = 176
          Top = 9
          Width = 41
          Height = 25
          Caption = #25569#25163
          TabOrder = 15
          OnClick = Button119Click
        end
        object Button120: TButton
          Left = 224
          Top = 9
          Width = 41
          Height = 25
          Caption = #22797#20301
          TabOrder = 16
          OnClick = Button72Click
        end
        object Edit117: TEdit
          Left = 16
          Top = 40
          Width = 89
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 17
          Text = '192.168.1.201'
        end
        object Edit118: TEdit
          Left = 136
          Top = 40
          Width = 41
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 18
          Text = '1507'
        end
        object ComboBox20: TComboBox
          Left = 232
          Top = 40
          Width = 57
          Height = 23
          Style = csDropDownList
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ItemHeight = 15
          TabOrder = 19
          Items.Strings = (
            '0  TCP'
            '1 UDP'
            '2 RS485')
        end
        object Button132: TButton
          Left = 96
          Top = 9
          Width = 75
          Height = 25
          Caption = 'SetConnect'
          TabOrder = 20
          OnClick = Button132Click
        end
      end
      object Memo2: TMemo
        Left = 0
        Top = 137
        Width = 728
        Height = 313
        Align = alClient
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = Memo2DblClick
      end
    end
    object TabSheet7: TTabSheet
      Caption = #32771#21220#26426#35835#22836
      ImageIndex = 6
      object GroupBox8: TGroupBox
        Left = 0
        Top = 0
        Width = 728
        Height = 57
        Align = alTop
        TabOrder = 0
        object Label92: TLabel
          Left = 145
          Top = 11
          Width = 48
          Height = 15
          Caption = #32467#26463#22320#22336
        end
        object Label91: TLabel
          Left = 74
          Top = 11
          Width = 48
          Height = 15
          Caption = #24490#29615#20960#27425
        end
        object Label90: TLabel
          Left = 10
          Top = 11
          Width = 48
          Height = 15
          Caption = #24320#22987#22320#22336
        end
        object Label96: TLabel
          Left = 214
          Top = 12
          Width = 24
          Height = 15
          Caption = #25968#25454
        end
        object Button121: TButton
          Left = 461
          Top = 20
          Width = 44
          Height = 25
          Caption = #35835
          TabOrder = 0
          OnClick = Button121Click
        end
        object Edit101: TEdit
          Left = 144
          Top = 27
          Width = 50
          Height = 23
          Enabled = False
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          ReadOnly = True
          TabOrder = 1
        end
        object Edit100: TEdit
          Left = 74
          Top = 28
          Width = 45
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 2
          Text = '5'
        end
        object Edit98: TEdit
          Left = 9
          Top = 26
          Width = 50
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          TabOrder = 3
          Text = '0000'
        end
        object Edit104: TEdit
          Left = 202
          Top = 27
          Width = 251
          Height = 23
          ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
          MaxLength = 32
          TabOrder = 4
          Text = '00000000000000000000000000000000'
        end
        object Button122: TButton
          Left = 511
          Top = 20
          Width = 42
          Height = 25
          Caption = #20889
          TabOrder = 5
          OnClick = Button122Click
        end
      end
      object Memo1: TMemo
        Left = 0
        Top = 57
        Width = 728
        Height = 400
        Align = alClient
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ScrollBars = ssBoth
        TabOrder = 1
        OnDblClick = Memo2DblClick
      end
    end
    object TabSheet8: TTabSheet
      Caption = 'Test'
      ImageIndex = 7
      object Label1: TLabel
        Left = 192
        Top = 4
        Width = 24
        Height = 15
        Caption = #25159#21306
      end
      object Edit102: TEdit
        Left = 8
        Top = 4
        Width = 121
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 0
      end
      object Button123: TButton
        Left = 136
        Top = 4
        Width = 49
        Height = 25
        Caption = #23547#21345
        TabOrder = 1
        OnClick = Button123Click
      end
      object RadioGroup5: TRadioGroup
        Left = 304
        Top = -2
        Width = 113
        Height = 33
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'A'#23494#38053
          'B'#23494#38053)
        TabOrder = 2
      end
      object Edit103: TEdit
        Left = 416
        Top = 6
        Width = 105
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 12
        TabOrder = 3
        Text = 'FFFFFFFFFFFF'
      end
      object Button124: TButton
        Left = 528
        Top = 6
        Width = 49
        Height = 25
        Caption = #39564#35777
        TabOrder = 4
        OnClick = Button124Click
      end
      object ComboBox16: TComboBox
        Left = 224
        Top = 4
        Width = 73
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        ItemHeight = 0
        TabOrder = 5
      end
      object Button125: TButton
        Left = 584
        Top = 6
        Width = 41
        Height = 25
        Caption = #35835
        TabOrder = 6
        OnClick = Button125Click
      end
      object LabeledEdit2: TLabeledEdit
        Left = 16
        Top = 85
        Width = 236
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '0'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 7
      end
      object LabeledEdit3: TLabeledEdit
        Left = 253
        Top = 85
        Width = 239
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '1'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 8
      end
      object LabeledEdit4: TLabeledEdit
        Left = 494
        Top = 85
        Width = 235
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '2'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 9
      end
      object LabeledEdit5: TLabeledEdit
        Left = 16
        Top = 125
        Width = 236
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '3'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 10
      end
      object L4: TLabeledEdit
        Left = 253
        Top = 125
        Width = 239
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '4'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 11
      end
      object L5: TLabeledEdit
        Left = 494
        Top = 125
        Width = 235
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '5'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 12
      end
      object L6: TLabeledEdit
        Left = 16
        Top = 165
        Width = 236
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '6'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 13
      end
      object L7: TLabeledEdit
        Left = 253
        Top = 165
        Width = 239
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '7'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 14
      end
      object L8: TLabeledEdit
        Left = 494
        Top = 165
        Width = 235
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '8'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 15
      end
      object L9: TLabeledEdit
        Left = 16
        Top = 205
        Width = 236
        Height = 23
        EditLabel.Width = 19
        EditLabel.Height = 15
        EditLabel.Caption = '9'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 16
      end
      object L10: TLabeledEdit
        Left = 253
        Top = 205
        Width = 239
        Height = 23
        EditLabel.Width = 26
        EditLabel.Height = 15
        EditLabel.Caption = '10'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 17
      end
      object L11: TLabeledEdit
        Left = 494
        Top = 205
        Width = 235
        Height = 23
        EditLabel.Width = 26
        EditLabel.Height = 15
        EditLabel.Caption = '11'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 18
      end
      object L12: TLabeledEdit
        Left = 16
        Top = 245
        Width = 236
        Height = 23
        EditLabel.Width = 26
        EditLabel.Height = 15
        EditLabel.Caption = '12'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 19
      end
      object L13: TLabeledEdit
        Left = 253
        Top = 245
        Width = 239
        Height = 23
        EditLabel.Width = 26
        EditLabel.Height = 15
        EditLabel.Caption = '13'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 20
      end
      object L14: TLabeledEdit
        Left = 494
        Top = 245
        Width = 235
        Height = 23
        EditLabel.Width = 26
        EditLabel.Height = 15
        EditLabel.Caption = '14'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 21
      end
      object L15: TLabeledEdit
        Left = 16
        Top = 288
        Width = 236
        Height = 23
        EditLabel.Width = 26
        EditLabel.Height = 15
        EditLabel.Caption = '15'#22359
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 32
        TabOrder = 22
      end
      object CheckBox1: TCheckBox
        Left = 8
        Top = 32
        Width = 97
        Height = 17
        Caption = #36830#32493#23547#21345
        TabOrder = 23
        OnClick = CheckBox1Click
      end
    end
    object TabSheet9: TTabSheet
      Caption = #38065#21253#21306'1'
      ImageIndex = 8
      object Label94: TLabel
        Left = 8
        Top = 8
        Width = 48
        Height = 15
        Caption = #31639#27861#26631#31034
      end
      object Label95: TLabel
        Left = 96
        Top = 184
        Width = 46
        Height = 15
        Caption = #32463#38144#21830'id'
      end
      object Label97: TLabel
        Left = 208
        Top = 184
        Width = 34
        Height = 15
        Caption = #23458#25143'id'
      end
      object Label98: TLabel
        Left = 104
        Top = 8
        Width = 36
        Height = 15
        Caption = #20844#20849#21306
      end
      object Label99: TLabel
        Left = 192
        Top = 8
        Width = 43
        Height = 15
        Caption = #38065#21253#21306'1'
      end
      object Label100: TLabel
        Left = 288
        Top = 8
        Width = 43
        Height = 15
        Caption = #38065#21253#21306'2'
      end
      object Label101: TLabel
        Left = 384
        Top = 8
        Width = 43
        Height = 15
        Caption = #38065#21253#21306'3'
      end
      object Label102: TLabel
        Left = 480
        Top = 8
        Width = 36
        Height = 15
        Caption = #21407#23494#30721
      end
      object Button128: TButton
        Left = 640
        Top = 8
        Width = 81
        Height = 25
        Caption = #21021#22987#21270#29992#25143#21345
        TabOrder = 0
        OnClick = Button128Click
      end
      object Edit105: TEdit
        Left = 56
        Top = 8
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 1
        Text = '2'
      end
      object Edit106: TEdit
        Left = 144
        Top = 184
        Width = 57
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 2
        Text = '2'
      end
      object Edit107: TEdit
        Left = 248
        Top = 184
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 3
        Text = '2'
      end
      object Edit108: TEdit
        Left = 144
        Top = 8
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 4
        Text = '-1'
      end
      object Edit109: TEdit
        Left = 240
        Top = 8
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 5
        Text = '-1'
      end
      object Edit110: TEdit
        Left = 336
        Top = 8
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 6
        Text = '-1'
      end
      object Edit111: TEdit
        Left = 432
        Top = 8
        Width = 41
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        TabOrder = 7
        Text = '-1'
      end
      object Edit112: TEdit
        Left = 520
        Top = 8
        Width = 113
        Height = 23
        ImeName = #20013#25991' ('#31616#20307') - '#24494#36719#25340#38899
        MaxLength = 12
        TabOrder = 8
        Text = 'FFFFFFFFFFFF'
      end
      object Button129: TButton
        Left = 639
        Top = 32
        Width = 81
        Height = 25
        Caption = #22238#25910#29992#25143#21345
        TabOrder = 9
        OnClick = Button129Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Button123Click
    Left = 412
  end
end
