object FRpt_BHKeluarKasdanBank: TFRpt_BHKeluarKasdanBank
  Left = 0
  Top = 0
  Caption = 'Laporan Buku Harian Kas dan Bank'
  ClientHeight = 577
  ClientWidth = 1130
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1130
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
    Width = 1130
    Height = 450
    Align = alClient
    DataSource = DSKasBank
    DynProps = <>
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tanggal'
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_bukti'
        Footers = <>
        Title.Caption = 'Nomor Bukti'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_code'
        Footers = <>
        Title.Caption = 'Supplier | Kode'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
        Title.Caption = 'Supplier | Nama'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'keterangan'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'deb_hut_acc'
        Footers = <>
        Title.Caption = 'DEBET | Hutang | No Akun'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'deb_hut_nm'
        Footers = <>
        Title.Caption = 'DEBET | Hutang | Nama Akun'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'deb_hut_jum'
        Footers = <>
        Title.Caption = 'DEBET | Hutang | Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'deb_lain_acc'
        Footers = <>
        Title.Caption = 'DEBET | Lain-Lain | No Akun'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'deb_lain_nm'
        Footers = <>
        Title.Caption = 'DEBET | Lain-Lain | Nama Akun'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'deb_lain_jum'
        Footers = <>
        Title.Caption = 'DEBET | Lain-Lain | Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kre_k_b_acc'
        Footers = <>
        Title.Caption = 'KREDIT | KAS / BANK | No Akun'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kre_k_b_nm'
        Footers = <>
        Title.Caption = 'KREDIT | KAS / BANK | Nama Akun'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'kre_k_b_jum'
        Footers = <>
        Title.Caption = 'KREDIT | KAS / BANK | Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kre_lain_acc'
        Footers = <>
        Title.Caption = 'KREDIT | Lain-Lain | No Akun'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kre_lain_nm'
        Footers = <>
        Title.Caption = 'KREDIT | Lain-Lain | Nama Akun'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'kre_lain_jum'
        Footers = <>
        Title.Caption = 'KREDIT | Lain-Lain | Jumlah'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44169.465120821800000000
    ReportOptions.LastChange = 46056.606913715280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      
        'procedure Memo46OnPreviewClick(Sender: TfrxView; Button: TMouseB' +
        'utton; Shift: Integer; var Modified: Boolean);'
      'begin'
      '{   if Memo46.DisplayFormat.text = '#39'0'#39' then begin'
      '   Memo46.DisplayFormat.formatstr:='#39'#,##'#39';'
      '   end;    }'
      'end;'
      ''
      'begin'
      
        '//if <DbRptSP."Bahan_baku"> = 0 then MBaku.DisplayFormat.formats' +
        'tr:='#39'#,##'#39' else MBaku.DisplayFormat.formatstr:='#39'#,##0.00'#39
      ' { if <DbRptSP."nilai_um"> = 0 then begin'
      '   Memo46.DisplayFormat.formatstr:='#39'#,##'#39';'
      '   Mlain2.DisplayFormat.formatstr:='#39'#,##'#39';'
      ' {  end; //else Mlain2.DisplayFormat.formatstr:='#39'#,##0.00'#39';'
      '  if Memo46.DisplayFormat.formatstr = '#39'0'#39' then begin'
      '   Memo46.DisplayFormat.formatstr:='#39'#,##'#39';'
      '   Mlain2.DisplayFormat.formatstr:='#39'#,##0.00'#39';'
      '   end; }'
      'end.')
    Left = 144
    Top = 200
    Datasets = <
      item
        DataSet = dm.DBPerusahaan
        DataSetName = 'DBPerusahaan'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 215.900000000000000000
      PaperSize = 256
      LeftMargin = 4.000000000000000000
      RightMargin = 4.000000000000000000
      TopMargin = 15.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 219.212740000000000000
        Width = 1217.008660000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 189.732283460000000000
          Width = 102.047244090000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 887.055118110000000000
          Width = 71.811023620000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."kre_k_b_nm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 683.543307090000000000
          Width = 35.905511810000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."deb_lain_acc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 791.724409450000000000
          Width = 60.472440940000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."deb_lain_jum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 1035.590551180000000000
          Width = 34.015748030000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."kre_lain_acc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Width = 41.574803150000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."tanggal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574803150000000000
          Width = 102.047244090000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."no_bukti"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 719.535433070000000000
          Width = 71.810996770000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."deb_lain_nm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 852.952755910000000000
          Width = 34.015748030000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."kre_k_b_acc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 959.244094490000000000
          Width = 76.724409450000000000
          Height = 26.456695350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."kre_k_b_jum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 1140.283464570000000000
          Width = 76.346456690000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."kre_lain_jum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 144.000000000000000000
          Width = 45.354330710000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."supplier_code"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 291.401574800000000000
          Width = 207.874015750000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."keterangan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 500.787401570000000000
          Width = 35.905511810000000000
          Height = 26.456710000000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."deb_hut_acc"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 536.692913390000000000
          Width = 71.811023620000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."deb_hut_nm"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 608.503937010000000000
          Width = 75.590551180000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."deb_hut_jum"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 1069.094488190000000000
          Width = 69.921259840000000000
          Height = 26.456692910000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."kre_lain_nm"]')
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
        Height = 118.299212600000000000
        Top = 18.897650000000000000
        Width = 1217.008660000000000000
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 291.362216930000000000
          Top = 68.031496060000000000
          Width = 207.874040160000000000
          Height = 50.267716540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 852.952755910000000000
          Top = 68.031496060000000000
          Width = 363.590551181102000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 500.787401570000000000
          Top = 68.031496062992100000
          Width = 351.496062990000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Debet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Top = 68.031496060000000000
          Width = 41.574803150000000000
          Height = 50.267716540000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 144.063001890000000000
          Top = 68.031496060000000000
          Width = 147.401596770000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Supplier')
          ParentFont = False
          VAlign = vaCenter
        end
        object MPT: TfrxMemoView
          AllowVectorExport = True
          Width = 1217.007874020000000000
          Height = 68.031510710000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            ' [DBPerusahaan."company_name"]')
          ParentFont = False
        end
        object MPeriode: TfrxMemoView
          AllowVectorExport = True
          Top = 40.354360000000000000
          Width = 428.777454100000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Periode :  18 November 2021 - 31 November 2021')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 1088.504640000000000000
          Top = 22.677180000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Lembar : [PAGE#]')
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 41.574803150000000000
          Top = 68.031496060000000000
          Width = 102.047256300000000000
          Height = 50.267716540000000000
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Bukti')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 500.787401570000000000
          Top = 85.039370080000000000
          Width = 182.551183540000000000
          Height = 15.986404350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Hutang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 536.692913390000000000
          Top = 100.913385826772000000
          Width = 71.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object jns_hutang: TfrxMemoView
          AllowVectorExport = True
          Top = 20.897650000000000000
          Width = 515.706644100000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Buku Harian Pembelian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 144.062992130000000000
          Top = 100.913385830000000000
          Width = 45.354330710000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kode')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 189.795275590000000000
          Top = 100.913385830000000000
          Width = 102.047244090000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 500.787401570000000000
          Top = 100.913385826772000000
          Width = 35.905511810000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. AKun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 683.653990000000000000
          Top = 85.039370078740200000
          Width = 168.944881890000000000
          Height = 15.986404350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lain-lain')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 608.503937010000000000
          Top = 100.913385826772000000
          Width = 75.590551180000000000
          Height = 17.007874020000000000
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 719.535433070000000000
          Top = 100.913385826772000000
          Width = 71.810996770000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 683.543307090000000000
          Top = 100.913385826772000000
          Width = 35.905511810000000000
          Height = 17.007874020000000000
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 791.724409450000000000
          Top = 100.913385826772000000
          Width = 60.472440940000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 887.055118110000000000
          Top = 100.913385826772000000
          Width = 71.811023620000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 852.952755910000000000
          Top = 100.913385826772000000
          Width = 34.015748030000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 959.244094490000000000
          Top = 100.913385830000000000
          Width = 76.724409450000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 1069.094488190000000000
          Top = 100.913385826772000000
          Width = 69.921259840000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo95: TfrxMemoView
          AllowVectorExport = True
          Left = 1035.590551180000000000
          Top = 100.913385830000000000
          Width = 34.015748030000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Akun')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 1140.283464570000000000
          Top = 100.913385830000000000
          Width = 76.346456692913400000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 852.952755910000000000
          Top = 85.039370080000000000
          Width = 181.417320390000000000
          Height = 15.986404350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'KAS / BANK')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 1035.590551180000000000
          Top = 85.039370080000000000
          Width = 181.039370078740000000
          Height = 15.986404350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lain-lain')
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
        Height = 37.795290240000000000
        Top = 268.346630000000000000
        Width = 1217.008660000000000000
        Stretched = True
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 791.811023620000000000
          Width = 60.472440940000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."deb_lain_jum">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 887.055118110000000000
          Width = 71.811023620000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.DbRptSP
          DataSetName = 'DbRptSP'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 959.244094490000000000
          Width = 76.724409450000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.DbRptSP
          DataSetName = 'DbRptSP'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."kre_k_b_jum">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 1069.094488190000000000
          Width = 69.921259840000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.DbRptSP
          DataSetName = 'DbRptSP'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 1140.283464570000000000
          Width = 76.346456690000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.DbRptSP
          DataSetName = 'DbRptSP'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."kre_lain_jum">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 608.503937010000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.DbRptSP
          DataSetName = 'DbRptSP'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."deb_hut_jum">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 852.953310000000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Width = 608.503937010000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 683.543307090000000000
          Width = 35.905511810000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 719.535433070000000000
          Width = 71.810996770000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 22.677180000000000000
          Width = 1217.007874020000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 1035.591220000000000000
          Width = 34.015748030000000000
          Height = 22.677165350000000000
          StretchMode = smMaxHeight
          DataSet = FRpt_BukuHarianPembelian.Rpt_BHP
          DataSetName = 'Rpt_BHP'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft]
          HAlign = haRight
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
        Top = 196.535560000000000000
        Width = 1217.008660000000000000
        Condition = 'frxDBDataset1."no_bukti"'
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165350000000000
        Top = 366.614410000000000000
        Width = 1217.008660000000000000
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 608.503937010000000000
          Width = 75.590551180000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."deb_hut_jum">,MasterData2,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 851.149535510000000000
          Width = 185.196850390000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."kre_k_b_jum">,MasterData2,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 1037.480314960000000000
          Width = 179.149606300000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."kre_lain_jum">,MasterData2,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Width = 608.503937010000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '   TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 682.204653620000000000
          Width = 170.078810940000000000
          Height = 22.677165350000000000
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."deb_lain_jum">,MasterData2,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 1217.007874020000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
          Frame.Width = 0.100000000000000000
        end
      end
    end
  end
  object QKasBank: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        ' SELECT * from vbh_keluar_kas_bank a where a.tanggal>='#39'2026-01-2' +
        '8'#39'and a.tanggal<='#39'2026-01-28'#39)
    Left = 224
    Top = 232
    object QKasBanktanggal: TDateField
      FieldName = 'tanggal'
    end
    object QKasBankno_bukti: TStringField
      FieldName = 'no_bukti'
      Size = 100
    end
    object QKasBanksupplier_code: TMemoField
      FieldName = 'supplier_code'
      OnGetText = QKasBanksupplier_codeGetText
      BlobType = ftMemo
    end
    object QKasBankname: TMemoField
      FieldName = 'name'
      OnGetText = QKasBanknameGetText
      BlobType = ftMemo
    end
    object QKasBankketerangan: TStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object QKasBankdeb_hut_acc: TMemoField
      FieldName = 'deb_hut_acc'
      OnGetText = QKasBankdeb_hut_accGetText
      BlobType = ftMemo
    end
    object QKasBankdeb_hut_nm: TMemoField
      FieldName = 'deb_hut_nm'
      OnGetText = QKasBankdeb_hut_nmGetText
      BlobType = ftMemo
    end
    object QKasBankdeb_hut_jum: TFloatField
      FieldName = 'deb_hut_jum'
    end
    object QKasBankdeb_lain_acc: TMemoField
      FieldName = 'deb_lain_acc'
      OnGetText = QKasBankdeb_lain_accGetText
      BlobType = ftMemo
    end
    object QKasBankdeb_lain_nm: TMemoField
      FieldName = 'deb_lain_nm'
      OnGetText = QKasBankdeb_lain_nmGetText
      BlobType = ftMemo
    end
    object QKasBankdeb_lain_jum: TFloatField
      FieldName = 'deb_lain_jum'
    end
    object QKasBankkre_k_b_acc: TMemoField
      FieldName = 'kre_k_b_acc'
      OnGetText = QKasBankkre_k_b_accGetText
      BlobType = ftMemo
    end
    object QKasBankkre_k_b_nm: TMemoField
      FieldName = 'kre_k_b_nm'
      OnGetText = QKasBankkre_k_b_nmGetText
      BlobType = ftMemo
    end
    object QKasBankkre_k_b_jum: TFloatField
      FieldName = 'kre_k_b_jum'
    end
    object QKasBankkre_lain_acc: TMemoField
      FieldName = 'kre_lain_acc'
      OnGetText = QKasBankkre_lain_accGetText
      BlobType = ftMemo
    end
    object QKasBankkre_lain_nm: TMemoField
      FieldName = 'kre_lain_nm'
      OnGetText = QKasBankkre_lain_nmGetText
      BlobType = ftMemo
    end
    object QKasBankkre_lain_jum: TFloatField
      FieldName = 'kre_lain_jum'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'tanggal=tanggal'
      'no_bukti=no_bukti'
      'supplier_code=supplier_code'
      'name=name'
      'keterangan=keterangan'
      'deb_hut_acc=deb_hut_acc'
      'deb_hut_nm=deb_hut_nm'
      'deb_hut_jum=deb_hut_jum'
      'deb_lain_acc=deb_lain_acc'
      'deb_lain_nm=deb_lain_nm'
      'deb_lain_jum=deb_lain_jum'
      'kre_k_b_acc=kre_k_b_acc'
      'kre_k_b_nm=kre_k_b_nm'
      'kre_k_b_jum=kre_k_b_jum'
      'kre_lain_acc=kre_lain_acc'
      'kre_lain_nm=kre_lain_nm'
      'kre_lain_jum=kre_lain_jum')
    DataSet = QKasBank
    BCDToCurrency = False
    DataSetOptions = []
    Left = 304
    Top = 232
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
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'DtMulai'
        end
        item
          Visible = True
          ItemName = 'DtSelesai'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
      Caption = 'Print To PDF'
      Category = 0
      Hint = 'Print To PDF'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000010744558745469746C65005072696E743B5064663BA5B5DD12000006
        7549444154785EC5977F8C1D5515C73FF7BD795DB6DB2E50E96AA5DD26B6585B
        A5A635155310D76D4A34082D54C426F8234663F811FED12018A3B1464A308068
        89D148D244131151346202493521B6DDC61481C006B740B7A50D88B8DDDDB6BB
        EFCDDC7BCFB17B72F366F2B26DB37F7993937BE6CEBCF3FD9EEF396766D7A92A
        FFCF9531CB72CED1B13A0FD83B78F51E551DD4288808511495485445A3104510
        BBD7E9EBDF3EFFEAA14DE72450054E56EB24A22283EFFBE87A03D5109110501F
        88E67BA4722631B6AF870F8D0E029C9F4002DEFDE4737B6AAE36A06842860FAF
        5EC2E4D7B6A131B078E7C3A838FEFBC8034CFF63884B773F8E0AFCE7C19D4C0D
        ED65D9637F46514494D1EB369B0AE727505A4D8581EDD7AF4569E393D51CCF8A
        A0311AF8B1AFDCCCA58F3EC6E9A16D88C0D19BAF67D96FFEC8A9BDCFA2AA8C6E
        B9C69E9528C428CC49011F225121845852C8EA58301F51D4C0DFF9F1FD98E428
        561630D915A5FFC96718BD7610154144E7A480F33EA2A991508762F8762D3EA0
        0A6FDC72A3D55983802A06AC6A2445E17002B786953837024508882A312AA058
        60AD25C0D0069424B10AF43FF117DEBE7707A46BB5DD0C997309F260B2455150
        1209BB2686C091ED5B310222360D87B77E2AD5DB94E3F0A70712B826EB288173
        EEDC0AF84054AC795045C1085DB4E10A86F7EDC58045EC7E4C4022922CF92A68
        54448DFCD386790E055C558122F7964D8862070216E8F2077F025A66A3D5ACEA
        35F61F7C9D6BAE5EFD6E60120880CCF228D9EC2F1DDB1B4057CB7BCB2C950045
        99986CD9AE38142A441455C705F3329EDAF332403750248BC904D06464D56C7F
        F0D0E3CBFAFA96FE887A7DE38B2FEC7B6F57A341280231924A00EA0C30F92529
        70A81A2523ECBDE7CE7B1E3AD2D53D9FB78EBFF996C4706078F8E03D2F1E7866
        1408550209FC89354B972DFFFBEA957D177EF0B2F7B07FFF5F5973E5465E79E9
        685B01031270A90C4002064804818628BE887CE0231B98BFA0976FDDD6BFE4C0
        3F476E78747773D3C707AEDBBCEBBE3B9E27A99014A0D6D37BC98E15FD8B2E5C
        72C9427ABA1B14794EF081C3AF1CE0ABB70E81BA76C6D5A52AA8568B5B3EB376
        FD0AA64E9E62D1A25E2E5F731937DD786DEF6BC79ADF036E4AE5D0B6025174B0
        77C10584F4F298181F67E2C4181F1BF8643BD34EF412D581ABB070D81A1F1BA3
        953711C5E2AE5AB5929163C39F00EAA9D7A4AD4008B1578120362E38154647FE
        459665D4EA1959A36135AED56B34CEF8CED5E85C224A08051A056ACE549C3A3D
        81E83682A8C50921F61881B4B272DE23C1477C16ADE1D6AE59C9732FBC4AD698
        57495CC139AC12988B6A55A0745F6D42C88B26EB3EB4C2E2F914BF2802A54665
        13BA19F0DC47EA59C007E196ED5B39F8FC4E9AD3C154B08C7155DDABC89D4AE0
        7D4E8DC097BFF8598B57F860F1BD8F94A35E51C08740E1235956A30891BEBEC5
        FC62D7F7D9F5B35FF3D2CB238C9D9800012C6BA59C4649F8E91AE55D8B2E62DD
        DA55DC79FB9758B0B0171FA2C53602A1AA002E11480A1481FA0C81422842209B
        D7CDDD77DD4ABDEE70CE95F977E4EEA82C35827851F23C30DDF27435EAB492FC
        214849A0AA8088D22A823559B3F0C61860AAE5AB4028735FA246C6E28BC8EC3D
        10458C65AD1E68B502798865C6257249C69CF2BE4B0CB5FA5C725272E43E9A4F
        C2EC5040288A48BD36A340A008C2233FFF13875E3B7EFECCCFD29EEF5FB9943B
        BEBE851895BC88E47944E46C258862B2D7674A90E4BAF8E2856CBC621DF7DEBD
        859FEE7F879EAE3A75E788AAA8C2C966E4E4B4470011939A93A70A7EF899A5DC
        BFEB69A69A938C1C799B853DDD8C4D4CE1D2F7A24AA056D6490821DA04985CB9
        E773375C6567A2983A3E2AB9578AA0B4BC329547031551DBD50CF3430C6CDEB4
        FE0CA19C53D33979E16D025494B2A54A0212439C98E9D810C46A15A2F0C6BFC7
        199F9C44D540C9BD90C7687BB3B0D14284B64531F0F4EAD533BF3F6113A40AAA
        8EE9A647244E563ECB64C9F16F1E7FFDB6E966F361D42D462148206F3559BEBC
        DF021BB8CF718000AD5C6815D29E7D35600706061223BFFBD553648D2EEA59C3
        ACE6DCD8C489A3DF005A8054BBB10ECC03BA2A93D100E6DFFE9DDF1EDAF1CD2D
        E5B72E5994F2ED635BE5DDACC07777FE815F3EF0850DC069C00321014FA73D54
        3FC7311DFAEA1F28C0E93C6FEEFBF67DBFBF92369EA2556040C5BC74A400F8A2
        35041C4980928C52FE12A8D3AF5E67402359F563E0CEF37B017C996909D839AD
        4E55CFF5DFB12B81CDE8B4B39C6B3221F9B3E100FC0F0F4FF620152A08690000
        000049454E44AE426082}
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
      Caption = 'Tanggal Awal   '
      Category = 0
      Hint = 'Tanggal Awal   '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object DtSelesai: TcxBarEditItem
      Caption = 'Tanggal Akhir  '
      Category = 0
      Hint = 'Tanggal Akhir  '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object TdxBarLargeButton
      Category = 0
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Print To Excel'
      Category = 0
      Hint = 'Print To Excel'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000018744558745469746C65005072696E745469746C65733B5072696E74
        3B393703740000046D49444154785EED96594C5C6514C7E9866CB16A6BA2D1EA
        83AF361A97C425F14163AC467990560553AA764191616B0B658452E850A16C71
        2476A50D04A929282D6B456D4A1B9A505310DA52C156CAE27406668159EE0C03
        E5EF776EBE7EC9F53AB7834BFAD293FC1EBE9973FEE737992F373704C06DE58E
        404872F54B21AC1672163342FF5B2853E48B1202371767566FBAC464F07F40D9
        4224804058C28117D06FAEC2F9D112152C44719E4F0F655236ED0824406651F1
        C667D0355C841F073F559158F9A2E23C9F1ECAA46CDAC177A904963096C6953E
        85CEDF0D68EBDFA862C39EE714E7F9F4502665D30EDA1548E09E778A9EC0F991
        AFD07165BB8AB5E54FAB3E1B1C6F84C5F98BA0F3720B9D55D83C03387DB119B4
        435320C6B012C1D2D1D784EE5F2FC058752628322B0A48E05E2EA0AAC58CBB73
        CADB60774CC1649EC098C9825193595072B8537176B93D283FD481208B7A4960
        19ED0A241045022E8F1756870B137627C66D5382A2836714678FE4C5EE7D2741
        65B57B340140BD24B03C90C02246644ED909787D339874F9547CBEAF0312FB4E
        E09D4641453BA8CC56972600A89704EEA75D8104223E2B6D83CF3F0BA7C7AFA2
        6FC08CFEDFCC28AB3C0543C50F884DC8456E592BA8C62C4E4DA8A897666876E7
        97EDD7F38D277299C0028580BEB8154C42454FFF1FC82E6DC1DEAF3BD1D53B02
        AA351FE9A12F6A04D5A8794A132AEAA5192ACAA0AC9C92C63C921002DB8A9AE1
        9D9E85C33DADC0E79F41764933CEF60CA3BBDF04AAE8F737E3F5D5BA79413300
        2883B228D34C77420864163641620276D7B402C9E7C7B6C2E33877614CE6C6DC
        1C6237E8B12A260D710905884FDA8D8D5B8CD065EFC7664335320B6B91B1AB06
        A93B0E2121A302EB74C572EF7BEBF5342B7228931ECF4260EBAE46F982D99C3E
        0574E1D2F3EBD1C9AC09B7E447556D135E7EEB63BCF6762A856B413DD4CB661A
        6956E4B04C120817025B0CC7E06102D6299F020F1348CA3E8253E786644C3637
        DC5E3F2AAB1BF0E69A243CFFCA5A4DA2DF4DC6E19AE33443B322873269AF1048
        DFD90026A1E2E7DE6BD8945185F6B3576486AE4F61C4E284C3E5C3EC8D39DCAA
        6667E76067BDC36C8666790E652A05D2F2BE63963318777815B8A569AC4B3988
        96D3033283A38E7F05CFA14CA540EA8E6F65010B13107081D84FF6E0D84F9765
        2E5DB3E1D955FA7F04CDF21CCA540884A7E4D6C325F961B64B0A5C920F31EB8D
        A8FBFEA24CEFD5090A936FB17D5242EEC9494DA8877A698666790E652A04C292
        B7D7D17F4A120ABC3E3FA2E3CB70A4B54FA67BD022B3D5D0008BD58DAC768716
        D443BD628EE750A61058C8084DCCAA3DA0CBA9C35FE9EA1962B65FE08DB86205
        6979F518314D22BDD5A605F550AF6AFED5D5F955379F030BF813E92E46147F71
        B88FB18CF300E331C6E38C959C277539477175C41E14D4CB3356301E663C24DE
        0FB8807825E756E18C084E246329975ACE79F003DDDEDAC4AC6F100C1FA6ECAF
        E1F3913C338C96CBBB93B28F720921B22808C2B8C8238C476FC10A2E1FCA5015
        096812A04876091789D040F96BFFAE00DC56EE08FC091C368BFD77624AAE0000
        000049454E44AE426082}
      OnClick = dxBarLargeButton2Click
    end
  end
  object QPerusahaan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_company')
    Left = 663
    Top = 32
  end
  object frxDBDatasetPers: TfrxDBDataset
    UserName = 'frxDBDatasetPers'
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
    Left = 751
    Top = 32
  end
  object DSKasBank: TDataSource
    DataSet = QKasBank
    Left = 448
    Top = 288
  end
end
