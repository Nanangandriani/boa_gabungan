object FStockOpnameNota: TFStockOpnameNota
  Left = 0
  Top = 0
  Caption = 'FStockOpnameNota'
  ClientHeight = 442
  ClientWidth = 1037
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1037
    Height = 153
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 1033
    object RzLabel1: TRzLabel
      Left = 16
      Top = 8
      Width = 13
      Height = 15
      Caption = 'TP'
    end
    object RzLabel2: TRzLabel
      Left = 15
      Top = 37
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object RzLabel3: TRzLabel
      Left = 181
      Top = 37
      Width = 19
      Height = 15
      Caption = 'S/D'
    end
    object RzLabel4: TRzLabel
      Left = 16
      Top = 68
      Width = 21
      Height = 15
      Caption = 'SBU'
    end
    object edKaresidenan: TRzButtonEdit
      Left = 86
      Top = 5
      Width = 209
      Height = 23
      Text = ''
      TabOrder = 0
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKaresidenanButtonClick
    end
    object dtTanggal1: TRzDateTimePicker
      Left = 86
      Top = 34
      Width = 89
      Height = 23
      Date = 45922.000000000000000000
      Format = ''
      Time = 0.367118587964796500
      TabOrder = 1
      OnChange = dtTanggal1Change
    end
    object dtTanggal2: TRzDateTimePicker
      Left = 206
      Top = 34
      Width = 89
      Height = 23
      Date = 45922.000000000000000000
      Format = ''
      Time = 0.367118587964796500
      TabOrder = 2
      OnChange = dtTanggal2Change
    end
    object btTampilkan: TRzBitBtn
      Left = 324
      Top = 14
      Width = 116
      Height = 30
      Align = alCustom
      Caption = 'Tampilkan'
      TabOrder = 3
      OnClick = btTampilkanClick
      NumGlyphs = 2
    end
    object RzGroupBox1: TRzGroupBox
      Left = 2
      Top = 94
      Width = 1033
      Height = 57
      Align = alBottom
      Color = 15987699
      TabOrder = 4
      ExplicitWidth = 1029
      object RzLabel5: TRzLabel
        Left = 861
        Top = 25
        Width = 164
        Height = 15
        Caption = 'Tekan F2 :  Copy Data Sisa Nota'
      end
      object btCetakLaporanStokOpname: TRzBitBtn
        Left = 12
        Top = 18
        Width = 109
        Height = 30
        Align = alCustom
        Caption = 'Cetak Laporan Stok Opname'
        TabOrder = 0
        OnClick = btCetakLaporanStokOpnameClick
        NumGlyphs = 2
      end
      object btCetakSaldoNotaLHSN: TRzBitBtn
        Left = 136
        Top = 18
        Width = 110
        Height = 30
        Align = alCustom
        Caption = 'Cetak Saldo Nota LHSN'
        TabOrder = 1
        OnClick = btCetakSaldoNotaLHSNClick
        NumGlyphs = 2
      end
      object btPostingStokOpname: TRzBitBtn
        Left = 696
        Top = 18
        Width = 159
        Height = 30
        Align = alCustom
        Caption = 'Posting Stok Opname'
        TabOrder = 2
        OnClick = btPostingStokOpnameClick
        NumGlyphs = 2
      end
      object RzBitBtn2: TRzBitBtn
        Left = 259
        Top = 18
        Width = 111
        Height = 30
        Align = alCustom
        Caption = 'Cetak Berita Acara Saldo Piutang'
        TabOrder = 3
        OnClick = RzBitBtn2Click
        NumGlyphs = 2
      end
      object RzBitBtn3: TRzBitBtn
        Left = 384
        Top = 18
        Width = 132
        Height = 30
        Align = alCustom
        Caption = 'Cetak Rekap Perincian Saldo Piutang'
        TabOrder = 4
        OnClick = RzBitBtn3Click
        NumGlyphs = 2
      end
      object RzBitBtn4: TRzBitBtn
        Left = 529
        Top = 18
        Width = 132
        Height = 30
        Align = alCustom
        Caption = 'Cetak Rekap Stock Opname Per TP'
        TabOrder = 5
        OnClick = RzBitBtn4Click
        NumGlyphs = 2
      end
    end
    object cbSBU: TRzComboBox
      Left = 86
      Top = 65
      Width = 145
      Height = 23
      TabOrder = 5
    end
    object RzBitBtn1: TRzBitBtn
      Left = 446
      Top = 14
      Width = 116
      Height = 30
      Align = alCustom
      Caption = 'Clear'
      TabOrder = 6
      OnClick = RzBitBtn1Click
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 153
    Width = 1037
    Height = 289
    Align = alClient
    DataSource = DSDetail
    DrawMemoText = True
    DynProps = <>
    FrozenCols = 4
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SearchPanel.Enabled = True
    SearchPanel.FilterEnabled = False
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnKeyDown = DBGridEh1KeyDown
    OnMouseWheel = DBGridEh1MouseWheel
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Pelanggan'
        Width = 186
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kabupaten'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kabupaten'
        Width = 171
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kecamatan'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kecamatan'
        Width = 140
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Invoice'
        Width = 137
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_faktur'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Faktur'
        Width = 140
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Tanggal Nota'
        Width = 68
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'amount_nota_awal'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Sisa Nota'
        Width = 136
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'nota_fisik'
        Footers = <>
        Title.Caption = 'Nota Fisik'
        Width = 83
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'dpp_nota'
        Footers = <>
        Title.Caption = 'DPP/Nota DiBon'
        Width = 145
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'kontra_bon'
        Footers = <>
        Title.Caption = 'Kontra Bon'
        Width = 110
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'bg_mundur'
        Footers = <>
        Title.Caption = 'BG Mundur'
        Width = 111
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'transfer'
        Footers = <>
        Title.Caption = 'Cicilan'
        Width = 125
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'retur'
        Footers = <>
        Title.Caption = 'Retur'
        Width = 128
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'nota_masalah'
        Footers = <>
        Title.Caption = 'Nota Masalah'
        Width = 129
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'nota_belum_kembali'
        Footers = <>
        Title.Caption = 'Nota Belum Kembali'
        Width = 117
      end
      item
        CellButtons = <>
        DisplayFormat = '#,#0.00;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'nota_bangkrut'
        Footers = <>
        Title.Caption = 'Nota Bangkrut'
        Width = 111
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DSDetail: TDataSource
    DataSet = MemDetail
    Left = 24
    Top = 168
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    SortOrder = 'karesidenan,kabupaten,kecamatan,customer_name ASC'
    Left = 312
    Top = 160
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object karesidenan: TMTBlobDataFieldEh
          FieldName = 'karesidenan'
          DisplayLabel = 'karesidenan'
          DisplayWidth = 10
          BlobType = ftMemo
          Transliterate = True
        end
        object kabupaten: TMTBlobDataFieldEh
          FieldName = 'kabupaten'
          DisplayLabel = 'kabupaten'
          DisplayWidth = 10
          BlobType = ftMemo
          Transliterate = True
        end
        object kecamatan: TMTBlobDataFieldEh
          FieldName = 'kecamatan'
          DisplayLabel = 'kecamatan'
          DisplayWidth = 10
          BlobType = ftMemo
          Transliterate = True
        end
        object customer_name: TMTBlobDataFieldEh
          FieldName = 'customer_name'
          DisplayLabel = 'customer_name'
          DisplayWidth = 10
          BlobType = ftMemo
          Transliterate = True
        end
        object trans_no: TMTBlobDataFieldEh
          FieldName = 'trans_no'
          DisplayLabel = 'trans_no'
          DisplayWidth = 10
          BlobType = ftMemo
          Transliterate = True
        end
        object no_faktur: TMTBlobDataFieldEh
          FieldName = 'no_faktur'
          DisplayLabel = 'no_faktur'
          DisplayWidth = 10
          BlobType = ftMemo
          Transliterate = True
        end
        object trans_date: TMTDateTimeDataFieldEh
          FieldName = 'trans_date'
          DateTimeDataType = fdtDateEh
          DisplayLabel = 'trans_date'
          DisplayWidth = 10
        end
        object amount_nota_awal: TMTNumericDataFieldEh
          FieldName = 'amount_nota_awal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'amount_nota_awal'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nota_fisik: TMTNumericDataFieldEh
          FieldName = 'nota_fisik'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'nota_fisik'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object dpp_nota: TMTNumericDataFieldEh
          FieldName = 'dpp_nota'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'dpp_nota'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object kontra_bon: TMTNumericDataFieldEh
          FieldName = 'kontra_bon'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'kontra_bon'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object bg_mundur: TMTNumericDataFieldEh
          FieldName = 'bg_mundur'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'bg_mundur'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object transfer: TMTNumericDataFieldEh
          FieldName = 'transfer'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'transfer'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object retur: TMTNumericDataFieldEh
          FieldName = 'retur'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'retur'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nota_masalah: TMTNumericDataFieldEh
          FieldName = 'nota_masalah'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'nota_masalah'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nota_belum_kembali: TMTNumericDataFieldEh
          FieldName = 'nota_belum_kembali'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'nota_belum_kembali'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object nota_bangkrut: TMTNumericDataFieldEh
          FieldName = 'nota_bangkrut'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'nota_bangkrut'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA SELATAN'
            'Cilandak'
            'TOKO SAFANA'
            'FP/001/13/III/2025/DKI'
            ''
            45729d
            23529799.980000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA SELATAN'
            'Cilandak'
            'TOKO MAMAT'
            'FP/001/25/VIII/2025/HLJ'
            'FP/001/25/VIII/2025/HLJ'
            45894d
            1205523.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA SELATAN'
            'Cilandak'
            'TOKO MAMAT'
            'FP/001/29/VIII/2025/HLJ'
            ''
            45898d
            980100.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA SELATAN'
            'Cilandak'
            'TOKO MAMAT'
            'FP/001/21/VIII/2025/HLJ'
            'FP/001/21/VIII/2025/HLJ'
            45903d
            200000.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA SELATAN'
            'Cilandak'
            'TOKO MAMAT'
            'FP/002/15/IX/2025/HLJ'
            'FP/002/15/IX/2025/HLJ'
            45915d
            490050.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA SELATAN'
            'Cilandak'
            'TOKO MAMAT'
            'FP/001/15/IX/2025/HLJ'
            'FP/001/15/IX/2025/HLJ'
            45915d
            390050.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA UTARA'
            'Penjaringan'
            'PT.PETROSORB INDONESIA'
            'FP/001/12/VIII/2025/0'
            ''
            45881d
            256269996.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA UTARA'
            'Penjaringan'
            'PT.PETROSORB INDONESIA'
            'FP/001/27/VIII/2025/HLJ'
            ''
            45896d
            256269996.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil)
          (
            'DKI JAKARTA'
            'KOTA ADM. JAKARTA UTARA'
            'Cilincing'
            'UD LESTARI SWALAYAN'
            'FP/001/18/IX/2025/HLJ'
            ''
            45918d
            735075.000000000000000000
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
  object ReportSaldoNotaLHSN: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40907.381461944500000000
    ReportOptions.LastChange = 46239.382859178240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReportSaldoNotaLHSNGetValue
    Left = 608
    Datasets = <
      item
        DataSet = frxDBDatasetSaldoNotaLHSN
        DataSetName = 'frxDBDatasetSaldoNotaLHSN'
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
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
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
        Width = 1190.551950000000000000
        Stretched = True
        object Memo10: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.728355000000000000
          Top = -1.056748950000000000
          Width = 1189.095240000000000000
          Height = 35.739755270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'ARIAL'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERINCIAN SALDO NOTA AKHIR DI LHSN')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 1.228355000000000000
          Top = 35.493506530000000000
          Width = 1188.095240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'ARIAL'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TANGGAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 0.338590000000000000
          Top = 71.264866840000000000
          Width = 84.292244030000000000
          Height = 20.900563160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 98.774208420000000000
          Top = 71.551948180000000000
          Width = 1091.707277170000000000
          Height = 20.409448820000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[KARESIDENAN]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 84.347826090000000000
          Top = 70.264815580000000000
          Width = 14.084006050000000000
          Height = 20.900563160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 21.921259840000000000
        Top = 381.732530000000000000
        Width = 1190.551950000000000000
        DataSet = frxDBDatasetSaldoNotaLHSN
        DataSetName = 'frxDBDatasetSaldoNotaLHSN'
        RowCount = 0
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 21.921259842519690000
          Frame.Typ = []
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 520.238809230000000000
          Width = 58.644736390000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'trans_date'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."trans_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 304.526473970000000000
          Width = 215.396841540000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'customer_name'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."customer_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 578.739737390000000000
          Width = 125.069288020000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'no_faktur'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."no_faktur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 704.819086740000000000
          Width = 104.523024800000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'amount_nota_awal'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."amount_nota_awal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 809.832395950000000000
          Width = 101.859392570000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBDatasetSaldoNotaLHSN."nota_fisik">+<frxDBDatasetSaldoNota' +
              'LHSN."dpp_nota">+<frxDBDatasetSaldoNotaLHSN."kontra_bon">+<frxDB' +
              'DatasetSaldoNotaLHSN."bg_mundur">+<frxDBDatasetSaldoNotaLHSN."no' +
              'ta_belum_kembali">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 912.029376670000000000
          Width = 88.237786190000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'transfer'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 1000.353742860000000000
          Width = 62.047310000000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'retur'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."retur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1062.217688580000000000
          Width = 62.255411420000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'nota_masalah'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."nota_masalah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 1124.600187140000000000
          Width = 66.541125720000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'nota_bangkrut'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."nota_bangkrut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 131.023622050000000000
          Width = 173.808773910000000000
          Height = 21.921259842519690000
          StretchMode = smMaxHeight
          DataField = 'trans_no'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."trans_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.598434960000000000
        Top = 257.008040000000000000
        Width = 1190.551950000000000000
        Condition = '<frxDBDatasetSaldoNotaLHSN."kabupaten">'
        ShowFooterIfDrillDown = True
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 30.236240000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1.195423670000000000
          Top = 0.355168660000000000
          Width = 129.390038690000000000
          Height = 29.113600730000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."kabupaten"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 131.023622050000000000
          Top = 1.118120000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 304.803149610000000000
          Top = 0.118120000000000000
          Height = 30.236222910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 520.307086610000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 578.314960630000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 704.944881890000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 809.228346460000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 911.724409450000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 1000.220472440000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 1062.204724410000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 1124.566929130000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 100.000000000000000000
          Top = 0.222729230000000000
          Width = 205.287474590000000000
          Height = 29.113600730000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
        Height = 52.913420000000000000
        Top = 143.622140000000000000
        Width = 1190.551950000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 52.913420000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 130.510775380000000000
          Top = 0.702606920000000000
          Width = 173.932163230000000000
          Height = 52.175086930000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 1.277436920000000000
          Top = 0.471837690000000000
          Width = 128.291137590000000000
          Height = 52.277436930000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 304.743019530000000000
          Top = -0.066623850000000000
          Width = 215.614671450000000000
          Height = 52.405856160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 520.891537870000000000
          Top = 0.692307690000000000
          Width = 56.788544890000000000
          Height = 51.636625390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'TGL. FAKTUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 578.544242310000000000
          Top = 1.241068460000000000
          Width = 126.546429840000000000
          Height = 51.636625390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO. FAKTUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 704.351149830000000000
          Top = 1.241068460000000000
          Width = 105.998382660000000000
          Height = 50.867394620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'RUPIAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 809.441060110000000000
          Top = 18.933376150000000000
          Width = 101.961039050000000000
          Height = 33.508206160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA FISIK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 911.836402930000000000
          Top = 18.933376150000000000
          Width = 88.311307840000000000
          Height = 32.738975390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'CICILAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 1000.199206920000000000
          Top = 18.933376150000000000
          Width = 62.077565390000000000
          Height = 32.738975390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'RETUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 1063.112626920000000000
          Top = 18.933376150000000000
          Width = 62.077565390000000000
          Height = 33.508206160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA MASALAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 1124.354337690000000000
          Top = 18.933376150000000000
          Width = 67.328933080000000000
          Height = 33.508206160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA BANGKRUT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 809.965820990000000000
          Top = 0.471837690000000000
          Width = 380.918986670000000000
          Height = 18.390086160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KETERANGAN')
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
        Height = 41.574830000000000000
        Top = 555.590910000000000000
        Width = 1190.551950000000000000
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 26.456710000000000000
          Fill.BackColor = 14211288
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 579.125320880000000000
          Width = 125.110960620000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 704.944881890000000000
          Width = 103.957294220000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 809.984251970000000000
          Width = 100.191919360000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_fisik">+<frxDBDatasetSaldo' +
              'NotaLHSN."dpp_nota">+<frxDBDatasetSaldoNotaLHSN."kontra_bon">+<f' +
              'rxDBDatasetSaldoNotaLHSN."bg_mundur">+<frxDBDatasetSaldoNotaLHSN' +
              '."nota_belum_kembali">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 911.724409450000000000
          Width = 87.773861590000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."dpp_nota">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 1000.220472440000000000
          Width = 61.491754440000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."kontra_bon">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 1062.204724410000000000
          Width = 62.232495180000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."bg_mundur">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 1124.944881890000000000
          Width = 66.012025180000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."transfer">)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.476482710000000000
        Top = 309.921460000000000000
        Width = 1190.551950000000000000
        Condition = '<frxDBDatasetSaldoNotaLHSN."kecamatan">'
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = 0.952380950000000000
          Width = 1190.188226480000000000
          Height = 49.133890000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 131.023622050000000000
          Top = 0.342609800000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 304.803149610000000000
          Top = 0.390228850000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 520.307086610000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 578.314960630000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 704.944881890000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 809.228346460000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 911.724409450000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line52: TfrxLineView
          AllowVectorExport = True
          Left = 1000.220472440000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line53: TfrxLineView
          AllowVectorExport = True
          Left = 1062.204724410000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line54: TfrxLineView
          AllowVectorExport = True
          Left = 1124.566929130000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 130.619226840000000000
          Top = 1.066595060000000000
          Width = 174.594559740000000000
          Height = 31.719867900000000000
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."kecamatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line92: TfrxLineView
          AllowVectorExport = True
          Left = 131.267780000000000000
          Top = 33.019789800000000000
          Width = 173.858267716535000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 129.889415260000000000
          Top = 32.914526640000000000
          Width = 175.270123520000000000
          Height = 16.499397900000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO. NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 427.086890000000000000
        Width = 1190.551950000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 22.677180000000000000
          Fill.BackColor = 14211288
          Frame.Typ = []
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 578.801630730000000000
          Width = 126.274154650000000000
          Height = 22.299212600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        SUB TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 704.992500940000000000
          Top = -0.142857140000000000
          Width = 104.511436070000000000
          Height = 22.469078570000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 809.448053140000000000
          Top = -0.142857140000000000
          Width = 101.901012360000000000
          Height = 22.469078570000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_fisik">+<frxDBDatasetSaldo' +
              'NotaLHSN."dpp_nota">+<frxDBDatasetSaldoNotaLHSN."kontra_bon">+<f' +
              'rxDBDatasetSaldoNotaLHSN."bg_mundur">+<frxDBDatasetSaldoNotaLHSN' +
              '."nota_belum_kembali">)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 912.047001920000000000
          Top = -0.142857140000000000
          Width = 87.311860250000000000
          Height = 23.183364280000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."dpp_nota">)]')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1000.220472440000000000
          Top = 0.350958570000000000
          Width = 61.306569250000000000
          Height = 21.754792860000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."kontra_bon">)]')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 1062.204724410000000000
          Top = -0.142857140000000000
          Width = 61.734533190000000000
          Height = 23.183364280000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."bg_mundur">)]')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 1124.820657140000000000
          Top = 0.571428570000000000
          Width = 66.541125720000000000
          Height = 22.469078570000000000
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."transfer">)]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 472.441250000000000000
        Width = 1190.551950000000000000
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 0.952380950000000000
          Width = 1189.417322830000000000
          Height = 22.677180000000000000
          Fill.BackColor = 14211288
          Frame.Typ = []
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 579.359221290000000000
          Top = 0.755905510000000000
          Width = 125.688074060000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 704.992500940000000000
          Top = 0.571428570000000000
          Width = 105.613798270000000000
          Height = 21.921259840000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 809.603299590000000000
          Top = 0.461192360000000000
          Width = 102.615298090000000000
          Height = 21.921259840000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_fisik">+<frxDBDatasetSaldo' +
              'NotaLHSN."dpp_nota">+<frxDBDatasetSaldoNotaLHSN."kontra_bon">+<f' +
              'rxDBDatasetSaldoNotaLHSN."bg_mundur">+<frxDBDatasetSaldoNotaLHSN' +
              '."nota_belum_kembali">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 911.962504690000000000
          Top = 0.461192350000000000
          Width = 88.237786190000000000
          Height = 21.921259840000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."dpp_nota">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 1000.220472440000000000
          Top = 0.461192350000000000
          Width = 60.645193590000000000
          Height = 21.754792860000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."kontra_bon">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 1062.204724410000000000
          Top = 0.377952760000000000
          Width = 62.634004080000000000
          Height = 21.921259840000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."bg_mundur">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 1124.944881890000000000
          Top = 0.377952760000000000
          Width = 66.752765920000000000
          Height = 21.921259840000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."transfer">)]')
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
        Height = 22.677180000000000000
        Top = 619.842920000000000000
        Width = 1190.551950000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 2.157700000000000000
          Top = 3.000000000000000000
          Width = 1179.213360000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              'Printed   [now]                                                 ' +
              '          Page  [Page] of [TotalPages]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetSaldoNotaLHSN: TfrxDBDataset
    UserName = 'frxDBDatasetSaldoNotaLHSN'
    CloseDataSource = False
    FieldAliases.Strings = (
      'karesidenan=karesidenan'
      'kabupaten=kabupaten'
      'kecamatan=kecamatan'
      'customer_name=customer_name'
      'trans_no=trans_no'
      'no_faktur=no_faktur'
      'trans_date=trans_date'
      'amount_nota_awal=amount_nota_awal'
      'nota_fisik=nota_fisik'
      'dpp_nota=dpp_nota'
      'kontra_bon=kontra_bon'
      'bg_mundur=bg_mundur'
      'transfer=transfer'
      'retur=retur'
      'nota_masalah=nota_masalah'
      'nota_belum_kembali=nota_belum_kembali'
      'nota_bangkrut=nota_bangkrut')
    DataSet = QReport
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 230
  end
  object QReport: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select karesidenan,SUM(amount_nota_awal) saldo_piutang,sum(nota_' +
        'fisik) nota,sum(transfer) cicil,sum(retur) retur, sum(nota_bangk' +
        'rut) bangkrut,sum(nota_masalah) masalah from get_stock_opname_no' +
        'ta('#39'2026-07-31'#39',NULL,'#39#39') group by karesidenan')
    Left = 216
    Top = 176
  end
  object ReportStokOpname: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44260.432679409700000000
    ReportOptions.LastChange = 46225.612822187500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = ReportStokOpnameGetValue
    Left = 608
    Top = 56
    Datasets = <
      item
        DataSet = frxDBDatasetStokOpname
        DataSetName = 'frxDBDatasetStokOpname'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 809.203978890000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo12: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 171.968615000000000000
          Top = 9.118120000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN STOCK OPNAME NOTA')
          ParentFont = False
        end
        object periode: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 171.968615000000000000
          Top = 28.015770000000000000
          Width = 374.173470000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SBU]')
          ParentFont = False
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 140.590600000000000000
          Width = 116.281797780000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo awal nota')
          ParentFont = False
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 162.488250000000000000
          Width = 124.287054450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Ditambah Penjualan')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 184.063080000000000000
          Width = 129.842610000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Dikurangi Pelunasan')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 205.960730000000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Saldo akhir nota')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 513.070088890000000000
          Top = 140.818897640000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 513.070088890000000000
          Top = 163.496062990000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object SaldoAwalKasKecil: TfrxMemoView
          AllowVectorExport = True
          Left = 535.747268890000000000
          Top = 140.818897640000000000
          Width = 164.724490000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_amount_nota_awal"]')
          ParentFont = False
        end
        object PengisianKasKecil: TfrxMemoView
          AllowVectorExport = True
          Left = 535.747268890000000000
          Top = 163.496062990000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_amount_penjualan"]')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 512.841888890000000000
          Top = 182.393700790000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 512.841888890000000000
          Top = 206.204724410000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Hasil1: TfrxMemoView
          AllowVectorExport = True
          Left = 535.519068890000000000
          Top = 182.393700790000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_amount_bayar"]')
          ParentFont = False
        end
        object PengeluaranKasKecil: TfrxMemoView
          AllowVectorExport = True
          Left = 535.519068890000000000
          Top = 206.204724410000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_amount_saldo_nota"]')
          ParentFont = False
        end
        object TGLSaldoAwalKasKecil: TfrxMemoView
          AllowVectorExport = True
          Left = 137.724490000000000000
          Top = 140.590600000000000000
          Width = 44.598425196850400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'per tgl.')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 78.102350000000000000
          Width = 114.059575560000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'PERIODE')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771650000000000
          Top = 103.657905560000000000
          Width = 112.948464440000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TP')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 131.111111110000000000
          Top = 78.102350000000000000
          Width = 20.726242230000000000
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
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 130.000000000000000000
          Top = 102.546794440000000000
          Width = 21.837353340000000000
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
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 139.666666670000000000
          Top = 78.102350000000000000
          Width = 465.170686670000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[PERIODE]')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 137.333333330000000000
          Top = 162.546794440000000000
          Width = 44.598425196850400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'per tgl.')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 137.555555550000000000
          Top = 183.435683330000000000
          Width = 44.598425196850400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'per tgl.')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 137.444444440000000000
          Top = 207.324572220000000000
          Width = 44.598425196850400000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'per tgl.')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 181.777777780000000000
          Top = 140.657905560000000000
          Width = 167.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[TANGGAL1]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 181.777777780000000000
          Top = 162.546794440000000000
          Width = 167.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[TANGGAL1_TANGGAL2]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 181.777777780000000000
          Top = 182.324572220000000000
          Width = 167.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[TANGGAL1_TANGGAL2]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 181.777777780000000000
          Top = 206.213461110000000000
          Width = 167.811023620000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[TANGGAL1]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 377.888888890000000000
          Top = 140.657905560000000000
          Width = 72.134921120000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_nota_awal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 377.888888890000000000
          Top = 162.546794440000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_nota_penjualan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 377.888888890000000000
          Top = 182.324572220000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_nota_bayar"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 377.888888890000000000
          Top = 206.213461110000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."jumlah_nota_saldo_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 461.555555560000000000
          Top = 140.657905560000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 461.555555560000000000
          Top = 182.324572220000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 461.555555560000000000
          Top = 206.213461110000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 461.555555560000000000
          Top = 163.657905560000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 280.657905560000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Fisik')
          ParentFont = False
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 318.435683330000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nota Dibon/DPP')
          ParentFont = False
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 243.324572220000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Terdiri dari : ')
          ParentFont = False
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 357.435683330000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kontra Bon')
          ParentFont = False
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 394.769016670000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'BG Mundur')
          ParentFont = False
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771650000000000
          Top = 431.435683330000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Cicilan')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 469.213461110000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Retur yang belum diuangkan')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 522.657905560000000000
          Width = 112.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Lain-lain')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 565.880127780000000000
          Width = 196.535433070866000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '1. Nota Masalah')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 603.657905560000000000
          Width = 196.535433070866000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '2. Nota Belum Kembali')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 9.826771653543310000
          Top = 641.435683330000000000
          Width = 196.535433070866000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '3. Nota Bangkrut')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 236.666666670000000000
          Top = 280.213461110000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_nota_fisik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 320.333333340000000000
          Top = 280.213461110000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 353.333333330000000000
          Top = 280.213461110000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 376.010513330000000000
          Top = 280.213461110000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."nota_fisik"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 236.555555560000000000
          Top = 318.102350000000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_dpp_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 320.222222230000000000
          Top = 318.102350000000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 353.222222220000000000
          Top = 318.102350000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 375.899402220000000000
          Top = 318.102350000000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."dpp_nota"]')
          ParentFont = False
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 236.666666670000000000
          Top = 355.880127780000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_kontra_bon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 320.333333340000000000
          Top = 355.880127780000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 353.333333330000000000
          Top = 355.880127780000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 376.010513330000000000
          Top = 355.880127780000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."kontra_bon"]')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 236.666666670000000000
          Top = 392.546794440000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_bg_mundur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 320.333333340000000000
          Top = 392.546794440000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 353.333333330000000000
          Top = 392.546794440000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 376.010513330000000000
          Top = 392.546794440000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."bg_mundur"]')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 236.666666670000000000
          Top = 431.435683330000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 320.333333340000000000
          Top = 431.435683330000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 353.333333330000000000
          Top = 431.435683330000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 376.010513330000000000
          Top = 431.435683330000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."transfer"]')
          ParentFont = False
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 236.666666670000000000
          Top = 469.213461110000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_retur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 320.333333340000000000
          Top = 469.213461110000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 353.333333330000000000
          Top = 469.213461110000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 376.010513330000000000
          Top = 469.213461110000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."retur"]')
          ParentFont = False
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 235.555555560000000000
          Top = 566.991238890000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_nota_masalah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 319.222222230000000000
          Top = 566.991238890000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 352.222222220000000000
          Top = 566.991238890000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 374.899402220000000000
          Top = 566.991238890000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."nota_masalah"]')
          ParentFont = False
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 235.555555560000000000
          Top = 604.769016670000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_nota_belum_kembali"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 319.222222230000000000
          Top = 604.769016670000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 352.222222220000000000
          Top = 604.769016670000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 374.899402220000000000
          Top = 604.769016670000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."nota_belum_kembali"]')
          ParentFont = False
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 235.555555560000000000
          Top = 642.546794440000000000
          Width = 72.188976380000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,##0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."count_nota_bangkrut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 319.222222230000000000
          Top = 642.546794440000000000
          Width = 22.134921120000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Left = 352.222222220000000000
          Top = 642.546794440000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 374.899402220000000000
          Top = 642.546794440000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetStokOpname."nota_bangkrut"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 510.555555560000000000
          Top = 718.102350000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 533.232735560000000000
          Top = 718.102350000000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBDatasetStokOpname."nota_fisik">+<frxDBDatasetStokOpname."' +
              'dpp_nota">+<frxDBDatasetStokOpname."kontra_bon">+<frxDBDatasetSt' +
              'okOpname."bg_mundur">+<frxDBDatasetStokOpname."transfer">+<frxDB' +
              'DatasetStokOpname."retur">+<frxDBDatasetStokOpname."nota_masalah' +
              '">+<frxDBDatasetStokOpname."nota_bangkrut">+<frxDBDatasetStokOpn' +
              'ame."nota_belum_kembali">]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 512.777777780000000000
          Top = 783.435683330000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Rp. ')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 535.454957780000000000
          Top = 782.922862820000000000
          Width = 164.787401570000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[<frxDBDatasetStokOpname."jumlah_amount_saldo_nota">-<frxDBDatas' +
              'etStokOpname."nota_fisik">-<frxDBDatasetStokOpname."dpp_nota">-<' +
              'frxDBDatasetStokOpname."kontra_bon">-<frxDBDatasetStokOpname."bg' +
              '_mundur">-<frxDBDatasetStokOpname."transfer">-<frxDBDatasetStokO' +
              'pname."retur">-<frxDBDatasetStokOpname."nota_masalah">-<frxDBDat' +
              'asetStokOpname."nota_bangkrut">-<frxDBDatasetStokOpname."nota_be' +
              'lum_kembali">]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 379.444444440000000000
          Top = 716.991238890000000000
          Width = 106.010513330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 130.555555560000000000
          Top = 781.435683330000000000
          Width = 196.010513330000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Selisih lebih atau kurang')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 139.850393700000000000
          Top = 102.546794440000000000
          Width = 350.726242230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[KARESIDENAN]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 204.094620000000000000
        Top = 888.189550000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 13.797052220000000000
          Top = 56.715728890000000000
          Width = 126.710472220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Penanggung jawab :')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 227.340652220000000000
          Top = 58.713976660000000000
          Width = 106.710472220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Stock Opname:')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 431.000000000000000000
          Top = 1.810450000000000000
          Width = 264.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanggal,...................................................')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 432.555555560000000000
          Top = 57.366005560000000000
          Width = 106.710472220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Diketahui :')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 607.444444440000000000
          Top = 57.143783330000000000
          Width = 106.710472220000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Disetujui :')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDatasetStokOpname: TfrxDBDataset
    UserName = 'frxDBDatasetStokOpname'
    CloseDataSource = False
    FieldAliases.Strings = (
      'karesidenan=karesidenan'
      'kabupaten=kabupaten'
      'kecamatan=kecamatan'
      'customer_name=customer_name'
      'jumlah_nota_awal=jumlah_nota_awal'
      'jumlah_amount_nota_awal=jumlah_amount_nota_awal'
      'jumlah_nota_penjualan=jumlah_nota_penjualan'
      'jumlah_amount_penjualan=jumlah_amount_penjualan'
      'jumlah_nota_bayar=jumlah_nota_bayar'
      'jumlah_amount_bayar=jumlah_amount_bayar'
      'jumlah_nota_saldo_nota=jumlah_nota_saldo_nota'
      'jumlah_amount_saldo_nota=jumlah_amount_saldo_nota'
      'amount_customer=amount_customer'
      'karesidenan_1=karesidenan_1'
      'date=date'
      'count_nota_fisik=count_nota_fisik'
      'count_dpp_nota=count_dpp_nota'
      'count_kontra_bon=count_kontra_bon'
      'count_bg_mundur=count_bg_mundur'
      'count_transfer=count_transfer'
      'count_retur=count_retur'
      'count_nota_masalah=count_nota_masalah'
      'count_nota_belum_kembali=count_nota_belum_kembali'
      'count_nota_bangkrut=count_nota_bangkrut'
      'nota_fisik=nota_fisik'
      'dpp_nota=dpp_nota'
      'kontra_bon=kontra_bon'
      'bg_mundur=bg_mundur'
      'transfer=transfer'
      'retur=retur'
      'nota_masalah=nota_masalah'
      'nota_belum_kembali=nota_belum_kembali'
      'nota_bangkrut=nota_bangkrut')
    DataSet = QReport
    BCDToCurrency = False
    DataSetOptions = []
    Left = 120
    Top = 168
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 520
    Top = 272
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 600
    Top = 272
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 674
    Top = 272
  end
  object ReportBeritaAcaraSaldoPiutang: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40907.381461944500000000
    ReportOptions.LastChange = 46233.420622500000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReportSaldoNotaLHSNGetValue
    Left = 456
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDatasetSaldoNotaLHSN
        DataSetName = 'frxDBDatasetSaldoNotaLHSN'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 91.571119520000000000
        Top = 18.897650000000000000
        Width = 737.008350000000000000
        Stretched = True
        object Memo20: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.000237992126000008
          Top = 32.740731670000000000
          Width = 737.007874015748000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'ARIAL'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[TANGGAL]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 0.338590000000000000
          Top = 63.369234840000000000
          Width = 84.292244030000000000
          Height = 20.900563160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'TP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 98.774208420000000000
          Top = 63.656316180000000000
          Width = 638.373943840000000000
          Height = 20.409448820000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[KARESIDENAN]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 84.347826090000000000
          Top = 63.369183580000000000
          Width = 14.084006050000000000
          Height = 20.900563160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.003987520000000022
          Width = 737.000374960000000000
          Height = 35.739755270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'ARIAL'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BERITA ACARA SALDO PIUTANG  DAGANG ')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.897650000000000000
        Top = 370.393940000000000000
        Width = 737.008350000000000000
        DataSet = frxDBDatasetSaldoNotaLHSN
        DataSetName = 'frxDBDatasetSaldoNotaLHSN'
        RowCount = 0
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Width = 737.763779527559000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 443.143571130000000000
          Top = 0.822605960000000000
          Width = 55.937007874015700000
          Height = 21.205342310000000000
          StretchMode = smMaxHeight
          DataField = 'trans_date'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."trans_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 228.526473970000000000
          Top = 0.461538460000000000
          Width = 214.444460590000000000
          Height = 21.974573080000000000
          StretchMode = smMaxHeight
          DataField = 'customer_name'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."customer_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 498.882594530000000000
          Top = 0.461538460000000000
          Width = 126.479190100000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'no_faktur'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."no_faktur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 624.676229590000000000
          Top = 0.413919410000000000
          Width = 113.385826771654000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'amount_nota_awal'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."amount_nota_awal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 99.023622050000000000
          Top = -0.538461540000000000
          Width = 129.999250090000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'trans_no'
          DataSet = frxDBDatasetSaldoNotaLHSN
          DataSetName = 'frxDBDatasetSaldoNotaLHSN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."trans_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.598434960000000000
        Top = 245.669450000000000000
        Width = 737.008350000000000000
        Condition = '<frxDBDatasetSaldoNotaLHSN."kabupaten">'
        ShowFooterIfDrillDown = True
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Width = 737.763779530000000000
          Height = 30.236240000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1.195423670000000000
          Top = 0.355168660000000000
          Width = 97.961467260000000000
          Height = 29.113600730000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."kabupaten"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 99.023622050000000000
          Top = 1.118120000000000000
          Height = 29.480314960629900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 228.803149610000000000
          Top = 0.118120000000000000
          Height = 30.236222910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 442.307086610000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 498.314960630000000000
          Top = 1.047619050000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 624.944881890000000000
          Top = 1.000000000000000000
          Height = 29.480314960000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 100.000000000000000000
          Top = 0.222729230000000000
          Width = 128.144617440000000000
          Height = 29.113600730000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 228.461538460000000000
          Width = 212.979782270000000000
          Height = 29.113600730000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 441.904761900000000000
          Top = 0.997216670000000000
          Width = 56.789306080000000000
          Height = 29.113600730000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
        Height = 52.913420000000000000
        Top = 132.283550000000000000
        Width = 737.008350000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 737.351887630000000000
          Height = 52.913420000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.510775380000000000
          Top = 0.702606920000000000
          Width = 109.170258470000000000
          Height = 52.175086930000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'KECAMATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 1.277436920000000000
          Top = 0.471837690000000000
          Width = 96.862566160000000000
          Height = 52.277436930000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KABUPATEN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 228.743019530000000000
          Top = -0.066623850000000000
          Width = 214.662290500000000000
          Height = 52.405856160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA PELANGGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 442.843918820000000000
          Top = 0.692307690000000000
          Width = 55.836163940000000000
          Height = 51.636625390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'TGL. FAKTUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 498.687099450000000000
          Top = 1.241068460000000000
          Width = 125.594048900000000000
          Height = 51.636625390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO. FAKTUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 624.255911730000000000
          Top = 1.241068460000000000
          Width = 113.617430290000000000
          Height = 50.867394620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'RUPIAH')
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
        Height = 199.670068100000000000
        Top = 544.252320000000000000
        Width = 737.008350000000000000
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Width = 737.763779527559100000
          Height = 26.456710000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 501.934844690000000000
          Width = 121.301436810000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        GRAND TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 624.944881890000000000
          Width = 114.433484700000000000
          Height = 27.212598430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object tglcetak: TfrxMemoView
          AllowVectorExport = True
          Left = 0.523809520000000000
          Top = 34.795299050000000000
          Width = 267.015722530000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[TANGGALCETAK]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 0.523809520000000000
          Top = 61.984251970000000000
          Width = 147.015722530000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PENANGGUNG JAWAB :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 149.857142860000000000
          Top = 61.984251970000000000
          Width = 117.491913010000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DIPERIKSA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 269.095238100000000000
          Top = 61.984251970000000000
          Width = 120.349055860000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DISETUJUI OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 391.523809520000000000
          Top = 61.984251970000000000
          Width = 120.349055860000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DIKETAHUI OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 509.190476190000000000
          Top = 61.984251970000000000
          Width = 114.634770150000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DIPERIKSA OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 627.952380950000000000
          Top = 61.984251970000000000
          Width = 114.634770150000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DISETUJUI OLEH :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 1.904761900000000000
          Top = 164.795299050000000000
          Width = 147.015722530000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TERIMA KAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 151.428571430000000000
          Top = 164.366727620000000000
          Width = 117.491913010000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TEAM LEADER')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 270.666666670000000000
          Top = 164.366727620000000000
          Width = 123.206198720000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KA NON  OPERASIONAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 393.095238090000000000
          Top = 164.366727620000000000
          Width = 120.349055860000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KOORD  TERIMA KAS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 510.761904760000000000
          Top = 164.366727620000000000
          Width = 114.634770150000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'AKUNTANSI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 629.523809520000000000
          Top = 164.366727620000000000
          Width = 114.634770150000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TL / KOORD. AKUNTANSI')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 49.476482710000000000
        Top = 298.582870000000000000
        Width = 737.008350000000000000
        Condition = '<frxDBDatasetSaldoNotaLHSN."kecamatan">'
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Width = 737.763779530000000000
          Height = 49.133890000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 99.023622050000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 228.803149610000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 442.307086610000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 498.314960630000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 624.944881890000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 99.619226840000000000
          Top = 1.066595060000000000
          Width = 127.927893070000000000
          Height = 31.719867900000000000
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetSaldoNotaLHSN."kecamatan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line92: TfrxLineView
          AllowVectorExport = True
          Left = 99.267780000000000000
          Top = 33.019789800000000000
          Width = 129.259842519685000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 98.889415260000000000
          Top = 32.914526640000000000
          Width = 128.603456850000000000
          Height = 16.499397900000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO. NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 440.904761900000000000
          Top = 0.464749050000000000
          Width = 56.789306080000000000
          Height = 48.161219780000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxsaldonotaakihr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 415.748300000000000000
        Width = 737.008350000000000000
        object Shape5: TfrxShapeView
          AllowVectorExport = True
          Left = 0.047619050000000000
          Width = 737.351887610000000000
          Height = 22.677180000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 498.849249770000000000
          Width = 127.226535610000000000
          Height = 22.299212600000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        SUB TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 624.944881890000000000
          Top = -0.142857140000000000
          Width = 112.629921260000000000
          Height = 22.469078570000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 461.102660000000000000
        Width = 737.008350000000000000
        object Shape6: TfrxShapeView
          AllowVectorExport = True
          Left = 0.047619040000000000
          Width = 737.351887620000000000
          Height = 22.677180000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 502.311602240000000000
          Top = 0.755905510000000000
          Width = 124.735693110000000000
          Height = 21.921259840000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 624.944881890000000000
          Top = 0.571428570000000000
          Width = 112.629921260000000000
          Height = 21.921259840000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
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
        Height = 22.677180000000000000
        Top = 767.244590000000000000
        Width = 737.008350000000000000
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 2.157700000000000000
          Top = 3.000000000000000000
          Width = 735.095613050000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Frame.Width = 2.000000000000000000
          HAlign = haRight
          Memo.UTF8W = (
            
              'Printed   [now]                                                 ' +
              '          Page  [Page] of [TotalPages]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBRekapSO: TfrxDBDataset
    UserName = 'frxDBRekapSO'
    CloseDataSource = False
    FieldAliases.Strings = (
      'karesidenan=karesidenan'
      'saldo_piutang=saldo_piutang'
      'nota=nota'
      'cicil=cicil'
      'retur=retur'
      'bangkrut=bangkrut'
      'masalah=masalah')
    DataSet = QReport
    BCDToCurrency = False
    DataSetOptions = []
    Left = 440
    Top = 272
  end
  object ReportRekapSO: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40907.381461944500000000
    ReportOptions.LastChange = 46238.577926053240000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReportStokOpnameGetValue
    Left = 512
    Top = 320
    Datasets = <
      item
        DataSet = frxDBRekapSO
        DataSetName = 'frxDBRekapSO'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 7.500000000000000000
      RightMargin = 7.500000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 63.952071900000000000
        Top = 18.897650000000000000
        Width = 737.008350000000000000
        Stretched = True
        object prsh: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.000237990000000021
          Top = 24.740731670000000000
          Width = 737.007874020000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'ARIAL'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'MAB')
          ParentFont = False
        end
        object Judul: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 0.003987520000000022
          Width = 737.000374960000000000
          Height = 35.739755270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'ARIAL'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP PERINCIAN SALDO PIUTANG PER 30 JUNI 2026')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.743803850000000000
        Top = 219.212740000000000000
        Width = 737.008350000000000000
        DataSet = frxDBRekapSO
        DataSetName = 'frxDBRekapSO'
        RowCount = 0
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 118.193140640000000000
          Width = 111.208098990000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_piutang'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRekapSO."saldo_piutang"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 543.882594530000000000
          Width = 99.220097490000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'bangkrut'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRekapSO."bangkrut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 643.390515300000000000
          Width = 95.244094490000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'masalah'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRekapSO."masalah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 23.833145860000000000
          Width = 93.732283460000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataField = 'karesidenan'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBRekapSO."karesidenan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Width = 25.237345330000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 230.000000000000000000
          Width = 112.583427080000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'nota'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRekapSO."nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 343.047619050000000000
          Width = 102.047244090000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'cicil'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRekapSO."cicil"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 445.095238100000000000
          Width = 98.267716540000000000
          Height = 22.743803850000000000
          StretchMode = smMaxHeight
          DataField = 'retur'
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBRekapSO."retur"]')
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
        Height = 52.980043850000000000
        Top = 105.826840000000000000
        Width = 737.008350000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 0.066623850000000000
          Width = 738.357705290000000000
          Height = 52.913420000000000000
          Fill.BackColor = clSilver
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 23.272680150000000000
          Top = 0.769230770000000000
          Width = 93.932163230000000000
          Height = 52.175086930000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'TP')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 1.277436920000000000
          Top = 0.538461540000000000
          Width = 21.624470930000000000
          Height = 52.277436930000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 118.552543340000000000
          Width = 109.696287970000000000
          Height = 52.405856160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'SALDO PIUTANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 229.891537860000000000
          Top = 25.520836310000000000
          Width = 111.631046120000000000
          Height = 26.874720620000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 342.210908970000000000
          Top = 27.021978020000000000
          Width = 102.047244090000000000
          Height = 25.922339680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'CICIL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 444.589245060000000000
          Top = 27.021978020000000000
          Width = 98.267716540000000000
          Height = 25.153108910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'RETUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 544.142857140000000000
          Top = 26.554112390000000000
          Width = 98.267716540000000000
          Height = 25.922339680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'BANGKRUT')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 643.857142860000000000
          Top = 26.554112380000000000
          Width = 94.488188980000000000
          Height = 25.922339680000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'MASALAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 229.523809520000000000
          Top = -0.112554280000000000
          Width = 507.829021370000000000
          Height = 26.874720620000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PERINCIAN PIUTANG')
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
        Height = 26.456710000000000000
        Top = 302.362400000000000000
        Width = 737.008350000000000000
        object Shape7: TfrxShapeView
          AllowVectorExport = True
          Width = 738.519685040000000000
          Height = 26.456710000000000000
          Fill.BackColor = clWhite
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 1.220558980000000000
          Width = 116.539532040000000000
          Height = 25.640142960000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '        JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 229.944881890000000000
          Width = 111.576341840000000000
          Height = 25.700787400000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRekapSO."nota">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 342.809523810000000000
          Width = 102.052532310000000000
          Height = 25.700787400000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRekapSO."cicil">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 444.619047620000000000
          Top = 0.494742860000000000
          Width = 97.290627550000000000
          Height = 25.700787400000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRekapSO."retur">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 543.809523810000000000
          Top = 0.494742860000000000
          Width = 99.779527559055120000
          Height = 25.700787400000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRekapSO."bangkrut">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 643.761904760000000000
          Top = 0.494742860000000000
          Width = 95.244094490000000000
          Height = 25.700787400000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRekapSO."masalah">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 119.000000000000000000
          Top = 0.494742860000000000
          Width = 109.671579940000000000
          Height = 25.700787400000000000
          DataSet = frxDBRekapSO
          DataSetName = 'frxDBRekapSO'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBRekapSO."saldo_piutang">,MasterData1,2)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
