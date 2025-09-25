object FRpt_Buku_Besar: TFRpt_Buku_Besar
  Left = 0
  Top = 0
  Caption = 'Form Laporan Buku Besar'
  ClientHeight = 465
  ClientWidth = 924
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 127
    Width = 924
    Height = 338
    Align = alClient
    DataSource = DsBuku_Besar
    DrawMemoText = True
    DynProps = <>
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_code'
        Footers = <>
        Title.Caption = 'Kode Perkiraan'
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Perkiraan'
        Width = 238
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Caption = 'No Trans'
        Width = 121
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 73
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 164
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'db'
        Footer.DisplayFormat = '#,##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Debit'
        Width = 120
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd'
        Footer.DisplayFormat = '#,##0.00'
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Kredit'
        Width = 120
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'saldo'
        Footers = <>
        Title.Caption = 'Saldo'
        Width = 120
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 924
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
  object Rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45622.568261701400000000
    ReportOptions.LastChange = 45693.660698240740000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'var sa,db,kd,saldo:real;'
      'test:string;'
      'procedure GroupHeader1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '{  sa:=0;'
      '  db:=0;'
      '  sa:=sa + <DBBuku_Besar."sa">;'
      '  db:=db + <DBBuku_Besar."db">;'
      '  kd:=0;'
      '  kd:=kd + <DBBuku_Besar."kd">;'
      '  saldo:=0;'
      '  saldo:=saldo + <DBBuku_Besar."saldo">;'
      ' // memo35.Text:=floattostr(sa);'
      '//  memo36.Text:=floattostr(db);'
      '  memo37.Text:=floattostr(kd);'
      '  memo38.Text:=floattostr(saldo);'
      '     // Kosongkan teks sebelumnya'
      '{  for db := 0 to  <DBBuku_Besar."db"> do'
      '  begin'
      '    db := db + db;'
      '  end;    }'
      ''
      '  //db:=floattostr(test);'
      '//  Memo35.Text := FormatFloat('#39'#,##0.00'#39', db);'
      'end;'
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ' //   sa:=sa + <DBBuku_Besar."sa">;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = RptGetValue
    Left = 439
    Top = 124
    Datasets = <
      item
        DataSet = dm.DBPerusahaan
        DataSetName = 'DBPerusahaan'
      end
      item
        DataSet = DBBuku_Besar
        DataSetName = 'DBBuku_Besar'
      end
      item
        DataSet = DbTotal_Buku_besar
        DataSetName = 'DbTotal_Buku_Besar'
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
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 134.000000000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DBPerusahaan."company_name"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = 22.102350000000000000
          Width = 733.228346460000000000
          Height = 27.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Ringkasan Buku Besar')
          ParentFont = False
        end
        object Mperiode: TfrxMemoView
          AllowVectorExport = True
          Top = 51.102350000000000000
          Width = 733.228346460000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559055120000000000
          Top = 94.488188980000000000
          Width = 102.047244094488000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            'Kode')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 94.488188980000000000
          Width = 198.535433070000000000
          Height = 34.015748030000000000
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'Nama Perkiraan')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 315.480314960000000000
          Top = 94.488188980000000000
          Width = 102.047244090000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Awal'
            '(Dinormalkan)')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307086614173000000
          Top = 94.488188980000000000
          Width = 102.047244090000000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Perubahan Debit')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 529.133858267717000000
          Top = 94.488188980000000000
          Width = 102.047244090000000000
          Height = 34.015748030000000000
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Perubahan Kredit')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 633.826771653543000000
          Top = 94.488188980000000000
          Width = 105.826771653543000000
          Height = 34.015748030000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            'Saldo Akhir'
            '(Dinormalkan)')
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
        Height = 19.472467800000000000
        Top = 257.008040000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = DBBuku_Besar
        DataSetName = 'DBBuku_Besar'
        RowCount = 0
        Stretched = True
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 9.889763780000000000
          Top = 0.574830000000000000
          Width = 97.826771650000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_code'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[DBBuku_Besar."account_code"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 0.574830000000000000
          Width = 196.535433070866000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_name'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBBuku_Besar."account_name"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480314960630000000
          Top = 0.574830000000000000
          Width = 102.047244090000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'sa'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."sa"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307086614173000000
          Top = 0.574830000000000000
          Width = 102.047244090000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'db'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."db"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 529.133858267717000000
          Top = 0.574830000000000000
          Width = 102.047244090000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'kd'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."kd"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 633.826771653543000000
          Top = 0.574830000000000000
          Width = 105.826771653543000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."saldo"]')
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
        Height = 52.913420000000000000
        Top = 336.378170000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 438.047527000000000000
          Top = 34.015770000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Halaman [Page#] dari [TotalPages#]')
        end
        object Memo31: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tercetak Pada Tanggal [Date] [Time]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 6.897650000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Smart Backoffice Automation System Report')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 215.433210000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'GroupHeader1OnBeforePrint'
        Condition = 'DBBuku_Besar."header_code"'
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559055120000000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'header_code'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[DBBuku_Besar."header_code"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 529.133858267717000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."kdhd"]')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 633.826771653543000000
          Width = 105.826771653543000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."saldohd"]')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 423.307086614173000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."dbhd"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Width = 198.976377950000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'header_name'
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = []
          Memo.UTF8W = (
            '[DBBuku_Besar."header_name"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 317.480314960630000000
          Width = 102.047244090000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = DBBuku_Besar
          DataSetName = 'DBBuku_Besar'
          DisplayFormat.FormatStr = '#,##0.00;'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Color = clBlue
          Frame.Typ = []
          Fill.BackColor = clWhite
          HAlign = haRight
          Memo.UTF8W = (
            '[DBBuku_Besar."sahd"]')
          ParentFont = False
        end
      end
    end
  end
  object QRpt_Buku_Besar: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        '-- Select y.nama_perkiraan,x.*,case when x.posisi_dk='#39'D'#39' then SU' +
        'M(sa+db-kd) OVER (order by bln,nomor,kd_modul ASC) else SUM(sa-d' +
        'b+kd) OVER (order by bln,nomor,kd_modul ASC) end saldo from (sel' +
        'ect 0 as nomor,sa,db,kd,kode,modul,kd_modul,'#39#39' bln , '#39'2022'#39' tgl,' +
        'posisi_dk from (select case when posisi_dk='#39'D'#39' then case when b.' +
        'debit is Null  then 0 else b.debit end else case when b.kredit i' +
        's Null  then 0 else b.kredit end end sa,0 db,0 kd,CAST('#39'2141'#39' AS' +
        ' VARCHAR) kode, CAST('#39'SALDO AWAL'#39' AS VARCHAR) modul,CAST('#39#39' AS V' +
        'ARCHAR) kd_modul,now() tgl,posisi_dk from t_neraca_lajur1 a left' +
        ' join t_neraca_lajur1_det b on a.notrans=b.notrans INNER JOIN t_' +
        'daftar_perkiraan c on b.kd_akun=c.kode where b.kd_akun='#39'2141'#39' AN' +
        'D a.periode2<'#39'2022-01-02'#39' order by a.periode2 desc limit 1)x  UN' +
        'ION /* Debit */  select nomor,sum(sa)sa,sum(db)db,sum(kd) kd,kod' +
        'e,modul,kd_modul,bulan,to_char(tgl,'#39'dd'#39') tg,posisi_dk from (sele' +
        'ct 1 nomor,0 sa,sum(debit)db,0 kd,c.kode, concat('#39'MENURUT BUKU H' +
        'ARIAN '#39',A.jenis_tr ) modul,d.kd_modul,a.bulan,(SELECT (date_trun' +
        '-- c('#39'MONTH'#39', tgl_in ) + INTERVAL '#39'1 MONTH - 1 day'#39')::date as ha' +
        'ri) tgl,posisi_dk from t_item_neraca a INNER JOIN  t_item_neraca' +
        '_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON B.k' +
        'd_akun=C.kode INNER JOIN  t_modul_mutasi d on a.jenis_tr=d.nama_' +
        'modul  WHERE a.tgl_in>='#39'2022-01-02'#39' and a.tgl_in<='#39'2022-01-08'#39' A' +
        'ND kd_akun='#39'2141'#39' AND debit<>0 group by kode,d.kd_modul,A.jenis_' +
        'tr,a.bulan,a.tgl_in,posisi_dk) x group by kode,kd_modul,bulan,tg' +
        'l,modul,nomor,posisi_dk  '
      
        '-- union /* Kredit */ select nomor,sum(sa)sa,sum(db)db,sum(kd) k' +
        'd,kode,modul,kd_modul,bulan,to_char(tgl,'#39'dd'#39') tg,posisi_dk FROM(' +
        'select 2 nomor,0 sa,0 db,sum(kredit) kd,c.kode,  concat('#39'MENURUT' +
        ' BUKU HARIAN '#39',A.jenis_tr) modul,d.kd_modul,a.bulan,(SELECT (dat' +
        'e_trunc('#39'MONTH'#39', tgl_in ) + INTERVAL '#39'1 MONTH - 1 day'#39')::date as' +
        ' hari) tgl,posisi_dk from t_item_neraca a  INNER JOIN  t_item_ne' +
        'raca_det b on a.no_in=b.no_in INNER JOIN t_daftar_perkiraan C ON' +
        ' B.kd_akun=C.kode INNER JOIN  t_modul_mutasi d on a.jenis_tr=d.n' +
        'ama_modul   WHERE a.tgl_in>='#39'2022-01-02'#39' and a.tgl_in<='#39'2022-01-' +
        '08'#39' AND kd_akun='#39'2141'#39' AND kredit<>0 group by kode,d.kd_modul,A.' +
        'jenis_tr,a.bulan,a.tgl_in,posisi_dk)x  group by kode,kd_modul,bu' +
        'lan,tgl,modul,nomor,posisi_dk ORDER BY bln,nomor,kd_modul asc)x ' +
        'INNER JOIN t_daftar_perkiraan y on x.kode=y.kode ORDER BY bln,no' +
        'mor,kd_modul asc;'
      ''
      ''
      'select a.header_name,b.*  from t_ak_header a inner join ('
      
        'SELECT yy.header_code,xx.module_id,xx.ket,xx.trans_date,xx.trans' +
        '_no,xx.modul,xx.account_code,xx.account_name,xx.sa,xx.db,xx.kd,'
      
        'xx.created_at,'#39#39' bln, CASE WHEN yy.posisi_dk::text = '#39'D'#39'::text T' +
        'HEN sum(xx.sa::numeric + xx.db - xx.kd) OVER '
      
        '(PARTITION BY xx.account_code ORDER BY xx.trans_date,xx.created_' +
        'at) ELSE sum(xx.sa::numeric - xx.db + xx.kd) OVER '
      
        '(PARTITION BY  xx.account_code ORDER BY  xx.trans_date,xx.create' +
        'd_at)  END AS saldo FROM (/*saldo awal*/SELECT'#9'module_id, ket, '
      
        'date '#39'2025-01-01'#39' trans_date,trans_no,modul,account_code,account' +
        '_name,sa,db,kd,date '#39'2025-01-01'#39'created_at FROM'#9'"VBuku_BesarSA"'
      
        ' where trans_year<='#39'2025'#39' and trans_month <'#39'01'#39' UNION  /*Transak' +
        'si*/  SELECT'#9'module_id,ket,trans_date,trans_no,modul,account_cod' +
        'e,'
      
        'account_name,sa,db,kd,created_at FROM'#9'"VBuku_Besar" where trans_' +
        'date>='#39'2025-01-01'#39'and trans_date<='#39'2025-01-22'#39')xx  JOIN'
      
        ' t_ak_account yy ON xx.account_code::text = yy.code::text) b on ' +
        ' a.header_code=b.header_code order by b.header_code,b.created_at' +
        ' asc'
      '-- 0 row(s) affected.')
    Left = 496
    Top = 145
  end
  object DBBuku_Besar: TfrxDBDataset
    UserName = 'DBBuku_Besar'
    CloseDataSource = False
    DataSet = QRpt_Buku_Besar
    BCDToCurrency = False
    DataSetOptions = []
    Left = 496
    Top = 200
  end
  object DsBuku_Besar: TDataSource
    DataSet = QRpt_Buku_Besar
    Left = 88
    Top = 120
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
    Left = 592
    Top = 65451
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
          ItemName = 'dtMulai'
        end
        item
          Visible = True
          ItemName = 'dtSelesai'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 193
          Visible = True
          ItemName = 'EdAkun'
        end
        item
          Visible = True
          ItemName = 'Ednm_akun'
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
          ItemName = 'BPrint_Rincian'
        end
        item
          Visible = True
          ItemName = 'BRingkasan'
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
    object dtMulai: TcxBarEditItem
      Caption = 'Tanggal Mulai '
      Category = 0
      Hint = 'Tanggal Awal '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dtSelesai: TcxBarEditItem
      Caption = 'Tanggal Akhir  '
      Category = 0
      Hint = 'Tanggal Akhir'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object EdAkun: TcxBarEditItem
      Caption = 'Akun Perkiraan   '
      Category = 0
      Hint = 'Akun Perkiraan   '
      Visible = ivAlways
      Width = 200
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = EdAkunPropertiesButtonClick
    end
    object Ednm_akun: TcxBarEditItem
      Caption = 'Nama Perkiraan  '
      Category = 0
      Hint = 'Nama Perkiraan  '
      Visible = ivAlways
      Width = 193
      PropertiesClassName = 'TcxTextEditProperties'
    end
    object BPrint_Rincian: TdxBarLargeButton
      Caption = 'Rincian Buku Besar'
      Category = 0
      Hint = 'Rincian Buku Besar'
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
      OnClick = BPrint_RincianClick
    end
    object BRingkasan: TdxBarLargeButton
      Caption = 'Ringkisan Buku Besar'
      Category = 0
      Hint = 'Ringkisan Buku Besar'
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
      OnClick = BRingkasanClick
    end
  end
  object QTotal_Buku_Besar: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'DbTotal_Buku_besar')
    Left = 608
    Top = 143
  end
  object DbTotal_Buku_besar: TfrxDBDataset
    UserName = 'DbTotal_Buku_Besar'
    CloseDataSource = False
    DataSet = QTotal_Buku_Besar
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 200
  end
end
