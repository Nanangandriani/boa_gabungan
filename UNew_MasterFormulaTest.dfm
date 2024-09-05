object FNew_MasterFormula: TFNew_MasterFormula
  Left = 0
  Top = 0
  Caption = 'Form New Master Formula'
  ClientHeight = 492
  ClientWidth = 1073
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
  object Label3: TLabel
    Left = 138
    Top = 13
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label1: TLabel
    Left = 22
    Top = 13
    Width = 58
    Height = 13
    Caption = 'No. Formula'
  end
  object Label4: TLabel
    Left = 22
    Top = 91
    Width = 62
    Height = 13
    Caption = 'Tanggal Test'
  end
  object Label5: TLabel
    Left = 139
    Top = 91
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label7: TLabel
    Left = 420
    Top = 13
    Width = 129
    Height = 13
    Caption = 'Perkiraan Tanggal Produksi'
  end
  object Label8: TLabel
    Left = 22
    Top = 65
    Width = 79
    Height = 13
    Caption = 'Tanggal Formula'
  end
  object Label9: TLabel
    Left = 141
    Top = 65
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label10: TLabel
    Left = 555
    Top = 38
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label11: TLabel
    Left = 420
    Top = 39
    Width = 76
    Height = 13
    Caption = 'Jumlah Timbang'
  end
  object Label12: TLabel
    Left = 555
    Top = 39
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label15: TLabel
    Left = 703
    Top = 39
    Width = 40
    Height = 13
    Caption = 'Timbang'
  end
  object Label16: TLabel
    Left = 420
    Top = 65
    Width = 96
    Height = 13
    Caption = 'Gudang Bahan Baku'
  end
  object Label17: TLabel
    Left = 555
    Top = 65
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label20: TLabel
    Left = 706
    Top = 13
    Width = 17
    Height = 13
    Caption = 'S/D'
  end
  object Label2: TLabel
    Left = 555
    Top = 13
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
  end
  object Label6: TLabel
    Left = 420
    Top = 91
    Width = 64
    Height = 13
    Caption = 'Gudang Kimia'
  end
  object Label13: TLabel
    Left = 555
    Top = 91
    Width = 4
    Height = 13
    Caption = ':'
  end
  object Label14: TLabel
    Left = 22
    Top = 38
    Width = 63
    Height = 13
    Caption = 'Nama Produk'
  end
  object Label18: TLabel
    Left = 139
    Top = 38
    Width = 4
    Height = 13
    Caption = ':'
  end
  object SpeedButton1: TSpeedButton
    Left = 313
    Top = 35
    Width = 23
    Height = 22
    Caption = '---'
    OnClick = SpeedButton1Click
  end
  object EdTimbang: TRzEdit
    Left = 576
    Top = 36
    Width = 121
    Height = 21
    Text = '0'
    CharCase = ecUpperCase
    Color = clInfoBk
    TabOrder = 0
    OnChange = EdTimbangChange
  end
  object DtTest: TRzDateTimeEdit
    Left = 162
    Top = 88
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object DtMulai: TRzDateTimeEdit
    Left = 162
    Top = 62
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 2
  end
  object Edperkiraan: TRzEdit
    Left = 749
    Top = 35
    Width = 164
    Height = 21
    Text = '0'
    CharCase = ecUpperCase
    TabOrder = 3
    Visible = False
  end
  object Edno: TRzEdit
    Left = 162
    Top = 10
    Width = 202
    Height = 21
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 4
  end
  object EdShift: TRzComboBox
    Left = 289
    Top = 62
    Width = 121
    Height = 21
    TabOrder = 5
    Visible = False
    OnSelect = EdShiftSelect
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 120
    Width = 1073
    Height = 340
    Align = alBottom
    DataSource = DataSource1
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    TabOrder = 6
    TitleParams.MultiTitle = True
    OnCellClick = DBGridEh2CellClick
    OnColEnter = DBGridEh2ColEnter
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            OnClick = DBGridEh2Columns0EditButtons0Click
          end>
        FieldName = 'item_code'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kode Barang'
        Width = 106
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Barang'
        Width = 183
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
            Style = ebsGlyphEh
            OnClick = DBGridEh2Columns2EditButtons0Click
          end>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 134
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'stock_code'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kode Stok'
        Width = 152
      end
      item
        CellButtons = <>
        DisplayFormat = '0.000#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'index'
        Footers = <>
        Title.Caption = 'Index|index'
        Width = 57
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_weight'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Index|Total'
        Width = 58
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'unit'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Index|Satuan'
        Width = 54
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'pack_qty'
        Footers = <>
        Title.Caption = 'Karung/Botol|Berat(kg)'
        Width = 56
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pack_unit'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Karung/Botol|Jumlah'
        Width = 84
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'stock_code'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'wh'
        Footers = <>
        Width = 203
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_code'
        Footers = <>
        Visible = False
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'wh_code'
        Footers = <>
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 460
    Width = 1073
    Height = 32
    Align = alBottom
    TabOrder = 7
    ExplicitTop = 459
    ExplicitWidth = 1069
    object BBatal: TRzBitBtn
      Left = 997
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
      ExplicitLeft = 993
    end
    object BSimpan: TRzBitBtn
      Left = 922
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
      ExplicitLeft = 918
    end
    object BEdit: TRzBitBtn
      Left = 847
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
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
      ExplicitLeft = 843
    end
  end
  object DtPMulai: TRzDateTimeEdit
    Left = 576
    Top = 10
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 8
  end
  object DtPSelesai: TRzDateTimeEdit
    Left = 736
    Top = 10
    Width = 121
    Height = 21
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object CbGdKimia: TRzComboBox
    Left = 576
    Top = 88
    Width = 167
    Height = 21
    TabOrder = 10
    OnSelect = EdShiftSelect
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object CbGdBaku: TRzComboBox
    Left = 576
    Top = 62
    Width = 167
    Height = 21
    TabOrder = 11
    OnSelect = CbGdBakuSelect
    Items.Strings = (
      'A'
      'B'
      'C')
  end
  object EdProduk: TRzComboBox
    Left = 162
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 12
    OnSelect = EdProdukSelect
  end
  object Memformuladet: TMemTableEh
    Params = <>
    Left = 317
    Top = 207
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object item_name: TMTStringDataFieldEh
          FieldName = 'item_name'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object item_code: TMTStringDataFieldEh
          FieldName = 'item_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object supplier_name: TMTStringDataFieldEh
          FieldName = 'supplier_name'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object supplier_code: TMTStringDataFieldEh
          FieldName = 'supplier_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object stock_code: TMTStringDataFieldEh
          FieldName = 'stock_code'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object unit: TMTStringDataFieldEh
          FieldName = 'unit'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object wh: TMTStringDataFieldEh
          FieldName = 'wh'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object total_weight: TMTNumericDataFieldEh
          FieldName = 'total_weight'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object pack_qty: TMTNumericDataFieldEh
          FieldName = 'pack_qty'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object total_pack: TMTNumericDataFieldEh
          FieldName = 'total_pack'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object wh_code: TMTStringDataFieldEh
          FieldName = 'wh_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pack_unit: TMTStringDataFieldEh
          FieldName = 'pack_unit'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'TEPUNG LENGKET'
            '001'
            nil
            '0'
            '0'
            8.500000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'TEPUNG ONGGOK'
            '002'
            nil
            '0'
            '0'
            13.000000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'TEPUNG TAPIOKA'
            '003'
            nil
            '0'
            '0'
            2.000000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'TEPUNG BATOK'
            '004'
            nil
            '0'
            '0'
            23.000000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'TEPUNG JATI'
            '005'
            nil
            '0'
            '0'
            18.500000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'TEPUNG DW'
            '006'
            nil
            '0'
            '0'
            0.500000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'TEPUNG PUTUSAN'
            '007'
            nil
            '0'
            '0'
            0.500000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'PREMIX'
            '035'
            nil
            '0'
            '0'
            0.325000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'PARFUM'
            '036'
            nil
            '0'
            '0'
            0.520000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'POTASSIUM NITRATE'
            '027'
            '0.4'
            '0'
            '0'
            0.400000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil)
          (
            'MALACHITE GREEN'
            '026'
            '0.19'
            '0'
            '0'
            0.190000000000000000
            '0'
            '0'
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = Memformuladet
    Left = 381
    Top = 181
  end
  object Memformuladet2: TMemTableEh
    Params = <>
    Left = 317
    Top = 155
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object item_name: TMTStringDataFieldEh
          FieldName = 'item_name'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object item_code: TMTStringDataFieldEh
          FieldName = 'item_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object supplier_name: TMTStringDataFieldEh
          FieldName = 'supplier_name'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object supplier_code: TMTStringDataFieldEh
          FieldName = 'supplier_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object stock_code: TMTStringDataFieldEh
          FieldName = 'stock_code'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object index: TMTStringDataFieldEh
          FieldName = 'index'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object unit: TMTStringDataFieldEh
          FieldName = 'unit'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object wh: TMTStringDataFieldEh
          FieldName = 'wh'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object total_weight: TMTStringDataFieldEh
          FieldName = 'total_weight'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pack_qty: TMTStringDataFieldEh
          FieldName = 'pack_qty'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object total_pack: TMTStringDataFieldEh
          FieldName = 'total_pack'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pack_unit: TMTStringDataFieldEh
          FieldName = 'pack_unit'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'MALACHITE GREEN'
            '026'
            nil
            '0'
            '0'
            '0,19'
            '0'
            '0'
            nil
            '0,19'
            ''
            '0')
          (
            'PONTASSIUM NITRATE'
            '027'
            nil
            '0'
            '0'
            '0,4'
            '0'
            '0'
            nil
            '0,8'
            ''
            '0')
          (
            'PARFUM'
            '036'
            nil
            '0'
            '0'
            '0,325'
            '0'
            '0'
            nil
            '0,325'
            ''
            '0')
          (
            'PREMIX'
            '035'
            nil
            '0'
            '0'
            '0,57'
            '0'
            '0'
            nil
            '0,52'
            ''
            '0')
          (
            'TEPUNG PUTUSAN'
            '007'
            nil
            '0'
            '0'
            '0,5'
            '0'
            '0'
            nil
            '50'
            ''
            '0')
          (
            'TEPUNG DW'
            '006'
            nil
            '0'
            '0'
            '0,5'
            '0'
            '0'
            nil
            '50'
            ''
            '0')
          (
            'TEPUNG JATI'
            '005'
            ''
            '0'
            '0'
            '18,5'
            '0'
            '0'
            nil
            '50'
            ''
            '0')
          (
            'TEPUNG BATOK'
            '004'
            nil
            '0'
            '0'
            '23'
            '0'
            '0'
            nil
            '50'
            ''
            '0')
          (
            'TEPUNG TAPIOKA'
            '003'
            nil
            '0'
            '0'
            '2'
            '0'
            '0'
            nil
            '50'
            ''
            '0')
          (
            'TEPUNG ONGGOK'
            '002'
            nil
            '0'
            '0'
            '13'
            '0'
            '0'
            nil
            '50'
            ''
            '0')
          (
            'TEPUNG LENGKET'
            '001'
            nil
            '0'
            '0'
            '8,5'
            '0'
            '0'
            nil
            '50'
            nil
            '0'))
      end
    end
  end
end
