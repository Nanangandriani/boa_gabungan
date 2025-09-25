object FRpt_BukuHarianPembelian: TFRpt_BukuHarianPembelian
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form Laporan Buku Harian Pembelian'
  ClientHeight = 328
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 187
    Top = 195
    Width = 38
    Height = 13
    Caption = 'Tanggal'
    Visible = False
  end
  object Label2: TLabel
    Left = 265
    Top = 195
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label3: TLabel
    Left = 416
    Top = 195
    Width = 17
    Height = 13
    Caption = 'S/D'
    Visible = False
  end
  object Label4: TLabel
    Left = 187
    Top = 163
    Width = 72
    Height = 13
    Caption = 'Akun Perkiraan'
    Visible = False
  end
  object Label5: TLabel
    Left = 265
    Top = 163
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 293
    Width = 741
    Height = 35
    Align = alBottom
    TabOrder = 0
    Visible = False
    OnClick = Panel1Click
    ExplicitTop = 292
    ExplicitWidth = 737
    object Bprint: TRzBitBtn
      Left = 1
      Top = 1
      Width = 82
      Height = 33
      Align = alLeft
      Caption = 'Print'
      TabOrder = 0
      Visible = False
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
    end
    object BBatal: TRzBitBtn
      Left = 658
      Top = 1
      Width = 82
      Height = 33
      Align = alRight
      Caption = 'Batal'
      TabOrder = 1
      Visible = False
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
      ExplicitLeft = 654
    end
    object BPrint2: TRzBitBtn
      Left = 83
      Top = 1
      Width = 84
      Height = 33
      Align = alLeft
      Caption = 'Print'
      TabOrder = 2
      Visible = False
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
    end
    object BPrint11: TRzBitBtn
      Left = 583
      Top = 1
      Height = 33
      Align = alRight
      Caption = 'Print'
      TabOrder = 3
      OnClick = BPrint11Click
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
      ExplicitLeft = 579
    end
  end
  object DtMulai1: TRzDateTimeEdit
    Left = 275
    Top = 192
    Width = 135
    Height = 21
    EditType = etDate
    TabOrder = 1
    Visible = False
  end
  object DtSelesai1: TRzDateTimeEdit
    Left = 439
    Top = 187
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 2
    Visible = False
  end
  object edkd_akun1: TRzEdit
    Left = 275
    Top = 160
    Width = 89
    Height = 21
    Text = ''
    TabOrder = 3
    Visible = False
  end
  object Ednm_akun1: TRzButtonEdit
    Left = 370
    Top = 160
    Width = 196
    Height = 21
    Text = ''
    TabOrder = 4
    Visible = False
    OnChange = Ednm_akun1Change
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = Ednm_akun1ButtonClick
  end
  object CKUm: TCheckBox
    Left = 445
    Top = 184
    Width = 97
    Height = 17
    Caption = 'Uang Muka'
    TabOrder = 5
    Visible = False
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 741
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 6
    TabStop = False
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
  object Rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45719.366668750000000000
    ReportOptions.LastChange = 45719.366668750000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = RptGetValue
    Left = 344
    Top = 191
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 185.196970000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object DbRptSP: TfrxDBDataset
    UserName = 'DbRptSP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kd_akunpph=kd_akunpph'
      'nofaktur=nofaktur'
      'nm_material=nm_material'
      'supplier=supplier'
      'qty=qty'
      'subtotal=subtotal'
      'grandtotal=grandtotal'
      'Bahan_baku=Bahan_baku'
      'kimia=kimia'
      'Bahan_kms=Bahan_kms'
      'ppn=ppn'
      'kd_material=kd_material'
      'Bahan_Penolong=Bahan_Penolong'
      'Lain2=Lain2'
      'kd_akun=kd_akun'
      'nm_akun=nm_akun'
      'jmlh=jmlh'
      'ppn2=ppn2'
      'kd_akun2=kd_akun2'
      'pph_rp=pph_rp'
      'nilai_um=nilai_um'
      'kd_akunum=kd_akunum'
      'total=total'
      'noterima=noterima'
      'nopo=nopo'
      'nilaium2=nilaium2'
      'ppnkk=ppnkk'
      'ppn22=ppn22')
    DataSet = MemBHP
    BCDToCurrency = False
    DataSetOptions = []
    Left = 176
    Top = 181
  end
  object QRptBHP: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.trans_no,a.trans_date,a.faktur_no,b.po_no,debt_remainin' +
        'g,a.um_value,a.account_code ak_htng,c.item_stock_code,c.item_nam' +
        'e,b.account_code,b.ppn_account,b.subtotalrp,b.ppn_rp,b.grandtota' +
        'l,concat(a.account_code,'#39' ('#39',d.account_name,'#39')'#39') ak_ht_name,conc' +
        'at(b.account_code,'#39' ('#39',e.account_name,'#39')'#39') ak_detail,case when b' +
        '.ppn_account <> '#39#39' then concat(b.ppn_account,'#39' ('#39',f.account_name' +
        ','#39')'#39') else '#39#39' end ak_ppn,'
      
        'case when a.account_um_code <> '#39#39' then concat(a.account_um_code,' +
        #39' ('#39',g.account_name,'#39')'#39') else '#39#39' end ak_um,c.group_name'
      
        ',h.supplier_name,b.qty,b.unit,"left"(c.item_stock_code, 8) item_' +
        'code '
      'from t_purchase_invoice a'
      'INNER JOIN  t_purchase_invoice_det b on a.trans_no=b.trans_no'
      
        'INNER JOIN (select a.*,c.group_name from t_item_stock a INNER JO' +
        'IN t_item b on a.item_code=b.item_code INNER JOIN t_item_group c' +
        ' on b.group_id=c.group_id ) c on b.item_stock_code=c.item_stock_' +
        'code'#9
      'INNER JOIN t_ak_account d on a.account_code=d.code '
      'INNER JOIN t_ak_account E on b.account_code=e.code'
      'LEFT JOIN t_ak_account F on b.ppn_account=f.code  '
      'LEFT JOIN t_ak_account g on a.account_um_code=g.code'
      'INNER JOIN t_supplier h on a.supplier_code=h.supplier_code')
    Left = 163
    Top = 109
  end
  object MemBHP: TMemTableEh
    Active = True
    Params = <>
    Options = [mtoPersistentStructEh]
    Left = 91
    Top = 159
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akunpph: TMTStringDataFieldEh
          FieldName = 'kd_akunpph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nofaktur: TMTStringDataFieldEh
          FieldName = 'nofaktur'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object supplier: TMTStringDataFieldEh
          FieldName = 'supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object qty: TMTStringDataFieldEh
          FieldName = 'qty'
          StringDataType = fdtStringEh
          DisplayWidth = 50
        end
        object subtotal: TMTNumericDataFieldEh
          FieldName = 'subtotal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          DisplayFormat = '#,##'
          currency = False
          Precision = 50
        end
        object grandtotal: TMTNumericDataFieldEh
          FieldName = 'grandtotal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          DisplayFormat = '#,##'
          currency = False
          Precision = 50
        end
        object Bahan_baku: TMTNumericDataFieldEh
          FieldName = 'Bahan_baku'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 50
        end
        object kimia: TMTNumericDataFieldEh
          FieldName = 'kimia'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 100
        end
        object Bahan_kms: TMTNumericDataFieldEh
          FieldName = 'Bahan_kms'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 100
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 100
        end
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Bahan_Penolong: TMTNumericDataFieldEh
          FieldName = 'Bahan_Penolong'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 100
        end
        object Lain2: TMTNumericDataFieldEh
          FieldName = 'Lain2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object jmlh: TMTNumericDataFieldEh
          FieldName = 'jmlh'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 100
        end
        object ppn2: TMTNumericDataFieldEh
          FieldName = 'ppn2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##'
          currency = False
          Precision = 100
        end
        object kd_akun2: TMTStringDataFieldEh
          FieldName = 'kd_akun2'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pph_rp: TMTNumericDataFieldEh
          FieldName = 'pph_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object nilai_um: TMTNumericDataFieldEh
          FieldName = 'nilai_um'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object kd_akunum: TMTStringDataFieldEh
          FieldName = 'kd_akunum'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object total: TMTNumericDataFieldEh
          FieldName = 'total'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object noterima: TMTStringDataFieldEh
          FieldName = 'noterima'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object nopo: TMTStringDataFieldEh
          FieldName = 'nopo'
          StringDataType = fdtStringEh
          DisplayWidth = 50
        end
        object nilaium2: TMTNumericDataFieldEh
          FieldName = 'nilaium2'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object ppnkk: TMTNumericDataFieldEh
          FieldName = 'ppnkk'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object ppn22: TMTNumericDataFieldEh
          FieldName = 'ppn22'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsbph: TDataSource
    DataSet = MemBHP
    Left = 224
    Top = 208
  end
  object QCategory: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select d.nofaktur,(A.subtotal*d.nilai_valas)as subtotal,b.kd_mat' +
        'erial,a.no_terima,b.kd_material_stok, c.Category ,c.jenis'
      'from t_terima_material_det a '
      
        'inner join t_material_stok b on a.kd_material_stok=b.kd_material' +
        '_stok '
      'inner join t_material c on b.kd_material=c.kd_material '
      'inner JOIN t_terima_material d on a.no_terima=d.no_terima'
      
        'group by d.nofaktur,b.kd_material,a.no_terima,b.kd_material_stok' +
        ', c.Category,c.jenis,(A.subtotal*d.nilai_valas)')
    Left = 8
    Top = 160
  end
  object QRptBHPNon: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.nofaktur, b.npwp || B.nm_supplier as supp, c.kd_materia' +
        'l_stok, d.nm_material , c.qty||c.satuan as qty'
      
        ', c.kd_akun, e.namasp, c.subtotal-c.pph_rp as subtotal, a.kd_aku' +
        'n as kodesp,f.namasp, c.subtotal+c.ppn_rp as total, a.tgl_terima' +
        ', c.ppn_rp'
      
        'from t_terima_material a inner JOIN t_supplier B on a.kd_supplie' +
        'r=b.kd_supplier'
      'inner JOIN t_terima_material_det c on a.no_terima=c.no_terima'
      
        'INNER JOIN t_material_stok d on c.kd_material_stok=d.kd_material' +
        '_stok'
      'LEFT join tdata31 E on e.kodesp=c.kd_akun'
      'LEFT join tdata31 F on F.kodesp=a.kd_akun')
    Left = 88
    Top = 106
  end
  object DbRptBHPNon: TfrxDBDataset
    UserName = 'DbRptBHPNon'
    CloseDataSource = False
    DataSet = QRptBHPNon
    BCDToCurrency = False
    DataSetOptions = []
    Left = 16
    Top = 224
  end
  object QRptBHPDet: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select c.nm_supplier as supp, d.qty,d.subtotal,'#9'a.jmlh_hutang,a.' +
        'nilai_um,d.ppn_rp, d.nopo,e.nm_material,e.kd_material_stok, '
      
        #9'a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.n' +
        'osj, a.nofaktur,'#9'a.tgl_faktur,a.jatuh_tempo, '
      
        #9'a.kd_supplier, a.kd_akun, a.jenis_pembelian,a.jmlh_hutang,a.jml' +
        'h_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status, '
      
        #9'a.valas,a.nilai_valas, '#9'a.pic_update, a.tgl_update,'#39#39' as no_per' +
        'k, '#39#39' as nm_perk, 0 as jmlh, 0 as ppn2'
      '        ,f.category,a.kd_sbu,d.pph_rp'
      'from t_terima_material a'
      'inner join t_supplier C on a.kd_supplier=c.Kd_supplier'
      'inner join t_terima_material_det d on A.no_terima=d.no_terima'
      
        'left join t_material_stok e on d.kd_material_stok=E.kd_material_' +
        'stok'
      
        'left join t_material f on e.kd_material=f.kd_material and e.no_m' +
        'aterial=f.no_material'
      'where a.jenis_pembelian='#39'PRODUKSI'#39
      'union'
      
        'select c.nm_supplier as supp, d.qty,d.subtotal,'#9'a.jmlh_hutang ,a' +
        '.nilai_um,0, d.nopo,e.nm_material,e.kd_material_stok, '
      
        #9'a.tgl_terima,a.no_terima, a.no_urut, a.pic, a.ket, a.nospb, a.n' +
        'osj, a.nofaktur,'#9'a.tgl_faktur,a.jatuh_tempo, '
      
        #9'a.kd_supplier, d.kd_akun, a.jenis_pembelian,a.jmlh_hutang,a.jml' +
        'h_bayar,a.sisa_hutang,a.ppn,a.ppn_rp,a.status, '
      
        #9'a.valas,a.nilai_valas, '#9'a.pic_update, a.tgl_update, a.kd_akun, ' +
        'f.nama_perkiraan, d.grandtotal , d.ppn_rp ,'
      '        g.category,a.kd_sbu,d.pph_rp'
      'from t_terima_material a'
      'inner join t_supplier C on a.kd_supplier=c.Kd_supplier'
      'inner join t_terima_material_det d on A.no_terima=d.no_terima'
      
        'left join t_material_stok e on d.kd_material_stok=E.kd_material_' +
        'stok'
      'LEFT join t_daftar_perkiraan F on F.kode=d.kd_akun'
      
        'left join t_material g on e.kd_material=g.kd_material and e.no_m' +
        'aterial=g.no_material'
      'where a.jenis_pembelian<>'#39'PRODUKSI'#39
      'order by category Desc')
    Left = 3
    Top = 101
  end
  object DbRptSPdet: TfrxDBDataset
    UserName = 'DbRptSPdet'
    CloseDataSource = False
    DataSet = QRptBHPDet
    BCDToCurrency = False
    DataSetOptions = []
    Left = 264
    Top = 210
  end
  object Rpt_BHP: TfrxDBDataset
    UserName = 'Rpt_BHP'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'trans_date=trans_date'
      'faktur_no=faktur_no'
      'po_no=po_no'
      'debt_remaining=debt_remaining'
      'um_value=um_value'
      'ak_htng=ak_htng'
      'item_stock_code=item_stock_code'
      'item_name=item_name'
      'account_code=account_code'
      'ppn_account=ppn_account'
      'subtotalrp=subtotalrp'
      'ppn_rp=ppn_rp'
      'grandtotal=grandtotal'
      'ak_ht_name=ak_ht_name'
      'ak_detail=ak_detail'
      'ak_ppn=ak_ppn'
      'ak_um=ak_um'
      'group_name=group_name'
      'supplier_name=supplier_name'
      'qty=qty'
      'unit=unit'
      'item_code=item_code')
    DataSet = QRptBHP
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 165
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
    Left = 592
    Top = 65451
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 805
      FloatTop = 8
      FloatClientWidth = 200
      FloatClientHeight = 130
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtMulai'
        end
        item
          Visible = True
          ItemName = 'dtSelesai'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'EdAkun'
        end
        item
          Visible = True
          ItemName = 'Ednm_akun'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
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
      Caption = 'Cari'
      Category = 0
      Hint = 'Cari'
      Visible = ivNever
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
    end
    object dtMulai: TcxBarEditItem
      Caption = 'Tanggal Awal '
      Category = 0
      Hint = 'Tanggal Awal '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dtSelesai: TcxBarEditItem
      Caption = 'Tanggal Akhir'
      Category = 0
      Hint = 'Tanggal Akhir'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object EdAkun: TcxBarEditItem
      Caption = 'Akun Perkiraan '
      Category = 0
      Hint = 'Akun Perkiraan '
      Visible = ivAlways
      Width = 200
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdAkunPropertiesButtonClick
    end
    object Ednm_akun: TcxBarEditItem
      Caption = 'Nama Perkiraan'
      Category = 0
      Hint = 'Nama Perkiraan'
      Visible = ivAlways
      Width = 200
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Rician Penerimaan Barang (Accurate)'
      Category = 0
      Hint = 'Rician Penerimaan Barang (Accurate)'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000001D744558745469746C650044656661756C745072696E74
        65723B5072696E7465723BDA69A502000007CD49444154785EC5977B8C55C51D
        C73FE771F7C1BAACBC168105D675E52DCA4BEBD2070F37DA688B5A23C547691B
        2D45EC23ADB5B4A1A66AAC466BA8AD4D6D43D414ABD1AA40632D8DF511AC5865
        11ECC2C2020BBB805B10F6EEDDE7BDE79C99F975777272727BE3669BFED3B9F9
        65E64CEE99EFE3F79BB9731D11E1FFD97C3EA1398E43E114C337270EF79B8F4E
        FF4C7945EAE6A26267BE9F72A722D2A6B5B4F575E96737AE6BDA0AA88EEC4E13
        9A2EFCFF76D14F20E214F69F5B39A1F2A2CBCFDD3469D2A4FA85D3973269EC05
        8C1B39998EBEF651A73B8F5EF2E1D11D2BD63FED361C6FEEBF654C69DD918FFB
        DFD4FE30E0EED35B76FFCD75DC258200603B079247112ACA4B183BCAF0EA07DF
        E3E2E9B3593CAF9EAC3941A85B3891DD4D49D118AA268E655AD57768687E63A1
        E857DF5EF5C39A2B2A472CDD379C03AE1896ACFAE25C84027C91980088689ED8
        FA2D16CE59C09C1935B4F46CC573058F1403E4894C961EE7041D6777505B7DF9
        00A12F8FDBD6FB876726D596D50DEB40A4345A40299D503092C7D075686AD9C9
        D9DE16AE9C76316D5D6FE1793E221EC6055F3C5C17FEB2FD9F3434B43371CAFB
        FCE0B6EF523DA9E6A26537855F1BB606A24823C6A08D01719058B620E03878AE
        C38EBD2FB268CE42DA7B77A38D0204C4204683EBF0ECB3EF51E12EE59777BDC4
        BA87E771F8F4BBCC9B79294DCD87560D4B20540A2382D602486C7D4C0483782E
        ADED4DCC5F74193D6186B6D6336CD9D2C0A205D358B66C06AFBDD6C4F81157B3
        F6869FF0C093ABF9D2B5CB49152946F80A5C67FEF0290814C608DA08B17CEC47
        485AA6A7839034D9A0972D2F7DC0C3EBDEE3C5D79FE091479F63F1ECAF73FBF5
        F7F0CCF67B9930254B756D057D619A52FF2C464BB11FEFF9A11D88145A406B03
        22F9C58808363525A972CE767D845F62B8EE9A2B786AEB0636ACF93D7B0EDDC8
        8CEA8BE9EA6BE1EF8DCFB3764D3DDDC1292BE8E3EE76C2C004FE10CA1307C220
        C2688DD2C64E1880380D22825286F346D572EAF451C64C548CAF292693C9B1E9
        E51F71E74D1B6D0DFCF4E76BB87EC56232C1099489C018BACE8404FD6ABF5B68
        39E0013E500414E7A2C8AAD446505AAC13C6F6DACEE542CD82195771E8401782
        4BBAEF23A65F5242A7D9C5963736D278643B5E599AE28A4EB261CF40F421E272
        F86086DE2EFDA7FF507BFFC617265756563D82E7D57DB8F79D89C5A9144E6A22
        77DF7125FDB90804C4014492B103A43CCD834FDECA98F3DB997C610A6D22468F
        98C22BDBF671EC642B37AFACC72B3F8B00BEE3F1AF364DC38ECCBED7379F5CE2
        9380BF38AB6AF2D4B767D65656CCBEF03C76EE7C9D598BEB38D0D89638200818
        0B8A49AAD0B18A565F7D3FBF78EE1BE472FDD4CC2E229D3DCEB5D75D4A69D155
        9CEA69245082E7B8B4346769DE930B8E37F5AEEB4D47DD3E00E0968D1C7BDF05
        5346574C185B4E59698A30085091E2E8817F70DBDA77AD5C710484FC86884104
        66CFAC66C194DBD9B5FF294E9DE8A4664E0A35A109D77310031DA734AD072274
        CFF8B079D7812FECDFD1B10B508903DAC8B291E794D862330299CE4E32E90E3E
        B56469A21484C286C42E60281D59C6AAFAC7686CF92BC7F6BCCFEE370F26AF4E
        185DCB25E77F96AA71CBD9FC50DD6E40BDD57A9B240E28A5470AA08C587B1D31
        1C6B3E88EFFBB89E8F9F4A2122B89E4B6AB0361C97C2963E7396E6E68809E366
        70D9B485141779384671F5958BE9ECCE1184C20B7FDE5B0498983A3EC97ED7A8
        81887C6D2B7DEEAC5A76EF3D8C9F2A4A84131FBF3613D82122F906899D6C3928
        080E419865DE9C0B5879C3E7399D8EC80521B95C946CF525D59B88538033081E
        0C84E72B2265B865D5B534EC79906CBFB22E58C538F9BE0F991A6384280A7051
        7CF52B37D8F5C248D9F5A3810092C5120722A51874C1F75D42A5A9AC1CC7EF1E
        BF97C77FF30C8DFB9AE94867C00056B5248205030224CFC298D1E7326FEE74BE
        BD6E35E7948F24529A30163888937FD8F9008903A1C21B24101A42A5F08B4A59
        7FF75A3CCFB1D7B4447F8176A7A0284584C80841A0ECF9519CF2C8459A305428
        65F209901030F65453B6C8B261641903F4E5A27C20FE972BAC114BC6AE6F4C21
        81B806B43196A5EB29723945A03489628B5CA03A998B4FC498A1147C0F076271
        0491B66362CC02070C61A8F1DC410714A132FCFAB7DB3874E4E4F0CA8728CF69
        B555DCB966055A0B41A809028D3143A5401B6BBB379882D8AE51A3CAA9BB6C1E
        3F5BBF825FED3C4359B187E738681144A03BABE9EE8F308031D66ABA7B421EB8
        A68A871FDF4E5FB68BE6D6D3949795D291E9C3897F41F309B824793228A5ED0E
        B0760511375EF7693B6704EB4EA48520124225E422A12FD016D4C48797D8C08E
        9556D42F9F3F4028A0A73F200823BB03C4084949E511305AE9CC60C52A656CAE
        94361C3FD5496757172216942032045ADB3E1B6A429B5392D0B10B4640691978
        3F6D7790088838F467238CD15D80060C801F0FA2F6932D77F467B38F21CE3804
        945104B92C53A74EB10B5BF028482E25B9C0900B4DB2F7C5023B60C1C068CD1F
        37BF829F2AC6F353365CC7E9C8A4DBBE0FE400935F8D1EF105246F67A48011EB
        363C7FE8BEBB5624E5257168939C3E71979CCD0870CF832FB3E9D15B1701BD40
        04A818B83FEE1590FC18E978322AB81DF50641F69D1F3FF4D262123C41F28101
        31807581846814E6DE055A6340130789FD43FDD72B78F681541C6EFE113ACCFB
        36AD89D204300949404464E87FC7E024C0850487269E9F29433C4E700ADABF01
        BF46B5E2A37F9ED00000000049454E44AE426082}
      OnClick = dxBarLargeButton2Click
    end
  end
end
