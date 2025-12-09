object FExportFaktur: TFExportFaktur
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Export Faktur'
  ClientHeight = 530
  ClientWidth = 971
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 971
    Height = 137
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 967
    object RzLabel1: TRzLabel
      Left = 16
      Top = 16
      Width = 69
      Height = 15
      Caption = 'Barang / Jasa'
    end
    object RzLabel2: TRzLabel
      Left = 16
      Top = 45
      Width = 75
      Height = 15
      Caption = 'Jenis Transaksi'
    end
    object RzLabel3: TRzLabel
      Left = 16
      Top = 75
      Width = 118
      Height = 15
      Caption = 'Keterangan Tambahan'
    end
    object RzLabel4: TRzLabel
      Left = 16
      Top = 104
      Width = 65
      Height = 15
      Caption = 'Cap Fasilitas'
    end
    object RzLabel5: TRzLabel
      Left = 376
      Top = 18
      Width = 13
      Height = 15
      Caption = 'TP'
    end
    object RzLabel6: TRzLabel
      Left = 376
      Top = 46
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object RzLabel7: TRzLabel
      Left = 376
      Top = 76
      Width = 34
      Height = 15
      Caption = 'Export'
    end
    object RzLabel8: TRzLabel
      Left = 543
      Top = 46
      Width = 19
      Height = 15
      Caption = 'S/D'
    end
    object cbBarangJasa: TRzComboBox
      Left = 143
      Top = 13
      Width = 208
      Height = 23
      TabOrder = 0
      Items.Strings = (
        'Barang'
        'Jasa')
    end
    object cbExport: TRzComboBox
      Left = 448
      Top = 73
      Width = 208
      Height = 23
      TabOrder = 1
      Items.Strings = (
        'To XML'
        'Validasi Faktur Pajak')
    end
    object dtTglDari: TRzDateTimePicker
      Left = 448
      Top = 44
      Width = 89
      Height = 23
      Date = 45894.000000000000000000
      Format = ''
      Time = 0.645232858798408400
      TabOrder = 2
      OnChange = dtTglDariChange
    end
    object dtTglSampai: TRzDateTimePicker
      Left = 568
      Top = 44
      Width = 89
      Height = 23
      Date = 45894.000000000000000000
      Format = ''
      Time = 0.645232858798408400
      TabOrder = 3
      OnChange = dtTglSampaiChange
    end
    object edKaresidenan: TRzButtonEdit
      Left = 448
      Top = 15
      Width = 289
      Height = 23
      Text = ''
      TabOrder = 4
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKaresidenanButtonClick
    end
    object edJenisTransaksi: TRzButtonEdit
      Left = 143
      Top = 42
      Width = 208
      Height = 23
      Text = ''
      TabOrder = 5
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edJenisTransaksiButtonClick
    end
    object edKetTambahan: TRzButtonEdit
      Left = 143
      Top = 72
      Width = 209
      Height = 23
      Text = ''
      TabOrder = 6
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKetTambahanButtonClick
    end
    object edCapFasilitas: TRzButtonEdit
      Left = 143
      Top = 101
      Width = 208
      Height = 23
      Text = ''
      TabOrder = 7
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edCapFasilitasButtonClick
    end
    object RzBitBtn1: TRzBitBtn
      Left = 448
      Top = 98
      Width = 89
      Height = 33
      Caption = 'Lihat Data'
      TabOrder = 8
      OnClick = RzBitBtn1Click
      NumGlyphs = 2
    end
  end
  object RzPanel2: TRzPanel
    Left = 0
    Top = 489
    Width = 971
    Height = 41
    Align = alBottom
    Color = 15987699
    TabOrder = 1
    ExplicitTop = 488
    ExplicitWidth = 967
    object BBatal: TRzBitBtn
      Left = 894
      Top = 2
      Height = 37
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
      ExplicitLeft = 890
    end
    object BSave: TRzBitBtn
      Left = 819
      Top = 2
      Height = 37
      Align = alRight
      Caption = 'Save'
      TabOrder = 1
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
      ExplicitLeft = 815
    end
    object pnfp: TPanel
      Left = 2
      Top = 2
      Width = 215
      Height = 37
      Align = alLeft
      TabOrder = 2
      object gauge1: TGauge
        Left = 1
        Top = 1
        Width = 213
        Height = 35
        Align = alClient
        Progress = 0
        ExplicitWidth = 260
        ExplicitHeight = 34
      end
    end
  end
  object DBGridOrder: TDBGridEh
    Left = 0
    Top = 172
    Width = 971
    Height = 317
    Align = alClient
    DataSource = DSDetail
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    EmptyDataInfo.Active = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowDetailPanel.Height = 170
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 2
    Columns = <
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pilih'
        Width = 39
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Transaksi'
        Width = 168
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_cust'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pelanggan'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name_pkp'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama PKP'
        Width = 278
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grand_tot'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Total Piutang'
        Width = 124
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'notrans'
            Footers = <>
            Title.Alignment = taCenter
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Kode Barang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Jumlah'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_unit'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object RzPanel3: TRzPanel
    Left = 0
    Top = 137
    Width = 971
    Height = 35
    Align = alTop
    Color = 15987699
    TabOrder = 3
    ExplicitWidth = 967
    object cbTandai: TRzCheckBox
      Left = 16
      Top = 6
      Width = 85
      Height = 19
      Caption = 'Pilih Semua'
      State = cbUnchecked
      TabOrder = 0
      OnClick = cbTandaiClick
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 176
    Top = 304
  end
  object DSDetail: TDataSource
    DataSet = Qdetail
    Left = 384
    Top = 272
  end
  object Qdetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select false as pilih,trans_no,trans_date,code_cust,name_cust,cu' +
        'stomer_name_pkp,grand_tot from get_selling(NULL) ')
    Left = 584
    Top = 208
    object Qdetailtrans_no: TMemoField
      FieldName = 'trans_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Qdetailtrans_date: TDateField
      FieldName = 'trans_date'
      ReadOnly = True
    end
    object Qdetailcode_cust: TMemoField
      FieldName = 'code_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Qdetailname_cust: TMemoField
      FieldName = 'name_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Qdetailcustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Qdetailgrand_tot: TFloatField
      FieldName = 'grand_tot'
      ReadOnly = True
    end
    object Qdetailpilih: TBooleanField
      FieldName = 'pilih'
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
    ReportOptions.CreateDate = 45694.980101134300000000
    ReportOptions.LastChange = 45992.592496793980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 768
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDatasetValidasiFaktur
        DataSetName = 'frxDBDatasetValidasiFaktur'
      end
      item
        DataSet = frxDBDatasetValidasiFakturDet
        DataSetName = 'frxDBDatasetValidasiFakturDet'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 355.600000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 5
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 102.047310000000000000
        Top = 18.897650000000000000
        Width = 1306.205568000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Top = 7.559060000000000000
          Width = 1303.937850000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'VALIDASI FAKTUR PAJAK')
          ParentFont = False
        end
        object nama_pt: TfrxMemoView
          AllowVectorExport = True
          Left = -11.338590000000000000
          Top = 30.236240000000000000
          Width = 1303.937850000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT. HASTA LESTARI JAYA')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 49.133890000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Karesidenan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 71.811070000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Periode')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 49.133890000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 143.622140000000000000
          Top = 71.811070000000000000
          Width = 7.559060000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object karesidenan: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 49.133853390000000000
          Width = 411.968770000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BANTEN')
          ParentFont = False
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 71.093101820000000000
          Width = 411.968770000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Periode 08 Februari 2025 s/d 09 Februari 2025')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Width = 1306.204724410000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 612.283860000000000000
        Visible = False
        Width = 1306.205568000000000000
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165350000000000
        Top = 245.669450000000000000
        Width = 1306.205568000000000000
        Condition = '<frxDBDatasetValidasiFaktur."trans_no">'
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 1306.205568000000000000
          Height = 22.677165350000000000
          Frame.Typ = []
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 49.133890000000000000
          Top = 2.000000000000000000
          Width = 302.362400000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'Referensi : [frxDBDatasetValidasiFaktur."trans_no"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#].')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 3.779530000000000000
        Top = 336.378170000000000000
        Width = 1306.205568000000000000
        object Line37: TfrxLineView
          AllowVectorExport = True
          Width = 1306.204724409450000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165350000000000
        Top = 291.023810000000000000
        Width = 1306.205568000000000000
        DataSet = frxDBDatasetValidasiFaktur
        DataSetName = 'frxDBDatasetValidasiFaktur'
        RowCount = 0
        Stretched = True
        object Subreport1: TfrxSubreport
          AllowVectorExport = True
          Left = 617.952755905512000000
          Width = 124.724201970000000000
          Height = 22.677165350000000000
          Page = Report.Page2
        end
        object frxDBDCetakCoretaxreferensi: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 154.960629921260000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'no_npwp'
          DataSet = frxDBDatasetValidasiFaktur
          DataSetName = 'frxDBDatasetValidasiFaktur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFaktur."no_npwp"]')
          ParentFont = False
        end
        object frxDBDCetakCoretaxtgl_faktur: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Width = 79.370130000000000000
          Height = 22.677165354330700000
          DataField = 'trans_date'
          DataSet = frxDBDatasetValidasiFaktur
          DataSetName = 'frxDBDatasetValidasiFaktur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFaktur."trans_date"]')
          ParentFont = False
        end
        object frxDBDCetakCoretaxnama_pembeli: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Width = 177.637795275591000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'customer_name_pkp'
          DataSet = frxDBDatasetValidasiFaktur
          DataSetName = 'frxDBDatasetValidasiFaktur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFaktur."customer_name_pkp"]')
          ParentFont = False
        end
        object frxDBDCetakDetailCoretaxnofaktur_coretax: TfrxMemoView
          AllowVectorExport = True
          Left = 462.992125984252000000
          Width = 154.960629920000000000
          Height = 18.897650000000000000
          DataField = 'no_inv_tax'
          DataSet = frxDBDatasetValidasiFaktur
          DataSetName = 'frxDBDatasetValidasiFaktur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFaktur."no_inv_tax"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 41.574803150000000000
        Top = 143.622140000000000000
        Width = 1306.205568000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 1306.204724410000000000
          Height = 41.574830000000000000
          Frame.Typ = []
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.999931650000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574830000000000000
          Top = 7.999931650000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 11.779461650000000000
          Width = 177.637910000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA PELANGGAN')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 993.449290000000000000
          Top = 0.440940000000000000
          Width = 101.112473350000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'HARGA SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 1093.601409270000000000
          Top = 7.999931650000000000
          Width = 108.850393700000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DPP ')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 1209.430708560000000000
          Top = 7.999931650000000000
          Width = 93.732283460000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPN 11%')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Width = 154.960730000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NIK / NPWP'
            '( NPWP 16 DIGIT )')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 39.574830000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 124.724490000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 280.480520000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 460.929500000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 992.449290000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 1093.717070000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 1207.102970000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 1305.370750000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 463.016080000000000000
          Top = 11.338590000000000000
          Width = 154.960629920000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'FAKTUR CORETAX')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 618.110700000000000000
          Top = 3.779530000000000000
          Width = 151.181119450000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 617.362710000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 884.410020000000000000
          Top = 3.779530000000000000
          Width = 109.606289450000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 771.024120000000000000
          Top = 3.779530000000000000
          Width = 109.606289450000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 771.024120000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 884.410020000000000000
          Height = 41.574830000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 143.622140000000000000
        Top = 362.834880000000000000
        Width = 1306.205568000000000000
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 6.000000000000000000
          Width = 209.735709550000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat,')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 814.447700230000000000
          Top = 6.000000000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Diperiksa,')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.729660450000000000
          Top = 6.000000000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui,')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 100.488250000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 814.447700230000000000
          Top = 100.488250000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.729660450000000000
          Top = 100.488250000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 118.944960000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Order Handling')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 814.447700230000000000
          Top = 118.944960000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Staff Adm Accounting')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1023.729660450000000000
          Top = 118.944960000000000000
          Width = 209.735709550000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Ka. Non Operational')
          ParentFont = False
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 604.724800000000000000
          Top = 24.897650000000000000
          Height = 86.929190000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 814.488188976378000000
          Top = 6.000000000000000000
          Height = 98.267780000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 1023.874015748030000000
          Top = 21.118120000000000000
          Height = 86.929190000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 1233.637795275590000000
          Top = 22.897650000000000000
          Height = 86.929190000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Memo1: TfrxMemoView
        Align = baBottom
        AllowVectorExport = True
        Left = 1035.591220000000000000
        Top = 759.307577000000000000
        Width = 268.346630000000000000
        Height = 18.897650000000000000
        Visible = False
        Frame.Typ = []
        HAlign = haRight
        Memo.UTF8W = (
          '[Page#] Of [TotalPages#]')
      end
      object create_at: TfrxMemoView
        Align = baBottom
        AllowVectorExport = True
        Left = 3.779530000000000000
        Top = 759.307577000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Visible = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = []
        Memo.UTF8W = (
          'create_at')
        ParentFont = False
      end
      object Line16: TfrxLineView
        AllowVectorExport = True
        Height = 778.204724410000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line23: TfrxLineView
        AllowVectorExport = True
        Left = 1306.204724410000000000
        Height = 778.204724410000000000
        Color = clBlack
        Frame.Typ = [ftLeft]
      end
      object Line36: TfrxLineView
        AllowVectorExport = True
        Top = 777.448818897638000000
        Width = 1306.204724410000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 566.929500000000000000
        Width = 1306.205568000000000000
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 355.600000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 5
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 41.574830000000000000
        Width = 1306.205568000000000000
        DataSet = frxDBDatasetValidasiFakturDet
        DataSetName = 'frxDBDatasetValidasiFakturDet'
        RowCount = 0
        Stretched = True
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          ShiftMode = smWhenOverlapped
          Width = 1306.205568000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object frxDBDCetakDetailCoretaxnama_brg: TfrxMemoView
          AllowVectorExport = True
          Width = 151.181102362205000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'name_item'
          DataSet = frxDBDatasetValidasiFakturDet
          DataSetName = 'frxDBDatasetValidasiFakturDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFakturDet."name_item"]')
          ParentFont = False
        end
        object frxDBDCetakDetailCoretaxsatuan: TfrxMemoView
          AllowVectorExport = True
          Left = 152.724490000000000000
          Width = 109.606299212598000000
          Height = 22.677165350000000000
          DataField = 'name_unit'
          DataSet = frxDBDatasetValidasiFakturDet
          DataSetName = 'frxDBDatasetValidasiFakturDet'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFakturDet."name_unit"]')
          ParentFont = False
        end
        object frxDBDCetakDetailCoretaxjml_brg: TfrxMemoView
          AllowVectorExport = True
          Left = 264.094620000000000000
          Width = 109.606299212598000000
          Height = 22.677165350000000000
          DataField = 'amount'
          DataSet = frxDBDatasetValidasiFakturDet
          DataSetName = 'frxDBDatasetValidasiFakturDet'
          DisplayFormat.FormatStr = '#,###,###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFakturDet."amount"]')
          ParentFont = False
        end
        object frxDBDCetakDetailCoretaxharga_satuan_coretax: TfrxMemoView
          AllowVectorExport = True
          Left = 373.685220000000000000
          Width = 101.291338582677000000
          Height = 22.677165350000000000
          DataField = 'unit_price'
          DataSet = frxDBDatasetValidasiFakturDet
          DataSetName = 'frxDBDatasetValidasiFakturDet'
          DisplayFormat.FormatStr = '#,###,###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFakturDet."unit_price"]')
          ParentFont = False
        end
        object frxDBDCetakDetailCoretaxdpp_coretax: TfrxMemoView
          AllowVectorExport = True
          Left = 477.512060000000000000
          Width = 108.850393700000000000
          Height = 22.677165350000000000
          DataField = 'sub_total'
          DataSet = frxDBDatasetValidasiFakturDet
          DataSetName = 'frxDBDatasetValidasiFakturDet'
          DisplayFormat.FormatStr = '#,###,###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFakturDet."sub_total"]')
          ParentFont = False
        end
        object frxDBDCetakDetailCoretaxppn_coretax: TfrxMemoView
          AllowVectorExport = True
          Left = 586.897960000000000000
          Width = 97.511813460000000000
          Height = 22.677165350000000000
          DataField = 'ppn_value'
          DataSet = frxDBDatasetValidasiFakturDet
          DataSetName = 'frxDBDatasetValidasiFakturDet'
          DisplayFormat.FormatStr = '#,###,###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetValidasiFakturDet."ppn_value"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Height = 22.677165354330700000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 151.724490000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 263.094620000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 374.464750000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 476.732530000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 586.897960000000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 18.897650000000000000
        Width = 1306.205568000000000000
        Condition = '<frxDBDatasetValidasiFakturDet."trans_no">'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165350000000000
        Top = 86.929190000000000000
        Width = 1306.205568000000000000
        object Shape3: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 1306.205568000000000000
          Height = 22.677165350000000000
          Frame.Typ = []
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.000000000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 476.291590000000000000
          Width = 109.606299210000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '#,###,###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIf(((SUM(<frxDBDatasetValidasiFakturDet."sub_total">,MasterDat' +
              'a2)) - TRUNC(SUM(<frxDBDatasetValidasiFakturDet."sub_total">,Mas' +
              'terData2))) >= 0.50, TRUNC(SUM(<frxDBDatasetValidasiFakturDet."s' +
              'ub_total">,MasterData2))+1, TRUNC(SUM(<frxDBDatasetValidasiFaktu' +
              'rDet."sub_total">,MasterData2)))]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 588.118430000000000000
          Width = 94.488179210000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '#,###,###,###0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[IIf(((SUM(<frxDBDatasetValidasiFakturDet."ppn_value">,MasterDat' +
              'a2)) - TRUNC(SUM(<frxDBDatasetValidasiFakturDet."ppn_value">,Mas' +
              'terData2))) >= 0.50, TRUNC(SUM(<frxDBDatasetValidasiFakturDet."p' +
              'pn_value">,MasterData2))+1, TRUNC(SUM(<frxDBDatasetValidasiFaktu' +
              'rDet."ppn_value">,MasterData2)))]')
          ParentFont = False
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 477.598425200000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 586.960629921260000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object frxDBDatasetValidasiFaktur: TfrxDBDataset
    UserName = 'frxDBDatasetValidasiFaktur'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'no_inv_tax=no_inv_tax'
      'customer_name_pkp=customer_name_pkp'
      'trans_date=trans_date'
      'no_npwp=no_npwp')
    DataSet = QReport
    BCDToCurrency = False
    DataSetOptions = []
    Left = 800
    Top = 192
  end
  object QReport: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select trans_no,no_inv_tax,customer_name_pkp,trans_date,coalesce' +
        '(no_npwp,no_nik)no_npwp from get_selling(NULL)')
    Left = 832
    Top = 104
  end
  object QReportDetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select trans_no,code_item,name_item,amount,name_unit,unit_price,' +
        'sub_total,ppn_percent,ppn_value from t_selling_det '
      '')
    MasterSource = DSReport
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 832
    Top = 184
    ParamData = <
      item
        DataType = ftMemo
        Name = 'trans_no'
        ParamType = ptInput
        Value = 'FP/004/16/X/2025/HLJ/BKS'
      end>
  end
  object DSReport: TDataSource
    DataSet = QReport
    Left = 872
    Top = 112
  end
  object frxDBDatasetValidasiFakturDet: TfrxDBDataset
    UserName = 'frxDBDatasetValidasiFakturDet'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'code_item=code_item'
      'name_item=name_item'
      'amount=amount'
      'name_unit=name_unit'
      'unit_price=unit_price'
      'sub_total=sub_total'
      'ppn_percent=ppn_percent'
      'ppn_value=ppn_value')
    DataSet = QReportDetail
    BCDToCurrency = False
    DataSetOptions = []
    Left = 736
    Top = 248
  end
end
