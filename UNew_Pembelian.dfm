object FNew_Pembelian: TFNew_Pembelian
  Left = 0
  Top = 0
  Caption = 'Form New Faktur Pembelian'
  ClientHeight = 637
  ClientWidth = 1117
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  TextHeight = 15
  object Label20: TLabel
    Left = 28
    Top = 524
    Width = 81
    Height = 15
    Caption = 'Jumlah Hutang'
  end
  object Panel1: TPanel
    Left = 0
    Top = 605
    Width = 1117
    Height = 32
    Align = alBottom
    TabOrder = 0
    object BBatal: TRzBitBtn
      Left = 1045
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
      ExplicitLeft = 1041
    end
    object BSimpan: TRzBitBtn
      Left = 970
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
      ExplicitLeft = 966
    end
    object BEdit: TRzBitBtn
      Left = 895
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 2
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
      ExplicitLeft = 891
    end
    object BPosting: TRzBitBtn
      Left = 820
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Posting'
      TabOrder = 3
      Visible = False
      OnClick = BPostingClick
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
      ExplicitLeft = 816
    end
    object Button1: TButton
      Left = 745
      Top = 1
      Width = 75
      Height = 30
      Align = alRight
      Caption = 'Button1'
      TabOrder = 4
      Visible = False
      OnClick = Button1Click
      ExplicitLeft = 741
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1117
    Height = 217
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 27
      Top = 256
      Width = 35
      Height = 15
      Caption = 'No. SP'
    end
    object Label3: TLabel
      Left = 28
      Top = 187
      Width = 49
      Height = 15
      Caption = 'No. Trans'
    end
    object Label5: TLabel
      Left = 528
      Top = 131
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label6: TLabel
      Left = 26
      Top = 285
      Width = 79
      Height = 15
      Caption = 'Tanggal Terima'
    end
    object Label4: TLabel
      Left = 528
      Top = 43
      Width = 56
      Height = 15
      Caption = 'Surat Jalan'
    end
    object Label13: TLabel
      Left = 28
      Top = 129
      Width = 55
      Height = 15
      Caption = 'No. Faktur'
    end
    object Label9: TLabel
      Left = 528
      Top = 101
      Width = 108
      Height = 15
      Caption = 'Tgl.Terima Dokumen'
    end
    object Label15: TLabel
      Left = 528
      Top = 72
      Width = 67
      Height = 15
      Caption = 'Jatuh Tempo'
    end
    object Label17: TLabel
      Left = 28
      Top = 16
      Width = 43
      Height = 15
      Caption = 'Supplier'
    end
    object Label21: TLabel
      Left = 394
      Top = 187
      Width = 84
      Height = 15
      Caption = 'Jenis Pembelian'
    end
    object Label23: TLabel
      Left = 27
      Top = 465
      Width = 26
      Height = 15
      Caption = 'Valas'
    end
    object Label25: TLabel
      Left = 528
      Top = 16
      Width = 39
      Height = 15
      Caption = 'No. PIB'
    end
    object Label27: TLabel
      Left = 883
      Top = 110
      Width = 58
      Height = 15
      Caption = 'Bea Import'
      Visible = False
    end
    object Lblakun: TLabel
      Left = 990
      Top = 150
      Width = 46
      Height = 15
      Caption = 'Lain-lain'
      Visible = False
    end
    object Label2: TLabel
      Left = 288
      Top = 495
      Width = 21
      Height = 15
      Caption = 'SBU'
    end
    object Label7: TLabel
      Left = 27
      Top = 158
      Width = 54
      Height = 15
      Caption = 'Tgl. Faktur'
    end
    object Label12: TLabel
      Left = 28
      Top = 45
      Width = 76
      Height = 15
      Caption = 'Ambil Sumber'
    end
    object Label14: TLabel
      Left = 28
      Top = 101
      Width = 48
      Height = 15
      Caption = 'Currency'
    end
    object Label16: TLabel
      Left = 28
      Top = 72
      Width = 36
      Height = 15
      Caption = 'No.Ref'
    end
    object EdNoSPB: TRzComboBox
      Left = 174
      Top = 256
      Width = 210
      Height = 23
      TabOrder = 0
      OnSelect = EdNoSPBSelect
    end
    object EdNo: TEdit
      Left = 175
      Top = 184
      Width = 210
      Height = 23
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 1
    end
    object Dtterima: TRzDateTimeEdit
      Left = 174
      Top = 285
      Width = 121
      Height = 23
      EditType = etDate
      Format = 'dd/mm/yyyy'
      TabOrder = 2
      OnChange = DtterimaChange
    end
    object EdKet: TMemo
      Left = 641
      Top = 128
      Width = 339
      Height = 50
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object EdSJ: TEdit
      Left = 641
      Top = 42
      Width = 232
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Edno_Faktur: TEdit
      Left = 175
      Top = 127
      Width = 168
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 5
    end
    object DtFaktur: TRzDateTimeEdit
      Left = 641
      Top = 98
      Width = 121
      Height = 23
      EditType = etDate
      TabOrder = 6
    end
    object Edjatuhtempo: TEdit
      Left = 641
      Top = 70
      Width = 121
      Height = 23
      TabOrder = 7
    end
    object Edkd_supp: TRzEdit
      Left = 175
      Top = 15
      Width = 53
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 8
    end
    object EdNm_supp: TRzButtonEdit
      Left = 234
      Top = 15
      Width = 242
      Height = 23
      Text = ''
      TabOrder = 9
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = EdNm_suppButtonClick
    end
    object Edjenis: TRzComboBox
      Left = 494
      Top = 184
      Width = 210
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 10
      OnChange = EdjenisSelect
      OnSelect = EdjenisSelect
      Items.Strings = (
        '')
    end
    object EdValas: TRzEdit
      Left = 174
      Top = 462
      Width = 101
      Height = 23
      Text = '0'
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 11
      OnChange = EdValasChange
    end
    object EdPIB: TEdit
      Left = 641
      Top = 15
      Width = 232
      Height = 23
      Alignment = taRightJustify
      CharCase = ecUpperCase
      TabOrder = 12
      Text = '0'
    end
    object GBDok: TGroupBox
      Left = 900
      Top = 11
      Width = 139
      Height = 100
      Caption = 'Check List Dokumen'
      TabOrder = 13
      object Cksj: TCheckBox
        Left = 13
        Top = 19
        Width = 97
        Height = 18
        Caption = 'Konf'
        TabOrder = 0
        OnClick = CksjClick
      end
      object CkFk: TCheckBox
        Left = 13
        Top = 43
        Width = 97
        Height = 18
        Caption = 'Prev. Dok'
        TabOrder = 1
        OnClick = CkFkClick
      end
      object CkInv: TCheckBox
        Left = 13
        Top = 67
        Width = 97
        Height = 18
        Caption = 'Invoice'
        TabOrder = 2
        OnClick = CkInvClick
      end
    end
    object Edbea: TRzNumericEdit
      Left = 990
      Top = 169
      Width = 92
      Height = 23
      TabOrder = 14
      Visible = False
      DisplayFormat = '#,##'
    end
    object EdNilai_Valas: TRzNumericEdit
      Left = 287
      Top = 99
      Width = 93
      Height = 23
      TabOrder = 15
      OnChange = EdNilai_ValasChange
      DisplayFormat = ',0;(,0)'
    end
    object Edjenispo: TRzComboBox
      Left = 387
      Top = 71
      Width = 89
      Height = 23
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 16
      Text = 'LOKAL'
      OnChange = EdjenispoChange
      Items.Strings = (
        'IMPORT'
        'LOKAL')
    end
    object Edkd_akunBea: TRzButtonEdit
      Left = 990
      Top = 126
      Width = 128
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnlyColorOnFocus = True
      TabOrder = 17
      Visible = False
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = Edkd_akunBeaButtonClick
    end
    object Edsbu: TComboBox
      Left = 315
      Top = 493
      Width = 66
      Height = 23
      TabOrder = 18
    end
    object dtfaktur2: TRzDateTimeEdit
      Left = 175
      Top = 155
      Width = 107
      Height = 23
      EditType = etDate
      TabOrder = 19
    end
    object Edurut: TEdit
      Left = 792
      Top = 216
      Width = 121
      Height = 23
      TabOrder = 20
      Visible = False
    end
    object Edth: TEdit
      Left = 921
      Top = 187
      Width = 58
      Height = 23
      TabOrder = 21
      Visible = False
    end
    object Edbln: TEdit
      Left = 857
      Top = 187
      Width = 58
      Height = 23
      TabOrder = 22
      Visible = False
    end
    object Edhari: TEdit
      Left = 792
      Top = 187
      Width = 58
      Height = 23
      TabOrder = 23
      Visible = False
    end
    object Cb_Sumber: TRzComboBox
      Left = 175
      Top = 43
      Width = 206
      Height = 23
      TabOrder = 24
      OnSelect = Cb_SumberSelect
    end
    object EdCurr: TRzComboBox
      Left = 175
      Top = 99
      Width = 107
      Height = 23
      TabOrder = 25
      Text = 'IDR'
      OnChange = EdCurrChange
    end
    object Cb_Ref: TRzComboBox
      Left = 175
      Top = 71
      Width = 206
      Height = 23
      TabOrder = 26
      OnSelect = Cb_RefSelect
      Items.Strings = (
        '')
      ItemIndex = 0
    end
    object Edkd_sumber: TEdit
      Left = 387
      Top = 43
      Width = 89
      Height = 23
      TabOrder = 27
    end
    object Edkd_akun: TRzEdit
      Left = 713
      Top = 184
      Width = 101
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 28
    end
    object Edkd_akunum: TRzEdit
      Left = 830
      Top = 184
      Width = 101
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 29
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 217
    Width = 1117
    Height = 388
    Align = alClient
    Color = 15987699
    TabOrder = 2
    object Label26: TLabel
      Left = 41
      Top = 185
      Width = 144
      Height = 15
      Caption = 'Akun Perkiraan Uang Muka'
    end
    object Label19: TLabel
      Left = 41
      Top = 185
      Width = 80
      Height = 15
      Caption = 'Akun Perkiraan'
    end
    object Label10: TLabel
      Left = 28
      Top = 155
      Width = 63
      Height = 15
      Caption = 'Sisa Hutang'
    end
    object Label11: TLabel
      Left = 0
      Top = 129
      Width = 89
      Height = 15
      Caption = 'Total Uang Muka'
    end
    object Label8: TLabel
      Left = 41
      Top = 206
      Width = 157
      Height = 15
      Caption = 'Uang Muka yang sudah bayar'
    end
    object edum: TRzNumericEdit
      Left = 108
      Top = 156
      Width = 145
      Height = 23
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
      DisplayFormat = '#,##0.00'
    end
    object EdNm_akunum: TRzButtonEdit
      Left = 90
      Top = 116
      Width = 185
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnlyColorOnFocus = True
      TabOrder = 1
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = EdNm_akunumButtonClick
    end
    object EdNm_akun: TRzButtonEdit
      Left = 68
      Top = 79
      Width = 185
      Height = 23
      Text = ''
      Color = clInfoBk
      ReadOnlyColorOnFocus = True
      TabOrder = 2
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
    end
    object EdNilai_um: TRzNumericEdit
      Left = 23
      Top = 35
      Width = 145
      Height = 23
      TabOrder = 3
      DisplayFormat = '#,##0.00'
    end
    object EdSisaHutang: TRzNumericEdit
      Left = 41
      Top = 264
      Width = 146
      Height = 23
      TabOrder = 4
      DisplayFormat = '#,##0.00'
    end
    object Button2: TButton
      Left = 41
      Top = 233
      Width = 75
      Height = 25
      Caption = 'Button2'
      TabOrder = 5
      Visible = False
    end
    object PGFaktur: TRzPageControl
      Left = 2
      Top = 2
      Width = 1117
      Height = 246
      Hint = ''
      ActivePage = TabBarang2
      Align = alClient
      TabIndex = 0
      TabOrder = 6
      ExplicitWidth = 1113
      ExplicitHeight = 245
      FixedDimension = 21
      object TabBarang2: TRzTabSheet
        Color = 15987699
        Caption = 'Barang'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 1109
        ExplicitHeight = 220
        object DBGridDetailpo: TDBGridEh
          Left = 0
          Top = 0
          Width = 1113
          Height = 221
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
          OnCellClick = DBGridDetailpoCellClick
          OnColEnter = DBGridDetailpoColEnter
          OnColExit = DBGridDetailpoColEnter
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
              Title.Caption = 'No. Ref'
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
              Width = 58
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
              DisplayFormat = '#,##0.0000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'Harga'
              Footers = <>
              Title.Caption = 'Harga|Satuan'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.0000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'subtotal'
              Footer.DisplayFormat = '#,##0.0000'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Harga|Sub Total'
              Width = 120
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'pemb_dpp'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Harga|Pembulatan'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'subtotalrp'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Harga|Sub Total Rp'
              Width = 120
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ppn'
              Footers = <>
              Title.Caption = 'PPN|%'
              Width = 30
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ppn_rp'
              Footer.DisplayFormat = '#,##'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PPN|Nominal'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ppn_rp_pembulatan'
              Footer.DisplayFormat = '#,##'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PPN|Pembulatan'
              Width = 70
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pph'
              Footers = <>
              Title.Caption = 'PPH|%'
              Width = 34
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <
                item
                  Style = ebsPlusEh
                  Visible = False
                end>
              FieldName = 'pph_rp'
              Footer.DisplayFormat = '#,##'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PPH|Nominal'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                  OnClick = DBGridDetailpoColumns22EditButtons0Click
                end>
              FieldName = 'kd_akunpph'
              Footers = <>
              Title.Caption = 'PPH|Kode Akun'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'bea_masuk'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Bea Masuk|Nominal'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                  OnClick = DBGridDetailpoColumns24EditButtons0Click
                end>
              FieldName = 'kd_akunbea'
              Footer.FieldName = 'kd_akunbea'
              Footers = <>
              Title.Caption = 'Bea Masuk|Kode Akun'
              Width = 77
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'grandtotal'
              Footer.DisplayFormat = '#,##0.0000'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Grand Total'
              Width = 130
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'gudang'
              Footers = <>
              Title.Caption = 'Lokasi Gudang'
              Width = 130
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
              Width = 0
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Tab_UM: TRzTabSheet
        Color = 15987699
        Caption = 'Uang Muka'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGrid_UM: TDBGridEh
          Left = 0
          Top = 0
          Width = 1113
          Height = 221
          Align = alClient
          DataGrouping.GroupLevels = <
            item
              ColumnName = 'Column_1_supplier_name'
            end>
          DataSource = DS_UM
          DynProps = <>
          FooterRowCount = 1
          HorzScrollBar.ExtraPanel.Visible = True
          SearchPanel.CaseSensitive = True
          SumList.Active = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'no_trans'
              Footers = <>
              Title.Caption = 'No Trans'
              Width = 121
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'supplier_name'
              Footers = <>
              Title.Caption = 'Supplier'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'trans_date'
              Footers = <>
              Title.Caption = 'Tanggal'
              Width = 100
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'um_value'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Nilai Uang Muka'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'po_no'
              Footers = <>
              Title.Caption = 'No.PO'
              Width = 150
            end>
          object RowDetailData: TRowDetailPanelControlEh
            object DBGridEh2: TDBGridEh
              Left = 0
              Top = 0
              Width = 0
              Height = 0
              Align = alClient
              DynProps = <>
              IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
              OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
              TabOrder = 0
              object RowDetailData: TRowDetailPanelControlEh
              end
            end
          end
        end
      end
      object Tab_Retur_Pemb: TRzTabSheet
        Color = 15987699
        Caption = 'Retur Pembelian'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGridReturPemb: TDBGridEh
          Left = 0
          Top = 0
          Width = 1113
          Height = 221
          Align = alClient
          DynProps = <>
          FooterRowCount = 1
          HorzScrollBar.ExtraPanel.Visible = True
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
          SumList.Active = True
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                  Style = ebsEllipsisEh
                end>
              FieldName = 'no_terima'
              Footers = <>
              Title.Caption = 'No. LPB'
              Visible = False
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'NoFaktur'
              Footers = <>
              Title.Caption = 'No. Faktur'
              Visible = False
              Width = 96
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nopo'
              Footers = <>
              Title.Caption = 'No. PO'
              Visible = False
              Width = 142
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'Tanggal'
              Width = 83
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_stok'
              Footers = <>
              Title.Caption = 'Kode Stok'
              Visible = False
              Width = 157
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'qty'
              Footers = <>
              Title.Caption = 'Kuantum'
              Width = 93
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'harga'
              Footer.Value = 'Sub Total         :'
              Footer.ValueType = fvtStaticText
              Footers = <>
              Title.Caption = 'Harga satuan'
              Width = 115
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'totalharga'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Total harga'
              Width = 148
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Tab_Pot_Pemb: TRzTabSheet
        Color = 15987699
        Caption = 'Pot. Pembelian'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGridPotPemb: TDBGridEh
          Left = 0
          Top = 0
          Width = 1113
          Height = 221
          Align = alClient
          DynProps = <>
          TabOrder = 0
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'No Potongan'
              Visible = False
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'Tanggal'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'No Faktur'
              Visible = False
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'Nama Supplier'
              Visible = False
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'Harga Satuan'
              Width = 101
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              Footers = <>
              Title.Caption = 'Total Harga'
              Width = 160
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Tab_Barang: TRzTabSheet
        Color = 15987699
        TabVisible = False
        Caption = 'Barang'
        ExplicitLeft = 0
        ExplicitTop = 0
        ExplicitWidth = 0
        ExplicitHeight = 0
        object DBGridBarang: TDBGridEh
          Left = 0
          Top = 0
          Width = 1113
          Height = 221
          Align = alClient
          DynProps = <>
          FooterRowCount = 1
          IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
          Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
          OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
          SumList.Active = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                  ShortCut = 113
                  Style = ebsEllipsisEh
                end>
              FieldName = 'item_code'
              Footers = <>
              Title.Caption = 'Kode Barang'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'item_name'
              Footers = <>
              Title.Caption = 'Nama Barang'
              Width = 135
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'po_no'
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
              FieldName = 'unit'
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
              FieldName = 'qty'
              Footers = <>
              Title.Caption = 'PO|Satuan'
              Width = 67
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'price'
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
              FieldName = 'unit'
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
              Width = 58
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
              DisplayFormat = '#,##0.0000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'Harga'
              Footers = <>
              Title.Caption = 'Harga|Satuan'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.0000'
              DynProps = <>
              EditButtons = <>
              FieldName = 'subtotal'
              Footer.DisplayFormat = '#,##0.0000'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Harga|Sub Total'
              Width = 120
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'pemb_dpp'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Harga|Pembulatan'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'subtotalrp'
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Harga|Sub Total Rp'
              Width = 120
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'ppn'
              Footers = <>
              Title.Caption = 'PPN|%'
              Width = 30
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ppn_rp'
              Footer.DisplayFormat = '#,##'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PPN|Nominal'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <>
              FieldName = 'ppn_pembulatan'
              Footer.DisplayFormat = '#,##'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PPN|Pembulatan'
              Width = 70
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pph'
              Footers = <>
              Title.Caption = 'PPH|%'
              Width = 34
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <
                item
                  Style = ebsPlusEh
                  Visible = False
                end>
              FieldName = 'pph_rp'
              Footer.DisplayFormat = '#,##'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'PPH|Nominal'
              Width = 80
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                end>
              FieldName = 'kd_akunpph'
              Footers = <>
              Title.Caption = 'PPH|Kode Akun'
              Width = 80
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##'
              DynProps = <>
              EditButtons = <>
              Footer.DisplayFormat = '#,##0.00'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Bea Masuk|Nominal'
              Width = 78
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                end>
              Footer.FieldName = 'kd_akunbea'
              Footers = <>
              Title.Caption = 'Bea Masuk|Kode Akun'
              Width = 77
            end
            item
              CellButtons = <>
              DisplayFormat = '#,##0.00'
              DynProps = <>
              EditButtons = <>
              FieldName = 'grandtotal'
              Footer.DisplayFormat = '#,##0.0000'
              Footer.ValueType = fvtSum
              Footers = <>
              Title.Caption = 'Grand Total'
              Width = 130
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'wh_name'
              Footers = <>
              Title.Caption = 'Lokasi Gudang'
              Width = 130
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <
                item
                end>
              FieldName = 'account_code'
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
              Width = 0
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
    object RzPanel2: TRzPanel
      Left = 2
      Top = 248
      Width = 1117
      Height = 139
      Align = alBottom
      Color = 15987699
      TabOrder = 7
      ExplicitTop = 247
      ExplicitWidth = 1113
      object Label28: TLabel
        Left = 26
        Top = 81
        Width = 77
        Height = 15
        Caption = 'Pot.Pembelian'
      end
      object Label24: TLabel
        Left = 26
        Top = 109
        Width = 87
        Height = 15
        Caption = 'Retur Pembelian'
      end
      object Label22: TLabel
        Left = 26
        Top = 51
        Width = 61
        Height = 15
        Caption = 'Uang Muka'
      end
      object Label18: TLabel
        Left = 26
        Top = 22
        Width = 81
        Height = 15
        Caption = 'Jumlah Hutang'
      end
      object Label29: TLabel
        Left = 526
        Top = 22
        Width = 68
        Height = 15
        Caption = 'Total Hutang'
      end
      object EdJum_Hutang: TRzNumericEdit
        Left = 173
        Top = 19
        Width = 157
        Height = 23
        TabOrder = 0
        OnChange = EdJum_HutangChange
        DisplayFormat = '#,##0.00'
      end
      object EdJum_Um: TRzNumericEdit
        Left = 173
        Top = 48
        Width = 157
        Height = 23
        TabOrder = 1
        DisplayFormat = '#,##0.00'
      end
      object EdJum_PotPem: TRzNumericEdit
        Left = 173
        Top = 77
        Width = 157
        Height = 23
        TabOrder = 2
        OnChange = EdJum_PotPemChange
        DisplayFormat = '#,##0.00'
      end
      object EdJum_ReturPemb: TRzNumericEdit
        Left = 173
        Top = 106
        Width = 157
        Height = 23
        TabOrder = 3
        OnChange = EdJum_ReturPembChange
        DisplayFormat = '#,##0.00'
      end
      object EdJum_totalhut: TRzNumericEdit
        Left = 639
        Top = 19
        Width = 157
        Height = 23
        TabOrder = 4
        DisplayFormat = '#,##0.00'
      end
    end
  end
  object QMaterial1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'Select * from t_material_stok'
      ' order by kd_material_stok desc')
    Left = 1042
    Top = 221
  end
  object DsTerimadet: TDataSource
    DataSet = MemterimaDet
    Left = 1030
    Top = 91
  end
  object DsMaterial: TDataSource
    Left = 986
    Top = 213
  end
  object MemterimaDet: TMemTableEh
    Active = True
    Params = <>
    Left = 1034
    Top = 32
    object MemterimaDetnm_material: TStringField
      FieldName = 'nm_material'
    end
    object MemterimaDetkd_material: TStringField
      FieldName = 'kd_material'
    end
    object MemterimaDetkd_stok: TStringField
      FieldName = 'kd_stok'
      Size = 100
    end
    object MemterimaDetqty: TFloatField
      FieldName = 'qty'
    end
    object MemterimaDetsatuan: TStringField
      FieldName = 'satuan'
    end
    object MemterimaDetgudang: TStringField
      FieldName = 'gudang'
      Size = 100
    end
    object MemterimaDetno_ked: TStringField
      FieldName = 'no_ked'
    end
    object MemterimaDetno_material: TStringField
      FieldName = 'no_material'
    end
    object MemterimaDetqtypo: TFloatField
      FieldName = 'qtypo'
    end
    object MemterimaDetsatuanpo: TStringField
      FieldName = 'satuanpo'
    end
    object MemterimaDetqtyselisih: TFloatField
      FieldName = 'qtyselisih'
    end
    object MemterimaDettahun: TStringField
      FieldName = 'tahun'
    end
    object MemterimaDetqtyperkonversi: TFloatField
      FieldName = 'qtyperkonversi'
    end
    object MemterimaDetqtykonversi: TFloatField
      FieldName = 'qtykonversi'
    end
    object MemterimaDetsatuankonversi: TStringField
      FieldName = 'satuankonversi'
    end
    object MemterimaDetppn: TFloatField
      FieldName = 'ppn'
    end
    object MemterimaDetpph: TFloatField
      FieldName = 'pph'
    end
    object MemterimaDetsubtotal: TFloatField
      FieldName = 'subtotal'
    end
    object MemterimaDetgrandtotal: TFloatField
      FieldName = 'grandtotal'
    end
    object MemterimaDetppn_rp: TFloatField
      FieldName = 'ppn_rp'
    end
    object MemterimaDetppn_rp_pembulatan: TFloatField
      FieldName = 'ppn_rp_pembulatan'
    end
    object MemterimaDetpph_rp: TFloatField
      FieldName = 'pph_rp'
    end
    object MemterimaDetHarga: TFloatField
      FieldName = 'Harga'
    end
    object MemterimaDetnopo: TStringField
      FieldName = 'nopo'
      Size = 100
    end
    object MemterimaDetkd_akun: TStringField
      FieldName = 'kd_akun'
    end
    object MemterimaDetkd_akunbea: TStringField
      FieldName = 'kd_akunbea'
    end
    object MemterimaDetbea_masuk: TFloatField
      FieldName = 'bea_masuk'
    end
    object MemterimaDetkd_akunpph: TStringField
      FieldName = 'kd_akunpph'
    end
    object MemterimaDetppnrp: TFloatField
      FieldName = 'ppnrp'
    end
    object MemterimaDetpphrp: TFloatField
      FieldName = 'pphrp'
    end
    object MemterimaDetbeamasuk: TFloatField
      FieldName = 'beamasuk'
    end
    object MemterimaDetsubtotalrp: TFloatField
      FieldName = 'subtotalrp'
    end
    object MemterimaDettotalrp: TFloatField
      FieldName = 'totalrp'
    end
    object MemterimaDetnourut: TStringField
      FieldName = 'nourut'
    end
    object MemterimaDetpemb_dpp: TCurrencyField
      FieldName = 'pemb_dpp'
    end
    object MemterimaDetitem_stock_code: TStringField
      FieldName = 'item_stock_code'
    end
    object MemterimaDetwh_code: TStringField
      FieldName = 'wh_code'
    end
    object MemterimaDetref_no: TStringField
      FieldName = 'ref_no'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
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
          DisplayWidth = 50
          currency = False
          Precision = 50
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
          DisplayWidth = 100
          Size = 100
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
          DisplayWidth = 20
          currency = False
          Precision = 15
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
          DisplayWidth = 20
          currency = False
          Precision = 15
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
        object ppn_rp_pembulatan: TMTNumericDataFieldEh
          FieldName = 'ppn_rp_pembulatan'
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
        object kd_akunbea: TMTStringDataFieldEh
          FieldName = 'kd_akunbea'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object bea_masuk: TMTNumericDataFieldEh
          FieldName = 'bea_masuk'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object kd_akunpph: TMTStringDataFieldEh
          FieldName = 'kd_akunpph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object ppnrp: TMTNumericDataFieldEh
          FieldName = 'ppnrp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object pphrp: TMTNumericDataFieldEh
          FieldName = 'pphrp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object beamasuk: TMTNumericDataFieldEh
          FieldName = 'beamasuk'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object subtotalrp: TMTNumericDataFieldEh
          FieldName = 'subtotalrp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object totalrp: TMTNumericDataFieldEh
          FieldName = 'totalrp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object nourut: TMTStringDataFieldEh
          FieldName = 'nourut'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pemb_dpp: TMTNumericDataFieldEh
          FieldName = 'pemb_dpp'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
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
        object ref_no: TMTStringDataFieldEh
          FieldName = 'ref_no'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DS_UM: TDataSource
    DataSet = QUM
    Left = 952
    Top = 304
  end
  object QUM: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select a.*,b.supplier_name '
      'from purchase.t_advance_payment a'
      
        'INNER JOIN t_supplier b on a.supplier_code=b.supplier_code where' +
        ' a.supplier_code='#39#39
      '-- group by a.supplier_code,b.supplier_name,a.no_trans'
      'order by a.no_trans DESC')
    Left = 912
    Top = 304
  end
  object MemUm: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 911
    Top = 369
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QUM
    Left = 952
    Top = 369
  end
  object MemUangMuka: TMemTableEh
    Params = <>
    Left = 811
    Top = 313
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_trans: TMTStringDataFieldEh
          FieldName = 'no_trans'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tanggal: TMTDateTimeDataFieldEh
          FieldName = 'tanggal'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object supplier: TMTStringDataFieldEh
          FieldName = 'supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nilai_um: TMTNumericDataFieldEh
          FieldName = 'nilai_um'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object no_po: TMTStringDataFieldEh
          FieldName = 'no_po'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSUangMuka: TDataSource
    DataSet = MemUangMuka
    Left = 811
    Top = 353
  end
  object Qterima_barang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.item_stock_code,a.item_code, a.item_name, a.order_no,b.' +
        'price,b.qty, b.unit,b.wh_code,f.wh_name,b.receive_no,b.ppn,b.pph' +
        ','
      
        'b.po_no, c.supplier_code, d.spb_no,e.account_code,b.subtotal,b.g' +
        'randtotal,b.pemb_dpp,b.ppn_rp,b.ppn_pembulatan,b.pph_rp'
      'from warehouse.t_item_stock a '
      
        'inner join purchase.t_item_receive_det b on a.item_stock_code=b.' +
        'item_stock_code'
      
        'inner join purchase.t_item_receive C on b.receive_no=c.receive_n' +
        'o'
      'inner join  purchase.t_spb_det d on d.spb_no=c.spb_no'
      'inner join t_item e on a.item_code=e.item_code'
      'inner join t_wh f on b.wh_code=f.wh_code'
      
        'GROUP BY a.item_stock_code,a.item_code, a.item_name, a.order_no,' +
        'b.price,b.qty, b.unit,b.wh_code,f.wh_name,'
      
        'b.receive_no,b.subtotal,b.grandtotal,b.pemb_dpp,b.ppn_rp,b.ppn_p' +
        'embulatan,b.pph_rp'
      ',b.ppn,b.pph,'
      'b.po_no, c.supplier_code, d.spb_no,e.account_code,f.wh_code')
    Left = 171
    Top = 297
  end
  object DSTerima_barang: TDataSource
    DataSet = MemTerima_barang
    Left = 243
    Top = 297
  end
  object MemTerima_barang: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverTerima_Barang
    Left = 171
    Top = 353
  end
  object DataSetDriverTerima_Barang: TDataSetDriverEh
    ProviderDataSet = Qterima_barang
    Left = 251
    Top = 353
  end
  object QPot_pemb: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from purchase.t_purchase_discount')
    Left = 651
    Top = 313
  end
  object DS_pot_pemb: TDataSource
    DataSet = QPot_pemb
    Left = 691
    Top = 313
  end
  object QRetur_pemb: TUniQuery
    Connection = dm.Koneksi
    Left = 499
    Top = 313
  end
  object DSRetur_pemb: TDataSource
    DataSet = QRetur_pemb
    Left = 547
    Top = 313
  end
end
