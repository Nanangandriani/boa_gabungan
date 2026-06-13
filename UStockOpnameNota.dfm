object FStockOpnameNota: TFStockOpnameNota
  Left = 0
  Top = 0
  Caption = 'FStockOpnameNota'
  ClientHeight = 442
  ClientWidth = 950
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
    Width = 950
    Height = 153
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 946
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
      Width = 946
      Height = 57
      Align = alBottom
      Color = 15987699
      TabOrder = 4
      ExplicitWidth = 942
      object RzLabel5: TRzLabel
        Left = 560
        Top = 25
        Width = 164
        Height = 15
        Caption = 'Tekan F2 :  Copy Data Sisa Nota'
      end
      object btCetakLaporanStokOpname: TRzBitBtn
        Left = 12
        Top = 18
        Width = 165
        Height = 30
        Align = alCustom
        Caption = 'Cetak Laporan Stok Opname'
        TabOrder = 0
        OnClick = btCetakLaporanStokOpnameClick
        NumGlyphs = 2
      end
      object btCetakSaldoNotaLHSN: TRzBitBtn
        Left = 183
        Top = 18
        Width = 165
        Height = 30
        Align = alCustom
        Caption = 'Cetak Saldo Nota LHSN'
        TabOrder = 1
        OnClick = btCetakSaldoNotaLHSNClick
        NumGlyphs = 2
      end
      object btPostingStokOpname: TRzBitBtn
        Left = 354
        Top = 18
        Width = 165
        Height = 30
        Align = alCustom
        Caption = 'Posting Stok Opname'
        TabOrder = 2
        OnClick = btPostingStokOpnameClick
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
    Width = 950
    Height = 289
    Align = alClient
    DataSource = DSDetail
    DrawMemoText = True
    DynProps = <>
    FrozenCols = 3
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
        Width = 209
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kabupaten'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kabupaten'
        Width = 184
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kecamatan'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kecamatan'
        Width = 224
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_faktur'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Faktur'
        Width = 161
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No Invoice'
        Width = 165
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Tanggal Nota'
        Width = 73
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
    Left = 128
    Top = 208
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    SortOrder = 'karesidenan,kabupaten,kecamatan,customer_name ASC'
    Left = 56
    Top = 184
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
    ReportOptions.LastChange = 46177.614603506950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReportSaldoNotaLHSNGetValue
    Left = 392
    Top = 184
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
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Top = 56.354360000000000000
          Width = 83.898651360000000000
          Height = 20.900563160000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LAMPIRAN ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 0.338590000000000000
          Top = 77.264866840000000000
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
          Top = 77.551948180000000000
          Width = 1091.707277170000000000
          Height = 20.409448818897600000
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
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 84.283464570000000000
          Top = 56.314960630000000000
          Width = 13.228346456692900000
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
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 84.347826090000000000
          Top = 77.264815580000000000
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
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 97.692307690000000000
          Top = 56.486965380000000000
          Width = 1091.707277170000000000
          Height = 20.409448820000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
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
        Height = 22.897650000000000000
        Top = 381.732530000000000000
        Width = 1190.551950000000000000
        DataSet = frxDBDatasetSaldoNotaLHSN
        DataSetName = 'frxDBDatasetSaldoNotaLHSN'
        RowCount = 0
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 207.803149610000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 423.238809230000000000
          Top = 0.822605960000000000
          Width = 58.644736390000000000
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
          Left = 207.526473970000000000
          Top = 0.461538460000000000
          Width = 215.396841540000000000
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
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 552.944881890000000000
          Top = 0.220470000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = 700.724409448819000000
          Top = 0.220469999999977000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = 764.220472440945000000
          Top = 0.220469999999977000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 826.228346460000000000
          Top = 0.220469999999977000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 888.590551180000000000
          Top = 0.220469999999977000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 955.488188980000000000
          Top = 0.220469999999977000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 481.739737390000000000
          Top = -0.538461540000000000
          Width = 70.783573740000000000
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
          Left = 552.771467690000000000
          Top = -0.538461540000000000
          Width = 83.570643850000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 637.260967380000000000
          Width = 64.716535430000000000
          Height = 22.469078570000000000
          StretchMode = smMaxHeight
          DataField = 'nota_fisik'
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
            '[frxDBDatasetSaldoNotaLHSN."nota_fisik"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 700.791281430000000000
          Width = 63.475881430000000000
          Height = 21.754792860000000000
          StretchMode = smMaxHeight
          DataField = 'dpp_nota'
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
            '[frxDBDatasetSaldoNotaLHSN."dpp_nota"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 764.353742860000000000
          Width = 62.047310000000000000
          Height = 21.754792860000000000
          StretchMode = smMaxHeight
          DataField = 'kontra_bon'
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
            '[frxDBDatasetSaldoNotaLHSN."kontra_bon"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 826.217688580000000000
          Top = -0.428571430000000000
          Width = 62.255411420000000000
          Height = 22.469078570000000000
          StretchMode = smMaxHeight
          DataField = 'bg_mundur'
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
            '[frxDBDatasetSaldoNotaLHSN."bg_mundur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 888.600187140000000000
          Width = 66.541125720000000000
          Height = 22.469078570000000000
          StretchMode = smMaxHeight
          DataField = 'transfer'
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
            '[frxDBDatasetSaldoNotaLHSN."transfer"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 955.839828580000000000
          Top = -0.142857140000000000
          Width = 57.553494280000000000
          Height = 21.754792850000000000
          StretchMode = smMaxHeight
          DataField = 'retur'
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
            '[frxDBDatasetSaldoNotaLHSN."retur"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 1013.464132860000000000
          Top = -0.428571430000000000
          Width = 58.267779990000000000
          Height = 22.469078570000000000
          StretchMode = smMaxHeight
          DataField = 'nota_masalah'
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
            '[frxDBDatasetSaldoNotaLHSN."nota_masalah"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 1070.936612860000000000
          Width = 59.904452850000000000
          Height = 22.469078570000000000
          StretchMode = smMaxHeight
          DataField = 'nota_belum_kembali'
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
            '[frxDBDatasetSaldoNotaLHSN."nota_belum_kembali"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line88: TfrxLineView
          AllowVectorExport = True
          Left = 1130.456692910000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 1131.067101430000000000
          Width = 58.982065710000000000
          Height = 22.469078570000000000
          StretchMode = smMaxHeight
          DataField = 'nota_bangkrut'
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
            '[frxDBDatasetSaldoNotaLHSN."nota_bangkrut"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 99.023622050000000000
          Top = -0.538461540000000000
          Width = 108.094488188976000000
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
        Top = 257.008040000000000000
        Width = 1190.551950000000000000
        Condition = '<frxDBDatasetSaldoNotaLHSN."kabupaten">'
        ShowFooterIfDrillDown = True
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 30.236240000000000000
          Fill.BackColor = 52479
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
          Left = 207.803149610000000000
          Top = 0.118120000000000000
          Height = 30.236222910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 423.307086610000000000
          Top = 1.000000000000000000
          Height = 29.480314960629900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 481.314960630000000000
          Top = 1.000000000000000000
          Height = 29.480314960629900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 552.944881890000000000
          Top = 1.000000000000000000
          Height = 29.480314960629900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 637.228346460000000000
          Top = 1.000000000000000000
          Height = 29.480314960629900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 700.724409450000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 764.220472440000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 826.204724410000000000
          Top = 1.000000000000000000
          Height = 29.480314960629900000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 888.566929130000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 955.464566930000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line34: TfrxLineView
          AllowVectorExport = True
          Left = 1014.047244090000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line79: TfrxLineView
          AllowVectorExport = True
          Left = 1071.118110240000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line86: TfrxLineView
          AllowVectorExport = True
          Left = 1130.456692910000000000
          Height = 30.236240000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 100.000000000000000000
          Top = 0.222729230000000000
          Width = 107.192236490000000000
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
          Left = 208.461538460000000000
          Top = 0.222729230000000000
          Width = 214.884544180000000000
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
          Left = 207.743019530000000000
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
          Left = 422.939156920000000000
          Top = 0.692307690000000000
          Width = 57.740925840000000000
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
          Left = 481.544242310000000000
          Top = 1.241068460000000000
          Width = 71.308334610000000000
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
          Left = 553.255911730000000000
          Top = 1.241068460000000000
          Width = 83.141239810000000000
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
          Left = 636.869631540000000000
          Top = 18.933376150000000000
          Width = 62.913420000000000000
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
          Left = 700.598307690000000000
          Top = 18.933376150000000000
          Width = 63.549403080000000000
          Height = 32.738975390000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'DPP/NOTA'
            'DIBON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 764.199206920000000000
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
            'KONTRA BON')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 826.112626920000000000
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
            'BG'
            'MUNDUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 888.354337690000000000
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
            'CICILAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 955.278056920000000000
          Top = 18.933376150000000000
          Width = 58.298035390000000000
          Height = 33.508206160000000000
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
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 1013.637887690000000000
          Top = 18.364016920000000000
          Width = 57.528804620000000000
          Height = 34.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA MSLH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 636.822963850000000000
          Top = 0.471837690000000000
          Width = 554.252320000000000000
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
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 1071.464085380000000000
          Top = 18.369487690000000000
          Width = 58.364659240000000000
          Height = 34.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA BELUM KEMBALI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 1130.089769230000000000
          Top = 18.359188460000000000
          Width = 60.539103850000000000
          Height = 34.210813080000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haCenter
          Memo.UTF8W = (
            'NOTA BANGKRUT')
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
          Top = 1.338589999999950000
          Width = 1189.732840000000000000
          Height = 26.456710000000000000
          Fill.BackColor = 14211288
          Frame.Typ = []
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 423.363416120000000000
          Top = 3.519480000000000000
          Width = 129.872865380000000000
          Height = 22.677180000000000000
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
        object Line59: TfrxLineView
          AllowVectorExport = True
          Left = 552.944881889764000000
          Top = 1.559060000000050000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line60: TfrxLineView
          AllowVectorExport = True
          Left = 637.228346460000000000
          Top = 1.559060000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 555.079160000000000000
          Top = 3.779530000000000000
          Width = 79.724490000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."amount_nota_awal">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 637.756415670000000000
          Top = 3.779527560000000000
          Width = 60.826840000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_fisik">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 704.008425670000000000
          Top = 3.779527560000000000
          Width = 57.826771653543300000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."dpp_nota">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 766.701375670000000000
          Top = 3.779527560000000000
          Width = 57.047310000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."kontra_bon">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 830.291975670000000000
          Top = 3.779527560000000000
          Width = 57.047310000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."bg_mundur">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 891.543985670000000000
          Top = 3.779527560000000000
          Width = 60.826840000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."transfer">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 958.134585670000000000
          Top = 3.779527560000000000
          Width = 53.267780000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."retur">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 1015.827535670000000000
          Top = 3.779530000000000000
          Width = 53.267780000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_masalah">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line72: TfrxLineView
          AllowVectorExport = True
          Left = 700.748031500000000000
          Top = 1.779530000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line73: TfrxLineView
          AllowVectorExport = True
          Left = 764.244094490000000000
          Top = 1.779530000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line74: TfrxLineView
          AllowVectorExport = True
          Left = 826.228346460000000000
          Top = 1.779530000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line75: TfrxLineView
          AllowVectorExport = True
          Left = 888.590551180000000000
          Top = 1.779530000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line76: TfrxLineView
          AllowVectorExport = True
          Left = 955.488188980000000000
          Top = 1.779530000000020000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line77: TfrxLineView
          AllowVectorExport = True
          Left = 1014.070866140000000000
          Top = 1.779530000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line84: TfrxLineView
          AllowVectorExport = True
          Left = 1071.118110240000000000
          Top = 1.220469999999980000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 1074.859000000000000000
          Top = 3.779530000000000000
          Width = 53.267780000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_belum_kembali">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line91: TfrxLineView
          AllowVectorExport = True
          Left = 1130.456692910000000000
          Top = 2.000000000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 1134.859000000000000000
          Top = 3.779530000000000000
          Width = 53.267780000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_bangkrut">)]')
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
          Left = 0.734693880000000000
          Width = 1189.732840000000000000
          Height = 49.133890000000000000
          Fill.BackColor = 52376
          Frame.Typ = []
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 99.023622050000000000
          Top = 0.342609800000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = 207.803149610000000000
          Top = 0.342609800000000000
          Height = 49.133872910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = 423.307086610000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 481.314960630000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 552.944881890000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 637.228346460000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 700.724409450000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line52: TfrxLineView
          AllowVectorExport = True
          Left = 764.220472440000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line53: TfrxLineView
          AllowVectorExport = True
          Left = 826.204724410000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line54: TfrxLineView
          AllowVectorExport = True
          Left = 888.566929130000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line56: TfrxLineView
          AllowVectorExport = True
          Left = 955.464566930000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line57: TfrxLineView
          AllowVectorExport = True
          Left = 1014.047244090000000000
          Top = 0.224489800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 99.619226840000000000
          Top = 1.066595060000000000
          Width = 107.927893070000000000
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
        object Line80: TfrxLineView
          AllowVectorExport = True
          Left = 1071.118110240000000000
          Top = 0.004019800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line87: TfrxLineView
          AllowVectorExport = True
          Left = 1130.456692910000000000
          Top = 0.004019800000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line92: TfrxLineView
          AllowVectorExport = True
          Left = 99.267780000000000000
          Top = 33.019789800000000000
          Width = 108.850393700787000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 98.889415260000000000
          Top = 32.914526640000000000
          Width = 108.603456850000000000
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
          Left = 422.732847660000000000
          Top = 2.881880000000000000
          Width = 130.083678460000000000
          Height = 16.015770000000000000
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
          Left = 552.715832860000000000
          Top = -0.142857140000000000
          Width = 84.724490000000000000
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
        object Line58: TfrxLineView
          AllowVectorExport = True
          Left = 700.748031500000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line62: TfrxLineView
          AllowVectorExport = True
          Left = 826.228346460000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line63: TfrxLineView
          AllowVectorExport = True
          Left = 888.590551180000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line64: TfrxLineView
          AllowVectorExport = True
          Left = 955.488188980000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 637.829005520000000000
          Top = -0.142857140000000000
          Width = 61.901012360000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_fisik">)]')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 700.856525720000000000
          Top = -0.142857140000000000
          Width = 62.761595710000000000
          Height = 23.183364280000000000
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
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 764.976377950000000000
          Top = 0.350958570000000000
          Width = 62.047309990000000000
          Height = 21.754792860000000000
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
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 826.568647140000000000
          Top = -0.142857140000000000
          Width = 61.734533190000000000
          Height = 23.183364280000000000
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
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 888.820657140000000000
          Top = 0.571428570000000000
          Width = 66.541125720000000000
          Height = 22.469078570000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."transfer">)]')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 955.411257150000000000
          Top = 0.571428570000000000
          Width = 58.267780000000000000
          Height = 20.326221430000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."retur">)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 1013.669291340000000000
          Top = 0.461192350000000000
          Width = 58.267780000000000000
          Height = 20.326221430000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_masalah">)]')
          ParentFont = False
        end
        object Line82: TfrxLineView
          AllowVectorExport = True
          Left = 1071.118110240000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 1071.099878160000000000
          Width = 58.982065720000000000
          Height = 21.754792860000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_belum_kembali">)]')
          ParentFont = False
        end
        object Line89: TfrxLineView
          AllowVectorExport = True
          Left = 1130.456692910000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 1130.859000000000000000
          Width = 58.267780000000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_bangkrut">)]')
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
          Left = 1.000000000000000000
          Width = 1189.732840000000000000
          Height = 22.677180000000000000
          Fill.BackColor = 14211288
          Frame.Typ = []
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 423.502078430000000000
          Top = 1.881880000000000000
          Width = 128.545216920000000000
          Height = 16.015770000000000000
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
          Left = 552.715832860000000000
          Top = 0.571428570000000000
          Width = 84.010204280000000000
          Height = 20.326221430000000000
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
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 552.944881889764000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 637.228346456693000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line66: TfrxLineView
          AllowVectorExport = True
          Left = 700.748031500000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line68: TfrxLineView
          AllowVectorExport = True
          Left = 826.228346460000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line69: TfrxLineView
          AllowVectorExport = True
          Left = 888.590551180000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line70: TfrxLineView
          AllowVectorExport = True
          Left = 955.488188980000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line71: TfrxLineView
          AllowVectorExport = True
          Left = 1014.070866140000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 636.975253100000000000
          Top = 0.461192360000000000
          Width = 62.615298080000000000
          Height = 20.326221420000000000
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
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_fisik">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 700.856525710000000000
          Top = 0.461192350000000000
          Width = 63.475881430000000000
          Height = 20.326221430000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."dpp_nota">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 764.976377952755900000
          Top = 0.461192350000000000
          Width = 59.904452850000000000
          Height = 21.754792860000000000
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
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 829.425790000000000000
          Top = 1.889763780000000000
          Width = 57.448818900000000000
          Height = 18.897650000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."bg_mundur">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 891.677800000000000000
          Top = 1.889763780000000000
          Width = 60.826840000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."transfer">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 957.268400000000000000
          Top = 1.889763780000000000
          Width = 53.267780000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."retur">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 1015.740880000000000000
          Top = 1.889763780000000000
          Width = 53.267780000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_masalah">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line83: TfrxLineView
          AllowVectorExport = True
          Left = 1071.118110240000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 1075.299940000000000000
          Width = 53.267780000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_belum_kembali">)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line90: TfrxLineView
          AllowVectorExport = True
          Left = 1130.456692910000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 1134.859000000000000000
          Width = 53.267780000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxsaldonotaakihr'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDatasetSaldoNotaLHSN."nota_bangkrut">)]')
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
    Left = 496
    Top = 206
  end
  object QReport: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.*,b.* FROM get_lhsn_sum('#39'2025-09-15'#39','#39'2025-09-22'#39','#39'DKI ' +
        'JAKARTA'#39',NULL,FALSE,TRUE) a'
      
        'LEFT JOIN  vstock_opname_nota_sum b on b.karesidenan=a.karesiden' +
        'an and date='#39'2025-09-22'#39)
    Left = 424
    Top = 264
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
    ReportOptions.LastChange = 46084.644538229160000000
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
    Left = 224
    Top = 288
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
            '[frxDBDatasetStokOpname."nota_belum_kembali"]')
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
              '">+<frxDBDatasetStokOpname."nota_bangkrut">]')
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
              'asetStokOpname."nota_bangkrut">]')
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
    Left = 320
    Top = 320
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
    Left = 504
    Top = 336
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
    Top = 288
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 664
    Top = 272
  end
end
