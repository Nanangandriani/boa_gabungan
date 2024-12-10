object FDaftar_Hutang: TFDaftar_Hutang
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Daftar Hutang'
  ClientHeight = 525
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 109
    Align = alTop
    Color = 15987699
    TabOrder = 0
    object Label3: TLabel
      Left = 475
      Top = 13
      Width = 48
      Height = 17
      Caption = 'Supplier'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 318
      Top = 48
      Width = 19
      Height = 18
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 17
      Top = 73
      Width = 62
      Height = 17
      Caption = 'Kurs Dolar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label1: TLabel
      Left = 16
      Top = 44
      Width = 140
      Height = 17
      Caption = 'Tgl. Tempo Pembayaran'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object lbnocek: TLabel
      Left = 17
      Top = 14
      Width = 46
      Height = 17
      Caption = 'No. Cek'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object txtnmsupp: TEdit
      Left = 641
      Top = 11
      Width = 311
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object cbsupp: TEdit
      Left = 552
      Top = 11
      Width = 83
      Height = 21
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
    end
    object DtSelesai: TDateTimePicker
      Left = 341
      Top = 44
      Width = 121
      Height = 23
      Date = 45614.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.189661342599720200
      ImeName = 'US'
      TabOrder = 2
    end
    object DtMulai: TDateTimePicker
      Left = 193
      Top = 44
      Width = 123
      Height = 23
      Date = 45614.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.189661342599720200
      ImeName = 'US'
      TabOrder = 3
    end
    object EdNo_Cek: TEdit
      Left = 193
      Top = 12
      Width = 123
      Height = 23
      Enabled = False
      TabOrder = 4
    end
    object rzkurs: TRzNumericEdit
      Left = 193
      Top = 73
      Width = 123
      Height = 23
      TabOrder = 5
      Visible = False
      IntegersOnly = False
      DisplayFormat = '#,###,###,###0.##'
      Value = 1.000000000000000000
    end
    object BCari: TRzBitBtn
      Left = 552
      Top = 57
      Width = 134
      Height = 39
      Caption = 'Cari'
      TabOrder = 6
      OnClick = BCariClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
        E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
        E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
        E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
        E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
        81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
        7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
        E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
        8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
        88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
        89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
        E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
        E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
        88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
        82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
        AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
        E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
      NumGlyphs = 2
    end
    object Button4: TButton
      Left = 957
      Top = 11
      Width = 27
      Height = 21
      Caption = '...'
      TabOrder = 7
      OnClick = Button4Click
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 484
    Width = 1024
    Height = 41
    Align = alBottom
    TabOrder = 1
    object Label4: TLabel
      Left = 46
      Top = 13
      Width = 73
      Height = 15
      Caption = ': Sudah Lunas'
    end
    object Label6: TLabel
      Left = 161
      Top = 12
      Width = 99
      Height = 15
      Caption = ': Dok Blm Lengkap'
    end
    object Label7: TLabel
      Left = 292
      Top = 13
      Width = 87
      Height = 15
      Caption = ': Sudah diajukan'
    end
    object Btutup: TRzBitBtn
      Left = 929
      Top = 1
      Width = 100
      Height = 39
      Align = alRight
      Caption = 'Tutup'
      TabOrder = 0
      OnClick = BtutupClick
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
      ExplicitLeft = 923
    end
    object BProses: TRzBitBtn
      Left = 779
      Top = 1
      Width = 150
      Height = 39
      Align = alRight
      Caption = 'Proses'
      TabOrder = 1
      OnClick = BProsesClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000830E0000830E00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8E8090909
        09090909090909090909E8E8E881818181818181818181818181E8E809101009
        E31009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E80909101009
        E31009E3E3E309101009E88181ACAC81E3AC81E3E3E381ACAC81091009101009
        E31009E3E3E30910100981AC81ACAC81E3AC81E3E3E381ACAC81091009101009
        E3E3E3E3E3E30910100981AC81ACAC81E3E3E3E3E3E381ACAC81091009101010
        0909090909091010100981AC81ACACAC818181818181ACACAC81091009101010
        1010101010101010100981AC81ACACACACACACACACACACACAC81091009101009
        0909090909090910100981AC81ACAC8181818181818181ACAC810910091009D7
        D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC810910091009D7
        090909090909D709100981AC81AC81D7818181818181D781AC810910091009D7
        D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC81091009E309D7
        090909090909D709090981AC81E381D7818181818181D78181810910091009D7
        D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC8109E309090909
        0909090909090909090981E38181818181818181818181818181091009D7D7D7
        D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8090909090909
        0909090909090909E8E88181818181818181818181818181E8E8}
      NumGlyphs = 2
      ExplicitLeft = 773
    end
    object BitBtn1: TBitBtn
      Left = 16
      Top = 6
      Width = 24
      Height = 25
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000F8F8F7FFF7F7
        F6FFF4F4F4FFF9F9F5FFFFFFF7FFFEFDF2FFB4B7F1FF9A9FF4FFA0A5F4FFC9CB
        EFFFFFFFF0FFFFFFF8FFF7F7F7FFF4F4F4FFF6F6F5FFF7F7F7FFF6F6F6FFF6F6
        F5FFFFFFF5FFFBFAF6FF3E48F4FF0000FDFF0000FDFF0002FCFF0002FCFF0000
        FDFF0001FBFF7F84EDFFFFFFF3FFFAF9F6FFF6F6F6FFF6F6F5FFF5F5F4FFFFFF
        F3FFD6D7F9FF0000FCFF0008FCFF0212FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0011FCFF0000FEFF1E2BF5FFFFFFF2FFF9F9F6FFF4F4F4FFFEFDF6FFE5E5
        F8FF0000FCFF0010FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0006FDFF1D2AF5FFFFFFF3FFF8F8F6FFFFFFF7FF0716
        FCFF000DFCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0000FDFF7C81EFFFFFFFF8FFB5B8F4FF0000
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0011FCFF0000FBFFFFFFF0FF646CF9FF0008
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0000FDFFC9CBF1FF3C47FBFF000C
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0002FCFFA2A6F5FF3440FBFF000D
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0002FCFF9BA0F5FF5059F9FF000A
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0000FCFFB5B8F3FF8F95F7FF0003
        FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0212FCFF0000FDFFFCFBF4FFFFFFF7FF0000
        FCFF0212FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0313FCFF0009FCFF3843F7FFFFFFF6FFFFFFF5FF8288
        FAFF0000FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF0313FCFF0011FCFF0000FCFFF3F3F8FFFAFAF5FFF5F5F4FFFFFF
        F3FF4852FCFF0000FCFF0212FCFF0313FCFF0313FCFF0313FCFF0313FCFF0313
        FCFF0313FCFF000EFCFF0000FCFFC3C6F9FFFFFFF5FFF4F4F4FFF7F7F7FFF8F8
        F6FFFFFFF3FF8489FAFF0000FCFF0003FCFF000AFCFF000DFCFF000CFCFF0008
        FCFF0000FCFF0413FCFFDCDDF9FFFFFFF3FFF6F6F6FFF7F7F6FFF8F8F7FFF7F7
        F6FFF5F5F4FFFFFFF4FFFFFFF7FF9096F7FF515AF9FF3643FBFF3D48FBFF646D
        F9FFB6B8F5FFFFFFF7FFFEFEF6FFF5F5F4FFF6F6F6FFF8F8F7FF}
      TabOrder = 2
    end
    object BitBtn2: TBitBtn
      Left = 131
      Top = 6
      Width = 24
      Height = 25
      Glyph.Data = {
        F6030000424DF6030000000000003600000028000000100000000F0000000100
        200000000000C003000000000000000000000000000000000000F2F2F2FFEFEF
        F1FFF0F0F0FFF3F2F3FFFFF4F2FFFEF2EFFFBBE1EBFF9BD9EAFF97D6E6FFB5DB
        E6FFFAF1F0FFFFF8F5FFF2F1F1FFF0F0F1FFF2F2F2FFF0F0F1FFF0F0F1FFF0F0
        F1FFF5F1F1FFFFF3F0FF71D1EAFF0BC0EEFF16C9F5FF1BCBF8FF1ACBF7FF15C5
        F1FF05AFDCFF5BB8D2FFFAF3F2FFF8F3F2FFF0F0F1FFF0F0F0FFEFEFF0FFF5F2
        F2FFF2EFEFFF20C3ECFF1BCEFAFF29D3FDFF2AD3FCFF29D2FCFF2AD3FCFF29D2
        FBFF28D2FCFF1AC2ECFF0D9DC5FFE4ECEFFFF6F2F1FFF1F1F1FFF3F2F2FFFFF3
        F0FF28C6EEFF22D3FDFF2BD4FEFF2AD4FDFF29D3FCFF29D3FCFF2AD2FCFF29D3
        FCFF2AD2FCFF29D3FDFF20C3ECFF0F99C1FFFFF6F4FFF2F0F1FFFDF3F1FF8DD9
        EDFF19D0FDFF2BD5FFFF2BD5FFFF2AD4FEFF2BD3FEFF2AD3FDFF29D3FDFF2AD3
        FCFF29D3FBFF29D3FCFF29D3FDFF14AFD8FF69BCD3FFFFF6F4FFFFF4F0FF24CB
        F4FF28D5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD4FEFF2AD3FDFF2AD3
        FDFF29D3FCFF2AD3FCFF2AD3FDFF25CAF3FF0597C0FFFFF8F5FFEDEEEFFF10CD
        FBFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD4
        FEFF2AD3FDFF2AD3FDFF2AD3FDFF28D2FBFF0AA1CBFFD1E4E9FFD9EAEFFF16D0
        FEFF2BD5FFFF2AD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5
        FFFF2BD4FEFF2BD4FEFF2AD4FDFF2AD4FEFF0EABD4FFC0DDE5FFE9EDEFFF12CF
        FEFF2BD5FFFF2BD5FFFF2AD5FFFF2AD5FFFF2BD5FFFF2BD5FFFF2BD5FFFF2BD5
        FFFF2BD5FFFF2BD5FFFF2BD4FFFF2AD5FFFF0CADD7FFCEE1E8FFFFF4F0FF22CF
        FAFF27D4FFFF2AD4FFFF2BD4FFFF2BD5FFFF2AD5FFFF2AD5FFFF2BD5FFFF2BD5
        FFFF2BD5FFFF2BD5FFFF2BD5FFFF29D5FEFF07A6D2FFFFF5F2FFFEF3F1FF7EDC
        F4FF5ADEFDFF1DD2FFFF2AD4FFFF2BD5FFFF2BD5FFFF2AD5FFFF2AD5FFFF2AD5
        FFFF2BD5FFFF2BD5FFFF2BD6FFFF1DCDF8FF62C0D9FFFFF5F3FFF1F0F0FFFDF2
        EFFF53D9FAFFABEDFBFF19D1FFFF29D4FFFF2BD5FFFF2BD4FFFF2BD5FFFF2AD5
        FFFF2AD5FFFF2BD5FFFF28D6FFFF0EB8E3FFF5EFEFFFF3F1F2FFF1F1F1FFF5F0
        F0FFDDECF1FF5ADCFCFFA1EBFBFF27D4FFFF2AD4FFFF2AD5FFFF2BD5FFFF2BD5
        FFFF2BD6FFFF22D4FFFF0EBFECFFD4E5EAFFFAF3F2FFF0F0F0FFF1F1F2FFEFEF
        F0FFF6F1F0FFF3F0F1FF5BD7F5FF23D3FDFF1CD2FFFF20D4FFFF20D4FFFF1CD2
        FFFF0CC9F8FF4BCBECFFECECEDFFFAF3F2FFF1F1F2FFEFEFF0FFF0F0F0FFF1F1
        F2FFF1F1F2FFF2F0F0FFFFF3F0FFF0EFF0FFAAE2F1FF8ADCF1FF89DCF0FFA4DE
        EDFFE9EDEEFFFFF4F1FFF6F3F3FFF0F0F1FFF0F0F0FFF0F0F2FF}
      TabOrder = 3
    end
    object BitBtn3: TBitBtn
      Left = 262
      Top = 6
      Width = 24
      Height = 25
      Glyph.Data = {
        B6030000424DB6030000000000003600000028000000100000000E0000000100
        2000000000008003000000000000000000000000000000000000F0F0F0FFF0F2
        F0FFF1F1F1FFEFF0EFFFF5F2F5FFFFF4FFFFFFF1FFFFF0ECF0FFE8EAE8FFEAE9
        EAFFE4E9E4FFE6EBE6FFEBEEEBFFF1F1F1FFF2F2F2FFF1F0F1FFF0F0F0FFF0F0
        F0FFF0F0F0FFFFF6FFFFCEE6CEFF40C540FF00B800FF00B600FF00B700FF00BB
        00FF2CC42CFF77D277FFABDBABFFD1E4D1FFEDF0EDFFF0F1F0FFF1F2F1FFEFF0
        EFFFFFF8FFFF5ECE5EFF00B500FF00BD00FF00BE00FF00BE00FF00BF00FF00BE
        00FF00BE00FF00BA00FF22C322FF94D894FFD6E6D6FFF1F1F1FFF0F0F0FFFFF8
        FFFF50CB50FF00B900FF00BE00FF00BE00FF00BE00FF00BE00FF00BF00FF00BE
        00FF00BF00FF00BF00FF00BC00FF40C740FFE6E8E6FFF0F1F0FFF7F3F7FFC5E7
        C5FF00B500FF00BE00FF00BE00FF00BE00FF00BD00FF00BE00FF00BE00FF00BE
        00FF00BF00FF00BF00FF00BE00FF00B600FFD4E8D4FFF6F3F6FFFFF7FFFF35C6
        35FF00BD00FF00BF00FF00BE00FF00BE00FF00BE00FF00BE00FF00BF00FF00BD
        00FF00BE00FF00BE00FF00BE00FF00BC00FF54CE54FFFFF5FFFFFFFAFFFF00B7
        00FF00BD00FF00BE00FF00BD00FF00BF00FF00BE00FF00BD00FF00BD00FF00BE
        00FF00BE00FF00BE00FF00BE00FF00BE00FF01BD01FFFFF8FFFFFFFAFFFF00B5
        00FF00BF00FF00BE00FF00BE00FF00BE00FF00BE00FF00BE00FF00BE00FF00BE
        00FF00BE00FF00BF00FF00BF00FF00BE00FF00B900FFFFF9FFFFFFF8FFFF07BD
        07FF00BD00FF00BE00FF00BE00FF00BE00FF00BE00FF00BF00FF00BF00FF00BF
        00FF00BE00FF00BE00FF00BF00FF00BD00FF2DC42DFFFFF7FFFFFEF4FEFF76D1
        76FF00BB00FF00BE00FF00BE00FF00BE00FF00BE00FF00BE00FF00BE00FF00BD
        00FF00BE00FF00BE00FF00BE00FF00B800FF97DE97FFFCF3FCFFF1F1F1FFFFF3
        FFFF00B700FF00BE00FF00BE00FF00BE00FF00BF00FF00BF00FF00BF00FF00BF
        00FF00BD00FF00BD00FF00BC00FF04BA04FFFFFAFFFFF0F1F0FFF1F1F1FFF6F1
        F6FFE8ECE8FF00B700FF00BB00FF00BF00FF00BE00FF00BD00FF00BE00FF00BE
        00FF00BE00FF00BB00FF00B800FFFCF3FCFFF3F1F3FFF0F0F0FFF0F1F0FFF0F0
        F0FFF7F2F7FFFFF2FFFF44C844FF00B500FF00B800FF00BB00FF00BB00FF00B8
        00FF00B500FF4EC94EFFFFF1FFFFF6F2F6FFF0F1F0FFEFEFEFFFEFF0EFFFF1F2
        F1FFF0F1F0FFF2F1F2FFFFF5FFFFFEF1FEFFA9DFA9FF87D787FF86D786FFACDE
        ACFFFCF1FCFFFFF4FFFFF1F1F1FFEFF0EFFFF1F1F1FFF1F1F1FF}
      TabOrder = 4
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 109
    Width = 1024
    Height = 375
    Align = alClient
    Color = 15987699
    TabOrder = 2
    object DBGridDafHutang: TDBGridEh
      Left = 2
      Top = 2
      Width = 1026
      Height = 380
      Align = alClient
      DataSource = DSdaftarhutang
      DrawMemoText = True
      DynProps = <>
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      TabOrder = 0
      TitleParams.RowHeight = 40
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kodesup'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nasup'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Supplier'
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nofakturpajak'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'No. Faktur '
          Width = 130
          OnGetCellParams = DBGridEh1Columns2GetCellParams
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'no_inv'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'No.Invoice'
          Width = 130
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'sj_no'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'No. Surat Jalan'
          Width = 130
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tglfaktur'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Tgl. Faktur Supplier'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tgltempo'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Tgl. Tempo Pembayaran'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'valas'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Valas'
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'jumlah'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Total Hutang'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'npph'
          Footers = <>
          Width = 0
        end
        item
          CellButtons = <>
          Checkboxes = True
          DynProps = <>
          EditButtons = <>
          FieldName = 'pilih'
          Footers = <>
          TextEditing = True
          Title.Alignment = taCenter
          Title.Caption = 'Pilih'
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'akun_pph'
          Footers = <>
          Title.Caption = 'Akun PPH'
          Visible = False
          Width = 0
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object QdaftarHutang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT  tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfakt' +
        'ur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_' +
        'pph,plan_stat,status,urutan,approval_status,bayar,rencanake,juml' +
        'ah-bayar as sisa'
      'FROM'
      ''
      
        '(SELECT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfakt' +
        'ur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah,npph,akun_' +
        'pph,'
      
        '       plan_stat,status,approval_status,urutan,(case when pay IS' +
        'NULL then 0 else pay end)bayar,(case when plan_to ISNULL then 0 ' +
        'else plan_to  end)rencanake'
      'FROM'
      
        '(select tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_no,tglfakt' +
        'ur,tgltempo,valas,valas_value,jum_dolar,ppn_rp,jumlah-nilai_um a' +
        's jumlah,npph,'#39#39'::text as akun_pph,plan_stat,status,approval_sta' +
        'tus,urutan '
      'from '
      ''
      
        '(SELECT DISTINCT tanggal,kodesup,nasup,no_inv,nofakturpajak,sj_n' +
        'o,tglfaktur,tgltempo,valas,valas_value,'
      
        '(case when valas='#39'USD'#39' then jumlah1-(pot_beli_dolar) else 0 end)' +
        'jum_dolar,'
      
        '(case when valas='#39'USD'#39' then jumlah-nil_retur-pot_beli_rp else ju' +
        'mlah+harga_do1-nil_retur-pot_beli_rp end)jumlah,'
      
        '(case when um_beli.nilai_um is null then 0 else um_beli.nilai_um' +
        ' end)nilai_um,'
      '(case when ppn_rp is null then 0 else ppn_rp end)ppn_rp,'
      
        '(case when npph is null then 0 else npph end)npph,'#39#39'::text as ak' +
        'un_pph,plan_stat,status,approval_status,urutan'
      ' FROM'
      ''
      
        '( SELECT tanggal,kodesup,c.supplier_name as nasup,a.no_inv,a.nof' +
        'akturpajak,a.sj_no,a.faktur_date as tglfaktur,(a.faktur_date + a' +
        '.due_date) as tgltempo,  a.plan_stat,lunas.faktur_no,'
      '(case when b.jumlah is null then 0 else b.jumlah end)jumlah1,'
      
        '(case when b.hutang is null then 0 else b.hutang end)jumlah,a.va' +
        'las,a.valas_value, '
      
        '(case when retur.nil_retur is null then 0 else retur.nil_retur e' +
        'nd)nil_retur,b.ppn_rp,b.npph,'
      
        '(case when pot.nilai_pot_rp is null then 0 else pot.nilai_pot_rp' +
        ' end)pot_beli_rp,'
      
        '(case when pot.nilai_pot_dolar is null then 0 else pot.nilai_pot' +
        '_dolar end)pot_beli_dolar,'
      
        '(case when do1.harga is null then 0 else do1.harga end)harga_do1' +
        ',status,approval_status,urutan'
      ' FROM'
      ''
      
        '(select trans_no,trans_date as tanggal,supplier_code as kodesup,' +
        'trans_no as no_inv,faktur_no as nofakturpajak,faktur_date,sj_no,' +
        'valas,valas_value,due_date,plan_stat,(case when sj_status=1 and ' +
        'fk_status=1 and invoice_status=1 then 1 else 0 end)status,0 as p' +
        'pnrp,id as urutan,approval_status  from purchase.t_purchase_invo' +
        'ice where (faktur_date + due_date) between '#39'2024-06-20'#39' and '#39'202' +
        '4-10-10'#39' '
      '   '
      'union all  '
      
        'select  a.notrans as no_terima,a.date_trans as tanggal,b.vendor_' +
        'code as kodesup,a.notrans as no_inv,a.notrans as nofakturpajak,a' +
        '.date_trans as tgl_faktur,'#39#39'::character varying as nosj,'#39'Rp'#39'::ch' +
        'aracter varying as valas,0 as valas_value,  0 as  due_date,false' +
        ' as stat_rencana,1 as status,0 as ppnrp,0 as id,0 as status_appr' +
        'oval  from sale.t_delivery_order a'
      
        'inner join sale.t_delivery_order_services b  on a.notrans=b.notr' +
        'ans  '
      'where a.date_trans between '#39'2024-06-20'#39' and '#39'2024-10-10'#39
      ')a'
      'left join '
      
        '(select a.trans_no,b.supplier_code,b.valas,sum(a.grandtotal)as j' +
        'umlah,(case when b.valas='#39'USD'#39' then sum(a.subtotalrp) else sum(a' +
        '.grandtotal) end)as hutang,a.subtotal,a.ppn_rp ,sum(a.pph_rp)as ' +
        'npph from purchase.t_purchase_invoice_det a,purchase.t_purchase_' +
        'invoice b  where a.trans_no=b.trans_no group by a.trans_no,b.sup' +
        'plier_code,b.valas,a.subtotal,a.ppn_rp order by trans_no,supplie' +
        'r_code)b on a.trans_no=b.trans_no and a.kodesup=b.supplier_code ' +
        #9
      'left join '
      't_supplier c on a.kodesup=c.supplier_code  '
      'left join '
      
        '(select faktur_no from cash_banks.t_paid_debt_det)as lunas  on a' +
        '.nofakturpajak=lunas.faktur_no  '
      'left join '
      
        '(select a.receive_no,b.valas_value,b.valas,case when b.valas='#39'US' +
        'D'#39' then sum(a.total_price)*b.valas_value else sum(b.price+b.ppn_' +
        'rp) end as nil_retur from purchase.t_purchase_return_det a,purch' +
        'ase.t_purchase_return b where a.return_no=b.return_no  group by ' +
        'a.receive_no,b.valas_value,b.valas order by a.receive_no)retur o' +
        'n a.trans_no=retur.receive_no  '
      'left join '
      
        '(select receive_no,sum(price_rp) as nilai_pot_rp,sum(price) as n' +
        'ilai_pot_dolar,sum(ppnrp)as ppnrp from purchase.t_purchase_disco' +
        'unt GROUP BY receive_no)pot on a.trans_no=pot.receive_no'
      'left join'
      
        '(select notrans as do_no,vendor_code,sum(total_cost)as harga fro' +
        'm sale.t_delivery_order_services group by do_no,vendor_code orde' +
        'r by do_no,vendor_code)do1 on a.trans_no=do1.do_no'
      ')xxx'
      'left join'
      
        '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um' +
        ' end)nilai_um from  '
      
        '(select distinct a.trans_no,a.po_no,b.supplier_code from purchas' +
        'e.t_purchase_invoice_det a,purchase.t_purchase_invoice b where a' +
        '.trans_no=b.trans_no  and (faktur_date + due_date) between '#39'2024' +
        '-06-20'#39' and '#39'2024-10-10'#39')a  '
      'left join  '
      
        '(select supplier_code,po_no,sum(um_value)as nilai_um from purcha' +
        'se.t_po where um_status=true and po_date<='#39'2024-10-21'#39'  group  b' +
        'y po_no,supplier_code order by po_no,supplier_code)b on a.po_no=' +
        'b.po_no and a.supplier_code=b.supplier_code)um_beli on xxx.no_in' +
        'v=um_beli.trans_no'
      ''
      ')zzz'
      ''
      'ORDER BY '
      'tglfaktur,nofakturpajak,urutan ASC)y'
      ''
      'left join '
      
        '(select faktur_no,plan_to from cash_banks.v_plan_paid_debt where' +
        ' paid_status=0  and periode1 between '#39'2024-06-20'#39' and '#39'2024-10-1' +
        '0'#39')yy on y.nofakturpajak=yy.faktur_no'
      'left join'
      
        '(select lpb_no,pay from cash_banks.t_buy_pay)z on y.no_inv=z.lpb' +
        '_no ORDER BY y.urutan) zz')
    Left = 744
    Top = 40
    object QdaftarHutangtanggal: TDateField
      FieldName = 'tanggal'
      ReadOnly = True
    end
    object QdaftarHutangkodesup: TMemoField
      FieldName = 'kodesup'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QdaftarHutangnasup: TStringField
      FieldName = 'nasup'
      ReadOnly = True
      Size = 100
    end
    object QdaftarHutangno_inv: TMemoField
      FieldName = 'no_inv'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QdaftarHutangnofakturpajak: TMemoField
      DisplayWidth = 200
      FieldName = 'nofakturpajak'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QdaftarHutangsj_no: TMemoField
      FieldName = 'sj_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QdaftarHutangtglfaktur: TDateField
      FieldName = 'tglfaktur'
      ReadOnly = True
    end
    object QdaftarHutangtgltempo: TDateField
      FieldName = 'tgltempo'
      ReadOnly = True
    end
    object QdaftarHutangvalas: TMemoField
      FieldName = 'valas'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QdaftarHutangvalas_value: TFloatField
      FieldName = 'valas_value'
      ReadOnly = True
    end
    object QdaftarHutangjum_dolar: TFloatField
      FieldName = 'jum_dolar'
      ReadOnly = True
    end
    object QdaftarHutangppn_rp: TFloatField
      FieldName = 'ppn_rp'
      ReadOnly = True
    end
    object QdaftarHutangjumlah: TFloatField
      FieldName = 'jumlah'
      ReadOnly = True
    end
    object QdaftarHutangnpph: TFloatField
      FieldName = 'npph'
      ReadOnly = True
    end
    object QdaftarHutangakun_pph: TMemoField
      FieldName = 'akun_pph'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QdaftarHutangplan_stat: TBooleanField
      FieldName = 'plan_stat'
      ReadOnly = True
    end
    object QdaftarHutangstatus: TIntegerField
      FieldName = 'status'
      ReadOnly = True
    end
    object QdaftarHutangapproval_status: TIntegerField
      FieldName = 'approval_status'
      ReadOnly = True
    end
  end
  object DSdaftarhutang: TDataSource
    DataSet = Memdaftarhutang
    Left = 968
    Top = 56
  end
  object Memdaftarhutang: TMemTableEh
    Params = <>
    Left = 904
    Top = 40
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object tanggal: TMTDateTimeDataFieldEh
          FieldName = 'tanggal'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object kodesup: TMTStringDataFieldEh
          FieldName = 'kodesup'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nasup: TMTStringDataFieldEh
          FieldName = 'nasup'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 50
        end
        object no_inv: TMTStringDataFieldEh
          FieldName = 'no_inv'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nofakturpajak: TMTStringDataFieldEh
          FieldName = 'nofakturpajak'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object sj_no: TMTStringDataFieldEh
          FieldName = 'sj_no'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tglfaktur: TMTDateTimeDataFieldEh
          FieldName = 'tglfaktur'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object tgltempo: TMTDateTimeDataFieldEh
          FieldName = 'tgltempo'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object valas: TMTStringDataFieldEh
          FieldName = 'valas'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object valas_value: TMTNumericDataFieldEh
          FieldName = 'valas_value'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object jum_dolar: TMTNumericDataFieldEh
          FieldName = 'jum_dolar'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ppn_rp: TMTNumericDataFieldEh
          FieldName = 'ppn_rp'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object jumlah: TMTNumericDataFieldEh
          FieldName = 'jumlah'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object npph: TMTNumericDataFieldEh
          FieldName = 'npph'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_pph: TMTStringDataFieldEh
          FieldName = 'akun_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object plan_stat: TMTStringDataFieldEh
          FieldName = 'plan_stat'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object status: TMTStringDataFieldEh
          FieldName = 'status'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object approval_status: TMTStringDataFieldEh
          FieldName = 'approval_status'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
