object FKolektifPenjualan: TFKolektifPenjualan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cetak Kolektif Nota Penjualan'
  ClientHeight = 106
  ClientWidth = 444
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzLabel3: TRzLabel
    Left = 8
    Top = 37
    Width = 40
    Height = 15
    Caption = 'Periode'
  end
  object RzLabel4: TRzLabel
    Left = 195
    Top = 37
    Width = 19
    Height = 15
    Caption = 'S/D'
  end
  object RzLabel5: TRzLabel
    Left = 8
    Top = 8
    Width = 64
    Height = 15
    Caption = 'Karesidenan'
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 64
    Width = 444
    Height = 42
    Align = alBottom
    Color = 15987699
    TabOrder = 0
    ExplicitTop = 59
    ExplicitWidth = 440
    object BBatal: TRzBitBtn
      Left = 367
      Top = 2
      Height = 38
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
      OnClick = BBatalClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 363
    end
    object BPrint: TRzBitBtn
      Left = 280
      Top = 2
      Width = 87
      Height = 38
      Align = alRight
      Caption = 'Cetak'
      TabOrder = 1
      OnClick = BPrintClick
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000003000000040000
        0005000000050000000500000005000000050000000500000006000000060000
        0006000000060000000600000006000000060000000600000006000000040000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000050000000A0000000F0000
        0011000000120000001200000013000000130000001400000014000000140000
        00150000001500000016000000160000001600000016000000140000000F0000
        0007000000020000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000030000000A7A5A4DC2A57867FFA577
        67FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA37363FFA273
        63FFA27262FFA17262FFA17262FFA17162FFA17161FFA07160FF775347C50000
        000F000000040000000200000001000000010000000100000000000000010000
        00030000000600000007000000090000000C00000014A97C6BFFF8F1EDFFF8F0
        EDFFF7F0EDFFF7F0EDFFF7F0EBFFF6EFEBFFF6EEE8FFF5EDE8FFF5EDE8FFF5EC
        E7FFF6EDE7FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFA27363FF0000
        001B0000000F0000000C0000000A000000080000000500000002000000050000
        000F000000190000001F00000021000000250000002EAC8070FFF9F3EFFFDFB1
        77FFDFAF77FFDFAE76FFDEAE76FFDEAE74FFDCA76DFFDAA465FFDAA265FFDAA1
        64FFDAA063FFD9A062FFD89F61FFD99E5FFFD89D5FFFF6EDE7FFA37565FF0000
        003B0000002E0000002A000000280000002100000014000000070000000E2D1F
        1B618E6454EC9B6C5CFF9B6B5CFF976958FF8F6251FF996C5AFFF9F5F2FFE1B4
        7EFFE5BD89FFE5BD88FFE4BC88FFE5BB86FFE4B982FFE0AF74FFE0AF73FFDFAE
        73FFDFAD72FFDFAC70FFDFAB6EFFDEAA6CFFD89E5FFFF6EEE9FF905F50FF7B4D
        3EFF855444FF865645FF855545FF784D3EEE2517136A0000001400000016986E
        5FF0C39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFD0B8A5FFA87B6BFFFAF6F3FFE3B9
        84FFE7C290FFE8C18FFFE8C08EFFE7C08CFFE7BE8BFFE2B47BFFE1B176FFE1B0
        75FFDFAF74FFDFAE72FFDFAD70FFDEAC6FFFD99F61FFF6F0EAFF9E705FFFCAB2
        A0FFD7C0B0FFDBC4B3FFC8A695FFBE9A88FF926656F10000002000000019A67A
        69FFC8A797FFCDAF9EFFDFCABBFFDBC4B4FFE0CFC3FFAB7F6FFFFBF7F5FFE5BE
        8AFFE9C595FFE9C596FFE9C495FFE9C493FFE8C392FFE5BC86FFE1B379FFE1B2
        77FFE0B076FFE0B074FFE0AE72FFDFAD70FFD9A062FFF8F1ECFFA07363FFDACA
        BEFFD9C3B4FFDEC8B9FFC9AA99FFC4A291FF9E6E5DFF0000002500000019A87B
        6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA47E6DFFA57666FFFBF9F6FFE8C1
        90FFEBC99CFFEBC99BFFEAC99CFFEAC89AFFE9C799FFE8C595FFE2B57BFFE2B4
        7AFFE1B378FFE0B175FFDFAF74FFDFAD71FFDAA063FFF8F2EEFF986B5AFFA17B
        6BFFDEC9BBFFE1CDBFFFCCAE9FFFC7A595FFA0705FFF0000002600000018AA7E
        6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A4836FF7A48
        35FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
        36FF7A4836FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF966C
        5BFFE5D2C6FFE5D3C6FFCFB3A5FFCAAA9BFFA07261FF0000002500000016AC80
        6FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
        CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
        CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFE8DACFFFE8D9
        CFFFE8DACFFFE8D9CEFFD2B9ABFFCCB0A1FFA27363FF0000002300000015AE82
        72FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0D8FFECE0
        D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
        D8FFECE0D7FFECE0D7FFD6BEB3FFCFB4A8FFA37564FF0000002200000014AF84
        74FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF0E7E0FFF0E7E0FFF0E7DFFFF0E7
        DFFFF0E7E0FFF0E7E0FFF0E7DFFFF0E7DFFFF0E7E0FFF0E7DFFFF0E7E0FFF0E7
        E0FFF0E7E0FFF0E6E0FFF0E6E0FFF0E7DFFFF0E7E0FFF0E6DFFFF0E7E0FFF0E7
        DFFFF0E7E0FFF0E7DFFFDAC4BBFFD3BAB0FFA47666FF0000002000000012B289
        78FFDCC7BEFFE1D0C8FFF6F1ECFFF4EDE8FFF5EEE9FFF7F3EFFFF9F5F2FFF9F6
        F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
        F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F5F2FFF7F3EFFFF5EE
        E9FFF4EDE7FFF4EDE7FFDDCAC2FFD7C0B6FFA77B6AFF0000001F00000010B68D
        7DFFDFCCC4FFE4D5CEFFF9F5F2FFF8F3EFFFEAE4E1FF8C7A73FF664D45FF553C
        32FF553A32FF553B32FF543A31FF543A32FF543931FF543931FF533930FF5339
        30FF523930FF523830FF523830FF52372FFF51372EFF614942FF897770FFE9E3
        E0FFF8F3EFFFF7F2EEFFE0CFC7FFDAC5BCFFAB7F6FFF0000001D0000000FB992
        81FFE2D1CBFFE8DAD4FFFBF9F7FFE0DBD8FF674E45FF674A40FF6B4E44FF6D4F
        45FF6E4F45FF6E4F45FF6E4F45FF6D4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F
        45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF6149
        40FFDFD9D6FFFAF6F4FFE4D4CDFFDDCAC3FFAF8374FF0000001C0000000EBC97
        87FFE5D6CFFFEBDFD9FFFDFCFAFF918079FF6B4F45FF715449FF715349FF7153
        49FF705349FF715449FF715349FF715349FF705349FF71534AFF715349FF7154
        4AFF715349FF715349FF715449FF705349FF715449FF70534AFF715349FF684D
        42FF8C7A73FFFCFAF8FFE7D9D3FFE0CFC7FFB28979FF0000001A0000000CC09C
        8CFFE7DAD4FFECE1DDFFFEFDFCFF6C554AFF896C5FFF8D6F63FF8F7063FF9677
        69FF967769FF957769FF997B6DFF9D7F70FF9E7F70FF9D7F70FF9E7F70FF9E7F
        70FF9E7F70FF9E7F70FF9A7B6CFF967769FF967869FF967769FF8F7163FF8D6E
        61FF634B41FFFDFCFBFFE8DBD6FFE2D3CDFFB68E7EFF000000180000000BC5A1
        91FFEADEDAFFEEE4E1FFFEFEFEFF6E5649FFB29381FFB29381FFB29381FFB393
        81FFB29381FFB29381FFB29281FFB39381FFB29381FFB29381FFB29381FFB293
        81FFB29281FFB39281FFB29381FFB29381FFB29281FFB29381FFB29381FFB392
        81FF684F44FFFEFDFDFFEADEDBFFE6D8D3FFBA9484FF0000001600000009BB9B
        8EF1EFE6E2FFEFE7E3FFFFFEFEFF7F6759FFC6A692FF715349FF705349FF7152
        49FF705348FF705248FF705248FF705248FF705248FF705247FF6F5147FF6F51
        47FF6E5147FF6E5046FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A5
        92FF795F53FFFFFEFEFFECE2DDFFEDE1DEFFB59284F500000013000000068872
        69B0ECE1DCFFF8F4F2FFFEFEFEFF866F60FFCCAD97FFA97C6BFFF2E9E4FFEEE2
        DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDFD8FFECDF
        D8FFECDED8FFECDED7FFECDED8FFECDFD7FFEBDED7FFEEE3DDFFA27363FFC7A8
        93FF80685AFFFCFAFAFFF4EDEBFFEADDD9FF836C61B80000000D000000031F1B
        192EC5AA9FF0EEE3DEFFFAF6F5FF8E7666FFD6B59EFFAD8272FFF4EBE7FFEFE4
        DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2DBFFEEE2
        DBFFEDE1DAFFEDE1DBFFEDE0DAFFEDE0D9FFECE0D9FFF0E6DFFFA47767FFCFAF
        99FF896F62FFF8F4F3FFEBE0DAFFBEA395F1201B183A00000007000000010000
        00031613112188746BACB99E90E6937C6FFF957F73FFB18876FFF4EEEAFFF1E7
        E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4DEFFEFE4
        DEFFEEE4DEFFEFE3DDFFEFE2DDFFEEE2DCFFEEE3DCFFF1E8E2FFA97C6CFF907A
        6FFF8F7869FFB29587E7836E64B11512102A0000000800000003000000000000
        00010000000200000004000000050000000A00000016B68D7EFFF6F0EDFFF2E9
        E4FFF2E9E5FFF2E9E3FFF1E8E3FFF2E8E3FFF1E7E2FFF1E7E2FFF0E7E2FFF1E7
        E1FFF1E6E0FFF0E6E0FFF0E6E0FFF0E5DFFFEFE5DFFFF3EAE5FFAE8373FF0000
        0023000000130000000D00000009000000050000000200000001000000000000
        0000000000000000000100000001000000040000000EBB9484FFF8F3F0FFF4EC
        E8FFF3EBE8FFF3EBE7FFF3EBE7FFF3EBE6FFF3EAE5FFF3EAE5FFF3E9E5FFF2E9
        E4FFF2E9E4FFF2E8E4FFF1E8E3FFF1E7E2FFF1E7E2FFF5EDE9FFB2897AFF0000
        0018000000080000000400000002000000010000000000000000000000000000
        0000000000000000000000000000000000030000000CBF998AFFF9F5F3FFF6EF
        EBFFF6EEEBFFF5EEEBFFF5EEEAFFF5EDE9FFF5EDE9FFF5EDE9FFF4ECE8FFF3EB
        E8FFF4EBE7FFF4EBE6FFF3EBE6FFF3EAE6FFF3EAE5FFF5EFECFFB69080FF0000
        0014000000050000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000030000000BC3A08FFFFAF7F5FFF7F1
        EEFFF7F1EEFFF6F0EDFFF7F0EDFFF7F0ECFFF6F0ECFFF6EFEBFFF6EFEBFFF6EF
        EBFFF5EEEAFFF5EEEAFFF5EEE9FFF4EDE9FFF5EDE9FFF7F1EFFFBC9687FF0000
        0013000000050000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000009C7A495FFFAF8F7FFF8F4
        F1FFF9F3F1FFF9F3F0FFF8F2F0FFF7F2EFFFF8F3EFFFF7F2EFFFF7F2EFFFF7F2
        EEFFF7F1EDFFF7F0EDFFF7F0EDFFF6EFECFFF6F0EBFFF9F4F2FFC09C8DFF0000
        0011000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000008CAA99AFFFDF9F8FFFAF6
        F4FFFAF6F4FFF9F6F4FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F1FFF8F4F1FFF9F4
        F1FFF8F3F0FFF8F3F0FFF8F3EFFFF8F2EFFFF7F2EFFFFAF6F4FFC4A293FF0000
        0010000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000200000007CDAD9FFFFDFBFBFFFCF8
        F6FFFBF7F6FFFBF7F5FFFBF7F6FFFAF7F5FFFAF7F5FFFAF6F4FFFAF6F4FFFAF6
        F3FFF9F6F3FFF9F5F3FFFAF5F3FFF9F4F2FFF9F4F2FFFAF8F6FFC7A698FF0000
        000E000000040000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000100000005CFB1A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBAC9CFF0000
        000B000000030000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000001000000039B857ABFD1B3A5FFD1B3
        A5FFD1B3A4FFD1B3A4FFD0B2A4FFD1B2A4FFD0B2A4FFCFB2A3FFCFB2A3FFCFB2
        A3FFCFB0A3FFCFB1A2FFCFB0A2FFCEB0A2FFCEB0A2FFCEAFA1FF998277C10000
        0007000000020000000000000000000000000000000000000000}
      ExplicitLeft = 276
    end
  end
  object dtTanggalAwal: TRzDateTimePicker
    Left = 96
    Top = 31
    Width = 89
    Height = 23
    Date = 45993.000000000000000000
    Format = ''
    Time = 0.381220868053787900
    TabOrder = 1
  end
  object dtTanggalAkhir: TRzDateTimePicker
    Left = 220
    Top = 31
    Width = 89
    Height = 23
    Date = 45993.000000000000000000
    Format = ''
    Time = 0.381220868053787900
    TabOrder = 2
  end
  object edKaresidenan: TRzButtonEdit
    Left = 96
    Top = 3
    Width = 329
    Height = 23
    Text = ''
    TabOrder = 3
    AllowKeyEdit = False
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = edKaresidenanButtonClick
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44526.601395243100000000
    ReportOptions.LastChange = 46009.631130914300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    Line2.Height:=624;'
      '    Line25.Height:=624;'
      '    Line29.Height:=624;'
      '    Line28.Height:=624;'
      '    Line31.Height:=780;'
      '    Line26.Height:=790;'
      '    Line32.Height:=780;'
      '    Line30.Height:=780;'
      '    Line33.Height:=604;'
      '    Line34.Height:=604;'
      'end;'
      ''
      'procedure ReportOnStopReport(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure ReportTitle1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure length_alamatOnAfterData(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      ''
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      '  terbilang.Text := <frxDBDPenjualan."word_amount">;'
      '  terbilang.DisplayFormat.FormatStr:='#39'%2.n'#39';'
      
        '  MemHargaJual.Text:=FormatFloat('#39'#,###,###,###0.00'#39',<frxDBDPenj' +
        'ualan."tot_before_piece_master">);'
      
        '  MemDikurangiPotongan.Text:=FormatFloat('#39'#,###,###,###0.00'#39',<fr' +
        'xDBDPenjualan."tot_piece_value_master">);'
      
        '  MemPembulatan.Text:= FormatFloat('#39'#,###,###,###0.00'#39',<frxDBDPe' +
        'njualan."pembulatan_value_master">);'
      
        '  MemTotSebelumPajak.Text:=FormatFloat('#39'#,###,###,###0.00'#39',<frxD' +
        'BDPenjualan."sub_total_master">);'
      
        '  MemPPN.Text:=FormatFloat('#39'#,###,###,###0.00'#39',<frxDBDPenjualan.' +
        '"ppn_value_master">);'
      
        '  MemNetto.Text:=FormatFloat('#39'#,###,###,###0.00'#39',<frxDBDPenjuala' +
        'n."grand_tot_master">);'
      ''
      ''
      '  MemVa4.Text:=<frxDBDPenjualan."bank_name">;'
      
        '  MemVa7.Text:=<frxDBDPenjualan."company_code_bank">+'#39'-'#39'+<frxDBD' +
        'Penjualan."number_va">;'
      '  MemVa10.Text:=<frxDBDPenjualan."va_name">;'
      ''
      '  if (Trim(<frxDBDPenjualan."bank_name">) <> '#39#39')'
      
        '   AND (Trim(<frxDBDPenjualan."number_va">) <> '#39#39') AND (Trim(<fr' +
        'xDBDPenjualan."va_name">) <> '#39#39')'
      '   then'
      '  begin'
      ''
      '    MemVA1.Visible := True;'
      '    MemVA2.Visible := True;'
      '    MemVA3.Visible := True;'
      '    MemVA4.Visible := True;'
      '    MemVA5.Visible := True;'
      '    MemVA6.Visible := True;'
      '    MemVA7.Visible := True;'
      '    MemVA8.Visible := True;'
      '    MemVA9.Visible := True;'
      '    MemVA10.Visible:= True;'
      '   end else begin'
      '    MemVA1.Visible := False;'
      '    MemVA2.Visible := False;'
      '    MemVA3.Visible := False;'
      '    MemVA4.Visible := False;'
      '    MemVA5.Visible := False;'
      '    MemVA6.Visible := False;'
      '    MemVA7.Visible := False;'
      '    MemVA8.Visible := False;'
      '    MemVA9.Visible := False;'
      '    MemVA10.Visible:= False;'
      '   end;'
      ''
      ''
      'end;'
      ''
      'procedure MemPOOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  IsHasPO: Boolean;'
      'begin'
      '  IsHasPO := Trim(<frxDBDPenjualan."po_order">) <> '#39#39';'
      ''
      '  memPO.Visible  := IsHasPO;'
      '  memo51.Visible := IsHasPO;'
      '  memo52.Visible := IsHasPO;'
      '  Line10.Visible := IsHasPO;'
      '  Line11.Visible := IsHasPO;'
      '  Line27.Visible := IsHasPO;'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStopReport = 'ReportOnStopReport'
    Top = 63
    Datasets = <
      item
        DataSet = frxDBDPenjualan
        DataSetName = 'frxDBDPenjualan'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'vlokasi_pt'
        Value = Null
      end
      item
        Name = 'vTerbilang'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 340.157700000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDPenjualan
        DataSetName = 'frxDBDPenjualan'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object frxDBDPenjualanname_unit: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 236.297087040000000000
          Top = -0.100597780000000000
          Width = 64.588847780000000000
          Height = 18.897650000000000000
          DataField = 'name_unit'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPenjualan."name_unit"]')
          ParentFont = False
        end
        object frxDBDPenjualanamount: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 192.713495920000000000
          Top = -0.100597780000000000
          Width = 42.804061120000000000
          Height = 18.897650000000000000
          DataField = 'amount'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDPenjualan."amount"]')
          ParentFont = False
        end
        object frxDBDPenjualanunit_price: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 303.109909250000000000
          Top = -0.100597780000000000
          Width = 95.608122230000000000
          Height = 18.897650000000000000
          DataField = 'unit_price'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDPenjualan."unit_price"]')
          ParentFont = False
        end
        object frxDBDPenjualanpiece_first: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 400.760719370000000000
          Top = -0.100597780000000000
          Width = 79.327393290000000000
          Height = 18.897650000000000000
          DataField = 'piece_first'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDPenjualan."piece_first"]')
          ParentFont = False
        end
        object frxDBDPenjualanpiece_second: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 484.867691480000000000
          Top = -0.100597780000000000
          Width = 80.590600000000000000
          Height = 18.897650000000000000
          DataField = 'piece_second'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDPenjualan."piece_second"]')
          ParentFont = False
        end
        object frxDBDPenjualanpiece_third: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 568.237821480000000000
          Top = -0.100597780000000000
          Width = 70.590600000000000000
          Height = 18.897650000000000000
          DataField = 'piece_third'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDPenjualan."piece_third"]')
          ParentFont = False
        end
        object frxDBDPenjualanname_item: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 40.276781480000000000
          Top = -0.100597780000000000
          Width = 155.323851110000000000
          Height = 18.897650000000000000
          DataField = 'name_item'
          DataSet = frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."name_item"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 2.481481480000000000
          Top = -0.100597780000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 642.035284810000000000
          Top = -0.157700000000000000
          Width = 109.497011120000000000
          Height = 18.897650000000000000
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<frxDBDPenjualan."unit_price">*<frxDBDPenjualan."amount">]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 215.433070870000000000
        Top = 102.047310000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = '<frxDBDPenjualan."trans_no">'
        KeepTogether = True
        StartNewPage = True
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Width = 755.905511811024000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Height = 665.952755910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object nama_pt: TfrxMemoView
          AllowVectorExport = True
          Left = 4.160947660000000000
          Top = 4.011513530000000000
          Width = 445.636482940000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT HASTA LESTARI JAYA')
          ParentFont = False
        end
        object kota: TfrxMemoView
          AllowVectorExport = True
          Left = 3.334166240000000000
          Top = 25.247753530000000000
          Width = 294.803149610000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TANGERANG')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 475.645950000000000000
          Top = 73.060715290000000000
          Width = 73.238250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Nota')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 476.698581580000000000
          Top = 97.958365290000000000
          Width = 73.238250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 547.354670000000000000
          Top = 73.131476470000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 547.354670000000000000
          Top = 98.076358360000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object MemTanggal: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.134200000000000000
          Top = 98.076358360000000000
          Width = 187.982057720000000000
          Height = 22.677180000000000000
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."trans_date"]')
          ParentFont = False
        end
        object frxDBDPenjualanno_trans: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 552.134200000000000000
          Top = 73.131476470000000000
          Width = 186.630879470000000000
          Height = 18.897650000000000000
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."trans_no"]')
          ParentFont = False
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 469.583333330000000000
          Top = 120.809941960000000000
          Width = 272.125984250000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 469.417322830000000000
          Top = 95.893275290000000000
          Width = 272.125984250000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 469.583333330000000000
          Top = 70.309941960000000000
          Height = 50.645669290000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 1.315789470000000000
          Top = 74.432748970000000000
          Width = 142.146746850000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Pengusaha Kena Pajak')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 2.368421050000000000
          Top = 96.538012130000000000
          Width = 46.357273170000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 142.210526310000000000
          Top = 73.380117400000000000
          Width = 17.936220540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 142.210526320000000000
          Top = 96.538012130000000000
          Width = 17.936220540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 2.368421050000000000
          Top = 143.695906870000000000
          Width = 46.357273170000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NPWP')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 142.368421050000000000
          Top = 142.643275290000000000
          Width = 17.936220540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 152.894736850000000000
          Top = 75.485380550000000000
          Width = 287.955430060000000000
          Height = 18.897650000000000000
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."customer_name_pkp"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 152.894736840000000000
          Top = 96.538012130000000000
          Width = 297.429114270000000000
          Height = 45.213439470000000000
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."address"]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 153.947368420000000000
          Top = 143.538012130000000000
          Width = 303.744903740000000000
          Height = 18.897650000000000000
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."no_npwp"]')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 477.281258750000000000
          Top = 123.785288370000000000
          Width = 73.238250000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. PO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 547.937347170000000000
          Top = 123.903281440000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object MemPO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.924683330000000000
          Top = 124.027890670000000000
          Width = 187.982057720000000000
          Height = 22.677180000000000000
          OnBeforePrint = 'MemPOOnBeforePrint'
          DataSet = FDataListPenjualan.frxDBDPenjualan
          DataSetName = 'frxDBDPenjualan'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."po_order"]')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 469.230769230000000000
          Top = 121.104813750000000000
          Height = 24.944881890000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 469.411764710000000000
          Top = 69.717395880000000000
          Width = 272.125984250000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 469.411764710000000000
          Top = 144.835042940000000000
          Width = 272.125984250000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 756.421052630000000000
          Top = 0.540925290000000000
          Height = 166.299212600000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 740.543307090000000000
          Top = 70.485807180000000000
          Height = 50.645669290000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 740.409448820000000000
          Top = 121.720198370000000000
          Height = 25.700787400000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 165.011513530000000000
          Width = 755.905511810000000000
          Height = 48.236240000000000000
          Frame.Typ = []
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 177.791043530000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 177.791043530000000000
          Width = 152.546073330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Barang')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 192.567100000000000000
          Top = 177.791043530000000000
          Width = 40.324485670000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 304.407957780000000000
          Top = 175.791043530000000000
          Width = 95.608122220000000000
          Height = 26.566068890000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Harga Sebelum PPN')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 568.535870000000000000
          Top = 188.791043530000000000
          Width = 72.637795280000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disc 3')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 486.165740000000000000
          Top = 188.791043530000000000
          Width = 81.637795280000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disc 2')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 400.795610000000000000
          Top = 188.791043530000000000
          Width = 81.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disc 1')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 643.444444440000000000
          Top = 174.107575760000000000
          Width = 109.923884510000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah Sebelum Potongan')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 238.947368420000000000
          Top = 177.306406160000000000
          Width = 62.429748830000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 400.000000000000000000
          Top = 165.885353530000000000
          Width = 241.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Potongan Harga')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 37.391304350000000000
          Top = 165.778776960000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 193.333333330000000000
          Top = 165.360097410000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 399.777777780000000000
          Top = 165.360097410000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 236.153846150000000000
          Top = 165.644997690000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 301.606299212598000000
          Top = 164.875766920000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 642.000000000000000000
          Top = 165.543307090000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 756.000000000000000000
          Top = 165.543307086614000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.833333330000000000
          Top = 39.619356670000000000
          Width = 752.126470000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA PENJUALAN')
          ParentFont = False
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 481.904761900000000000
          Top = 184.619356670000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 565.714285710000000000
          Top = 184.619356670000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 295.921460000000000000
        Top = 442.205010000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Line7: TfrxLineView
          AllowVectorExport = True
          Width = 755.905511811024000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 249.448980000000000000
          Width = 64.251961180000000000
          Height = 37.795287800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '1. Penagihan'
            '2. Akunting'
            '3. Pelanggan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 13.322820000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Terbilang :')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemVA1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 162.519790000000000000
          Width = 241.889920000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Mohon pembayaran ditransfer ke :')
          ParentFont = False
        end
        object MemVA2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 181.417440000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Bank')
          ParentFont = False
        end
        object MemVA5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 200.315090000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Virtual Account')
          ParentFont = False
        end
        object MemVA8: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 220.082305220000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Atas Nama')
          ParentFont = False
        end
        object MemVA3: TfrxMemoView
          AllowVectorExport = True
          Left = 79.826840000000000000
          Top = 181.417440000000000000
          Width = 7.559055120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object MemVA6: TfrxMemoView
          AllowVectorExport = True
          Left = 79.826840000000000000
          Top = 200.315090000000000000
          Width = 7.559055120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object MemVA9: TfrxMemoView
          AllowVectorExport = True
          Left = 79.826840000000000000
          Top = 219.212740000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object MemVA4: TfrxMemoView
          AllowVectorExport = True
          Left = 87.385900000000000000
          Top = 181.417440000000000000
          Width = 264.566929130000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object MemVA7: TfrxMemoView
          AllowVectorExport = True
          Left = 87.385900000000000000
          Top = 200.315090000000000000
          Width = 264.566929130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object MemVA10: TfrxMemoView
          AllowVectorExport = True
          Left = 87.385900000000000000
          Top = 219.212740000000000000
          Width = 313.700819130000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 309.598433970000000000
          Top = 0.258814340000000000
          Width = 316.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Harga Jual')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 309.598433970000000000
          Top = 26.715524340000000000
          Width = 317.371882220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dikurangi Potongan Harga')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 310.598433970000000000
          Top = 53.172234340000000000
          Width = 316.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pembulatan')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 310.598433970000000000
          Top = 79.628944340000000000
          Width = 316.594104440000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Sebelum Pajak')
          ParentFont = False
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 302.984333970000000000
          Top = 22.376917250000000000
          Width = 452.787401570000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 302.984333970000000000
          Top = 48.833644340000000000
          Width = 452.787401570000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 302.984333970000000000
          Top = 75.290303080000000000
          Width = 452.787401570000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 302.984333970000000000
          Top = 101.746995990000000000
          Width = 452.787401570000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object MemPembulatan: TfrxMemoView
          Anchors = [fraLeft]
          AllowVectorExport = True
          Left = 641.514637300000000000
          Top = 51.935684340000000000
          Width = 111.874015750000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object MemHargaJual: TfrxMemoView
          Anchors = [fraLeft]
          AllowVectorExport = True
          Left = 641.847970640000000000
          Top = -0.300248100000000000
          Width = 111.835807140000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 311.634920640000000000
          Top = 106.184499900000000000
          Width = 316.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPN')
          ParentFont = False
        end
        object MemPPN: TfrxMemoView
          Anchors = [fraLeft]
          AllowVectorExport = True
          Left = 640.440012870000000000
          Top = 105.491239900000000000
          Width = 111.874015750000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 310.634920640000000000
          Top = 132.607658930000000000
          Width = 319.149660000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Bersih')
          ParentFont = False
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 303.020820640000000000
          Top = 128.269017670000000000
          Width = 452.787401570000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object MemNetto: TfrxMemoView
          Anchors = [fraLeft]
          AllowVectorExport = True
          Left = 640.995568420000000000
          Top = 132.739121980000000000
          Width = 111.874015750000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 302.857142860000000000
          Top = 155.046795450000000000
          Width = 452.787401570000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object MemTotSebelumPajak: TfrxMemoView
          Anchors = [fraLeft]
          AllowVectorExport = True
          Left = 642.292415080000000000
          Top = 79.069830640000000000
          Width = 111.874015750000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object MemDikurangiPotongan: TfrxMemoView
          Anchors = [fraLeft]
          AllowVectorExport = True
          Left = 642.330458690000000000
          Top = 25.864874340000000000
          Width = 111.874015750000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object terbilang: TfrxMemoView
          AllowVectorExport = True
          Left = 72.380952380000000000
          Top = 17.794990000000000000
          Width = 227.874150000000000000
          Height = 134.098330480000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsItalic]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDPenjualan."word_amount"]')
          ParentFont = False
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'ReportTitle1OnBeforePrint'
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 41.574830000000000000
        Width = 755.906000000000000000
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        Stretched = True
      end
    end
  end
  object frxDBDPenjualan: TfrxDBDataset
    UserName = 'frxDBDPenjualan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'no_inv_tax=no_inv_tax'
      'trans_date=trans_date'
      'po_order=po_order'
      'tot_before_piece_master=tot_before_piece_master'
      'sub_total_master=sub_total_master'
      'tot_piece_value_master=tot_piece_value_master'
      'ppn_value_master=ppn_value_master'
      'grand_tot_master=grand_tot_master'
      'pembulatan_value_master=pembulatan_value_master'
      'word_amount=word_amount'
      'code_cust=code_cust'
      'name_cust=name_cust'
      'address=address'
      'no_npwp=no_npwp'
      'code_item=code_item'
      'name_item=name_item'
      'amount=amount'
      'code_unit=code_unit'
      'name_unit=name_unit'
      'no_reference=no_reference'
      'unit_price=unit_price'
      'sub_total=sub_total'
      'ppn_account=ppn_account'
      'ppn_percent=ppn_percent'
      'ppn_value=ppn_value'
      'pph_account=pph_account'
      'pph_name=pph_name'
      'pph_percent=pph_percent'
      'pph_value=pph_value'
      'tot_piece_value=tot_piece_value'
      'tot_piece_percent=tot_piece_percent'
      'grand_tot=grand_tot'
      'piece_first=piece_first'
      'piece_second=piece_second'
      'piece_third=piece_third'
      'piece_fourth=piece_fourth'
      'customer_name_pkp=customer_name_pkp'
      'deleted_at=deleted_at'
      'signature_name=signature_name'
      'company_name=company_name'
      'va_name=va_name'
      'company_code_bank=company_code_bank'
      'number_va=number_va'
      'bank_name=bank_name')
    DataSet = QPenjualan
    BCDToCurrency = False
    DataSetOptions = []
    Left = 48
    Top = 63
  end
  object QPenjualan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select a."trans_no", "no_inv_tax", "trans_date",a.po_order, '
      
        'a.tot_before_piece tot_before_piece_master,a.sub_total sub_total' +
        '_master,a.tot_piece_value tot_piece_value_master,a.ppn_value ppn' +
        '_value_master,a.grand_tot grand_tot_master,a.pembulatan_value pe' +
        'mbulatan_value_master,a.word_amount,'
      
        'a."code_cust", a."name_cust",  d."address",COALESCE(a.no_npwp,'#39#39 +
        ') no_npwp, b."code_item", b."name_item",  b."amount", b."code_un' +
        'it", b."name_unit", a."no_reference", "unit_price",  b."sub_tota' +
        'l", b."ppn_account", b."ppn_percent", b."ppn_value", b."pph_acco' +
        'unt",  b."pph_name", b."pph_percent", b."pph_value", b."tot_piec' +
        'e_value",  b."tot_piece_percent", b."grand_tot",   case when "pi' +
        'ece_first" is null then 0 else "piece_first" end "piece_first", ' +
        ' case when "piece_second" is null then 0 else "piece_second" end' +
        ' "piece_second",  case when "piece_third" is null then 0 else "p' +
        'iece_third" end "piece_third",  case when "piece_fourth" is null' +
        ' then 0 else "piece_fourth" end "piece_fourth",  a.customer_name' +
        '_pkp,a.deleted_at  '
      ',(select DISTINCT * from get_user_signature(2)) signature_name,'
      
        '(SELECT company_name FROM t_company) company_name,va_name,compan' +
        'y_code_bank,number_va,bank_name'
      
        'from "public".get_selling(FALSE) a  LEFT JOIN "public"."t_sellin' +
        'g_det" b ON a.trans_no=b.trans_no  LEFT JOIN "public"."t_selling' +
        '_piece" c ON b.trans_no=c.trans_no and b.code_item=c.code_item  ' +
        'LEFT JOIN (SELECT "customer_code", "address" from "public"."t_cu' +
        'stomer_address" where "code_details"='#39'001'#39') d on a.code_cust=d.c' +
        'ustomer_code   LEFT JOIN t_item f ON f.item_code=b.code_item  wh' +
        'ere  a.trans_date BETWEEN '#39'2025-10-01'#39' AND '#39'2025-10-01'#39'  order b' +
        'y f.group_id,b.code_item ASC;')
    Left = 96
    Top = 64
  end
  object DSBuktiTerima: TDataSource
    DataSet = QPenjualan
    Left = 344
    Top = 168
  end
end
