object FNew_SPB: TFNew_SPB
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form New Surat Perintah Bongkar'
  ClientHeight = 561
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  DesignSize = (
    651
    561)
  TextHeight = 15
  object Label17: TLabel
    Left = 25
    Top = 193
    Width = 60
    Height = 15
    Caption = 'Keterangan'
  end
  object Label20: TLabel
    Left = 353
    Top = 102
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label19: TLabel
    Left = 298
    Top = 102
    Width = 39
    Height = 15
    Caption = 'Kepada'
  end
  object Label18: TLabel
    Left = 137
    Top = 193
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label16: TLabel
    Left = 137
    Top = 164
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label15: TLabel
    Left = 25
    Top = 163
    Width = 109
    Height = 15
    Caption = 'Tgl / Jam SP Kembali'
  end
  object Label8: TLabel
    Left = 137
    Top = 102
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label7: TLabel
    Left = 25
    Top = 102
    Width = 98
    Height = 15
    Caption = 'Jam SP Diserhakan'
  end
  object Label14: TLabel
    Left = 137
    Top = 17
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label13: TLabel
    Left = 25
    Top = 17
    Width = 43
    Height = 15
    Caption = 'Supplier'
  end
  object Label12: TLabel
    Left = 353
    Top = 134
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label11: TLabel
    Left = 298
    Top = 134
    Width = 31
    Height = 15
    Caption = 'Driver'
  end
  object Label10: TLabel
    Left = 137
    Top = 134
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label9: TLabel
    Left = 25
    Top = 134
    Width = 78
    Height = 15
    Caption = 'No. Kendaraan'
  end
  object Label6: TLabel
    Left = 353
    Top = 75
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label5: TLabel
    Left = 298
    Top = 76
    Width = 35
    Height = 15
    Caption = 'No. SP'
  end
  object Label4: TLabel
    Left = 137
    Top = 75
    Width = 3
    Height = 15
    Caption = ':'
  end
  object Label3: TLabel
    Left = 25
    Top = 75
    Width = 57
    Height = 15
    Caption = 'Tanggal SP'
  end
  object Label2: TLabel
    Left = 470
    Top = 162
    Width = 3
    Height = 15
    Caption = ':'
    Visible = False
  end
  object Label1: TLabel
    Left = 434
    Top = 168
    Width = 35
    Height = 15
    Caption = 'No PO'
    Visible = False
  end
  object Label21: TLabel
    Left = 25
    Top = 47
    Width = 44
    Height = 15
    Caption = 'Kategori'
  end
  object Edurut: TEdit
    Left = 504
    Top = 190
    Width = 121
    Height = 23
    TabOrder = 0
    Visible = False
  end
  object Ednopo: TRzButtonEdit
    Left = 485
    Top = 160
    Width = 178
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    TabOrder = 1
    Visible = False
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = EdnopoButtonClick
  end
  object EdKepada: TEdit
    Left = 368
    Top = 100
    Width = 135
    Height = 23
    TabOrder = 2
  end
  object Edjam_kembali: TEdit
    Left = 293
    Top = 160
    Width = 135
    Height = 23
    TabOrder = 3
  end
  object EdJam_Serah: TEdit
    Left = 152
    Top = 100
    Width = 135
    Height = 23
    TabOrder = 4
  end
  object Edket: TMemo
    Left = 152
    Top = 189
    Width = 351
    Height = 60
    Lines.Strings = (
      '')
    TabOrder = 5
  end
  object dttgl_kembali: TRzDateTimeEdit
    Left = 152
    Top = 160
    Width = 135
    Height = 23
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 6
  end
  object Ednm_supp: TRzButtonEdit
    Left = 261
    Top = 14
    Width = 282
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnlyColorOnFocus = True
    TabOrder = 7
    AltBtnNumGlyphs = 1
    ButtonNumGlyphs = 1
    OnButtonClick = Ednm_suppButtonClick
  end
  object Edkd_supp: TRzEdit
    Left = 152
    Top = 14
    Width = 103
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 8
  end
  object DBGridEh2: TDBGridEh
    Left = 0
    Top = 263
    Width = 651
    Height = 266
    Align = alBottom
    DataSource = DsDetail
    DynProps = <>
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    TabOrder = 9
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material'
        Footers = <>
        Visible = False
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            OnClick = DBGridEh2Columns1EditButtons0Click
          end>
        FieldName = 'nm_material'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Barang'
        Width = 127
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Kuantum'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Satuan'
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'gudang'
        Footers = <>
        Title.Caption = 'Gudang'
        Width = 179
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            Style = ebsEllipsisEh
            Visible = False
          end>
        FieldName = 'nopo'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No. PO'
        Width = 127
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
  object DBGridEh1: TDBGridEh
    Left = 669
    Top = -3
    Width = 437
    Height = 450
    Anchors = [akLeft, akTop, akRight, akBottom]
    ColumnDefValues.AlwaysShowEditButton = True
    Ctl3D = False
    DataSource = DsPo
    DynProps = <>
    Flat = True
    GridLineParams.DataHorzLines = False
    GridLineParams.GridBoundaries = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghHighlightFocus, dghClearSelection, dghRowHighlight, dghDialogFind, dghColumnResize, dghColumnMove, dghHotTrack, dghExtendVertLines]
    ParentCtl3D = False
    EditButtonsShowOptions = [sebShowOnlyForCurRowEh]
    TabOrder = 10
    TitleParams.BorderInFillStyle = True
    TitleParams.FillStyle = cfstGradientEh
    Visible = False
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object EdPo: TDBLookupComboboxEh
    Left = 368
    Top = 46
    Width = 175
    Height = 21
    AlwaysShowBorder = True
    DynProps = <>
    DataField = ''
    DropDownBox.Columns = <
      item
        FieldName = 'nopo'
        Width = 100
      end
      item
        FieldName = 'tgl_po'
        Width = 80
      end
      item
        FieldName = 'nm_supplier'
        Width = 150
      end
      item
        FieldName = 'status'
        Width = 100
      end>
    DropDownBox.ListSource = DsPo
    DropDownBox.ListSourceAutoFilter = True
    DropDownBox.Options = [dlgColumnResizeEh, dlgColLinesEh]
    DropDownBox.AutoDrop = True
    DropDownBox.Rows = 27
    DropDownBox.ShowTitles = True
    DropDownBox.Sizable = True
    DropDownBox.Width = -1
    EditButtons = <>
    Flat = True
    KeyField = 'nopo'
    ListField = 'nopo'
    ListSource = DsPo
    TabOrder = 11
    Visible = False
  end
  object Eddriver: TRzEdit
    Left = 368
    Top = 131
    Width = 135
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    TabOrder = 12
  end
  object EdnoKend: TRzEdit
    Left = 152
    Top = 131
    Width = 135
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    TabOrder = 13
  end
  object Panel1: TPanel
    Left = 0
    Top = 529
    Width = 651
    Height = 32
    Align = alBottom
    TabOrder = 14
    object BBatal: TRzBitBtn
      Left = 579
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
      ExplicitLeft = 575
    end
    object BSimpan: TRzBitBtn
      Left = 504
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
      ExplicitLeft = 500
    end
    object BEdit: TRzBitBtn
      Left = 429
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
      ExplicitLeft = 425
    end
    object BitBtn1: TBitBtn
      Left = 312
      Top = 3
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 3
      Visible = False
      OnClick = BitBtn1Click
    end
  end
  object EdnoSpb: TRzEdit
    Left = 368
    Top = 72
    Width = 135
    Height = 23
    Text = ''
    CharCase = ecUpperCase
    Color = clInfoBk
    ReadOnly = True
    TabOrder = 15
  end
  object DtSpb: TRzDateTimeEdit
    Left = 152
    Top = 72
    Width = 135
    Height = 23
    EditType = etDate
    CharCase = ecUpperCase
    TabOrder = 16
    OnChange = DtSpbChange
  end
  object DTJam_Serah: TRzDateTimeEdit
    Left = 152
    Top = 100
    Width = 135
    Height = 23
    EditType = etTime
    Format = 'hh:nn'
    TabOrder = 17
  end
  object DTJam_Kembali: TRzDateTimeEdit
    Left = 293
    Top = 160
    Width = 135
    Height = 23
    EditType = etTime
    Format = 'hh:nn'
    TabOrder = 18
  end
  object Edth: TEdit
    Left = 579
    Top = 96
    Width = 58
    Height = 23
    TabOrder = 19
    Visible = False
  end
  object Edbln: TEdit
    Left = 579
    Top = 68
    Width = 58
    Height = 23
    TabOrder = 20
    Visible = False
  end
  object Edhr: TEdit
    Left = 579
    Top = 40
    Width = 58
    Height = 23
    TabOrder = 21
    Visible = False
  end
  object Edkd_sbu: TEdit
    Left = 504
    Top = 219
    Width = 121
    Height = 23
    TabOrder = 22
    Visible = False
  end
  object CbCategori: TComboBox
    Left = 152
    Top = 44
    Width = 135
    Height = 23
    TabOrder = 23
    Text = 'CbCategori'
  end
  object DsDetail: TDataSource
    DataSet = Memdetail
    Left = 536
    Top = 131
  end
  object Memdetail: TMemTableEh
    Active = True
    Params = <>
    Left = 544
    Top = 239
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
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
          DisplayWidth = 50
          currency = False
          Precision = 50
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nopo: TMTStringDataFieldEh
          FieldName = 'nopo'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object gudang: TMTStringDataFieldEh
          FieldName = 'gudang'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
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
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QPo1
    Left = 592
    Top = 117
  end
  object DsPo: TDataSource
    DataSet = Mempo
    Left = 584
    Top = 109
  end
  object Mempo: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    Options = [mtoTextFieldsCaseInsensitive]
    Left = 592
    Top = 204
  end
  object QPo1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'Select A.*, B.nm_supplier from t_po A inner join t_supplier B on' +
        ' A.kd_supplier=B.kd_supplier'
      ' order by A.nopo desc')
    Left = 544
    Top = 77
  end
end
