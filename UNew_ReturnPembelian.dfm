object FNew_ReturnPemb: TFNew_ReturnPemb
  Left = 0
  Top = 0
  Caption = 'New Retur Pembelian'
  ClientHeight = 489
  ClientWidth = 937
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    937
    489)
  TextHeight = 15
  object Label8: TLabel
    Left = 92
    Top = 85
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label7: TLabel
    Left = 20
    Top = 85
    Width = 42
    Height = 15
    Caption = 'No. LPB'
  end
  object Label17: TLabel
    Left = 725
    Top = 411
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label14: TLabel
    Left = 653
    Top = 411
    Width = 60
    Height = 15
    Caption = 'Grand Total'
  end
  object Label13: TLabel
    Left = 778
    Top = 376
    Width = 10
    Height = 15
    Caption = '%'
  end
  object Label12: TLabel
    Left = 645
    Top = 52
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label11: TLabel
    Left = 558
    Top = 52
    Width = 77
    Height = 15
    Caption = 'Tanggal Faktur'
  end
  object Label16: TLabel
    Left = 645
    Top = 19
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label15: TLabel
    Left = 558
    Top = 19
    Width = 55
    Height = 15
    Caption = 'No. Faktur'
  end
  object Label10: TLabel
    Left = 725
    Top = 376
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label9: TLabel
    Left = 653
    Top = 376
    Width = 21
    Height = 15
    Caption = 'PPn'
  end
  object Label6: TLabel
    Left = 92
    Top = 52
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label5: TLabel
    Left = 377
    Top = 19
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label4: TLabel
    Left = 92
    Top = 19
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label3: TLabel
    Left = 20
    Top = 19
    Width = 50
    Height = 15
    Caption = 'No. Retur'
  end
  object Label2: TLabel
    Left = 321
    Top = 19
    Width = 41
    Height = 15
    Caption = 'Tanggal'
  end
  object Label1: TLabel
    Left = 20
    Top = 52
    Width = 43
    Height = 15
    Caption = 'Supplier'
  end
  object Label18: TLabel
    Left = 558
    Top = 85
    Width = 23
    Height = 15
    Caption = 'Kurs'
  end
  object Label19: TLabel
    Left = 644
    Top = 85
    Width = 3
    Height = 15
    Caption = ':'
  end
  object edno_terima: TRzComboBox
    Left = 102
    Top = 82
    Width = 203
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 0
    OnChange = edno_terimaChange
  end
  object Edgrandtotal: TRzEdit
    Left = 793
    Top = 408
    Width = 127
    Height = 23
    Text = '0'
    Alignment = taRightJustify
    TabOrder = 1
  end
  object edppn: TRzEdit
    Left = 735
    Top = 373
    Width = 39
    Height = 23
    Text = '10'
    TabOrder = 2
  end
  object EdNoFaktur: TRzComboBox
    Left = 655
    Top = 16
    Width = 265
    Height = 23
    CharCase = ecUpperCase
    TabOrder = 3
  end
  object DtFaktur: TRzDateTimeEdit
    Left = 655
    Top = 49
    Width = 121
    Height = 23
    EditType = etDate
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 4
  end
  object DBGridEh3: TDBGridEh
    Left = 9
    Top = 140
    Width = 920
    Height = 227
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DsDetail
    DynProps = <>
    FooterRowCount = 1
    HorzScrollBar.ExtraPanel.Visible = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SumList.Active = True
    TabOrder = 5
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
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NoFaktur'
        Footers = <>
        Title.Caption = 'No. Faktur'
        Width = 96
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nopo'
        Footers = <>
        Title.Caption = 'No. PO'
        Width = 142
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_stok'
        Footers = <>
        Title.Caption = 'Kode Stok'
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
        Footer.Alignment = taLeftJustify
        Footer.Value = 'Sub Total         :'
        Footer.ValueType = fvtStaticText
        Footers = <>
        Title.Caption = 'Harga'
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
        Title.Caption = 'Total Harga'
        Width = 148
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Edppnrp: TRzEdit
    Left = 793
    Top = 373
    Width = 127
    Height = 23
    Text = '0'
    Alignment = taRightJustify
    TabOrder = 6
  end
  object Panel1: TPanel
    Left = 0
    Top = 453
    Width = 937
    Height = 36
    Align = alBottom
    TabOrder = 7
    ExplicitTop = 496
    object BBatal: TRzBitBtn
      Left = 861
      Top = 1
      Height = 34
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
      ExplicitLeft = 716
      ExplicitHeight = 30
    end
    object BSimpan: TRzBitBtn
      Left = 786
      Top = 1
      Height = 34
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
      ExplicitLeft = 641
      ExplicitHeight = 30
    end
    object RzBitBtn1: TRzBitBtn
      Left = 528
      Top = 4
      Caption = 'RzBitBtn1'
      TabOrder = 2
      OnClick = RzBitBtn1Click
    end
  end
  object Edno: TRzEdit
    Left = 102
    Top = 16
    Width = 203
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 8
  end
  object DtReturn: TRzDateTimeEdit
    Left = 387
    Top = 16
    Width = 121
    Height = 23
    EditType = etDate
    Format = 'dd/mm/yyyy'
    CharCase = ecUpperCase
    TabOrder = 9
    OnChange = DtReturnChange
  end
  object Ednm_supp: TRzButtonEdit
    Left = 183
    Top = 49
    Width = 325
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    Color = clWhite
    TabOrder = 10
    OnChange = Ednm_suppChange
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = Ednm_suppButtonClick
  end
  object Edkd_supp: TRzEdit
    Left = 102
    Top = 49
    Width = 75
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 11
  end
  object Edurut: TEdit
    Left = 387
    Top = 82
    Width = 121
    Height = 23
    TabOrder = 12
  end
  object RzNumericEdit1: TRzNumericEdit
    Left = 655
    Top = 82
    Width = 120
    Height = 23
    TabOrder = 13
    DisplayFormat = ',0;(,0)'
  end
  object RzNumericEdit2: TRzNumericEdit
    Left = 781
    Top = 82
    Width = 139
    Height = 23
    TabOrder = 14
    DisplayFormat = ',0;(,0)'
  end
  object DtTh: TRzDateTimeEdit
    Left = 229
    Top = 111
    Width = 57
    Height = 23
    EditType = etDate
    Format = 'yyyy'
    CharCase = ecUpperCase
    TabOrder = 15
  end
  object DtBln: TRzDateTimeEdit
    Left = 165
    Top = 111
    Width = 57
    Height = 23
    EditType = etDate
    Format = 'mm'
    CharCase = ecUpperCase
    TabOrder = 16
  end
  object DtHr: TRzDateTimeEdit
    Left = 102
    Top = 111
    Width = 57
    Height = 23
    EditType = etDate
    Format = 'dd'
    CharCase = ecUpperCase
    TabOrder = 17
  end
  object DsDetail: TDataSource
    DataSet = MemDetail
    Left = 112
    Top = 288
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    Left = 176
    Top = 288
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_terima: TMTStringDataFieldEh
          FieldName = 'no_terima'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object NoFaktur: TMTStringDataFieldEh
          FieldName = 'NoFaktur'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object qty: TMTNumericDataFieldEh
          FieldName = 'qty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object harga: TMTNumericDataFieldEh
          FieldName = 'harga'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object totalharga: TMTNumericDataFieldEh
          FieldName = 'totalharga'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object nopo: TMTStringDataFieldEh
          FieldName = 'nopo'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object kd_stok: TMTStringDataFieldEh
          FieldName = 'kd_stok'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object QFaktur: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_terima_material')
    Left = 584
    Top = 112
  end
end
