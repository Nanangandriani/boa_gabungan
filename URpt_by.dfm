object FRpt_by: TFRpt_by
  Left = 0
  Top = 0
  Caption = 'LAPORAN BY'
  ClientHeight = 630
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 984
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitWidth = 680
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
  object DBGridBy: TDBGridEh
    Left = 0
    Top = 127
    Width = 984
    Height = 503
    Align = alClient
    DataGrouping.GroupLevels = <
      item
        ColumnName = 'Column_3_balance'
      end>
    DataSource = DsRpt_By
    DynProps = <>
    TabOrder = 5
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'id'
        Footers = <>
        Title.Caption = 'No.'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_by'
        Footers = <>
        Visible = False
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Perkiraan'
        Width = 200
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##,0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'balance'
        Footers = <>
        Title.Caption = 'Jumlah|Rp'
        Width = 170
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'persentase'
        Footers = <>
        Title.Caption = 'Jumlah|%'
        Width = 70
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cbbulan: TComboBox
    Left = 46
    Top = 39
    Width = 140
    Height = 21
    TabOrder = 6
    OnSelect = cbbulanSelect
    Items.Strings = (
      ''
      'Januari'
      'Februari'
      'Maret'
      'April'
      'Mei'
      'Juni'
      'Juli'
      'Agustus'
      'September'
      'Oktober'
      'November'
      'Desember')
  end
  object QRpt_By: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM "vbiaya_month"')
    Left = 422
    Top = 136
  end
  object DbRpt_By: TfrxDBDataset
    UserName = 'DbRpt_By'
    CloseDataSource = False
    FieldAliases.Strings = (
      'account_code=account_code'
      'account_name=account_name'
      'type_by=type_by'
      'trans_year=trans_year'
      'persentase=persentase'
      'balance=balance')
    DataSet = QRpt_By
    BCDToCurrency = False
    DataSetOptions = []
    Left = 422
    Top = 193
  end
  object Rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44692.656638194400000000
    ReportOptions.LastChange = 45963.052233368100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 494
    Top = 136
    Datasets = <
      item
        DataSet = DbRpt_By
        DataSetName = 'DbRpt_By'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 5
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
        Height = 98.212598430000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Mpt: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.236257090000000000
          Width = 204.094146460000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'PT MENARA LAUT BERSATU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 1.000000000000000000
          Width = 733.228346460000000000
          Height = 30.236225350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LAPORAN BIAYA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mbln: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 29.456727090000000000
          Width = 733.228346460000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN JANUARI 2022')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 65.133907090000000000
          Width = 427.086614170000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KETERANGAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086614170000000000
          Top = 65.133907090000000000
          Width = 311.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Top = 83.094488190000000000
          Width = 427.086614170000000000
          Height = 15.118110240000000000
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086614170000000000
          Top = 83.094488190000000000
          Width = 188.976377950000000000
          Height = 15.118110240000000000
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'Rp')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063001890000000000
          Top = 83.094488190000000000
          Width = 122.834645670000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object MAlamat: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 40.354377090000000000
          Width = 204.094451570000000000
          Height = 41.574830000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'PT. MENARA LAUT BERSATU')
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
        Height = 17.007874020000000000
        Top = 234.330860000000000000
        Width = 740.409927000000000000
        DataSet = DbRpt_By
        DataSetName = 'DbRpt_By'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Width = 427.086614170000000000
          Height = 17.007874020000000000
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '    [DbRpt_By."account_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086614170000000000
          Width = 188.976377952756000000
          Height = 17.007874020000000000
          DataField = 'balance'
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbRpt_By."balance"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063001890000000000
          Width = 122.834645670000000000
          Height = 17.007874020000000000
          DataField = 'persentase'
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbRpt_By."persentase"]')
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
        Height = 32.125994020000000000
        Top = 177.637910000000000000
        Width = 740.409927000000000000
        Condition = 'DbRpt_By."type_by"'
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Width = 427.086614173228000000
          Height = 15.118110240000000000
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086614170000000000
          Width = 188.976377952756000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063001890000000000
          Width = 122.834645669291000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Top = 15.118120000000000000
          Width = 427.086614170000000000
          Height = 17.007874020000000000
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DbRpt_By."type_by"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086614170000000000
          Top = 15.118120000000000000
          Width = 188.976377952756000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              Kind = fkNumeric
            end
            item
            end>
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063001890000000000
          Top = 15.118120000000000000
          Width = 122.834645669291000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
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
        Height = 17.007874020000000000
        Top = 275.905690000000000000
        Width = 740.409927000000000000
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Width = 427.086614170000000000
          Height = 17.007874020000000000
          DataSet = DbRpt_By
          DataSetName = 'DbRpt_By'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL [DbRpt_By."type_by"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086614170000000000
          Width = 188.976377950000000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbRpt_By."balance">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 616.063001890000000000
          Width = 122.834645669291000000
          Height = 17.007874020000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbRpt_By."persentase">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object DbRpt_by2: TfrxDBDataset
    UserName = 'DbRpt_By2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_header=kode_header'
      'bulan=bulan'
      'tahun=tahun'
      'kd_akun=kd_akun'
      'nama_perkiraan=nama_perkiraan'
      'kr=kr'
      'db=db')
    DataSet = QRpt_By2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 310
    Top = 57
  end
  object QRpt_By2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkira' +
        'an,sum(x2.kredit) kr,sum(x2.debit) db from t_daftar_perkiraan x ' +
        ' LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_' +
        'neraca a on a.no_in=b.no_in WHERE bulan='#39'01'#39' and tahun='#39'2022'#39' )x' +
        '2 on x2.kd_akun=x.kode WHERE x.kode='#39'2130.01'#39' GROUP BY x.kode_he' +
        'ader,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkiraan'
      'ORDER BY kd_akun')
    Left = 366
    Top = 55
  end
  object Dbrpt_thn: TfrxDBDataset
    UserName = 'Dbrpt_by3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'account_code=account_code'
      'account_name=account_name'
      'type_by=type_by'
      'trans_year=trans_year'
      'spt=spt'
      'jan=jan'
      'feb=feb'
      'mar=mar'
      'apr=apr'
      'mei=mei'
      'jun=jun'
      'jul=jul'
      'ags=ags'
      'sep=sep'
      'okt=okt'
      'nov=nov'
      'des=des'
      'sptp=sptp'
      'janp=janp'
      'febp=febp'
      'marp=marp'
      'aprp=aprp'
      'meip=meip'
      'junp=junp'
      'julp=julp'
      'agsp=agsp'
      'sepp=sepp'
      'oktp=oktp'
      'novp=novp'
      'desp=desp')
    DataSet = QRpt_thn
    BCDToCurrency = False
    DataSetOptions = []
    Left = 566
    Top = 313
  end
  object QRpt_thn: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from "vbiaya_year"')
    Active = True
    Left = 622
    Top = 311
  end
  object QRpt_By4: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkira' +
        'an,sum(x2.kredit) kr,sum(x2.debit) db from t_daftar_perkiraan x ' +
        ' '
      
        'LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_n' +
        'eraca a on a.no_in=b.no_in WHERE bulan='#39'01'#39' and tahun='#39'2022'#39' )x2' +
        ' '
      
        'on x2.kd_akun=x.kode WHERE x.kode_header='#39'5600'#39' and x.kode<>'#39'560' +
        '0'#39' GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_pe' +
        'rkiraan'
      'ORDER BY kd_akun')
    Left = 486
    Top = 7
  end
  object Dbrpt_by4: TfrxDBDataset
    UserName = 'Dbrpt_by4'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_header=kode_header'
      'bulan=bulan'
      'tahun=tahun'
      'kd_akun=kd_akun'
      'nama_perkiraan=nama_perkiraan'
      'kr=kr'
      'db=db')
    DataSet = QRpt_By4
    BCDToCurrency = False
    DataSetOptions = []
    Left = 430
    Top = 9
  end
  object Dbrpt_by5: TfrxDBDataset
    UserName = 'Dbrpt_by5'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_header=kode_header'
      'bulan=bulan'
      'tahun=tahun'
      'kd_akun=kd_akun'
      'nama_perkiraan=nama_perkiraan'
      'kr=kr'
      'db=db')
    DataSet = QRpt_By5
    BCDToCurrency = False
    DataSetOptions = []
    Left = 430
    Top = 57
  end
  object QRpt_By5: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkira' +
        'an,sum(x2.kredit) kr,sum(x2.debit) db from t_daftar_perkiraan x ' +
        ' '
      
        'LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_n' +
        'eraca a on a.no_in=b.no_in WHERE bulan='#39'01'#39' and tahun='#39'2022'#39' )x2' +
        ' '
      
        'on x2.kd_akun=x.kode WHERE x.kode_header='#39'6200'#39' and x.kode<>'#39'620' +
        '0'#39' GROUP BY x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_pe' +
        'rkiraan'
      'ORDER BY kd_akun')
    Left = 486
    Top = 55
  end
  object DbRpt_by1: TfrxDBDataset
    UserName = 'DbRpt_By'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_header=kode_header'
      'bulan=bulan'
      'tahun=tahun'
      'kd_akun=kd_akun'
      'nama_perkiraan=nama_perkiraan'
      'kr=kr'
      'db=db')
    DataSet = QRpt_by1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 310
    Top = 9
  end
  object QRpt_by1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select x.kode_header,x2.bulan,x2.tahun,x2.kd_akun,x.nama_perkira' +
        'an,sum(x2.kredit) kr,sum(x2.debit) db from t_daftar_perkiraan x ' +
        ' '
      
        'LEFT JOIN (select * from t_item_neraca_det b INNER JOIN t_item_n' +
        'eraca a on a.no_in=b.no_in WHERE bulan='#39'01'#39' and tahun='#39'2022'#39' )x2' +
        ' '
      
        'on x2.kd_akun=x.kode WHERE x.kode_header='#39'5400'#39' and kelompok_aku' +
        'n='#39'2'#39' and x.kode<>'#39'5400'#39' GROUP BY x.kode_header,x2.bulan,x2.tahu' +
        'n,x2.kd_akun,x.nama_perkiraan'
      'ORDER BY kd_akun')
    Left = 366
    Top = 7
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
    Left = 492
    Top = 16
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 805
      FloatTop = 8
      FloatClientWidth = 100
      FloatClientHeight = 130
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          Visible = True
          ItemName = 'sptahun'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBUpdate: TdxBarButton
      Caption = 'Update  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D960600000000000036000000280000001800000011000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFF6E3BBFFEEC7
        74FFEABC59FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC
        58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFECC2
        67FFF2D69AFFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFEFCA7CFFE3A41CFFECC3
        69FFF7E5BFFFF8EACCFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EA
        CAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACBFFF8EACAFFF0CE
        85FFE4A621FFE4A723FFFCF6EAFFFFFFFFFFFFFFFFFFE6AD33FFEECA7AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8E8C7FFE4A724FFF3D89EFFFFFFFFFFFFFFFFFFE6AE36FFF1D391FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE6AE36FFEFCA7CFFF5DE
        ADFFFAEFD9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC979FFE5AC2FFFE4A8
        25FFE8B343FFF8EBCDFFF4DDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3E3FFE2A115FFF4DB
        A7FFF8E9C8FFE5AB2EFFE5AA2AFFEDC36BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECD1FFECC2
        67FFE5AB2DFFE7B240FFE8B341FFE6AE36FFE7B03AFFFCF7EBFFFFFFFFFFFFFF
        FFFFFFFEFFFFE19C09FFF2D699FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D9
        A1FFE4A826FFE7B13DFFE8B341FFE8B341FFE7B13DFFE4A827FFF4DDACFFFFFF
        FFFFFFFFFFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF6E8FFE7AF38FFE6AF37FFE8B341FFE8B341FFE7B240FFE5AB2DFFECC2
        67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D38FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECC267FFE5AB2DFFE7B240FFE8B341FFE8B341FFE6AF
        37FFE6AF38FFFCF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFE6AD34FFF1D290FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DDABFFE4A827FFE7B13DFFE8B341FFE8B3
        41FFE7B13DFFE4A825FFF2D699FFFFFFFFFFFFFFFFFFEBBE5CFFE6AE35FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7EBFFE7B03AFFE6AE36FFE8B3
        41FFE7B03AFFE6AC31FFF8EACAFFF3D89DFFFFFFFFFFFDF9F0FFE5AB2DFFE3A5
        1EFFEBBE5DFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBF5FFFEBBF
        5FFFEBBF5FFFE9B950FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFECC36BFFE4A7
        23FFECC164FFFEFCF8FFEABA53FFE5AA2AFFE6AE36FFFFFFFFFFFFFFFFFFF9EB
        CFFFF7E4BCFFF6E4BCFFF6E3BAFFF6E3B9FFF6E2B8FFF6E2B6FFF6E1B5FFF5E0
        B3FFF5E0B2FFF4DCA8FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC
        D0FFF6E1B5FFE4A724FFE5AC2FFFE7B03BFFFCF6E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF7ECFFEDC36AFFF1D08BFFFFFFFFFFFFFFFFFF}
    end
    object dxBDelete: TdxBarButton
      Caption = 'Delete  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424DD60500000000000036000000280000001400000012000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFF9A9A
        FFFF0000FFFFBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBFFFF0000FFFF9D9DFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF7474FFFF0000FFFF0000FFFF0000FFFF9999FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
        FFFF0000FFFF0000FFFF0000FFFF7676FFFFFFFFFFFF7070FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF7E7EFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6FFFF7C7CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7171FFFF4343FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF6060FFFFE3E3FFFFFFFFFFFFFFFFFFFFE3E3FFFF5E5EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF4545FFFFFFFFFFFF4F4FFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3F3FFFFFDEDEFFFFDDDD
        FFFF3E3EFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5050
        FFFFFFFFFFFFFFFFFFFFFBFBFFFF5757FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF3333FFFF3232FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF5757FFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FFFF6161FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6262FFFFFBFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBCBCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFFBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFA8A8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6868FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6C6CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFFFF5858FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF5A5AFFFFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFF5555
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3636FFFF3636
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFFF9F9
        FFFFFFFFFFFFFCFCFFFF4A4AFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF4A4AFFFFE2E2FFFFE1E1FFFF4A4AFFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF4D4DFFFFFCFCFFFF3E3EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6D6DFFFFE8E8FFFFFFFFFFFFFFFF
        FFFFE8E8FFFF6C6CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF3E3EFFFF7575FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF8A8A
        FFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFF8A8AFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF7777FFFFFFFFFFFF7D7DFFFF0000
        FFFF0000FFFF0000FFFFA2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1FFFF0000FFFF0000FFFF0000FFFF7E7E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7FFFF0B0BFFFFC0C0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBFBFFFFF0C0CFFFFABABFFFFFFFFFFFFFFFFFFFF}
    end
    object dxBbaru: TdxBarLargeButton
      Caption = 'Baru  '
      Category = 0
      Visible = ivNever
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D660700000000000036000000280000001700000014000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA
        7CFFD09E6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A1
        6FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD09E6BFFD6AA
        7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7AD80FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D8FFC27A32FFD0985CFFD099
        5DFFD5A169FFBF7527FFE1C19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5D6FFEBCCABFFFFFFFFFFFFFFFFFFF0D4
        B6FFDEBA94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1E4D7FFE7C4A0FFFFFCF0FFDBAB7AFFDCB996FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A9
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFAF7FFE3BA90FFD4A16CFFE8D2BAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA7CFFD09E
        6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A2
        70FFCE9963FFC68746FFF4E9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF}
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Print  '
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ItemLinks = <>
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
      OnClick = BPrintClick
    end
    object DxRefresh: TdxBarLargeButton
      Caption = 'Cari'
      Category = 0
      Hint = 'Cari'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
        3131373744373B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0
        B95F32223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
        4D31332C31374C322C32386C322C326C31312D31316C312D316C2D322D324C31
        332C31377A222F3E0D0A09093C673E0D0A0909093C673E0D0A090909093C7061
        746820636C6173733D22426C75652220643D224D32302C34632D342E342C302D
        382C332E362D382C3873332E362C382C382C3873382D332E362C382D38533234
        2E342C342C32302C347A204D32302C3138632D332E332C302D362D322E372D36
        2D3673322E372D362C362D3673362C322E372C362C3620202623393B2623393B
        2623393B2623393B5332332E332C31382C32302C31387A222F3E0D0A0909093C
        2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = DxRefreshClick
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Bulan    '
      Category = 0
      Hint = 'Bulan    '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object sptahun: TcxBarEditItem
      Caption = 'Tahun'
      Category = 0
      Hint = 'Tahun'
      Visible = ivAlways
      Width = 140
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.MaxValue = 9999.000000000000000000
      Properties.MinValue = 2000.000000000000000000
    end
  end
  object DsRpt_By: TDataSource
    DataSet = QRpt_By
    Left = 432
    Top = 272
  end
end
