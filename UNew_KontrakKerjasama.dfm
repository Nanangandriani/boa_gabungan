object FNewKontrak_ks: TFNewKontrak_ks
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'New Kontrak Kerjasama'
  ClientHeight = 601
  ClientWidth = 1024
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object pninput: TPanel
    Left = 0
    Top = 0
    Width = 1024
    Height = 361
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1020
    object Label1: TLabel
      Left = 24
      Top = 86
      Width = 63
      Height = 15
      Caption = 'No. Kontrak'
    end
    object qty: TLabel
      Left = 24
      Top = 150
      Width = 85
      Height = 15
      Caption = 'Tanggal Kontrak'
    end
    object Label3: TLabel
      Left = 174
      Top = 86
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label4: TLabel
      Left = 174
      Top = 150
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 24
      Top = 118
      Width = 78
      Height = 15
      Caption = 'Nama Supplier'
    end
    object Label6: TLabel
      Left = 174
      Top = 118
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label7: TLabel
      Left = 319
      Top = 150
      Width = 5
      Height = 15
      Caption = '-'
    end
    object Label10: TLabel
      Left = 24
      Top = 217
      Width = 136
      Height = 15
      Caption = 'Jatuh Tempo Pembayaran'
    end
    object Label12: TLabel
      Left = 174
      Top = 217
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label2: TLabel
      Left = 24
      Top = 281
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label9: TLabel
      Left = 174
      Top = 281
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label11: TLabel
      Left = 279
      Top = 217
      Width = 22
      Height = 15
      Caption = 'Hari'
    end
    object Label13: TLabel
      Left = 24
      Top = 249
      Width = 48
      Height = 15
      Caption = 'Currency'
    end
    object Label14: TLabel
      Left = 174
      Top = 249
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label15: TLabel
      Left = 24
      Top = 183
      Width = 61
      Height = 15
      Caption = 'Pengiriman'
    end
    object Label16: TLabel
      Left = 174
      Top = 183
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label8: TLabel
      Left = 24
      Top = 55
      Width = 44
      Height = 15
      Caption = 'Kategori'
    end
    object Label17: TLabel
      Left = 174
      Top = 55
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label18: TLabel
      Left = 24
      Top = 23
      Width = 25
      Height = 15
      Caption = 'Jenis'
    end
    object Label19: TLabel
      Left = 174
      Top = 23
      Width = 3
      Height = 15
      Caption = ':'
    end
    object EdNo_kontrak: TEdit
      Left = 189
      Top = 83
      Width = 145
      Height = 23
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
    end
    object EdKd_supp: TEdit
      Left = 189
      Top = 115
      Width = 73
      Height = 23
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 1
      OnChange = EdKd_suppChange
    end
    object Edtempo: TEdit
      Left = 189
      Top = 214
      Width = 76
      Height = 23
      CharCase = ecUpperCase
      NumbersOnly = True
      TabOrder = 2
      OnKeyPress = EdtempoKeyPress
    end
    object DtKontrak: TRzDateTimeEdit
      Left = 189
      Top = 147
      Width = 121
      Height = 23
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 3
      OnChange = DtKontrakChange
    end
    object DtSelesai: TRzDateTimeEdit
      Left = 332
      Top = 147
      Width = 121
      Height = 23
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object EdNo: TEdit
      Left = 360
      Top = 83
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 5
      Text = 'EDNO'
      Visible = False
    end
    object DtBln: TRzDateTimeEdit
      Left = 423
      Top = 52
      Width = 57
      Height = 23
      EditType = etDate
      Format = 'mm'
      CharCase = ecUpperCase
      TabOrder = 6
      Visible = False
    end
    object EdKet: TMemo
      Left = 189
      Top = 278
      Width = 292
      Height = 76
      CharCase = ecUpperCase
      TabOrder = 7
    end
    object EdCurr: TRzComboBox
      Left = 189
      Top = 246
      Width = 76
      Height = 23
      TabOrder = 8
      OnChange = EdCurrChange
      OnSelect = EdCurrSelect
      Items.Strings = (
        '')
    end
    object DtPengiriman: TRzDateTimeEdit
      Left = 477
      Top = 147
      Width = 121
      Height = 23
      EditType = etDate
      Format = 'mmmm-yyy'
      CharCase = ecUpperCase
      TabOrder = 9
      Visible = False
    end
    object CbKategori: TComboBox
      Left = 189
      Top = 52
      Width = 145
      Height = 23
      TabOrder = 10
    end
    object EdNm_supp: TRzButtonEdit
      Left = 268
      Top = 115
      Width = 213
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 11
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = EdNm_suppButtonClick
    end
    object CbJenis: TComboBox
      Left = 189
      Top = 20
      Width = 145
      Height = 23
      TabOrder = 12
      OnSelect = CbJenisSelect
      Items.Strings = (
        '')
    end
    object CB_kirim: TComboBox
      Left = 189
      Top = 180
      Width = 145
      Height = 23
      TabOrder = 13
      Items.Strings = (
        'JANUARI'
        'FEBRUARI'
        'MARET'
        'APRIL'
        'MEI'
        'JUNI'
        'JULI'
        'AGUSTUS'
        'SEPTEMBER'
        'OKTOBER'
        'NOVEMBER'
        'DESEMBER')
    end
    object EdTh_kirim: TSpinEdit
      Left = 340
      Top = 180
      Width = 113
      Height = 24
      MaxValue = 10000
      MinValue = 2000
      TabOrder = 14
      Value = 2023
    end
    object EdnilaiCurr: TRzNumericEdit
      Left = 271
      Top = 246
      Width = 65
      Height = 23
      TabOrder = 15
      OnKeyPress = EdnilaiCurrKeyPress
      DisplayFormat = '#,##'
    end
    object DtHr: TRzDateTimeEdit
      Left = 360
      Top = 52
      Width = 57
      Height = 23
      EditType = etDate
      Format = 'dd'
      CharCase = ecUpperCase
      TabOrder = 16
      Visible = False
    end
    object DtTahun: TRzDateTimeEdit
      Left = 487
      Top = 52
      Width = 58
      Height = 23
      EditType = etDate
      Format = 'yyyy'
      CharCase = ecUpperCase
      TabOrder = 17
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 569
    Width = 1024
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 568
    ExplicitWidth = 1020
    object BBatal: TRzBitBtn
      Left = 948
      Top = 1
      Height = 30
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
      ExplicitLeft = 944
    end
    object BSimpan: TRzBitBtn
      Left = 873
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 1
      OnClick = BSimpanClick
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
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 869
    end
    object BEdit: TRzBitBtn
      Left = 798
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 2
      Visible = False
      OnClick = BEditClick
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
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 794
    end
    object BitBtn1: TBitBtn
      Left = 671
      Top = 3
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 361
    Width = 1024
    Height = 208
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    FooterRowCount = 1
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnCellClick = DBGridEh2CellClick
    OnColEnter = DBGridEh2ColEnter
    OnColExit = DBGridEh2ColEnter
    OnKeyPress = DBGridEh2KeyPress
    Columns = <
      item
        CellButtons = <>
        Color = clInfoBk
        DynProps = <>
        EditButtons = <
          item
            Glyph.Data = {
              36090000424D3609000000000000360000002800000018000000180000000100
              2000000000000009000000000000000000000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFDADADAFF000000FFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADA
              DAFF000000FF000000FF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5D5D5FF0000
              00FF000000FF000000FFD5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCF
              CFFFC5C5C5FFEDEDEDFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBFF000000FF0000
              00FF000000FFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF2D2D2DFF000000FF0000
              00FF000000FF000000FF000000FF909090FFFFFFFFFF000000FF000000FF0000
              00FFE4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF8A8A8AFF000000FF000000FF000000FF4545
              45FF535353FF1A1A1AFF000000FF000000FF1A1A1AFFFFFFFFFF000000FFE4E4
              E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFA3A3A3FF000000FF000000FF9D9D9DFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFECECECFF121212FF000000FF191919FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF000000FF000000FFD3D3D3FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF121212FF000000FF8F8F8FFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF848484FF000000FF5D5D5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF000000FF000000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF2D2D2DFF000000FFDFDFDFFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF191919FF000000FFEFEF
              EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF0A0A0AFF000000FFFFFFFFFF181818FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FF000000FFC7C7
              C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF131313FF000000FFFFFFFFFF2D2D2DFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF434343FF000000FFD1D1
              D1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFF4B4B4BFF000000FFBEBEBEFFB2B2B2FF616161FFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF000000FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFBABABAFF000000FF121212FFFFFFFFFF282828FF898989FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF989898FF000000FF313131FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFF141414FF000000FF4D4D4DFFFFFFFFFFC1C1C1FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0D0D0FF000000FF000000FFE1E1E1FFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFEFEFEFF000000FF000000FF111111FFB9B9B9FFFFFF
              FFFFFFFFFFFFDADADAFF5B5B5BFF000000FF000000FF8F8F8FFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF161616FF000000FF000000FF0000
              00FF000000FF000000FF000000FF000000FFA6A6A6FFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBCFF4D4D4DFF1515
              15FF0C0C0CFF303030FF868686FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            ShortCut = 113
            Style = ebsEllipsisEh
            OnClick = DBGridEh2Columns0EditButtons0Click
          end>
        FieldName = 'Kd_Material'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kode Barang'
        Width = 97
      end
      item
        CellButtons = <>
        Color = clInfoBk
        DynProps = <>
        EditButtons = <>
        FieldName = 'Nm_material'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Barang'
        Width = 182
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Karung/Botol|Quantum'
        Visible = False
        Width = 101
      end
      item
        CellButtons = <>
        Color = clInfoBk
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Karung/Botol|Satuan'
        Visible = False
        Width = 94
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'Spesifikasi'
        Footers = <>
        Width = 120
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'qtyperkonversi'
        Footers = <>
        Title.Caption = 'Berat(KG)'
        Visible = False
        Width = 90
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'Qty'
        Footers = <>
        Title.Caption = 'Kuantum'
        Width = 100
      end
      item
        CellButtons = <>
        Color = clInfoBk
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Satuan'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.0000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'harga'
        Footers = <>
        Title.Caption = 'USD|Harga Satuan'
        Width = 70
      end
      item
        CellButtons = <>
        Color = clInfoBk
        DisplayFormat = '#,##0.0000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_harga'
        Footer.DisplayFormat = '#,##0.0000'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USD|Sub Total'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ppn'
        Footers = <>
        Title.Caption = 'USD|PPN|%'
        Width = 27
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.0000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ppn_us'
        Footer.DisplayFormat = '#,##0.0000'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USD|PPN|Nominal'
        Width = 52
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pemb_ppn_us'
        Footers = <>
        Title.Caption = 'USD|PPN|Pembulatan'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.0000'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grandtotal'
        Footer.DisplayFormat = '#,##0.0000'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'USD|Grand Total'
        Width = 80
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'harga2'
        Footers = <>
        Title.Caption = 'Rupiah|Harga Satuan'
        Width = 74
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'subtotal_rp'
        Footer.DisplayFormat = '#,##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Rupiah|Sub Total'
        Width = 120
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pemb_dpp'
        Footers = <>
        Title.Caption = 'Rupiah|Pembulatan'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ppn'
        Footers = <>
        Title.Caption = 'Rupiah|PPN|%'
        Width = 26
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ppn_rp'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '#,##'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Rupiah|PPN|Nominal'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pemb_ppn'
        Footers = <>
        Title.Caption = 'Rupiah|PPN|Pembulatan'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pph'
        Footers = <>
        Title.Caption = 'Rupiah|PPH|%'
        Width = 28
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pph_rp'
        Footer.Alignment = taRightJustify
        Footer.DisplayFormat = '#,##'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Rupiah|PPH|Nominal'
        Width = 75
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grandtotal_rp'
        Footer.DisplayFormat = '#,##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Rupiah|Grand Total'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material_supp'
        Footers = <>
        Title.Caption = 'Kode Barang Supp'
        Width = 0
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = MemMaterial
    Left = 793
    Top = 8
  end
  object MemMaterial: TMemTableEh
    Params = <>
    Left = 609
    Top = 24
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object totalpo: TMTNumericDataFieldEh
          FieldName = 'totalpo'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 30
          DisplayFormat = '0.00#,##'
          currency = False
          Precision = 30
        end
        object sisaqty: TMTNumericDataFieldEh
          FieldName = 'sisaqty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 30
          DisplayFormat = '0.00#,##'
          currency = False
          Precision = 30
        end
        object Nm_material: TMTStringDataFieldEh
          FieldName = 'Nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Kd_Material: TMTStringDataFieldEh
          FieldName = 'Kd_Material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Nm_Supplier: TMTStringDataFieldEh
          FieldName = 'Nm_Supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Qty: TMTNumericDataFieldEh
          FieldName = 'Qty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 24
          currency = False
          Precision = 24
        end
        object harga: TMTNumericDataFieldEh
          FieldName = 'harga'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = True
          Precision = 30
        end
        object total_harga: TMTNumericDataFieldEh
          FieldName = 'total_harga'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = True
          Precision = 30
        end
        object pemb_ppn: TMTNumericDataFieldEh
          FieldName = 'pemb_ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object grandtotal: TMTNumericDataFieldEh
          FieldName = 'grandtotal'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = True
          Precision = 50
        end
        object ppn_rp: TMTNumericDataFieldEh
          FieldName = 'ppn_rp'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = True
          Precision = 50
        end
        object Spesifikasi: TMTStringDataFieldEh
          FieldName = 'Spesifikasi'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object subtotal_rp: TMTNumericDataFieldEh
          FieldName = 'subtotal_rp'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 100
        end
        object grandtotal_rp: TMTNumericDataFieldEh
          FieldName = 'grandtotal_rp'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 100
        end
        object harga2: TMTNumericDataFieldEh
          FieldName = 'harga2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object ppn_us: TMTNumericDataFieldEh
          FieldName = 'ppn_us'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object pemb_ppn_us: TMTNumericDataFieldEh
          FieldName = 'pemb_ppn_us'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object pph: TMTNumericDataFieldEh
          FieldName = 'pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object pph_rp: TMTNumericDataFieldEh
          FieldName = 'pph_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object pemb_dpp: TMTNumericDataFieldEh
          FieldName = 'pemb_dpp'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object kd_material_supp: TMTStringDataFieldEh
          FieldName = 'kd_material_supp'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
