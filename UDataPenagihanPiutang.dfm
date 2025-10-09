object FDataPenagihanPiutang: TFDataPenagihanPiutang
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Penagihan Piutang'
  ClientHeight = 550
  ClientWidth = 1370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1370
    Height = 161
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1366
    object Label39: TLabel
      Left = 31
      Top = 133
      Width = 44
      Height = 15
      Caption = 'Kolektor'
    end
    object Label38: TLabel
      Left = 136
      Top = 133
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label10: TLabel
      Left = 31
      Top = 50
      Width = 74
      Height = 15
      Caption = 'Tanggal Cetak'
    end
    object Label11: TLabel
      Left = 136
      Top = 50
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label1: TLabel
      Left = 31
      Top = 24
      Width = 100
      Height = 15
      Caption = 'Tanggal Penagihan'
    end
    object Label2: TLabel
      Left = 136
      Top = 24
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label3: TLabel
      Left = 31
      Top = 74
      Width = 64
      Height = 15
      Caption = 'Karesidenan'
    end
    object Label4: TLabel
      Left = 136
      Top = 74
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 31
      Top = 102
      Width = 57
      Height = 15
      Caption = 'Kabupaten'
    end
    object Label6: TLabel
      Left = 136
      Top = 102
      Width = 3
      Height = 15
      Caption = ':'
    end
    object edNamaKolektor: TRzButtonEdit
      Left = 149
      Top = 130
      Width = 344
      Height = 23
      Text = ''
      TabOrder = 0
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaKolektorButtonClick
    end
    object edKodeKolektor: TEdit
      Left = 793
      Top = 0
      Width = 200
      Height = 23
      TabOrder = 1
      Visible = False
    end
    object dtCetak: TRzDateTimePicker
      Left = 149
      Top = 47
      Width = 186
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 2
    end
    object btAddDetail: TRzBitBtn
      Left = 20
      Top = 238
      Width = 116
      Height = 30
      Align = alCustom
      Caption = 'Tambah Detail'
      TabOrder = 3
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000830B0000830B00000001000000000000000000003300
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
        09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E809090909
        0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E809101010
        1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
        1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
        0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object dtTagih: TRzDateTimePicker
      Left = 149
      Top = 20
      Width = 186
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 4
    end
    object btTampilkan: TRzBitBtn
      Left = 499
      Top = 128
      Width = 127
      Align = alCustom
      Caption = 'Preview'
      TabOrder = 5
      OnClick = btTampilkanClick
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
        5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
        D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
        E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
        E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
        81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
        81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
        81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
        D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
        E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
        D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
        E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
        D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
        D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
        5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object edKdWilayah: TEdit
      Left = 488
      Top = 21
      Width = 121
      Height = 23
      TabOrder = 6
      Text = 'edKdWilayah'
      Visible = False
    end
    object BtnCetakDpp: TRzBitBtn
      Left = 632
      Top = 128
      Width = 121
      Caption = 'Cetak DPP'
      TabOrder = 7
      OnClick = BtnCetakDppClick
    end
    object edKaresidenan: TRzButtonEdit
      Left = 149
      Top = 74
      Width = 186
      Height = 23
      Text = ''
      TabOrder = 8
      OnChange = edKaresidenanChange
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKaresidenanButtonClick
    end
    object edKabupaten: TRzButtonEdit
      Left = 149
      Top = 102
      Width = 268
      Height = 23
      Text = ''
      TabOrder = 9
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKabupatenButtonClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 518
    Width = 1370
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 517
    ExplicitWidth = 1366
    object BBatal: TRzBitBtn
      Left = 1294
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Close'
      TabOrder = 1
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
      ExplicitLeft = 1290
    end
    object BSave: TRzBitBtn
      Left = 1219
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Posting'
      TabOrder = 0
      OnClick = BSaveClick
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
        0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
        120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
        12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
        1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
        181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
        E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
        E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
        E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
        E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
        E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 1215
    end
    object RzBitBtn1: TRzBitBtn
      Left = 1
      Top = 1
      Width = 130
      Height = 30
      Align = alLeft
      Caption = 'Moving DPP'
      TabOrder = 2
      OnClick = RzBitBtn1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000230B0000230B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8A3787878
        7878787878787878E8E8E8E8818181818181818181818181E8E8E8A3CEA3D5CE
        CECECECECECEA3D578E8E881AC81E3ACACACACACACAC81E381E8E8A3CEA3D5D5
        D5D5D5D5D5D5CED578E8E881AC81E3E3E3E3E3E3E3E3ACE381E8E8A3CEA3D5D5
        0C5BD5D5D5D5CED578E8E881AC81E3E381ACE3E3E3E3ACE381E8E8A3CEA3D5D5
        7F3737D5D5D5CED578E8E881AC81E3E3AC8181E3E3E3ACE381E8E8A3CEA3D5D5
        B137615BD5D5CED578E8E881AC81E3E3E381E3ACE3E3ACE381E8E8A3CEA3D5D5
        D5368C37B1D5CED578E8E881AC81E3E3E381E381E3E3ACE381E8E8A3D5D5A3A3
        A33061615BA3A3A3A3E8E881E3E381818181E3E3AC81818181E8E8A3D5D5D5D5
        D5D9616137D578E8E8E8E881E3E3E3E3E381E3E381E381E8E8E8E8E8A3D5D5D5
        D5D9616137A3E8E8E8E8E8E881E3E3E3E381E3E38181E8E8E8E8E8E8E8A3A3A3
        A336616137E8E8E8E8E8E8E8E88181818181E3E381E8E8E8E8E8E8E8E8E80CD9
        D937616131D9D9E8E8E8E8E8E8E881818181E3E3818181E8E8E8E8E8E8E85CD9
        3D3D6161370C5CE8E8E8E8E8E8E8AC81E3E3E3E38181ACE8E8E8E8E8E8E8E831
        363D3D3631DEE8E8E8E8E8E8E8E8E88181E3E38181DEE8E8E8E8E8E8E8E8E887
        D912D980E8E8E8E8E8E8E8E8E8E8E8E3818181ACE8E8E8E8E8E8E8E8E8E8E8E8
        5C37ACE8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 161
    Width = 1370
    Height = 357
    Hint = ''
    ActivePage = TabSDetail
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 2
    ExplicitWidth = 1366
    ExplicitHeight = 356
    FixedDimension = 21
    object TabSDetail: TRzTabSheet
      Caption = 'Data'
      ExplicitWidth = 1362
      ExplicitHeight = 331
      object DBGridDetail: TDBGridEh
        Left = 0
        Top = 0
        Width = 1366
        Height = 332
        Align = alClient
        DataSource = DSDetail
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kode_pel'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridDetailColumns1EditButtons0Click
              end>
            FieldName = 'nama_pel'
            Footers = <>
            Title.Caption = 'Pelanggan'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridDetailColumns2EditButtons0Click
              end>
            FieldName = 'no_invoice'
            Footers = <>
            Title.Caption = 'Nomor | Tagihan'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_invoice_tax'
            Footers = <>
            Title.Caption = 'Nomor | Faktur'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_faktur'
            Footers = <>
            Title.Caption = 'Tanggal | Faktur'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_tempo'
            Footers = <>
            Title.Caption = 'Tanggal | Tempo'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jum_piutang'
            Footers = <>
            Title.Caption = 'Piutang'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tunai'
            Footers = <>
            Title.Caption = 'Tunai'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'bank_resi'
            Footers = <>
            Title.Caption = 'Bank Resi'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_resi'
            Footers = <>
            Title.Caption = 'Tanggal Resi'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'resi'
            Footers = <>
            Title.Caption = 'Jumlah Resi'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama_bank_cek'
            Footers = <>
            Title.Caption = 'Bank Cek/Giro'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_cek'
            Footers = <>
            Title.Caption = 'No. Cek/Giro'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_tempo_cek'
            Footers = <>
            Title.Caption = 'Tanggal Cek/Giro'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nilai_cek'
            Footers = <>
            Title.Caption = 'Nilai Cek/Giro'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kontra_bon'
            Footers = <>
            Title.Caption = 'Kontrabon'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DSDetail: TDataSource
    DataSet = MemDetail
    Left = 736
    Top = 33
  end
  object MemDetail: TMemTableEh
    Params = <>
    Left = 680
    Top = 1
    object MemDetailkode_pel: TStringField
      FieldName = 'kode_pel'
    end
    object MemDetailnama_pel: TStringField
      FieldName = 'nama_pel'
    end
    object MemDetailtgl_faktur: TDateField
      FieldName = 'tgl_faktur'
    end
    object MemDetailtgl_tempo: TDateField
      FieldName = 'tgl_tempo'
    end
    object MemDetailjum_piutang: TCurrencyField
      FieldName = 'jum_piutang'
      DisplayFormat = '#,##0.##'
    end
    object MemDetailtunai: TCurrencyField
      FieldName = 'tunai'
      DisplayFormat = '#,##0.##'
    end
    object MemDetailbank_resi: TStringField
      FieldName = 'bank_resi'
    end
    object MemDetailtgl_resi: TDateField
      FieldName = 'tgl_resi'
    end
    object MemDetailresi: TCurrencyField
      FieldName = 'resi'
      DisplayFormat = '#,##0.##'
    end
    object MemDetailno_cek: TStringField
      FieldName = 'no_cek'
    end
    object MemDetailtgl_tempo_cek: TDateField
      FieldName = 'tgl_tempo_cek'
    end
    object MemDetailnilai_cek: TCurrencyField
      FieldName = 'nilai_cek'
      DisplayFormat = '#,##0.##'
    end
    object MemDetailkontra_bon: TCurrencyField
      FieldName = 'kontra_bon'
      DisplayFormat = '#,##0.##'
    end
    object MemDetailno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 100
    end
    object MemDetailno_invoice_tax: TStringField
      FieldName = 'no_invoice_tax'
    end
    object MemDetailnama_bank_cek: TStringField
      FieldName = 'nama_bank_cek'
    end
    object MemDetailisdpp_prev: TSmallintField
      FieldName = 'isdpp_prev'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kode_pel: TMTStringDataFieldEh
          FieldName = 'kode_pel'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_pel: TMTStringDataFieldEh
          FieldName = 'nama_pel'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_invoice: TMTStringDataFieldEh
          FieldName = 'no_invoice'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object no_invoice_tax: TMTStringDataFieldEh
          FieldName = 'no_invoice_tax'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tgl_faktur: TMTDateTimeDataFieldEh
          FieldName = 'tgl_faktur'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object tgl_tempo: TMTDateTimeDataFieldEh
          FieldName = 'tgl_tempo'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object jum_piutang: TMTNumericDataFieldEh
          FieldName = 'jum_piutang'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object tunai: TMTNumericDataFieldEh
          FieldName = 'tunai'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object bank_resi: TMTStringDataFieldEh
          FieldName = 'bank_resi'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tgl_resi: TMTDateTimeDataFieldEh
          FieldName = 'tgl_resi'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object resi: TMTNumericDataFieldEh
          FieldName = 'resi'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object nama_bank_cek: TMTStringDataFieldEh
          FieldName = 'nama_bank_cek'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_cek: TMTStringDataFieldEh
          FieldName = 'no_cek'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tgl_tempo_cek: TMTDateTimeDataFieldEh
          FieldName = 'tgl_tempo_cek'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object nilai_cek: TMTNumericDataFieldEh
          FieldName = 'nilai_cek'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object kontra_bon: TMTNumericDataFieldEh
          FieldName = 'kontra_bon'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object isdpp_prev: TMTNumericDataFieldEh
          FieldName = 'isdpp_prev'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45890.551913078700000000
    ReportOptions.LastChange = 45891.597427696760000000
    ScriptLanguage = 'JScript'
    ScriptText.Strings = (
      '  '
      
        '    if (MasterData1.RowCount == 0) { // Or check a data source d' +
        'irectly'
      '        Page2.Visible = false;'
      '    } else {'
      '        Page2.Visible = true;'
      '    }    '
      ''
      ''
      ''
      '  ')
    OnGetValue = ReportGetValue
    Left = 496
    Datasets = <
      item
        DataSet = frxDBDatasetDpp
        DataSetName = 'frxDBDatasetDpp'
      end
      item
        DataSet = frxDBDatasetDPPBlmDitagih
        DataSetName = 'frxDBDatasetDPPBlmDitagih'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDatasetDPPBlmDitagih
        DataSetName = 'frxDBDatasetDPPBlmDitagih'
        RowCount = 0
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Width = 26.710472220000000000
          Height = 22.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 26.479440070000000000
          Width = 153.716535430000000000
          Height = 22.299212600000000000
          DataField = 'customer_name'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."customer_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 179.062117240000000000
          Width = 61.984251970000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            ' [frxDBDatasetDPPBlmDitagih."date_trans"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Left = 241.401574800000000000
          Width = 56.692913390000000000
          Height = 22.299212600000000000
          DataField = 'date_tempo'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."date_tempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 299.111111110000000000
          Width = 101.669291338583000000
          Height = 22.299212600000000000
          DataField = 'paid_amount'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."paid_amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 401.333333330000000000
          Top = 0.007730000000000000
          Width = 64.251968500000000000
          Height = 22.299212600000000000
          DataField = 'cash'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."cash"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Width = 108.094488190000000000
          Height = 22.299212600000000000
          DataField = 'receipt'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."receipt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 574.666666670000000000
          Width = 62.362204720000000000
          Height = 22.299212600000000000
          DataField = 'bank_receipt'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."bank_receipt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 637.375000000000000000
          Width = 60.341535430000000000
          Height = 22.299212600000000000
          DataField = 'date_receipt'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."date_receipt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 698.000000000000000000
          Top = 0.007730000000000000
          Width = 58.293963250000000000
          Height = 22.299212600000000000
          DataField = 'name_bank_cheque'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."name_bank_cheque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 755.333333330000000000
          Width = 71.433070870000000000
          Height = 22.299212600000000000
          DataField = 'no_cheque'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."no_cheque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 826.750000000000000000
          Width = 62.478346460000000000
          Height = 22.299212600000000000
          DataField = 'date_tempo_cheque'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."date_tempo_cheque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 889.333333330000000000
          Top = 0.028563330000000000
          Width = 72.944881890000000000
          Height = 22.299212600000000000
          DataField = 'cheque_amount1'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."cheque_amount1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 962.562500000000000000
          Top = 0.341063330000000000
          Width = 83.915190290000000000
          Height = 22.299212600000000000
          DataField = 'total_receivables'
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDPPBlmDitagih."total_receivables"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader4: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 143.376190770000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 851.333333330000000000
          Top = 2.102350010000000000
          Width = 194.821583330000000000
          Height = 27.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[parTglDppCetak]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 851.149606300000000000
          Top = 29.435683330000000000
          Width = 195.401574803150000000
          Height = 30.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[parNmKolektor]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 778.000000000000000000
          Top = 31.102350000000000000
          Width = 78.934446670000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Penagih :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 778.000000000000000000
          Top = 0.435683340000000000
          Width = 74.821583330000000000
          Height = 29.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Tanggal :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Top = 60.435683330000000000
          Width = 27.356598100000000000
          Height = 82.918635170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 25.777777780000000000
          Top = 60.435683330000000000
          Width = 154.582677170000000000
          Height = 82.918635170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 180.809479690000000000
          Top = 60.102350000000000000
          Width = 220.346456690000000000
          Height = 20.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 180.000000000000000000
          Top = 80.102350010000000000
          Width = 60.850393700787400000
          Height = 63.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TGL NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 241.444444440000000000
          Top = 79.880127780000000000
          Width = 56.912153650000000000
          Height = 63.496062990000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TGL JT TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 298.666666670000000000
          Top = 79.748031500000000000
          Width = 102.425196850394000000
          Height = 63.496062990000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = -0.888888890000000000
          Top = 0.546794440000000000
          Width = 773.821583320000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DAFTAR PENAGIHAN PIUTANG')
          ParentFont = False
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 0.222222220000000000
          Top = 27.880127770000000000
          Width = 777.599361110000000000
          Height = 32.230983330000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[parSBU]')
          ParentFont = False
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 400.888888890000000000
          Top = 60.102350000000000000
          Width = 561.854822830000000000
          Height = 20.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 962.384359910000000000
          Top = 60.213461110000000000
          Width = 84.064133450000000000
          Height = 83.149606300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SISA PIUTANG (RP.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 401.111111110000000000
          Top = 80.102350000000000000
          Width = 64.251968500000000000
          Height = 63.118110236220500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TUNAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 465.555555560000000000
          Top = 80.102350000000000000
          Width = 232.245486980000000000
          Height = 31.363079610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Left = 698.111111110000000000
          Top = 80.125984250000000000
          Width = 264.115540240000000000
          Height = 31.363079610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BILYET GIRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 465.555555560000000000
          Top = 111.102350000000000000
          Width = 108.159940940000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 574.444444440000000000
          Top = 111.102350000000000000
          Width = 62.547681540000000000
          Height = 32.125984251968500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 636.777777780000000000
          Top = 111.213461110000000000
          Width = 60.992125980000000000
          Height = 32.125984251968500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 698.222222220000000000
          Top = 111.102350000000000000
          Width = 58.204724410000000000
          Height = 32.125984251968500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 756.555555550000000000
          Top = 111.102350000000000000
          Width = 70.325459310000000000
          Height = 32.125984251968500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 827.444444440000000000
          Top = 111.213461110000000000
          Width = 61.606299210000000000
          Height = 32.125984251968500000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL'
            'J. TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 889.333333330000000000
          Top = 111.102350000000000000
          Width = 73.207403760000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer4: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 108.495361820000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = -0.377952760000000000
          Width = 26.710472220000000000
          Height = 22.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo205: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456692910000000000
          Width = 153.716535430000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 179.149606300000000000
          Width = 61.606299210000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 241.511811020000000000
          Width = 56.692913390000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[COUNT(MasterData4)] Lembar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo208: TfrxMemoView
          AllowVectorExport = True
          Left = 298.611309950000000000
          Width = 102.425196850000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDPPBlmDitagih."paid_amount">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo209: TfrxMemoView
          AllowVectorExport = True
          Left = 400.768890730000000000
          Width = 64.251968503937000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDPPBlmDitagih."cash">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo210: TfrxMemoView
          AllowVectorExport = True
          Left = 464.488188980000000000
          Width = 109.606299210000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDPPBlmDitagih."receipt">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo211: TfrxMemoView
          AllowVectorExport = True
          Left = 574.154855650000000000
          Width = 62.740157480000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo212: TfrxMemoView
          AllowVectorExport = True
          Left = 637.488188980000000000
          Width = 60.850393700787400000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo213: TfrxMemoView
          AllowVectorExport = True
          Left = 697.488188980000000000
          Width = 58.293963250000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo214: TfrxMemoView
          AllowVectorExport = True
          Left = 754.821522310000000000
          Width = 72.566929133858300000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo215: TfrxMemoView
          AllowVectorExport = True
          Left = 827.124552620000000000
          Width = 62.347888330000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo216: TfrxMemoView
          AllowVectorExport = True
          Left = 889.821522310000000000
          Width = 72.720114530000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDPPBlmDitagih."cheque_amount1">,MasterData4)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo217: TfrxMemoView
          AllowVectorExport = True
          Left = 963.124552620000000000
          Width = 83.023144830000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDPPBlmDitagih
          DataSetName = 'frxDBDatasetDPPBlmDitagih'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDatasetDPPBlmDitagih."total_receivables">,MasterData4' +
              ')]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo218: TfrxMemoView
          AllowVectorExport = True
          Left = 60.363636370000000000
          Top = 32.744279090000000000
          Width = 149.397340910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KASIR')
          ParentFont = False
        end
        object Memo219: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 84.835188180000000000
          Width = 149.760977270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                           )')
          ParentFont = False
        end
        object Memo220: TfrxMemoView
          AllowVectorExport = True
          Left = 423.363636370000000000
          Top = 31.653370000000000000
          Width = 149.397340910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PIUTANG')
          ParentFont = False
        end
        object Memo221: TfrxMemoView
          AllowVectorExport = True
          Left = 423.000000000000000000
          Top = 83.744279090000000000
          Width = 149.760977270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                           )')
          ParentFont = False
        end
        object Memo222: TfrxMemoView
          AllowVectorExport = True
          Left = 801.363636370000000000
          Top = 29.653370000000000000
          Width = 149.397340910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PENAGIH')
          ParentFont = False
        end
        object Memo223: TfrxMemoView
          AllowVectorExport = True
          Left = 801.000000000000000000
          Top = 81.744279090000000000
          Width = 149.760977270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                           )')
          ParentFont = False
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      OnBeforePrint = 'Page2OnBeforePrint'
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 222.992270000000000000
        Width = 1046.929810000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDatasetDpp
        DataSetName = 'frxDBDatasetDpp'
        RowCount = 0
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = -0.488188980000000000
          Width = 26.710472220000000000
          Height = 22.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE]')
          ParentFont = False
        end
        object Memo224: TfrxMemoView
          AllowVectorExport = True
          Left = 26.479440070000000000
          Width = 153.716535430000000000
          Height = 22.299212600000000000
          DataField = 'total_receivables'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."total_receivables"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo225: TfrxMemoView
          AllowVectorExport = True
          Left = 179.062117240000000000
          Width = 61.984251970000000000
          Height = 22.299212600000000000
          DataField = 'date_trans'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."date_trans"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo226: TfrxMemoView
          AllowVectorExport = True
          Left = 241.401574800000000000
          Width = 56.692913385826800000
          Height = 22.299212600000000000
          DataField = 'date_tempo'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."date_tempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo227: TfrxMemoView
          AllowVectorExport = True
          Left = 299.111111110000000000
          Width = 102.047244090000000000
          Height = 22.299212600000000000
          DataField = 'paid_amount'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDpp."paid_amount"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo228: TfrxMemoView
          AllowVectorExport = True
          Left = 401.333333330000000000
          Top = 0.007730000000000000
          Width = 64.251968500000000000
          Height = 22.299212600000000000
          DataField = 'cash'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDpp."cash"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo229: TfrxMemoView
          AllowVectorExport = True
          Left = 466.000000000000000000
          Width = 108.094488190000000000
          Height = 22.299212600000000000
          DataField = 'receipt'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDpp."receipt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo230: TfrxMemoView
          AllowVectorExport = True
          Left = 574.666666670000000000
          Width = 62.362204724409400000
          Height = 22.299212600000000000
          DataField = 'bank_receipt'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."bank_receipt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo231: TfrxMemoView
          AllowVectorExport = True
          Left = 637.375000000000000000
          Width = 60.341535430000000000
          Height = 22.299212600000000000
          DataField = 'date_receipt'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."date_receipt"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo232: TfrxMemoView
          AllowVectorExport = True
          Left = 698.000000000000000000
          Top = 0.007730000000000000
          Width = 58.293963250000000000
          Height = 22.299212600000000000
          DataField = 'name_bank_cheque'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."name_bank_cheque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo233: TfrxMemoView
          AllowVectorExport = True
          Left = 755.333333330000000000
          Width = 71.433070870000000000
          Height = 22.299212600000000000
          DataField = 'no_cheque'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."no_cheque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo234: TfrxMemoView
          AllowVectorExport = True
          Left = 826.750000000000000000
          Width = 62.478346460000000000
          Height = 22.299212600000000000
          DataField = 'date_tempo_cheque'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[frxDBDatasetDpp."date_tempo_cheque"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo235: TfrxMemoView
          AllowVectorExport = True
          Left = 889.333333330000000000
          Top = 0.028563330000000000
          Width = 72.944881890000000000
          Height = 22.299212600000000000
          DataField = 'cheque_amount1'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDpp."cheque_amount1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo236: TfrxMemoView
          AllowVectorExport = True
          Left = 962.562500000000000000
          Top = 0.341063330000000000
          Width = 83.915190290000000000
          Height = 22.299212600000000000
          DataField = 'total_receivables'
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetDpp."total_receivables"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 142.940507430000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 852.222222220000000000
          Top = 1.889763779527560000
          Width = 194.821583330000000000
          Height = 27.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[parTglDppCetak]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 852.038495190000000000
          Top = 28.724409448818900000
          Width = 195.401574800000000000
          Height = 30.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[parNmKolektor]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 778.888888890000000000
          Top = 30.666666660000000000
          Width = 78.934446670000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Penagih :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 778.888888890000000000
          Width = 74.821583330000000000
          Height = 29.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            'Tanggal :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 0.888888890000000000
          Top = 59.999999990000000000
          Width = 27.356598100000000000
          Height = 82.918635170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 26.666666670000000000
          Top = 59.999999990000000000
          Width = 154.582677170000000000
          Height = 82.918635170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 181.698368580000000000
          Top = 59.666666660000000000
          Width = 220.346456690000000000
          Height = 20.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 180.888888890000000000
          Top = 79.666666670000000000
          Width = 60.850393700000000000
          Height = 63.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TGL NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 242.333333330000000000
          Top = 79.444444440000000000
          Width = 56.912153650000000000
          Height = 63.496062990000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TGL JT TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 299.555555560000000000
          Top = 79.312348160000000000
          Width = 102.425196850000000000
          Height = 63.496062990000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Top = 0.111111100000000000
          Width = 773.821583320000000000
          Height = 28.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DAFTAR PENAGIHAN PIUTANG')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 27.444444430000000000
          Width = 777.599361110000000000
          Height = 32.230983330000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[parSBU]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 401.777777780000000000
          Top = 59.666666660000000000
          Width = 561.854822830000000000
          Height = 20.251968500000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TAGIHAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 963.273248800000000000
          Top = 59.777777770000000000
          Width = 84.064133450000000000
          Height = 83.149606300000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SISA PIUTANG (RP.)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 402.000000000000000000
          Top = 79.666666660000000000
          Width = 64.251968500000000000
          Height = 63.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TUNAI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 466.444444450000000000
          Top = 79.666666660000000000
          Width = 232.245486980000000000
          Height = 31.363079610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RESI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 699.000000000000000000
          Top = 79.690300910000000000
          Width = 264.115540240000000000
          Height = 31.363079610000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BILYET GIRO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 466.444444450000000000
          Top = 110.666666660000000000
          Width = 108.159940940000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 575.333333330000000000
          Top = 110.666666660000000000
          Width = 62.547681540000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 637.666666670000000000
          Top = 110.777777770000000000
          Width = 60.992125980000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 699.111111110000000000
          Top = 110.666666660000000000
          Width = 58.204724410000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 757.444444440000000000
          Top = 110.666666660000000000
          Width = 70.325459310000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOMOR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 828.333333330000000000
          Top = 110.777777770000000000
          Width = 61.606299210000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL'
            'J. TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 890.222222220000000000
          Top = 110.666666660000000000
          Width = 73.207403760000000000
          Height = 32.125984250000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'RP.')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 108.495361820000000000
        Top = 268.346630000000000000
        Width = 1046.929810000000000000
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = -0.377952760000000000
          Width = 26.710472220000000000
          Height = 22.230983330000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo261: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456692910000000000
          Width = 153.716535430000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo262: TfrxMemoView
          AllowVectorExport = True
          Left = 179.149606300000000000
          Width = 61.606299210000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo263: TfrxMemoView
          AllowVectorExport = True
          Left = 241.511811020000000000
          Width = 56.692913390000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[COUNT(MasterData1)] Lembar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo264: TfrxMemoView
          AllowVectorExport = True
          Left = 298.611309950000000000
          Width = 102.425196850000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDpp."paid_amount">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo265: TfrxMemoView
          AllowVectorExport = True
          Left = 401.821522310000000000
          Width = 63.874015750000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDpp."cash">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo266: TfrxMemoView
          AllowVectorExport = True
          Left = 464.488188980000000000
          Width = 109.606299210000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDpp."receipt">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo267: TfrxMemoView
          AllowVectorExport = True
          Left = 574.154855650000000000
          Width = 62.740157480000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo268: TfrxMemoView
          AllowVectorExport = True
          Left = 637.488188980000000000
          Width = 60.850393700787400000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo269: TfrxMemoView
          AllowVectorExport = True
          Left = 697.488188980000000000
          Width = 58.293963250000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo270: TfrxMemoView
          AllowVectorExport = True
          Left = 754.821522310000000000
          Width = 72.566929133858300000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo271: TfrxMemoView
          AllowVectorExport = True
          Left = 827.124552620000000000
          Width = 62.347888330000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo272: TfrxMemoView
          AllowVectorExport = True
          Left = 889.821522310000000000
          Width = 72.720114530000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDpp."cheque_amount1">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo273: TfrxMemoView
          AllowVectorExport = True
          Left = 963.124552620000000000
          Width = 83.023144830000000000
          Height = 22.299212600000000000
          DataSet = frxDBDatasetDpp
          DataSetName = 'frxDBDatasetDpp'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetDpp."total_receivables">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo274: TfrxMemoView
          AllowVectorExport = True
          Left = 60.363636370000000000
          Top = 32.744279090000000000
          Width = 149.397340910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KASIR')
          ParentFont = False
        end
        object Memo275: TfrxMemoView
          AllowVectorExport = True
          Left = 60.000000000000000000
          Top = 84.835188180000000000
          Width = 149.760977270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                           )')
          ParentFont = False
        end
        object Memo276: TfrxMemoView
          AllowVectorExport = True
          Left = 423.363636370000000000
          Top = 31.653370000000000000
          Width = 149.397340910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PIUTANG')
          ParentFont = False
        end
        object Memo277: TfrxMemoView
          AllowVectorExport = True
          Left = 423.000000000000000000
          Top = 83.744279090000000000
          Width = 149.760977270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                           )')
          ParentFont = False
        end
        object Memo278: TfrxMemoView
          AllowVectorExport = True
          Left = 801.363636370000000000
          Top = 29.653370000000000000
          Width = 149.397340910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PENAGIH')
          ParentFont = False
        end
        object Memo279: TfrxMemoView
          AllowVectorExport = True
          Left = 801.000000000000000000
          Top = 81.744279090000000000
          Width = 149.760977270000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                           )')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetDpp: TfrxDBDataset
    UserName = 'frxDBDatasetDpp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'customer_code=customer_code'
      'customer_name=customer_name'
      'total_receivables=total_receivables'
      'no_invoice=no_invoice'
      'date_dpp=date_dpp'
      'date_trans=date_trans'
      'date_tempo=date_tempo'
      'paid_amount=paid_amount'
      'cash=cash'
      'receipt=receipt'
      'bank_receipt=bank_receipt'
      'date_receipt=date_receipt'
      'name_bank_cheque=name_bank_cheque'
      'no_cheque=no_cheque'
      'cheque_amount1=cheque_amount1'
      'cheque_amount2=cheque_amount2'
      'date_tempo_cheque=date_tempo_cheque')
    DataSet = QdppSudahTagih
    BCDToCurrency = False
    DataSetOptions = []
    Left = 544
  end
  object QdppSudahTagih: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT b.customer_code,b.customer_name,case when c.total_receiva' +
        'bles is NULL then 0 else c.total_receivables end total_receivabl' +
        'es,a.no_invoice,a.date_dpp,a. date_trans,a.date_tempo,a.paid_amo' +
        'unt,a.cash,a.receipt,a.bank_receipt,a.date_receipt,a.name_bank_c' +
        'heque,a.no_cheque,a.cheque_amount1,a.cheque_amount2,a.date_tempo' +
        '_cheque from "public"."t_dpp" a  LEFT JOIN t_customer b ON a."co' +
        'de_cust"=b.customer_code  '
      
        'LEFT JOIN (SELECT no_trans,code_cust,total_receivables  FROM "pu' +
        'blic"."vget_piutang" a  WHERE a.code_cust='#39'PL00231'#39' ) c on c.cod' +
        'e_cust=a.code_cust and c.no_trans=a.no_invoice'
      
        'WHERE "code_collector"='#39'COL.0001'#39' AND  "date_dpp"='#39'2024-09-18'#39' a' +
        'nd (a.receipt>0 or a.cheque_amount1>0)  Order By "date_dpp", "no' +
        '_invoice" desc')
    Left = 592
    Top = 88
  end
  object frxDBDatasetDPPBlmDitagih: TfrxDBDataset
    UserName = 'frxDBDatasetDPPBlmDitagih'
    CloseDataSource = False
    FieldAliases.Strings = (
      'customer_code=customer_code'
      'customer_name=customer_name'
      'total_receivables=total_receivables'
      'no_invoice=no_invoice'
      'date_dpp=date_dpp'
      'date_trans=date_trans'
      'date_tempo=date_tempo'
      'paid_amount=paid_amount'
      'cash=cash'
      'receipt=receipt'
      'bank_receipt=bank_receipt'
      'date_receipt=date_receipt'
      'name_bank_cheque=name_bank_cheque'
      'no_cheque=no_cheque'
      'cheque_amount1=cheque_amount1'
      'cheque_amount2=cheque_amount2'
      'date_tempo_cheque=date_tempo_cheque')
    DataSet = Qdppbelumditagih
    BCDToCurrency = False
    DataSetOptions = []
    Left = 632
    Top = 8
  end
  object Qdppbelumditagih: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT b.customer_code,b.customer_name,case when c.total_receiva' +
        'bles is NULL then 0 else c.total_receivables end total_receivabl' +
        'es,a.no_invoice,a.date_dpp,a. date_trans,a.date_tempo,a.paid_amo' +
        'unt,a.cash,a.receipt,a.bank_receipt,a.date_receipt,a.name_bank_c' +
        'heque,a.no_cheque,a.cheque_amount1,a.cheque_amount2,a.date_tempo' +
        '_cheque from "public"."t_dpp" a  LEFT JOIN t_customer b ON a."co' +
        'de_cust"=b.customer_code  '
      
        'LEFT JOIN (SELECT no_trans,code_cust,total_receivables  FROM "pu' +
        'blic"."vget_piutang" a  WHERE a.code_cust='#39'PL00231'#39' ) c on c.cod' +
        'e_cust=a.code_cust and c.no_trans=a.no_invoice'
      
        'WHERE "code_collector"='#39'COL.0001'#39' AND  "date_dpp"='#39'2024-09-18'#39' a' +
        'nd (a.receipt=0 and a.cheque_amount1=0)  Order By "date_dpp", "n' +
        'o_invoice" desc')
    Left = 680
    Top = 112
  end
end
