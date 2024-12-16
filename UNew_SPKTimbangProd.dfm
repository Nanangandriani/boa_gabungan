object FNew_SpkTimbangProd: TFNew_SpkTimbangProd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'FORM TIMBANG SPK PRODUKSI'
  ClientHeight = 670
  ClientWidth = 981
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
    Left = 29
    Top = 15
    Width = 81
    Height = 13
    Caption = 'No. SPK Produksi'
  end
  object Label2: TLabel
    Left = 29
    Top = 47
    Width = 58
    Height = 13
    Caption = 'No. Formula'
  end
  object Label3: TLabel
    Left = 457
    Top = 15
    Width = 65
    Height = 13
    Caption = 'Tanggal Mulai'
  end
  object Label4: TLabel
    Left = 29
    Top = 79
    Width = 63
    Height = 13
    Caption = 'Nama Produk'
  end
  object Label5: TLabel
    Left = 29
    Top = 137
    Width = 27
    Height = 13
    Caption = 'Mesin'
  end
  object Label6: TLabel
    Left = 29
    Top = 110
    Width = 76
    Height = 13
    Caption = 'Jumlah Timbang'
  end
  object Label7: TLabel
    Left = 457
    Top = 47
    Width = 74
    Height = 13
    Caption = 'Tanggal Selesai'
  end
  object Label8: TLabel
    Left = 454
    Top = 78
    Width = 68
    Height = 13
    Caption = 'Jumlah Karton'
    Visible = False
  end
  object Label9: TLabel
    Left = 138
    Top = 15
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label10: TLabel
    Left = 138
    Top = 47
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label11: TLabel
    Left = 138
    Top = 137
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label12: TLabel
    Left = 138
    Top = 110
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label13: TLabel
    Left = 553
    Top = 78
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label14: TLabel
    Left = 553
    Top = 47
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label15: TLabel
    Left = 553
    Top = 15
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label16: TLabel
    Left = 138
    Top = 79
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label17: TLabel
    Left = 29
    Top = 165
    Width = 56
    Height = 13
    Caption = 'Keterangan'
  end
  object Label18: TLabel
    Left = 138
    Top = 165
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label19: TLabel
    Left = 457
    Top = 110
    Width = 83
    Height = 13
    Caption = 'Gudang Kemasan'
    Visible = False
  end
  object Label20: TLabel
    Left = 553
    Top = 110
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 638
    Width = 981
    Height = 32
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 637
    ExplicitWidth = 977
    object BBatal: TRzBitBtn
      Left = 905
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
      ExplicitLeft = 901
    end
    object BSimpan: TRzBitBtn
      Left = 830
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
      ExplicitLeft = 826
    end
    object BEdit: TRzBitBtn
      Left = 755
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
      ExplicitLeft = 751
    end
  end
  object EdNoSPk: TRzEdit
    Left = 148
    Top = 12
    Width = 190
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object EdNo_formula: TRzEdit
    Left = 148
    Top = 44
    Width = 190
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    TabOrder = 2
    OnChange = EdNo_formulaChange
  end
  object EdMesin: TRzComboBox
    Left = 148
    Top = 134
    Width = 109
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 3
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
  object EdNotes: TMemo
    Left = 148
    Top = 162
    Width = 559
    Height = 79
    CharCase = ecUpperCase
    TabOrder = 4
  end
  object DtSelasai: TRzDateTimeEdit
    Left = 569
    Top = 44
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 5
    OnChange = DtSelasaiChange
  end
  object DtMulai: TRzDateTimeEdit
    Left = 569
    Top = 12
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object Edtimbang: TRzEdit
    Left = 148
    Top = 107
    Width = 109
    Height = 21
    Text = '0'
    Alignment = taRightJustify
    CharCase = ecUpperCase
    TabOrder = 7
    OnChange = EdtimbangChange
  end
  object Edkarton: TRzEdit
    Left = 569
    Top = 75
    Width = 121
    Height = 21
    Text = '0'
    Alignment = taRightJustify
    CharCase = ecUpperCase
    TabOrder = 8
    Visible = False
    OnChange = EdkartonChange
  end
  object EdProduk: TRzComboBox
    Left = 148
    Top = 76
    Width = 190
    Height = 21
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 9
    Items.Strings = (
      'ON KKJB'
      'ON KKSP')
  end
  object edno1: TEdit
    Left = 344
    Top = 12
    Width = 105
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 10
    Text = 'EDNO1'
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 258
    Width = 981
    Height = 380
    ActivePage = TabKemasan
    Align = alBottom
    TabOrder = 11
    ExplicitTop = 257
    ExplicitWidth = 977
    object TabBaku: TTabSheet
      Caption = 'Bahan Tepung'
      object DBGridBaku: TDBGridEh
        Left = 0
        Top = 0
        Width = 973
        Height = 352
        Align = alClient
        DataSource = DsMemBaku
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridBakuCellClick
        OnColExit = DBGridBakuColExit
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Visible = False
                OnClick = DBGridBakuColumns0EditButtons0Click
              end>
            FieldName = 'kd_material_stok'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Visible = False
                OnClick = DBGridBakuColumns2EditButtons0Click
              end>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            Title.Caption = 'Permintaan|Index'
            Width = 55
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            Title.Caption = 'Permintaan|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            Title.Caption = 'Index|Satuan'
            Width = 49
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(KG)'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Jumlah'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuankemasan'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabKimia: TTabSheet
      Caption = 'Bahan Kimia'
      ImageIndex = 1
      object DBGridKimia: TDBGridEh
        Left = 0
        Top = 0
        Width = 973
        Height = 352
        Align = alClient
        DataSource = DsMemKimia
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridKimiaCellClick
        OnColExit = DBGridKimiaColExit
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Visible = False
                OnClick = DBGridKimiaColumns0EditButtons0Click
              end>
            FieldName = 'kd_material_stok'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Visible = False
                OnClick = DBGridKimiaColumns2EditButtons0Click
              end>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            Title.Caption = 'Permintaan|Index'
            Width = 55
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ttlberat'
            Footers = <>
            Title.Caption = 'Permintaan|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            Title.Caption = 'Index|Satuan'
            Visible = False
            Width = 61
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qtyperkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(KG)'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'gudang'
            Footers = <>
            Title.Caption = 'Gudang'
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabKemasan: TTabSheet
      Caption = 'Bahan Kemasan'
      ImageIndex = 2
      object DBGridKemasan: TDBGridEh
        Left = 0
        Top = 0
        Width = 973
        Height = 352
        Align = alClient
        DataSource = DsKemasan
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnCellClick = DBGridKemasanCellClick
        OnColExit = DBGridKemasanColExit
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                OnClick = DBGridKemasanColumns0EditButtons0Click
              end>
            FieldName = 'kd_Material'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 65
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_material'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 130
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                OnClick = DBGridKemasanColumns2EditButtons0Click
              end>
            FieldName = 'nm_supplier'
            Footers = <>
            Title.Caption = 'Supplier'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Kd_supplier'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_stok'
            Footers = <>
            Title.Caption = 'Kode Stok'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = '0.0000#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'index2'
            Footers = <>
            Width = 60
          end
          item
            Alignment = taRightJustify
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'index'
            Footers = <>
            PickList.Strings = (
              '1/320'
              '1/430')
            Title.Caption = 'Permintaan|Index'
            Width = 55
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'Totalberat'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Permintaan|Total'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'QtyPerkemasan'
            Footers = <>
            Title.Caption = 'Karung/Botol|Berat(@)'
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'totalkemasan'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Karung/Botol|Jumlah'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Gudang'
            Footers = <>
            Width = 75
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ImageIndex = 3
      TabVisible = False
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 973
        Height = 352
        Align = alClient
        DataSource = DsBon
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NoBon'
            Footers = <>
            Title.Caption = 'No.'
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'No_bon'
            Footers = <>
            Width = 95
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Tgl_bon'
            Footers = <>
            Width = 107
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 4
      TabVisible = False
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 973
        Height = 352
        Align = alClient
        DataSource = DsDetailBon
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Shift'
            Footers = <>
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'jmlh_timbang'
            Footers = <>
          end
          item
            CellButtons = <>
            DisplayFormat = '0.00#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'jmlh_karton'
            Footers = <>
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object CbGudang: TRzComboBox
    Left = 569
    Top = 107
    Width = 248
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 12
    Visible = False
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
  object MemKimia: TMemTableEh
    Params = <>
    Left = 764
    Top = 56
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_formula: TMTStringDataFieldEh
          FieldName = 'no_formula'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_formula'
          DisplayWidth = 25
          Size = 25
          Transliterate = True
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudang'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object kd_material_stok: TMTStringDataFieldEh
          FieldName = 'kd_material_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_stok'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_supplier: TMTStringDataFieldEh
          FieldName = 'kd_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
        object iddetail: TMTNumericDataFieldEh
          FieldName = 'iddetail'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object ttlberat: TMTNumericDataFieldEh
          FieldName = 'ttlberat'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'ttlberat'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object qtyperkemasan: TMTNumericDataFieldEh
          FieldName = 'qtyperkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'qtyperkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object category: TMTStringDataFieldEh
          FieldName = 'category'
          StringDataType = fdtStringEh
          DisplayLabel = 'category'
          DisplayWidth = 20
          Transliterate = True
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_supplier'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            '002/X/B/20/HKJ'
            ''
            'PRA'
            ''
            1.000000000000000000
            'Botol'
            '09'
            86
            20800c
            5200c
            40000c
            'Premix'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'PAA'
            ''
            0.000000000000000000
            'Botol'
            '09'
            87
            13000c
            3250c
            40000c
            'Parfum'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'PNA'
            ''
            0.000000000000000000
            'Botol'
            '09'
            88
            16000c
            8000c
            20000c
            'Potassium Nitrate'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'MGA'
            ''
            0.000000000000000000
            'Botol'
            '09'
            89
            7600c
            1900c
            40000c
            'Malachite Green'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'PRA'
            ''
            1.000000000000000000
            'Botol'
            '09'
            97
            26000c
            5200c
            50000c
            'Premix'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'PAA'
            ''
            0.000000000000000000
            'Botol'
            '09'
            98
            16250c
            3250c
            50000c
            'Parfum'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'PNA'
            ''
            0.000000000000000000
            'Botol'
            '09'
            99
            20000c
            8000c
            25000c
            'Potassium Nitrate'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'MGA'
            ''
            0.000000000000000000
            'Botol'
            '09'
            100
            9500c
            1900c
            50000c
            'Malachite Green'
            'Kimia'
            'Ampuh Perkasa Jaya'
            nil))
      end
    end
  end
  object DsMemKimia: TDataSource
    DataSet = MemKimia
    Left = 904
    Top = 104
  end
  object MemBaku: TMemTableEh
    Params = <>
    Left = 768
    Top = 8
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_formula: TMTStringDataFieldEh
          FieldName = 'no_formula'
          StringDataType = fdtStringEh
          DisplayLabel = 'no_formula'
          DisplayWidth = 25
          Size = 25
          Transliterate = True
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayLabel = 'gudang'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object kd_material_stok: TMTStringDataFieldEh
          FieldName = 'kd_material_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_stok'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuan'
          DisplayWidth = 10
          Size = 10
          Transliterate = True
        end
        object kd_supplier: TMTStringDataFieldEh
          FieldName = 'kd_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          Size = 5
          Transliterate = True
        end
        object iddetail: TMTNumericDataFieldEh
          FieldName = 'iddetail'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object ttlberat: TMTNumericDataFieldEh
          FieldName = 'ttlberat'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'ttlberat'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object qtyperkemasan: TMTNumericDataFieldEh
          FieldName = 'qtyperkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'qtyperkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayLabel = 'totalkemasan'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
        object category: TMTStringDataFieldEh
          FieldName = 'category'
          StringDataType = fdtStringEh
          DisplayLabel = 'category'
          DisplayWidth = 20
          Transliterate = True
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_supplier'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material'
          DisplayWidth = 2
          Size = 2
          Transliterate = True
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            '002/X/B/20/HKJ'
            'GB-B'
            'LA'
            '01 LA 001/GB-B/X/20'
            8.500000000000000000
            'Karung'
            '01'
            79
            340000c
            500000c
            6800c
            'Tepung Lengket'
            'Bahan Baku'
            'Vietnam'
            'L'
            nil)
          (
            '002/X/B/20/HKJ'
            'GB-A'
            'OA'
            '02 OA  001/GB-A/X/20'
            13.000000000000000000
            'Karung'
            '03'
            80
            520000c
            500000c
            10400c
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            'O'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'TA'
            ''
            2.000000000000000000
            'Karung'
            '10'
            81
            80000c
            500000c
            1600c
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            'T'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'BA'
            ''
            23.000000000000000000
            'Karung'
            '03'
            82
            920000c
            500000c
            18400c
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            'B'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'JA'
            ''
            18.500000000000000000
            'Karung'
            '12'
            83
            740000c
            500000c
            14800c
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            'J'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'WA'
            ''
            0.500000000000000000
            'Karung'
            '09'
            84
            20000c
            500000c
            400c
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            'W'
            nil)
          (
            '002/X/B/20/HKJ'
            ''
            'PA'
            ''
            0.500000000000000000
            'Karung'
            '13'
            85
            20000c
            500000c
            400c
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            'P'
            nil)
          (
            '001/X/A/20/HKJ'
            'GB-B'
            'LA'
            '01 LA 001/GB-B/X/20'
            8.500000000000000000
            'Karung'
            '01'
            90
            425000c
            500000c
            8500c
            'Tepung Lengket'
            'Bahan Baku'
            'Vietnam'
            'L'
            nil)
          (
            '001/X/A/20/HKJ'
            'GB-A'
            'OA'
            '02 OA  001/GB-A/X/20'
            13.000000000000000000
            'Karung'
            '03'
            91
            650000c
            500000c
            13000c
            'Tepung Onggok'
            'Bahan Baku'
            'Arta Graha'
            'O'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'TA'
            ''
            2.000000000000000000
            'Karung'
            '10'
            92
            100000c
            500000c
            2000c
            'Tepung Tapioka'
            'Bahan Baku'
            'Dua Putra dewa'
            'T'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'BA'
            ''
            23.000000000000000000
            'Karung'
            '03'
            93
            1150000c
            500000c
            23000c
            'Tepung Batok'
            'Bahan Baku'
            'Arta Graha'
            'B'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'JA'
            ''
            18.500000000000000000
            'Karung'
            '12'
            94
            925000c
            500000c
            18500c
            'Tepung Jati'
            'Bahan Baku'
            'Allpin'
            'J'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'WA'
            ''
            0.500000000000000000
            'Karung'
            '09'
            95
            25000c
            500000c
            500c
            'Tepung DW'
            'Bahan Baku'
            'Ampuh Perkasa Jaya'
            'W'
            nil)
          (
            '001/X/A/20/HKJ'
            ''
            'PA'
            ''
            0.500000000000000000
            'Karung'
            '13'
            96
            25000c
            500000c
            500c
            'Tepung Putusan'
            'Bahan Baku'
            'Mulyo'
            'P'
            nil))
      end
    end
  end
  object DsMemBaku: TDataSource
    DataSet = MemBaku
    Left = 904
    Top = 48
  end
  object MemKemasan: TMemTableEh
    Params = <>
    Left = 824
    Top = 55
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object index2: TMTNumericDataFieldEh
          FieldName = 'index2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object Gudang: TMTStringDataFieldEh
          FieldName = 'Gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 30
          Size = 30
        end
        object kd_Material: TMTStringDataFieldEh
          FieldName = 'kd_Material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Totalberat: TMTNumericDataFieldEh
          FieldName = 'Totalberat'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object QtyPerkemasan: TMTNumericDataFieldEh
          FieldName = 'QtyPerkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object Kd_supplier: TMTStringDataFieldEh
          FieldName = 'Kd_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            1.000000000000000000
            nil
            'K'
            'K'
            'KARTON'
            '1'
            nil
            20.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            60.000000000000000000
            nil
            'D'
            'D'
            'DUPLEK'
            '60'
            nil
            600.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            300.000000000000000000
            nil
            'A'
            'A'
            'AMPLOP'
            '300'
            nil
            10000.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            0.187500000000000000
            nil
            'S'
            'S'
            'KAKI ON'
            '1/320'
            nil
            40.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            0.002300000000000000
            nil
            'I'
            'I'
            'SUMITAPE'
            '435'
            nil
            1.000000000000000000
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
  object DsKemasan: TDataSource
    DataSet = MemKemasan
    Left = 904
    Top = 152
  end
  object Qkimia: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.nm_material, C.Category,D.nm_supplier from t_spk_fo' +
        'rmula_det A '
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok'
      'inner join t_material C on B.kd_material=C.kd_material '
      'Left join t_supplier D on B.kd_supplier=D.kd_supplier'
      'where C.category='#39'Kimia'#39
      'order by iddetail Asc')
    MasterFields = 'no_formula'
    DetailFields = 'no_formula'
    Left = 721
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'no_formula'
        ParamType = ptInput
        Value = '002/X/B/20/HKJ'
      end>
  end
  object Qkemasan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.nm_material, C.Category from t_spk_formula_det A in' +
        'ner join t_material_stok B '
      'on A.kd_material_stok=B.kd_material_stok'
      
        'inner join t_material C on B.kd_material=C.kd_material where C.c' +
        'ategory='#39'Bahan Kemasan'#39)
    DetailFields = 'no_formula'
    Left = 830
    Top = 8
  end
  object QBaku: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.nm_material, C.Category, D.nm_supplier, B.kd_materi' +
        'al from t_spk_formula_det A'
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok'
      'inner join t_material C on B.kd_material=C.kd_material '
      'Left join t_supplier D on B.kd_supplier=D.kd_supplier'
      'where C.category='#39'Bahan Baku'#39' order by iddetail ASC')
    MasterFields = 'no_formula'
    DetailFields = 'no_formula'
    Left = 722
    Top = 56
  end
  object MemKemasan2: TMemTableEh
    Params = <>
    Left = 832
    Top = 123
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object index2: TMTNumericDataFieldEh
          FieldName = 'index2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object Gudang: TMTStringDataFieldEh
          FieldName = 'Gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 30
          Size = 30
        end
        object kd_Material: TMTStringDataFieldEh
          FieldName = 'kd_Material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Totalberat: TMTNumericDataFieldEh
          FieldName = 'Totalberat'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object QtyPerkemasan: TMTNumericDataFieldEh
          FieldName = 'QtyPerkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object totalkemasan: TMTNumericDataFieldEh
          FieldName = 'totalkemasan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 25
          currency = False
          Precision = 25
        end
        object nm_supplier: TMTStringDataFieldEh
          FieldName = 'nm_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object Kd_supplier: TMTStringDataFieldEh
          FieldName = 'Kd_supplier'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object satuankemasan: TMTStringDataFieldEh
          FieldName = 'satuankemasan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            1.000000000000000000
            nil
            'K'
            '065'
            'KARTON'
            '1'
            nil
            20.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            60.000000000000000000
            nil
            'D'
            '063'
            'DUPLEK'
            '60'
            nil
            600.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            300.000000000000000000
            nil
            'A'
            '062'
            'AMPLOP'
            '300'
            nil
            10000.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            0.187500000000000000
            nil
            'S'
            '064'
            'KAKI ON'
            '1/320'
            nil
            40.000000000000000000
            nil
            nil
            nil
            nil
            nil)
          (
            0.002300000000000000
            nil
            'I'
            '080'
            'SUMITAPE'
            '435'
            nil
            1.000000000000000000
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
  object MemBon: TMemTableEh
    Params = <>
    Left = 504
    Top = 320
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object NoBon: TMTStringDataFieldEh
          FieldName = 'NoBon'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object No_bon: TMTStringDataFieldEh
          FieldName = 'No_bon'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Tgl_bon: TMTDateTimeDataFieldEh
          FieldName = 'Tgl_bon'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DsBon: TDataSource
    DataSet = MemBon
    Left = 552
    Top = 336
  end
  object MemDetailbon: TMemTableEh
    Params = <>
    Left = 504
    Top = 368
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object Shift: TMTStringDataFieldEh
          FieldName = 'Shift'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object jmlh_timbang: TMTNumericDataFieldEh
          FieldName = 'jmlh_timbang'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object jmlh_karton: TMTNumericDataFieldEh
          FieldName = 'jmlh_karton'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'A'
            nil
            nil))
      end
    end
  end
  object DsDetailBon: TDataSource
    DataSet = MemDetailbon
    Left = 552
    Top = 384
  end
  object Timer1: TTimer
    Left = 372
    Top = 456
  end
end
