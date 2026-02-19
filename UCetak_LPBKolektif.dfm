object FCetak_LPbKolektif: TFCetak_LPbKolektif
  Left = 0
  Top = 0
  Caption = 'Form LPB Kolektif'
  ClientHeight = 163
  ClientWidth = 386
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 35
    Top = 31
    Width = 42
    Height = 15
    Caption = 'Tanggal'
  end
  object Label2: TLabel
    Left = 35
    Top = 75
    Width = 84
    Height = 15
    Caption = 'Jenis Pembelian'
  end
  object dtmulai: TRzDateTimeEdit
    Left = 139
    Top = 28
    Width = 145
    Height = 23
    EditType = etDate
    TabOrder = 0
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 122
    Width = 386
    Height = 41
    Align = alBottom
    Color = 15987699
    TabOrder = 1
    ExplicitTop = 113
    ExplicitWidth = 380
    object BBatal: TRzBitBtn
      Left = 309
      Top = 2
      Height = 37
      Align = alRight
      Caption = 'Close'
      TabOrder = 0
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
      ExplicitLeft = 303
    end
    object BPrint: TRzBitBtn
      Left = 222
      Top = 2
      Width = 87
      Height = 37
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
      ExplicitLeft = 216
    end
  end
  object cbkategori: TComboBox
    Left = 139
    Top = 72
    Width = 145
    Height = 23
    TabOrder = 2
  end
  object DbLPB: TfrxDBDataset
    UserName = 'DbLPB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'order_no=order_no'
      'trans_date=trans_date'
      'po_no=po_no'
      'created_by=created_by'
      'remark=remark'
      'spb_no=spb_no'
      'sj_no=sj_no'
      'faktur_no=faktur_no'
      'import_duty=import_duty'
      'faktur_date=faktur_date'
      'due_date=due_date'
      'supplier_code=supplier_code'
      'account_code=account_code'
      'purchase_type=purchase_type'
      'debt_amount=debt_amount'
      'payment_amount=payment_amount'
      'debt_remaining=debt_remaining'
      'status=status'
      'valas=valas'
      'valas_value=valas_value'
      'updated_at=updated_at'
      'updated_by=updated_by'
      'pib_no=pib_no'
      'correction_status=correction_status'
      'plan_stat=plan_stat'
      'approval_status=approval_status'
      'approval=approval'
      'sbu_code=sbu_code'
      'trans_month=trans_month'
      'trans_year=trans_year'
      'tgl_jatuh_tempo=tgl_jatuh_tempo'
      'vehicle_no=vehicle_no'
      'driver=driver'
      'supplier_name=supplier_name'
      'item_name=item_name'
      'item_stock_code=item_stock_code'
      'unit=unit'
      'qty=qty'
      'ppn_rp=ppn_rp'
      'pph_rp=pph_rp'
      'ppn_pembulatan=ppn_pembulatan'
      'subtotalrp=subtotalrp'
      'grandtotal=grandtotal'
      'subtotal=subtotal'
      'price=price'
      'ttd=ttd'
      'account_pph_code=account_pph_code'
      'um_value=um_value')
    DataSet = QReportLPB
    BCDToCurrency = False
    DataSetOptions = []
    Left = 51
    Top = 66
  end
  object QReportLPB: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.trans_no,a.order_no,a.trans_date,a.po_no,a. created_by,' +
        'a.remark,a.spb_no,a.sj_no,a.faktur_no, a.import_duty,'
      
        '           '#9'a.faktur_date,a.due_date,a.supplier_code,a.account_c' +
        'ode,a.purchase_type,a.debt_amount, '
      
        #9'        a.payment_amount,a.debt_remaining,a.status,a.valas,a.va' +
        'las_value,a.updated_at,a.updated_by,          '
      
        'a.pib_no,'#9'a.correction_status,a.plan_stat,a.approval_status,a.ap' +
        'proval,a.sbu_code, a.trans_month,          '
      
        ' a.trans_year,a.tgl_jatuh_tempo,C.vehicle_no,C.driver,D.supplier' +
        '_name,F.item_name,e.item_stock_code,e.unit,e.qty,e.ppn_rp,e.pph_' +
        'rp,e.ppn_pembulatan,e.subtotalrp,'
      
        ' e.grandtotal,e.subtotal,e.price,g.ttd,e.account_pph_code,a.um_v' +
        'alue'
      
        ' from        t_purchase_invoice A Left join t_spb C on A.spb_no=' +
        'C.spb_no inner join'
      
        '             t_purchase_invoice_det E on A.trans_no=E.trans_no i' +
        'nner join t_supplier D '
      
        '             on A.supplier_code=D.supplier_code inner join t_ite' +
        'm_stock F on'
      
        '             E.item_stock_code=F. item_stock_code left JOIN t_us' +
        'er g on a.created_by=g.user_name '
      'order by e.id asc')
    Left = 323
    Top = 10
  end
  object Rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44526.601395243100000000
    ReportOptions.LastChange = 46058.664289895830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure PageFooter1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '{ if <frxDBDLPBKolektiff."uangmuka"><>0 then'
      ' SysMemo2.visible:=true;'
      ' if <frxDBDLPBKolektiff."uangmuka">=0 then'
      ' SysMemo2.visible:=false;   }'
      'end;'
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '    Line2.Height:=257;'
      '    Line3.Height:=257;'
      '    Line4.Height:=257;'
      '    Line5.Height:=257;'
      '    Line14.Height:=257;'
      '    Line15.Height:=257;'
      '    Line18.Height:=257;'
      '    Line19.Height:=240;'
      '    Line17.Height:=240;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnReportPrint = 'ReportOnReportPrint'
    Left = 91
    Top = 66
    Datasets = <
      item
        DataSet = dm.DBPerusahaan
        DataSetName = 'DBPerusahaan'
      end
      item
        DataSet = DbLPB
        DataSetName = 'DbLPB'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 210.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
        Top = 173.858380000000000000
        Width = 755.906000000000000000
        DataSet = DbLPB
        DataSetName = 'DbLPB'
        RowCount = 0
        Stretched = True
        object Line: TfrxMemoView
          AllowVectorExport = True
          Width = 34.359363640000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffitemproduct_name: TfrxMemoView
          AllowVectorExport = True
          Left = 34.359363640000000000
          Top = 0.666666670000000000
          Width = 146.478748780000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'item_name'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."item_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffkode: TfrxMemoView
          AllowVectorExport = True
          Left = 185.166189090000000000
          Width = 68.057754980000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'item_stock_code'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."item_stock_code"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffsatuan: TfrxMemoView
          AllowVectorExport = True
          Left = 256.618654550000000000
          Width = 64.939197270000000000
          Height = 18.897650000000000000
          DataField = 'unit'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."unit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffjumlah: TfrxMemoView
          AllowVectorExport = True
          Left = 332.896441820000000000
          Width = 57.723730910000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.##;(#,#0.00);#,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DbLPB."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffhargaasli: TfrxMemoView
          AllowVectorExport = True
          Left = 399.620172730000000000
          Width = 68.278215220000000000
          Height = 18.897650000000000000
          DataField = 'price'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."price"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 471.338900000000000000
          Width = 72.841850910000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[<DbLPB."subtotalrp">+<DbLPB."ppn_rp">-<DbLPB."pph_rp">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffharga: TfrxMemoView
          AllowVectorExport = True
          Left = 548.621690910000000000
          Width = 72.944881890000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDLPBKolektiff'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."subtotalrp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffnppn: TfrxMemoView
          AllowVectorExport = True
          Left = 623.802131820000000000
          Width = 66.944881890000000000
          Height = 18.897650000000000000
          DataField = 'ppn_rp'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."ppn_rp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektiffnpph: TfrxMemoView
          AllowVectorExport = True
          Left = 694.423512730000000000
          Width = 61.159667270000000000
          Height = 18.897650000000000000
          DataField = 'pph_rp'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."pph_rp"]')
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
        Height = 124.724490000000000000
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 17.118120000000000000
          Width = 188.976500000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '*Diisi Bagian Pembelian')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 35.118120000000000000
          Top = 34.456710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibukukan')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 222.315090000000000000
          Top = 34.456710000000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui dan diberi Harga')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 420.630180000000000000
          Top = 34.456710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 617.165740000000000000
          Top = 34.456710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diterima')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 87.456710000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(_____________)')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 86.929190000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(_____________)')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 419.527830000000000000
          Top = 86.929190000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(_____________)')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 86.929190000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(_____________)')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 105.826840000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bagian Akunting')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 105.826840000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bagian Pembelian')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 105.826840000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bagian Gudang')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Top = 123.622140000000000000
          Width = 757.478016910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779527560000000000
          Top = 1.677180000000000000
          Width = 381.732530000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'verdana'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            
              '*Dengan Uang Muka Rp. [IIF(<DbLPB."um_value"><>0,<DbLPB."um_valu' +
              'e">,0.00)]')
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
        Height = 133.160583430000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        Condition = '<DbLPB."trans_no">'
        StartNewPage = True
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 7.776114960000000000
          Top = 40.250091610000000000
          Width = 124.022099470000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Supplier')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 8.442781630000000000
          Top = 62.362204720000000000
          Width = 124.022099470000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nomor Faktur')
          ParentFont = False
        end
        object frxDBDLPBKolektiffnoinv: TfrxMemoView
          AllowVectorExport = True
          Left = 519.985445930000000000
          Width = 235.110236220000000000
          Height = 30.236220470000000000
          DataSetName = 'frxDBDLPBKolektiff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            ' Nomor   : [DbLPB."trans_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDLPBKolektifftgltrans: TfrxMemoView
          AllowVectorExport = True
          Left = 478.652112590000000000
          Top = 37.362204720000000000
          Width = 274.156257670000000000
          Height = 21.221429200000000000
          DataSetName = 'frxDBDLPBKolektiff'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' Tanggal                      : [DbLPB."trans_date"]')
          ParentFont = False
        end
        object frxDBDLPBKolektiffnojalan: TfrxMemoView
          AllowVectorExport = True
          Left = 135.243272740000000000
          Top = 62.362204720000000000
          Width = 291.859989200000000000
          Height = 21.221429200000000000
          DataSetName = 'frxDBDLPBKolektiff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."faktur_no"]')
          ParentFont = False
        end
        object frxDBDLPBKolektiffNASUP: TfrxMemoView
          AllowVectorExport = True
          Left = 135.243272740000000000
          Top = 40.250091610000000000
          Width = 289.384898760000000000
          Height = 21.221429200000000000
          DataSetName = 'frxDBDLPBKolektiff'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."supplier_name"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.331056640000000000
          Top = 100.891522550000000000
          Width = 26.109915680000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 33.704711780000000000
          Top = 100.891522550000000000
          Width = 141.081138930000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 186.006320700000000000
          Top = 100.891522550000000000
          Width = 57.826771650000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 257.276389630000000000
          Top = 89.402950880000000000
          Width = 133.813317850000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DITERIMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 254.943056300000000000
          Top = 109.627674670000000000
          Width = 65.274789190000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 325.468622420000000000
          Top = 108.627674670000000000
          Width = 70.161925860000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KUANTUM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 401.089707480000000000
          Top = 109.380094230000000000
          Width = 65.274789190000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 472.281940260000000000
          Top = 109.380094230000000000
          Width = 72.833849190000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 550.241615330000000000
          Top = 110.380094230000000000
          Width = 69.054319190000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DPP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 628.177814520000000000
          Top = 100.891522550000000000
          Width = 57.715729190000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 401.089707480000000000
          Top = 89.402950880000000000
          Width = 214.206227040000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '*HARGA BELI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 695.468373710000000000
          Top = 92.402950880000000000
          Width = 57.715729190000000000
          Height = 38.198572550000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 31.891523180000000000
          Top = 90.402950880000000000
          Height = 41.978102550000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 183.358680980000000000
          Top = 90.307081730000000000
          Height = 38.198572550000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 255.648847610000000000
          Top = 90.307081730000000000
          Height = 38.198572550000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 398.094617610000000000
          Top = 90.307081730000000000
          Height = 38.198572550000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 622.996495660000000000
          Top = 90.307081730000000000
          Height = 38.198572550000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 692.452603710000000000
          Top = 90.307081730000000000
          Height = 38.198572550000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 254.825838760000000000
          Top = 109.046760900000000000
          Width = 367.175913580000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 323.815500710000000000
          Top = 109.380094230000000000
          Height = 21.221429200000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 469.550725660000000000
          Top = 109.627674670000000000
          Height = 21.221429200000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 547.540387610000000000
          Top = 109.627674670000000000
          Height = 21.221429200000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 99.666666670000000000
          Width = 420.527561500000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '                 LAPORAN PEMBELIAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 89.708720000000000000
          Width = 754.981627300000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 1.220470000000000000
          Top = 131.504020000000000000
          Width = 755.149606299213000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 125.944960000000000000
          Top = 40.236240000000000000
          Width = 6.856669470000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 125.944960000000000000
          Top = 62.362204724409400000
          Width = 6.856669470000000000
          Height = 21.221429200000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Width = 100.418447260000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBPerusahaan."company_code"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 793.905511810000000000
          Height = 491.338582680000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 478.666666670000000000
          Top = 63.769016670000000000
          Width = 274.156257670000000000
          Height = 21.221429200000000000
          DataSetName = 'frxDBDLPBKolektiff'
          DisplayFormat.FormatStr = 'dd mmmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ' Tanggal Jatuh Tempo : [DbLPB."tgl_jatuh_tempo"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 755.906000000000000000
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Width = 468.661720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL Rp.')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 471.307086610000000000
          Top = 1.000000000000000000
          Width = 283.464750000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 482.000000000000000000
          Top = -0.905690000000000000
          Width = 207.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."debt_amount"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Width = 755.149606300000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 755.149606300000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
end
