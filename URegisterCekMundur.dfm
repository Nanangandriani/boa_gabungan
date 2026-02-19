object FRegisterCekMundur: TFRegisterCekMundur
  Left = 0
  Top = 0
  Caption = 'FRegisterCekMundur'
  ClientHeight = 442
  ClientWidth = 927
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
  object RzLabel3: TRzLabel
    Left = 24
    Top = 24
    Width = 40
    Height = 15
    Caption = 'Periode'
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 927
    Height = 73
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 923
    object RzLabel1: TRzLabel
      Left = 16
      Top = 16
      Width = 40
      Height = 15
      Caption = 'Periode'
    end
    object RzLabel2: TRzLabel
      Left = 185
      Top = 16
      Width = 17
      Height = 15
      Caption = 's/d'
    end
    object RzLabel4: TRzLabel
      Left = 16
      Top = 45
      Width = 64
      Height = 15
      Caption = 'Karesidenan'
    end
    object dtTanggal1: TRzDateTimePicker
      Left = 85
      Top = 13
      Width = 92
      Height = 23
      Date = 46057.000000000000000000
      Format = ''
      Time = 0.948170196759747300
      TabOrder = 0
    end
    object dtTanggal2: TRzDateTimePicker
      Left = 212
      Top = 13
      Width = 99
      Height = 23
      Date = 46057.000000000000000000
      Format = ''
      Time = 0.948170196759747300
      TabOrder = 1
    end
    object edKaresidenan: TRzButtonEdit
      Left = 84
      Top = 42
      Width = 197
      Height = 23
      Text = ''
      TabOrder = 2
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKaresidenanButtonClick
    end
    object btnCari: TRzButton
      Left = 287
      Top = 42
      Caption = 'Cari'
      TabOrder = 3
      OnClick = btnCariClick
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 73
    Width = 927
    Height = 57
    Align = alTop
    Color = 15987699
    TabOrder = 1
    ExplicitWidth = 923
    object btBaru: TRzBitBtn
      Left = 16
      Top = 16
      Width = 165
      Height = 30
      Align = alCustom
      Caption = 'Baru'
      TabOrder = 0
      OnClick = btBaruClick
      NumGlyphs = 2
    end
    object btCetak: TRzBitBtn
      Left = 358
      Top = 16
      Width = 165
      Height = 30
      Align = alCustom
      Caption = 'Cetak'
      TabOrder = 1
      OnClick = btCetakClick
      NumGlyphs = 2
    end
    object btPosting: TRzBitBtn
      Left = 187
      Top = 16
      Width = 165
      Height = 30
      Align = alCustom
      Caption = 'Posting'
      TabOrder = 2
      OnClick = btPostingClick
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 130
    Width = 927
    Height = 312
    Align = alClient
    DataSource = DSDetail
    DynProps = <>
    TabOrder = 2
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_terima'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Tanggal Terima Dari'
        Width = 103
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kode_pel'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Kode Pelanggan'
        Width = 99
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nama_pel'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Pelanggan'
        Width = 180
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nama_bank_cek'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Nama Bank'
        Width = 90
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_cek'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'No CHEQ'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_tempo_cek'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Tanggal Jatuh Tempo'
        Width = 72
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'nilai_cek'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'NIlai CHEQ'
        Width = 89
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_ditunaikan'
        Footers = <>
        Title.Caption = 'Tanggal Ditunaikan'
      end
      item
        ButtonStyle = cbsNone
        CellButtons = <>
        DynProps = <>
        EditButton.Visible = False
        EditButtons = <
          item
            OnClick = DBGridEh1Columns8EditButtons0Click
          end>
        FieldName = 'bank_ditunaikan'
        Footers = <>
        Title.Caption = 'Ditunaikan Di Bank'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_tanda_terima'
        Footers = <>
        Title.Caption = 'Tanggal Tanda Terima'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_tanda_terima'
        Footers = <>
        Title.Caption = 'No Tanda Terima'
        Width = 145
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'keterangan'
        Footers = <>
        Title.Caption = 'Catatan'
        Width = 175
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_collector'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_collector'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object MemDetail: TMemTableEh
    Active = True
    Params = <>
    Left = 344
    Top = 257
    object MemDetailkode_pel: TStringField
      FieldName = 'kode_pel'
    end
    object MemDetailnama_pel: TStringField
      FieldName = 'nama_pel'
    end
    object MemDetailno_tanda_terima: TStringField
      FieldName = 'no_tanda_terima'
      Size = 100
    end
    object MemDetailketerangan: TStringField
      FieldName = 'keterangan'
    end
    object MemDetailtgl_terima: TDateField
      FieldName = 'tgl_terima'
    end
    object MemDetailtgl_ditunaikan: TDateField
      FieldName = 'tgl_ditunaikan'
    end
    object MemDetailbank_ditunaikan: TStringField
      FieldName = 'bank_ditunaikan'
    end
    object MemDetailtgl_tanda_terima: TDateField
      FieldName = 'tgl_tanda_terima'
    end
    object MemDetailnama_bank_cek: TStringField
      FieldName = 'nama_bank_cek'
    end
    object MemDetailno_cek: TStringField
      FieldName = 'no_cek'
    end
    object MemDetailtgl_tempo_cek: TDateField
      FieldName = 'tgl_tempo_cek'
    end
    object MemDetailnilai_cek: TCurrencyField
      FieldName = 'nilai_cek'
    end
    object MemDetailcode_collector: TStringField
      FieldName = 'code_collector'
      Size = 100
    end
    object MemDetailname_collector: TStringField
      FieldName = 'name_collector'
      Size = 100
    end
    object MemDetailno_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 100
    end
    object MemDetailcode_bank_ditunaikan: TStringField
      FieldName = 'code_bank_ditunaikan'
    end
    object MemDetailid_dpp: TStringField
      FieldName = 'id_dpp'
      Size = 250
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kode_pel: TMTStringDataFieldEh
          FieldName = 'kode_pel'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_pel: TMTStringDataFieldEh
          FieldName = 'nama_pel'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_tanda_terima: TMTStringDataFieldEh
          FieldName = 'no_tanda_terima'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 250
          Size = 250
        end
        object tgl_terima: TMTDateTimeDataFieldEh
          FieldName = 'tgl_terima'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object tgl_ditunaikan: TMTDateTimeDataFieldEh
          FieldName = 'tgl_ditunaikan'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object bank_ditunaikan: TMTStringDataFieldEh
          FieldName = 'bank_ditunaikan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tgl_tanda_terima: TMTDateTimeDataFieldEh
          FieldName = 'tgl_tanda_terima'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object nama_bank_cek: TMTStringDataFieldEh
          FieldName = 'nama_bank_cek'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_cek: TMTStringDataFieldEh
          FieldName = 'no_cek'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tgl_tempo_cek: TMTDateTimeDataFieldEh
          FieldName = 'tgl_tempo_cek'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object nilai_cek: TMTNumericDataFieldEh
          FieldName = 'nilai_cek'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object code_collector: TMTStringDataFieldEh
          FieldName = 'code_collector'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object name_collector: TMTStringDataFieldEh
          FieldName = 'name_collector'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object no_invoice: TMTStringDataFieldEh
          FieldName = 'no_invoice'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object code_bank_ditunaikan: TMTStringDataFieldEh
          FieldName = 'code_bank_ditunaikan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object id_dpp: TMTStringDataFieldEh
          FieldName = 'id_dpp'
          StringDataType = fdtStringEh
          DisplayWidth = 250
          Size = 250
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDetail: TDataSource
    DataSet = MemDetail
    Left = 431
    Top = 265
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 46059.318841192100000000
    ReportOptions.LastChange = 46063.376282673610000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 240
    Top = 200
    Datasets = <
      item
        DataSet = frxDBDataRegisterCek
        DataSetName = 'frxDBDataRegisterCek'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
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
        Height = 83.171423470000000000
        Top = 18.897650000000000000
        Width = 1209.449600000000000000
        object nama_pt: TfrxMemoView
          AllowVectorExport = True
          Top = 0.436111540000000000
          Width = 334.685314690000000000
          Height = 56.993006990000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'PT. NIAGA PERMAI ABADI')
          ParentFont = False
          VAlign = vaCenter
        end
        object kota_pt: TfrxMemoView
          AllowVectorExport = True
          Top = 28.811188810000000000
          Width = 334.685314690000000000
          Height = 54.265734270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'SIDOARJO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 334.724800000000000000
          Width = 540.000000010000000000
          Height = 83.356643360000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'REGISTER PENERIMAAN CHEQUE MUNDUR/GIRO BILYET')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 875.454545460000000000
          Top = 0.193259090000000000
          Width = 68.011453110000000000
          Height = 41.538461540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'PASAR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 874.545454550000000000
          Top = 41.102350000000000000
          Width = 69.686471020000000000
          Height = 41.538461540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            'PERIODE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 942.818181820000000000
          Top = 0.193259090000000000
          Width = 8.920544010000000000
          Height = 41.538461540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 942.685039370000000000
          Top = 41.102350000000000000
          Width = 8.011453100000000000
          Height = 41.538461540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          Memo.UTF8W = (
            ':')
          ParentFont = False
          VAlign = vaCenter
        end
        object karesidenan: TfrxMemoView
          AllowVectorExport = True
          Left = 951.818181820000000000
          Width = 256.193271290000000000
          Height = 41.538461540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
          ParentFont = False
          VAlign = vaCenter
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 950.899069430000000000
          Top = 41.102350000000000000
          Width = 257.102362200000000000
          Height = 41.538461540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop]
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
        Height = 22.727272730000000000
        Top = 234.330860000000000000
        Width = 1209.449600000000000000
        DataSet = frxDBDataRegisterCek
        DataSetName = 'frxDBDataRegisterCek'
        RowCount = 0
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 105.363636370000000000
          Width = 255.454545440000000000
          Height = 22.677165350000000000
          DataField = 'customer_name'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."customer_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 361.000000000000000000
          Width = 89.999999990000000000
          Height = 22.677165350000000000
          DataField = 'name_bank_cek'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."name_bank_cek"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 1014.000000000000000000
          Width = 195.454545450000000000
          Height = 22.677165350000000000
          DataField = 'note'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."note"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 0.090909090000000000
          Width = 69.090909090000000000
          Height = 22.727272730000000000
          DataField = 'received_date'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."received_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 70.000000000000000000
          Width = 35.454545450000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 451.000000000000000000
          Width = 83.636363640000000000
          Height = 22.727272730000000000
          DataField = 'no_cek'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."no_cek"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 535.181102360000000000
          Width = 71.576234790000000000
          Height = 22.727272730000000000
          DataField = 'ceq_due_date'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."ceq_due_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 605.527559060000000000
          Width = 96.377952760000000000
          Height = 22.727272730000000000
          DataField = 'amount_cek'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."amount_cek"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 701.661417320000000000
          Width = 72.618468160000000000
          Height = 22.727272730000000000
          DataField = 'disbursment_date'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."disbursment_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 774.108804560000000000
          Width = 83.527559060000000000
          Height = 22.727272730000000000
          DataField = 'bank_chanel'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."bank_chanel"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 856.818181830000000000
          Width = 73.527559060000000000
          Height = 22.727272730000000000
          DataField = 'receipt_date'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."receipt_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 930.090909090000000000
          Width = 82.393700787401600000
          Height = 22.727272730000000000
          DataField = 'receipt_no'
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataRegisterCek."receipt_no"]')
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
        Height = 47.775232640000000000
        Top = 162.519790000000000000
        Width = 1209.449600000000000000
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 24.752937280000000000
          Width = 69.090909090000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 104.545454540000000000
          Height = 24.545454540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANDA TERIMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 105.272727280000000000
          Width = 256.363636350000000000
          Height = 47.775232640000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DITERIMA DARI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 360.909090910000000000
          Width = 89.999999990000000000
          Height = 47.775232640000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 450.909090910000000000
          Top = 24.960420010000000000
          Width = 83.636363640000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO CHEQ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 450.909090910000000000
          Width = 250.909090900000000000
          Height = 24.545454540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KETERANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 535.363636360000000000
          Top = 24.752937270000000000
          Width = 69.891195430000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JT TEMPO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 701.818181810000000000
          Top = 24.960420010000000000
          Width = 71.709377250000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 701.818181810000000000
          Width = 155.454545450000000000
          Height = 24.545454540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DITUNAIKAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 774.108804560000000000
          Top = 24.752937270000000000
          Width = 83.527559060000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 856.818181830000000000
          Top = 24.960420010000000000
          Width = 73.527559060000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANGGAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 856.818181830000000000
          Width = 156.363636350000000000
          Height = 24.545454540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TANDA TERIMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 930.000000000000000000
          Top = 24.752937270000000000
          Width = 83.527559060000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 1013.909090910000000000
          Width = 195.454545450000000000
          Height = 47.775232640000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'CATATAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 604.909090910000000000
          Top = 24.752937270000000000
          Width = 97.163922690000000000
          Height = 22.727272730000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 70.090909090000000000
          Top = 24.662028180000000000
          Width = 35.454545450000000000
          Height = 23.055118110236200000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.727272730000000000
        Top = 279.685220000000000000
        Width = 1209.449600000000000000
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Width = 605.454545460000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL   ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 604.818181820000000000
          Top = 0.314780000000000000
          Width = 97.133858270000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataRegisterCek."amount_cek">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 1014.272727290000000000
          Width = 195.023622047244000000
          Height = 22.677165350000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 702.181818180000000000
          Top = 0.314780000000000000
          Width = 71.709377250000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 774.108804560000000000
          Top = 0.314780000000000000
          Width = 83.527559060000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 856.818181830000000000
          Top = 0.314780000000000000
          Width = 73.527559060000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          DisplayFormat.FormatStr = 'dd/mm/yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 930.272727280000000000
          Top = 0.314780000000000000
          Width = 83.527559060000000000
          Height = 22.727272730000000000
          DataSet = frxDBDataRegisterCek
          DataSetName = 'frxDBDataRegisterCek'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object frxDBDataRegisterCek: TfrxDBDataset
    UserName = 'frxDBDataRegisterCek'
    CloseDataSource = False
    FieldAliases.Strings = (
      'customer_code=customer_code'
      'customer_name=customer_name'
      'name_bank_cek=name_bank_cek'
      'no_cek=no_cek'
      'ceq_due_date=ceq_due_date'
      'amount_cek=amount_cek'
      'disbursment_date=disbursment_date'
      'bank_chanel=bank_chanel'
      'receipt_date=receipt_date'
      'receipt_no=receipt_no'
      'note=note'
      'id=id'
      'code_karesidenan=code_karesidenan'
      'dpp_periode1=dpp_periode1'
      'dpp_periode2=dpp_periode2'
      'no_invoice=no_invoice'
      'received_date=received_date'
      'deleted_at=deleted_at'
      'deleted_by=deleted_by'
      'created_at=created_at'
      'created_by=created_by'
      'code_collector=code_collector'
      'name_collector=name_collector'
      'code_bank_chanel=code_bank_chanel'
      'id_dpp=id_dpp')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 136
    Top = 208
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM t_register_cek')
    Left = 40
    Top = 200
  end
end
