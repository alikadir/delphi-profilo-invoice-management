object Form1: TForm1
  Left = 250
  Top = 115
  AutoScroll = False
  Caption = #199'A'#286' Elektronik G.D. Malzeme Bordrosu'
  ClientHeight = 421
  ClientWidth = 523
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 280
    Top = 264
    Width = 43
    Height = 13
    Caption = 'Ac'#305'klama'
  end
  object Label5: TLabel
    Left = 264
    Top = 224
    Width = 57
    Height = 13
    Caption = 'Verilen Adet'
  end
  object Label4: TLabel
    Left = 288
    Top = 184
    Width = 33
    Height = 13
    Caption = 'Kontrol'
  end
  object Label3: TLabel
    Left = 264
    Top = 144
    Width = 60
    Height = 13
    Caption = #304'stenen Adet'
  end
  object Label2: TLabel
    Left = 264
    Top = 104
    Width = 60
    Height = 13
    Caption = 'Malzeme Ad'#305
  end
  object Label1: TLabel
    Left = 254
    Top = 64
    Width = 70
    Height = 13
    Caption = 'Malzeme Kodu'
  end
  object Label7: TLabel
    Left = 296
    Top = 312
    Width = 24
    Height = 13
    Caption = 'Tarih'
  end
  object Label8: TLabel
    Left = 338
    Top = 4
    Width = 10
    Height = 13
    Caption = 'ile'
  end
  object Label9: TLabel
    Left = 64
    Top = 0
    Width = 93
    Height = 13
    Caption = 'Malzeme Ad'#305' Arama'
  end
  object Label10: TLabel
    Left = 48
    Top = 368
    Width = 141
    Height = 13
    Caption = 'Malzeme Koduna G'#246're Arama'
  end
  object duzenle: TBitBtn
    Left = 333
    Top = 363
    Width = 75
    Height = 25
    Caption = 'D'#252'zenle'
    TabOrder = 18
    OnClick = duzenleClick
    Kind = bkRetry
  end
  object DBEdit7: TDBEdit
    Left = 328
    Top = 304
    Width = 161
    Height = 21
    DataField = 'tarih'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 12
  end
  object yeni: TBitBtn
    Left = 328
    Top = 335
    Width = 81
    Height = 25
    Caption = 'Yeni Kay'#305't'
    TabOrder = 10
    OnClick = yeniClick
    Glyph.Data = {
      F2010000424DF201000000000000760000002800000024000000130000000100
      0400000000007C01000000000000000000001000000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
      3333333333388F3333333333000033334224333333333333338338F333333333
      0000333422224333333333333833338F33333333000033422222243333333333
      83333338F3333333000034222A22224333333338F33F33338F33333300003222
      A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
      38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
      2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
      0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
      333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
      33333A2224A2233333333338F338F83300003333333333A2224A333333333333
      8F338F33000033333333333A222433333333333338F338F30000333333333333
      A224333333333333338F38F300003333333333333A223333333333333338F8F3
      000033333333333333A3333333333333333383330000}
    NumGlyphs = 2
  end
  object sil: TBitBtn
    Left = 416
    Top = 335
    Width = 81
    Height = 25
    Caption = 'Kay'#305't Sil'
    TabOrder = 11
    OnClick = silClick
    Kind = bkCancel
  end
  object yaz: TBitBtn
    Left = 418
    Top = 363
    Width = 75
    Height = 25
    Caption = 'Yazd'#305'r'
    TabOrder = 9
    OnClick = yazClick
    Kind = bkIgnore
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 48
    Width = 233
    Height = 305
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 328
    Top = 64
    Width = 161
    Height = 21
    DataField = 'mazemekodu'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 1
  end
  object DBEdit2: TDBEdit
    Left = 328
    Top = 104
    Width = 161
    Height = 21
    DataField = 'mazemead'#305
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit3: TDBEdit
    Left = 328
    Top = 144
    Width = 161
    Height = 21
    DataField = 'istenenadet'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 3
  end
  object DBEdit4: TDBEdit
    Left = 328
    Top = 184
    Width = 161
    Height = 21
    DataField = 'kontrol'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 4
  end
  object DBEdit5: TDBEdit
    Left = 328
    Top = 224
    Width = 161
    Height = 21
    DataField = 'verilenadet'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 5
  end
  object DBEdit6: TDBEdit
    Left = 328
    Top = 264
    Width = 161
    Height = 21
    DataField = 'ac'#305'klama'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 6
  end
  object yenipanel: TGroupBox
    Left = 327
    Top = 32
    Width = 185
    Height = 361
    Caption = '    Yeni Kay'#305't    '
    TabOrder = 7
    Visible = False
    object duzenonay: TBitBtn
      Left = 16
      Top = 328
      Width = 77
      Height = 25
      Caption = 'Onayla'
      TabOrder = 9
      OnClick = duzenonayClick
      Kind = bkOK
    end
    object Edit1: TEdit
      Left = 8
      Top = 32
      Width = 161
      Height = 21
      MaxLength = 12
      TabOrder = 0
      OnKeyPress = Edit1KeyPress
    end
    object Edit2: TEdit
      Left = 8
      Top = 72
      Width = 161
      Height = 21
      CharCase = ecUpperCase
      MaxLength = 25
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 8
      Top = 112
      Width = 161
      Height = 21
      MaxLength = 10
      TabOrder = 2
      OnKeyPress = Edit3KeyPress
    end
    object Edit4: TEdit
      Left = 8
      Top = 152
      Width = 161
      Height = 21
      MaxLength = 45
      TabOrder = 3
    end
    object Edit5: TEdit
      Left = 8
      Top = 192
      Width = 161
      Height = 21
      MaxLength = 10
      TabOrder = 4
      OnKeyPress = Edit5KeyPress
    end
    object onay: TBitBtn
      Left = 16
      Top = 328
      Width = 77
      Height = 25
      Caption = 'Onayla'
      TabOrder = 5
      OnClick = onayClick
      Kind = bkAll
    end
    object iptal: TBitBtn
      Left = 94
      Top = 328
      Width = 75
      Height = 25
      TabOrder = 6
      OnClick = iptalClick
      Kind = bkCancel
    end
    object DateTimePicker1: TDateTimePicker
      Left = 8
      Top = 280
      Width = 161
      Height = 21
      Date = 39184.836501909730000000
      Time = 39184.836501909730000000
      TabOrder = 7
    end
    object Memo1: TMemo
      Left = 8
      Top = 232
      Width = 161
      Height = 41
      Lines.Strings = (
        '')
      MaxLength = 45
      TabOrder = 8
    end
  end
  object Edit6: TEdit
    Left = 16
    Top = 16
    Width = 193
    Height = 21
    TabOrder = 8
    OnChange = Edit6Change
    OnKeyDown = Edit6KeyDown
  end
  object DateTimePicker2: TDateTimePicker
    Left = 248
    Top = 0
    Width = 89
    Height = 21
    Date = 39184.839666331020000000
    Time = 39184.839666331020000000
    TabOrder = 13
  end
  object DateTimePicker3: TDateTimePicker
    Left = 352
    Top = 0
    Width = 89
    Height = 21
    Date = 39184.839730173610000000
    Time = 39184.839730173610000000
    TabOrder = 14
  end
  object tarihara: TButton
    Left = 448
    Top = 0
    Width = 49
    Height = 20
    Caption = 'tarihara'
    TabOrder = 15
    OnClick = tariharaClick
  end
  object Edit7: TEdit
    Left = 24
    Top = 384
    Width = 185
    Height = 21
    TabOrder = 16
    OnChange = Edit7Change
    OnKeyDown = Edit7KeyDown
    OnKeyPress = Edit7KeyPress
  end
  object Panel1: TPanel
    Left = 0
    Top = 328
    Width = 233
    Height = 25
    BevelOuter = bvNone
    TabOrder = 17
  end
  object QuickRep1: TQuickRep
    Left = 8
    Top = 424
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = ADOQuery1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      100.000000000000000000
      2970.000000000000000000
      100.000000000000000000
      2100.000000000000000000
      100.000000000000000000
      100.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object TitleBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 251
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        664.104166666666800000
        1899.708333333333000000)
      BandType = rbTitle
      object QRLabel1: TQRLabel
        Left = 94
        Top = 144
        Width = 72
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          248.708333333333300000
          381.000000000000000000
          190.500000000000000000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'AD'#304'LCEVAZ'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel2: TQRLabel
        Left = 150
        Top = 180
        Width = 43
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          396.875000000000000000
          476.250000000000000000
          113.770833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = '721306'
        Color = clWhite
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel3: TQRLabel
        Left = 608
        Top = 183
        Width = 76
        Height = 20
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          52.916666666666660000
          1608.666666666667000000
          484.187500000000000000
          201.083333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'QRLabel3'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 12
      end
    end
    object DetailBand1: TQRBand
      Left = 38
      Top = 289
      Width = 718
      Height = 28
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        74.083333333333340000
        1899.708333333333000000)
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 40
        Top = 6
        Width = 79
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          105.833333333333300000
          15.875000000000000000
          209.020833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'mazemekodu'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 214
        Top = 6
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          566.208333333333400000
          15.875000000000000000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'mazemead'#305
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 389
        Top = 6
        Width = 68
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1029.229166666667000000
          15.875000000000000000
          179.916666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'istenenadet'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText4: TQRDBText
        Left = 445
        Top = 6
        Width = 40
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1177.395833333333000000
          15.875000000000000000
          105.833333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'kontrol'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 491
        Top = 6
        Width = 62
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1299.104166666667000000
          15.875000000000000000
          164.041666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'verilenadet'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText6: TQRDBText
        Left = 546
        Top = 6
        Width = 53
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1444.625000000000000000
          15.875000000000000000
          140.229166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = ADOQuery1
        DataField = 'ac'#305'klama'
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 317
      Width = 718
      Height = 172
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        455.083333333333300000
        1899.708333333333000000)
      BandType = rbPageFooter
    end
  end
  object DateTimePicker4: TDateTimePicker
    Left = 328
    Top = 395
    Width = 186
    Height = 21
    Date = 39185.006337164350000000
    Time = 39185.006337164350000000
    TabOrder = 20
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=database.mdb;Persis' +
      't Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 528
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tr1'
        DataType = ftString
        Size = -1
        Value = Null
      end
      item
        Name = 'tr2'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from borduro')
    Left = 544
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 568
    Top = 16
  end
end
