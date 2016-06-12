object tcon: Ttcon
  OldCreateOrder = False
  Left = 331
  Top = 205
  Height = 534
  Width = 532
  object ADOConnection1: TADOConnection
    CommandTimeout = 4
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Password=147258369;User ID=Admi' +
      'n;Mode=Share Deny None;Extended Properties="";Persist Security I' +
      'nfo=True;Jet OLEDB:System database="";Jet OLEDB:Registry Path=""' +
      ';Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLED' +
      'B:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Je' +
      't OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passwo' +
      'rd="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt D' +
      'atabase=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet O' +
      'LEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    ConnectionTimeout = 4
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 81
    Top = 16
  end
  object UserSetDataSource: TDataSource
    DataSet = UserSetado
    Left = 80
    Top = 112
  end
  object UserSetado: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'userinfo'
    Left = 192
    Top = 120
  end
  object adoquery: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 80
    Top = 64
  end
  object USAdminado: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'USAdmin'
    Left = 192
    Top = 168
  end
  object USAdminDataSource: TDataSource
    DataSet = USAdminado
    Left = 80
    Top = 168
  end
  object elevatorinfoado: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'elevatorinfo'
    Left = 192
    Top = 232
  end
  object elevatorinfoDataSource: TDataSource
    DataSet = elevatorinfoado
    Enabled = False
    Left = 72
    Top = 232
  end
  object ADOTable1: TADOTable
    Left = 72
    Top = 288
  end
end
