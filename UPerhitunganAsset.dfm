object FPerhitunganAsset: TFPerhitunganAsset
  Left = 402
  Top = 200
  Caption = 'DATA PERHITUNGAN ASSET'
  ClientHeight = 637
  ClientWidth = 1144
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 16
  object Gauge1: TGauge
    Left = 0
    Top = 563
    Width = 1144
    Height = 20
    Align = alBottom
    Progress = 0
    ExplicitTop = 568
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1144
    Height = 39
    Align = alTop
    Caption = 'DATA PERHITUNGAN ASSET'
    Color = 15987699
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = 16744448
    ParentFont = False
    TabOrder = 0
    Visible = False
    VisualStyle = vsGradient
    ExplicitWidth = 1138
  end
  object Panel1: TPanel
    Left = 0
    Top = 39
    Width = 1144
    Height = 290
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1138
    object GroupBox1: TGroupBox
      Left = 16
      Top = 11
      Width = 529
      Height = 270
      Caption = 'DETAIL ASSET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 14
        Top = 33
        Width = 72
        Height = 18
        Caption = 'KODE ASSET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 14
        Top = 58
        Width = 74
        Height = 18
        Caption = 'NAMA ASSET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 14
        Top = 85
        Width = 111
        Height = 18
        Caption = 'TANGGAL AKUISISI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 14
        Top = 111
        Width = 88
        Height = 18
        Caption = 'BIAYA AKUISISI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 14
        Top = 159
        Width = 72
        Height = 18
        Caption = 'SPESIFIKASI'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 14
        Top = 134
        Width = 50
        Height = 18
        Caption = 'JUMLAH'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edKodeAsset: TEdit
        Left = 141
        Top = 32
        Width = 297
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = edKodeAssetChange
      end
      object edNamaAsset: TEdit
        Left = 141
        Top = 58
        Width = 297
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object dtTanggalAkuisisi: TDateTimePicker
        Left = 141
        Top = 84
        Width = 152
        Height = 24
        Date = 41877.000000000000000000
        Time = 0.084716249999473800
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'US'
        ParentFont = False
        TabOrder = 2
      end
      object edBiayaAkuisisi: TRzNumericEdit
        Left = 141
        Top = 110
        Width = 151
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FocusColor = clWhite
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnChange = edBiayaAkuisisiChange
        DisplayFormat = ',0;(.0)'
      end
      object MemKeterangan: TMemo
        Left = 141
        Top = 158
        Width = 297
        Height = 57
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edJumlahItem: TRzNumericEdit
        Left = 141
        Top = 134
        Width = 151
        Height = 22
        Ctl3D = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FocusColor = clWhite
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 5
        DisplayFormat = ',0;(.0)'
      end
      object edSatuan: TEdit
        Left = 296
        Top = 134
        Width = 141
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
    end
    object GroupBox2: TGroupBox
      Left = 560
      Top = 11
      Width = 562
      Height = 270
      Caption = 'PENYUSUTAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label3: TLabel
        Left = 236
        Top = 86
        Width = 43
        Height = 16
        Caption = 'TAHUN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 513
        Top = 70
        Width = 52
        Height = 16
        Caption = 'PERSEN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label8: TLabel
        Left = 14
        Top = 110
        Width = 106
        Height = 18
        Caption = 'BIAYA PEMBELIAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 14
        Top = 134
        Width = 79
        Height = 18
        Caption = 'NILAI RESIDU'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 14
        Top = 183
        Width = 93
        Height = 18
        Caption = 'TANGGAL AWAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 14
        Top = 158
        Width = 118
        Height = 18
        Caption = 'NILAI PENYUSUTAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 518
        Top = 118
        Width = 134
        Height = 18
        Caption = 'METODE PENYUSUTAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label13: TLabel
        Left = 14
        Top = 35
        Width = 152
        Height = 18
        Caption = 'KELOMPOK PENYUSUTAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 14
        Top = 84
        Width = 118
        Height = 18
        Caption = 'MASA PENYUSUTAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 340
        Top = 159
        Width = 52
        Height = 16
        Caption = '/ BULAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 15
        Top = 60
        Width = 100
        Height = 18
        Caption = 'KATEGORI ASSET'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 14
        Top = 211
        Width = 81
        Height = 18
        Caption = 'AKUN KREDIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton1: TSpeedButton
        Left = 535
        Top = 204
        Width = 24
        Height = 23
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object Label19: TLabel
        Left = 340
        Top = 86
        Width = 44
        Height = 16
        Caption = 'BULAN'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 14
        Top = 237
        Width = 73
        Height = 18
        Caption = 'AKUN DEBIT'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 535
        Top = 233
        Width = 24
        Height = 23
        Caption = '...'
        OnClick = SpeedButton2Click
      end
      object cbMetode: TComboBox
        Left = 518
        Top = 136
        Width = 297
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 0
        Text = 'Straight Line '
        Visible = False
        Items.Strings = (
          'Straight Line ')
      end
      object edPersen: TEdit
        Left = 513
        Top = 91
        Width = 77
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        Visible = False
      end
      object edNilaiBeli: TRzNumericEdit
        Left = 182
        Top = 109
        Width = 151
        Height = 22
        Color = clInfoBk
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FocusColor = clWhite
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        DisplayFormat = ',0;(.0)'
      end
      object edNilaiResidu: TRzNumericEdit
        Left = 182
        Top = 133
        Width = 151
        Height = 22
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 3
        OnChange = edNilaiResiduChange
        DisplayFormat = ',0;(.0)'
      end
      object dtAwalSusut: TDateTimePicker
        Left = 182
        Top = 182
        Width = 152
        Height = 24
        Date = 41877.000000000000000000
        Time = 0.084716249999473800
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'US'
        ParentFont = False
        TabOrder = 4
      end
      object edNilaiHasil: TRzNumericEdit
        Left = 182
        Top = 157
        Width = 151
        Height = 22
        Color = clInfoBk
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        FocusColor = clWhite
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 5
        DisplayFormat = ',0;(.0)'
      end
      object cbKelompok: TRzComboBox
        Left = 182
        Top = 32
        Width = 297
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        OnChange = cbKelompokChange
      end
      object cbNamaHarta: TRzComboBox
        Left = 182
        Top = 57
        Width = 297
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnChange = cbNamaHartaChange
      end
      object edKodeKredit: TEdit
        Left = 182
        Top = 207
        Width = 98
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object edNamaKredit: TEdit
        Left = 283
        Top = 206
        Width = 251
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object edMasaTahun: TRzNumericEdit
        Left = 182
        Top = 83
        Width = 51
        Height = 22
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 10
        OnChange = edMasaTahunChange
        DisplayFormat = ',0;(.0)'
      end
      object edTambahMasaBulan: TRzNumericEdit
        Left = 286
        Top = 83
        Width = 47
        Height = 22
        Color = clWhite
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ImeName = 'US'
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        OnChange = edMasaTahunChange
        DisplayFormat = ',0;(.0)'
      end
      object edKodeDebit: TEdit
        Left = 182
        Top = 233
        Width = 98
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 12
      end
      object edNamaDebit: TEdit
        Left = 283
        Top = 233
        Width = 251
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 583
    Width = 1144
    Height = 54
    Align = alBottom
    ParentBackground = False
    TabOrder = 2
    ExplicitTop = 574
    ExplicitWidth = 1138
    object bt_Proses: TRzBitBtn
      Left = 825
      Top = 1
      Width = 159
      Height = 52
      Align = alRight
      Caption = 'SIMPAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bt_ProsesClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ExplicitLeft = 819
    end
    object bt_Tutup: TRzBitBtn
      Left = 984
      Top = 1
      Width = 159
      Height = 52
      Align = alRight
      Caption = 'BATAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = bt_TutupClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
      ExplicitLeft = 978
    end
    object btHitung: TRzBitBtn
      Left = 1
      Top = 1
      Width = 159
      Height = 52
      Align = alLeft
      Caption = 'HITUNG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnClick = btHitungClick
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
        0000000000000000000000000000000000000000000000000000E8E8E85E5E5E
        5E5E5E5E5E5E5E5E5E5EE8E8E881818181818181818181818181E8E8E85ED7D7
        D7D7D7D7D7D7D7D7D75EE8E8E881E8E8E8E8E8E8E8E8E8E8E881E8E8E85ED7D7
        D7D7D7D7D7D7D7D7D75EE8E8E881E8E8E8E8E8E8E8E8E8E8E881E8E8E85ED7D7
        ACACACACACACACD7D75EE8E8E881E8E8ACACACACACACACE8E8816CE8E85ED7D7
        D7D7D7D7D7D7D7D7D75E81E8E881E8E8E8E8E8E8E8E8E8E8E881906CE85ED709
        0909090909090909D75EE281E881E8818181818181818181E881B4906C5ED709
        5E5E5E5E5E5E5E09D75EACE28181E881ACACACACACACAC81E881B490E85ED709
        0909090909090909D75EACE2E881E8818181818181818181E881B4E8E85ED7D7
        D7D7D7D7D7D7D7D7D75EACE8E881E8E8E8E8E8E8E8E8E8E8E881E8E8E85ED7D7
        ACACACACACACACD7D75EE8E8E881E8E8ACACACACACACACE8E881E8E8E85ED7D7
        D7D7D7D7D7D7D7D7D75EE8E8E881E8E8E8E8E8E8E8E8E8E8E881E8E8E85ED7D7
        ACACACACACACACD7D75EE8E8E881E8E8ACACACACACACACE8E881E8E8E85ED7D7
        D7D7D7D7D7D7D7D7D75EE8E8E881E8E8E8E8E8E8E8E8E8E8E881E8E8E85ED7D7
        ACACACACACACACD7D75EE8E8E881E8E8ACACACACACACACE8E881E8E8E85ED7D7
        D7D7D7D7D7D7D7D7D75EE8E8E881E8E8E8E8E8E8E8E8E8E8E881E8E8E85E5E5E
        5E5E5E5E5E5E5E5E5E5EE8E8E881818181818181818181818181}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object btClear: TRzBitBtn
      Left = 160
      Top = 1
      Width = 159
      Height = 52
      Align = alLeft
      Caption = 'HAPUS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnClick = btClearClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000620B0000620B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8E8EEE3E3
        E3E3E3E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E3DE81DF
        DF81EDDEACEEE8E8E8E8E8E8E8DE8181DF81ACDEACE8E8E8E8E8E8E8ACAC8888
        8881DF56DFE2E3E8E8E8E8E8ACACDEDEDE81DF81DFE2E8E8E8E8E8E3B3E6E688
        EB89E6E6DF5681E3E8E8E8E8E8E8E8DEACDEE8E8DF8181E8E8E8E889E6E6ACEB
        12ACACACB3E2ECACE8E8E8DEE8E8ACAC81ACACACE8E281ACE8E8E88989E3EBEB
        1212121287E6DFE2EEE8E8DEDEE8ACAC81818181E2E8DFE2E8E8E389E3E3EBDE
        121262B23D89DFE2EEE8E8DEE8E8ACDE8181ACE881DEDFE2E8E8E6E6D7D782EB
        87883D8787888181E3E8ACE8E8E881ACE2DE81E2E2DE8181E8E8E6B3D7EB82EB
        38D7621212E68181E3E8ACE8E8AC81AC81E8AC8181E88181E8E8E6D7D7EBEBEB
        8712371212E688DFE3E8ACE8E8ACACACE281818181E8DEDFE8E8B3B3B3D7D7EE
        E387876212B3DEDFACE8ACE8E8E8E8E8E8E2E2AC81E8DEDFACE8B3B3B3B3EEEE
        EED7D7D7D7D7B3ECACE8ACE8E8E8E8E8E8E8E8E8E8E8E881ACE8E6E6E6E3E3E3
        E3E3E3EEE6B3B3ECACE8E8ACACE8E8E8E8E8E8E8E8E8E881ACE8E8E3E3CFD6D6
        D6D6EECF8989B3DFE3E8E8E8E8ACE8E8E8E8E8ACDEDEE8DFE8E8E8E8E8EECFCF
        CFD6D6CF898989DEEEE8E8E8E8E8ACACACE8E8ACDEDEDEDEE8E8E8E8E8E8E8E8
        E8CFCFCFE6E6E3EEE8E8E8E8E8E8E8E8E8ACACACE8E8E8E8E8E8}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 329
    Width = 1144
    Height = 234
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 3
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAMABULAN'
        Footer.ValueType = fvtCount
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'BULAN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 150
      end
      item
        Alignment = taRightJustify
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'TAHUN'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'JUMLAH'
        Footer.DisplayFormat = '0.00#,##'
        Footer.FieldName = 'JUMLAH'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -13
        Footer.Font.Name = 'Arial'
        Footer.Font.Style = [fsBold]
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ANGKABULAN'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NOURUT'
        Footers = <>
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = MemRincian
    Left = 440
    Top = 88
  end
  object MemRincian: TMemTableEh
    Active = True
    Params = <>
    Left = 480
    Top = 88
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object NAMABULAN: TMTStringDataFieldEh
          FieldName = 'NAMABULAN'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object TAHUN: TMTStringDataFieldEh
          FieldName = 'TAHUN'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object JUMLAH: TMTNumericDataFieldEh
          FieldName = 'JUMLAH'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ANGKABULAN: TMTNumericDataFieldEh
          FieldName = 'ANGKABULAN'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object NOURUT: TMTNumericDataFieldEh
          FieldName = 'NOURUT'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            nil
            nil
            1000000c
            nil
            nil)
          (
            nil
            nil
            2000000c
            nil
            nil))
      end
    end
  end
  object http: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 568
    Top = 320
  end
end
