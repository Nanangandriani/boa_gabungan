object FKolektifSuratJalan: TFKolektifSuratJalan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Cetak Kolektif Surat Jalan'
  ClientHeight = 102
  ClientWidth = 437
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
    Top = 60
    Width = 437
    Height = 42
    Align = alBottom
    Color = 15987699
    TabOrder = 0
    ExplicitTop = 59
    ExplicitWidth = 440
    object BBatal: TRzBitBtn
      Left = 360
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
      ExplicitLeft = 367
    end
    object BPrint: TRzBitBtn
      Left = 273
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
      ExplicitLeft = 280
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
    ReportOptions.LastChange = 46010.455022986110000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'function TglIndo(Tanggal: TDateTime): String;'
      'var'
      '  bln: Integer;'
      '  namaBln: String;'
      'begin'
      '  bln := StrToInt(FormatDateTime('#39'mm'#39', Tanggal));'
      '  '
      '  case bln of'
      '    1: namaBln := '#39'Januari'#39';'
      '    2: namaBln := '#39'Februari'#39';'
      '    3: namaBln := '#39'Maret'#39';'
      '    4: namaBln := '#39'April'#39';'
      '    5: namaBln := '#39'Mei'#39';'
      '    6: namaBln := '#39'Juni'#39';'
      '    7: namaBln := '#39'Juli'#39';'
      '    8: namaBln := '#39'Agustus'#39';'
      '    9: namaBln := '#39'September'#39';'
      '    10: namaBln := '#39'Oktober'#39';'
      '    11: namaBln := '#39'November'#39';'
      '    12: namaBln := '#39'Desember'#39';'
      '  end;'
      ''
      
        '  Result := FormatDateTime('#39'dd'#39', Tanggal) + '#39' '#39' + namaBln + '#39' '#39' ' +
        '+ FormatDateTime('#39'yyyy'#39', Tanggal);'
      'end;  '
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    Line16.Height:=270;'
      '    Line11.Height:=270;'
      '    Line10.Height:=270;'
      '    Line26.Height:=521;'
      '    Line24.Height:=521;        '
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
      ' if <frxDBDSuratJalan."tare_weight"> <> 0 then'
      '  begin'
      '    labelberatisi.Visible := True;'
      '    labelberatkosong.Visible := True;'
      '    beratisi.Visible := True;'
      '    beratkosong.Visible := True;'
      '    Memo25.Visible := True;'
      '    Memo26.Visible := True;      '
      '  end '
      '  else '
      '  begin   '
      '    labelberatisi.Visible := False;'
      '    labelberatkosong.Visible := False;'
      '    beratisi.Visible := False;'
      '    beratkosong.Visible := False;'
      '    Memo25.Visible := False;'
      '    Memo26.Visible := False;                        '
      '  end;'
      '  tanggal.Text:=TglIndo(<frxDBDSuratJalan."trans_date">);      '
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
      '  Memo29.Text:= <frxDBDSuratJalan."address2">;      '
      'end;'
      ''
      'procedure MemPOOnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  IsHasPO: Boolean;'
      'begin'
      '{  IsHasPO := Trim(<frxDBDPenjualan."po_order">) <> '#39#39';'
      ''
      '  memPO.Visible  := IsHasPO;'
      '  memo51.Visible := IsHasPO;'
      '  memo52.Visible := IsHasPO;'
      '  Line10.Visible := IsHasPO;'
      '  Line11.Visible := IsHasPO;'
      '  Line27.Visible := IsHasPO;       }  '
      ''
      'end;'
      ''
      'procedure tanggalOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '      '
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnStopReport = 'ReportOnStopReport'
    Left = 16
    Top = 39
    Datasets = <
      item
        DataSet = frxDBDSuratJalan
        DataSetName = 'frxDBDSuratJalan'
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
      PaperHeight = 148.000000000000000000
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
        Top = 291.023810000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDSuratJalan
        DataSetName = 'frxDBDSuratJalan'
        KeepFooter = True
        RowCount = 0
        Stretched = True
        object frxDBDPenjualanamount: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 143.622047240000000000
          Top = -0.100597780000000000
          Width = 109.606299210000000000
          Height = 18.897650000000000000
          DataField = 'code_unit'
          DataSet = frxDBDSuratJalan
          DataSetName = 'frxDBDSuratJalan'
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
            '[frxDBDSuratJalan."code_unit"]')
          ParentFont = False
        end
        object frxDBDPenjualanunit_price: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 257.007874020000000000
          Top = -0.100597780000000000
          Width = 498.519685040000000000
          Height = 18.897650000000000000
          DataSet = frxDBDSuratJalan
          DataSetName = 'frxDBDSuratJalan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '[frxDBDSuratJalan."name_item"] ( [frxDBDSuratJalan."word_amount_' +
              'qty"] ) [frxDBDSuratJalan."name_unit"]')
          ParentFont = False
          Formats = <
            item
              FormatStr = '%2.n'
              Kind = fkNumeric
            end
            item
            end>
        end
        object frxDBDPenjualanname_item: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 44.976377950000000000
          Top = -0.100597780000000000
          Width = 96.377952760000000000
          Height = 18.897650000000000000
          DataField = 'amount'
          DataSet = frxDBDSuratJalan
          DataSetName = 'frxDBDSuratJalan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDSuratJalan."amount"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 0.377952760000000000
          Top = -0.100597780000000000
          Width = 43.464566930000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 167.341402020000000000
        Top = 102.047310000000000000
        Width = 755.906000000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = '<frxDBDSuratJalan."trans_no">'
        KeepTogether = True
        StartNewPage = True
        object Line26: TfrxLineView
          AllowVectorExport = True
          Top = 0.308179570000000000
          Height = 153.448818900000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 755.421052630000000000
          Height = 153.448818900000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 118.276639570000000000
          Top = 63.267780000000000000
          Width = 391.559055120000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 206.260869570000000000
          Width = 340.976500000000000000
          Height = 40.440944880000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SURAT - JALAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 110.016899570000000000
          Top = 46.165430000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object frxDBDCetakSJname_cust: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 121.583999570000000000
          Top = 45.842610000000000000
          Width = 387.023810000000000000
          Height = 18.897650000000000000
          DataSet = FDataListPenjualan.frxDBDCetakSJ
          DataSetName = 'frxDBDCetakSJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSuratJalan."name_cust"]')
          ParentFont = False
        end
        object frxDBDCetakSJaddress: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 121.583999570000000000
          Top = 68.519790000000000000
          Width = 387.023810000000000000
          Height = 34.913420000000000000
          DataSet = FDataListPenjualan.frxDBDCetakSJ
          DataSetName = 'frxDBDCetakSJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          LineSpacing = 4.000000000000000000
          Memo.UTF8W = (
            '[frxDBDSuratJalan."address"]')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 0.260869570000000000
          Top = 128.889920000000000000
          Width = 755.149606300000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 0.260869570000000000
          Top = 153.566929130000000000
          Width = 755.149606300000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 45.040399570000000000
          Top = 131.889920000000000000
          Width = 96.475935220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Banyak')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 143.646769570000000000
          Top = 132.779527560000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 256.855677830000000000
          Top = 131.779527560000000000
          Width = 498.402423040000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Uraian')
          ParentFont = False
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 255.812199570000000000
          Top = 129.149606300000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 142.426299570000000000
          Top = 129.149606300000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 0.481339570000000000
          Top = 46.102350000000000000
          Width = 100.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Pelanggan')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 0.371103350000000000
          Top = 68.102350000000000000
          Width = 105.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat Pelanggan')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 109.481339570000000000
          Top = 68.102350000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 118.142756890000000000
          Top = 84.102350000000000000
          Width = 391.559055120000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 118.142756890000000000
          Top = 102.102350000000000000
          Width = 391.559055120000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 523.308111220000000000
          Top = 45.102350000000000000
          Width = 61.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 523.437861310000000000
          Top = 105.841480430000000000
          Width = 61.559060000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nopol')
          ParentFont = False
        end
        object labelberatkosong: TfrxMemoView
          AllowVectorExport = True
          Left = 523.481339570000000000
          Top = 66.102350000000000000
          Width = 117.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Berat Kosong (KG)')
          ParentFont = False
        end
        object labelberatisi: TfrxMemoView
          AllowVectorExport = True
          Left = 523.481339570000000000
          Top = 87.102350000000000000
          Width = 94.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Berat Isi (KG)')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 627.481339570000000000
          Top = 66.102350000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 627.481339570000000000
          Top = 86.232784780000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 627.437861310000000000
          Top = 105.841480430000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 627.497087600000000000
          Top = 45.102350000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object tanggal: TfrxMemoView
          AllowVectorExport = True
          Left = 635.481339570000000000
          Top = 45.102350000000000000
          Width = 115.653543310000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'tanggalOnBeforePrint'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object beratkosong: TfrxMemoView
          AllowVectorExport = True
          Left = 634.481339570000000000
          Top = 66.102350000000000000
          Width = 115.653543310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSuratJalan."tare_weight"]')
          ParentFont = False
        end
        object beratisi: TfrxMemoView
          AllowVectorExport = True
          Left = 633.611774350000000000
          Top = 87.102350000000000000
          Width = 115.653543310000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDSuratJalan."gross_weight"]')
          ParentFont = False
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 45.481339570000000000
          Top = 129.102350000000000000
          Height = 22.677165350000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 0.481339570000000000
          Top = 132.102350000000000000
          Width = 43.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
        end
        object nopol: TfrxMemoView
          AllowVectorExport = True
          Left = 635.437861310000000000
          Top = 105.841480430000000000
          Width = 115.653543310000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 547.481339570000000000
          Top = 0.102350000000000000
          Width = 207.724800000000000000
          Height = 40.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDSuratJalan."no_traveldoc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object nama_pt: TfrxMemoView
          AllowVectorExport = True
          Width = 206.855234780000000000
          Height = 40.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PT [frxDBDSuratJalan."company_code"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 123.830787690000000000
        Top = 370.393940000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Line7: TfrxLineView
          AllowVectorExport = True
          Width = 755.905511811024000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 396.208155220000000000
          Top = 0.075084780000000000
          Width = 158.905690000000000000
          Height = 57.913420000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Barang tsb diatas telah kami terima dalam keadaan cukup dan baik')
          ParentFont = False
          VAlign = vaCenter
        end
        object kota_tanggal: TfrxMemoView
          AllowVectorExport = True
          Left = 576.003765220000000000
          Top = 4.193204780000000000
          Width = 172.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Pengirim,')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 394.869565220000000000
          Top = 97.374094780000000000
          Width = 162.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                         )')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 582.869565220000000000
          Top = 98.374094780000000000
          Width = 162.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                         )')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = -0.130434780000000000
          Top = 122.374094780000000000
          Width = 756.661417322835000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 385.869565220000000000
          Top = 0.374094780000000000
          Height = 122.456692910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 568.869565220000000000
          Top = 1.374094780000000000
          Height = 122.456692910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 4.869565220000000000
          Top = 25.374094780000000000
          Width = 352.023810000000000000
          Height = 68.913420000000000000
          DataSet = FDataListPenjualan.frxDBDCetakSJ
          DataSetName = 'frxDBDCetakSJ'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 4.869565220000000000
          Top = 9.374094780000000000
          Width = 166.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat Pengiriman Barang :')
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
    end
  end
  object frxDBDSuratJalan: TfrxDBDataset
    UserName = 'frxDBDSuratJalan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'company_code=company_code'
      'trans_no=trans_no'
      'no_traveldoc=no_traveldoc'
      'trans_date=trans_date'
      'code_cust=code_cust'
      'name_cust=name_cust'
      'address=address'
      'address2=address2'
      'code_item=code_item'
      'name_item=name_item'
      'amount=amount'
      'code_unit=code_unit'
      'name_unit=name_unit'
      'word_amount_qty=word_amount_qty'
      'no_reference=no_reference'
      'ket=ket'
      'gross_weight=gross_weight'
      'tare_weight=tare_weight'
      'vehicles=vehicles')
    DataSet = QSuratJalan
    BCDToCurrency = False
    DataSetOptions = []
    Left = 72
    Top = 23
  end
  object QSuratJalan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select (SELECT company_code FROM t_company) company_code,a."tran' +
        's_no", "no_traveldoc", "trans_date", a."code_cust",  a."name_cus' +
        't",  d."address",e."address" AS address2, b."code_item", b."name' +
        '_item",  b."amount",  b."code_unit", b."name_unit",b.word_amount' +
        '_qty, a."no_reference", b."code_unit" as ket, (SELECT SUM(gross_' +
        'weight) FROM t_selling_det WHERE trans_no=a.trans_no AND code_un' +
        'it=b.code_unit)  gross_weight, (SELECT SUM(tare_weight) FROM t_s' +
        'elling_det WHERE trans_no=a.trans_no AND code_unit=b.code_unit) ' +
        'tare_weight, COALESCE((SELECT vehicles FROM t_delivery_order_ser' +
        'vices WHERE notrans=(SELECT DISTINCT notrans from t_delivery_ord' +
        'er_load WHERE notrans_load=a.trans_no )),'#39#39')::VARCHAR vehicles  ' +
        'from "public".get_selling(False) a   LEFT JOIN "public"."t_selli' +
        'ng_det" b ON a.trans_no=b.trans_no LEFT JOIN (SELECT "customer_c' +
        'ode", "address" from "public"."t_customer_address"  where "code_' +
        'details"='#39'003'#39') d on a.code_cust=d.customer_code   LEFT JOIN (SE' +
        'LECT "customer_code", "address" from "public"."t_customer_addres' +
        's"  where "code_details"='#39'002'#39') e on a.code_cust=e.customer_code' +
        ' where (a.trans_date BETWEEN '#39'2025-10-01'#39' AND '#39'2025-10-01'#39')  AND' +
        ' a.deleted_at is null   order by b.created_at Desc')
    Left = 112
    Top = 48
  end
  object DSBuktiTerima: TDataSource
    DataSet = QSuratJalan
    Left = 344
    Top = 168
  end
end
