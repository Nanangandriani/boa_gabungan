object FPengajuanAsset: TFPengajuanAsset
  Left = 417
  Top = 154
  ClientHeight = 583
  ClientWidth = 1000
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  TextHeight = 16
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1000
    Height = 34
    Align = alTop
    Caption = 'MONITORING PENGAJUAN ASSET'
    Color = 15987699
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = 16744448
    ParentFont = False
    TabOrder = 0
    VisualStyle = vsGradient
    ExplicitWidth = 994
  end
  object Panel1: TPanel
    Left = 0
    Top = 34
    Width = 1000
    Height = 143
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    ExplicitWidth = 994
    object Label15: TLabel
      Left = 27
      Top = 25
      Width = 152
      Height = 22
      Caption = 'STATUS PENGAJUAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 27
      Top = 53
      Width = 118
      Height = 22
      Caption = 'TANGGAL AWAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 27
      Top = 85
      Width = 121
      Height = 22
      Caption = 'TANGGAL AKHIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 27
      Top = 118
      Width = 95
      Height = 16
      Caption = 'F2 : DAFTAR MERK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dtAwal: TRzDateTimeEdit
      Left = 226
      Top = 52
      Width = 226
      Height = 26
      EditType = etDate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      ParentFont = False
      TabOrder = 0
    end
    object btTampilkan: TRzBitBtn
      Left = 454
      Top = 75
      Width = 136
      Height = 33
      Align = alCustom
      Caption = 'TAMPILKAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
    object cbStatusPengajuan: TComboBox
      Left = 226
      Top = 22
      Width = 344
      Height = 26
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      OnChange = cbStatusPengajuanChange
    end
    object Memo2: TMemo
      Left = 640
      Top = 8
      Width = 705
      Height = 57
      TabOrder = 3
      Visible = False
    end
    object dtAkhir: TRzDateTimeEdit
      Left = 226
      Top = 84
      Width = 226
      Height = 26
      EditType = etDate
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      ParentFont = False
      TabOrder = 4
    end
    object ckTandai: TCheckBox
      Left = 594
      Top = 84
      Width = 153
      Height = 17
      Caption = 'TANDAI SEMUA'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object pnprogress: TPanel
      Left = 696
      Top = 112
      Width = 393
      Height = 26
      ParentBackground = False
      TabOrder = 6
      Visible = False
      object Gauge1: TGauge
        Left = 3
        Top = 4
        Width = 386
        Height = 18
        Progress = 0
      end
    end
  end
  object DBGridEh3: TDBGridEh
    Left = 0
    Top = 177
    Width = 1000
    Height = 367
    Align = alClient
    DataSource = dsMasterPengajuan
    DynProps = <>
    FooterRowCount = 1
    HorzScrollBar.ExtraPanel.Visible = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnKeyUp = DBGridEh3KeyUp
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUBMISSION_ID'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUBMISSION_CODE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'NO. PENGAJUAN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUBMISSION_DATE'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'TANGGAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUBMISSION_COMPANY'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ITEM_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'NAMA BARANG'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UNIT'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'SATUAN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BRAND'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'BRAND_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'MERK'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CATEGORY'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'CATEGORY_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'KATEGORI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'QTY'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SUBMISSION_DESCRIPTION'
        Footers = <>
        Title.Caption = 'KETERANGAN'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'SPESIFICATION'
        Footers = <>
        Title.Caption = 'SPESIFIKASI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS'
        Footers = <>
        ReadOnly = True
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'PO'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'NO. PO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'LPB'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'NO. LPB'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STATUS_NAME'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'STATUS'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'STAT_APPRV'
        Footers = <>
        Title.Caption = 'PILIH'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 50
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 544
    Width = 1000
    Height = 39
    Align = alBottom
    TabOrder = 3
    ExplicitTop = 535
    ExplicitWidth = 994
    object btProses: TRzBitBtn
      Left = 863
      Top = 1
      Width = 136
      Height = 37
      Alignment = taLeftJustify
      Align = alRight
      Caption = 'PROSES'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btProsesClick
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
      ExplicitLeft = 857
    end
  end
  object http: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
  end
  object dsMasterPengajuan: TDataSource
    DataSet = MemMasterPengajuan
    Left = 640
    Top = 320
  end
  object MemMasterPengajuan: TMemTableEh
    Active = True
    Params = <>
    Left = 680
    Top = 320
    object MemMasterPengajuanID: TStringField
      FieldName = 'ID'
      Size = 100
    end
    object MemMasterPengajuanSUBMISSION_ID: TStringField
      FieldName = 'SUBMISSION_ID'
      Size = 100
    end
    object MemMasterPengajuanSUBMISSION_CODE: TStringField
      FieldName = 'SUBMISSION_CODE'
      Size = 100
    end
    object MemMasterPengajuanSUBMISSION_DATE: TDateField
      FieldName = 'SUBMISSION_DATE'
    end
    object MemMasterPengajuanSUBMISSION_COMPANY: TStringField
      FieldName = 'SUBMISSION_COMPANY'
      Size = 5
    end
    object MemMasterPengajuanITEM: TStringField
      FieldName = 'ITEM'
      Size = 100
    end
    object MemMasterPengajuanITEM_NAME: TStringField
      FieldName = 'ITEM_NAME'
      Size = 200
    end
    object MemMasterPengajuanUNIT: TStringField
      FieldName = 'UNIT'
    end
    object MemMasterPengajuanCATEGORY: TStringField
      FieldName = 'CATEGORY'
      Size = 100
    end
    object MemMasterPengajuanCATEGORY_NAME: TStringField
      FieldName = 'CATEGORY_NAME'
      Size = 200
    end
    object MemMasterPengajuanQTY: TFloatField
      FieldName = 'QTY'
    end
    object MemMasterPengajuanSUBMISSION_DESCRIPTION: TStringField
      FieldName = 'SUBMISSION_DESCRIPTION'
      Size = 300
    end
    object MemMasterPengajuanSPESIFICATION: TStringField
      FieldName = 'SPESIFICATION'
      Size = 300
    end
    object MemMasterPengajuanSTATUS: TStringField
      FieldName = 'STATUS'
    end
    object MemMasterPengajuanPO: TStringField
      FieldName = 'PO'
      Size = 50
    end
    object MemMasterPengajuanLPB: TStringField
      FieldName = 'LPB'
      Size = 50
    end
    object MemMasterPengajuanSTATUS_NAME: TStringField
      FieldName = 'STATUS_NAME'
      Size = 100
    end
    object MemMasterPengajuanSTAT_APPRV: TBooleanField
      FieldName = 'STAT_APPRV'
    end
    object MemMasterPengajuanBRAND: TStringField
      FieldName = 'BRAND'
      Size = 50
    end
    object MemMasterPengajuanBRAND_NAME: TStringField
      FieldName = 'BRAND_NAME'
      Size = 100
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object ID: TMTStringDataFieldEh
          FieldName = 'ID'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object SUBMISSION_ID: TMTStringDataFieldEh
          FieldName = 'SUBMISSION_ID'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object SUBMISSION_CODE: TMTStringDataFieldEh
          FieldName = 'SUBMISSION_CODE'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object SUBMISSION_DATE: TMTDateTimeDataFieldEh
          FieldName = 'SUBMISSION_DATE'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object SUBMISSION_COMPANY: TMTStringDataFieldEh
          FieldName = 'SUBMISSION_COMPANY'
          StringDataType = fdtStringEh
          DisplayWidth = 5
          Size = 5
        end
        object ITEM: TMTStringDataFieldEh
          FieldName = 'ITEM'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object ITEM_NAME: TMTStringDataFieldEh
          FieldName = 'ITEM_NAME'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object UNIT: TMTStringDataFieldEh
          FieldName = 'UNIT'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object CATEGORY: TMTStringDataFieldEh
          FieldName = 'CATEGORY'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object CATEGORY_NAME: TMTStringDataFieldEh
          FieldName = 'CATEGORY_NAME'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object QTY: TMTNumericDataFieldEh
          FieldName = 'QTY'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object SUBMISSION_DESCRIPTION: TMTStringDataFieldEh
          FieldName = 'SUBMISSION_DESCRIPTION'
          StringDataType = fdtStringEh
          DisplayWidth = 300
          Size = 300
        end
        object SPESIFICATION: TMTStringDataFieldEh
          FieldName = 'SPESIFICATION'
          StringDataType = fdtStringEh
          DisplayWidth = 300
          Size = 300
        end
        object STATUS: TMTStringDataFieldEh
          FieldName = 'STATUS'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object PO: TMTStringDataFieldEh
          FieldName = 'PO'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object LPB: TMTStringDataFieldEh
          FieldName = 'LPB'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object STATUS_NAME: TMTStringDataFieldEh
          FieldName = 'STATUS_NAME'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object STAT_APPRV: TMTBooleanDataFieldEh
          FieldName = 'STAT_APPRV'
          DisplayWidth = 20
        end
        object BRAND: TMTStringDataFieldEh
          FieldName = 'BRAND'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object BRAND_NAME: TMTStringDataFieldEh
          FieldName = 'BRAND_NAME'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 256
    Top = 154
  end
end
