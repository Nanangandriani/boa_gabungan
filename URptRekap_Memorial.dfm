object FRekap_memorial: TFRekap_memorial
  Left = 0
  Top = 0
  Caption = 'Form Buku Memorial'
  ClientHeight = 543
  ClientWidth = 882
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
    Width = 882
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 127
    Width = 882
    Height = 416
    Align = alClient
    DataSource = Ds_memorial
    DrawMemoText = True
    DynProps = <>
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 315
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'memo_no'
        Footer.ValueType = fvtFieldValue
        Footers = <>
        Title.Caption = 'No. Bukti '
        Width = 114
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_code'
        Footers = <>
        Title.Caption = 'No. Perkiraan'
        Width = 80
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'
        DynProps = <>
        EditButtons = <>
        FieldName = 'debit'
        Footer.DisplayFormat = '#,##0.00;'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Debit'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'
        DynProps = <>
        EditButtons = <>
        FieldName = 'kredit'
        Footer.DisplayFormat = '#,##0.00;'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Kredit'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object cbbulan: TComboBox
    Left = 60
    Top = 39
    Width = 146
    Height = 21
    TabOrder = 2
    OnSelect = cbbulanSelect
    Items.Strings = (
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
  object DbRpt_Memorial: TfrxDBDataset
    UserName = 'DbRpt_Memorial'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'memo_no=memo_no'
      'trans_date=trans_date'
      'bk_no=bk_no'
      'faktur_no=faktur_no'
      'rounding_status=rounding_status'
      'post_status=post_status'
      'trans_month=trans_month'
      'trans_year=trans_year'
      'koreksi_status=koreksi_status'
      'id_ket=id_ket'
      'account_code=account_code'
      'debit=debit'
      'kredit=kredit'
      'account_name=account_name'
      'tgl2=tgl2'
      'bulan=bulan'
      'keterangan=keterangan'
      'ket=ket'
      'notes=notes')
    DataSet = QRpt_Memorial
    BCDToCurrency = False
    DataSetOptions = []
    Left = 550
    Top = 49
  end
  object Rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44284.400902222200000000
    ReportOptions.LastChange = 45955.227325312500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure Memo11OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      'IF <DbRpt_Memorial."debit"> < 0 THEN'
      'BEGIN'
      '  memo11.left:=90;'
      '  memo37.text:='#39#39';'
      'END;'
      'IF <DbRpt_Memorial."debit"> > 0 THEN'
      'BEGIN'
      '  memo11.left:=75;'
      '  memo11.width:=230;'
      'END;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = RptGetValue
    Left = 166
    Top = 8
    Datasets = <
      item
        DataSet = DbRpt_Memorial
        DataSetName = 'DbRpt_Memorial'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 245.669450000000000000
        Width = 740.409927000000000000
        DataSet = DbRpt_Memorial
        DataSetName = 'DbRpt_Memorial'
        RowCount = 0
        Stretched = True
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 94.488201180000000000
          Width = 215.433063540000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo11OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'account_name'
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            '[DbRpt_Memorial."account_name"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362229130000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'memo_no'
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DbRpt_Memorial."memo_no"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952731500000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbRpt_Memorial."account_code"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543263150000000000
          Width = 143.622047240000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataField = 'debit'
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbRpt_Memorial."debit"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 597.055113230000000000
          Width = 143.622047240000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'kredit'
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbRpt_Memorial."kredit"]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Width = 18.897503540000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590575590000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo37OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'trans_date'
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clWhite
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<DbRpt_Memorial."debit"> = 0'
          Highlight.FillType = ftBrush
          Highlight.Fill.Style = bsClear
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[DbRpt_Memorial."trans_date"]')
          ParentFont = False
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 366.614410000000000000
        Width = 740.409927000000000000
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Width = 226.771653540000000000
          Height = 18.897637795275600000
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362229130000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952731500000000000
          Width = 75.590551181102400000
          Height = 18.897637795275600000
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543263150000000000
          Width = 143.622047244094000000
          Height = 18.897637795275600000
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbRpt_Memorial."debit">,MasterData1,3)]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 597.055113230000000000
          Width = 143.622047240000000000
          Height = 18.897637795275600000
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbRpt_Memorial."kredit">,MasterData1,3)]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590575590000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 120.944881890000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 64.251968500000000000
          Width = 75.590551180000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Top = 64.251968500000000000
          Width = 226.771653540000000000
          Height = 34.015748031496100000
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362229130000000000
          Top = 64.251968500000000000
          Width = 75.590551180000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Bukti')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 597.055113230000000000
          Top = 64.251968500000000000
          Width = 143.622047240000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952731500000000000
          Top = 64.251968500000000000
          Width = 75.590551180000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Perkiraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543263150000000000
          Top = 64.251968500000000000
          Width = 143.622047240000000000
          Height = 34.015748031496100000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Debet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Top = 22.677150710000000000
          Width = 738.897637800000000000
          Height = 26.456690470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BUKU MEMORIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 696.433146540000000000
          Top = 2.236205830000000000
          Width = 41.574781180000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':  [PAGE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 628.401667560000000000
          Top = 2.236205830000000000
          Width = 66.031540000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Halaman  ')
          ParentFont = False
          VAlign = vaCenter
        end
        object MPeriod: TfrxMemoView
          AllowVectorExport = True
          Left = 6.779530000000000000
          Top = 45.031510710000000000
          Width = 738.897637800000000000
          Height = 17.000000000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Periode')
          ParentFont = False
          VAlign = vaBottom
        end
        object Mpt: TfrxMemoView
          AllowVectorExport = True
          Left = 0.220470000000000000
          Width = 739.268090000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT. PUTRA  MENARA  AGUNG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mthn: TfrxMemoView
          AllowVectorExport = True
          Top = 98.267716535433100000
          Width = 37.795275590000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Top = 98.267716535433100000
          Width = 226.771653540000000000
          Height = 22.677165350000000000
          DataSetName = 'DBBuku_Besar'
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
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362229130000000000
          Top = 98.267716540000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
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
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 597.055113230000000000
          Top = 98.267716535433100000
          Width = 143.622047240000000000
          Height = 22.677165350000000000
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
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952731500000000000
          Top = 98.267716535433100000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
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
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543263150000000000
          Top = 98.267716535433100000
          Width = 143.622047240000000000
          Height = 22.677165350000000000
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
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 98.267716540000000000
          Width = 37.795275590000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[vbulan]')
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
        Height = 22.677165350000000000
        Top = 200.315090000000000000
        Visible = False
        Width = 740.409927000000000000
        Condition = 'DbRpt_Memorial."memo_no"'
        Stretched = True
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Width = 226.771653540000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362229130000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DbRpt_Memorial."memo_no"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952731500000000000
          Width = 75.590551181102400000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543263150000000000
          Width = 143.622047244094000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 597.055113230000000000
          Width = 143.622047240000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590575590000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
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
        Height = 18.897637800000000000
        Top = 287.244280000000000000
        Width = 740.409927000000000000
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590551180000000000
          Width = 226.771653540000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362229130000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 377.952731500000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 453.543263150000000000
          Width = 143.622047240000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 597.055113230000000000
          Width = 143.622047240000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Width = 75.590575590000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbRpt_Memorial
          DataSetName = 'DbRpt_Memorial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
      end
    end
  end
  object QRpt_Memorial: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from "V_BukuMemorial"')
    Left = 557
    Top = 103
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
    Top = 8
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
          UserDefine = [udWidth]
          UserWidth = 149
          Visible = True
          ItemName = 'DtMulai'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 152
          Visible = True
          ItemName = 'spTahun'
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
      OnClick = dxBarLargeButton1Click
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
    object DtMulai: TcxBarEditItem
      Caption = 'Bulan     '
      Category = 0
      Hint = 'Bulan     '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object spTahun: TcxBarEditItem
      Caption = 'Tahun    '
      Category = 0
      Hint = 'Tahun    '
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
    end
  end
  object Ds_memorial: TDataSource
    DataSet = QRpt_Memorial
    Left = 680
    Top = 200
  end
end
