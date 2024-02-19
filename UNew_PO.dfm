object FNew_PO: TFNew_PO
  Left = 0
  Top = 49
  BorderIcons = [biSystemMenu]
  Caption = 'Form New Purchase Order'
  ClientHeight = 699
  ClientWidth = 1210
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object pninput: TPanel
    Left = 0
    Top = 0
    Width = 1210
    Height = 257
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1204
    object Label1: TLabel
      Left = 24
      Top = 68
      Width = 63
      Height = 15
      Caption = 'No. Kontrak'
    end
    object qty: TLabel
      Left = 564
      Top = 68
      Width = 104
      Height = 15
      Caption = 'Periode Pengiriman'
    end
    object Label3: TLabel
      Left = 714
      Top = 68
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label4: TLabel
      Left = 175
      Top = 68
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 24
      Top = 39
      Width = 43
      Height = 15
      Caption = 'Supplier'
    end
    object Label6: TLabel
      Left = 175
      Top = 39
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label11: TLabel
      Left = 564
      Top = 39
      Width = 103
      Height = 15
      Caption = 'No. Purchase Order'
    end
    object Label13: TLabel
      Left = 714
      Top = 39
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label14: TLabel
      Left = 24
      Top = 127
      Width = 48
      Height = 15
      Caption = 'Currency'
    end
    object Label16: TLabel
      Left = 564
      Top = 98
      Width = 80
      Height = 15
      Caption = 'Jenis Angkutan'
    end
    object Label17: TLabel
      Left = 714
      Top = 98
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label18: TLabel
      Left = 24
      Top = 10
      Width = 63
      Height = 15
      Caption = 'Kategori PO'
    end
    object Label19: TLabel
      Left = 174
      Top = 10
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label15: TLabel
      Left = 175
      Top = 127
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label20: TLabel
      Left = 564
      Top = 127
      Width = 67
      Height = 15
      Caption = 'Jatuh Tempo'
    end
    object Label27: TLabel
      Left = 714
      Top = 127
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label28: TLabel
      Left = 856
      Top = 127
      Width = 22
      Height = 15
      Caption = 'Hari'
    end
    object Label29: TLabel
      Left = 564
      Top = 10
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object Label30: TLabel
      Left = 714
      Top = 10
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label31: TLabel
      Left = 24
      Top = 98
      Width = 69
      Height = 15
      Caption = 'Jenis Kontrak'
    end
    object Label32: TLabel
      Left = 175
      Top = 98
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label33: TLabel
      Left = 856
      Top = 68
      Width = 17
      Height = 15
      Caption = 's/d'
    end
    object Label34: TLabel
      Left = 24
      Top = 154
      Width = 42
      Height = 15
      Caption = 'Gudang'
    end
    object Label35: TLabel
      Left = 175
      Top = 154
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label36: TLabel
      Left = 25
      Top = 184
      Width = 21
      Height = 15
      Caption = 'SBU'
    end
    object Label37: TLabel
      Left = 175
      Top = 184
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label38: TLabel
      Left = 859
      Top = 186
      Width = 57
      Height = 15
      Caption = 'Akun Perk.'
    end
    object Label39: TLabel
      Left = 714
      Top = 157
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label40: TLabel
      Left = 25
      Top = 215
      Width = 107
      Height = 15
      Caption = 'No. Bon Permintaan'
    end
    object Label41: TLabel
      Left = 175
      Top = 215
      Width = 3
      Height = 15
      Caption = ':'
    end
    object EdKd_supp: TEdit
      Left = 190
      Top = 36
      Width = 73
      Height = 23
      CharCase = ecUpperCase
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 0
      OnChange = EdKd_suppChange
    end
    object DtPO: TRzDateTimeEdit
      Left = 729
      Top = 7
      Width = 121
      Height = 23
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = DtPOChange
    end
    object EdNo: TEdit
      Left = 903
      Top = 7
      Width = 88
      Height = 23
      TabOrder = 2
      Text = 'EdNo_po'
      Visible = False
    end
    object DtBln: TRzDateTimeEdit
      Left = 966
      Top = 36
      Width = 57
      Height = 23
      EditType = etDate
      Format = 'mm'
      TabOrder = 3
      Visible = False
    end
    object DtTh: TRzDateTimeEdit
      Left = 903
      Top = 36
      Width = 57
      Height = 23
      EditType = etDate
      Format = 'yy'
      TabOrder = 4
      Visible = False
    end
    object Edno_kontrak: TRzComboBox
      Left = 190
      Top = 65
      Width = 164
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 5
      OnSelect = Edno_kontrakSelect
    end
    object EdNopo: TRzEdit
      Left = 729
      Top = 36
      Width = 164
      Height = 23
      Text = ''
      CharCase = ecUpperCase
      DisabledColor = clInfoBk
      Enabled = False
      TabOrder = 6
    end
    object EdCurr: TRzComboBox
      Left = 190
      Top = 124
      Width = 68
      Height = 23
      Color = clInfoBk
      ReadOnly = True
      TabOrder = 7
      OnChange = EdCurrChange
      Items.Strings = (
        'Rp'
        '$')
    end
    object EdStatus: TComboBox
      Left = 190
      Top = 7
      Width = 164
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 8
      Text = 'EDSTATUS'
      OnSelect = EdStatusSelect
      Items.Strings = (
        'KONTRAK KERJASAMA'
        'NON KONTRAK KERJASAMA'
        'BON PERMINTAAN BARANG')
    end
    object EdJenisAngkut: TRzComboBox
      Left = 729
      Top = 95
      Width = 164
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 9
      Items.Strings = (
        'SUPPLIER'
        'DELIVERY ORDER')
      ItemIndex = 0
    end
    object Edjenispo: TRzComboBox
      Left = 190
      Top = 95
      Width = 164
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 10
      Text = 'LOKAL'
      Items.Strings = (
        'IMPORT'
        'LOKAL')
    end
    object Edjatuh_tempo: TRzEdit
      Left = 729
      Top = 124
      Width = 121
      Height = 23
      Text = '0'
      CharCase = ecUpperCase
      DisabledColor = clInfoBk
      TabOrder = 11
      OnChange = Edjatuh_tempoChange
      OnKeyPress = Edjatuh_tempoKeyPress
    end
    object EdNm_supp: TRzButtonEdit
      Left = 269
      Top = 36
      Width = 235
      Height = 23
      Text = ''
      TabOrder = 12
      OnChange = EdNm_suppChange
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = EdNm_suppButtonClick
    end
    object DtDelivery: TRzDateTimeEdit
      Left = 729
      Top = 65
      Width = 121
      Height = 23
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 13
    end
    object Ednilai_curr: TRzEdit
      Left = 264
      Top = 124
      Width = 90
      Height = 23
      Text = '1'
      Alignment = taRightJustify
      Color = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 14
    end
    object RzBitBtn1: TRzBitBtn
      Left = 383
      Top = 94
      Width = 121
      Height = 35
      Caption = 'Tambah Barang'
      TabOrder = 15
      Visible = False
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
    object DtDelivery2: TRzDateTimeEdit
      Left = 878
      Top = 65
      Width = 121
      Height = 23
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 16
    end
    object cb_gudang: TComboBox
      Left = 190
      Top = 154
      Width = 164
      Height = 23
      TabOrder = 17
    end
    object Nopo: TEdit
      Left = 383
      Top = 7
      Width = 121
      Height = 23
      TabOrder = 18
      Visible = False
    end
    object DateTimePicker1: TDateTimePicker
      Left = 383
      Top = 183
      Width = 121
      Height = 23
      Date = 45238.000000000000000000
      Time = 0.576702314814610900
      TabOrder = 19
      Visible = False
    end
    object Edurut: TEdit
      Left = 383
      Top = 65
      Width = 121
      Height = 23
      TabOrder = 20
      Visible = False
    end
    object Edbln: TEdit
      Left = 968
      Top = 124
      Width = 58
      Height = 23
      TabOrder = 21
      Visible = False
    end
    object Edth: TEdit
      Left = 1032
      Top = 124
      Width = 58
      Height = 23
      TabOrder = 22
      Visible = False
    end
    object Edhari: TEdit
      Left = 903
      Top = 124
      Width = 58
      Height = 23
      TabOrder = 23
      Visible = False
    end
    object Cb_Code: TComboBox
      Left = 383
      Top = 154
      Width = 121
      Height = 23
      TabOrder = 24
      Visible = False
      Items.Strings = (
        'MDI'
        'BCA')
    end
    object Edsbu: TComboBox
      Left = 190
      Top = 183
      Width = 73
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 25
    end
    object Dthari: TRzDateTimeEdit
      Left = 1029
      Top = 36
      Width = 57
      Height = 23
      EditType = etDate
      Format = 'mm'
      TabOrder = 26
      Visible = False
    end
    object ckAs: TCheckBox
      Left = 564
      Top = 215
      Width = 153
      Height = 17
      Caption = 'Approve Supplier'
      TabOrder = 27
      OnClick = ckAsClick
    end
    object CkUangmk: TCheckBox
      Left = 564
      Top = 157
      Width = 97
      Height = 17
      Caption = 'Uang Muka'
      TabOrder = 28
      OnClick = CkUangmkClick
    end
    object Ednm_akun: TRzButtonEdit
      Left = 994
      Top = 183
      Width = 187
      Height = 23
      Text = ''
      Enabled = False
      FocusColor = clInfoBk
      TabOrder = 29
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
    end
    object Edkd_akun: TRzEdit
      Left = 917
      Top = 183
      Width = 71
      Height = 23
      Text = ''
      Enabled = False
      FocusColor = clInfoBk
      ReadOnly = True
      TabOrder = 30
      OnChange = Edkd_akunChange
    end
    object EdUM: TRzNumericEdit
      Left = 729
      Top = 183
      Width = 121
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 31
      DisplayFormat = '#,##0.0000'
    end
    object NoTransUM: TRzComboBox
      Left = 729
      Top = 154
      Width = 121
      Height = 23
      Enabled = False
      TabOrder = 32
      OnSelect = NoTransUMSelect
    end
    object Cb_bon: TRzComboBox
      Left = 190
      Top = 212
      Width = 164
      Height = 23
      TabOrder = 33
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 1210
    Height = 143
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 1204
    object Label7: TLabel
      Left = 832
      Top = 48
      Width = 36
      Height = 15
      Caption = 'PPh 23'
      Visible = False
    end
    object Label10: TLabel
      Left = 832
      Top = 79
      Width = 21
      Height = 15
      Caption = 'PPn'
      Visible = False
    end
    object Label8: TLabel
      Left = 982
      Top = 48
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label12: TLabel
      Left = 982
      Top = 79
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label21: TLabel
      Left = 832
      Top = 16
      Width = 48
      Height = 15
      Caption = 'Sub Total'
      Visible = False
    end
    object Label22: TLabel
      Left = 982
      Top = 16
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label23: TLabel
      Left = 982
      Top = 110
      Width = 3
      Height = 15
      Caption = ':'
      Visible = False
    end
    object Label24: TLabel
      Left = 832
      Top = 110
      Width = 60
      Height = 15
      Caption = 'Grand Total'
      Visible = False
    end
    object Label25: TLabel
      Left = 1048
      Top = 48
      Width = 10
      Height = 15
      Caption = '%'
      Visible = False
    end
    object Label26: TLabel
      Left = 1048
      Top = 79
      Width = 10
      Height = 15
      Caption = '%'
      Visible = False
    end
    object Label2: TLabel
      Left = 40
      Top = 27
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label9: TLabel
      Left = 175
      Top = 27
      Width = 3
      Height = 15
      Caption = ':'
    end
    object EdPPn: TEdit
      Left = 997
      Top = 76
      Width = 36
      Height = 23
      Alignment = taRightJustify
      TabOrder = 0
      Text = '10'
      Visible = False
    end
    object EdPPh23: TEdit
      Left = 997
      Top = 45
      Width = 36
      Height = 23
      Alignment = taRightJustify
      TabOrder = 1
      Text = '10'
      Visible = False
      OnChange = EdPPh23Change
    end
    object EdSubtotal: TRzEdit
      Left = 997
      Top = 13
      Width = 172
      Height = 23
      Text = '0'
      Alignment = taRightJustify
      TabOrder = 2
      Visible = False
    end
    object Edpph: TRzEdit
      Left = 1065
      Top = 45
      Width = 104
      Height = 23
      Text = '0'
      Alignment = taRightJustify
      TabOrder = 3
      Visible = False
    end
    object Edppn2: TRzEdit
      Left = 1065
      Top = 76
      Width = 104
      Height = 23
      Text = '0'
      Alignment = taRightJustify
      TabOrder = 4
      Visible = False
    end
    object EdGrandtotal: TRzEdit
      Left = 997
      Top = 107
      Width = 172
      Height = 23
      Text = '0'
      Alignment = taRightJustify
      TabOrder = 5
      Visible = False
    end
    object EdKet: TMemo
      Left = 190
      Top = 13
      Width = 540
      Height = 113
      TabOrder = 6
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 665
    Width = 1210
    Height = 34
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 1204
    ExplicitHeight = 25
    object BBatal: TRzBitBtn
      Left = 1134
      Top = 1
      Height = 32
      Align = alRight
      Caption = 'Batal'
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
      ExplicitLeft = 1128
      ExplicitHeight = 23
    end
    object BSimpan: TRzBitBtn
      Left = 1059
      Top = 1
      Height = 32
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 1
      Visible = False
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
      ExplicitLeft = 1053
      ExplicitHeight = 23
    end
    object BEdit: TRzBitBtn
      Left = 984
      Top = 1
      Height = 32
      Align = alRight
      Caption = 'Simpan'
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
      ExplicitLeft = 978
      ExplicitHeight = 23
    end
    object Button1: TButton
      Left = 856
      Top = 4
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 3
      Visible = False
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 257
    Width = 1210
    Height = 265
    Align = alTop
    TabOrder = 3
    ExplicitWidth = 1204
    object DBGridDetail: TDBGridEh
      Left = 1
      Top = 1
      Width = 1208
      Height = 263
      Align = alClient
      DataSource = DsItempo
      DynProps = <>
      FooterRowCount = 1
      HorzScrollBar.ExtraPanel.Visible = True
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
      OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
      SumList.Active = True
      TabOrder = 0
      TitleParams.MultiTitle = True
      OnCellClick = DBGridDetailCellClick
      OnColEnter = DBGridDetailColEnter
      OnColExit = DBGridDetailColEnter
      OnKeyPress = DBGridDetailKeyPress
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              Style = ebsEllipsisEh
              OnClick = DBGridDetailColumns1EditButtons0Click
            end>
          FieldName = 'kd_material'
          Footers = <>
          Title.Caption = 'Kode Barang'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'Nm_material'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Nama Barang'
          Width = 150
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qtykontrak'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Sisa Kuantum Kontrak'
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
          DynProps = <>
          EditButtons = <>
          FieldName = 'satuan'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Satuan'
          Width = 64
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.0000'
          DynProps = <>
          EditButtons = <>
          FieldName = 'harga'
          Footers = <>
          Title.Caption = 'USD|Harga'
          Width = 100
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.0000'
          DynProps = <>
          EditButtons = <>
          FieldName = 'subtotal'
          Footer.Alignment = taRightJustify
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'USD|Sub Total'
          Width = 90
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ppn'
          Footers = <>
          Title.Caption = 'USD|PPN|%'
          Width = 30
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.0000'
          DynProps = <>
          EditButtons = <>
          FieldName = 'ppn_us'
          Footer.Alignment = taRightJustify
          Footer.DisplayFormat = '#,##0.0000'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'USD|PPN|Nominal'
          Width = 70
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.0000'
          DynProps = <>
          EditButtons = <>
          FieldName = 'pemb_ppn_us'
          Footers = <>
          Title.Caption = 'USD|PPN|Pembulatan'
          Width = 80
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.0000'
          DynProps = <>
          EditButtons = <>
          FieldName = 'grandtotal'
          Footer.Alignment = taRightJustify
          Footer.DisplayFormat = '0.00#,##'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = 'USD|Grand Total'
          Width = 110
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'harga_rp'
          Footers = <>
          Title.Caption = 'Rupiah|Harga'
          Width = 90
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'subtotal_rp'
          Footer.Alignment = taRightJustify
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Rupiah|Sub Total'
          Width = 100
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'pemb_dpp'
          Footers = <>
          Title.Caption = 'Rupiah|Pembulatan'
          Width = 80
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'ppn'
          Footers = <>
          Title.Caption = 'Rupiah|PPN|%'
          Width = 30
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
          Width = 80
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'pemb_ppn'
          Footers = <>
          Title.Caption = 'Rupiah|PPN|Pembulatan'
          Width = 70
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'pph'
          Footers = <>
          Title.Caption = 'Rupiah|PPH|%'
          Width = 30
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'pph_rp'
          Footer.Alignment = taRightJustify
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Rupiah|PPH|Nominal'
          Width = 80
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'grandtotalrp'
          Footer.Alignment = taRightJustify
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Rupiah|Grand Total'
          Width = 130
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'qtyterkirim'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Terkirim|Kuantum'
          Width = 100
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'totalbayar'
          Footer.DisplayFormat = '0.00#,##'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Terkirim|Total Bayar'
          Visible = False
          Width = 112
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'sisaqty'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Belum Dikirim|Kuantum'
          Width = 100
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'sisabayar'
          Footer.DisplayFormat = '0.00#,##'
          Footer.ValueType = fvtSum
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Belum Dikirim|Total Belum Dibayar'
          Visible = False
          Width = 111
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'gudang'
          Footers = <>
          LookupParams.KeyFieldNames = 'gudang'
          LookupParams.LookupDisplayFieldName = 'nm_gudang'
          LookupParams.LookupKeyFieldNames = 'nm_gudang'
          Title.Caption = 'Lokasi Gudang'
          Visible = False
          Width = 200
        end
        item
          CellButtons = <>
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
              OnClick = DBGridDetailColumns0EditButtons0Click
            end>
          FieldName = 'Kd_Material_stok'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Kode Barang'
          Width = 0
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object DsGudang: TDataSource
    DataSet = QGudang
    Left = 1112
    Top = 64
  end
  object QGudang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_wh')
    Left = 1112
    Top = 16
  end
  object DsItempo: TDataSource
    DataSet = MemItempo
    Left = 1041
    Top = 72
  end
  object MemItempo: TMemTableEh
    Params = <>
    Left = 1041
    Top = 16
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Kd_Material_stok: TMTStringDataFieldEh
          FieldName = 'Kd_Material_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Nm_material: TMTStringDataFieldEh
          FieldName = 'Nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
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
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object harga: TMTNumericDataFieldEh
          FieldName = 'harga'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = True
          Precision = 50
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
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
        object totalbayar: TMTNumericDataFieldEh
          FieldName = 'totalbayar'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object sisabayar: TMTNumericDataFieldEh
          FieldName = 'sisabayar'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object sisaqty: TMTNumericDataFieldEh
          FieldName = 'sisaqty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object qtyterkirim: TMTNumericDataFieldEh
          FieldName = 'qtyterkirim'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object qtykontrak: TMTNumericDataFieldEh
          FieldName = 'qtykontrak'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object ppn_rp: TMTNumericDataFieldEh
          FieldName = 'ppn_rp'
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
          DisplayWidth = 20
          currency = False
          Precision = 20
        end
        object pph_rp: TMTNumericDataFieldEh
          FieldName = 'pph_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object subtotal: TMTNumericDataFieldEh
          FieldName = 'subtotal'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = True
          Precision = 100
        end
        object grandtotal: TMTNumericDataFieldEh
          FieldName = 'grandtotal'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = True
          Precision = 100
        end
        object subtotal_rp: TMTNumericDataFieldEh
          FieldName = 'subtotal_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 100
        end
        object harga_rp: TMTNumericDataFieldEh
          FieldName = 'harga_rp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object grandtotalrp: TMTNumericDataFieldEh
          FieldName = 'grandtotalrp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object ppn_us: TMTNumericDataFieldEh
          FieldName = 'ppn_us'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = True
          Precision = 50
        end
        object pemb_ppn: TMTNumericDataFieldEh
          FieldName = 'pemb_ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object pemb_ppn_us: TMTNumericDataFieldEh
          FieldName = 'pemb_ppn_us'
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
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
