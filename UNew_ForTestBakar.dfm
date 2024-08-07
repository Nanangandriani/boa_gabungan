object FNew_ForTestBakar: TFNew_ForTestBakar
  Left = 0
  Top = 0
  Caption = 'FORM NEW QC BAKAR SATU COIL'
  ClientHeight = 465
  ClientWidth = 1193
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 66
    Width = 63
    Height = 13
    Caption = 'Nama Produk'
  end
  object Label2: TLabel
    Left = 25
    Top = 38
    Width = 58
    Height = 13
    Caption = 'No. Formula'
  end
  object Label3: TLabel
    Left = 25
    Top = 92
    Width = 25
    Height = 13
    Caption = 'Regu'
  end
  object Mesin: TLabel
    Left = 25
    Top = 118
    Width = 27
    Height = 13
    Caption = 'Mesin'
  end
  object Label4: TLabel
    Left = 428
    Top = 11
    Width = 92
    Height = 13
    Caption = 'Tanggal Test Bakar'
  end
  object Label6: TLabel
    Left = 428
    Top = 92
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Label7: TLabel
    Left = 113
    Top = 66
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label8: TLabel
    Left = 113
    Top = 38
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label9: TLabel
    Left = 113
    Top = 92
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label10: TLabel
    Left = 113
    Top = 118
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label11: TLabel
    Left = 570
    Top = 11
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label13: TLabel
    Left = 570
    Top = 92
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label14: TLabel
    Left = 25
    Top = 11
    Width = 62
    Height = 13
    Caption = 'No. SPK Test'
  end
  object Label15: TLabel
    Left = 113
    Top = 11
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label20: TLabel
    Left = 716
    Top = 64
    Width = 17
    Height = 13
    Caption = 'S/D'
    Enabled = False
  end
  object Label16: TLabel
    Left = 570
    Top = 64
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label17: TLabel
    Left = 429
    Top = 64
    Width = 129
    Height = 13
    Caption = 'Perkiraan Tanggal Produksi'
  end
  object Label5: TLabel
    Left = 428
    Top = 38
    Width = 81
    Height = 13
    Caption = 'Tanggal Produksi'
  end
  object Label18: TLabel
    Left = 570
    Top = 37
    Width = 4
    Height = 13
    Caption = ':'
  end
  object EdProduk: TRzComboBox
    Left = 129
    Top = 63
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 0
  end
  object edregu: TRzComboBox
    Left = 129
    Top = 89
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 1
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object EdMesin: TRzComboBox
    Left = 129
    Top = 115
    Width = 97
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 2
    Items.Strings = (
      'I'
      'II'
      'III'
      'IV'
      'V'
      'VI'
      'VII'
      'VIII')
  end
  object DtTest: TRzDateTimeEdit
    Left = 586
    Top = 8
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 3
  end
  object EdKet: TMemo
    Left = 586
    Top = 89
    Width = 313
    Height = 56
    CharCase = ecUpperCase
    Lines.Strings = (
      'EDKET')
    TabOrder = 4
  end
  object DBGridDetail: TDBGridEh
    Left = 0
    Top = 151
    Width = 1193
    Height = 282
    Align = alBottom
    DataSource = DsBakarDet
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SumList.Active = True
    TabOrder = 5
    TitleParams.MultiTitle = True
    OnCellClick = DBGridDetailCellClick
    OnColEnter = DBGridDetailColEnter
    OnColExit = DBGridDetailColEnter
    OnSumListAfterRecalcAll = DBGridDetailSumListAfterRecalcAll
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_gotrok'
        Footers = <>
        Title.Caption = 'No. Gotrok'
        Width = 55
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'berat'
        Footer.DisplayFormat = '0.0'
        Footer.ValueType = fvtAvg
        Footers = <>
        Title.Caption = 'Berat (gr)'
        Width = 55
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'kadar_air'
        Footer.DisplayFormat = '0.0'
        Footer.Value = 'max'
        Footer.ValueType = fvtAvg
        Footers = <>
        Title.Caption = 'Kadar Air(%)'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jam_mulai'
        Footers = <>
        Title.Caption = 'Jam Mulai Bakar'
        Width = 112
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jam_mati'
        Footers = <>
        Title.Caption = 'Jam Mati'
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'lama_bakar'
        Footer.DisplayFormat = '0.00'
        Footer.ValueType = fvtAvg
        Footers = <>
        Title.Caption = 'Lama Jam Bakar'
        Width = 64
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'keterangan'
        Footer.Value = 'Jam'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 140
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'warna_abu'
        Footers = <>
        PickList.Strings = (
          'PUTIH'
          'HITAM')
        Title.Caption = 'Warna Abu'
        Width = 67
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bentuk_api'
        Footers = <>
        PickList.Strings = (
          'BESAR'
          'KECIL')
        Title.Caption = 'Bentuk Api'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bentuk_abu'
        Footers = <>
        PickList.Strings = (
          'PANJANG'
          'PUTUS2')
        Title.Caption = 'Bentuk Abu'
        Width = 70
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'tensile'
        Footer.DisplayFormat = '0.0'
        Footer.ValueType = fvtAvg
        Footers = <>
        Title.Caption = 'Tensile'
        Width = 70
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'strength'
        Footer.DisplayFormat = '0.00'
        Footer.ValueType = fvtAvg
        Footers = <>
        Title.Caption = 'Strength'
        Width = 60
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket1'
        Footers = <>
        Title.Caption = 'Ketebalan|1'
        Width = 45
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket2'
        Footers = <>
        Title.Caption = 'Ketebalan|2'
        Width = 45
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket3'
        Footers = <>
        Title.Caption = 'Ketebalan|3'
        Width = 45
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket4'
        Footers = <>
        Title.Caption = 'Ketebalan|4'
        Width = 45
      end
      item
        CellButtons = <>
        DisplayFormat = '0.0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket_rata2'
        Footer.DisplayFormat = '0.0'
        Footer.ValueType = fvtAvg
        Footers = <>
        Title.Caption = 'Ketebalan|Rata-Rata'
        Width = 60
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 433
    Width = 1193
    Height = 32
    Align = alBottom
    TabOrder = 6
    ExplicitTop = 435
    ExplicitWidth = 1201
    object BBatal: TRzBitBtn
      Left = 1125
      Top = 1
      Height = 30
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
    end
    object BSimpan: TRzBitBtn
      Left = 1050
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
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
    end
    object BEdit: TRzBitBtn
      Left = 975
      Top = 1
      Height = 30
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
    end
  end
  object Edno: TEdit
    Left = 232
    Top = 63
    Width = 138
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 7
    Text = 'EDNO'
  end
  object EdNo_Spk: TRzComboBox
    Left = 129
    Top = 8
    Width = 224
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 8
    OnSelect = EdNo_SpkSelect
  end
  object EdNo_Formula: TRzComboBox
    Left = 129
    Top = 35
    Width = 224
    Height = 21
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 9
  end
  object DtPMulai: TRzDateTimeEdit
    Left = 589
    Top = 61
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 10
  end
  object DtPSelesai: TRzDateTimeEdit
    Left = 746
    Top = 61
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    Enabled = False
    TabOrder = 11
  end
  object DtProduksi: TRzDateTimeEdit
    Left = 586
    Top = 34
    Width = 121
    Height = 21
    EditType = etDate
    TabOrder = 12
  end
  object MemBakarDet: TMemTableEh
    Params = <>
    AfterInsert = MemBakarDetAfterInsert
    Left = 524
    Top = 116
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_gotrok: TMTStringDataFieldEh
          FieldName = 'no_gotrok'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_gotrok'
          DisplayWidth = 10
        end
        object berat: TMTNumericDataFieldEh
          FieldName = 'berat'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'berat'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object kadar_air: TMTNumericDataFieldEh
          FieldName = 'kadar_air'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'kadar_air'
          DisplayWidth = 2
          currency = False
          Precision = 15
        end
        object jam_mulai: TMTDateTimeDataFieldEh
          FieldName = 'jam_mulai'
          DateTimeDataType = fdtDateTimeEh
          DisplayLabel = 'jam_mulai'
          DisplayWidth = 10
        end
        object jam_mati: TMTDateTimeDataFieldEh
          FieldName = 'jam_mati'
          DateTimeDataType = fdtDateTimeEh
          DisplayLabel = 'jam_mati'
          DisplayWidth = 100
        end
        object lama1: TMTDateTimeDataFieldEh
          FieldName = 'lama1'
          DateTimeDataType = fdtTimeEh
          DisplayWidth = 20
        end
        object lama2: TMTStringDataFieldEh
          FieldName = 'lama2'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object lama_bakar: TMTNumericDataFieldEh
          FieldName = 'lama_bakar'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayLabel = 'keterangan'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object warna_abu: TMTStringDataFieldEh
          FieldName = 'warna_abu'
          StringDataType = fdtStringEh
          DisplayLabel = 'warna_abu'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object bentuk_api: TMTStringDataFieldEh
          FieldName = 'bentuk_api'
          StringDataType = fdtStringEh
          DisplayLabel = 'bentuk_api'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object bentuk_abu: TMTStringDataFieldEh
          FieldName = 'bentuk_abu'
          StringDataType = fdtStringEh
          DisplayLabel = 'bentuk_abu'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object tensile: TMTNumericDataFieldEh
          FieldName = 'tensile'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'tensile'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
        object strength: TMTNumericDataFieldEh
          FieldName = 'strength'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'strength'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
        object ket1: TMTNumericDataFieldEh
          FieldName = 'ket1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ket1'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
        object ket2: TMTNumericDataFieldEh
          FieldName = 'ket2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ket2'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
        object ket3: TMTNumericDataFieldEh
          FieldName = 'ket3'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ket3'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
        object ket4: TMTNumericDataFieldEh
          FieldName = 'ket4'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ket4'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
        object ket_rata2: TMTNumericDataFieldEh
          FieldName = 'ket_rata2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'ket_rata2'
          DisplayWidth = 255
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DsBakarDet: TDataSource
    DataSet = MemBakarDet
    Left = 441
    Top = 116
  end
end
