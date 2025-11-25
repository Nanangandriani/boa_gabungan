object F_cetak_sisa_htg: TF_cetak_sisa_htg
  Left = 0
  Top = 0
  Caption = 'F_cetak_sisa_htg'
  ClientHeight = 442
  ClientWidth = 1050
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 15
  object DBGridSisaHutang: TDBGridEh
    Left = 0
    Top = 127
    Width = 1050
    Height = 315
    Align = alClient
    DataSource = DSisaHutang
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'principle_code'
        Footers = <>
        Visible = False
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'principle_name'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 200
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'tot_hutang'
        Footers = <>
        Title.Caption = 'Total Hutang'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'h1'
        Footers = <>
        Title.Caption = 'Periode Minggu Ini'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'h2'
        Footers = <>
        Title.Caption = 'Minggu Lalu'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'h3'
        Footers = <>
        Title.Caption = '> 2 Minggu'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tot_rcn'
        Footers = <>
        Title.Caption = 'Rencana Pelunasan'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        DynProps = <>
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1050
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object QTgl_hutang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_tmpsyst')
    Left = 792
    Top = 152
  end
  object frxReport2: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44125.442920347200000000
    ReportOptions.LastChange = 45734.465250763900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1000
    Top = 192
    Datasets = <
      item
        DataSet = frxDBDataset4
        DataSetName = 'frxDBDataset4'
      end
      item
        DataSet = frxDBDataset_Sisa_Hutang
        DataSetName = 'frxDBDataset_Sisa_hutang'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDatasetSupp'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 325.039580000000000000
        Width = 1171.654300000000000000
        DataSet = frxDBDataset_Sisa_Hutang
        DataSetName = 'frxDBDataset_Sisa_hutang'
        RowCount = 0
        object frxDBDataset1no_faktur_pajak: TfrxMemoView
          AllowVectorExport = True
          Left = 60.252010000000000000
          Width = 115.275600310000000000
          Height = 47.622054570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset_trans."faktur_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1piutang_dagang: TfrxMemoView
          AllowVectorExport = True
          Left = 438.677428000000000000
          Width = 112.476809090000000000
          Height = 47.622054570000000000
          DataField = 'nilai_debit'
          DisplayFormat.FormatStr = '# ###,### ,###.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_trans."nilai_debit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 553.134200000000000000
          Width = 96.377950310000000000
          Height = 47.622054570000000000
          DisplayFormat.FormatStr = '# ###,### ,###.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_trans."kredit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 761.158010000000000000
          Height = 36.283464570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 1169.922080000000000000
          Height = 36.283464570000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 52.015770000000000000
          Width = 1169.385826770000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxDBDataset1day: TfrxMemoView
          AllowVectorExport = True
          Width = 57.826771650000000000
          Height = 47.622054570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset_trans."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1deskripsi: TfrxMemoView
          AllowVectorExport = True
          Left = 179.417440000000000000
          Width = 261.165354330000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[(<frxDBDataset_trans."ket">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 654.858690000000000000
          Top = 7.559060000000000000
          Width = 105.826840000000000000
          Height = 37.795300000000000000
          DisplayFormat.FormatStr = '# ###,### ,###.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_trans."saldo"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.165349450000000000
        Top = 438.425480000000000000
        Width = 1171.654300000000000000
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 551.866482000000000000
          Top = 1.440940000000000000
          Width = 97.580052500000000000
          Height = 28.724409450000000000
          DisplayFormat.FormatStr = '#,###;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 1.220470000000000000
          Width = 440.692913385827000000
          Height = 28.724404570000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '   JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 761.378480000000000000
          Top = 0.661410000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 816.850960000000000000
          Top = 0.661410000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 887.221090000000000000
          Top = 0.440940000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 947.150280000000000000
          Top = 0.440940000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 1083.331480000000000000
          Top = 0.440940000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 1170.142550000000000000
          Top = 0.440940000000000000
          Height = 28.724409450000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 0.708720000000000000
          Width = 1169.386283230000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 0.015770000000000000
          Top = 29.763760000000000000
          Width = 1169.386283230000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 443.635436660000000000
          Top = 1.107606660000000000
          Width = 108.850393700000000000
          Height = 28.724409450000000000
          DisplayFormat.FormatStr = '#,###;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
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
        Height = 243.567151260000000000
        Top = 18.897650000000000000
        Width = 1171.654300000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 162.086580000000000000
          Width = 108.346526670000000000
          Height = 14.398209520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NO. TELEPON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 160.527520000000000000
          Width = 21.597314290000000000
          Height = 18.357717140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 6.379082380000000000
          Top = 135.850340000000000000
          Width = 85.669346670000000000
          Height = 14.398209520000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'ALAMAT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Top = 135.629870000000000000
          Width = 672.756340000000000000
          Height = 30.236240000000000000
          DataField = 'address'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDatasetSupp'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSupp."address"]')
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.622760000000000000
          Top = 134.629870000000000000
          Width = 21.597314290000000000
          Height = 18.357717140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 949.236860000000000000
          Top = 133.409400000000000000
          Width = 127.424154290000000000
          Height = 25.196866670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'JANGKA DEBET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 120.165430000000000000
          Top = 131.850340000000000000
          Width = 21.597314290000000000
          Height = 18.357717140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset2pelanggan: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842519685039000000
          Top = 108.173160000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'supplier_name'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDatasetSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSupp."supplier_name"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 6.425196850393700000
          Top = 106.653473330000000000
          Width = 112.306034290000000000
          Height = 17.997761900000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NAMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 120.583885710000000000
          Top = 105.653473330000000000
          Width = 21.597314290000000000
          Height = 18.357717140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 1064.622760000000000000
          Top = 105.393630000000000000
          Width = 21.597314290000000000
          Height = 18.357717140000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 949.437083810000000000
          Top = 103.053920950000000000
          Width = 97.187914290000000000
          Height = 25.196866670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'NO HUTANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 98.779527560000000000
          Width = 1170.141732280000000000
          Height = 83.149606300000000000
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 16.304708570000000000
          Width = 1167.874015750000000000
          Height = 21.057381430000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KARTU HUTANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 1170.141732280000000000
          Height = 99.023622050000000000
          Frame.Typ = []
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 55.811070000000000000
          Top = 181.858380000000000000
          Width = 120.585004760000000000
          Height = 39.994964290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor Faktur')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Top = 181.637910000000000000
          Width = 59.338582680000000000
          Height = 40.328297620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 176.094620000000000000
          Top = 181.858380000000000000
          Width = 264.207144760000000000
          Height = 39.994964290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 442.086890000000000000
          Top = 181.858380000000000000
          Width = 110.246414760000000000
          Height = 39.994964290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Debet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 552.354670000000000000
          Top = 182.525046670000000000
          Width = 97.907824760000000000
          Height = 39.328297620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 650.568646670000000000
          Top = 181.858380000000000000
          Width = 110.079748090000000000
          Height = 39.994964290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 762.158010000000000000
          Top = 183.952753460000000000
          Width = 55.073151430000000000
          Height = 38.355479050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl Bayar')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 816.630490000000000000
          Top = 182.952753460000000000
          Width = 70.191271430000000000
          Height = 39.355479050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Bank')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 888.000620000000000000
          Top = 183.952753460000000000
          Width = 58.852681430000000000
          Height = 38.355479050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor Check/Giro')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 947.929810000000000000
          Top = 183.952753460000000000
          Width = 70.191271430000000000
          Height = 38.355479050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tgl Jatuh Tempo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 1016.520410000000000000
          Top = 183.952753460000000000
          Width = 66.411741430000000000
          Height = 38.355479050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1081.331480000000000000
          Top = 182.952753460000000000
          Width = 89.088921430000000000
          Height = 39.355479050000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Catatan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Page: TfrxMemoView
          AllowVectorExport = True
          Left = 1017.929810000000000000
          Top = 57.559060000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Lembar ke')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 761.658010000000000000
          Top = 224.669513460000000000
          Width = 55.573151430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 816.630490000000000000
          Top = 224.669513460000000000
          Width = 70.191271430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 884.221090000000000000
          Top = 224.669513460000000000
          Width = 62.632211430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 944.150280000000000000
          Top = 224.669513460000000000
          Width = 73.970801430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 1016.520410000000000000
          Top = 224.669513460000000000
          Width = 66.411741430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 1081.331480000000000000
          Top = 224.669513460000000000
          Width = 89.088921430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 55.811070000000000000
          Top = 224.669513460000000000
          Width = 120.585004760000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Top = 224.503937010000000000
          Width = 59.338582680000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 176.094620000000000000
          Top = 224.669513460000000000
          Width = 264.207144760000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 441.086890000000000000
          Top = 224.669513460000000000
          Width = 113.025944760000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 551.521336670000000000
          Top = 224.669513460000000000
          Width = 98.741158090000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 706.567410000000000000
          Top = 224.669513460000000000
          Width = 55.073151430000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 650.568646670000000000
          Top = 224.669513460000000000
          Width = 108.261566270000000000
          Height = 18.897637800000000000
          DisplayFormat.FormatStr = '#,###'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Top = 229.496290000000000000
          Height = 458.834645669291000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 59.133890000000000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 176.503937007874000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 440.512060000000000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 552.897960000000000000
          Top = 225.067718570000000000
          Height = 463.263217100000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 650.999073330000000000
          Top = 223.996290000000000000
          Height = 464.334645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 761.196850390000000000
          Top = 223.996290000000000000
          Height = 464.334645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 816.755905510000000000
          Top = 224.496290000000000000
          Height = 463.370078740158000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 886.677165350000000000
          Top = 224.716760000000000000
          Height = 463.370078740000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 946.771653540000000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 1017.826771653540000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 1082.725110000000000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 1170.519685039370000000
          Top = 229.496290000000000000
          Height = 458.834645670000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 23.677180000000000000
          Top = 18.118120000000000000
          Width = 388.189136670000000000
          Height = 14.398209520000000000
          DataField = 'company_name'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."company_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 24.779530000000000000
          Top = 35.236240000000000000
          Width = 386.543496670000000000
          Height = 48.413979520000000000
          DataField = 'address'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '[frxDBDataset4."address"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 139.000000000000000000
          Top = 160.102350000000000000
          Width = 179.630180000000000000
          Height = 18.897650000000000000
          DataField = 'telp'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDatasetSupp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSupp."telp"]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDatasetSupp'
    CloseDataSource = False
    FieldAliases.Strings = (
      'supplier_code=supplier_code'
      'supplier_name=supplier_name'
      'address=address'
      'telp=telp'
      'supplier1_name=supplier1_name'
      'npwp=npwp'
      'contact_person=contact_person'
      'pph=pph'
      'id=id'
      'created_at=created_at'
      'created_by=created_by'
      'updated_at=updated_at'
      'updated_by=updated_by'
      'deleted_at=deleted_at'
      'deleted_by=deleted_by'
      'supplier_code2=supplier_code2'
      'header_code=header_code'
      'account_code=account_code'
      'header_code_um=header_code_um'
      'account_code_um=account_code_um'
      'status_id=status_id')
    DataSet = Qsupp
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1022
    Top = 88
  end
  object DSsupp: TDataSource
    DataSet = Qsupp
    Left = 1016
    Top = 88
  end
  object Qsupp: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_supplier where deleted_at is null')
    Left = 968
    Top = 88
  end
  object frxSisaHutang: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44945.462862835700000000
    ReportOptions.LastChange = 45920.349230196800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 264
    Datasets = <
      item
        DataSet = frxDBDataset_Sisa_Hutang
        DataSetName = 'frxDBDataset_Sisa_hutang'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 10000
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      DataSet = frxDBDataset4
      DataSetName = 'frxDBDataset4'
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 241.889920000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDataset_Sisa_Hutang
        DataSetName = 'frxDBDataset_Sisa_hutang'
        RowCount = 0
        Stretched = True
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Width = 29.102362200000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FLap_Buku_Harian_Kas.frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 28.724409450000000000
          Width = 149.669291340000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'principle_name'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."principle_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 278.173228350000000000
          Width = 100.157480310000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'htg_blm_jatuh_tempo'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."htg_blm_jatuh_tempo"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 450.897637800000000000
          Width = 71.055118110000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'h2'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."h2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 594.007874020000000000
          Width = 71.055118110000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'tot_rcn'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."tot_rcn"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 664.062992125984000000
          Width = 92.220472440944900000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637795280000000000
          Top = 0.889610000000000000
          Width = 100.157480310000000000
          Height = 22.677165350000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'tot_hutang'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."tot_hutang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 522.952755910000000000
          Top = 0.889610000000000000
          Width = 71.055118110000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'h3'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."h3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 379.086614170000000000
          Width = 71.055118110000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'h1'
          DataSet = frxDBDataset_Sisa_Hutang
          DataSetName = 'frxDBDataset_Sisa_hutang'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset_Sisa_hutang."h1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 5.000000000000000000
          Top = 1.110080000000000000
          Width = 19.488250000000000000
          Height = 17.897650000000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
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
        Height = 140.582664960000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        OnBeforePrint = 'PageHe'
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Width = 755.906000000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN SISA HUTANG')
          ParentFont = False
        end
        object Memperiode: TfrxMemoView
          AllowVectorExport = True
          Top = 45.236240000000000000
          Width = 755.906000000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Periode :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Top = 16.000000000000000000
          Width = 226.771653540000000000
          Height = 27.118120000000000000
          DataField = 'company_name'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."company_name"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Top = 36.677180000000000000
          Width = 250.771653540000000000
          Height = 41.574830000000000000
          StretchMode = smMaxHeight
          DataField = 'address'
          DataSet = frxDBDataset4
          DataSetName = 'frxDBDataset4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset4."address"]')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 81.283464570000000000
          Width = 29.102362200000000000
          Height = 58.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 28.724409448818900000
          Top = 81.283464570000000000
          Width = 149.669291340000000000
          Height = 58.582677170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 379.314960630000000000
          Top = 81.283464570000000000
          Width = 214.157480310000000000
          Height = 29.102362204724400000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hutang Telah Jatuh Tempo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 593.007874015748000000
          Top = 81.283464570000000000
          Width = 71.055118110000000000
          Height = 58.582677170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Rencana Pelunasan Hutang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 664.062992125984000000
          Top = 81.283464570000000000
          Width = 92.220472440944900000
          Height = 58.582677170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 672.094930000000000000
          Top = 3.779530000000000000
          Width = 94.795300000000000000
          Height = 47.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Hal. [PAGE#] dari [TOTALPAGES#]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 177.637795280000000000
          Top = 81.283464570000000000
          Width = 100.157480314961000000
          Height = 58.582677170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Hutang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Jenis_Hutang: TfrxMemoView
          AllowVectorExport = True
          Left = 230.000000000000000000
          Top = 24.102350000000000000
          Width = 296.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 379.086614173228000000
          Top = 110.362204720000000000
          Width = 71.055118110236200000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Periode Minggu ini')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 521.952755905512000000
          Top = 110.251968500000000000
          Width = 71.055118110000000000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '> 2 Minggu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 450.897637795276000000
          Top = 110.251968500000000000
          Width = 71.055118110236200000
          Height = 29.480314960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Periode Lalu')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 278.173228346457000000
          Top = 81.283464570000000000
          Width = 100.157480314961000000
          Height = 58.582677170000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hutang Belum Jatuh Tempo')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 219.212740000000000000
        Visible = False
        Width = 755.906000000000000000
        OnBeforePrint = 'Header1OnBeforePrint'
      end
      object ColumnFooter1: TfrxColumnFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015748030000000000
        Top = 325.039580000000000000
        Width = 755.906000000000000000
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 28.724409450000000000
          Top = 3.779527560000000000
          Width = 149.669291340000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo16: TfrxSysMemoView
          AllowVectorExport = True
          Left = 278.173228350000000000
          Top = 3.779527560000000000
          Width = 100.157480310000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Top = 3.779527560000000000
          Width = 755.905511810000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo15: TfrxSysMemoView
          AllowVectorExport = True
          Left = 177.637795280000000000
          Top = 3.779527560000000000
          Width = 100.157480310000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset_Sisa_hutang."tot_hutang">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 379.086614170000000000
          Top = 4.023622050000000000
          Width = 71.055118110000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset_Sisa_hutang."h1">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 450.897637800000000000
          Top = 5.023622050000000000
          Width = 71.055118110000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset_Sisa_hutang."h2">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 521.952755910000000000
          Top = 4.023622050000000000
          Width = 71.055118110000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset_Sisa_hutang."h3">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 593.007874020000000000
          Top = 4.023622050000000000
          Width = 71.055118110000000000
          Height = 30.236220470000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset_Sisa_hutang."tot_rcn">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 101.897650000000000000
        Top = 381.732530000000000000
        Width = 755.906000000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 0.377952755905512000
          Width = 277.929133860000000000
          Height = 101.669291340000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 278.000000000000000000
          Top = 0.267470000000000000
          Width = 173.078740160000000000
          Height = 23.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 450.000000000000000000
          Top = 0.267470000000000000
          Width = 142.897637800000000000
          Height = 23.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 593.000000000000000000
          Top = 0.267470000000000000
          Width = 161.897637800000000000
          Height = 23.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 278.000000000000000000
          Top = 24.267470000000000000
          Width = 173.078740160000000000
          Height = 77.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 450.000000000000000000
          Top = 24.267470000000000000
          Width = 144.078740160000000000
          Height = 77.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 593.000000000000000000
          Top = 24.267470000000000000
          Width = 164.078740160000000000
          Height = 77.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 10.000000000000000000
          Top = 5.267470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KETERANGAN :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 629.000000000000000000
          Top = 2.267470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 320.000000000000000000
          Top = 2.267470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 475.000000000000000000
          Top = 2.267470000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui,')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object QCetakSisaHutang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select supplier_code principle_code, principle_name, tot_hutang:' +
        ':numeric tot_hutang,h1,h2,h3,tot_rcn,sum(tot_hutang-h1-h2-h3) as' +
        ' htg_blm_jatuh_tempo FROM (SELECT rrr.supplier_code,'#9'rrr.princip' +
        'le_code,'#9'rrr.principle_name,'#9'tot_hutang,'#9'h1,'#9'h2,'#9'h3,'#9'tot_rcn FRO' +
        'M (SELECT * FROM (select supplier_code from t_supplier) s LEFT J' +
        'OIN (select supp.principle_code,supp.principle_name, (case when ' +
        'hutang.sisa_hutang is null then 0 else hutang.sisa_hutang end)to' +
        't_hutang, (case when mggini.sisa_hutang is null then 0 else mggi' +
        'ni.sisa_hutang end)h1,(case when mgglalu.sisa_hutang is null the' +
        'n 0 else mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_huta' +
        'ng is null then 0 else mgg_lbh.sisa_hutang end)h3, (case when rc' +
        'n.tot_rcn is null then 0 else rcn.tot_rcn end)tot_rcn from (sele' +
        'ct id,supplier_code as principle_code,supplier_name as principle' +
        '_name from t_supplier order by supplier_code)supp left join (sel' +
        'ect jj.kodesup,jj.saldo_awal_tahun+jj.kredit -jj.debit-jj.debit_' +
        'do-jj.debit_retur-jj.nilai_pot sisa_hutang from (select a.suppli' +
        'er_code as kodesup,case when saldo_awal.initial_balance is null ' +
        'then 0 else saldo_awal.initial_balance end saldo_awal_tahun,(cas' +
        'e when x.nilai is null then 0 else x.nilai end)kredit, (case whe' +
        'n y.nilai is null then 0 else y.nilai end)debit,(case when debit' +
        '_do.nilai is null then 0 else debit_do.nilai end)debit_do, (case' +
        ' when z.nilai is null then 0 else z.nilai end)debit_retur, (case' +
        ' when xx.nilai_pot is null then 0 else xx.nilai_pot end)nilai_po' +
        't from (select * from t_supplier )a left join (select kodesup,su' +
        'm(nilai)-sum(nilai_um) as nilai from (select a.*,(case when b.ni' +
        'lai_um is null then 0 else b.nilai_um end)nilai_um from  (select' +
        ' a.supplier_code as kodesup,b.po_no,(case when a.valas='#39'USD'#39' the' +
        'n sum(nilai*valas_value) else sum(nilai) end)nilai from (select ' +
        '* from t_purchase_invoice a INNER JOIN v_ak_account b on a.accou' +
        'nt_code=b.account_code2 where b.code='#39'2101.01'#39' and  trans_date  ' +
        'between '#39'2024-01-01'#39' and '#39'2025-09-16'#39' )a left join (select trans' +
        '_no,po_no,stock_code as kode,qty,unit as jumlah,grandtotal as ni' +
        'lai, 0 as urutan from t_purchase_invoice_det )b on a.trans_no=b.' +
        'trans_no  group by kodesup,b.po_no,a.valas)a left join(select po' +
        '_no,supplier_code,sum(um_value)as nilai_um from t_po where um_st' +
        'atus=true and po_date<='#39'2025-09-17'#39' group by po_no,supplier_code' +
        ' order by po_no,supplier_code)b on a.po_no=b.po_no and a.kodesup' +
        '=b.supplier_code)x group by kodesup )x on a.supplier_code=x.kode' +
        'sup left join(select supplier_code as kodesup,sum(bayar) as nila' +
        'i from(select a.voucher_no,a.supplier_code,a.bayar,(case when b.' +
        'saldo is null then 0 else b.saldo end)nilai_kredit from (select ' +
        'voucher_no,supplier_code,sum(paid_amount)as bayar,b.code from t_' +
        'cash_bank_expenditure_payable a INNER JOIN v_ak_account b on a.a' +
        'ccount_acc= b.account_code2  where b.code='#39'2101.01'#39' and a.trans_' +
        'date between '#39'2024-01-01'#39' and '#39'2025-09-17'#39' group by voucher_no,s' +
        'upplier_code,b.code order by voucher_no,supplier_code,b.code)a l' +
        'eft join (select voucher,sum(saldo)as saldo from t_credit_trx_re' +
        'al where account_code<>'#39'2130.02'#39' group by voucher order by vouch' +
        'er)b '#9'on a.voucher_no=b.voucher)x group by supplier_code order b' +
        'y supplier_code)y on a.supplier_code=y.kodesup left join(select ' +
        'b.supplier_code as kodesup,(case when b.valas='#39'USD'#39' then sum(a.t' +
        'otal_price*b.valas_value) else sum(a.total_price) end)nilai from' +
        ' t_purchase_return_det a INNER JOIN t_purchase_return b on a.ret' +
        'urn_no=b.return_no left join t_purchase_invoice dd on b.receive_' +
        'no=dd.trans_no INNER JOIN v_ak_account ee on dd.account_code= ee' +
        '.account_code2 where a.return_no=b.return_no and return_date bet' +
        'ween '#39'2024-01-01'#39' and '#39'2025-09-17'#39' and ee.code='#39'2101.01'#39' group b' +
        'y b.supplier_code,b.valas order by b.supplier_code)z on a.suppli' +
        'er_code=z.kodesup left join(select bb.supplier_code,sum(bb.price' +
        '_rp)+sum(bb.ppnrp)as nilai_pot from t_purchase_discount bb left ' +
        'join t_purchase_invoice dd on bb.receive_no=dd.ref_no INNER JOIN' +
        ' v_ak_account ee ON dd.account_code= ee.account_code2 where bb.d' +
        'iscount_date between '#39'2024-01-01'#39' and '#39'2025-09-17'#39' and ee.code='#39 +
        '2101.01'#39' group by bb.supplier_code order by bb.supplier_code)xx ' +
        'on a.supplier_code=xx.supplier_code left join(select kodesup,sum' +
        '(nilai)as nilai from (select a.bk_no as noinv,  '#39#39' kodesup, b.tg' +
        'ltrans as tanggal,a.account_code as kode,a.remark,a.pay as nilai' +
        ',a.urutan from (select voucher_no ,bk_no ,account_code,remark,pa' +
        'y,4 as urutan from t_payment_detail_real where source_id=3 and a' +
        'ccount_code='#39'2101.01'#39' )a left join (select distinct voucher_no,t' +
        'rans_date as tgltrans from (SELECT a.voucher_no,a.trans_date,b.c' +
        'ode_account,b."position",c.code from t_cash_bank_expenditure a I' +
        'NNER JOIN t_cash_bank_expenditure_det b on a.voucher_no=b.no_vou' +
        'cher INNER JOIN v_ak_account c on b.code_account= c.account_code' +
        '2 )h where h.trans_date between '#39'2024-01-01'#39' and '#39'2025-09-17'#39' an' +
        'd h.code='#39'2101.01'#39' and h.position='#39'D'#39')b on a.bk_no=b.voucher_no ' +
        ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup' +
        ' left join (select * from t_initial_balance_debt where debt_type' +
        '='#39'2101.01'#39' and year = (select to_char(debt_date, '#39'YYYY'#39') from t_' +
        'tmpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.su' +
        'pplier_code) jj)hutang on supp.principle_code=hutang.kodesup lef' +
        't join (select kodesup,sum(sisa_hutang)as sisa_hutang from (SELE' +
        'CT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(pot) ' +
        '- SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM (SELECT A.trans' +
        '_no AS tanggal,'#9'A.supplier_code AS kodesup,C.supplier_name AS na' +
        'sup,A.trans_no AS no_inv, '#9'A.faktur_no AS nofakturpajak,A.faktur' +
        '_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltempo, ( ' +
        'CASE WHEN A.valas = '#39'USD'#39' THEN b.hutang * A.valas_value ELSE b.h' +
        'utang END ) jumlah, ( CASE WHEN A.um_value IS NULL THEN 0 ELSE A' +
        '.um_value END ) um, '#9'A.valas,( CASE WHEN retur.nil_retur IS NULL' +
        ' THEN 0 ELSE retur.nil_retur END ) nil_retur, b.npph,( CASE WHEN' +
        ' byr.paid_amount IS NULL THEN 0 ELSE byr.paid_amount END ) bayar' +
        ', (case when pot.price_rp is null then 0 else pot.price_rp end)p' +
        'ot  FROM (SELECT'#9'*'#9'FROM t_purchase_invoice'#9'a INNER JOIN v_ak_acc' +
        'ount b on a.account_code=b.account_code2 WHERE b.code = '#39'2101.01' +
        #39'  AND ( sj_status = 1 ) AND ( fk_status = 1 )'#9'AND ( invoice_sta' +
        'tus = 1 )'#9'and trans_date>='#39'2024-01-01'#39#9'AND ( faktur_date + due_d' +
        'ate ) BETWEEN '#39'2025-09-17'#39#9'AND '#39'2025-09-17'#39')'#9'A LEFT JOIN (SELECT' +
        ' trans_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph ' +
        'FROM t_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no' +
        '  ) b ON A.trans_no = b.trans_no LEFT JOIN t_supplier C ON A.sup' +
        'plier_code = C.supplier_code LEFT JOIN (SELECT A.receive_no,'#9'SUM' +
        ' ( A.total_price * b.valas_value ) AS nil_retur '#9'FROM t_purchase' +
        '_return_det A INNER JOIN t_purchase_return B ON'#9'A.return_no = b.' +
        'return_no WHERE b.return_date < '#39'2025-09-17'#39#9'GROUP BY A.receive_' +
        'no ORDER BY A.receive_no ) retur ON A.trans_no = retur.receive_n' +
        'o LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount' +
        ' FROM t_cash_bank_expenditure_payable WHERE trans_date < '#39'2025-0' +
        '9-17'#39' ) byr ON A.trans_no = byr.invoice_no '#9'left join(select * f' +
        'rom t_purchase_discount where discount_date<='#39'2025-09-17'#39')pot on' +
        ' a.trans_no=pot.receive_no '#9') xxx GROUP BY'#9'kodesup union all SEL' +
        'ECT'#9'kodesup,'#9'SUM ( sisa_hutang ) AS sisa_hutang FROM ('#9'SELECT ko' +
        'desup,faktur_no,hutang,'#9'bayar,hutang - bayar AS sisa_hutang FROM' +
        ' (SELECT'#9'x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.b' +
        'ayar IS NULL THEN 0 ELSE y.bayar END ) bayar FROM ( SELECT suppl' +
        'ier_code AS kodesup, faktur_no, faktur_no AS no_terima, date as ' +
        'tanggal, debt_amount AS nilai FROM t_initial_balance_debt_det a ' +
        'INNER JOIN v_ak_account b on a.debt_type=b.account_code2 WHERE b' +
        '.code ='#39'2101.01'#39' ) x LEFT JOIN (SELECT'#9'supplier_code,faktur_no,i' +
        'nvoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM t_cash_' +
        'bank_expenditure_payable a INNER JOIN v_ak_account b on a.accoun' +
        't_acc=b.account_code2 WHERE'#9'b.code ='#39'2101.01'#39#9'AND trans_date BET' +
        'WEEN '#39'2024-01-01'#39' AND '#39'2025-09-17'#39' GROUP BY supplier_code,faktur' +
        '_no,invoice_no ORDER BY'#9'supplier_code,faktur_no,invoice_no) y ON' +
        ' x.kodesup = y.supplier_code '#9'AND x.faktur_no = y.faktur_no'#9') A ' +
        'WHERE'#9'hutang - bayar  > 0 ) xx GROUP BY'#9'kodesup'#9')x group by kode' +
        'sup order by kodesup )mggini on supp.principle_code=mggini.kodes' +
        'up left join (select kodesup,sum(sisa_hutang)as sisa_hutang from' +
        ' (SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum' +
        '(pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang FROM (SELECT A' +
        '.trans_date AS tanggal,'#9'A.supplier_code AS kodesup,C.supplier_na' +
        'me AS nasup,A.trans_no AS no_inv,A.faktur_no AS nofakturpajak,A.' +
        'faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) AS tgltem' +
        'po, ( CASE WHEN A.valas = '#39'USD'#39' THEN b.hutang * A.valas_value EL' +
        'SE b.hutang END ) jumlah,'#9'( CASE WHEN A.um_value IS NULL THEN 0 ' +
        'ELSE A.um_value END ) um, A.valas,( CASE WHEN retur.nil_retur IS' +
        ' NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '#9'b.npph,( CAS' +
        'E WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END ) bayar, (cas' +
        'e when pot.price_rp is null then 0 else pot.price_rp end)pot  FR' +
        'OM (SELECT'#9'*'#9'FROM t_purchase_invoice a INNER JOIN v_ak_account b' +
        ' ON a.account_code=b.account_code2'#9'WHERE b.code ='#39'2101.01'#39'  AND ' +
        '( sj_status = 1 ) AND ( fk_status = 1 )'#9'AND ( invoice_status = 1' +
        ' )'#9'and trans_date>='#39'2024-01-01'#39#9'AND ( faktur_date + due_date ) B' +
        'ETWEEN '#39'2025-09-10'#39#9'AND '#39'2025-09-16'#39')'#9'A LEFT JOIN ( SELECT trans' +
        '_no, SUM ( grandtotal ) AS hutang, SUM ( pph_rp ) AS npph FROM t' +
        '_purchase_invoice_det  GROUP BY trans_no ORDER BY trans_no ) b O' +
        'N A.trans_no = b.trans_no'#9'LEFT JOIN t_supplier C ON A.supplier_c' +
        'ode = C.supplier_code LEFT JOIN (SELECT A.receive_no,'#9'SUM ( A.to' +
        'tal_price * b.valas_value ) AS nil_retur '#9'FROM t_purchase_return' +
        '_det A INNER JOIN t_purchase_return b ON A.return_no = b.return_' +
        'no WHERE b.return_date < '#39'2025-09-17'#39#9'GROUP BY A.receive_no ORDE' +
        'R BY A.receive_no) retur ON A.trans_no = retur.receive_no LEFT J' +
        'OIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no as no' +
        '_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_payable W' +
        'HERE trans_date < '#39'2025-09-17'#39' ) byr ON A.trans_no = byr.no_lpb ' +
        'left join (select * from t_purchase_discount where discount_date' +
        '<='#39'2025-09-17'#39')pot on a.ref_no=pot.receive_no ) xxx GROUP BY'#9'kod' +
        'esup union all SELECT kodesup,'#9'SUM (sisa_hutang ) AS sisa_hutang' +
        ' FROM (SELECT kodesup,faktur_no,hutang,'#9'bayar,hutang - bayar AS ' +
        'sisa_hutang FROM (SELECT'#9'x.kodesup,x.faktur_no,x.nilai AS hutang' +
        ',( CASE WHEN y.bayar IS NULL THEN 0 ELSE y.bayar END ) bayar FRO' +
        'M ( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_' +
        'terima, date, debt_amount AS nilai FROM t_initial_balance_debt_d' +
        'et a INNER JOIN v_ak_account b on a.debt_type=b.account_code2  W' +
        'HERE b.code = '#39'2101.01'#39') x LEFT JOIN (SELECT'#9'supplier_code as kd' +
        '_supp,faktur_no AS nofaktur,invoice_no AS no_terima,SUM ( paid_a' +
        'mount ) AS bayar FROM'#9't_cash_bank_expenditure_payable a INNER JO' +
        'IN v_ak_account b on a.account_acc=b.account_code2  WHERE b.code' +
        '= '#39'2101.01'#39#9'AND trans_date BETWEEN '#39'2024-01-01'#39' AND '#39'2025-09-17'#39 +
        ' GROUP BY supplier_code,faktur_no,invoice_no ORDER BY'#9'supplier_c' +
        'ode,faktur_no,invoice_no) y ON x.kodesup = y.kd_supp '#9'AND x.fakt' +
        'ur_no = y.nofaktur'#9') A WHERE'#9'hutang - bayar  > 0 ) xx GROUP BY'#9'k' +
        'odesup'#9')x'#9'group by kodesup order by kodesup )mgglalu on supp.pri' +
        'nciple_code=mgglalu.kodesup left join (select kodesup,sum(sisa_h' +
        'utang)as sisa_hutang from (SELECT DISTINCT kodesup,SUM ( jumlah ' +
        ') - SUM ( nil_retur )-sum(pot) - SUM ( bayar ) - SUM ( um ) AS s' +
        'isa_hutang FROM (SELECT A.trans_date AS tanggal,'#9'A.supplier_code' +
        ' AS kodesup,C.supplier_name AS nasup,A.trans_no AS no_inv, A.fak' +
        'tur_no AS nofakturpajak,A.faktur_date AS tglfaktur,(A.faktur_dat' +
        'e + A.due_date ) AS tgltempo, ( CASE WHEN A.valas = '#39'USD'#39' THEN b' +
        '.hutang * A.valas_value ELSE b.hutang END ) jumlah, ( CASE WHEN ' +
        'A.um_value IS NULL THEN 0 ELSE A.um_value END ) um, '#9'A.valas,( C' +
        'ASE WHEN retur.nil_retur IS NULL THEN 0 ELSE retur.nil_retur END' +
        ' ) nil_retur, b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ' +
        'ELSE byr.paid_amount END ) bayar, (case when pot.harga_rp is nul' +
        'l then 0 else pot.harga_rp end)pot FROM (SELECT'#9'*'#9'FROM t_purchas' +
        'e_invoice'#9'a INNER JOIN v_ak_account b on a.account_code=b.accoun' +
        't_code2 WHERE b.code= '#39'2101.01'#39'  AND ( sj_status = 1 ) AND ( fk_' +
        'status = 1 )'#9'AND ( invoice_status = 1 )'#9'and trans_date>='#39'2024-01' +
        '-01'#39#9'AND ( faktur_date + due_date ) BETWEEN '#39'2024-01-01'#39#9'AND '#39'20' +
        '25-09-09'#39')'#9'A LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS ' +
        'hutang, SUM ( pph_rp ) AS npph FROM t_purchase_invoice_det  GROU' +
        'P BY trans_no ORDER BY trans_no ) b ON A.trans_no = b.trans_no L' +
        'EFT JOIN t_supplier C ON A.supplier_code = C.supplier_code LEFT ' +
        'JOIN (SELECT A.receive_no,'#9'SUM ( A.total_price * b.valas_value )' +
        ' AS nil_retur '#9'FROM t_purchase_return_det A INNER JOIN t_purchas' +
        'e_return b '#9'ON A.return_no = b.return_no WHERE  b.return_date < ' +
        #39'2025-09-17'#39' GROUP BY A.receive_no '#9'ORDER BY A.receive_no ) retu' +
        'r ON A.trans_no = retur.receive_no LEFT JOIN ( SELECT DISTINCT f' +
        'aktur_no , invoice_no , paid_amount  FROM t_cash_bank_expenditur' +
        'e_payable WHERE trans_date < '#39'2025-09-17'#39' ) byr ON A.trans_no = ' +
        'byr.invoice_no left join (select receive_no,sum(price_rp)as harg' +
        'a_rp from t_purchase_discount where discount_date<='#39'2025-09-17'#39' ' +
        'group by receive_no order by receive_no ) pot on a.ref_no=pot.re' +
        'ceive_no ) xxx GROUP BY'#9'kodesup union all SELECT'#9'kodesup,'#9'SUM ( ' +
        'sisa_hutang ) AS sisa_hutang FROM ( SELECT kodesup,faktur_no,hut' +
        'ang,'#9'bayar,hutang - bayar AS sisa_hutang FROM (SELECT'#9'x.kodesup,' +
        'x.faktur_no,x.nilai AS hutang,( CASE WHEN y.bayar IS NULL THEN 0' +
        ' ELSE y.bayar END ) bayar  FROM ( SELECT supplier_code AS kodesu' +
        'p, faktur_no, faktur_no AS no_terima, date, debt_amount AS nilai' +
        ' FROM t_initial_balance_debt_det a INNER JOIN v_ak_account b on ' +
        'a.debt_type=b.account_code2 WHERE b.code ='#39'2101.01'#39' ) x LEFT JOI' +
        'N (SELECT'#9'supplier_code,faktur_no AS nofaktur,invoice_no AS no_t' +
        'erima,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_' +
        'payable a INNER JOIN v_ak_account b on a.account_acc=b.account_c' +
        'ode2 WHERE'#9'b.code = '#39'2101.01'#39#9'AND trans_date BETWEEN '#39'2024-01-01' +
        #39' AND '#39'2025-09-17'#39' GROUP BY supplier_code,faktur_no,invoice_no O' +
        'RDER BY'#9'supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.s' +
        'upplier_code '#9'AND x.faktur_no = y.nofaktur'#9') A WHERE'#9'hutang - ba' +
        'yar  > 0 ) xx GROUP BY'#9'kodesup'#9')x'#9'group by kodesup order by kode' +
        'sup )mgg_lbh on supp.principle_code=mgg_lbh.kodesup left join (s' +
        'elect aa.supplier_code,sum(aa.amount)as tot_rcn from t_paid_debt' +
        '_det aa LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no' +
        ' INNER JOIN v_ak_account cc ON bb.account_code=cc.account_code2 ' +
        'where (aa.periode1='#39'2025-09-17'#39') and (aa.periode2='#39'2025-09-17'#39') ' +
        'and cc.code='#39'2101.01'#39' group by aa.supplier_code order by aa.supp' +
        'lier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx on ' +
        's.supplier_code=xxxx.principle_code) rrr LEFT JOIN (select suppl' +
        'ier_code,sum(initial_balance) saldo_awal from t_initial_balance_' +
        'debt where year='#39'2024'#39' group by supplier_code) saldo_awal_hut on' +
        ' rrr.supplier_code=saldo_awal_hut.supplier_code where tot_hutang' +
        '+case when saldo_awal is NULL then 0 else saldo_awal end>0 and t' +
        'ot_hutang+h1+h2+h3+tot_rcn >0 )kkkk GROUP BY supplier_code,princ' +
        'iple_name,tot_hutang,h1,h2,h3,tot_rcn'
      '')
    Left = 704
    Top = 320
    object QCetakSisaHutangprinciple_code: TStringField
      FieldName = 'principle_code'
      ReadOnly = True
      Size = 10
    end
    object QCetakSisaHutangprinciple_name: TStringField
      FieldName = 'principle_name'
      ReadOnly = True
      Size = 100
    end
    object QCetakSisaHutangtot_hutang: TFloatField
      FieldName = 'tot_hutang'
      ReadOnly = True
    end
    object QCetakSisaHutangh1: TFloatField
      FieldName = 'h1'
      ReadOnly = True
    end
    object QCetakSisaHutangh2: TFloatField
      FieldName = 'h2'
      ReadOnly = True
    end
    object QCetakSisaHutangh3: TFloatField
      FieldName = 'h3'
      ReadOnly = True
    end
    object QCetakSisaHutangtot_rcn: TFloatField
      FieldName = 'tot_rcn'
      ReadOnly = True
    end
    object QCetakSisaHutanghtg_blm_jatuh_tempo: TFloatField
      FieldName = 'htg_blm_jatuh_tempo'
      ReadOnly = True
    end
  end
  object frxDBDataset_Sisa_Hutang: TfrxDBDataset
    UserName = 'frxDBDataset_Sisa_hutang'
    CloseDataSource = False
    FieldAliases.Strings = (
      'principle_code=principle_code'
      'principle_name=principle_name'
      'tot_hutang=tot_hutang'
      'h1=h1'
      'h2=h2'
      'h3=h3'
      'tot_rcn=tot_rcn'
      'htg_blm_jatuh_tempo=htg_blm_jatuh_tempo')
    DataSet = QCetakSisaHutang
    BCDToCurrency = False
    DataSetOptions = []
    Left = 816
    Top = 312
  end
  object DSQTgl_Hutang: TDataSource
    DataSet = QTgl_hutang
    Left = 856
    Top = 176
  end
  object QSisaHutang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select supplier_code principle_code, principle_name, tot_hutang:' +
        ':numeric tot_hutang,h1,h2,h3,tot_rcn from '
      
        '(SELECT rrr.supplier_code,'#9'rrr.principle_code,'#9'rrr.principle_nam' +
        'e,'#9'tot_hutang,'#9'h1,'#9'h2,'#9'h3,'#9'tot_rcn FROM'
      '(SELECT * FROM'
      '(select supplier_code from t_supplier) s '
      'LEFT JOIN (select supp.principle_code,supp.principle_name,'
      
        ' (case when hutang.sisa_hutang is null then 0 else hutang.sisa_h' +
        'utang end)tot_hutang,'
      
        ' (case when mggini.sisa_hutang is null then 0 else mggini.sisa_h' +
        'utang end)h1,(case when mgglalu.sisa_hutang is null then 0 else ' +
        'mgglalu.sisa_hutang end)h2,(case when mgg_lbh.sisa_hutang is nul' +
        'l then 0 else mgg_lbh.sisa_hutang end)h3,'
      
        ' (case when rcn.tot_rcn is null then 0 else rcn.tot_rcn end)tot_' +
        'rcn from  '
      
        '(select id,supplier_code as principle_code,supplier_name as prin' +
        'ciple_name from t_supplier order by supplier_code)supp  '
      
        'left join (select jj.kodesup,jj.saldo_awal_tahun+jj.kredit --+jj' +
        '.kredit_do'
      '-jj.debit'
      '-jj.debit_do'
      '-jj.debit_retur-jj.nilai_pot sisa_hutang from '
      ''
      
        '(select a.supplier_code as kodesup,case when saldo_awal.initial_' +
        'balance is null then 0 else saldo_awal.initial_balance end saldo' +
        '_awal_tahun,(case when x.nilai is null then 0 else x.nilai end)k' +
        'redit,'
      
        '--(case when kredit_do.nilai is null then 0 else kredit_do.nilai' +
        ' end)kredit_do,'
      
        '(case when y.nilai is null then 0 else y.nilai end)debit,(case w' +
        'hen debit_do.nilai is null then 0 else debit_do.nilai end)debit_' +
        'do,(case when z.nilai is null then 0 else z.nilai end)debit_retu' +
        'r, (case when xx.nilai_pot is null then 0 else xx.nilai_pot end)' +
        'nilai_pot from  '
      '(select * from t_supplier )a '
      
        'left join (select kodesup,sum(nilai)-sum(nilai_um) as nilai from' +
        '  '
      
        '(select a.*,(case when b.nilai_um is null then 0 else b.nilai_um' +
        ' end)nilai_um from  (select a.supplier_code as kodesup,b.po_no,(' +
        'case when a.valas='#39'USD'#39' then sum(nilai*valas_value) else sum(nil' +
        'ai) end)nilai from '
      
        '(select * from t_purchase_invoice a INNER JOIN v_ak_account b on' +
        ' a.account_code=b.account_code2 where b.code='#39'2101.01'#39' and accou' +
        'nt_um_code <> '#39'1151.03'#39' and  trans_date  between '#39'2022-01-01'#39' an' +
        'd '#39'2025-09-03'#39' )a  left join (select trans_no,po_no,stock_code a' +
        's kode,qty,unit as jumlah,grandtotal as nilai, 0 as urutan from ' +
        't_purchase_invoice_det )b on a.trans_no=b.trans_no  group by kod' +
        'esup,b.po_no,a.valas)a  '
      
        'left join(select po_no,supplier_code,sum(um_value)as nilai_um fr' +
        'om t_po where um_status=true and po_date<='#39'2025-09-03'#39' group by ' +
        'po_no,supplier_code order by po_no,supplier_code)b on a.po_no=b.' +
        'po_no and a.kodesup=b.supplier_code)x  group by kodesup )x on a.' +
        'supplier_code=x.kodesup  '
      ''
      
        'left join(select supplier_code as kodesup,sum(bayar) as nilai fr' +
        'om(select a.voucher_no,a.supplier_code,a.bayar,(case when b.sald' +
        'o is null then 0 else b.saldo end)nilai_kredit from (select vouc' +
        'her_no,supplier_code,sum(paid_amount)as bayar,b.code from t_cash' +
        '_bank_expenditure_payable a INNER JOIN v_ak_account b on a.accou' +
        'nt_acc= b.account_code2  where b.code='#39'2101.01'#39' and  a.trans_dat' +
        'e between '#39'2022-01-01'#39' and '#39'2025-09-03'#39' group by voucher_no,supp' +
        'lier_code,b.code order by voucher_no,supplier_code,b.code)a '#9
      
        'left join (select voucher,sum(saldo)as saldo from t_credit_trx_r' +
        'eal where account_code<>'#39'2142'#39' group by voucher order by voucher' +
        ')b '#9'on a.voucher_no=b.voucher)x '#9
      
        'group by supplier_code order by supplier_code)y on a.supplier_co' +
        'de=y.kodesup     '
      
        'left join(select b.supplier_code as kodesup,(case when b.valas='#39 +
        'USD'#39' then sum(a.total_price*b.valas_value) else sum(a.total_pric' +
        'e) end)nilai from t_purchase_return_det a INNER JOIN t_purchase_' +
        'return b on a.return_no=b.return_no left join t_purchase_invoice' +
        ' dd on b.receive_no=dd.trans_no'
      
        'INNER JOIN v_ak_account ee on dd.account_code= ee.account_code2 ' +
        'where a.return_no=b.return_no and return_date between '#39'2022-01-0' +
        '1'#39' and '#39'2025-09-03'#39' and ee.code='#39'2101.01'#39' group by b.supplier_co' +
        'de,b.valas order by b.supplier_code)z on a.supplier_code=z.kodes' +
        'up  '
      
        'left join(select bb.supplier_code,sum(bb.price_rp)+sum(bb.ppnrp)' +
        'as nilai_pot from t_purchase_discount bb left join t_purchase_in' +
        'voice dd on bb.receive_no=dd.ref_no INNER JOIN v_ak_account ee O' +
        'N dd.account_code= ee.account_code2 where bb.discount_date betwe' +
        'en '#39'2022-01-01'#39' and '#39'2025-09-03'#39' and ee.code='#39'2101.01'#39' group by ' +
        'bb.supplier_code order by bb.supplier_code)xx on a.supplier_code' +
        '=xx.supplier_code  '
      
        '--left join(select kodesup,sum(nilai)as nilai from(select no_do ' +
        'as noinv,tujuan as kodesup,tgl_do as tanggal,up as kode,ket as k' +
        'eterangan,harga as nilai,1 as urutan from t_do_penjualan where t' +
        'gl_do between '#39'2022-01-01'#39' and '#39'2025-09-03'#39' and substring(kd_aku' +
        'n,1,4)='#39'2110'#39' '
      '--union all  '
      
        '--select nodo as noinv,kd_supplier_angkutan as kodesup,tgl_do as' +
        ' tanggal,pic as kode,ket as keterangan,harga as nilai,2 as uruta' +
        'n from t_do where tgl_do between '#39'2022-01-01'#39' and '#39'2025-09-03'#39' a' +
        'nd substring(kd_akun,1,4)='#39'2110'#39' )x group by kodesup)kredit_do o' +
        'n a.kd_supplier=kredit_do.kodesup  '
      'left join(select kodesup,sum(nilai)as nilai from'
      
        '(select a.bk_no as noinv,--(case when c.kd_supplier_angkutan is ' +
        'null then d.tujuan else c.kd_supplier_angkutan end)kodesup'
      
        #39#39' kodesup, b.tgltrans as tanggal,a.account_code as kode,a.remar' +
        'k,a.pay as nilai,a.urutan from  '
      
        '(select voucher_no ,bk_no ,account_code,remark,pay,4 as urutan f' +
        'rom t_payment_detail_real where source_id=3 and account_code='#39'21' +
        '01.01'#39' )a  '
      'left join '
      
        '--(select distinct voucher,tgltrans from tkas where tgltrans bet' +
        'ween '#39'2022-01-01'#39' and '#39'2025-09-03'#39'  '
      '--union '
      
        '(select distinct voucher_no,trans_date as tgltrans from (SELECT ' +
        'a.voucher_no,a.trans_date,b.code_account,b."position",c.code fro' +
        'm t_cash_bank_expenditure a INNER JOIN t_cash_bank_expenditure_d' +
        'et b on a.voucher_no=b.no_voucher INNER JOIN v_ak_account c on b' +
        '.code_account= c.account_code2 )h where h.trans_date between '#39'20' +
        '22-01-01'#39' and '#39'2025-09-03'#39' and h.code='#39'2101.01'#39' and h.position='#39 +
        'D'#39')b on a.bk_no=b.voucher_no  '
      '--left join t_do c on a.voucher_no=c.nodo  '
      
        '--left join t_do_penjualan d on a.voucher_no=d.no_do where b.vou' +
        'cher is not null'
      
        '--)x  group by kodesup)debit_do on a.supplier_code=debit_do.kode' +
        'sup '
      
        ')x group by kodesup)debit_do on a.supplier_code=debit_do.kodesup' +
        ' '
      ' '
      
        'left join (select * from t_initial_balance_debt where debt_type=' +
        #39'2101.01'#39' and year = (select to_char(debt_date, '#39'YYYY'#39') from t_t' +
        'mpsyst)::INTEGER ) saldo_awal on saldo_awal.supplier_code= a.sup' +
        'plier_code) jj)hutang on supp.principle_code=hutang.kodesup  '
      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from  '
      ''
      
        '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(' +
        'pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang '#9'FROM '
      ''
      
        '(SELECT A.trans_no AS tanggal,'#9'A.supplier_code AS kodesup,C.supp' +
        'lier_name AS nasup,A.trans_no AS no_inv, '#9'A.faktur_no AS nofaktu' +
        'rpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ) ' +
        'AS tgltempo, '#9#9'( CASE WHEN A.valas = '#39'USD'#39' THEN b.hutang * A.val' +
        'as_value ELSE b.hutang END ) jumlah,'#9'( CASE WHEN A.um_value IS N' +
        'ULL THEN 0 ELSE A.um_value END ) um, '#9'A.valas,( CASE WHEN retur.' +
        'nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '#9 +
        'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_' +
        'amount END ) bayar, (case when pot.price_rp is null then 0 else ' +
        'pot.price_rp end)pot  FROM'
      
        '(SELECT'#9'*'#9'FROM t_purchase_invoice'#9'WHERE --account_code = '#39'2101.0' +
        '1'#39'  AND '
      
        '( sj_status = 1 ) AND ( fk_status = 1 )'#9'AND ( invoice_status = 1' +
        ' )'#9'and trans_date>='#39'2022-01-01'#39#9'AND ( faktur_date + due_date ) B' +
        'ETWEEN '#39'2025-09-03'#39#9'AND '#39'2025-09-03'#39')'#9'A '
      
        'LEFT JOIN (SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM ( ' +
        'pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no ' +
        'ORDER BY trans_no  ) b ON A.trans_no = b.trans_no'#9
      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '#9
      
        'LEFT JOIN (SELECT A.receive_no,'#9'SUM ( A.total_price * b.valas_va' +
        'lue ) AS nil_retur '#9'FROM t_purchase_return_det A INNER JOIN t_pu' +
        'rchase_return B '#9
      
        'ON'#9'A.return_no = b.return_no WHERE b.return_date < '#39'2025-09-03'#39#9 +
        'GROUP BY A.receive_no ORDER BY A.receive_no ) retur ON A.trans_n' +
        'o = retur.receive_no '#9
      
        'LEFT JOIN ( SELECT DISTINCT faktur_no, invoice_no, paid_amount F' +
        'ROM t_cash_bank_expenditure_payable WHERE trans_date < '#39'2025-09-' +
        '03'#39' ) byr ON A.trans_no = byr.invoice_no '#9'left join(select * fro' +
        'm t_purchase_discount where discount_date<='#39'2025-09-03'#39')pot on a' +
        '.trans_no=pot.receive_no '#9') xxx GROUP BY'#9'kodesup  '
      'union all '
      ' '
      'SELECT'#9'kodesup,'#9'SUM ( sisa_hutang ) AS sisa_hutang FROM '#9
      
        '('#9'SELECT kodesup,faktur_no,hutang,'#9'bayar,hutang - bayar AS sisa_' +
        'hutang '#9'FROM'#9
      
        '(SELECT'#9'x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.ba' +
        'yar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM'
      
        '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_te' +
        'rima, date as tanggal, debt_amount AS nilai FROM t_initial_balan' +
        'ce_debt_det WHERE debt_type = '#39'2101.01'#39' ) x '#9
      
        'LEFT JOIN (SELECT'#9'supplier_code,faktur_no,invoice_no AS no_terim' +
        'a,SUM ( paid_amount ) AS bayar FROM t_cash_bank_expenditure_paya' +
        'ble'#9
      
        'WHERE'#9'account_acc = '#39'2101.01'#39#9'AND trans_date BETWEEN '#39'2022-01-01' +
        #39' AND '#39'2025-09-03'#39' GROUP BY supplier_code,faktur_no,invoice_no O' +
        'RDER BY'#9'supplier_code,faktur_no,invoice_no) y ON x.kodesup = y.s' +
        'upplier_code '#9'AND x.faktur_no = y.faktur_no'#9') A '
      'WHERE'#9'hutang - bayar  > 0 ) xx GROUP BY'#9'kodesup'#9')x'#9
      
        'group by kodesup order by kodesup )mggini on supp.principle_code' +
        '=mggini.kodesup  '
      ''
      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from  '
      
        '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(' +
        'pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang '#9'FROM '
      
        '(SELECT A.trans_date AS tanggal,'#9'A.supplier_code AS kodesup,C.su' +
        'pplier_name AS nasup,A.trans_no AS no_inv, '#9'A.faktur_no AS nofak' +
        'turpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ' +
        ') AS tgltempo, ( CASE WHEN A.valas = '#39'USD'#39' THEN b.hutang * A.val' +
        'as_value ELSE b.hutang END ) jumlah,'#9'( CASE WHEN A.um_value IS N' +
        'ULL THEN 0 ELSE A.um_value END ) um, '#9'A.valas,( CASE WHEN retur.' +
        'nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '#9 +
        'b.npph,( CASE WHEN byr.bayar IS NULL THEN 0 ELSE byr.bayar END )' +
        ' bayar, (case when pot.price_rp is null then 0 else pot.price_rp' +
        ' end)pot  FROM '
      
        '(SELECT'#9'*'#9'FROM t_purchase_invoice'#9'WHERE account_code = '#39'2101.01'#39 +
        '  AND ( sj_status = 1 ) AND ( fk_status = 1 )'#9'AND ( invoice_stat' +
        'us = 1 )'#9'and trans_date>='#39'2022-01-01'#39#9'AND ( faktur_date + due_da' +
        'te ) BETWEEN '#39'2025-08-27'#39#9'AND '#39'2025-09-02'#39')'#9'A '
      
        'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM (' +
        ' pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no' +
        ' ORDER BY trans_no ) b ON A.trans_no = b.trans_no'#9'LEFT JOIN t_su' +
        'pplier C ON A.supplier_code = C.supplier_code '#9
      
        'LEFT JOIN (SELECT A.receive_no,'#9'SUM ( A.total_price * b.valas_va' +
        'lue ) AS nil_retur '#9'FROM t_purchase_return_det A INNER JOIN t_pu' +
        'rchase_return b '#9
      
        'ON A.return_no = b.return_no WHERE b.return_date < '#39'2025-09-03'#39#9 +
        'GROUP BY A.receive_no ORDER BY A.receive_no) retur ON A.trans_no' +
        ' = retur.receive_no '
      
        'LEFT JOIN ( SELECT DISTINCT faktur_no as no_inv_supp, invoice_no' +
        ' as no_lpb,paid_amount as bayar FROM t_cash_bank_expenditure_pay' +
        'able WHERE trans_date < '#39'2025-09-03'#39' ) byr ON A.trans_no = byr.n' +
        'o_lpb '#9'left join (select * from t_purchase_discount where discou' +
        'nt_date<='#39'2025-09-03'#39')pot on a.ref_no=pot.receive_no ) xxx GROUP' +
        ' BY'#9'kodesup  '
      'union all  '
      'SELECT kodesup,'#9'SUM (sisa_hutang ) AS sisa_hutang FROM '
      
        '(SELECT kodesup,faktur_no,hutang,'#9'bayar,hutang - bayar AS sisa_h' +
        'utang FROM '
      
        '(SELECT'#9'x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.ba' +
        'yar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '
      
        '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_te' +
        'rima, date, debt_amount AS nilai FROM t_initial_balance_debt_det' +
        ' WHERE debt_type = '#39'2101.01'#39' ) x '#9
      
        'LEFT JOIN (SELECT'#9'supplier_code as kd_supp,faktur_no AS nofaktur' +
        ',invoice_no AS no_terima,SUM ( paid_amount ) AS bayar FROM'#9't_cas' +
        'h_bank_expenditure_payable WHERE'#9'account_acc = '#39'2101.01'#39#9'AND tra' +
        'ns_date BETWEEN '#39'2022-01-01'#39' AND '#39'2025-09-03'#39' GROUP BY supplier_' +
        'code,faktur_no,invoice_no ORDER BY'#9'supplier_code,faktur_no,invoi' +
        'ce_no) y ON x.kodesup = y.kd_supp '#9'AND x.faktur_no = y.nofaktur'#9 +
        ') A WHERE'#9'hutang - bayar  > 0 ) xx GROUP BY'#9'kodesup'#9')x'#9'group by ' +
        'kodesup order by kodesup )mgglalu on supp.principle_code=mgglalu' +
        '.kodesup  '
      ''
      'left join (select kodesup,sum(sisa_hutang)as sisa_hutang from  '
      
        '(SELECT DISTINCT kodesup,SUM ( jumlah ) - SUM ( nil_retur )-sum(' +
        'pot) - SUM ( bayar ) - SUM ( um ) AS sisa_hutang '#9'FROM '
      
        '(SELECT A.trans_date AS tanggal,'#9'A.supplier_code AS kodesup,C.su' +
        'pplier_name AS nasup,A.trans_no AS no_inv, '#9'A.faktur_no AS nofak' +
        'turpajak,A.faktur_date AS tglfaktur,(A.faktur_date + A.due_date ' +
        ') AS tgltempo, ( CASE WHEN A.valas = '#39'USD'#39' THEN b.hutang * A.val' +
        'as_value ELSE b.hutang END ) jumlah, ( CASE WHEN A.um_value IS N' +
        'ULL THEN 0 ELSE A.um_value END ) um, '#9'A.valas,( CASE WHEN retur.' +
        'nil_retur IS NULL THEN 0 ELSE retur.nil_retur END ) nil_retur, '#9 +
        'b.npph,( CASE WHEN byr.paid_amount IS NULL THEN 0 ELSE byr.paid_' +
        'amount END ) bayar, (case when pot.harga_rp is null then 0 else ' +
        'pot.harga_rp end)pot  FROM '
      
        '(SELECT'#9'*'#9'FROM t_purchase_invoice'#9'WHERE account_code = '#39'2101.01'#39 +
        '  AND ( sj_status = 1 ) AND ( fk_status = 1 )'#9'AND ( invoice_stat' +
        'us = 1 )'#9'and trans_date>='#39'2022-01-01'#39#9'AND ( faktur_date + due_da' +
        'te ) BETWEEN '#39'2022-01-01'#39#9'AND '#39'2025-08-26'#39')'#9'A '
      
        'LEFT JOIN ( SELECT trans_no, SUM ( grandtotal ) AS hutang, SUM (' +
        ' pph_rp ) AS npph FROM t_purchase_invoice_det  GROUP BY trans_no' +
        ' ORDER BY trans_no ) b ON A.trans_no = b.trans_no'#9
      'LEFT JOIN t_supplier C ON A.supplier_code = C.supplier_code '#9
      
        'LEFT JOIN (SELECT A.receive_no,'#9'SUM ( A.total_price * b.valas_va' +
        'lue ) AS nil_retur '#9'FROM t_purchase_return_det A INNER JOIN t_pu' +
        'rchase_return b '#9'ON A.return_no = b.return_no WHERE  b.return_da' +
        'te < '#39'2025-09-03'#39#9'GROUP BY A.receive_no '#9'ORDER BY A.receive_no )' +
        ' retur ON A.trans_no = retur.receive_no'#9
      
        'LEFT JOIN ( SELECT DISTINCT faktur_no , invoice_no , paid_amount' +
        '  FROM t_cash_bank_expenditure_payable WHERE trans_date < '#39'2025-' +
        '09-03'#39' ) byr ON A.trans_no = byr.invoice_no'#9'left join (select re' +
        'ceive_no,sum(price_rp)as harga_rp from t_purchase_discount where' +
        ' discount_date<='#39'2025-09-03'#39' group by receive_no order by receiv' +
        'e_no ) pot on a.ref_no=pot.receive_no ) xxx GROUP BY'#9'kodesup  '
      'union all  '
      
        'SELECT'#9'kodesup,'#9'SUM ( sisa_hutang ) AS sisa_hutang FROM ( SELECT' +
        ' kodesup,faktur_no,hutang,'#9'bayar,hutang - bayar AS sisa_hutang F' +
        'ROM '
      
        '(SELECT'#9'x.kodesup,x.faktur_no,x.nilai AS hutang,( CASE WHEN y.ba' +
        'yar IS NULL THEN 0 ELSE y.bayar END ) bayar  FROM '
      
        '( SELECT supplier_code AS kodesup, faktur_no, faktur_no AS no_te' +
        'rima, date, debt_amount AS nilai FROM t_initial_balance_debt_det' +
        ' WHERE debt_type = '#39'2101.01'#39' ) x '#9
      
        'LEFT JOIN (SELECT'#9'supplier_code,faktur_no AS nofaktur,invoice_no' +
        ' AS no_terima,SUM ( paid_amount ) AS bayar '#9'FROM t_cash_bank_exp' +
        'enditure_payable WHERE'#9'account_acc = '#39'2101.01'#39#9'AND trans_date BE' +
        'TWEEN '#39'2022-01-01'#39' AND '#39'2025-09-03'#39' GROUP BY supplier_code,faktu' +
        'r_no,invoice_no ORDER BY'#9'supplier_code,faktur_no,invoice_no) y O' +
        'N x.kodesup = y.supplier_code '#9'AND x.faktur_no = y.nofaktur'#9') A ' +
        'WHERE'#9'hutang - bayar  > 0 ) xx GROUP BY'#9'kodesup'#9')x'#9'group by kode' +
        'sup order by kodesup )mgg_lbh on supp.principle_code=mgg_lbh.kod' +
        'esup  '
      ''
      
        'left join (select aa.supplier_code,sum(aa.amount)as tot_rcn from' +
        ' t_paid_debt_det aa  '
      
        'LEFT JOIN t_purchase_invoice bb on aa.inv_no=bb.trans_no where  ' +
        '(aa.periode1='#39'2025-09-03'#39') and (aa.periode2='#39'2025-09-03'#39') and bb' +
        '.account_code='#39'2101.01'#39' group by aa.supplier_code order by aa.su' +
        'pplier_code)rcn on rcn.supplier_code=supp.principle_code )xxxx o' +
        'n s.supplier_code=xxxx.principle_code) rrr'
      ''
      
        'LEFT JOIN (select supplier_code,sum(initial_balance) saldo_awal ' +
        'from t_initial_balance_debt where year='#39'2024'#39' group by supplier_' +
        'code) saldo_awal_hut on rrr.supplier_code=saldo_awal_hut.supplie' +
        'r_code  where tot_hutang+case when saldo_awal is NULL then 0 els' +
        'e saldo_awal end>0 and tot_hutang+h1+h2+h3+tot_rcn >0 )kkkk')
    Left = 304
    Top = 160
    object QSisaHutangprinciple_code: TStringField
      FieldName = 'principle_code'
      ReadOnly = True
      Size = 6
    end
    object QSisaHutangprinciple_name: TStringField
      FieldName = 'principle_name'
      ReadOnly = True
      Size = 100
    end
    object QSisaHutangtot_hutang: TFloatField
      FieldName = 'tot_hutang'
      ReadOnly = True
    end
    object QSisaHutangh1: TFloatField
      FieldName = 'h1'
      ReadOnly = True
    end
    object QSisaHutangh2: TFloatField
      FieldName = 'h2'
      ReadOnly = True
    end
    object QSisaHutangh3: TFloatField
      FieldName = 'h3'
      ReadOnly = True
    end
    object QSisaHutangtot_rcn: TFloatField
      FieldName = 'tot_rcn'
      ReadOnly = True
    end
  end
  object MemSisaHutang: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 384
    Top = 160
  end
  object DSisaHutang: TDataSource
    DataSet = MemSisaHutang
    Left = 304
    Top = 224
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QSisaHutang
    Left = 384
    Top = 224
  end
  object ActMenu: TActionManager
    Left = 1008
    Top = 32
    StyleName = 'Platform Default'
    object ActBaru: TAction
      Caption = 'Baru  '
    end
    object ActUpdate: TAction
      Caption = 'Update  '
    end
    object ActRO: TAction
      Caption = 'Refresh  '
    end
    object ActDel: TAction
      Caption = 'Delete  '
    end
    object ActPrint: TAction
      Caption = 'Print  '
    end
    object ActApp: TAction
      Caption = 'Approve  '
      Enabled = False
    end
    object ActReject: TAction
      Caption = 'Reject  '
      Enabled = False
    end
    object ActClose: TAction
      Caption = 'CLose PO    '
      Enabled = False
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1022
    Top = 32
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 930
      FloatTop = 3
      FloatClientWidth = 273
      FloatClientHeight = 225
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 97
          Visible = True
          ItemName = 'cxBarEditItem5'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 135
          Visible = True
          ItemName = 'Jenis_Hutang'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'cxBarEditItem6'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 164
          Visible = True
          ItemName = 'dp1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 214
          Visible = True
          ItemName = 'cxBarEditItem8'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 125
          Visible = True
          ItemName = 'dp4'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 126
          Visible = True
          ItemName = 'dp5'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end
        item
          Visible = True
          ItemName = 'dxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002C744558745469746C65004164643B4974656D3B4164644974656D3B
        426172733B526962626F6E3B4974656D3B506C75734E32EF8100000286494441
        54785E5D915D48545B14C77FFB9C199D11CDA264A2C828B2A44891B844491924
        A441915020611045742F04D14B11D1439015193E28652541057D125CEFBDF8D0
        43D017D8BDE0EDC1BC57ED8331106AC6907072C673CEDEAB98738686D9ECBDD8
        9BCDFFBF7E6B2D05D8B7FF1C7962DB768320002020E2DF252F8880E7382F0EEE
        A9691411072004584AA986BDDB5700148A0005FC34BBD537BA09B00172064A6B
        01C0714D8E01113F0882BF15C5610BCF330056BE01DA8000264F1DE803A2E01F
        411B0D4001819BAB3B10E5F74005068288CA11A8020300C1989F225028019409
        5E0631B0A8A204C06ABBF88AD9B4830528CFD501B2600013D4EE89C7B3A1043D
        8FE3B4FF1EA7AB3F4E32AD299BBF387AE7C4068504CD7082261A14C677427B2E
        97FF7ACF6832C3968D0BF9AD75395BEA63A4EC302DC7EFFFB1B8BA3EFAE84C83
        CA1218CF030163C4CF2E86FE810954B14D63C312929922B6ED7F80A722346FAD
        64CDCA8AF5EB769E3C05D85903D71F9F2F3682D6FA077A92BADA1803EF1C1229
        8D339B617246F37ADCA5B6268656E17D40289435D006117F9C205862484CCEF0
        E1AB45C7B9BB686310ED71F8C8358CD6F474FD8AEB780B013B9882017C7CB225
        0891B0E1E3C4341DED6D84141C3A7A8587D78F90CA0883EFA648CFA43FE7C628
        3982D2888D88C218F8A56A0EFF0CC50947A3D8B6C24967F8EFB3CB976F9A91D7
        1F989EFAD20778214067BEA59E9FEE7CB9591044A0BC2CCCD2452564129FF8F7
        E9104B5757D2DD7D8CBFDF24181F1E67622C3EFC71F0DE59C005B08028500ECC
        05E60567412852BEACBAE94267CDEE1B6375AD77646D4BEFDB554DE72F1595C6
        2A8050F58E5E948850B856EFBA094AF8BFEF80058481A22091011CC0AD6ABE6A
        44E03B805C64CDB4C3E1300000000049454E44AE426082}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002C744558745469746C65004164643B4974656D3B4164644974656D3B
        426172733B526962626F6E3B4974656D3B506C75734E32EF8100000286494441
        54785E5D915D48545B14C77FFB9C199D11CDA264A2C828B2A44891B844491924
        A441915020611045742F04D14B11D1439015193E28652541057D125CEFBDF8D0
        43D017D8BDE0EDC1BC57ED8331106AC6907072C673CEDEAB98738686D9ECBDD8
        9BCDFFBF7E6B2D05D8B7FF1C7962DB768320002020E2DF252F8880E7382F0EEE
        A9691411072004584AA986BDDB5700148A0005FC34BBD537BA09B00172064A6B
        01C0714D8E01113F0882BF15C5610BCF330056BE01DA8000264F1DE803A2E01F
        411B0D4001819BAB3B10E5F74005068288CA11A8020300C1989F225028019409
        5E0631B0A8A204C06ABBF88AD9B4830528CFD501B2600013D4EE89C7B3A1043D
        8FE3B4FF1EA7AB3F4E32AD299BBF387AE7C4068504CD7082261A14C677427B2E
        97FF7ACF6832C3968D0BF9AD75395BEA63A4EC302DC7EFFFB1B8BA3EFAE84C83
        CA1218CF030163C4CF2E86FE810954B14D63C312929922B6ED7F80A722346FAD
        64CDCA8AF5EB769E3C05D85903D71F9F2F3682D6FA077A92BADA1803EF1C1229
        8D339B617246F37ADCA5B6268656E17D40289435D006117F9C205862484CCEF0
        E1AB45C7B9BB686310ED71F8C8358CD6F474FD8AEB780B013B9882017C7CB225
        0891B0E1E3C4341DED6D84141C3A7A8587D78F90CA0883EFA648CFA43FE7C628
        3982D2888D88C218F8A56A0EFF0CC50947A3D8B6C24967F8EFB3CB976F9A91D7
        1F989EFAD20778214067BEA59E9FEE7CB9591044A0BC2CCCD2452564129FF8F7
        E9104B5757D2DD7D8CBFDF24181F1E67622C3EFC71F0DE59C005B08028500ECC
        05E60567412852BEACBAE94267CDEE1B6375AD77646D4BEFDB554DE72F1595C6
        2A8050F58E5E948850B856EFBA094AF8BFEF80058481A22091011CC0AD6ABE6A
        44E03B805C64CDB4C3E1300000000049454E44AE426082}
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000027744558745469746C6500526566726573683B5265706561743B4261
        72733B526962626F6E3B52656C6F6164CD4DF6E90000030249444154785EA593
        6D4C926B18C76F018114A40D6D619DE98433AAE3F16D7CB173AC43666FE69C7A
        D4F48825339D4E6136D314EB2C23B46C332B957484A0522E5B6E2C31B537B437
        319BCECC17B2652D672FC715E03194AEEE875A6BB53E796DBFDDCF7EF7FFFFE1
        DAB3DB0500D052C6E5A7FEC73B70F2FDC89A4D48D664FA5A5AF5DB1FE4E8928B
        E2226D9F11FB0F04459A7B3D052A63DE0E71B11B91C10E77FA9D5D94DF70DF59
        4E93EB7EC957DF1B4F935FE009B3EBB7A59FE8704C59E6E185E503DC9D7C0B9A
        5B66D8A7BA33243AD4E087F3A4E9F98F683FD1959EBD8BF0B8E6D418BB1F3C9B
        855DA57A23871BC00C15D755FD99D508E1521DE49EB90E833356B8D4F71C726A
        7A460285F11EC48A92CF5D44D973CC50A8BDF504C6FE7780F2CA3044481AFEF5
        FE3598C1DD24F5E10A73F88109958A8DD94DF69E171638D53E0AA2A36D07885E
        E6E95E8476E6D5090AD57D0B66DB02F45B1661DC6A87B4B2F685E0D8C3422284
        21619605FC5DA148ADE884F303D3905C6630112EF5C40D449AB550D5BDBDA314
        D9C99BC862B52379ED6DF478E215C595B9AAFE4B9918D2CC4857CBE4F834A22D
        672287831C881D4B9B2F74232EE918CFA81283FDDA4B1B241CE9062F7E441076
        0C0C19438B2CD63F8A3AD8017187BB4033F61E88EFA8920E882CD24F92F8D1D5
        F3383467B3D846269EFE877CBC5928707372CAB7FFFFF9F01D890783BE98951E
        8628542ACACDDC88ACAF5E3B4C8656090ACBBD4C846802514DE9DEDAFBD038F4
        06E28F742F083395C7F91B44416BFEDACDA731BD38214995E519AA01A837CF41
        A2A213BC422455B8C744828C56E78E8C956B3921E226739666109A47DE81E4DC
        0024286E424CE935F83DA95A87337E41A92A93ECEA14B043F63F2451591CE78A
        01BB5B50DB14B105725D199C28F0FF47FD24EEF86D28D19B4139340BCAC15908
        2F6807DFF042317BCD9650FF14ED33EA8AB0F5384F65AC2B40889FD48CD1394F
        42D2D9BCD53E5BE515BC98DA21EC017BE0C52A877DB797CBC8547716CE786068
        74AE1411E0F90132C61DC3C67030DE18CF2F8EFC7D78C9CFF9136643522887EA
        10230000000049454E44AE426082}
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000023744558745469746C650043616E63656C3B53746F703B457869743B
        426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
        18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
        3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
        8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
        E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
        A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
        673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
        5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
        D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
        3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
        D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
        2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
        CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
        CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
        2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
        2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
        B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
        82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
        17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
        F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
        33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
        097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
        646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
        266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
        2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
        72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
        2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
        CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
        1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
        01D589CC0000000049454E44AE426082}
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Update'
      Category = 0
      Hint = 'Update'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000022744558745469746C65005570646174655461626C654F66436F6E74
        656E74733B5461626C653BEFA5E0D80000025549444154785E85526D48535118
        7EEE36C3849ACDF9B18470FDEB0B9641D4A06CAE7F4912513F8432F0C7E88F65
        D81CD48FF0C7D60429964441069251B00AD9922CCC204BEA4F7EC0C490626E7D
        6C1024C8D0B5CE793BF7DC4B1769D2C37DDE735EEE3DCF79DEF7BD0A0442439F
        C6A0281EE2042202172482B6E77A2ED6C2AFFC78F88CCB4B4405E8B0082AE2F1
        048E3AF13F0406670FE867560B702299AC143800ED76B923994A07CB7906CE39
        044C30201345B507FD40389646389E925485AFC692528C412B47730C1475A0AE
        BEC3357AED9A6067D3161087CC19A7620E0C0135F6BDF8A6F38B140C0E7D962B
        230EC6F81A0EB417F2E6B35E0748F6411104FCCD5BF52900EEED76DC28E2C064
        9400449EA7111949E3FAB305A4171770EB6D0F5A061AE18E54A3F7CD716C6C35
        BB6D7EB3D5D669DE6B94C00C81AE66A7E4698F0577DE87F178E6367EE45238E2
        6A404B831BDB76399F82A31BC0C0DF1218374A5045080AC6E68751B1BE167DC7
        E2720AF19947984CBE43D37E174AF8A1F6D093FE7FA790CB3390FEE72928C5A9
        FA8B60FA78DBF675E142D407E6E0F86DFE0A90D144B69C5B7ADD7177FAA01C9D
        08EE1D768446CF2138DA2EEBAA28AB83B7CE8744E6D5CA443253AADD47AB1A59
        26582E6813AC10B4575E5A4723E99BD43F7D996CE74B0601D4E8DF581ECC76A3
        BC436923D5A91A8AA14A08044FFA91CDCF616A3EB9F4726AB297085145FBB54F
        80F073F11A8F98B00638612EF0301C898E4F60B3CDBAA171E79E2B0E6B65A2DA
        6A4FD46EAADACD0931AD076B81A895183EA632D9E8BDEFD91E22AA07E1031186
        01BA0F4212027F001ABA574BB80B6B080000000049454E44AE426082}
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002A744558745469746C650052656672657368416C6C5069766F745461
        626C653B526566726573683B5570646174653B80B9A4FD000002714944415478
        5E5D936B48536118C775373D8D3235D7583A576ACB9A49105B17A274122E5D33
        8DCDCD5C6E2DC12E7633ED02D6666464B58D2E2BA304175A560C4B12AB6F19B4
        3EA8501059D482A8BE46DF6AF0F43C87F7C838077E7BDEE7FF9EFDDFCB9F9326
        7AD21912448AC85895902E42FCF0A2D4D3BDD6EEF31B07F6F6983EB69E33FDA5
        4A3DE9382F27535FC0E8171B496ABCFAFCC66365A1A6AEF2E4D86404DE2726E0
        C7EF29BE524FBAE3685998BD036C67E9C2CAF2BAFDA5A1BBA3A7E0C3CF18449F
        77C1F1A0051A3B5653E57B5E7F7606E98686432BC9408148F8D5AB3D45CEED6D
        CB93F12F57E0EC6D2B58BCC5239BEAB54DAA02653155EAAFC59A219EB8046F12
        7D80EF924126DB459A6C6BCBB2C148CC05171F58A1CABD742447CD15A09EC3C8
        AB74E9C2A7FB2BE0D1740B8FC55744069C602037BB0B67AB76EB803059350ED4
        16201C51E1D29E275D4CEA0E144836B29860ABCE63BA9CC66C5E8DE4231A6411
        9221DC8102E30231185D802263464AC791F206610E639C4DBDC40C8AE5D79F69
        9EE8B81FEC870D7D6C65391994ACC9CDC60887C65E5F87D15761C071947421C6
        4C8A25FE2DCC7367FC20D8F6AD18B6784B761836A8726B5BF5D6BA03A5F74243
        6DF0F66B84224C567B4ADC642E1870144BCF600DCF939976B8F5D4079D97B7C1
        CE76039C0CDAE0FE8B1330F9A9170203B58091DFC045B310D9DC0E28167393EE
        26C6D58FE364F0613D4C4C75C0BBEF17E0E54C275C7D6C07D2CDBB7491551BF3
        F4EC7812C140B1C5A9EDA5BC11F53A9B66CF66A776B8B2B9F033C6F58F2AF5EB
        6D4BBC2C2165EAF60929C2B189F9C84216938AC5AA627D56CAC54AC45FA18C10
        6E5D304C8163BA54FC29FF073A900E21C7F057FD0000000049454E44AE426082}
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000029744558745469746C650052656D6F76653B44656C6574653B426172
        733B526962626F6E3B5374616E646172643B635648300000026449444154785E
        A551494C5351146568194A2B583746627F458902118892AAB811369246043462
        8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
        26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
        86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
        AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
        DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
        15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
        B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
        89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
        EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
        3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
        EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
        446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
        62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
        DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
        65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
        655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
        4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
        A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
        BFC080A205F60000000049454E44AE426082}
    end
    object dxBarBaru: TdxBarLargeButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000009704859730000275F0000275F011D86BA6A00000A4F694343505068
        6F746F73686F70204943432070726F66696C65000078DA9D53675453E9163DF7
        DEF4424B8880944B6F5215082052428B801491262A2109104A8821A1D91551C1
        114545041BC8A088038E8E808C15512C0C8A0AD807E421A28E83A3888ACAFBE1
        7BA36BD6BCF7E6CDFEB5D73EE7ACF39DB3CF07C0080C9648335135800CA9421E
        11E083C7C4C6E1E42E40810A2470001008B3642173FD230100F87E3C3C2B22C0
        07BE000178D30B0800C04D9BC0301C87FF0FEA42995C01808401C07491384B08
        801400407A8E42A600404601809D98265300A0040060CB6362E300502D006027
        7FE6D300809DF8997B01005B94211501A09100201365884400683B00ACCF568A
        450058300014664BC43900D82D00304957664800B0B700C0CE100BB200080C00
        305188852900047B0060C8232378008499001446F2573CF12BAE10E72A000078
        99B23CB9243945815B082D710757572E1E28CE49172B14366102619A402EC279
        99193281340FE0F3CC0000A0911511E083F3FD78CE0EAECECE368EB60E5F2DEA
        BF06FF226262E3FEE5CFAB70400000E1747ED1FE2C2FB31A803B06806DFEA225
        EE04685E0BA075F78B66B20F40B500A0E9DA57F370F87E3C3C45A190B9D9D9E5
        E4E4D84AC4425B61CA577DFE67C25FC057FD6CF97E3CFCF7F5E0BEE22481325D
        814704F8E0C2CCF44CA51CCF92098462DCE68F47FCB70BFFFC1DD322C44962B9
        582A14E35112718E449A8CF332A52289429229C525D2FF64E2DF2CFB033EDF35
        00B06A3E017B912DA85D6303F64B27105874C0E2F70000F2BB6FC1D428080380
        6883E1CF77FFEF3FFD47A02500806649927100005E44242E54CAB33FC7080000
        44A0812AB0411BF4C1182CC0061CC105DCC10BFC6036844224C4C24210420A64
        801C726029AC82422886CDB01D2A602FD4401D34C051688693700E2EC255B80E
        3D700FFA61089EC128BC81090441C808136121DA8801628A58238E08179985F8
        21C14804128B2420C9881451224B91354831528A542055481DF23D720239875C
        46BA913BC8003282FC86BC47319481B2513DD40CB543B9A8371A8446A20BD064
        74319A8F16A09BD072B41A3D8C36A1E7D0AB680FDA8F3E43C730C0E8180733C4
        6C302EC6C342B1382C099363CBB122AC0CABC61AB056AC03BB89F563CFB17704
        128145C0093604774220611E4148584C584ED848A8201C243411DA0937090384
        51C2272293A84BB426BA11F9C4186232318758482C23D6128F132F107B8843C4
        37241289433227B9900249B1A454D212D246D26E5223E92CA99B34481A2393C9
        DA646BB20739942C202BC885E49DE4C3E433E41BE421F25B0A9D624071A4F853
        E22852CA6A4A19E510E534E5066598324155A39A52DDA8A15411358F5A42ADA1
        B652AF5187A81334759A39CD8316494BA5ADA295D31A681768F769AFE874BA11
        DD951E4E97D057D2CBE947E897E803F4770C0D861583C7886728199B18071867
        197718AF984CA619D38B19C754303731EB98E7990F996F55582AB62A7C1591CA
        0A954A9526951B2A2F54A9AAA6AADEAA0B55F355CB548FA95E537DAE46553353
        E3A909D496AB55AA9D50EB531B5367A93BA887AA67A86F543FA47E59FD890659
        C34CC34F43A451A0B15FE3BCC6200B6319B3782C216B0DAB86758135C426B1CD
        D97C762ABB98FD1DBB8B3DAAA9A13943334A3357B352F394663F07E39871F89C
        744E09E728A797F37E8ADE14EF29E2291BA6344CB931655C6BAA96979658AB48
        AB51AB47EBBD36AEEDA79DA6BD45BB59FB810E41C74A275C2747678FCE059DE7
        53D953DDA70AA7164D3D3AF5AE2EAA6BA51BA1BB4477BF6EA7EE989EBE5E809E
        4C6FA7DE79BDE7FA1C7D2FFD54FD6DFAA7F5470C5806B30C2406DB0CCE183CC5
        35716F3C1D2FC7DBF151435DC34043A561956197E18491B9D13CA3D5468D460F
        8C69C65CE324E36DC66DC6A326062621264B4DEA4DEE9A524DB9A629A63B4C3B
        4CC7CDCCCDA2CDD699359B3D31D732E79BE79BD79BDFB7605A785A2CB6A8B6B8
        6549B2E45AA659EEB6BC6E855A3959A558555A5DB346AD9DAD25D6BBADBBA711
        A7B94E934EAB9ED667C3B0F1B6C9B6A9B719B0E5D806DBAEB66DB67D61676217
        67B7C5AEC3EE93BD937DBA7D8DFD3D070D87D90EAB1D5A1D7E73B472143A563A
        DE9ACE9CEE3F7DC5F496E92F6758CF10CFD833E3B613CB29C4699D539BD34767
        1767B97383F3888B894B82CB2E973E2E9B1BC6DDC8BDE44A74F5715DE17AD2F5
        9D9BB39BC2EDA8DBAFEE36EE69EE87DC9FCC349F299E593373D0C3C843E051E5
        D13F0B9F95306BDFAC7E4F434F8167B5E7232F632F9157ADD7B0B7A577AAF761
        EF173EF63E729FE33EE33C37DE32DE595FCC37C0B7C8B7CB4FC36F9E5F85DF43
        7F23FF64FF7AFFD100A78025016703898141815B02FBF87A7C21BF8E3F3ADB65
        F6B2D9ED418CA0B94115418F82AD82E5C1AD2168C8EC90AD21F7E798CE91CE69
        0E85507EE8D6D00761E6618BC37E0C2785878557863F8E7088581AD131973577
        D1DC4373DF44FA449644DE9B67314F39AF2D4A352A3EAA2E6A3CDA37BA34BA3F
        C62E6659CCD5589D58496C4B1C392E2AAE366E6CBEDFFCEDF387E29DE20BE37B
        17982FC85D7079A1CEC2F485A716A92E122C3A96404C884E3894F041102AA816
        8C25F21377258E0A79C21DC267222FD136D188D8435C2A1E4EF2482A4D7A92EC
        91BC357924C533A52CE5B98427A990BC4C0D4CDD9B3A9E169A76206D323D3ABD
        31839291907142AA214D93B667EA67E66676CBAC6585B2FEC56E8BB72F1E9507
        C96BB390AC05592D0AB642A6E8545A28D72A07B267655766BFCD89CA3996AB9E
        2BCDEDCCB3CADB90379CEF9FFFED12C212E192B6A5864B572D1D58E6BDAC6A39
        B23C7179DB0AE315052B865606AC3CB88AB62A6DD54FABED5797AE7EBD267A4D
        6B815EC1CA82C1B5016BEB0B550AE5857DEBDCD7ED5D4F582F59DFB561FA869D
        1B3E15898AAE14DB1797157FD828DC78E51B876FCABF99DC94B4A9ABC4B964CF
        66D266E9E6DE2D9E5B0E96AA97E6970E6E0DD9DAB40DDF56B4EDF5F645DB2F97
        CD28DBBB83B643B9A3BF3CB8BC65A7C9CECD3B3F54A454F454FA5436EED2DDB5
        61D7F86ED1EE1B7BBCF634ECD5DB5BBCF7FD3EC9BEDB5501554DD566D565FB49
        FBB3F73FAE89AAE9F896FB6D5DAD4E6D71EDC703D203FD07230EB6D7B9D4D51D
        D23D54528FD62BEB470EC71FBEFE9DEF772D0D360D558D9CC6E223704479E4E9
        F709DFF71E0D3ADA768C7BACE107D31F761D671D2F6A429AF29A469B539AFB5B
        625BBA4FCC3ED1D6EADE7AFC47DB1F0F9C343C59794AF354C969DAE982D39367
        F2CF8C9D959D7D7E2EF9DC60DBA2B67BE763CEDF6A0F6FEFBA1074E1D245FF8B
        E73BBC3BCE5CF2B874F2B2DBE51357B8579AAF3A5F6DEA74EA3CFE93D34FC7BB
        9CBB9AAEB95C6BB9EE7ABDB57B66F7E91B9E37CEDDF4BD79F116FFD6D59E393D
        DDBDF37A6FF7C5F7F5DF16DD7E7227FDCECBBBD97727EEADBC4FBC5FF440ED41
        D943DD87D53F5BFEDCD8EFDC7F6AC077A0F3D1DC47F7068583CFFE91F58F0F43
        058F998FCB860D86EB9E383E3939E23F72FDE9FCA743CF64CF269E17FEA2FECB
        AE17162F7EF8D5EBD7CED198D1A197F29793BF6D7CA5FDEAC0EB19AFDBC6C2C6
        1EBEC97833315EF456FBEDC177DC771DEFA3DF0F4FE47C207F28FF68F9B1F553
        D0A7FB93199393FF040398F3FC63332DDB000000206348524D00007A25000080
        830000F9FF000080E9000075300000EA6000003A980000176F925FC546000005
        5B4944415478DABC974B6C1BC719C77FB38FE1EE92124D45A1645B8D9BA29691
        508561D87573289C3E64206E81D68FB440A2C4098C5C7A4A9502AD01B76850F8
        52C0AD7B4B911E7A3020240D0A03B67BF2A948A33830D0245002F420ABB62B96
        2665522421725FDC991C6C257E9029252BFD8001767666BEF9CDFFFB76764668
        ADB9D78E1C39423A9D464AF99852EA1850000CBA5B03F8BB6DDB7F8AA228AED5
        6A98A64937BF0067CF9EBDAB6EF5708A10E21921C44C1445ACACACA0B54608F1
        69FBEA04AEEB924EA77FAC943A0EFC4808F19E61F462BDDFBA02388EB323954A
        CD54AB5584108C8F8F639A665707CD669366B389699A5F324DF392E779BB7CDF
        FFC0B2ACF503A452A95F379B0D5CD755C78FFF828989AFF55CD2C58B173975EA
        14F97C1EAD359EE7CD8661F815DFF76FF482BED3BA3A564A7D6769A9CAD4D494
        F8BCC9016CDB4629859492300C89A2C81D1A1A9AB56DDB4E92E4AEB0F50DA0B5
        DEE4380E636363B747EB1E05E238C6F77DB66EDDC2FEC949DD683488E3F8D15C
        2EF70FD334499264ED00402C04C471D4571C9552B45A6DBEFFBD0362FFFE494A
        A5124288BDB95CEE2D2925A66922A5C4B6EDBE01F49D99FE79B6DA274912EA8D
        06870F1DE28927BE41B158444AF9F4E0E0E0EF5721D7A240DFB60AA094220C43
        8220E0E8F3CF51283CCEE2E22252CA69CFF37EDEE974BA86E381014647478274
        26D329168B2C2E2EEA6C36CBE060969FBEFC328542816AB58AE338BFF53CEF60
        B784B41E1460626282F1EDDB83B9B98F32E7CE5F106DDF672093615376137BF7
        7E9D52A9441886789E77D634CD3CB0B481001AD3B49C63C78E05D3D3D37A6161
        41CCCC54701C874EA7433A9DC6755DA228426B8D699ABF038E6E680840B37BF7
        6EE7E4C993C9F0F0B05FAFD7E372B9C2F2729D62B1C8F5EBD7A9D56AB7566B59
        531B1E8255DBB76F9FB167CF6E71F9F2E5A4DD6E5B966509100821585A5AE2FC
        F9F35896157E41001AC0F0BCB4F3E493DFBAAFD5F7DBAB7FC1CE0601887B27EF
        F2FC59DF4A6509C330BA6ECBEBCA81388EE2D9D9775A6118240FAA9DB19ED5BF
        F9E65FF4C18387AC3367CE885B6A88750358EB91BE5CBE2187878729956EF07F
        54E0B355E672393A9D0ED96CF69E76F1452920A854CAC9D5ABD75AAEEB522E97
        BD7C3E6FD56AB5CEDCDC5C3B0802C6C6B63A9B376FB1D74AD117C0952BF3F1F4
        F42BF8BE6FBBAECBC0C08028140ACCCFCF1B274E9CB07DDF474AA94F9F3E1D8F
        8F8FCBEE5FC31A0104E0DE7E0E822029972B866D5BAE520AD775B12C8B24498C
        56ABE5465144BD5E8F7CDF571B1202018440EB76BD509890175E7F4D2F5C5920
        E3A53937FB0E7F7BF712937BF6F0CB175EA0E5B7D9B6ED1131B27367577FDB04
        A81E0967F5CACCBC80E9507318F8B6C67864E72E1EDFB98B0EE095FE8BFFC61B
        383FF8215B9E7A0A1388C0FE18504ADFE5A761C0DBB14603722D211832E05D2D
        F819906E292C409906810BDFAD36389076995DAEF32A2003101DD555C94646E0
        C582A91E77855E0032D6909536B9DBE45A005A932050AE4BE6EA028997C6021C
        ADE97AF8D590054653F28E636C3F00A6D1B4DAFEC3CE528500F0A4F1E9E88C86
        F9A79FA13330C8B5C903A435D8860043745560057096ABC8E51A7E7E64A0BF7B
        81E6ED68E82176BC35C397FF354F2021494122C152D01CC972E9E8B3D4B7E4B0
        D4ADF7F79514F829182D9629FCF97594E3806996FB52200AC3DFE86CF6B053BD
        C9375FFD1537778C836122B45EC3C629502872FFBE867BB34267E82194EFBFD4
        1740BBDDFE7093943FE90C3FFC1A2B2B8CBCFF3E620D9BCB9D3910B92EE1E866
        96B3B93F54DBED0B7D0128A5B02CEB8FD2B23E0C1CE7C5D071BEAA944AFDAF6B
        D6BDC7754388281305FFF9E8D1EDE74A5BB7FD35F7CFF7EEEBF7C900300633CB
        0F208A3B0000000049454E44AE426082}
    end
    object dxBarUpdate: TdxBarButton
      Caption = 'Update'
      Category = 0
      Hint = 'Update'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000009704859730000136100001361011D7D0BC7000000206348524D0000
        7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
        C546000003674944415478DAAC956D6C935514C77F4F9F87BED197B5C96698A3
        84CD4C0C8E0515944C88463F181533247341867398810BBE0CB3A8335111A726
        26644A34230B9861826F89224618388CC100716108CA52B46CB8AEEDB6D2B88E
        BDB55DDBE7F845E7BA17F10337B9C9C93DE7FC72EFB9FF7BAE22225CCFA14CB1
        55E0266033700AF8FD3FF28680F06C0E6D8A5D9E5378F3017732816978887E77
        36BB76EE60B03FC4D5E161545545D334144561F7074DA96030F414F0F15C3B7C
        7D7DD192DA8A95CBB316582D2C76D868E9F88550E152DEDFFDE1B49434A56B1F
        229D8CF3EDB1130DC0AB53BDAA41510E7C575DF16CEDEA95E6F64E2FD18924F9
        2E27AD274F71F86217ABEFBB07B32644C27D4C24C6888D8FE2FDCDC7B2E26292
        C9D49A9E1EFF25E0C22471CFA30FCAF75B36CA0287AD776BDD767DE18DB95260
        D2A4FEED0649495CDE7DA7415EACAB95FA97EAA4DBD729A3C3574452A3222272
        F2449B00DB336A181E19E3E9AF8EAC03FAAAD697B6AF2A5A86584C3C59B68196
        7D7BE80D0430A80620C1E123AD6CABD9CAF8F83856FB7C0606C200E319C0378E
        FF9800BE06D676777553F9441541BF8FF6D33F60B3DB292959F56FB0A672F6E7
        73E8BACED2A2628C26E3CC5BD6455AFFB6DD3939D99C3FD7416363232282C56C
        C6A0AA93C1BAAE138BC55050D8F64C0D6EB77B56D96CFA273E9148E07038B965
        49E135059C95E52218F04F5DCA03FED480D10C1D29A028866B020D060564F241
        003403A1A9C2C66C32138D46F9F542E7AC101141749D458B3C58AD16B4791A40
        04C0A4A9773BCDE6400670301A65C55D256CA9DE3C03964EA77039B3C8CB2FA0
        6EC79B3435EFA562E30680AB40F95B0FDC6B6F3A7DD69B018CC7E3381C59DC71
        FBF269301D87CB8DA0515BFF0AC1835FF293AA110847B8F586ECCFF6953DEC6A
        0FF4D13D186DD632EB62008491918CB262B7DBF05DEEE1CEDB5650E93071B4A6
        8A56EF2562BD3E3E7AA1DAF58DB78BE70E1DDB0BB419FE4F4B9A984862351929
        2B7F0CBF289CBFDC83324FE3626C82FB9B3FF963DDFE2F9E07AAA7E76DFAFCD3
        FD2222327825903123037E191B0A8B8848CBA183E2B1CD977C4F9EBCF6DE2E01
        1E9FAB7D398D461300168B65E60D23C44622543E52CAE2E3470987FA292A2C60
        27E4CED560D7783C0B5F76B95C2493C9390E2FA4532972737371BADC749C3943
        30186A04DA2681D7FB0BF86B00AE57698FE6D4F6320000000049454E44AE4260
        82}
    end
    object dxbarRefresh: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000009704859730000136100001361011D7D0BC7000000206348524D0000
        7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
        C546000002FE4944415478DAAC95CD8B5C4514C57FB75EBD7A6927743B93C964
        662492C46C020A3119246A364A247EEB2622B80BA81B17A22EFC03DCB90BBA10
        7125B85286E84211348E814451277E04B131A26432EA74263D5FDD9D7EFD5ED5
        75F15E4FC72181282928A85ADC7BCF3DE7DC2A51556EE4B2579C9F021E043A80
        BFCEF808A8011F03EF0188AA62EA6BDBF6D5574FFD11745716FE3B2AAFA41D0D
        9F93C7CF89AA124FCF9D96343F8035FFBF57AFA88BBEB70036CD0FE00C848D7C
        16F74A64187686952CD0CEF5DAE4F97CAF0588626DA37E08110405010DF0F4CE
        2A2FEEAE3159898804BCC242D7F3C6B915DE3DB784460615037D6185B6057026
        8492505EBD7D8C2D4E487DE0D189CDCC5CBCCC6B3FB758E8668C6EB23C3EB199
        37F78DF2CCCE2A8F7D7601950CCC3A55C102C426ACB75891C0D11DC3009C59EA
        F2CA99791401115881937FAFF27A7D911F0FEFE2F8A15B38F2C5EF14688A0C06
        20164F2C1E2B810FE69A347B9E1F96534E345A6CB245C1583CB1F1D808963B5D
        F67F5AE7E0CD0987C76B38930F721409075E71165E98FD93D3175741401462D9
        20400CCB69CE6FAD1E2FEF19E6CBC54BA8CAC0D88396E1EDA9ED7CDD6CF3EDA5
        A5A20FB9BAA8224A7DB5C3A1F11A56B4A8DC4FE8CC6030D6B29CBB478648A2C0
        55A752C094F67A7FAEC9F47CF35FF1162029111A0D1CFBB5C15B533BD85D55CE
        AF0514B902A4E2303C7CDB56EEAD5599A8C43C3FFB0B8919542E443125E14639
        DB6AF0CD7287E97BEE64AB8BA84419CEF8720754728E6E1FE5FEF12A7B6A158E
        8C8DE0CAF8D894A22452423682F19E97BEFA89635377F0C97D7B393EDF6066A1
        C9629AB225711C1C1DA112457CD858649B750C571C89C9D7451155E58113A75A
        C01014A63746B126F0D0D8244FDE3AC988737DFA58EA654CCFFDC547E72F4024
        C4B125CD425FBCB6A82A8FCC9C2CE6AD9CDDFE49110C4A624CAF12D9EE659F27
        DDE01390BEA805B325C9A252AA1CE97726F8FD7A0D8FA87AD7C933074222E5A3
        211BC557309CB5003765D913C1C93BA27AD78647F77A570E66368D7BCFCA8DFE
        02FE19007E4E40427BAAAF350000000049454E44AE426082}
    end
    object dxBarDelete: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000009704859730000136100001361011D7D0BC7000000206348524D0000
        7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
        C546000003D24944415478DAAC954D6C945514869FFBF7FDCC74DA426768490B
        05943682092BA389898924C4880B8DC10D1B16155DB1616D24685C023B636264
        6320514360638824C6445D1058A9D4084A143A949F5A3A9DCE37DFCCF7738F8B
        16D00571C3494E727317EF79CF7DDF73AE12119E64689E702801E6D6D7B9BA7D
        DBF8B0F40FA98AD96F22B5C9860A13ADE5DAF9D11D9840B7ED5079D6A4958FC3
        E93B97DC2BB380605B51441A84BBB570A1B4DAD8D5427F80F440AD7520807A40
        42008392299FBA03AA3007BC7787690F9F6010D40F5B9F192FE2B019ADB239A2
        AD3A6E2A745CE8D115C1040E1B80AA2854CDE3ACC1198D8B2C6A40F69BD09F32
        3A22A8B2D7EEFBF6BC96521F574A81F71F96A97C405E7694F214DEE2FB355CA9
        1172BC29A92D0E112701B901B18AB0969F3661B11B11BC2F3F07D085B5FB8C78
        4C2F3BA2BB295A79147EB444EF889736B0A4074807AB4CCC4F30727D1341D76D
        290399EA9516AF342692EF08F31BA047565516AF1564194EF46048311AE3B5F9
        32D2E9ACB1ED77EF879A321C265CA8938FB45E5CAE277F9A9EBE2AF794EA2F1A
        284294577328BF6A1BB5F6CAFD3854BEE779F6FB2B0CDCE89CE85407286A773E
        0983CEFB516A284616F7CC4D367FCC5602D68D27EF6D3874512A532DCA851A88
        720F347BE84327855A0E63E2C504DBCCCE5DAB4D3F9F3B978E76BB478364E9EB
        E6C6F90B00639DC1B72BE32B1FB9890496D64390F36F0B3C04D4DE43A1F8757C
        33C9F6802C8D2F35FC538D6A1EB47359D99BE399B0D53D71A83FA380FEE569CA
        DB43A8387BCCA428F00B8AA1173A98D7045912BA6AF9A0173FA8D188163A65F9
        165E40811E6B812DC13F66F48ACC5119EE31FEDC7DE2326334BBFD69479A27FE
        AEC992768DBD2349EDFC5DD57967A1C82E4A616B6ED35DDCF46D7C27FE0FA07D
        E0FE52F0B57539CD2B93745BD5335BA3BFDE8CD2C1EBF33A7C291808E7B7FDD2
        38EF4339B732BAFCBABEB6EE9639BD73C8A0C5461EA07CC45029005BF55DCA65
        68DEDA489A557F2E943A6356C6760569349FDB04C4D0F87DF28DA1D49DECF6D4
        37ADCB1B28162B98E104B4B7C8AA2ED697FE2698CDCAE99DBE50B35AE798AA3F
        EAFB016925A39127D0EE716F4BC1F0429DA01DCC24F53EE15842BC31470C4839
        B003B70AA80B678F66C6610C5FB9AAA94A69A10BCE9614C37771BA47D8135AD5
        3677A6E648EA3D82C2118AC3979E52CB29E9055592CA170076B2D73AD996685F
        3A14BF1A38160DC531D03FA124D3822AD1A021C82DCA2A7C2062510627DBB285
        DA8CD6E1B4ABA77376F3CD9987FBB0596FF0DBF6A78FD5E81DB6219848F3BFFB
        3054984063CAF86CB8EBD6C1E0E5D94510D493FE02FE19007AE4A9BBD87973BB
        0000000049454E44AE426082}
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000C744558745469746C65005072696E743BC83632EA0000060E494441
        54785EA5575D885655177EF63967DEF9719A19474B25132C8B4253340AEBD31C
        6FA22ECAFA2C2F0A2A90BAC8E0B32E02454292309A1B2914FAA5FAAE0215ED2A
        A48B52502B27C902514C4AC2149CE6CF99F7ECFF662DF739FBBC338C32B45F16
        FBBCFBACB39F673D6B9DF5EE5778EF511D42089E0024FFFFEAE43789487A00A0
        F4F23EDCF6FC2987033C2F476F7235D61CDEF8F4038F00D0E435112FC3D423F1
        1E3DCF3EBE14FF667CB2EFC4C301C7C4D51B136005AC7130E3A6ADE77062EC31
        C24ABCE142A08832CB048C62DC946E4C83009BD0C6C23AC0398702CA5614F425
        8B08EA4B221E894B417B503000307D02DAC27B22C1092E01194408A002CA9785
        22E42380D479286510A39F660A9431701EB01CB60F51062270013F824E54C50A
        571048A64C8110626A05A481731ED64559F9D3081C5411D55A60BF3401A45255
        05C4F8F0D753403428A00D835BEB0248008D05588245E048D0A6099434054E1A
        1E7561F65502822D4AD504A04549CDE0C63A5E74938B0E40883EBEFFC5353F27
        39059811FA800260825972CA0AE0B7777DB960DEFC85BD499A3E74B2EFE8BC2C
        4D906B4D05185210A078765172462B6A44444504F8592935FEB775D739E53C96
        2C79E09256F90FA7FA8E6CF974F7F6F3442A23F077DEDFBF78E1ED771CBE7FE9
        6D9D7366B5E3E8B1EFB072CDA3F8B5EF34AC454841D1E97CB80E33A222824994
        3A700AB4D6B877E51A7CFFED213CFFE47D73FFBA32F24447477B4FEB8C8EC776
        BFFB7A1FE7A6AB7BCE5BF72DB9B573F6CC36B4B664503287CCC748BE52010672
        00A7A290BF943E10E49548D4596E64BC5F2EEB68AE659879532BFEB37C61C7E5
        CBFD6F02788609382FD6D69A520C8DD4D1DED60C994B68A970FEF471BCF4CA31
        DE3144DC303C1AAA718ACE082C5BB108B22E916529864773348DCF495A5B0DA0
        C629D0D677E4B96686843238308081FE2B58D9B3B652A395DD85C06436C14F54
        FDC063A0BF1F4383039C26671C7265A08D6BA3E0B908294FCA58A469C28D4778
        87F3674E23A3DB2241ADB9B944C9B20C69C68F4594CA30C6C01A53DE564A722A
        ACD19C3A6D1D943665836205B46646686AF2ECB46CF19D3871F22CB2A65A0CB4
        6CBFF1BBE0B28B5D398AC5BE10A1414955C78A65F7502DB129E3A075242094B6
        30E3A633CB15FFC273EB70E2A79DA88F198E5888099D34961BE2989416EEA25A
        4B24C260E30BEBB9204B2C6523015A90E39666AC04E6CC9D8B8FF7ECC07B7BBE
        C0A95FCEA2FFEF01C0314678DD62C40DFDB1580BBD607677D778E47763F3AB2F
        A2B3AB93D24CF23396368659730AE80B31CBB2849C98694BDB0C6CDBB2096992
        909AD31C9188751435171EAF694D249840AC01564019A444403928BE09D46514
        55548B7D8A122C1510D552684C9854960B90300B0584739E19266982BAD2CC10
        55A0384F7F343E4B386CCEFB58032453AE2D92D420CF0DA4B131E2881CC98809
        D106867E821F8212A8DCCF35EF0FEF7CAC0147795296F35D57865F93DD1F1CC4
        D9737FDE30F2C9E9996C772D9A8F4D2FAF2347C2E1343BEFA2028E9B033722D4
        254B84EEEE0E2C5FBA18BB766CC087C7FBD1DE928640A85780BB9A711E170715
        45C692F26F86A319181ED1E8FDEF02BCBAE5337475B66234B462C221730EA502
        CCC6180B651202E782DCF0D42AEC3DF02388A8B216D288B2B01CCF1E57256D14
        081138EF4514F9C3EBAD2D2D58BFEE418C49CD7EFC96595B1C747D0250973443
        63B9E64621B56532172E0FD2CC9129EDB8854AE383919FC7685E9C9A598140C6
        C3B385C0ACC3854B833C33B8F1A8E70ACE99E1E23C90FFF1DB2FAF8DD5EBBD02
        C92C78C038032973B4B6B5C107023273C50184A264F9A58E6B0CD8609ED51B1A
        18C6A71F1D44ADB90D2211EC6BAD19B872F1CC3600578940FDD0FEDEFD00BE06
        500BC7325A6FDDBC7DEFCF14A1A4E8875579D47200A474C8397CC20F469F4010
        81C8CDB7CCC281CF37AF0230128E62FC387D27CBC2E25522523917A6005AB4E1
        1CE38D35F318189573A1AD9C4C7DE517C9230E1FD202E0F780618940304B4604
        7C5C2C0693704AE547B6EEDCB7BAE10F072AC064AE7218291DCB53228C564703
        F868C068E078BD7FC744AE2958FC399C304FBD560AA601E4D3FD77EC2BF95211
        609209DC78B818F9E4F10F4824A6D94EC853CD0000000049454E44AE426082}
    end
    object dxBarButton8: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object Ed_supplier: TcxBarEditItem
      Caption = 'Supplier          : '
      Category = 0
      Hint = 'Supplier          : '
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object Jenis_Hutang: TdxBarCombo
      Category = 0
      Visible = ivAlways
      OnChange = Jenis_HutangChange
      ItemIndex = -1
    end
    object Cb_Valas: TdxBarCombo
      Caption = 'Valas                : '
      Category = 0
      Hint = 'Valas                : '
      Visible = ivAlways
      Text = 'IDR'
      ItemIndex = -1
    end
    object dp5: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Cetak Rekap Sisa Hutang'
      Category = 0
      Hint = 'Cetak Rekap Sisa Hutang'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000C744558745469746C65005072696E743BC83632EA0000060E494441
        54785EA5575D885655177EF63967DEF9719A19474B25132C8B4253340AEBD31C
        6FA22ECAFA2C2F0A2A90BAC8E0B32E02454292309A1B2914FAA5FAAE0215ED2A
        A48B52502B27C902514C4AC2149CE6CF99F7ECFF662DF739FBBC338C32B45F16
        FBBCFBACB39F673D6B9DF5EE5778EF511D42089E0024FFFFEAE43789487A00A0
        F4F23EDCF6FC2987033C2F476F7235D61CDEF8F4038F00D0E435112FC3D423F1
        1E3DCF3EBE14FF667CB2EFC4C301C7C4D51B136005AC7130E3A6ADE77062EC31
        C24ABCE142A08832CB048C62DC946E4C83009BD0C6C23AC0398702CA5614F425
        8B08EA4B221E894B417B503000307D02DAC27B22C1092E01194408A002CA9785
        22E42380D479286510A39F660A9431701EB01CB60F51062270013F824E54C50A
        571048A64C8110626A05A481731ED64559F9D3081C5411D55A60BF3401A45255
        05C4F8F0D753403428A00D835BEB0248008D05588245E048D0A6099434054E1A
        1E7561F65502822D4AD504A04549CDE0C63A5E74938B0E40883EBEFFC5353F27
        39059811FA800260825972CA0AE0B7777DB960DEFC85BD499A3E74B2EFE8BC2C
        4D906B4D05185210A078765172462B6A44444504F8592935FEB775D739E53C96
        2C79E09256F90FA7FA8E6CF974F7F6F3442A23F077DEDFBF78E1ED771CBE7FE9
        6D9D7366B5E3E8B1EFB072CDA3F8B5EF34AC454841D1E97CB80E33A222824994
        3A700AB4D6B877E51A7CFFED213CFFE47D73FFBA32F24447477B4FEB8C8EC776
        BFFB7A1FE7A6AB7BCE5BF72DB9B573F6CC36B4B664503287CCC748BE52010672
        00A7A290BF943E10E49548D4596E64BC5F2EEB68AE659879532BFEB37C61C7E5
        CBFD6F02788609382FD6D69A520C8DD4D1DED60C994B68A970FEF471BCF4CA31
        DE3144DC303C1AAA718ACE082C5BB108B22E916529864773348DCF495A5B0DA0
        C629D0D677E4B96686843238308081FE2B58D9B3B652A395DD85C06436C14F54
        FDC063A0BF1F4383039C26671C7265A08D6BA3E0B908294FCA58A469C28D4778
        87F3674E23A3DB2241ADB9B944C9B20C69C68F4594CA30C6C01A53DE564A722A
        ACD19C3A6D1D943665836205B46646686AF2ECB46CF19D3871F22CB2A65A0CB4
        6CBFF1BBE0B28B5D398AC5BE10A1414955C78A65F7502DB129E3A075242094B6
        30E3A633CB15FFC273EB70E2A79DA88F198E5888099D34961BE2989416EEA25A
        4B24C260E30BEBB9204B2C6523015A90E39666AC04E6CC9D8B8FF7ECC07B7BBE
        C0A95FCEA2FFEF01C0314678DD62C40DFDB1580BBD607677D778E47763F3AB2F
        A2B3AB93D24CF23396368659730AE80B31CBB2849C98694BDB0C6CDBB2096992
        909AD31C9188751435171EAF694D249840AC01564019A444403928BE09D46514
        55548B7D8A122C1510D552684C9854960B90300B0584739E19266982BAD2CC10
        55A0384F7F343E4B386CCEFB58032453AE2D92D420CF0DA4B131E2881CC98809
        D106867E821F8212A8DCCF35EF0FEF7CAC0147795296F35D57865F93DD1F1CC4
        D9737FDE30F2C9E9996C772D9A8F4D2FAF2347C2E1343BEFA2028E9B033722D4
        254B84EEEE0E2C5FBA18BB766CC087C7FBD1DE928640A85780BB9A711E170715
        45C692F26F86A319181ED1E8FDEF02BCBAE5337475B66234B462C221730EA502
        CCC6180B651202E782DCF0D42AEC3DF02388A8B216D288B2B01CCF1E57256D14
        081138EF4514F9C3EBAD2D2D58BFEE418C49CD7EFC96595B1C747D0250973443
        63B9E64621B56532172E0FD2CC9129EDB8854AE383919FC7685E9C9A598140C6
        C3B385C0ACC3854B833C33B8F1A8E70ACE99E1E23C90FFF1DB2FAF8DD5EBBD02
        C92C78C038032973B4B6B5C107023273C50184A264F9A58E6B0CD8609ED51B1A
        18C6A71F1D44ADB90D2211EC6BAD19B872F1CC3600578940FDD0FEDEFD00BE06
        500BC7325A6FDDBC7DEFCF14A1A4E8875579D47200A474C8397CC20F469F4010
        81C8CDB7CCC281CF37AF0230128E62FC387D27CBC2E25522523917A6005AB4E1
        1CE38D35F318189573A1AD9C4C7DE517C9230E1FD202E0F780618940304B4604
        7C5C2C0693704AE547B6EEDCB7BAE10F072AC064AE7218291DCB53228C564703
        F868C068E078BD7FC744AE2958FC399C304FBD560AA601E4D3FD77EC2BF95211
        609209DC78B818F9E4F10F4824A6D94EC853CD0000000049454E44AE426082}
      OnClick = dxBarLargeButton4Click
    end
    object dtp2: TcxBarEditItem
      Category = 0
      Visible = ivNever
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxRefresh: TdxBarLargeButton
      Caption = 'Tampilkan'
      Category = 0
      Hint = 'Tampilkan'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000008C649444154785E9D970B7054D5FDC73FE7DEBBBB61034930212F4248
        20E151081040500C8262C24B505A41FF4E6BA75070CAB4F5D5A98A456DABD3D6
        07C8D84E6D7DCC5094BF08A8BC54248409F23024A824819020CF3C681262DED9
        C7DD7B4EB777F60E994C8C63BFB3BF397BEFEE9EEFE7F73BBF73E6AE504AE148
        08C1F750DF2F2BFE0719F42307AAAF44588018004001A87E26F8FB96A3AC7D20
        EF3B0106347E7EE37B49C3125357084D5F2484480531514A5925A56A0899C14F
        9B9BEAFEFFF78FFFB8410861C3F406095921F8B66C9DE87B6FE1AAAD00E2AEE5
        ABDDAFBD7DE4E9CD3BCABA8E965D54571A5A5567B7DF36E8ECF2AB2BF5ADEAC8
        890BEAF5ADC77B36BD59F4E765F7AE8D06744038736D7CE3D0F70700B475CFBD
        15FFDADBC70E7D7AF8ACEAF6059523D394AAC71F541DDD01D5D6E957ED5D01F5
        4D9B4F7D5C745A6D78FD60E9434FFE75786F8897FE7180FEA40D54F6DBE62F77
        A5A567EF983221756EFEECB178A35C545FB8C6BA970BB9EFA16D2C59BD95354F
        ED61D3E612AE34B48310CC9C3E9A293F489B3E7C44D6AEB905F77A2353899069
        F5EF3340876B9BDE3CF8CCB8ACD4F505B78EC30C4936EFFC82773E3A436C4A3A
        83E387E1898A02D324D0D946B0BD99A57347317F76269A263874F42C676BEA5E
        5DFFC8D2C700EBB957F6CABCD697FAAF8063D82BF4DF3EFBFA70B7DBFDD8ACE9
        99006C78F3086F7F728E82C573F8E3AA1BD9F0D32CD6DC96C8D8F418E2929349
        1E3B9183279BD8FE493552C1CDD346E1F6B81FFCC5631BB300F1BB87EF145913
        749C70E4181A9170011EC0131B37EC9E319989DEC15E0F272BEBD97DA886FC3B
        66F2AB82E1A40E7511B214C3620C164D89657462142E43272D3B8BE3E58D9CAF
        6DC370B918332AC91D139BB862A0A53600FDA917F61ED085360740A198317904
        F58D6D8C1E198F52F061E159E2D3B3587E4B32819024602AFCE1F005EDF78C4D
        8DA2B1DD0404A3B2D3397AB29E8CD418D2D3122829D597017F012C40F507A009
        B4394FFCB2A0D72164F1AF1D2524DC3098403044E5B9268664E410E7D523E612
        5F38FC21658F6E43E0766B6842909C12CFA99206A454C4C478B1A44A737AADA2
        339F9C2107FAF6009AB44D2118B2F09B16A190A4ABCB4794C7853F68D1D91DC4
        15EDA1BECDB40D7B7A99072C49BBDFC2E512783C8241D1063DA6690344B95D58
        96151F0110273A736D0880AFBC2B9C0A20A4B222D9030A10A01B1A3EBF49D0B4
        88BB61104A9A149EED60E184D8B0B90D609B072CA8EF0C627820DAAD03126F18
        C202FCBE008140B0935E0A4300D066A4533EF85E3400251570DD5C01D15106CD
        2D9D84A464D2F81402DD6D9C6FF5F371751BF51DA6BD0CCD3E8BEA6F02745912
        DDAD11176BD0F24D5BB8F9E25116345DEB20180A5CC116AA2F8454A001424A45
        59451D1F7C52CEFB1F9DE264791D1E8F8B53A72F6349C89F954DC7D55AC0A236
        6C5E7CA99383173B39732D40B715427709E2635DE886A2FCCC25F272472095A4
        E6EB7AFC3DDD4580A48FBCBE0B4CE9DE1601B014D3728673F78249FC70E164A6
        E68CE0F65BC6F145C545FCFE0023936298377314ADB55F1315A57047817081DB
        0383BC3A49F1EE3030947E51CD8C094924C679E9EA09507AF2ACACBD58F52EA0
        7A577AC6E053CC30DF777A009B56393B4080A560C8102F13C6A450545C41C11D
        B9FCDF821CE28ED7B0EFF353648DCF203E712871B18308FAFD5C6D68E56CD565
        E64DCDB0A3ABDB4F615119CD8D4DC1E6A6660BD081D0B38F2E10FBFEF9279513
        53C8E541D1A8EB4B20412A8400941D2825B82D6F22B5758D7C76EC34BE9E008B
        668DE50FABE71223FD949756B0FBC3624A8F954377178FDF7F3377FCD7BCCBCF
        9123E5545456B3F281FCA89CA973F6DE74FBAAF1800BD016AF79520058216987
        0D10921210D8030221045269B85D6E6E9D3581F3E76BD9BDF7184DCDED441B3A
        6B964CE3D58717F1CED33FE2955F2F60E5A2C9B885A0E95A3BEFEF2A66CFBE43
        4C1C97C1FCB9D37978EDDD09E999130FDFB960F944C00D68692B0E8A504812B2
        2C0410B3F6C977DB97CE9FCA852B2D2889230C1D468DBC014D5894945571E94A
        233993B2199D994A6A6A4218D0B00FAAFA8626BE3E5F4F59E919DA3B3A484BCF
        A0B9B985C5F933888E763139B989DA5D2F371F2AFFF7E2E7F75457024140EE5F
        374F0920F6C1C7B7B6BDF8F43D0482122140291CB16D7719F72D9D024A72F56A
        0B255FD6507DAE9EBA8616FB8CD034416AF250B23393B93137DBEEA797FEF611
        E91999549DAEE299D559DC34671EED5FBEC5F19D7BAE1585215EDC7FDE81B08C
        EB3D00A05036930225402894A5904A474941724A2277252720E7876CCACAEAAB
        E1464D46080DC2A1944008C9BA8796F0C473DBF9D91C83940B6FE04BBD466CEE
        4A662A95103477ED0B83DFB9A9E85205103000A49438BE080081422114589172
        084D8FEC160D850B047C59D5C8F8B1E90821EC4060F74EC6C854962D9C847E62
        7D0BF939F18D877792A41443A7AE62B6500966F0C3BD9AEE9ABFF1C0B9330620
        2CA95091A47BD75F39970E1B1A42387B07043ABA6120FA3CE2094DC33B78285B
        8FD4DF1FF09BEFCC5E3C2DE16AF10E5280A1B93F27B7A92DA1B3AB7003B0C406
        505252F85935E1874DE7B0708400B6EC38E120392FE7922DEF95A022780E7F4A
        720CC7CA2EB2EB4C4BB55BB0CCD753F241FE3D3726341DDD43A2106416FC86C3
        DBF64F01741B405A92797963089A1201BD97832DDB4FF093E533AEBB0A074284
        3FFB9C0756DC041163E7671E97E0E3C29300C1EDA75B2AA5692DEDF11DDB9DB7
        706A82ABE62BBA2FFBE8F1995F01D200B09CAC9D1DA07026051931743A43F52E
        B7637CDD1C402A81B4148004823B6BDA2A4C532EACAB3FFCC2F061DEBC80B9BF
        B8A2D57C14081ACEBAD167728742460A8C632E009C6B090A24BD4E51E1402867
        120B30775FECA804EE06F4C8BD20601A80B27701E076698E372A927672622C2E
        2392631FBEA48418FB33DB5D010822A9A0A40380042C07C42996130218B26CE5
        A6DD2EC333B7F7F3004A0211202440E45A0E3C2A8912600503C51F6C7EE42EA0
        1BB0E8470E801BF044461D107CBB04DF2D873800F82359CB6FFBC36B00A108A1
        7F4083EF2F1909C500FA0FBD1999BC1D57AE6C0000000049454E44AE426082}
      OnClick = dxRefreshClick
    end
    object ed_code_supp: TcxBarEditItem
      Caption = '                         '
      Category = 0
      Enabled = False
      Hint = '                         '
      Visible = ivAlways
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dp1: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem5: TcxBarEditItem
      Caption = 'Jenis Hutang'
      Category = 0
      Hint = 'Jenis Hutang'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object cxBarEditItem6: TcxBarEditItem
      Caption = 'Tanggal Akhir Penutupan Saldo'
      Category = 0
      Hint = 'Tanggal Akhir Penutupan Saldo'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dp4: TcxBarEditItem
      Category = 0
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem8: TcxBarEditItem
      Caption = 'Periode Sisa Hutang Yang Akan Dicetak'
      Category = 0
      Hint = 'Periode Sisa Hutang Yang Akan Dicetak'
      Visible = ivAlways
      Width = 110
      PropertiesClassName = 'TcxLabelProperties'
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
  end
  object frxDBDataset4: TfrxDBDataset
    UserName = 'frxDBDataset4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'company_code=company_code'
      'company_name=company_name'
      'address=address'
      'telp=telp'
      'email=email'
      'npwp=npwp'
      'city=city'
      'address2=address2'
      'id=id'
      'created_at=created_at'
      'created_by=created_by'
      'updated_at=updated_at'
      'updated_by=updated_by'
      'deleted_at=deleted_at'
      'deleted_by=deleted_by'
      'type_of_business=type_of_business'
      'latitude=latitude'
      'longitude=longitude'
      'tax_status=tax_status'
      'currency=currency'
      'fp_name=fp_name'
      'kk_year=kk_year'
      'kkas_year=kkas_year'
      #13#10'inventory_date='#13#10'inventory_date'
      #13#10'month_sa_acc='#13#10'month_sa_acc'
      'item_date=item_date'
      'debt_date=debt_date'
      'expenditure_date=expenditure_date'
      'serial_no=serial_no'
      'reporter=reporter'
      'position=position')
    DataSet = QPerusahaan
    BCDToCurrency = False
    DataSetOptions = []
    Left = 976
    Top = 32
  end
  object QPerusahaan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_company')
    Left = 936
    Top = 32
  end
end
