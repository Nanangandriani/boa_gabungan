object FDataPengajuanPengeluaranKasBank: TFDataPengajuanPengeluaranKasBank
  Left = 0
  Top = 0
  Caption = 'Data Pengajuan Pengeluaran Kas dan Bank'
  ClientHeight = 655
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object Label25: TLabel
    Left = 20
    Top = 48
    Width = 110
    Height = 15
    Caption = 'Sumber Pengeluaran'
  end
  object Label26: TLabel
    Left = 135
    Top = 48
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label41: TLabel
    Left = 595
    Top = 217
    Width = 64
    Height = 15
    Caption = 'Group Biaya'
  end
  object Label42: TLabel
    Left = 708
    Top = 217
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label43: TLabel
    Left = 603
    Top = 225
    Width = 64
    Height = 15
    Caption = 'Group Biaya'
  end
  object Label44: TLabel
    Left = 716
    Top = 225
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 267
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 1
    ExplicitTop = -6
    object LabelPelanggan: TLabel
      Left = 20
      Top = 80
      Width = 69
      Height = 15
      Caption = 'No. Transaksi'
    end
    object Label3: TLabel
      Left = 135
      Top = 80
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 587
      Top = -1
      Width = 75
      Height = 15
      Caption = 'Jenis Transaksi'
      Visible = False
    end
    object Label38: TLabel
      Left = 700
      Top = -1
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label12: TLabel
      Left = 20
      Top = 106
      Width = 91
      Height = 15
      Caption = 'Tanggal Transaksi'
    end
    object Label13: TLabel
      Left = 135
      Top = 106
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label4: TLabel
      Left = 700
      Top = 131
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 587
      Top = 131
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label8: TLabel
      Left = 20
      Top = 133
      Width = 40
      Height = 15
      Caption = 'Periode'
    end
    object Label9: TLabel
      Left = 135
      Top = 133
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label10: TLabel
      Left = 294
      Top = 133
      Width = 17
      Height = 15
      Caption = 's/d'
    end
    object Label11: TLabel
      Left = 20
      Top = 160
      Width = 58
      Height = 15
      Caption = 'Mata Uang'
    end
    object Label14: TLabel
      Left = 135
      Top = 160
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label15: TLabel
      Left = 347
      Top = 160
      Width = 23
      Height = 15
      Caption = 'Kurs'
    end
    object Label16: TLabel
      Left = 383
      Top = 160
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label17: TLabel
      Left = 587
      Top = 51
      Width = 101
      Height = 15
      Caption = 'Untuk Pengeluaran'
    end
    object Label18: TLabel
      Left = 700
      Top = 51
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label19: TLabel
      Left = 135
      Top = 186
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label20: TLabel
      Left = 20
      Top = 186
      Width = 38
      Height = 15
      Caption = 'Jumlah'
    end
    object Label23: TLabel
      Left = 20
      Top = 23
      Width = 110
      Height = 15
      Caption = 'Sumber Pengeluaran'
    end
    object Label24: TLabel
      Left = 135
      Top = 23
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label27: TLabel
      Left = 19
      Top = 51
      Width = 75
      Height = 15
      Caption = 'Jenis Transaksi'
    end
    object Label28: TLabel
      Left = 135
      Top = 51
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label55: TLabel
      Left = 700
      Top = 23
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label54: TLabel
      Left = 587
      Top = 23
      Width = 82
      Height = 15
      Caption = 'Dibayar Kepada'
    end
    object Label30: TLabel
      Left = 135
      Top = 212
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label29: TLabel
      Left = 20
      Top = 212
      Width = 61
      Height = 15
      Caption = 'Rencana Ke'
    end
    object Label37: TLabel
      Left = 587
      Top = 209
      Width = 64
      Height = 15
      Caption = 'Group Biaya'
    end
    object Label40: TLabel
      Left = 700
      Top = 209
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label45: TLabel
      Left = 1031
      Top = 212
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label46: TLabel
      Left = 971
      Top = 212
      Width = 48
      Height = 15
      Caption = 'Daftar TP'
    end
    object Label_sumber: TLabel
      Left = 20
      Top = 241
      Width = 68
      Height = 15
      Caption = 'Sumber Data'
      Visible = False
    end
    object Label1_sumber: TLabel
      Left = 135
      Top = 243
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object edNoTrans: TEdit
      Left = 147
      Top = 77
      Width = 344
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edNamaJenisTrans: TRzButtonEdit
      Left = 709
      Top = -4
      Width = 356
      Height = 23
      Text = ''
      TabOrder = 1
      Visible = False
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaJenisTransButtonClick
    end
    object edKodeJenisTrans: TEdit
      Left = 1070
      Top = -4
      Width = 33
      Height = 23
      TabOrder = 2
      Visible = False
    end
    object dtTrans: TRzDateTimePicker
      Left = 147
      Top = 103
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 3
      OnChange = dtTransChange
    end
    object MemKeterangan: TMemo
      Left = 709
      Top = 130
      Width = 356
      Height = 76
      TabOrder = 4
    end
    object dtPeriode1: TRzDateTimePicker
      Left = 147
      Top = 130
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 5
    end
    object dtPeriode2: TRzDateTimePicker
      Left = 317
      Top = 130
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 6
    end
    object edNamaMataUang: TRzButtonEdit
      Left = 147
      Top = 157
      Width = 186
      Height = 23
      Text = ''
      TabOrder = 7
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaMataUangButtonClick
    end
    object edKodeMataUang: TEdit
      Left = 398
      Top = 183
      Width = 93
      Height = 23
      TabOrder = 8
      Text = 'IDR'
      Visible = False
      OnChange = edKodeMataUangChange
    end
    object edKurs: TRzNumericEdit
      Left = 398
      Top = 157
      Width = 93
      Height = 23
      TabOrder = 9
      DisplayFormat = '0.00#,##'
    end
    object edJumlah: TRzNumericEdit
      Left = 147
      Top = 183
      Width = 186
      Height = 23
      TabOrder = 10
      OnExit = edJumlahExit
      OnKeyPress = edJumlahKeyPress
      DisplayFormat = '0.00#,##'
    end
    object edUntukPengeluaran: TMemo
      Left = 709
      Top = 50
      Width = 356
      Height = 76
      TabOrder = 11
    end
    object cbsumberdata: TComboBox
      Left = 147
      Top = 23
      Width = 186
      Height = 23
      TabOrder = 12
      OnSelect = cbsumberdataSelect
    end
    object code_trans: TEdit
      Left = 339
      Top = 50
      Width = 47
      Height = 23
      TabOrder = 13
      Visible = False
      OnChange = code_transChange
    end
    object Ed_kepada: TEdit
      Left = 709
      Top = 23
      Width = 356
      Height = 23
      TabOrder = 14
    end
    object EdNo: TEdit
      Left = 497
      Top = 77
      Width = 96
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 15
      Visible = False
    end
    object Ed_Additional: TEdit
      Left = 339
      Top = 23
      Width = 119
      Height = 23
      TabOrder = 16
      Visible = False
    end
    object Edth: TEdit
      Left = 433
      Top = 103
      Width = 58
      Height = 23
      TabOrder = 17
      Visible = False
    end
    object Edbln: TEdit
      Left = 375
      Top = 103
      Width = 52
      Height = 23
      TabOrder = 18
      Visible = False
    end
    object Edhari: TEdit
      Left = 317
      Top = 103
      Width = 53
      Height = 23
      TabOrder = 19
      Visible = False
    end
    object Ed_id_modul: TEdit
      Left = 408
      Top = 50
      Width = 50
      Height = 23
      TabOrder = 20
      Visible = False
    end
    object CbRencana: TComboBox
      Left = 147
      Top = 210
      Width = 54
      Height = 23
      TabOrder = 21
    end
    object Btn_data1: TRzBitBtn
      Left = 341
      Top = 236
      Width = 150
      Caption = 'Ambil Data Rencana'
      TabOrder = 22
      Visible = False
      OnClick = Btn_data1Click
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000A30E0000A30E00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E80909
        E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8090909
        09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E80909
        E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A37878787878
        78E8E85E5E5E5E5E5E5E81818181818181E8E881818181818181A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5A3A3A3
        A3E8E85ED7D75E5E5E5E81ACAC81818181E8E881E8E881818181A3D5D5A3D678
        E8E8E85ED7D75EE35EE881ACAC81AC81E8E8E881E8E881E381E8A3D5D5A378E8
        E8E8E85ED7D75E5EE8E881ACAC8181E8E8E8E881E8E88181E8E8A3A3A3A3E8E8
        E8E8E85E5E5E5EE8E8E881818181E8E8E8E8E881818181E8E8E8}
      NumGlyphs = 2
    end
    object CbGroup_Biaya: TRzComboBox
      Left = 709
      Top = 209
      Width = 188
      Height = 23
      TabOrder = 23
      OnChange = CbGroup_BiayaChange
    end
    object Btn_daf_tp: TRzBitBtn
      Left = 1040
      Top = 209
      Width = 25
      Height = 23
      Caption = '...'
      TabOrder = 24
      OnClick = Btn_daf_tpClick
    end
    object Cb_debt_source: TComboBox
      Left = 147
      Top = 239
      Width = 186
      Height = 23
      TabOrder = 25
      Visible = False
      OnSelect = Cb_debt_sourceSelect
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 623
    Width = 1108
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 614
    ExplicitWidth = 1102
    object BBatal: TRzBitBtn
      Left = 1032
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
      ExplicitLeft = 1026
    end
    object BSave: TRzBitBtn
      Left = 957
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 0
      OnClick = BSaveClick
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
      ExplicitLeft = 951
    end
    object Edautocode: TEdit
      Left = 712
      Top = 4
      Width = 185
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 2
      TextHint = 'Autonumber'
      Visible = False
    end
    object BitBtn1: TBitBtn
      Left = 553
      Top = 2
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn1Click
    end
    object BEdit: TRzBitBtn
      Left = 882
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 4
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
      ExplicitLeft = 876
      ExplicitTop = 3
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 267
    Width = 1108
    Height = 160
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 2
    ExplicitWidth = 1102
    object gbDataHutang: TGroupBox
      Left = 0
      Top = 0
      Width = 553
      Height = 160
      Align = alLeft
      Caption = ' Data Hutang'
      Color = clGradientInactiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      object Label21: TLabel
        Left = 20
        Top = 30
        Width = 43
        Height = 15
        Caption = 'Supplier'
      end
      object Label22: TLabel
        Left = 135
        Top = 30
        Width = 3
        Height = 15
        Caption = ':'
      end
      object lbJenisBayar: TLabel
        Left = 20
        Top = 120
        Width = 94
        Height = 15
        Caption = 'Jenis Pembayaran'
        Visible = False
      end
      object lbJenisBayarr: TLabel
        Left = 135
        Top = 122
        Width = 3
        Height = 15
        Caption = ':'
        Visible = False
      end
      object lbSumberTagihann: TLabel
        Left = 135
        Top = 84
        Width = 3
        Height = 15
        Caption = ':'
        Visible = False
      end
      object lbSumberTagihan: TLabel
        Left = 20
        Top = 84
        Width = 68
        Height = 15
        Caption = 'Sumber Data'
        Visible = False
      end
      object edKode_supplier: TRzButtonEdit
        Left = 147
        Top = 27
        Width = 141
        Height = 23
        Text = ''
        Enabled = False
        TabOrder = 0
        OnChange = edKode_supplierChange
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edKode_supplierButtonClick
      end
      object edNama_Supplier: TEdit
        Left = 147
        Top = 54
        Width = 344
        Height = 23
        Enabled = False
        TabOrder = 1
      end
      object edNMSumberHutang: TRzButtonEdit
        Left = 347
        Top = 86
        Width = 141
        Height = 23
        Text = ''
        TabOrder = 2
        Visible = False
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNMSumberHutangButtonClick
      end
      object edKodeJenisBayar: TEdit
        Left = 294
        Top = 115
        Width = 20
        Height = 23
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 3
        Visible = False
      end
      object edKodeSumberPengeluaran: TEdit
        Left = 494
        Top = 86
        Width = 20
        Height = 23
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 4
        Visible = False
        OnChange = edKodeSumberPengeluaranChange
      end
      object edNMJenisBayar: TRzButtonEdit
        Left = 147
        Top = 114
        Width = 141
        Height = 23
        Text = ''
        TabOrder = 5
        Visible = False
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNMJenisBayarButtonClick
      end
      object Cb_debt_source_x: TComboBox
        Left = 347
        Top = 115
        Width = 141
        Height = 23
        TabOrder = 6
        Visible = False
        OnSelect = Cb_debt_source_xSelect
      end
      object ak_account: TEdit
        Left = 294
        Top = 27
        Width = 133
        Height = 23
        Enabled = False
        TabOrder = 7
        Visible = False
        OnChange = ak_accountChange
      end
      object Btn_Data: TRzBitBtn
        Left = 147
        Top = 83
        Width = 150
        Caption = 'Ambil Data Rencana'
        TabOrder = 8
        OnClick = Btn_DataClick
        Glyph.Data = {
          36060000424D3606000000000000360400002800000020000000100000000100
          08000000000000020000A30E0000A30E00000001000000000000000000003300
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
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E80909
          E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8090909
          09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E80909
          E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A37878787878
          78E8E85E5E5E5E5E5E5E81818181818181E8E881818181818181A3D5D5D5D5D5
          78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
          78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
          78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
          78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5A3A3A3
          A3E8E85ED7D75E5E5E5E81ACAC81818181E8E881E8E881818181A3D5D5A3D678
          E8E8E85ED7D75EE35EE881ACAC81AC81E8E8E881E8E881E381E8A3D5D5A378E8
          E8E8E85ED7D75E5EE8E881ACAC8181E8E8E8E881E8E88181E8E8A3A3A3A3E8E8
          E8E8E85E5E5E5EE8E8E881818181E8E8E8E8E881818181E8E8E8}
        NumGlyphs = 2
      end
    end
    object gbDataBank: TGroupBox
      Left = 553
      Top = 0
      Width = 553
      Height = 160
      Align = alLeft
      Caption = ' Data Bank'
      Color = clGradientInactiveCaption
      ParentBackground = False
      ParentColor = False
      TabOrder = 1
      Visible = False
      object Label1: TLabel
        Left = 134
        Top = 56
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label2: TLabel
        Left = 21
        Top = 54
        Width = 71
        Height = 15
        Caption = 'No. Rekening'
      end
      object Label6: TLabel
        Left = 21
        Top = 27
        Width = 61
        Height = 15
        Caption = 'Nama Bank'
      end
      object Label7: TLabel
        Left = 134
        Top = 30
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label35: TLabel
        Left = 21
        Top = 84
        Width = 65
        Height = 15
        Caption = 'No. Cek /BG'
      end
      object Label31: TLabel
        Left = 134
        Top = 84
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label32: TLabel
        Left = 319
        Top = 30
        Width = 61
        Height = 15
        Caption = 'Tgl. Cek/BG'
      end
      object Label33: TLabel
        Left = 432
        Top = 28
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label34: TLabel
        Left = 432
        Top = 57
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label36: TLabel
        Left = 319
        Top = 56
        Width = 95
        Height = 15
        Caption = 'Tgl. JthTempo Cek'
      end
      object btncek: TSpeedButton
        Left = 293
        Top = 82
        Width = 26
        Height = 22
        Caption = '...'
        OnClick = btncekClick
      end
      object edNamaBank: TRzButtonEdit
        Left = 142
        Top = 27
        Width = 150
        Height = 23
        Text = ''
        TabOrder = 0
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNamaBankButtonClick
      end
      object edNoRek: TEdit
        Left = 142
        Top = 54
        Width = 150
        Height = 23
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 1
        OnChange = edNoRekChange
      end
      object Ed_nocek: TRzEdit
        Left = 142
        Top = 82
        Width = 150
        Height = 23
        Text = ''
        TabOrder = 2
      end
      object tgl_cek: TDateTimePicker
        Left = 441
        Top = 27
        Width = 109
        Height = 23
        Date = 45678.000000000000000000
        Time = 0.547003877312818100
        TabOrder = 3
      end
      object tgl_tempo_cek: TDateTimePicker
        Left = 441
        Top = 54
        Width = 109
        Height = 23
        Date = 45678.000000000000000000
        Time = 0.547003877312818100
        TabOrder = 4
      end
      object Ed_kd_bank: TEdit
        Left = 297
        Top = 27
        Width = 16
        Height = 23
        TabOrder = 5
        Visible = False
        OnChange = Ed_kd_bankChange
      end
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 427
    Width = 1108
    Height = 196
    Hint = ''
    ActivePage = TabDetailAkun
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 3
    ExplicitWidth = 1102
    ExplicitHeight = 187
    FixedDimension = 21
    object TabDetailAkun: TRzTabSheet
      Caption = 'Detail Akun'
      object DBGridAkun: TDBGridEh
        Left = 0
        Top = 0
        Width = 1104
        Height = 171
        Align = alClient
        DataSource = DSDetailAkun
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridAkunColumns5CellButtons0Click
              end>
            DynProps = <>
            EditButton.Style = ebsEllipsisEh
            EditButtons = <>
            FieldName = 'kd_header_akun'
            Footers = <>
            Title.Caption = 'Kode Akun'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                Visible = False
                OnClick = DBGridAkunColumns0EditButtons0Click
              end>
            FieldName = 'kd_akun'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode Akun Detail'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_akun'
            Footers = <>
            Title.Caption = 'Nama Akun'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'debit'
            Footers = <>
            Title.Caption = 'Jumlah | Debit'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kredit'
            Footers = <>
            Title.Caption = 'Jumlah | Kredit'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jumlah_hasil_kurs'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabDetailFaktur: TRzTabSheet
      Caption = 'Detail Hutang'
      ExplicitWidth = 1098
      ExplicitHeight = 162
      object DBGridTagihan: TDBGridEh
        Left = 0
        Top = 0
        Width = 1104
        Height = 171
        Align = alClient
        DataSource = dsDetailHutang
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridTagihanColumns0EditButtons0Click
              end>
            FieldName = 'no_tagihan'
            Footers = <>
            Title.Caption = 'Nomor | Invoice'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_sj'
            Footers = <>
            Title.Caption = 'Nomor | Surat Jalan'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_faktur'
            Footers = <>
            Title.Caption = 'Nomor | Faktur'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
              end>
            FieldName = 'tgl_faktur'
            Footers = <>
            Title.Caption = 'Tanggal'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jum_hutang'
            Footer.FieldName = 'jum_hutang'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Jumlah Hutang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 250
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabGroup_Biaya: TRzTabSheet
      Caption = 'Group Biaya'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid_GroupBiaya: TDBGridEh
        Left = 0
        Top = 0
        Width = 1104
        Height = 171
        Align = alClient
        DataSource = dsDetailHutang
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 427
    Width = 1108
    Height = 0
    Align = alTop
    TabOrder = 4
    Visible = False
    ExplicitWidth = 1102
  end
  object Cb_jenis_trans: TComboBox
    Left = 147
    Top = 50
    Width = 186
    Height = 23
    TabOrder = 5
    OnChange = Cb_jenis_transChange
    OnSelect = Cb_jenis_transSelect
  end
  object MemDetailAkun: TMemTableEh
    Params = <>
    Left = 584
    Top = 472
    object MemDetailAkunkd_akun: TStringField
      FieldName = 'kd_akun'
      Size = 100
    end
    object MemDetailAkunnm_akun: TStringField
      FieldName = 'nm_akun'
      Size = 500
    end
    object MemDetailAkunketerangan: TStringField
      FieldName = 'keterangan'
      Size = 500
    end
    object MemDetailAkundebit: TCurrencyField
      FieldName = 'debit'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailAkunkredit: TCurrencyField
      FieldName = 'kredit'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailAkunkd_header_akun: TStringField
      FieldName = 'kd_header_akun'
    end
    object MemDetailAkunjumlah_hasil_kurs: TCurrencyField
      FieldName = 'jumlah_hasil_kurs'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object debit: TMTNumericDataFieldEh
          FieldName = 'debit'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object kredit: TMTNumericDataFieldEh
          FieldName = 'kredit'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object kd_header_akun: TMTStringDataFieldEh
          FieldName = 'kd_header_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object jumlah_hasil_kurs: TMTNumericDataFieldEh
          FieldName = 'jumlah_hasil_kurs'
          NumericDataType = fdtCurrencyEh
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
  object MemDetailHutang: TMemTableEh
    Params = <>
    Left = 784
    Top = 464
    object MemDetailHutangno_tagihan: TStringField
      FieldName = 'no_tagihan'
      Size = 500
    end
    object MemDetailHutangtgl_faktur: TDateField
      FieldName = 'tgl_faktur'
    end
    object MemDetailHutangketerangan: TStringField
      DisplayWidth = 200
      FieldName = 'keterangan'
      Size = 200
    end
    object MemDetailHutangno_faktur: TStringField
      FieldName = 'no_faktur'
    end
    object MemDetailHutangno_sj: TStringField
      FieldName = 'no_sj'
    end
    object MemDetailHutangjum_hutang: TCurrencyField
      FieldName = 'jum_hutang'
    end
    object MemDetailHutangjum_hutang_real: TCurrencyField
      FieldName = 'jum_hutang_real'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object tgl_faktur: TMTDateTimeDataFieldEh
          FieldName = 'tgl_faktur'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 100
        end
        object no_faktur: TMTStringDataFieldEh
          FieldName = 'no_faktur'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object no_sj: TMTStringDataFieldEh
          FieldName = 'no_sj'
          StringDataType = fdtStringEh
          DisplayWidth = 100
        end
        object no_tagihan: TMTStringDataFieldEh
          FieldName = 'no_tagihan'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object jum_hutang: TMTNumericDataFieldEh
          FieldName = 'jum_hutang'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object jum_hutang_real: TMTNumericDataFieldEh
          FieldName = 'jum_hutang_real'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 300
          Size = 200
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsDetailHutang: TDataSource
    DataSet = MemDetailHutang
    Left = 832
    Top = 512
  end
  object DSDetailAkun: TDataSource
    DataSet = MemDetailAkun
    Left = 648
    Top = 504
  end
  object QTP: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM t_cost_detail_submission')
    Left = 928
    Top = 232
  end
  object DSTP: TDataSource
    Left = 976
    Top = 232
  end
end
