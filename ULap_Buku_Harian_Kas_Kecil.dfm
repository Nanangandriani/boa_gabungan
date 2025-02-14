object FLap_Buku_Harian_Kas_Kecil: TFLap_Buku_Harian_Kas_Kecil
  Left = 0
  Top = 0
  Caption = 'Laporan Buku Harian Kas Kecil'
  ClientHeight = 393
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  ClientWidth = 971
=======
  ClientWidth = 827
>>>>>>> Stashed changes
=======
  ClientWidth = 827
>>>>>>> Stashed changes
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  object DBGridKasKecil: TDBGridEh
    Left = 0
    Top = 127
    Width = 971
    Height = 123
    Align = alClient
    Color = clBtnFace
=======
=======
>>>>>>> Stashed changes
  object DBGridKontrak: TDBGridEh
    Left = 0
    Top = 256
    Width = 827
    Height = 96
    Align = alBottom
    Color = clGradientInactiveCaption
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
    DataGrouping.GroupLevels = <
      item
      end
      item
      end>
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    DataSource = DSBHKasKecil
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
    DrawMemoText = True
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'actors_name'
        Footers = <>
        Title.Caption = 'Pelaku'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'voucher_no'
        Footers = <>
        Title.Caption = 'No. Bukti'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'description'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jumdebit'
        Footers = <>
        Title.Caption = 'Mutasi|Debet'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jumkredit'
        Footers = <>
        Title.Caption = 'Mutasi|kredit'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sa'
        Footers = <>
        Title.Caption = 'Saldo'
        Visible = False
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'penjualan'
        Footers = <>
        Title.Caption = 'Pengeluaran Biaya|Penjualan'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bop'
        Footers = <>
        Title.Caption = 'Pengeluaran Biaya|Over Head Pabrik'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'adm'
        Footers = <>
        Title.Caption = 'Pengeluaran Biaya|Admin & Umum'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Width = 0
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Width = 0
      end>
=======
    Visible = False
>>>>>>> Stashed changes
=======
    Visible = False
>>>>>>> Stashed changes
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 352
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Width = 971
=======
    Width = 827
>>>>>>> Stashed changes
=======
    Width = 827
>>>>>>> Stashed changes
    Height = 41
    Align = alBottom
    TabOrder = 1
    Visible = False
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    ExplicitTop = 343
    ExplicitWidth = 965
    object BBatal: TRzBitBtn
      Left = 895
=======
=======
>>>>>>> Stashed changes
    ExplicitTop = 538
    ExplicitWidth = 655
    object BBatal: TRzBitBtn
      Left = 751
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
      Top = 1
      Height = 39
      Align = alRight
      Caption = 'Batal'
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
<<<<<<< Updated upstream
<<<<<<< Updated upstream
      ExplicitLeft = 889
    end
    object BPrint: TRzBitBtn
      Left = 816
=======
=======
>>>>>>> Stashed changes
      ExplicitLeft = 619
    end
    object BPrint: TRzBitBtn
      Left = 672
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
      Top = 1
      Width = 79
      Height = 39
      Align = alRight
      Caption = 'Print'
      TabOrder = 1
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
        89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
        5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
        8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
        181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
        D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
        8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
        5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
        D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
        E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
        D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
        E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
        D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
        5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
<<<<<<< Updated upstream
<<<<<<< Updated upstream
      ExplicitLeft = 810
=======
      ExplicitLeft = 721
      ExplicitTop = 6
>>>>>>> Stashed changes
=======
      ExplicitLeft = 721
      ExplicitTop = 6
>>>>>>> Stashed changes
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Top = 250
    Width = 971
    Height = 102
    Align = alBottom
    BorderSides = [sdLeft, sdTop, sdRight]
    Color = 15987699
    TabOrder = 2
    Visible = False
    ExplicitTop = 241
    ExplicitWidth = 965
=======
=======
>>>>>>> Stashed changes
    Top = 154
    Width = 827
    Height = 102
    Align = alBottom
    BorderSides = [sdLeft, sdTop, sdRight]
    Color = clGradientInactiveCaption
    TabOrder = 2
    Visible = False
    ExplicitTop = 148
<<<<<<< Updated upstream
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
    object Label2: TLabel
      Left = 22
      Top = 98
      Width = 87
      Height = 13
      Caption = 'PILIH LOKASI'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 22
      Top = 51
      Width = 66
      Height = 13
      Caption = 'Pilih Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 21
      Top = 6
      Width = 113
      Height = 13
      Caption = 'Account Yang Dikredit'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object dxBevel1: TdxBevel
      Left = 280
      Top = 0
      Width = 65
      Height = 105
    end
    object Label3: TLabel
      Left = 300
      Top = 57
      Width = 25
      Height = 15
      Caption = 'Print'
    end
    object SpeedButton1: TSpeedButton
      Left = 290
      Top = 15
      Width = 45
      Height = 40
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
      OnClick = SpeedButton1Click
    end
    object Cbsemua: TRzCheckBox
      Left = 136
      Top = 120
<<<<<<< Updated upstream
<<<<<<< Updated upstream
      Width = 99
      Height = 15
=======
      Width = 103
      Height = 19
>>>>>>> Stashed changes
=======
      Width = 103
      Height = 19
>>>>>>> Stashed changes
      Caption = 'Semua Lokasi'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      State = cbUnchecked
      TabOrder = 0
      Visible = False
    end
    object CbLokasi: TRzComboBox
      Left = 22
      Top = 117
      Width = 100
      Height = 23
      TabOrder = 1
      Visible = False
      Items.Strings = (
        'MLB1'
        'MLB2'
        'MLB3')
    end
    object DTPick1: TDateTimePicker
      Left = 21
      Top = 69
      Width = 116
      Height = 21
      Date = 45646.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.524894444402889300
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Verdana'
      Font.Style = []
      ImeName = 'US'
      ParentFont = False
      TabOrder = 2
    end
    object Button11: TButton
      Left = 223
      Top = 22
      Width = 33
      Height = 24
      Caption = '...'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object txtnmacckredit: TEdit
      Left = 93
      Top = 22
      Width = 124
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      MaxLength = 16
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 4
      Text = 'KAS KECIL'
    end
    object txtkdacckredit: TEdit
      Left = 21
      Top = 22
      Width = 70
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      MaxLength = 16
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 5
      Text = '1112'
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Width = 971
=======
    Width = 827
>>>>>>> Stashed changes
=======
    Width = 827
>>>>>>> Stashed changes
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 3
    TabStop = False
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    ExplicitWidth = 965
=======
    ExplicitWidth = 651
>>>>>>> Stashed changes
=======
    ExplicitWidth = 651
>>>>>>> Stashed changes
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object frxDBDatasetPers: TfrxDBDataset
    UserName = 'frxDBDatasetPers'
    CloseDataSource = False
    FieldAliases.Strings = (
      'company_code=company_code'
      'company_name=company_name'
      'address=address'
      'telp=telp'
      'email=email'
      'npwp=npwp'
      'city=city'
      'address2=address2'
      'id=id'
      'created_at=created_at'
      'created_by=created_by'
      'updated_at=updated_at'
      'updated_by=updated_by'
      'deleted_at=deleted_at'
      'deleted_by=deleted_by'
      'type_of_business=type_of_business'
      'latitude=latitude'
      'longitude=longitude'
      'tax_status=tax_status'
      'currency=currency')
    DataSet = QPerusahaan
    BCDToCurrency = False
    DataSetOptions = []
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Left = 752
    Top = 80
=======
    Left = 656
    Top = 208
>>>>>>> Stashed changes
=======
    Left = 656
    Top = 208
>>>>>>> Stashed changes
  end
  object QPerusahaan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_company')
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Left = 704
    Top = 80
=======
    Active = True
    Left = 648
    Top = 160
>>>>>>> Stashed changes
=======
    Active = True
    Left = 648
    Top = 160
>>>>>>> Stashed changes
    object QPerusahaancompany_code: TStringField
      FieldName = 'company_code'
      Required = True
      Size = 10
    end
    object QPerusahaancompany_name: TStringField
      FieldName = 'company_name'
      Size = 255
    end
    object QPerusahaanaddress: TStringField
      FieldName = 'address'
      Size = 255
    end
    object QPerusahaantelp: TStringField
      FieldName = 'telp'
    end
    object QPerusahaanemail: TStringField
      FieldName = 'email'
      Size = 255
    end
    object QPerusahaannpwp: TStringField
      FieldName = 'npwp'
      Size = 50
    end
    object QPerusahaancity: TStringField
      FieldName = 'city'
      Size = 255
    end
    object QPerusahaanaddress2: TStringField
      FieldName = 'address2'
      Size = 255
    end
    object QPerusahaanid: TGuidField
      FieldName = 'id'
      Required = True
      Size = 38
    end
    object QPerusahaancreated_at: TDateTimeField
      FieldName = 'created_at'
    end
    object QPerusahaancreated_by: TStringField
      FieldName = 'created_by'
      Size = 50
    end
    object QPerusahaanupdated_at: TDateTimeField
      FieldName = 'updated_at'
    end
    object QPerusahaanupdated_by: TStringField
      FieldName = 'updated_by'
      Size = 50
    end
    object QPerusahaandeleted_at: TDateTimeField
      FieldName = 'deleted_at'
    end
    object QPerusahaandeleted_by: TStringField
      FieldName = 'deleted_by'
      Size = 50
    end
    object QPerusahaantype_of_business: TStringField
      FieldName = 'type_of_business'
      Size = 255
    end
    object QPerusahaanlatitude: TStringField
      FieldName = 'latitude'
      Size = 255
    end
    object QPerusahaanlongitude: TStringField
      FieldName = 'longitude'
      Size = 255
    end
    object QPerusahaantax_status: TBooleanField
      FieldName = 'tax_status'
    end
    object QPerusahaancurrency: TStringField
      FieldName = 'currency'
      Size = 10
    end
  end
  object frxReport1: TfrxReport
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Version = '2022.1.3'
=======
    Version = '2022.2.7'
>>>>>>> Stashed changes
=======
    Version = '2022.2.7'
>>>>>>> Stashed changes
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44224.360934872700000000
    ReportOptions.LastChange = 45649.467423819440000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '                 '
      'end;'
      ''
      'procedure Page1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo88OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '     '
      'end;'
      ''
      'begin'
      ''
      'end.')
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Left = 616
    Top = 88
=======
    Left = 584
    Top = 160
>>>>>>> Stashed changes
=======
    Left = 584
    Top = 160
>>>>>>> Stashed changes
    Datasets = <
      item
        DataSet = frxDBDatasetPers
        DataSetName = 'frxDBDatasetPers'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      OnAfterPrint = 'Page1OnAfterPrint'
      OnBeforePrint = 'Page1OnBeforePrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 129.637795280000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 64.251968500000000000
          Width = 101.393700790000000000
          Height = 64.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pelaku')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 178.771653540000000000
          Top = 64.251968500000000000
          Width = 148.157480310000000000
          Height = 64.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 327.456697800000000000
          Top = 64.251968500000000000
          Width = 203.015762680000000000
          Height = 22.505764100000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mutasi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 428.220472440000000000
          Top = 88.149606300000000000
          Width = 102.047244090000000000
          Height = 39.755925040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 632.399792310000000000
          Top = 64.316261580000000000
          Width = 537.952782760000000000
          Height = 23.874015750000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Pengeluaran Biaya')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 809.566929130000000000
          Top = 88.267716540000000000
          Width = 90.330708660000000000
          Height = 39.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Admin & Umum')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 899.339210000000000000
          Top = 78.370078740000000000
          Width = 270.708768820000000000
          Height = 28.519685040000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lain - Lain')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1produk1: TfrxMemoView
          AllowVectorExport = True
          Left = 326.551181100000000000
          Top = 88.434381580000000000
          Width = 101.047244090000000000
          Height = 40.133848500000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Debit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 979.653543307087000000
          Top = 108.267716540000000000
          Width = 95.622047240000000000
          Height = 19.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1074.716535430000000000
          Top = 108.267716540000000000
          Width = 95.803149610000000000
          Height = 19.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memoperiode: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 34.762978950000000000
          Width = 1171.256454740000000000
          Height = 27.252400530000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL  :  parTgl')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memojudul: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.994613160000000000
          Width = 1169.665073680000000000
          Height = 43.365133680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BUKU HARIAN KAS KECIL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 1170.141732280000000000
          Height = 64.251968500000000000
          Frame.Typ = []
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 530.267716540000000000
          Top = 64.251968500000000000
          Width = 102.047244090000000000
          Height = 65.385826770000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 633.299212600000000000
          Top = 88.267780000000000000
          Width = 86.937007870000000000
          Height = 39.685039370000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 719.992125980000000000
          Top = 88.267780000000000000
          Width = 90.330708660000000000
          Height = 39.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Over Head '
            'Pabrik')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 899.527559060000000000
          Top = 108.267716540000000000
          Width = 79.921259840000000000
          Height = 19.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemoPersh: TfrxMemoView
          AllowVectorExport = True
          Left = 8.000000000000000000
          Top = 6.102350000000000000
          Width = 279.488250000000000000
          Height = 18.897650000000000000
          DataField = 'company_name'
          DataSet = frxDBDatasetPers
          DataSetName = 'frxDBDatasetPers'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPers."company_name"]')
          ParentFont = False
        end
        object Memoalamat: TfrxMemoView
          AllowVectorExport = True
          Left = 9.000000000000000000
          Top = 26.102350000000000000
          Width = 315.771653540000000000
          Height = 30.795300000000000000
          DataField = 'address'
          DataSet = frxDBDatasetPers
          DataSetName = 'frxDBDatasetPers'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetPers."address"]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 1051.000000000000000000
          Top = 7.102350000000000000
          Width = 106.795300000000000000
          Height = 26.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hal. [PAGE#] dari [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 100.913385830000000000
          Top = 64.251968500000000000
          Width = 78.393700790000000000
          Height = 64.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Bukti')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220470000000000
        Top = 207.874150000000000000
        Width = 1171.654300000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Width = 101.393700790000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'actors_name'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          Memo.UTF8W = (
            '[frxDBDataset1."actors_name"]')
          ParentFont = False
          Duplicates = dmMerge
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 429.220472440000000000
          Width = 102.047244090000000000
          Height = 30.236220472440900000
          StretchMode = smMaxHeight
          DataField = 'jumkredit'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."jumkredit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 810.708661417323000000
          Width = 89.574803149606300000
          Height = 30.236220472440900000
          StretchMode = smMaxHeight
          DataField = 'adm'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."adm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 326.551181100000000000
          Width = 100.913385830000000000
          Height = 30.236220472440900000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."jumdebit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 530.267716540000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'saldo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."saldo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 979.653543310000000000
          Width = 97.511811020000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1074.716535430000000000
          Width = 95.803149610000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 633.448818900000000000
          Width = 86.929133860000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."penjualan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 720.000000000000000000
          Width = 89.952755910000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataField = 'bop'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."bop"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 899.527559060000000000
          Width = 80.125984250000000000
          Height = 30.236220470000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object qrmemoket: TfrxMemoView
          AllowVectorExport = True
          Left = 101.913385830000000000
          Width = 77.157480310000000000
          Height = 30.236220472440900000
          StretchMode = smMaxHeight
          DataField = 'voucher_no'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8W = (
            '[frxDBDataset1."voucher_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 178.771653540000000000
          Width = 148.157480310000000000
          Height = 30.236220472440900000
          StretchMode = smMaxHeight
          DataField = 'description'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          Memo.UTF8W = (
            '[frxDBDataset1."description"]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220470000000000
        Top = 404.409710000000000000
        Visible = False
        Width = 1171.654300000000000000
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Width = 326.698777960000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah        ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 428.220472440000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 793.700787400000000000
          Width = 92.598425200000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 326.551181100000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 530.267716540000000000
          Width = 68.031496062992100000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 978.883150260000000000
          Width = 96.275590550000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 1074.828110260000000000
          Width = 94.803142280000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 598.299212600000000000
          Width = 103.937007874016000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 702.268740260000000000
          Width = 90.708656540000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 886.788530260000000000
          Width = 92.275590550000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220470000000000
        Top = 351.496290000000000000
        Width = 1171.654300000000000000
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 81.637795280000000000
          Width = 245.157480310000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Total           ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 428.220472440000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."jumkredit">,MasterData1,1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 810.708661420000000000
          Width = 89.574803150000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 326.551181100000000000
          Width = 100.913385830000000000
          Height = 30.236220470000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."jumdebit">,MasterData1,1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 530.267716535433000000
          Width = 102.047244094488000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 979.653543307087000000
          Width = 97.511811023622000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 1074.716535430000000000
          Width = 95.803149610000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 633.448818897638000000
          Width = 86.929133858267700000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 720.000000000000000000
          Width = 89.952755910000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 899.527559055118000000
          Width = 80.125984251968500000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Top = 0.047000000000000000
          Width = 82.393700790000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            ' ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220470000000000
        Top = 298.582870000000000000
        Width = 1171.654300000000000000
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 81.637795280000000000
          Width = 245.157480310000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah        ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 428.220472440000000000
          Width = 102.047244090000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."jumkredit">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 810.708661420000000000
          Width = 89.574803150000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."adm">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 326.551181100000000000
          Width = 100.913385830000000000
          Height = 30.236220470000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."jumdebit">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '#,##0.00;(#,##0.00);'#39
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 530.267716535433000000
          Width = 102.047244094488000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 979.653543307087000000
          Width = 97.511811023622000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 1074.716535430000000000
          Width = 95.803149610000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 633.448818900000000000
          Width = 86.929133860000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."penjualan">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 720.000000000000000000
          Width = 89.952755910000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."bop">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 899.527559055118000000
          Width = 80.125984251968500000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Top = -0.039580000000000000
          Width = 82.393700790000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haRight
          Memo.UTF8W = (
            '   ')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nomor=nomor'
      'trans_date=trans_date'
      'voucher_no=voucher_no'
      'description=description'
      'actors_name=actors_name'
      'order_no=order_no'
      'actors_code=actors_code'
      'code=code'
      'jumdebit=jumdebit'
      'jumkredit=jumkredit'
      'penjualan=penjualan'
      'adm=adm'
      'bop=bop'
      'urutan=urutan'
      'sa=sa'
      'debit=debit'
      'kredit=kredit'
      'saldo=saldo')
    DataSet = QKasKecil
    BCDToCurrency = False
    DataSetOptions = []
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Left = 608
    Top = 32
=======
    Left = 528
    Top = 216
>>>>>>> Stashed changes
=======
    Left = 528
    Top = 216
>>>>>>> Stashed changes
  end
  object QKasKecil: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT zzz.*,sum(sa+debit-kredit) over (ORDER BY nomor asc )  sa' +
        'ldo  FROM '
      
        '(SELECT  "row_number"() over (ORDER BY urutan)+1 nomor,trans_dat' +
        'e,voucher_no,description,actors_name,order_no,actors_code,code'
      
        ',jumdebit,jumkredit,penjualan,adm,bop,urutan,0 sa,jumdebit debit' +
        ',jumkredit kredit '
      'FROM  '
      
        '(select distinct a.trans_date,a.voucher_no,a.description,a.actor' +
        's_name,a.order_no,a.actors_code,a.code,(case when debit.jumlah i' +
        's null then 0 else debit.jumlah end)jumdebit,(case when kredit.j' +
        'umlah is null then 0 else kredit.jumlah end)jumkredit, (case whe' +
        'n d.jumlah is null then 0 else d.jumlah end)penjualan,(case when' +
        ' b.jumlah is null then 0 else b.jumlah end)adm,(case when c.juml' +
        'ah is null then 0 else c.jumlah end)bop,(case when debit.jumlah>' +
        '0 then 1 else 10 end)urutan from '
      
        '(select distinct c.trans_date,c.voucher_no,c.description,c.actor' +
        's_name,c.order_no,c.actors_code,b.code from t_petty_cash_det a'
      'INNER JOIN t_petty_cash c ON a.voucher_no=a.voucher_no '
      'LEFT JOIN '
      't_cost_actors b on c.actors_code=b.code where '
      ' code_account='#39'1112'#39'  order by trans_date,voucher_no)a  '
      'left join'
      
        '(select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_d' +
        'et where (code_account='#39'1112'#39' )and("position"='#39'D'#39') group by '
      
        'voucher_no order by voucher_no)debit on a.voucher_no=debit.vouch' +
        'er_no '
      'left join'
      
        '(select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_d' +
        'et where ("position"='#39'K'#39')and(code_account='#39'1112'#39' ) group by vouc' +
        'her_no order by voucher_no)kredit on a.voucher_no=kredit.voucher' +
        '_no '
      'left join'
      
        '(select a.voucher_no,sum(a.paid_amount)as jumlah from t_petty_ca' +
        'sh_det a,t_ak_account b '
      'where '
      '(a."position"='#39'D'#39') and'
      
        '(a.code_account=b.code)and (b.type_id=2)group by voucher_no orde' +
        'r by voucher_no)b on a.voucher_no=b.voucher_no  '
      'left join'
      
        '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash' +
        '_det a,t_ak_account b '
      'where '
      '(a."position"='#39'D'#39') and'
      
        '(a.code_account=b.code)and (b.type_id=3) group by voucher_no ord' +
        'er by voucher_no)c on a.voucher_no=c.voucher_no '
      'left join'
      
        '(select voucher_no,sum(a.paid_amount)as jumlah from t_petty_cash' +
        '_det a,t_ak_account b '
      'where '
      
        '(a.code_account=b.code)and (b.type_id=4) group by voucher_no ord' +
        'er by voucher_no)d on a.voucher_no=d.voucher_no order by trans_d' +
        'ate,urutan,order_no,voucher_no)xxx '
      'UNION ALL '
      
        'SELECT 1 nomor,null as tgltrans,'#39#39' as voucher,'#39'Saldo Awal'#39' ket,'#39 +
        #39' kepada,0 nourut,'#39'0'#39' id_pelaku,'#39#39' kode_tp'
      
        ',0 jum_debit,0 jum_kredit,0 penjualan,0 adm,0 bop,0 urutan,0 sa,' +
        '0 debit,0 kredit  '
      'FROM'
      
        '(select yy.kodesp,yy.balance,xx.jum_debit,xx.jum_kredit,sum(yy.b' +
        'alance+xx.jum_debit-xx.jum_kredit) as saldo_awal from '
      
        '(select code as kodesp,balance from t_ak_account where  code='#39'11' +
        '12'#39')yy '
      'left join '
      
        '(select x.kodesp,(case when a.jum_debit is null then 0 else a.ju' +
        'm_debit end)jum_debit ,(case when b.jum_kredit is null then 0 el' +
        'se b.jum_kredit end)jum_kredit from (select code as kodesp from ' +
        't_ak_account where code='#39'1112'#39')x  '
      'left join '
      
        '(select r.code_account,(case when sum(r.paid_amount)is null then' +
        ' 0 else sum(r.paid_amount) end)jum_debit  from t_petty_cash_det ' +
        'r '
      'INNER JOIN t_petty_cash s on r.voucher_no=s.voucher_no'
      
        'where (s.trans_date between '#39'2021-10-01'#39' and '#39'2024-12-19'#39') and  ' +
        'r.code_account='#39'1112'#39' and "position"='#39'D'#39'  group by code_account ' +
        'order by code_account)a on a.code_account=x.kodesp '
      
        'left join (select j.code_account,(case when sum(j.paid_amount)is' +
        ' null then 0 else sum(j.paid_amount) end)jum_kredit from t_petty' +
        '_cash_det j INNER JOIN t_petty_cash k on j.voucher_no=k.voucher_' +
        'no '
      
        'where (k.trans_date between '#39'2021-10-01'#39' and '#39'2024-12-19'#39') and j' +
        '.code_account='#39'1112'#39' and "position"='#39'K'#39'  group by code_account o' +
        'rder by code_account)b on b.code_account=x.kodesp)xx on yy.kodes' +
        'p=xx.kodesp GROUP BY  yy.kodesp,yy.balance,xx.jum_debit,xx.jum_k' +
        'redit)yyy  '
      ')zzz '
      
        'GROUP BY zzz.nomor, zzz.trans_date,zzz.voucher_no, zzz.descripti' +
        'on,zzz.actors_name,zzz.order_no,zzz.actors_code,zzz.code,zzz.jum' +
        'debit,zzz.jumkredit,zzz.penjualan,zzz.adm,zzz.bop,zzz.urutan,zzz' +
        '.sa,zzz.debit,zzz.kredit ORDER BY nomor ASC'
      ''
      '')
    Active = True
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Left = 560
    Top = 32
=======
    Left = 528
    Top = 160
>>>>>>> Stashed changes
=======
    Left = 528
    Top = 160
>>>>>>> Stashed changes
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
<<<<<<< Updated upstream
<<<<<<< Updated upstream
    Left = 756
    Top = 24
=======
    Left = 588
    Top = 32
>>>>>>> Stashed changes
=======
    Left = 588
    Top = 32
>>>>>>> Stashed changes
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 805
      FloatTop = 8
      FloatClientWidth = 220
      FloatClientHeight = 213
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 103
          Visible = True
          ItemName = 'dxBarEdit3'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 104
          Visible = True
          ItemName = 'DTPick11'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 102
          Visible = True
          ItemName = 'txtkdacckredit1'
        end
        item
          Visible = True
          ItemName = 'DxRefresh'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBUpdate: TdxBarButton
      Caption = 'Update  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D960600000000000036000000280000001800000011000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFF6E3BBFFEEC7
        74FFEABC59FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC
        58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFECC2
        67FFF2D69AFFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFEFCA7CFFE3A41CFFECC3
        69FFF7E5BFFFF8EACCFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EA
        CAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACBFFF8EACAFFF0CE
        85FFE4A621FFE4A723FFFCF6EAFFFFFFFFFFFFFFFFFFE6AD33FFEECA7AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8E8C7FFE4A724FFF3D89EFFFFFFFFFFFFFFFFFFE6AE36FFF1D391FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE6AE36FFEFCA7CFFF5DE
        ADFFFAEFD9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC979FFE5AC2FFFE4A8
        25FFE8B343FFF8EBCDFFF4DDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3E3FFE2A115FFF4DB
        A7FFF8E9C8FFE5AB2EFFE5AA2AFFEDC36BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECD1FFECC2
        67FFE5AB2DFFE7B240FFE8B341FFE6AE36FFE7B03AFFFCF7EBFFFFFFFFFFFFFF
        FFFFFFFEFFFFE19C09FFF2D699FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D9
        A1FFE4A826FFE7B13DFFE8B341FFE8B341FFE7B13DFFE4A827FFF4DDACFFFFFF
        FFFFFFFFFFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF6E8FFE7AF38FFE6AF37FFE8B341FFE8B341FFE7B240FFE5AB2DFFECC2
        67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D38FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECC267FFE5AB2DFFE7B240FFE8B341FFE8B341FFE6AF
        37FFE6AF38FFFCF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFE6AD34FFF1D290FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DDABFFE4A827FFE7B13DFFE8B341FFE8B3
        41FFE7B13DFFE4A825FFF2D699FFFFFFFFFFFFFFFFFFEBBE5CFFE6AE35FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7EBFFE7B03AFFE6AE36FFE8B3
        41FFE7B03AFFE6AC31FFF8EACAFFF3D89DFFFFFFFFFFFDF9F0FFE5AB2DFFE3A5
        1EFFEBBE5DFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBF5FFFEBBF
        5FFFEBBF5FFFE9B950FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFECC36BFFE4A7
        23FFECC164FFFEFCF8FFEABA53FFE5AA2AFFE6AE36FFFFFFFFFFFFFFFFFFF9EB
        CFFFF7E4BCFFF6E4BCFFF6E3BAFFF6E3B9FFF6E2B8FFF6E2B6FFF6E1B5FFF5E0
        B3FFF5E0B2FFF4DCA8FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC
        D0FFF6E1B5FFE4A724FFE5AC2FFFE7B03BFFFCF6E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF7ECFFEDC36AFFF1D08BFFFFFFFFFFFFFFFFFF}
    end
    object dxBDelete: TdxBarButton
      Caption = 'Delete  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424DD60500000000000036000000280000001400000012000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFF9A9A
        FFFF0000FFFFBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBFFFF0000FFFF9D9DFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF7474FFFF0000FFFF0000FFFF0000FFFF9999FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
        FFFF0000FFFF0000FFFF0000FFFF7676FFFFFFFFFFFF7070FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF7E7EFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6FFFF7C7CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7171FFFF4343FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF6060FFFFE3E3FFFFFFFFFFFFFFFFFFFFE3E3FFFF5E5EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF4545FFFFFFFFFFFF4F4FFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3F3FFFFFDEDEFFFFDDDD
        FFFF3E3EFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5050
        FFFFFFFFFFFFFFFFFFFFFBFBFFFF5757FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF3333FFFF3232FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF5757FFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FFFF6161FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6262FFFFFBFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBCBCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFFBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFA8A8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6868FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6C6CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFFFF5858FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF5A5AFFFFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFF5555
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3636FFFF3636
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFFF9F9
        FFFFFFFFFFFFFCFCFFFF4A4AFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF4A4AFFFFE2E2FFFFE1E1FFFF4A4AFFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF4D4DFFFFFCFCFFFF3E3EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6D6DFFFFE8E8FFFFFFFFFFFFFFFF
        FFFFE8E8FFFF6C6CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF3E3EFFFF7575FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF8A8A
        FFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFF8A8AFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF7777FFFFFFFFFFFF7D7DFFFF0000
        FFFF0000FFFF0000FFFFA2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1FFFF0000FFFF0000FFFF0000FFFF7E7E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7FFFF0B0BFFFFC0C0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBFBFFFFF0C0CFFFFABABFFFFFFFFFFFFFFFFFFFF}
    end
    object dxBbaru: TdxBarLargeButton
      Caption = 'Baru  '
      Category = 0
      Visible = ivNever
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D660700000000000036000000280000001700000014000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA
        7CFFD09E6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A1
        6FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD09E6BFFD6AA
        7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7AD80FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D8FFC27A32FFD0985CFFD099
        5DFFD5A169FFBF7527FFE1C19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5D6FFEBCCABFFFFFFFFFFFFFFFFFFF0D4
        B6FFDEBA94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1E4D7FFE7C4A0FFFFFCF0FFDBAB7AFFDCB996FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A9
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFAF7FFE3BA90FFD4A16CFFE8D2BAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA7CFFD09E
        6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A2
        70FFCE9963FFC68746FFF4E9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF}
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Print  '
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ItemLinks = <
        item
          Visible = True
          ItemName = 'BProduksi'
        end
        item
          Visible = True
          ItemName = 'BNonProduksi'
        end>
    end
    object BProduksi: TdxBarButton
      Caption = 'Barang Produksi'
      Category = 0
      Hint = 'Barang Produksi'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BNonProduksi: TdxBarButton
      Caption = 'Barang Non Produksi'
      Category = 0
      Hint = 'Barang Non Produksi'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object BClosed: TdxBarButton
      Caption = 'CLose Kontrak    '
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D260900000000000036000000280000001A00000016000000010020000000
        00000000000074120000741200000000000000000000F7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFBFCFCFFFFFF
        FFFFE4E3E3FF9F9B99FF75706DFF615A58FF615A58FF75706DFF9F9B99FFE4E3
        E3FFFFFFFFFFFBFCFCFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFF
        FFFFE2E2E1FF605A57FF372F2BFF423B37FF463F3CFF48413EFF48413EFF463F
        3CFF423B37FF372F2BFF605A57FFE2E2E1FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFFFFFFFFFA4A19FFF342C28FF47403DFF49423FFF49423FFF49423FFF4942
        3FFF49423FFF49423FFF49423FFF49423FFF47403DFF342C28FFA4A19FFFFFFF
        FFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFFFFFFFFF979392FF38302DFF4C4542FF413A36FF57514EFF564F
        4CFF564F4CFF58514EFF58514EFF564F4CFF564F4CFF57514EFF413A36FF4C45
        42FF38302DFF979392FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFFFFFFFFFC8C6C6FF352D29FF4C4542FF413A37FFB1AE
        ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB1AEADFF413A36FF4C4542FF352D29FFC8C6C6FFFFFFFFFFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFF423A37FF4B4340FF4D46
        43FF3F3835FFBBB8B8FFFFFFFFFFFFFFFFFFFFFFFFFF4B4441FF49423FFFFFFF
        FFFFFFFFFFFFFFFFFFFFBBB8B8FF3F3835FF4D4643FF4B4340FF423A37FFFFFF
        FFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFB4B1B0FF3E36
        33FF4D4643FF4D4643FF3F3835FFBAB7B6FFFFFFFFFFFFFFFFFFFFFFFFFF8A85
        83FF847F7DFFFFFFFFFFFFFFFFFFFFFFFFFFBAB7B6FF3F3835FF4D4643FF4D46
        43FF3E3633FFB4B1B0FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFF
        FFFF6C6664FF47403DFF4D4643FF4D4643FF3F3835FFBAB7B6FFFFFFFFFFFFFF
        FFFFFFFFFFFF4E4745FF4E4744FFFFFFFFFFFFFFFFFFFFFFFFFFBAB7B6FF3F38
        35FF4D4643FF4D4643FF47403DFF6C6664FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFFFFFFFFF3F3734FF4B4441FF4D4643FF4D4643FF3F3835FFBCB9
        B8FFFFFFFFFFFFFFFFFFFFFFFFFF8A8684FF8A8684FFFFFFFFFFFFFFFFFFFFFF
        FFFFBCB9B8FF3F3835FF4D4643FF4D4643FF4B4441FF3F3734FFFFFFFFFFF7F7
        F7FFF7F7F7FFF7F7F7FFF8F8F8FFFFFFFFFF372F2CFF4D4643FF4D4643FF4D46
        43FF423A37FFAFABAAFFEAEAE9FFEEEEEDFFEFEFEEFFFCFCFCFFFCFCFCFFEFEF
        EEFFEEEDEDFFE9E8E8FFAFACAAFF423A37FF4D4643FF4D4643FF4D4643FF372F
        2CFFFFFFFFFFF8F8F8FFF7F7F7FFF7F7F7FFF8F8F8FFFFFFFFFF372F2CFF4D46
        43FF4D4643FF4D4643FF4B4441FF403935FFB6B4B3FF362E2BFF39312EFF3A32
        2FFF3A322FFF39312EFF38302DFFC8C6C5FF3D3632FF4C4542FF4D4643FF4D46
        43FF4D4643FF372F2CFFFFFFFFFFF8F8F8FFF7F7F7FFF7F7F7FFF7F7F7FFFFFF
        FFFF403935FF4B4441FF4D4643FF4D4643FF4B4441FF48413EFFFFFFFFFF4840
        3DFF4B4441FF4D4643FF4D4643FF4B4441FF48413EFFFFFFFFFF48413EFF4B44
        41FF4D4643FF4D4643FF4B4441FF403935FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFFFFFFFFF6F6967FF473F3CFF4D4643FF4D4643FF4B4441FF463F
        3BFFFFFFFFFF453E3BFF4B4440FF4D4643FF4D4643FF4B4441FF413936FFFFFF
        FFFF4B4441FF4B4440FF4D4643FF4D4643FF473F3CFF6F6966FFFFFFFFFFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFB8B5B4FF3D3632FF4D4643FF4D46
        43FF4C4542FF39322EFFFFFFFFFF6D6765FF3E3733FF4B4441FF4B4441FF3F37
        34FF696361FFFFFFFFFF3B3330FF4C4542FF4D4643FF4D4643FF3D3632FFB8B5
        B4FFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFF453E
        3AFF4A4340FF4D4643FF4D4643FF423B38FF9A9694FFFFFFFFFF837E7CFF3F37
        34FF3F3834FF837E7CFFFFFFFFFF9C9897FF423B37FF4D4643FF4D4643FF4A43
        40FF453E3AFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFFEFEFEFFD0CECDFF342C28FF4C4542FF4D4643FF4C4542FF3A332FFF8984
        82FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF898583FF3A322FFF4C4542FF4D46
        43FF4C4542FF342C28FFD0CECDFFFEFEFEFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFA29E9DFF362E2BFF4C4542FF4D46
        43FF4C4542FF443D3AFF38302DFF463E3BFF453E3BFF38302DFF443D3AFF4C45
        42FF4D4643FF4C4542FF362E2BFFA29E9DFFFFFFFFFFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFFFFFFFFAFAC
        ABFF342C29FF463F3CFF4C4542FF4D4643FF4D4643FF4B4441FF4B4441FF4D46
        43FF4D4643FF4C4542FF463F3CFF342C29FFAFACABFFFFFFFFFFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFFFFFFFFFEAEAEAFF6A6562FF352D2AFF413936FF453E3BFF4740
        3DFF47403DFF453E3BFF413936FF352D2AFF6B6562FFEAEAEAFFFFFFFFFFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFFBFBFBFFFFFFFFFFEEEDEDFFA8A5
        A4FF7F7A77FF6A6462FF6A6462FF7F7A77FFA8A5A4FFEEEDEDFFFFFFFFFFFBFB
        FBFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFA
        FAFFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FF}
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000C744558745469746C65005072696E743BC83632EA0000060E494441
        54785EA5575D885655177EF63967DEF9719A19474B25132C8B4253340AEBD31C
        6FA22ECAFA2C2F0A2A90BAC8E0B32E02454292309A1B2914FAA5FAAE0215ED2A
        A48B52502B27C902514C4AC2149CE6CF99F7ECFF662DF739FBBC338C32B45F16
        FBBCFBACB39F673D6B9DF5EE5778EF511D42089E0024FFFFEAE43789487A00A0
        F4F23EDCF6FC2987033C2F476F7235D61CDEF8F4038F00D0E435112FC3D423F1
        1E3DCF3EBE14FF667CB2EFC4C301C7C4D51B136005AC7130E3A6ADE77062EC31
        C24ABCE142A08832CB048C62DC946E4C83009BD0C6C23AC0398702CA5614F425
        8B08EA4B221E894B417B503000307D02DAC27B22C1092E01194408A002CA9785
        22E42380D479286510A39F660A9431701EB01CB60F51062270013F824E54C50A
        571048A64C8110626A05A481731ED64559F9D3081C5411D55A60BF3401A45255
        05C4F8F0D753403428A00D835BEB0248008D05588245E048D0A6099434054E1A
        1E7561F65502822D4AD504A04549CDE0C63A5E74938B0E40883EBEFFC5353F27
        39059811FA800260825972CA0AE0B7777DB960DEFC85BD499A3E74B2EFE8BC2C
        4D906B4D05185210A078765172462B6A44444504F8592935FEB775D739E53C96
        2C79E09256F90FA7FA8E6CF974F7F6F3442A23F077DEDFBF78E1ED771CBE7FE9
        6D9D7366B5E3E8B1EFB072CDA3F8B5EF34AC454841D1E97CB80E33A222824994
        3A700AB4D6B877E51A7CFFED213CFFE47D73FFBA32F24447477B4FEB8C8EC776
        BFFB7A1FE7A6AB7BCE5BF72DB9B573F6CC36B4B664503287CCC748BE52010672
        00A7A290BF943E10E49548D4596E64BC5F2EEB68AE659879532BFEB37C61C7E5
        CBFD6F02788609382FD6D69A520C8DD4D1DED60C994B68A970FEF471BCF4CA31
        DE3144DC303C1AAA718ACE082C5BB108B22E916529864773348DCF495A5B0DA0
        C629D0D677E4B96686843238308081FE2B58D9B3B652A395DD85C06436C14F54
        FDC063A0BF1F4383039C26671C7265A08D6BA3E0B908294FCA58A469C28D4778
        87F3674E23A3DB2241ADB9B944C9B20C69C68F4594CA30C6C01A53DE564A722A
        ACD19C3A6D1D943665836205B46646686AF2ECB46CF19D3871F22CB2A65A0CB4
        6CBFF1BBE0B28B5D398AC5BE10A1414955C78A65F7502DB129E3A075242094B6
        30E3A633CB15FFC273EB70E2A79DA88F198E5888099D34961BE2989416EEA25A
        4B24C260E30BEBB9204B2C6523015A90E39666AC04E6CC9D8B8FF7ECC07B7BBE
        C0A95FCEA2FFEF01C0314678DD62C40DFDB1580BBD607677D778E47763F3AB2F
        A2B3AB93D24CF23396368659730AE80B31CBB2849C98694BDB0C6CDBB2096992
        909AD31C9188751435171EAF694D249840AC01564019A444403928BE09D46514
        55548B7D8A122C1510D552684C9854960B90300B0584739E19266982BAD2CC10
        55A0384F7F343E4B386CCEFB58032453AE2D92D420CF0DA4B131E2881CC98809
        D106867E821F8212A8DCCF35EF0FEF7CAC0147795296F35D57865F93DD1F1CC4
        D9737FDE30F2C9E9996C772D9A8F4D2FAF2347C2E1343BEFA2028E9B033722D4
        254B84EEEE0E2C5FBA18BB766CC087C7FBD1DE928640A85780BB9A711E170715
        45C692F26F86A319181ED1E8FDEF02BCBAE5337475B66234B462C221730EA502
        CCC6180B651202E782DCF0D42AEC3DF02388A8B216D288B2B01CCF1E57256D14
        081138EF4514F9C3EBAD2D2D58BFEE418C49CD7EFC96595B1C747D0250973443
        63B9E64621B56532172E0FD2CC9129EDB8854AE383919FC7685E9C9A598140C6
        C3B385C0ACC3854B833C33B8F1A8E70ACE99E1E23C90FFF1DB2FAF8DD5EBBD02
        C92C78C038032973B4B6B5C107023273C50184A264F9A58E6B0CD8609ED51B1A
        18C6A71F1D44ADB90D2211EC6BAD19B872F1CC3600578940FDD0FEDEFD00BE06
        500BC7325A6FDDBC7DEFCF14A1A4E8875579D47200A474C8397CC20F469F4010
        81C8CDB7CCC281CF37AF0230128E62FC387D27CBC2E25522523917A6005AB4E1
        1CE38D35F318189573A1AD9C4C7DE517C9230E1FD202E0F780618940304B4604
        7C5C2C0693704AE547B6EEDCB7BAE10F072AC064AE7218291DCB53228C564703
        F868C068E078BD7FC744AE2958FC399C304FBD560AA601E4D3FD77EC2BF95211
        609209DC78B818F9E4F10F4824A6D94EC853CD0000000049454E44AE426082}
      OnClick = dxBarLargeButton1Click
    end
    object DxRefresh: TdxBarLargeButton
<<<<<<< Updated upstream
<<<<<<< Updated upstream
      Caption = 'Cari'
      Category = 0
      Hint = 'Cari'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
        3131373744373B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0
        B95F32223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
        4D31332C31374C322C32386C322C326C31312D31316C312D316C2D322D324C31
        332C31377A222F3E0D0A09093C673E0D0A0909093C673E0D0A090909093C7061
        746820636C6173733D22426C75652220643D224D32302C34632D342E342C302D
        382C332E362D382C3873332E362C382C382C3873382D332E362C382D38533234
        2E342C342C32302C347A204D32302C3138632D332E332C302D362D322E372D36
        2D3673322E372D362C362D3673362C322E372C362C3620202623393B2623393B
        2623393B2623393B5332332E332C31382C32302C31387A222F3E0D0A0909093C
        2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = DxRefreshClick
=======
      Category = 0
      Visible = ivAlways
>>>>>>> Stashed changes
=======
      Category = 0
      Visible = ivAlways
>>>>>>> Stashed changes
    end
    object DtMulai: TcxBarEditItem
      Caption = 'Tanggal Awal   '
      Category = 0
      Hint = 'Tanggal Awal   '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object DtSelesai: TcxBarEditItem
      Caption = 'Tanggal Akhir  '
      Category = 0
      Hint = 'Tanggal Akhir  '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object CbSupplier: TcxBarEditItem
      Caption = 'Supplier'
      Category = 0
      Hint = 'Supplier'
      Visible = ivAlways
      Width = 150
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object CbBarang: TcxBarEditItem
      Caption = 'Barang  '
      Category = 0
      Hint = 'Barang  '
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object Cxppn: TcxBarEditItem
      Caption = 'PPN'
      Category = 0
      Hint = 'PPN'
      Visible = ivAlways
      ShowCaption = True
      Width = 0
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      InternalEditValue = False
    end
    object BtnClear: TdxBarLargeButton
      Caption = 'Clear'
      Category = 0
      Hint = 'Clear'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000002D744558745469746C6500436C6561722046696C7465723B46696C74
        65723B52656D6F76652046696C7465723B436C65617229F58C02000008674944
        4154785E9D960B7054D519C7FFE7DE7D257193104808104142405E2225E12530
        8452A1A054A156B05346053AB4B4D45A3BB5DAC1A1753AD0566BA5D40A3EA8B4
        502C68783EDA4AA4124212020442229BF77BF3D8EC66DFF779BEDE84DD991D76
        0657BF99DFECBD7BEE9CFFFF7EE7BBDF398C8800008C31DC2558DC753C147F1D
        4F542F8A29015116413060F163513150041EBDBE8B99BB1A60318807B62D1B35
        614CDA372C26B6C024083388486402CB61C008E2E4D2B8DE4980AE69742328A9
        976A9ADD9F6CDD55E204A019F00894A881E89B8A1776AF79CC9E647E31292D3B
        3F65E464A48C9E02CB3D9920E8B0A566411045702D34421AE81A01E2907DBDB3
        FC5D8E67B24636A17C52E655974FFEC3232F9F3E0E4035D02346E242B8F3CDDF
        7E6171D695BD4F7E386EFAE27FDDFFF8CEFCECAFAD03D34DE82D3F8EFA432FA1
        E1C0CF7165C74254EF2A44F387EB106C3D08EE2F41CAB01072F21FC4E495DFC3
        B4355B674D9A99FFCFF3AFAD3AF49BA70BC600100D58221910F32766EE19337B
        ED2AAE25A176CF6668031D20C10C2E10B816067105966433C0014E1CAABF0D16
        8B312EEAD0652720FB218474E44C9B016B6AE62A4D3B2B02782292058A331097
        7EC2D28CFB97E0D4A602580509F68C7BC0AC224000E70432E0AA21A61B18BF9A
        A2420B87218A01E35E0493C3503D2E488DB5C82C7C01D5678F3D1CD15112C980
        A06B5C605A1B0AB6EE42F53F76A0B7B319E664158285814185280C8AD2905726
        8621D87C60AA0B4AC0302108204502712BEE99FA380275A5D0741E53D877A981
        289AA23BFD8DA791FDE0782C7FF3041EDAB60FE31FFD0152F31681EC13A008A3
        E1EA92D0D3124477FD00BC7D26F8FB09B29C0A21752A5226AF46C69CEF42EAA8
        82A7B26870BE81A87822192059D59DBE9696F129992DE019360C9F320D23A64C
        07B80C462A480B4030DB41E00069D0BC9DE09A0AD5D703D9D508B9B90972D807
        A611B8980A490EB444FB422219A04050F9D4EBF681642FC05510717006E8A440
        0B3740761F87F7D64BE83BB7195D1F6F40DB911750F7FE73683ABA13FEA60BE0
        83064D3690CE31E095110C6B159102C417192003DEDD1FFA9FD71D040F768374
        05201DE0060430353864083C9251C6C084DB5388A208D162038300700EE21AFA
        5C2ADA5D813300F44433C037BF5572A9BF3F74CDDDDE023664421D9A8CA90190
        2A83C10C0C890A606000132088029828DEFE9F1848D7E0F184D0E3D6AEBF7AEC
        6669AC01C65894F80C44509DAED0EB8DB5ADD05DD580210C2D08847A070D18E8
        208D8145BF5A8E217193C502936885C07590AAA0A1C1870E77F04F0064034AB4
        119181BEE5DD4BC73EF8E1C2A2EC5AC7EAB19674B0A43470005C554106D00960
        16248D5B04CB58FB60A5C364B582FB6A414A006DAD1E3476048F6F3F567D1C80
        7EC7864611E297206637538A2A5A9FBF5AE2A8EB6DAC8116EC8716F64297FCE0
        8A6E20C09C5508328F42FB47B5707D548F90330CDB9885F0F8ADA8A872379CFE
        DCF30B00EA81C585F32BD6AF6F3FB5F4E1935B274FB1DFB1AB0244344434F67F
        7F41D498EDF159F7E6BDF3CCFCEBA57F5E4FAED21DE4BEF80AF55DF831B9AB5E
        A3BECABD74F9B90DD477761FC93567A8F2A79BE9FABEDF51F1BB3BDB57CC1C3F
        1D40DA7B0B167EFDE2E66743E11B27A8FBD85E3AB1FC9B9F6D9C30313DBA3710
        517C2352558E682D1CBDDADEF1FAD99A6525C5D57F3CF9FE29B9E9F235E8FA30
        C09C8DA6836518BB743ED232D201A70B33367E0BC10A875EFE4ED18B67AA9ABB
        DE9A3B6FF6A4A979270BB6AC4ED29B3A909A64C6CC67572E5A963D6A7F6CE6E3
        4E447F79323FBA42F8D1E12B42A44E92564C1995BBA9706451FEA30F8D1B3E73
        2D2AB6BE81393FF90E447F68A8EA893198EE1D85CB7F2D921AAAEB5FC99D36E1
        D7730C71C5D10C52141001AAD98C73BB8B7A9E2A2B190B402523123992454DD8
        0F6C7CE0ED8265B39FC859BC015D65E5707CF019163CBD12A22C813415600CE2
        7D39A83C7C9E0AD62E61EAAD0670490181A0A80CFFF9FB273E4747EF233BBAEA
        CA00E86484095F1C14A9645552F44E25288187DA316C7C06F29E9A87E23D47B1
        685D214C9A0AD23468371D2858319B85AF5583E4DB6F2E8555141795F93EEFE8
        7BF4F7CEFA8AD8C38980C4838764DD29F9C310041D72F70564182672562FC27F
        DF3FAB047D0148EE7EA8031EF8ABAAA1BA078C7B37FC3DFD3877A4D45FD5D6FD
        98217E39A629514C1F48280B7C20A476867C2130D10C2E79106EBF80E4AC7908
        A49ACED65538564D9C9CC9829DAD00110880293905758D1EEA0E05B7BFD9D374
        F54EF1440D44BB18F5F9D4AEB061008219CC3602B68C39682D69C3686BCA8A69
        CBF299F7523948D30102C840F1FA307DC9032CA8E3B7BF5414C7CE264731001E
        7B9A16BE4C066E3A039DDE5E0F98C90E4BF602F4DEEA82F76235E6AC9A6BF65C
        2C079754709D20D892C13502575404AE1BE34B67D81ECCCD39F2E2B8894B0058
        629B9180C4838AEB3D6E5D23AF24DBD15BEB44D3C79528583E0BFD9F96400FC9
        D075826E4A42F9D50E62E9E9E0C4A0492A7C57AE61EEA229B6E9F78DFAE86739
        B983264C5FC5806E2035BA422FDF3879CA53F6C609CC5C3A13032565D02509C4
        39B839099F5D6AF49737763D5F7CDEE16769E900C7D0A718ACAE45FEDC49B62C
        93F5BD4827C4975E020369DBBF9B0F2CDEF2EA8CC656E7B996F21A10136E8B58
        0CF1F2667F65B76BCD6E57DBFECAAE9E6F9FBF50E767A9E943CF100474D6B420
        1096AFC5EF8689A319040DD4839EEEF59673370E2E9C3BB130C36E47E9E5267F
        554FFFEA7DEECE3200DADFDC9DA50C588332FA78DEACFBEC7DBD0328BBD979FE
        D040F7339179286E334A101649A135CF9A9CF5AB91B987B767E7B56E1A9EF375
        00C906A698EE99BC3163CCD2C1F1C1E7722D492301580D84A8364B583CBE5D0B
        1123E688292D0237A018A3A6983557A3CF440D98F0D5232AA447C42806C48CF1
        B8F198F83F1812900DC3DC08450000000049454E44AE426082}
    end
    object txtkdacckredit1: TdxBarEdit
      Caption = 'Account Yang Dikredit :'
      Category = 0
      Hint = 'Account Yang Dikredit :'
      Visible = ivNever
      Text = '1112'
    end
    object dxBarEdit3: TdxBarEdit
      Caption = 'Akun Perkiraan   '
      Category = 0
      Hint = 'Akun Perkiraan   '
      Visible = ivAlways
      Text = 'KAS KECIL'
    end
    object dxBarEdit2: TdxBarEdit
      Caption = 'Tanggal'
      Category = 0
      Hint = 'Tanggal'
      Visible = ivAlways
    end
    object dxBarEdit4: TdxBarEdit
      Category = 0
      Visible = ivNever
    end
    object cxBarEditItem1: TcxBarEditItem
      Category = 0
      Visible = ivNever
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object DTPick11: TcxBarEditItem
      Caption = 'Pilih Tanggal      '
      Category = 0
      Hint = 'Pilih Tanggal      '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
  end
<<<<<<< Updated upstream
<<<<<<< Updated upstream
  object ActMenu: TActionManager
    Left = 671
    Top = 37
    StyleName = 'Platform Default'
    object ActBaru: TAction
      Caption = 'Baru  '
    end
    object ActUpdate: TAction
      Caption = 'Update  '
    end
    object ActRO: TAction
      Caption = 'Refresh  '
    end
    object ActDel: TAction
      Caption = 'Delete'
    end
    object ActPrint: TAction
      Caption = 'Print  '
    end
    object ActApp: TAction
      Caption = 'Approve  '
      Enabled = False
    end
    object ActReject: TAction
      Caption = 'Reject  '
      Enabled = False
    end
    object ActClose: TAction
      Caption = 'CLose PO    '
      Enabled = False
    end
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QBHKasKecil
    Left = 520
    Top = 208
  end
  object DSBHKasKecil: TDataSource
    AutoEdit = False
    DataSet = MemBHKasKecil
    Left = 448
    Top = 200
  end
  object MemBHKasKecil: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 520
    Top = 168
  end
  object QBHKasKecil: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT  "row_number"() over (ORDER BY urutan)+1 nomor,trans_date' +
        ',voucher_no,description,actors_name,order_no,actors_code,code ,j' +
        'umdebit,jumkredit,penjualan,adm,bop,urutan,0 sa,jumdebit debit,j' +
        'umkredit kredit FROM (select distinct a.trans_date,a.voucher_no,' +
        'a.description,a.actors_name,a.order_no,a.actors_code,a.code,(cas' +
        'e when debit.jumlah is null then 0 else debit.jumlah end)jumdebi' +
        't,(case when kredit.jumlah is null then 0 else kredit.jumlah end' +
        ')jumkredit,(case when d.jumlah is null then 0 else d.jumlah end)' +
        'penjualan,(case when b.jumlah is null then 0 else b.jumlah end)a' +
        'dm,(case when c.jumlah is null then 0 else c.jumlah end)bop,(cas' +
        'e when debit.jumlah>0 then 1 else 10 end)urutan from (select dis' +
        'tinct c.trans_date,c.voucher_no,c.description,c.actors_name,c.or' +
        'der_no,c.actors_code,b.code from t_petty_cash_det a INNER JOIN t' +
        '_petty_cash c ON a.voucher_no=a.voucher_no LEFT JOIN t_cost_acto' +
        'rs b on c.actors_code=b.code where trans_date = '#39'2025-01-04'#39' and' +
        ' code_account='#39'1112'#39'  order by trans_date,voucher_no)a left join' +
        ' (select voucher_no,sum(paid_amount)as jumlah from t_petty_cash_' +
        'det where (code_account='#39'1112'#39' )and("position"='#39'D'#39') group by vou' +
        'cher_no order by voucher_no)debit on a.voucher_no=debit.voucher_' +
        'no left join (select voucher_no,sum(paid_amount)as jumlah from t' +
        '_petty_cash_det where ("position"='#39'K'#39')and(code_account='#39'1112'#39' ) ' +
        'group by voucher_no order by voucher_no)kredit on a.voucher_no=k' +
        'redit.voucher_no left join (select a.voucher_no,sum(a.paid_amoun' +
        't)as jumlah from t_petty_cash_det a,t_ak_account b where (a."pos' +
        'ition"='#39'D'#39') and (a.code_account=b.code)and (b.type_id=2)group by' +
        ' voucher_no order by voucher_no)b on a.voucher_no=b.voucher_no l' +
        'eft join (select voucher_no,sum(a.paid_amount)as jumlah from t_p' +
        'etty_cash_det a,t_ak_account b where (a."position"='#39'D'#39') and (a.c' +
        'ode_account=b.code)and (b.type_id=3) group by voucher_no order b' +
        'y voucher_no)c on a.voucher_no=c.voucher_no left join (select vo' +
        'ucher_no,sum(a.paid_amount)as jumlah from t_petty_cash_det a,t_a' +
        'k_account b where (a.code_account=b.code)and (b.type_id=4) group' +
        ' by voucher_no order by voucher_no)d on a.voucher_no=d.voucher_n' +
        'o order by trans_date,urutan,order_no,voucher_no)xxx ')
    Left = 472
    Top = 144
  end
=======
>>>>>>> Stashed changes
=======
>>>>>>> Stashed changes
end
