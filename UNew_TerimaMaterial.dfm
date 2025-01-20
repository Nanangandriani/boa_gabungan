object FNew_TerimaMaterial: TFNew_TerimaMaterial
  Left = 0
  Top = 0
  Caption = 'Form New Terima Barang'
  ClientHeight = 521
  ClientWidth = 1026
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1026
    Height = 241
    Align = alTop
    TabOrder = 0
    ExplicitTop = -4
    object Label1: TLabel
      Left = 24
      Top = 42
      Width = 42
      Height = 15
      Caption = 'No. Ref.'
    end
    object Label3: TLabel
      Left = 24
      Top = 125
      Width = 57
      Height = 15
      Caption = 'No. Terima'
    end
    object Label5: TLabel
      Left = 483
      Top = 97
      Width = 60
      Height = 15
      Caption = 'Keterangan'
      Visible = False
    end
    object Label6: TLabel
      Left = 24
      Top = 97
      Width = 79
      Height = 15
      Caption = 'Tanggal Terima'
    end
    object Label8: TLabel
      Left = 120
      Top = 42
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label10: TLabel
      Left = 120
      Top = 125
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label11: TLabel
      Left = 120
      Top = 97
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label12: TLabel
      Left = 579
      Top = 97
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label4: TLabel
      Left = 24
      Top = 154
      Width = 56
      Height = 15
      Caption = 'Surat Jalan'
      Visible = False
    end
    object Label7: TLabel
      Left = 120
      Top = 154
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label13: TLabel
      Left = 483
      Top = 42
      Width = 55
      Height = 15
      Caption = 'No. Faktur'
      Visible = False
    end
    object Label14: TLabel
      Left = 579
      Top = 42
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label2: TLabel
      Left = 579
      Top = 69
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label9: TLabel
      Left = 483
      Top = 69
      Width = 77
      Height = 15
      Caption = 'Tanggal Faktur'
      Visible = False
    end
    object Label15: TLabel
      Left = 483
      Top = 15
      Width = 67
      Height = 15
      Caption = 'Jatuh Tempo'
      Visible = False
    end
    object Label16: TLabel
      Left = 579
      Top = 15
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label17: TLabel
      Left = 24
      Top = 70
      Width = 43
      Height = 15
      Caption = 'Supplier'
    end
    object Label18: TLabel
      Left = 120
      Top = 70
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label19: TLabel
      Left = 24
      Top = 15
      Width = 84
      Height = 15
      Caption = 'Jenis Pembelian'
    end
    object Label20: TLabel
      Left = 119
      Top = 15
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label23: TLabel
      Left = 24
      Top = 176
      Width = 26
      Height = 15
      Caption = 'Valas'
      Visible = False
    end
    object Label24: TLabel
      Left = 120
      Top = 176
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label21: TLabel
      Left = 483
      Top = 161
      Width = 80
      Height = 15
      Caption = 'Akun Perkiraan'
      Visible = False
    end
    object Label22: TLabel
      Left = 24
      Top = 154
      Width = 21
      Height = 15
      Caption = 'SBU'
      Visible = False
    end
    object Label25: TLabel
      Left = 170
      Top = 150
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label26: TLabel
      Left = 483
      Top = 188
      Width = 101
      Height = 15
      Caption = 'Akun Perkiraan um'
      Visible = False
    end
    object EdNoSPB: TRzComboBox
      Left = 138
      Top = 40
      Width = 226
      Height = 23
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      Text = '0'
      OnSelect = EdNoSPBSelect
    end
    object EdNo: TEdit
      Left = 138
      Top = 123
      Width = 226
      Height = 23
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 1
    end
    object Dtterima: TRzDateTimeEdit
      Left = 138
      Top = 95
      Width = 121
      Height = 23
      EditType = etDate
      Format = 'dd/mm/yyyy'
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = DtterimaChange
    end
    object EdKet: TMemo
      Left = 597
      Top = 95
      Width = 335
      Height = 58
      CharCase = ecUpperCase
      TabOrder = 3
      Visible = False
    end
    object EdSJ: TEdit
      Left = 138
      Top = 152
      Width = 226
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 4
      Visible = False
    end
    object Edno_Faktur: TEdit
      Left = 597
      Top = 40
      Width = 167
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 5
      Visible = False
    end
    object DtFaktur: TRzDateTimeEdit
      Left = 597
      Top = 68
      Width = 121
      Height = 23
      EditType = etDate
      Format = 'mm/dd/yyyy'
      CharCase = ecUpperCase
      TabOrder = 6
      Visible = False
    end
    object Edjatuhtempo: TEdit
      Left = 597
      Top = 12
      Width = 121
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 7
      Visible = False
    end
    object Edkd_supp: TRzEdit
      Left = 138
      Top = 68
      Width = 53
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 8
    end
    object EdNm_supp: TRzButtonEdit
      Left = 197
      Top = 68
      Width = 218
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 9
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = EdNm_suppButtonClick
    end
    object Edjenis: TRzComboBox
      Left = 138
      Top = 12
      Width = 226
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 10
      OnSelect = EdjenisSelect
      Items.Strings = (
        'PRODUKSI'
        'NON PRODUKSI')
    end
    object EdValas: TRzEdit
      Left = 138
      Top = 173
      Width = 64
      Height = 23
      Text = '0'
      CharCase = ecUpperCase
      TabOrder = 11
      Visible = False
    end
    object EdNilai_Valas: TRzEdit
      Left = 207
      Top = 173
      Width = 139
      Height = 23
      Text = '0'
      CharCase = ecUpperCase
      TabOrder = 12
      Visible = False
    end
    object Edkd_akun: TRzEdit
      Left = 596
      Top = 158
      Width = 110
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 13
      Visible = False
    end
    object EdNm_akun: TRzButtonEdit
      Left = 712
      Top = 158
      Width = 185
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      ReadOnlyColorOnFocus = True
      TabOrder = 14
      Visible = False
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
    end
    object Edjenispo: TRzComboBox
      Left = 265
      Top = 95
      Width = 99
      Height = 23
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 15
      Visible = False
      Items.Strings = (
        'IMPORT'
        'LOKAL')
    end
    object Edsbu: TComboBox
      Left = 144
      Top = 152
      Width = 73
      Height = 23
      TabOrder = 16
      Visible = False
    end
    object EdPIB: TEdit
      Left = 728
      Top = 12
      Width = 204
      Height = 23
      Alignment = taRightJustify
      CharCase = ecUpperCase
      TabOrder = 17
      Text = '0'
      Visible = False
    end
    object dtfaktur2: TRzDateTimeEdit
      Left = 724
      Top = 68
      Width = 107
      Height = 23
      EditType = etDate
      TabOrder = 18
      Visible = False
    end
    object Edkd_akunum: TRzEdit
      Left = 596
      Top = 185
      Width = 110
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 19
      Visible = False
    end
    object EdNilai_um: TRzNumericEdit
      Left = 712
      Top = 185
      Width = 145
      Height = 23
      TabOrder = 20
      Visible = False
      DisplayFormat = ',0;(,0)'
    end
    object EdSisaHutang: TRzNumericEdit
      Left = 863
      Top = 185
      Width = 146
      Height = 23
      TabOrder = 21
      Visible = False
      DisplayFormat = ',0;(,0)'
    end
    object Button1: TButton
      Left = 370
      Top = 171
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 22
      Visible = False
    end
    object edum: TRzNumericEdit
      Left = 712
      Top = 212
      Width = 145
      Height = 23
      TabOrder = 23
      Visible = False
      DisplayFormat = ',0;(,0)'
    end
    object Button2: TButton
      Left = 863
      Top = 212
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 24
      Visible = False
      OnClick = Button2Click
    end
    object Edurut: TEdit
      Left = 370
      Top = 12
      Width = 75
      Height = 23
      TabOrder = 25
      Visible = False
    end
    object Edbln: TEdit
      Left = 203
      Top = 212
      Width = 58
      Height = 23
      TabOrder = 26
      Visible = False
    end
    object Edth: TEdit
      Left = 267
      Top = 212
      Width = 58
      Height = 23
      TabOrder = 27
      Visible = False
    end
    object Edhari: TEdit
      Left = 138
      Top = 212
      Width = 58
      Height = 23
      TabOrder = 28
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 489
    Width = 1026
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 488
    ExplicitWidth = 1022
    object BBatal: TRzBitBtn
      Left = 950
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
      ExplicitLeft = 946
    end
    object BSimpan: TRzBitBtn
      Left = 875
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
      ExplicitLeft = 871
    end
    object BEdit: TRzBitBtn
      Left = 800
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 2
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
      ExplicitLeft = 796
    end
    object BitBtn1: TBitBtn
      Left = 597
      Top = 3
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 241
    Width = 1026
    Height = 248
    Align = alClient
    Color = 15987699
    TabOrder = 2
    ExplicitWidth = 1022
    ExplicitHeight = 247
    object DBGridDetailpo: TDBGridEh
      Left = 2
      Top = 2
      Width = 1022
      Height = 244
      Align = alClient
      DataSource = DsTerimadet
      DynProps = <>
      FooterRowCount = 1
      HorzScrollBar.ExtraPanel.Visible = True
      IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
      SumList.Active = True
      TabOrder = 0
      TitleParams.MultiTitle = True
      TitleParams.SecondColor = clAqua
      TitleParams.SortMarkerStyle = smstSolidEh
      OnCellClick = DBGridDetailpoCellClick
      OnColEnter = DBGridDetailpoColExit
      OnColExit = DBGridDetailpoColExit
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              ShortCut = 113
              Style = ebsEllipsisEh
              OnClick = DBGridDetailpoColumns0EditButtons0Click
            end>
          FieldName = 'kd_material'
          Footers = <>
          Title.Caption = 'Kode Barang'
          Width = 80
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nm_material'
          Footers = <>
          Title.Caption = 'Nama Barang'
          Width = 135
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nopo'
          Footers = <>
          Title.Caption = 'No. PO'
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kd_stok'
          Footers = <>
          Title.Caption = 'No. Kedatangan'
          Width = 147
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qty'
          Footers = <>
          Title.Caption = 'Karung/Botol|Quantity'
          Visible = False
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'satuan'
          Footers = <>
          Title.Caption = 'Karung/Botol|Satuan'
          Visible = False
          Width = 70
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qtypo'
          Footers = <>
          Title.Caption = 'PO|Kuantum'
          Width = 80
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'satuanpo'
          Footers = <>
          Title.Caption = 'PO|Satuan'
          Width = 67
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qtyperkonversi'
          Footers = <>
          Title.Caption = 'Terima|Berat(@)'
          Visible = False
          Width = 60
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qty'
          Footers = <>
          Title.Caption = 'Terima|Kuantum'
          Width = 98
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'satuan'
          Footers = <>
          Title.Caption = 'Terima|Satuan'
          Width = 84
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qtyselisih'
          Footers = <>
          Title.Caption = 'Terima|Selisih'
          Width = 66
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'Harga'
          Footers = <>
          Visible = False
          Width = 80
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'gudang'
          Footers = <>
          Title.Caption = 'Lokasi Gudang'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tahun'
          Footers = <>
          Visible = False
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'subtotal'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Sub Total'
          Visible = False
          Width = 100
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'ppn'
          Footers = <>
          Title.Caption = 'PPN|%'
          Visible = False
          Width = 30
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'ppn_rp'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'PPN|Nominal'
          Visible = False
          Width = 80
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <
            item
            end>
          FieldName = 'pph'
          Footers = <>
          Title.Caption = 'PPH|%'
          Visible = False
          Width = 33
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'pph_rp'
          Footers = <>
          Title.Caption = 'PPH|Nominal'
          Visible = False
          Width = 80
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'grandtotal'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Grand Total'
          Visible = False
          Width = 90
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
            end>
          FieldName = 'kd_akun'
          Footer.FieldName = 'kd_akun'
          Footers = <>
          Title.Caption = 'Kode Akun Perkiraan'
          Visible = False
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'item_stock_code'
          Footers = <>
          Width = 0
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'wh_code'
          Footers = <>
          Visible = False
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object QMaterial1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'Select * from t_material_stok'
      ' order by kd_material_stok desc')
    Left = 640
    Top = 312
  end
  object DsTerimadet: TDataSource
    DataSet = MemterimaDet
    Left = 512
    Top = 312
  end
  object DsMaterial: TDataSource
    Left = 448
    Top = 385
  end
  object MemterimaDet: TMemTableEh
    Active = True
    Params = <>
    Left = 440
    Top = 312
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object qty: TMTNumericDataFieldEh
          FieldName = 'qty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object no_ked: TMTStringDataFieldEh
          FieldName = 'no_ked'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_material: TMTStringDataFieldEh
          FieldName = 'no_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object qtypo: TMTNumericDataFieldEh
          FieldName = 'qtypo'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object satuanpo: TMTStringDataFieldEh
          FieldName = 'satuanpo'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object qtyselisih: TMTNumericDataFieldEh
          FieldName = 'qtyselisih'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object tahun: TMTStringDataFieldEh
          FieldName = 'tahun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object qtyperkonversi: TMTNumericDataFieldEh
          FieldName = 'qtyperkonversi'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object qtykonversi: TMTNumericDataFieldEh
          FieldName = 'qtykonversi'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object satuankonversi: TMTStringDataFieldEh
          FieldName = 'satuankonversi'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object pph: TMTNumericDataFieldEh
          FieldName = 'pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object subtotal: TMTNumericDataFieldEh
          FieldName = 'subtotal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object grandtotal: TMTNumericDataFieldEh
          FieldName = 'grandtotal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object ppn_rp: TMTNumericDataFieldEh
          FieldName = 'ppn_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object pph_rp: TMTNumericDataFieldEh
          FieldName = 'pph_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object Harga: TMTNumericDataFieldEh
          FieldName = 'Harga'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object nopo: TMTStringDataFieldEh
          FieldName = 'nopo'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nourut: TMTStringDataFieldEh
          FieldName = 'nourut'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object item_stock_code: TMTStringDataFieldEh
          FieldName = 'item_stock_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object wh_code: TMTStringDataFieldEh
          FieldName = 'wh_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
