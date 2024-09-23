object FTerima_Material: TFTerima_Material
  Left = 0
  Top = 0
  Caption = 'Form Terima Barang'
  ClientHeight = 442
  ClientWidth = 813
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 813
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object DBGridTerima: TDBGridEh
    Left = 0
    Top = 127
    Width = 813
    Height = 315
    Align = alClient
    DataGrouping.Active = True
    DataGrouping.GroupLevels = <
      item
        ColumnName = 'Column_11_trans_year'
      end
      item
        ColumnName = 'Column_12_trans_month'
      end
      item
        ColumnName = 'Column_13_trans_day'
      end
      item
        ColumnName = 'Column_0_purchase_type'
      end>
    DataSource = Dsterima_material
    DrawMemoText = True
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    RowDetailPanel.Active = True
    SearchPanel.Enabled = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'purchase_type'
        Footers = <>
        Title.Caption = 'Jenis Pembelian'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'receive_no'
        Footers = <>
        Title.Caption = 'No. Penerimaan'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'receive_date'
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'spb_no'
        Footers = <>
        Title.Caption = 'No. SP'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sj_no'
        Footers = <>
        Title.Caption = 'Surat Jalan'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Nama Supplier'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'faktur_no'
        Footers = <>
        Title.Caption = 'No. Faktur'
        Width = 0
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'faktur_date'
        Footers = <>
        Title.Caption = 'Tanggal Faktur'
        Width = 0
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pic'
        Footers = <>
        Title.Caption = 'PIC'
        Visible = False
        Width = 152
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'remark'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
        Title.Caption = 'Status'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_year'
        Footers = <>
        Title.Caption = 'Tahun'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_month'
        Footers = <>
        Title.Caption = 'Bulan'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_day'
        Footers = <>
        Title.Caption = 'Tanggal'
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 776
        Height = 118
        Align = alClient
        DataSource = DsTerimaDet
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'item_code'
            Footers = <>
            Title.Caption = 'Kode Barang'
            Width = 68
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'item_name'
            Footers = <>
            Title.Caption = 'Nama Barang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'stock_code'
            Footers = <>
            Title.Caption = 'No. Kedatangan'
            Width = 183
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'qty'
            Footers = <>
            Title.Caption = 'Karung/Botol|Quantity'
            Visible = False
            Width = 70
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit'
            Footers = <>
            Title.Caption = 'Karung/Botol|Satuan'
            Visible = False
            Width = 70
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qty_po'
            Footers = <>
            Title.Caption = 'PO|Kuantum'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit_po'
            Footers = <>
            Title.Caption = 'PO|Satuan'
            Width = 60
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'qty'
            Footers = <>
            Title.Caption = 'Terima|Berat(@)'
            Visible = False
            Width = 60
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qty'
            Footers = <>
            Title.Caption = 'Terima|Kuantum'
            Width = 98
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit'
            Footers = <>
            Title.Caption = 'Terima|Satuan'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'qty_difference'
            Footers = <>
            Title.Caption = 'Terima|Selisih'
            Width = 105
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'price'
            Footers = <>
            Title.Caption = 'Harga'
            Width = 80
            WordWrap = False
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'subtotal'
            Footers = <>
            Title.Caption = 'Sub Total'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ppn'
            Footers = <>
            Title.Caption = 'PPn|%'
            Visible = False
            Width = 30
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'ppn_rp'
            Footers = <>
            Title.Caption = 'PPn|Nominal'
            Visible = False
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pph'
            Footers = <>
            Title.Caption = 'PPh|%'
            Visible = False
            Width = 30
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'pph_rp'
            Footers = <>
            Title.Caption = 'PPh|Nominal'
            Visible = False
            Width = 80
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'grandtotal'
            Footers = <>
            Title.Caption = 'Grand Total'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'wh_name'
            Footer.FieldName = 'gudang'
            Footers = <>
            Title.Caption = 'Gudang'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'account_code'
            Footers = <>
            Title.Caption = 'Kode Akun'
            Visible = False
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'item_stock_code'
            Footers = <>
            Width = 0
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Qterima_material: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select (case WHEN a."approval_status"=0 THEN '#39'PENGAJUAN'#39' WHEN a.' +
        '"approval_status"=1 THEN '#39'APPROVE'#39' else '#39'REJECT'#39' END) AS status_' +
        'app,a.*, b.supplier_name,'
      
        ' c.account_name, d.account_name as nm_perk,to_char(receive_date,' +
        #39'dd'#39') tgl,to_char(receive_date,'#39'mm'#39') bln from purchase.t_item_re' +
        'ceive a Left join t_supplier b on a.supplier_code=b.supplier_cod' +
        'e'
      'left join t_ak_account c on a.account_code=c.code'
      'left join t_ak_account d on a.account_um_code=d.code'
      'order by a.id desc')
    Left = 312
    Top = 24
  end
  object Memterima_material: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 312
    Top = 80
  end
  object Dsterima_material: TDataSource
    DataSet = Memterima_material
    Left = 384
    Top = 24
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = Qterima_material
    Left = 384
    Top = 88
  end
  object QTerimaDet: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT'
      #9'a.item_stock_code, '
      #9'a.stock_code, '
      #9'a.qty, '
      #9'a.unit, '
      #9'a.wh_code, '
      #9'a.trans_year, '
      #9'a.qty_difference, '
      #9'a.unit_po, '
      #9'a.qty_po, '
      #9'a.notes, '
      #9'a.receive_no, '
      #9'a.po_no,'
      '        b.item_code, '
      #9'b.item_name, '
      #9'a.pph_rp, '
      #9'a.ppn_rp, '
      #9'a.grandtotal, '
      #9'a.subtotal, '
      #9'a.price, '
      #9'a.ppn, '
      
        #9'a.pph ,a.account_code,a.ppn_pembulatan,a.account_pph_code,a.dut' +
        'y_account_code,a.import_duty,a.order_no,a.subtotalrp,a.pemb_dpp,' +
        'c.wh_name'
      ''
      'FROM'
      #9'purchase.t_item_receive_det AS "a"'
      
        #9'INNER JOIN warehouse.t_item_stock AS b ON a.item_stock_code = b' +
        '.item_stock_code'
      '        INNER JOIN t_wh'#9'c on a.wh_code=c.wh_code'
      'ORDER BY a.id desc')
    MasterSource = Dsterima_material
    MasterFields = 'receive_no'
    DetailFields = 'receive_no'
    Left = 504
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'receive_no'
        Value = nil
      end>
  end
  object DsTerimaDet: TDataSource
    DataSet = QTerimaDet
    Left = 504
    Top = 80
  end
  object QReportLPB: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.no_terima,a.no_urut,a.tgl_terima,a.nopo,a.pic,a.ket,a.n' +
        'ospb,a.nosj,a.nofaktur, a.bea_masuk,'
      
        '           '#9'a.tgl_faktur,a.jatuh_tempo,a.kd_supplier,a.kd_akun,a' +
        '.jenis_pembelian,a.jmlh_hutang, '
      
        #9'        a.jmlh_bayar,a.sisa_hutang,a.status,a.valas,a.nilai_val' +
        'as,a.tgl_update,a.pic_update,          '
      
        'a.no_pib,'#9'a.status_koreksi,a.stat_rencana,a.status_approval,a.ap' +
        'proval,a.kd_sbu, a.bulan,          '
      
        ' a.thn,C.nokendaraan,C.driver,D.nm_supplier,F.nm_material,e.kd_m' +
        'aterial_stok,e.satuan,e.qty,e.ppn_rp,e.pph_rp,e.ppn_pembulatan,e' +
        '.subtotalrp,e.grandtotal,'
      'e.subtotal,e.harga,g.ttd'
      
        ' from        t_terima_material A Left join t_spb C on A.nospb=C.' +
        'nospb inner join'
      
        '             t_terima_material_det E on A.no_terima=E.no_terima ' +
        'inner join t_supplier D '
      
        '             on A.kd_Supplier=D.kd_supplier inner join t_materia' +
        'l_stok F on'
      
        '             E.kd_material_stok=F.kd_material_stok left JOIN t_u' +
        'ser g on a.pic=g.nama '
      '-- where a.no_terima='#39'014/IV/21/PMA'#39
      '-- where a.no_terima='#39'472/VI/21/MLB'#39
      'order by e.id asc')
    Left = 592
    Top = 82
  end
  object DbLPB: TfrxDBDataset
    UserName = 'DbLPB'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_terima=no_terima'
      'no_urut=no_urut'
      'tgl_terima=tgl_terima'
      'nopo=nopo'
      'pic=pic'
      'ket=ket'
      'nospb=nospb'
      'nosj=nosj'
      'nofaktur=nofaktur'
      'bea_masuk=bea_masuk'
      'tgl_faktur=tgl_faktur'
      'jatuh_tempo=jatuh_tempo'
      'kd_supplier=kd_supplier'
      'kd_akun=kd_akun'
      'jenis_pembelian=jenis_pembelian'
      'jmlh_hutang=jmlh_hutang'
      'jmlh_bayar=jmlh_bayar'
      'sisa_hutang=sisa_hutang'
      'status=status'
      'valas=valas'
      'nilai_valas=nilai_valas'
      'tgl_update=tgl_update'
      'pic_update=pic_update'
      'no_pib=no_pib'
      'status_koreksi=status_koreksi'
      'stat_rencana=stat_rencana'
      'status_approval=status_approval'
      'approval=approval'
      'kd_sbu=kd_sbu'
      'bulan=bulan'
      'thn=thn'
      'nokendaraan=nokendaraan'
      'driver=driver'
      'nm_supplier=nm_supplier'
      'nm_material=nm_material'
      'kd_material_stok=kd_material_stok'
      'satuan=satuan'
      'qty=qty'
      'ppn_rp=ppn_rp'
      'pph_rp=pph_rp'
      'ppn_pembulatan=ppn_pembulatan'
      'subtotalrp=subtotalrp'
      'grandtotal=grandtotal'
      'subtotal=subtotal'
      'harga=harga'
      'ttd=ttd')
    DataSet = QReportLPB
    BCDToCurrency = False
    DataSetOptions = []
    Left = 696
    Top = 34
  end
  object RptLPB: TfrxReport
    Version = '2022.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44148.666552905100000000
    ReportOptions.LastChange = 45069.926116319450000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 704
    Top = 98
    Datasets = <
      item
        DataSet = DbLPB
        DataSetName = 'DbLPB'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 140.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 15.118120000000000000
        Top = 279.685220000000000000
        Visible = False
        Width = 740.787880000000000000
        DataSet = DbLPB
        DataSetName = 'DbLPB'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 362.834880000000000000
          Width = 176.653680000000000000
          Height = 15.118120000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."tgl_terima"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 317.480520000000000000
        Width = 740.787880000000000000
        DataSet = DbLPB
        DataSetName = 'DbLPB'
        RowCount = 0
        Stretched = True
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 36.283464570000000000
          Width = 170.078740157480000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataField = 'nm_material'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          Memo.UTF8W = (
            '[DbLPB."nm_material"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 205.984251968504000000
          Width = 53.291338580000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataField = 'satuan'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[DbLPB."satuan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 411.590551181102000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."grandtotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 506.913385830000000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'subtotalrp'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."subtotalrp"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 36.283464570000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 327.666666660000000000
          Width = 83.149606300000000000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."harga"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 260.086614170000000000
          Width = 68.031496060000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 601.110236220000000000
          Width = 75.968503937007900000
          Height = 18.897637795275600000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[<DbLPB."ppn_rp">+<DbLPB."ppn_pembulatan">]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 678.205166230000000000
          Width = 63.118098030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."pph_rp"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter2: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 100.677180000000000000
        Top = 438.425480000000000000
        Width = 740.787880000000000000
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 36.000000000000000000
          Top = 12.330550000000100000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibukukan')
          ParentFont = False
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 199.000000000000000000
          Top = 12.330550000000100000
          Width = 102.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat')
          ParentFont = False
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 36.000000000000000000
          Top = 77.330550000000200000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Akuntansi')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 199.000000000000000000
          Top = 77.330550000000200000
          Width = 103.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Adm. Pembelian')
          ParentFont = False
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 12.330550000000100000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui')
          ParentFont = False
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 580.000000000000000000
          Top = 12.330550000000100000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diterima')
          ParentFont = False
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 405.000000000000000000
          Top = 77.330550000000200000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'OP / Non OP')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          AllowVectorExport = True
          Left = 580.000000000000000000
          Top = 77.330550000000200000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPP')
          ParentFont = False
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 0.078539999999975400
          Width = 741.000000000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object gmr_p3: TfrxPictureView
          AllowVectorExport = True
          Left = 574.488560000000000000
          Top = 28.456710000000000000
          Width = 109.606370000000000000
          Height = 52.913420000000000000
          Center = True
          DataField = 'ttd'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Frame.Typ = []
          HightQuality = True
          Transparent = True
          TransparentColor = clCream
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 200.559047800000000000
        Top = 18.897650000000000000
        Width = 740.787880000000000000
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 465.333333330000000000
          Top = 18.559060000000000000
          Width = 59.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nomor')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 465.333333330000000000
          Top = 39.661410000000000000
          Width = 59.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 465.333333330000000000
          Top = 61.661410000000000000
          Width = 59.488250000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. PO')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 527.333333330000000000
          Top = 19.661410000000000000
          Width = 6.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 527.333333330000000000
          Top = 40.763760000000000000
          Width = 6.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 527.333333330000000000
          Top = 62.763760000000000000
          Width = 6.574830000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 544.333333330000000000
          Top = 19.661410000000000000
          Width = 176.653680000000000000
          Height = 18.897650000000000000
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 544.333333330000000000
          Top = 40.763760000000000000
          Width = 176.653680000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."tgl_terima"]')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 544.333333330000000000
          Top = 62.763760000000000000
          Width = 176.653680000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."nopo"]')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 154.000000000000000000
          Top = 65.661410000000000000
          Width = 308.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'LAPORAN PENERIMAAN BARANG')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 24.000000000000000000
          Top = 89.661410000000000000
          Width = 59.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Supplier')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 24.000000000000000000
          Top = 110.763760000000000000
          Width = 59.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Via')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 24.000000000000000000
          Top = 132.763760000000000000
          Width = 114.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nomor Surat Jalan ')
          ParentFont = False
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 140.000000000000000000
          Top = 90.763760000000000000
          Width = 6.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 140.000000000000000000
          Top = 111.866110000000000000
          Width = 6.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 140.000000000000000000
          Top = 133.866110000000000000
          Width = 6.574830000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 90.763760000000000000
          Width = 310.417440000000000000
          Height = 18.897650000000000000
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."nm_supplier"]')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 110.866110000000000000
          Width = 310.417440000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."nokendaraan"]')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 153.000000000000000000
          Top = 133.866110000000000000
          Width = 310.417440000000000000
          Height = 18.897650000000000000
          DataField = 'Nosj'
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[DbLPB."Nosj"]')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Top = 162.519685039370000000
          Width = 36.267780000000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 36.283464570000000000
          Top = 162.519685039370000000
          Width = 170.078740160000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 205.984251970000000000
          Top = 162.519685039370000000
          Width = 122.078740160000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Diterima')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 205.984251970000000000
          Top = 181.417322834646000000
          Width = 53.154916670000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 259.999999990000000000
          Top = 181.417322834646000000
          Width = 68.031496060000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kuantum')
          ParentFont = False
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 327.666666670000000000
          Top = 162.519685039370000000
          Width = 272.125972050000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Harga Beli')
          ParentFont = False
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 327.666666660000000000
          Top = 181.417322834646000000
          Width = 83.149606300000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 410.527559060000000000
          Top = 181.417322830000000000
          Width = 95.244094488189000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 506.913385830000000000
          Top = 181.417322834646000000
          Width = 94.488188980000000000
          Height = 18.897637795275600000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'DPP')
          ParentFont = False
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 600.999999990000000000
          Top = 162.519685039370000000
          Width = 75.968503940000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'PPN')
          ParentFont = False
        end
        object MPt: TfrxMemoView
          AllowVectorExport = True
          Left = 163.488250000000000000
          Top = 0.779530000000001000
          Width = 256.488250000000000000
          Height = 38.354360000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'PT MENARA LAUT BERSATU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Logo: TfrxPictureView
          AllowVectorExport = True
          Left = 86.590600000000000000
          Top = 0.779530000000001000
          Width = 56.488250000000000000
          Height = 37.897650000000000000
          Visible = False
          Frame.Typ = []
          Picture.Data = {
            0A544A504547496D61676599380000FFD8FFE000104A46494600010101006000
            600000FFE100B84578696600004D4D002A000000080004011200030000000100
            01000001310002000000260000003E0132000200000014000000648825000400
            000001000000780000000057696E646F77732050686F746F20456469746F7220
            31302E302E31303031312E313633383400323032303A30333A32362031333A34
            313A3331000001000B0002000000260000008A0000000057696E646F77732050
            686F746F20456469746F722031302E302E31303031312E313633383400FFDB00
            4300020101020101020202020202020203050303030303060404030507060707
            0706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C
            0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0CFFC000110800B400FE03012200021101031101FFC4001F0000
            010501010101010100000000000000000102030405060708090A0BFFC400B510
            0002010303020403050504040000017D01020300041105122131410613516107
            227114328191A1082342B1C11552D1F02433627282090A161718191A25262728
            292A3435363738393A434445464748494A535455565758595A63646566676869
            6A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7
            A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2
            E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101
            01010000000000000102030405060708090A0BFFC400B5110002010204040304
            0705040400010277000102031104052131061241510761711322328108144291
            A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738
            393A434445464748494A535455565758595A636465666768696A737475767778
            797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4
            B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9
            EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2803F937
            FDBB3F6A9F885E35FDBDBE2478AA7F187896DF59D3FC53A8DBE9D3DB6A73C4FA
            64115D489143032B031A222A80171D3D6BF60FFE0811FF0005A9D43F6C488FC2
            2F8ABA8C13FC47D2ED5A6D17577DB13F896DA31978E41C06BA8D7E62547EF235
            6623723B37E1DFED75FF00275FF13FFEC6DD57FF004B25ACDFD9EBE356AFFB39
            7C73F0978F342B89ADB55F09EA906A50346C54BF96E0B467D55D772303C15620
            F06BF76CCB23A18EC02A3CA9494572BECEDF93EABF53F20C0E6F5B098D75799B
            4DFBCBBABFE7D8FEC6EBF3EFFE0BE9FF000554F1A7FC136BE1EF80AC3E1FDA69
            2DE26F1EDC5E9FB7EA36E6E62B0B7B4106FD91EE00C8ED708016C80AAFC64823
            EF1F0578C34FF887E0DD23C41A45CADE693AE5943A8595C2FDD9E0950491B8F6
            2AC0FE35F8BDFF00077ACFBBC4DF0122CFDCB5D75BF37D3C7F4AFCAB863094EB
            E694E8D78DE3ADD3F28B7AFCD1FA2F1062A7472FA9568CACF4B35E6D2FC8F5FF
            00F8249FFC1C670FED61F1274BF867F18B4AD27C35E2FD6A44B5D175AD343C7A
            7EAB70785B796376630CCE7685218A3B12B843B437EAAD7F16D6F7125A4F1CB1
            3BC72C4C1D1D0956420E41047420D7F56DFF000490FDB15BF6E4FD82BC0DE36B
            EBB86EFC4915B9D23C41B0FCCBA85B1F2E4671FC2D22F97363B09857B7C65C3D
            4B07CB8AC2AB424ECD744FA5BC9EBE9F33C8E17CF2A62B9B0F887792574FBAF3
            F347D27451457C19F62145145001451450014514500145145001451450014514
            5001451450015F14FF00C15CFF00E0B37E16FF008264F87ACB46B3D3E1F177C4
            CD760FB45868A6E3CA82CA0DDB45CDD30CB2A12182228CC851865402C3EC2F1C
            F8CB4FF875E09D63C43AB4EB6BA56836336A379331C2C30C31B49231F60AA4FE
            15FC89FED8BFB4F6B9FB657ED33E31F895AFB4AB7BE29D464B98ADDE5328B0B7
            076C16CAC71958A20880E0676E71CD7D6F096450CC31129D75FBB86EBBB7B2F4
            EFFF0004F9AE25CE2582A2A345FBF2DBC92DDFF91FAE9FF0476FF82FF7C54FDB
            03F6E3D3FE19FC4AD37C3573A678DE2BB3A5CBA4D935A3E913C16F25CED39763
            242D1C4EB86CB8628776320FEC657F2F7FF06FEBECFF0082BC7C1E3EB3EA63F3
            D2AF057F50955C6981A185C7461878A8A714ECB6BDDAFD10B857195B118494AB
            C9C9A93577DAC9FEA7CA7FF0573FF829AE91FF0004CDFD9C3FB74416FAB78DFC
            4923D8F8674A95B0934C14192E250086F221054B6396678D32BBF72FF359F197
            F6CDF8ABFB407C5593C6BE2CF1EF8A354F121B837305DFDBE48BEC2D9C816E88
            42C0ABD9630A063815F4B7FC1C3BFB4B5F7ED05FF0536F18E9AD7693E89F0E92
            2F0C6991C630B118903DCEEF57FB5493027D1107F0D7C395F7BC299252C260E3
            5A51BCE6AEDF64F65F76FE67C6F11E6D53138A9538BB420EC979ADDFDFB791FD
            717FC138BE2AEB5F1C3F60CF845E2DF11DD35F6BDAEF85AC6E6FEE9861AEA6F2
            543CAD8E3739058E38C935ED55F397FC121BFE5189F037FEC51B2FFD02BE8DAF
            C7B1F151C5548C559293FCD9FA7E0E4E587A727BB8AFC828A28AE43A4FE3DBF6
            BAFF0093AFF89FFF00636EABFF00A592D79E57A1FED75FF275FF0013FF00EC6D
            D57FF4B25AF3CAFE92C3FF000A3E8BF23F08AFFC497AB3FAA6FF0082287C5E5F
            8D7FF04B6F835AAF4974FD0C6852AE7243584AF6793FEF2C0ADF4615F9C9FF00
            07774FBBE237C0E8B3F734DD5DBF396D07F4AFA57FE0D5EF88ABE2BFF8273EB3
            A234BBAE3C2DE30BCB711E79486682DE756FA177947D54D7CBDFF0773DC6EF8C
            FF000622CFDCD17516FCE7847F4AFCAF28A1EC789A54D7494FEE69B5F99FA2E6
            75BDA64119BEAA1F8347E4057EDA7FC1A3DF1B65B9F0DFC60F8713B8F2ACEE6C
            BC4764BDC9955EDEE0FD07956DF99AFC4BAFD34FF8354BC703C3BFF0510F11E9
            12B909E21F04DE431AE719962BAB4941FC1165FCEBEE78AE8AAB95564FA24FEE
            699F23C3959D3CC693EEEDF7AB1FD0C336D0493C0EB5FCD8F88BFE0BEFF1AFE1
            E7FC140FC6DF113C33E2CD5356F03EA5AECCB6FE12D56E9EE349934C8E4D90C4
            911245BC862552648429DE493B812A7F6FBFE0AEDFB411FD997FE09C1F16BC53
            0DEC961A91D0E4D2B4D9A26DB347777845AC4E9FED234C1F23A0427B57F2875F
            1FC0D94D1AF4AB56C441493B455D7CDFE87D3717E65568D4A54A8C9C5AF7B4FB
            97EA7F601FB1EFED5DE16FDB63F677F0DFC48F07CEF2693E208373C12713585C
            29DB35B483FBF1B8652470D80C095209F4CAFC42FF00834B3F6999ECFC73F13B
            E0F5DCB7325AEA1651F8B74C52FF00B9B792174B6BA18FEF48B35A9C8ED01F6A
            FDBDAF90CFB2DFA86367875F0AD57A3D57DDB7C8FA7C9F1FF5CC242BBDDE8FD5
            6FFE614514578E7A6145145001451450014514500155B5AD6AD3C37A35DEA3A8
            5D416561610BDC5CDCCF208E2B78914B3BBB1E155541249E001566BE0BFF0083
            8FFF0068DBEF801FF04CBD76CB4BBD96C752F887A9DB78596489B127912AC935
            CAFF00BAF041244DED2E3B8AECC061258AC4C30F1D399A5FF07E47363712B0F4
            275E5F65367E61FF00C153BFE0E02F897FB4C7C5CBFD17E1278A75DF007C36D1
            6EB6584DA4DC3D8EA3ADB46C7FD266990891518F2B1290BB76EF05BA7EE6FF00
            C13DFF006907FDAE7F627F869F116E27B7B8D47C4BA1C12EA4D02ED8C5F460C5
            74AA3F840B88E518ED8C57F22D5FBF1FF06A2FED0E9E37FD91BC6FF0DEE1A66B
            FF0001EBC35080B1CA0B3BE4255147AACD05C31FFAEABEF5FA3F1764787C3E59
            0961A097B36AEFAB4F4777D5DEC7C270D66F5AB661255E57E74FD2EB5D174D2E
            7D09FF000702FC6A4F82FF00F04AAF89056EDAD750F162DAF872CC29C19CDCCE
            9E747F436C9704FB035FCC1D7EFA7FC1DA3E25169FB1A7C36D237E1EFF00C662
            EC2FF78436372A4FE1E78FCEBF02EBD2E05A2A196F3FF349BFBACBF43878C2B3
            963F93F96297EBFA9F617FC102A4F2FF00E0AE5F070FADDEA03F3D32EC57F50F
            75751D8DACB3CD22450C2A5E47738545032493D8015FCB9FFC105DF67FC15B7E
            0D1F5BFBD1F9E9D742BFA24FF829278E5FE1B7FC13F7E34EB715C1B5B8B2F05E
            ABE44A1B6B472BDAC891907D77B2E3DF15F35C7349D4CCE8D35F6A297DF267BD
            C2353D9E5F566FA49BFBA28FE517E367C429FE2E7C66F1778AEE5DA5B9F13EB5
            79AB4AEDD59A79DE524FE2F5CC51457EAD18A8C5456C8FCE652726E4FA9FD5FF
            00FC121BFE5189F037FEC51B2FFD02BE8DAF9CBFE090DFF28C4F81BFF628D97F
            E815F46D7F3B665FEF757FC52FCD9FB8607FDDA9FF00857E4828A28AE23A8FE3
            DBF6BAFF0093AFF89FFF00636EABFF00A592D79E57A1FED75FF275FF0013FF00
            EC6DD57FF4B25AF3CAFE92C3FF000A3E8BF23F08AFFC497AB3F6A3FE0D10F17E
            62F8E9A03CDC83A35FC5113FF5F91BB01FF7EC1FC2B9EFF83BABC33756DF147E
            09EB2DCD9DEE95AA5921C749229ADDDBF3132FE46BCBFF00E0D4FF001C4BA07F
            C142FC4DA31948B6D7FC1576A63CF0D2C577692237D4279A3FE046BEAFFF0083
            B6BC1E97BFB2CFC2AF1014CC9A678AA6D3D5BD05C59BC847E3F661F957E7B597
            B1E2B8CBF9D7E706BF347DB527ED787251FE57F94AFF00933F066BEE8FF8370B
            577D33FE0ADBF0FA25242DFD8EAF6EFEE3FB3AE241FAA0AF85EBED1FF837AEE7
            ECDFF0574F85073F7CEA89F9E97775F699E2BE5D5D7F725F933E572976C7517F
            DE8FE68FD0AFF83B3BF6836F0DFC01F867F0CADD4799E2BD627D76EE40D82915
            9442348C8EE1DEEB767D6015F8495FB23FF0777E9823F1C7C0BBDDBF34D63ACC
            04FAEC92CDB1FF008FFEB5F9D3FB167EC9EDF1AB5B1AF6B913AF85F4E971B0F0
            751947FCB31FEC0E371EFF007473923E330BC459770F70C7F6AE3E5CB08DDBEF
            295DA518AEB276492F9BB24D9E9F11AA95B349C174B25E964FF53DF7FE0857E2
            FF0010FECA3F1E357F8AC743179A75CF876EB45B059E530ADCCD2CD036FC0049
            8D042D923193800F52BF6CFC53FDBAFE29FC5ABF796F7C5BA9E9B6C5CB25A695
            2B58C1183FC3FBB219C0FF006D98FBD78F59D9C5A759C56F6F1470410208E38E
            350A91A8180A00E00038C0ADDF04F81EF7C75AB0B6B51B5530D2CCC3E4897D4F
            A9F41DFF00335FC27C7DE28E6BC498E9E267274A96D1845B4925B733D1C9F76F
            4BEC91DF8355A14961A949BD765D5B3B2F87BFB617C4EF867AB2DDE99E34D79C
            8E1A0BCBA6BCB77FAC72965CFB819F7AFD0FFD89FF006E4B1FDA8F4C974CD4ED
            62D1BC5F61179B35A29221BC8F3832C3BB9C038DCA492B91C91C8F8BBC1BF0BB
            49F06448D0C0B3DDAF5B894067CE3B7F747D3F5AECFC27E24BAF05F8AB4ED6AC
            5825FE97379D03919C1C1523E8CA4A91DC3115E170BF8838DCA7151E79CA745B
            F7A2DDF4EF1BECD6FD2FB33EBB2FC1E268D9CE7F2DFF001EE7E8E515CFFC2FF8
            8B65F153C1365AD58B7C972B8923272D0483EF467DC1EFDC60F435D057F5961B
            134B114A35E8CB9A3249A6B669EA99EDDC28A2BE7BFF00828D7ED811FECA3F04
            E41A74C9FF0009778903DA6909D4C1C0125C91E918618F5765E08CD7AB9665B5
            F30C5D3C1E195E73765FE6FC92D5F91E56799D61729C055CC71B2E5A74D5DFE8
            9776DD925D5B48F25FF8281FFC1549BE0CEBF79E09F8766CEF3C436B98B51D5A
            4026874D93BC51A7DD7957F88B6550F186390BF03789FF006B1F89DE31D6A5D4
            350F1FF8BE6B999F79D9AACD0C687D11118220F6500570577772DFDD4B3CF249
            34F3397924762CCEC4E4924F524F39A2D2D25BFBA8E0851A59A560A8AA32589E
            D5FD73C3FC1D966518654A9D35295BDE9B49B6FAEAF65D92D17AEA7F9F5C5DE2
            3E77C418D957AD5A5085FDDA7193518AE9A2B5DF793D5BECAC97D15F017FE0A9
            5F167E0A5EDBC779ADCBE31D2233FBCB2D69CCF2303FDD9CFEF548ED96651FDD
            35C97FC1C49FB5B7873F6BFF00D853E1A6B3A0BDC595DE99E2EF2B54D26E789E
            D2492CA7D8D91C3A1F2DF0EBEBC853C54FF0FBE105A7872DE3B9D4123BBD40E1
            B0C37470FB01DC8F5FCBDF63E247C38D1BE2D782EFBC3FAFD945A8699A847B25
            89C72A7B3A9FE1653C861C822BE6F39C8728AD8A862F0B4942A41DF9A3A2977B
            A4ACFD747EAB43ED783F8EF3ECBA8BC2E3EB3AB424ADCB26E528F9C64DDD5BF9
            758DBA27AAFC4BAFD16FF8361FE3DCBF0AFF00E0A451785A5B9F2F4EF88FA15D
            E98D133611AE205FB5C2FF00EF0586541FF5D48EA6BE3DFDAE3F65DD53F659F8
            9AFA55C992EF47BE0D3E957C5702E62079538E92212030F707A30AF7DFF837B3
            C3ABE22FF82BB7C26591774764754BB6F629A55D953FF7DEDAF9ECFE94659757
            8D45B464FEE575F89FBAF0F6323571542BE1DDD4A51B3F26ECFF00E09F747FC1
            DE5AC983C1DF01F4FDDC5D5E6B7718F5F2D2C573FF00917F5AFC46AFD97FF83B
            D3503278A7E02DA67FD45AEBB2E3FDF7D3C7FEC95F8D15E7707C6D9452F3E6FF
            00D299E9F144AF99D4F97FE928FB03FE081DA74BAA7FC15C3E0DC7164B25E5FC
            C7FDD4D36EDDBF4535FB53FF00071878FDFC0FFF00049AF883045298A7F10DDE
            99A5230382435F432BAFE31C4E3E84D7E5E7FC1ACBF0E2DFC65FF0525D4758B8
            5CB7847C1D7DA85B3633B66926B6B5FC3F77712D7DBFFF00075FFC428F42FD85
            BC11E1C57C5D7887C6715C6DCFDE86DECEE4BFFE3F2C35F399E5AB71261E9AFB
            3CBF8372FC8F77296E96455EA3FB5CDF8A513F9FAA28A2BF493E0CFEAFFF00E0
            90DFF28C4F81BFF628D97FE815F46D7CE5FF000486FF0094627C0DFF00B146CB
            FF0040AFA36BF9D332FF007BABFE297E6CFDCB03FEED4FFC2BF24145145711D4
            7F1EDFB5D7FC9D7FC4FF00FB1B755FFD2C96BCF2BD0FF6BAFF0093AFF89FFF00
            636EABFF00A592D79E57F4961FF851F45F91F8457FE24BD59F6DFF00C1BBBE3A
            1E08FF0082B4FC358E493CB835C8B52D3243EA5EC2E1907E322463F1AFD71FF8
            398FE1B47E3BFF0082576BFA9380D2783B5ED33588BD72D31B338FF80DDB57E1
            77FC12C7C46DE15FF8291FC0BBB590C65BC6FA55B16071F2CB751C447D08723F
            1AFE8ABFE0B6DE0797E217FC12ABE3558C40B3DB684353E99C2DA4F15D31FF00
            BE6135F9EF13FEEB3DC2D6EFCBF84B5FC19F6D907EF328C452EDCDFF00A4FF00
            9A3F95AAFB0FFE081575F65FF82B8FC1D24E37DDDFA7E7A6DD8AF8F2BEA6FF00
            82266ABFD8FF00F0555F8293671BF5E307FDFCB7963FFD9ABEE33757C0D65FDC
            97E4CF92CB5DB1949FF7A3F9A3F52FFE0E74FD9BF50F8FD71F00059EF8ADED75
            3D5ED2FAE02E45B432C7692173EF881801DCB015F38F843C2761E05F0C58E8FA
            5DBADB5869D108618D7F8547727B9272493C9249AFA6FF00E0A3FF00B517FC34
            07C647D2F4BB9F37C31E1567B5B428729753640967E0E08246D53FDD5CF1B8D7
            CECA0B1006493C003BD7F9CFE26F1D56CE6B53CB294BFD9F0FCCA296D2936F9A
            6FBFF2C7C936BE267D6E65ECE78CA95A1ADEDF824BF42F786BC3B73E2BD6A0B1
            B55DD34ED8C9CED41DD8FA002BE89F07784AD7C17A1C5656ABF77992423E695B
            BB1FF3C0AC1F839F0F07833431717318FED2BD50D21239897A84F6F53EFF0041
            5D957E375EAF33B2D8FA6CAB01EC61ED26BDE7F82FEB70A28A2B9CF5CF56FD94
            7E389F84FE361677D315D0B57611DC6E3F2DBC9D165FA0E87D8E79DA2BED656D
            C010720F208EF5F9A75F5BFEC61F1D3FE131F0E8F0C6A736753D2631F65763CD
            C5B8E00F764E9FEEE3D09AFDE3C23E31E497F61E2E5A3BBA6DF47BB8FCF75E77
            5D51499EBDE3FF001E695F0C3C15AA78875CBB4B1D2747B76B9BA9DF242228EC
            07249E800E49200E4D7E23FED61FB486A9FB547C6BD53C57A88786098F91A75A
            160C2C6D549F2E2C8EA792CC7BB331F6AFA63FE0AFDFB677FC2C1F171F861E1D
            BC0FA2683307D6A689C15BCBC5E90E47558BB8FF009E99C8CA035F0F57FA39E1
            6708FD430BFDA98A8FEF6AAF753FB30DFEF96FE96F33F8AFC76F10BFB571DFD8
            78195E8507EF35B4EA2D1FAA86CBBCAEF5D1857AFF00C16F87C346B05D56ED3F
            D2EE57F72A473121EFF561FA7D4D717F097C107C5DE21124CA4D95910F2E470E
            7B27E3DFD87BD7B8D7DE6738DB2F6107EBFE47E4391E06EFEB135E9FE6145145
            7CD9F5079D7ED49FB3C69DFB4BFC24BEF0F5E848AF5479FA6DD91936772A0ED6
            E3AA9C9561DD58F7C11E11FF0006E17C38D47C3BFF000577B2D3B55B492D352F
            0BE8DAB9BA85F05A17110808C8C83CC9D41C1CF1C57D795DD7FC1357E06E85A0
            7FC14A1FE2289A2B4D4358F07DE6892C278FB65CF9F69244E38FBC208665249E
            42C607439F9DE2A83FECBAF28AD795FDC7E9DE18E73EC735A382ACFDC9C95AFD
            25DBE7B7ADBB9F387FC1DCB7FE67C70F8356B9FF0053A16A12E3FDEB8887FEC9
            5F9095FAC9FF00076C5D97FDABBE16C19FF55E13964C7FBD7928FF00D96BF26E
            BC8E1456CA68FA3FCD9FAEF11BBE6557D57E48FD81FF0083463C06D7FF0018BE
            33F8A0A9C695A369DA586FFAF99E6948FF00C941FA56F7FC1DE3E2757D4FE056
            8A250648A2D6AF5E307950C6C91588F7DAC3F035E89FF069278496CFF661F8AF
            AF05FDE6A5E28B7B02D8EA2DED15C0FC3ED27F3AF957FE0EB3F1AC9AEFFC1423
            C2DA38909B7D0BC116A36765965BBBC763F8A795F957CC51FDF715CA5FC8BF28
            5BF367D055FDD70E457F33FF00DBAFF923F31A8A28AFD20F843FABFF00F82437
            FCA313E06FFD8A365FFA057D1B5F397FC121BFE5189F037FEC51B2FF00D02BE8
            DAFE74CCBFDEEAFF008A5F9B3F72C0FF00BB53FF000AFC90514515C4751FC7B7
            ED75FF00275FF13FFEC6DD57FF004B25AF3CAF43FDAEBFE4EBFE27FF00D8DBAA
            FF00E964B5E795FD2587FE147D17E47E115FF892F566DFC35F1BDD7C32F88DE1
            FF001259122F3C3DA95BEA5010707CC8655917F5515FD747ED65E1C8FE27FEC8
            1F12F488C79B1788BC1DAA5A28EBBC4D652A0FCC357F1F95FD84FECCDE2587E2
            EFEC9FF0FB5893135BF89FC25A75E3770E93D9C6E7F30F5F9F71FAE4961EBAE8
            DFFEDAD7EA7DAF064B9957A4FAA5FAA3F8F6AFA1BFE09C5F0CB54D6FE385AF8B
            ADA7B8B1B5F08379E9731E559EE194AA22B762012C48E981FDE06BC6F5EF863A
            A68FF162FF00C1B1C0F73ACD96AB2E90225182F3A4A62C73D3E61DFA57E90FC0
            6F84567F043E18E9BA05A8479604F32EE755C1B99D87CEE7F1E067A2AA8ED5F2
            5E3BF880B21C89E0B092FF0068C52718DB78C3EDCBCB47CB1F3775F0B3E57018
            772ABCCFECFE67635E85F01FC01FDBDAB9D56E9336962DFBA047124BD7F25E0F
            D71EF5C5F87341B8F13EB76D616C332DCBED04F451DD8FB01CD7D25E1FD0E0F0
            D68B6D616C0886D9368CF53DC93EE4E4FE35FE77E22AF2AB2EA7DCE4F83F6B53
            DAC97BB1FC59728A28AF3CFAF0A2B93F8DBF1B3C3DFB3E7C38D43C53E27BD167
            A6582F41832DC487EEC51A92373B1E00FA9380091F98DF13BFE0B39F163C4FE2
            8BA9FC38FA4786749321FB35B0B28EEA554EDBE49010CC7B90AA3DABF4BE03F0
            9F8838BA352AE5908C69C1D9CE6DC637FE54D2936EDABB276D2ED5D5FC9CCB3A
            C3605A559B6DF45ABF53F596B9BF8A1F1AAEFE04F87C6B3A55E4967AE963169E
            F1B6D75908C17F70AA4920F07807AD7CE9FF0004C7FDBD355FDACF41D7F49F16
            AD847E24F0E2C771F68B64F292F6D9F20B94E8AC8C00246010EBC0E6AAFC73F8
            98DF133C6F34F13B1D3ACF30D9AF206DCF2F8F563CFD303B57EA9E0EF8159963
            B8F1E599CC2D4B02E352AB4EF196D2A718CB4FE23D7A3E552DA48FCDFC51F112
            964DC3FEDF072FDF57BC69F75FCD2FFB756DFDE71E871F75752DEDCC934D2493
            4D331777762CCEC4E4924F2493DE9D61632EA77B15BC08649A77088A3A924D45
            54FE347C50BAFD987E01DDF8E2DE1824D6AFEE534CD196E10B471BB862D29191
            9C224981D3239C835FEA3633150C351751F4D91FC3994E5B5B31C5C30B4B5727
            FD33E93F05F8562F07787E1B28F0CEBF34AF8FF58E7A9FE83D80AD5AFCAFF0E7
            FC14E7E31687AB7DA6E3C4369AAC45B735B5DE9B6E226F6CC688C07D1857DF9F
            B28FED5DA1FED53E053A8580163ABD8E1351D35E40F25AB1E8C0F1BA36E70D81
            D083820D7C1FD6955936DEACFD5F32E16C5E5B454A69382D2F1BBB7ADD2FBCF5
            4A28A2ACF042ADE83AE5DF8675BB4D46C277B6BDB099678255C6637520A9E7D0
            8EF5528A524A49C64AE99519CA32528BB35B33E4BFF83933E36DAFC77FDA27E1
            56B36E55273E0544BD814E7ECF702FEEC3AFD0E030CF3B594D7E71D7EA2FFC14
            83F663FF0085F1F069F57D32DFCCF12F8515EEAD822664BB8319960F7381BD7A
            9CA600F98D7E5D578943010C1D3587A5F0ABDBD2F7B7C8FDE327E20966F47EB3
            55FEF1594BD52DFE7BFADD743FA3FF00F8361FE199F027FC12EEC7552A41F1A7
            89B52D6013D48468EC87E1FE866BF297FE0E37F1A0F16FFC15A7E20DBA49E647
            A0D9E95A7290720116104AC3F079987D41AFDB4FF8216F84E5F067FC127BE0CD
            A4C9B1EE34A9EFF1EAB7179713A9FC56407F1AFE7ABFE0AC5E2A97C65FF052DF
            8E57B2C9E63278CB51B453FECC13340A3F058C0FC2BF3BE1BFDEE7D8AACFA732
            FF00C9925F823F51CFBF7793E1E92EBCAFFF002577FC59F3DD14515FA41F087F
            57FF00F0486FF94627C0DFFB146CBFF40AFA36BE72FF0082437FCA313E06FF00
            D8A365FF00A057D1B5FCE9997FBDD5FF0014BF367EE581FF0076A7FE15F920A2
            8A2B88EA3F8F6FDAEBFE4EBFE27FFD8DBAAFFE964B5E795E87FB5D7FC9D7FC4F
            FF00B1B755FF00D2C96BCF2BFA4B0FFC28FA2FC8FC22BFF125EAC2BFAAEFF822
            FF008CDFC79FF04B2F8237D2316683C391E9C0E73C5AC8F6C07E508AFE546BFA
            2AFF0082117ED55A5781FF00E089BA66B3A83075F873A86ABA43C60FCD3CEF74
            D750C5EC585E44BEC39AF86F11E70A595AC4D4768C2576FB2E57767D4F07568C
            3173E6765CAFF06BF4B9F9ED7BFB31B7877FE0A31F1E3C5DAA5B18D2CFC73AD5
            BE911BA80097BC959E703D36B0553FED3FA0AF53AD6F1D78D350F88DE32D535E
            D565136A3AC5D497770E0614BBB16200EC067007600559F86FE0E7F1B78AA0B4
            21BECE9FBCB861FC283A8FA9E07E35FE78F1DF17E2388B35A99962348D9460BF
            9611D12F57AB7FDE6CD29504EA38525F137F8B3D23E00781BFB27486D5EE1317
            37C36C208C148BD7FE0479FA01EB5E8B4D8615B7852345089180AAAA30140E80
            53ABF3B9CDC9DD9F7F86A11A349538F40A8354D52DF43D32E6F6F278ADAD2CE2
            69E79A560A912282CCCC4F00000927DAA7AFCF6FF82C67EDAA6CE06F84BE1ABC
            FDECCAB2F88E789BEEA9C347699EC4F0EFEDB57BB0AFB0E02E0BC6714E734B29
            C269CDACE5D2105F149FE4975934BA9CF99E610C1E1E55E7D365DDF45FD743E6
            EFF8288FEDAF77FB5CFC5878F4F9A787C17A03B43A4DB12545C1CE1AE9D7FBEF
            D81FBAB81D4B13F3CD1457FA91C3F90E0B25CBA965797C396953564BF36DF56D
            EADF56DB3F1EC5626A622ACAB55776CFA63FE09A9AADEE81E2BF19DCDA9644BC
            D2134D99C7659265723EA44247D09AFA72BC1BF602F0ABE95F0CF53D564041D5
            AF76C7FED4712E01FF00BE99C7E15EF35FAAF0EE5B430D8775A9C129D57CD27D
            5B49455FD22925FF00059FCAFE2466B53199DD4A6E57852B422BA2B6B2FF00C9
            9BBFFC0367C05E1293C67E2386D06E10AFCF3B8FE041D7F13D07D6B99FF82B67
            868CFF00B2CE9925B47B21D235CB6919546152330CF18FFC79D457D03F09FC19
            FF00088F8695A55C5EDE6249BD57FBABF803F9935C9FEDB5F0E8FC51FD967C67
            A6292278AC1AFE1C0C92F6E44E147FBDE5EDFF008157979CE2FDBC9C63B2DBFC
            CEEE0FA4B0589A35A7BB92BF927A7E4CFC83AEC7E03FC6FD6BF67BF89761E25D
            125227B56DB3C04E23BC8491BE17FF006580EBD41C11C815C7515F309D9DD1FD
            1D56942AC1D3A8AE9E8D1FB53F073E2DE91F1C7E1CE99E26D126F36C7528B76D
            3C3DBC838789C76656C83D8E32320827A7AFCBAFF82767ED68DFB3DFC4C1A2EA
            F7057C25E259563B92ED84B09FEEA5C74E07457E9F2E09CEC02BF5141CF3D735
            E9D2A9CF1B9F87F1064F2CBB14E9EF07AC5F976F55D7EFEA1451456878604641
            079CD7E597FC1463F668FF008507F1B25BFD3ADFCAF0DF8A8BDED96C50B1DB4B
            9CCD0003A052C194600DAE00CED35FA9B5E6BFB59FECFB6FFB4AFC15D4FC3AE6
            38B515C5D6993BF020B94076127070AC0946C0FBAC7BE2B2AD0E689F41C379BB
            C06314A4FDC9692F4EFF002FCAE7EB97EC41E104F867FB147C24D0D8088689E0
            BD22D64CF1868ECA25627DF20935FC98FC75F88F27C62F8DDE32F174A58CBE29
            D72F7577DDD737170F29CFFDF75FD6FF00C5DF13D97C32FD93FC51AD59CE8FA7
            787BC25777B04C87E568A1B3775607D36A835FC7B57E4BC05172A989AF25AB6B
            FF006E6FF43FAA78C66953C3D28BD127FA241451457E8E7C31FD5FFF00C121BF
            E5189F037FEC51B2FF00D02BE8DAF9CBFE090DFF0028C4F81BFF00628D97FE81
            5F46D7F3A665FEF757FC52FCD9FB9607FDDA9FF857E4828A28AE23A8FE3DBF6B
            AFF93AFF0089FF00F636EABFFA592D79E57A1FED75FF00275FF13FFEC6DD57FF
            004B25AF3CAFE92C3FF0A3E8BF23F08AFF00C497AB0AFD1DFF0082796ABE24F0
            9FEC5B0785AF5D60D0F58F11DC78A2080643C8D25B416CAEF9FF006602571DA4
            C9CE463E1DFD9BBE0F4BF1C7E2E699A161C5916FB45FBA9C18EDD08DE41EC4E4
            283EAC2BF4D2C6CA2D32CA1B6B78D6282DD1628E3518545518000F40057F2E7D
            25B8DE387C1D3E1AC33F7EADA753CA09FBABD652577E51ED23D2CAE9CAEEA7C8
            96BDEFE0AF82BFE114F0AACF32917BA862593230517F857F2E7EA6BCBFE10783
            3FE130F16C4254DF676789A7C8CAB60FCA87EA7B7A035F408E38F4AFE21C554F
            B08FBCC8F09BE225E8BF57FA7DE1451516A1A841A4D84F75753476F6D6D1B4B2
            CB230548D14659893C0000249AE349B764B53E95B3C93F6DFF00DAAACBF648F8
            197FE206304FADDDFF00A1E8D672722E2E581C33282098D0659B047000C82C2B
            F12FC45E21BEF16EBF7BAAEA77535F6A3A8CEF7373712B6E92691D8B3331EE49
            24D7B3FF00C140FF006B49FF006B5F8F177A95BC922F86745DD63A24249C7921
            BE69C82061A52371C8C81B179DB9AF0CAFF4A3C0FF000DD70B648AAE2A36C562
            2D2A9DE2BECD3FFB753BCBFBCDEE923F27E22CDBEB988E583F723A2F3EEFE7D3
            C829638DA591514333B1C0006493E9495E8BFB2AF803FE1617C6BD261911DED3
            4E6FB7DC63A058C82A0FB17D80FB1AFDC6852756A469C776EC7C9E638E860F0B
            531557E1845B7F25B7CF63ECBF841E094F875F0CF44D1953CB7B3B55130CE732
            B7CD21FC5CB1AF54F833E0FF00F8493C4A2E665DD6BA7E246CF477FE11F98CFE
            1EF5C78058803249AFA07E1E78587847C2D6F6A462761E6CE7AE5CF5FCB81F85
            7E819957586C3AA70D1BD17A1FC978084F1B8C9622B6BAB93F36DDFF00336E9B
            344B7113C722ABA480AB2B0C8607A823D29D457C89F6173F187F685F86137C1A
            F8D9E26F0CCB1B46BA5DFC8900273BA063BE16FC63643F8D71B5F667FC1607E0
            F9D1FC75E1FF001B5ADB9106B301D3AFA451C79F173196F768C903DA1AF8CEBC
            BA91E59347EFB9363BEB782A75FAB5AFAAD1FE215FA45FF04C0FDAB47C54F007
            FC211AD5C96F10F86611F6492461BAF6CC1C2F7C968B853C7DD28793B8D7E6ED
            743F0A3E276ABF06FE21E95E25D1A630EA1A4CE264E485957A346D8EA8CA4A91
            DC13452A9C92B98E7B94C730C2BA2FE25AC5F67FE4F667ED7D15CBFC18F8B1A6
            7C70F865A478A34872D67AAC21F61FBD0480ED78DBFDA56054FAE323822BA8AF
            52F7D51F85D5A72A73709AB34ECD798514514107A67C6DFDAC5F47FF008243FC
            77F0EDECE7FB4747F0A5C58D931CEE96D6F596D0AE7D51AE31FEEBA81D0D7F3C
            75FB53F1ABE18DB7C67F84FAFF00856F25921835BB4680C884831B82191B8EA1
            5D55B1D0E315F8D3E34F085FFC3FF176A7A1EA90F91A8E917325A5CC79C85746
            2A707B8C8E0F715F3F4F2BA784AB56A52DAA4B99F93B2BFDEF5F99FB6F0C712D
            4CC7034F095DDE74172AF38DF47F25EEFC9773328A28AE83E8CFEAFF00FE090D
            FF0028C4F81BFF00628D97FE815F46D7CE5FF0486FF94627C0DFFB146CBFF40A
            FA36BF9D332FF7BABFE297E6CFDCB03FEED4FF00C2BF24145145711D47F1EDFB
            5D7FC9D7FC4FFF00B1B755FF00D2C96BCF2BD0FF006BAFF93AFF0089FF00F636
            EABFFA592D79EA2191C28E598E057F4961DFEEA3E8BF23F08AFF00C497AB3EED
            FF0082757C235F067C2493C4771132EA3E267DEA5860A5B212A807A6E3B9BDC1
            5F4AFA1864F1D49ACAF0378623F04F82B48D1A23BA3D2ACE1B453FDE088173F8
            E2BD0FE0BF83FF00E12BF18C4F2AEEB5B0C4F2E7A3107E55FC4F3F406BFCAFE3
            7E23A99D6778ACDAABBFB49B6BCA2B482F945247D5E0B0CDF25186EFFA67AB7C
            22F067FC21DE1189655C5E5E6269F8C1048E17F01FAE6BA8A28AF83949B7767E
            89469469C1538EC82BE1AFF82C8FED7C7C05E088BE1868575B757F11C426D624
            8D886B5B2CFCB1641E1A520E47F7010461C1AFACBF682F8DDA4FECEBF0875BF1
            7EB2D9B5D2202F1C21C2BDDCC788E15CFF0013B103DB24F406BF0CFE2BFC4DD5
            BE337C47D67C53AE4E6E355D72E5AE676E8AB9E1514765550140EC140AFE91FA
            39F873FDB39B3CF71B1BE1F0CD72A7B4AAEE97A43493F3E55AA6CF98E2ACD7EA
            F47EAD4DFBD3DFC97FC1DBEF39EA28A2BFD013F320AFAF7F606F8457DA27C2CB
            CF1BDCD9DC4767E20BF974BB2B975C472FD992379421EE41B88F3F41EF5F212A
            976000249E001DEBFA2EF1A7FC13E65F843FF045AF873E1B4B02BE27F86FA645
            AF6A11C2819BCEB9CCBA8293DD51A6662DE96E3B5451CEE8E5F9861635BFE5E4
            F97D2E9ABFDED27E4CF0F8B321C4669C3F8D5866EF4E1CF65D795A935F38A6D5
            B76923E30F839E1D1AFF008D6067198AC47DA1B8E09046D1FF007D107F035EE3
            5E7FFB3D69BE4F87AFAECFDEB89C47F82AE7F9B1AF40AFAFCDEB39E21AE91D0F
            E76C9A8AA7864FACB50A28A7DB5BC979711C3123CB2CAC11114659989C000772
            4D796D9EB2BBD112FED35FB0B27ED27FF04B8F8C3E257B19AE35BF0CC0BABF87
            CA83B95ACBF7D745547DE2F019231EF9C735F84F5FD8CFC1AF84F6BF0EBE0969
            1E159A1596386C7C9BC463B96592405A6FA82ECFF8715FC9BFEDB5FB3C4BFB26
            FED6FF00113E1CC8D3CB1F84B5CB9B2B59665DB25C5AEFDD6F291D8BC2D1BF1C
            7CD5F9DE41C41FDA18DC4C1BBAE6BC7FC3F0FE89FAB67F50CB86565194E129DA
            D2E5F7FF00C6FDE7F9B5E891E5D451457D61E69F53FF00C12FFF006A3FF854BF
            12DBC1BABDC6CD03C5732AC0EE405B3BDC6D46C93C2C80043EE23E801AFD29AF
            C308E468A45756657539041C107D6BF56BF601FDA707ED1BF05A15D42E04BE27
            F0F04B3D4C31CBCFC7EEEE0FFD7400E7FDA56ED8AEDC354FB0CFCCF8DF26E592
            CC292D1E92F5E8FE7B3F9773DD68A28AEB3F3B0AFCFCFF0082BCFC0B5D07C63A
            378FACA165875C1FD9FA89550145C46B989C9FEF3C6187FDB11EB5FA075E11FF
            000527F08AF8B3F63FF13B6D0D3694D6F7F113FC252640C7FEFDB3FE759578DE
            0CF7B86B1B2C36634A49E927CAFD1E9F9D9FC8FCA6A28A2BCC3F723FABFF00F8
            2437FCA313E06FFD8A365FFA057D1B5F397FC121BFE5189F037FEC51B2FF00D0
            2BE8DAFE74CCBFDEEAFF008A5F9B3F72C0FF00BB53FF000AFC90514515C4751F
            C7B7ED75FF00275FF13FFEC6DD57FF004B25AF3E865304C8E3928C187E06BD07
            F6BAFF0093AFF89FFF00636EABFF00A592D79E57F4950D68C53ECBF23F08AFFC
            497ABFCCFD67F0E6BD078A7C3D61A9DAB6FB6D46DE3B984FAA3A861FA1AFA23E
            07F864787FC0D04CC0F9FA89FB43E47214F0A3E9B79FF811AFCEDFF827E7ED21
            6BE29F075BF82755BA11EB3A4A95B0F30E3ED96E324229EED18C8C7F74023383
            8FD3DD3635874EB744FB891A85C74C6062BFCA9E3FE18C570EE6F5B2AC4C5AE5
            93E56FED42FEEC93EA9AFB9DD3D533F44E1A71ACDD6ECBF164D4515F367FC146
            FF006E3D3FF656F86373A5699771CBE3CD7ADDA3D3ADD0866B146CA9BA9067E5
            0BF36CCFDE703820311E1F0E70F63B3CCC6965797439AA54765D92EB27DA296A
            DF447D3E2B154F0F4A55AABB25FD7DE7C77FF057FF00DAE8FC5FF8B2BE01D16E
            CBF873C1D330BB31B1D979A872AE4FA8881283FDA32750457C6D4E9E792E6679
            6577924918B333125989392493D49A6D7FAA7C1FC2F84E1DC9E8651835EED356
            6FACA4F5949F9C9DDF96CB448FC6F1F8C9E2ABCABD4DDFE0BA2F90514515F4A7
            19F47FFC123FF6665FDAD7FE0A21F0C3C237562350D197564D575889D4989ECA
            D01B89524F4571188FDCC807535FD5A6B1A3DB788347BAD3EF614B9B3BE85EDE
            785C65658DD4AB29F620915F8A9FF0695FECCA979AFF00C4FF008C37B0CFBAC6
            28BC25A549FF002C99A42B7377F575096807A091BD6BF6D2BF1BE38C7BAB98AA
            507A53497CDEAFF4FB8FD4784F04A181739AFE237F76D6FCFEF3F253C73FB3F6
            A3FB317C49F11F842F1247B2B4BE6B8D2EE4838BBB490068DB240CB01F2B6380
            EAC3B66B3ABF4C3F69BFD99F4CFDA3BC271DBCF20B1D62C32D617C13718C9EA8
            E3F891B0323A82011DC1F8C7C43FB06FC50D06FDE14F0FAEA31A9F967B4BB85A
            37F70199587E2A2BF4CC8B8D30B8FA0A58BA8A155692BB4AEFBABE9AEED747E5
            63F9AB8BFC32CC32AC64A39751954C3C9B71714E4E29BF85A576B9764F66ADAD
            EE978ED7BD7EC03F035FE277C5C8B5BBC80BE8DE1765B962C08596E7AC480F72
            A46F23FD900FDEA8BE1EFF00C13D7E21F8B357863D56CA0F0F58171E6DC5CCF1
            C8E173CED8D18966C7407683EA2BEE2F849F0A749F82FE05B3D03468992DAD41
            6791F064B890FDE91C8EAC7F400018000AF338BB8BF0D4B092C360AA29D49AB5
            E2EEA29EEEEB4BF45DB73DBF0E7C39C762330863B33A2E9D2A6F9AD24D39496C
            ACF5B27AB6D59EDADDDBA5AFC09FF83ACFF66493C03FB58783BE28DAC502E9FF
            00107473A7DD945C486FAC4852EFDBE6B796DD57BFEE5BD057EFB57C25FF0007
            17FECCB27ED11FF04CFF0012EA36362D7BAD7C39BB87C516BB07EF1618B31DD9
            CFF756DA596423BF940F502BF34E16C77D5732A726F497BAFE7A7E7667F45711
            613EB180A914B55EF2F97FC0BA3F9A0A28A2BF763F1E0AF4EFD917F687BAFD9A
            7E3569DAF2B48FA5CC7EC9AA40B93E75B311B881DD9480EBEEB8E84D798D14D4
            9A7746388A10AF4A546AABC64ACCFDC8D2356B6D7B4AB5BEB3992E6D2F6249E0
            950E5654650CAC0FA1041AB15F11FF00C12E7F6C2B4974187E1A7892F560BCB6
            73FD8334C4059D18E4DB6E3FC6189280F504A8C6D00FDB95EA426A4AE8FC1F36
            CB6A607132C3D4E9B3EEBA3FEBAE815E29FF000510F1445E16FD8FFC60F230DF
            7D0C56512F77692645207D1771FF0080D7B5E6BF39BFE0A85FB5A59FC58F115A
            7823C3B76977A2E83319EFAE6270D15DDD80542A91D563058641C1673FDD04CD
            69A8C19D9C3780A98AC7D3515A45A937D9277FC763E48A28A2BCC3F723FABFFF
            0082437FCA313E06FF00D8A365FF00A057D1B5F397FC121BFE5189F037FEC51B
            2FFD02BE8DAFE74CCBFDEEAFF8A5F9B3F72C0FFBB53FF0AFC90514515C4751FC
            7B7ED75FF275FF0013FF00EC6DD57FF4B25AF3CAF45FDAFE3687F6B4F8A28DC3
            278BB5607EBF6C96BCEABFA4B0FF00C28FA2FC8FC22BFF00125EAC92D2EE6B0B
            A8E78259219E160F1C91B1574607208239041EF5F527C26FF82C1FC5DF863E1C
            834BBA9742F14436AA1229B55B573708806029789D377D5816F7AF95E8AF1788
            385327CF29C6966F8685651DB9926D7A3DD5FAD9AB9AE1B1B5F0F272A13716FB
            1F5B7C42FF0082CEFC5EF19E872D969E9E1AF0CBCBC1BAD3ECDDEE14770A6677
            519F5DB91D88AF95FC4DE28D4BC69AF5D6ABABDFDE6A9A95F4865B8BABA95A59
            A663D4B331249AA34567C3FC1F92645194728C2C28F36EE31577E4E5BB5E4DD8
            78AC7E23136F6F372B770A28A2BE90E40A28AF63FF00827CFECDD3FED73FB6A7
            C36F87B1402E2DFC41ADC035052DB42D8C47CEBB6CFA8B78E52077200EF59D6A
            D1A54E5567B4536FD11A52A72A9354E3BB692F99FD207FC1153F6663FB2B7FC1
            35BE19E857010EABAD69FF00F0926A4C23D8DE7DF1FB40461FDE8E278A227BF9
            5E95F54D360812DA148A3458E38D42AAA8C2A80300003A014EAFE73C5E2655EB
            4EBCF7936FEF67EE587A31A34A34A3B4525F70514515CE6C145145001595E3CF
            0569DF12BC0FACF87358805D693AFD8CFA75EC24E04D04D1B4722FE2AC456AD1
            4D49A7740D26ACCFE38FF683F8417FFB3EFC76F19781753120BEF086B577A44A
            5D0A990C133461C0F460A181E8430238AE3EBF49FF00E0E87FD9B3FE151FFC14
            02CFC6F6CAFF00D9FF00143458AF5C95DAAB796A16DA6418EA3CA5B6727AE653
            ED5F9B15FD1195E3562F094F10BED257F5EBF8DCFC4331C2BC3626743F95BFBB
            A7E0145145779C42A3B46EACA4AB29C820E083EB5EEDF0C3FE0A43F15FE18E9F
            1D9AEB906BB690A048E2D5EDC5C3201FF4D01590FF00C098D7845154A4D6CCE6
            C560E86263C95E0A4BCD5CF67F8B9FB7EFC51F8C9A6DC585FEBFFD9FA65D218E
            5B3D3215B68E453D54B0CC8411C105C823B578C514512937BB1E1B09470F1E4A
            10515E4AC14514549D07F57FFF000486FF0094627C0DFF00B146CBFF0040AFA3
            6BE73FF8244A18FF00E098DF0301EA7C21627F38C1AFA32BF9D332FF007BABFE
            297E6CFDCB03FEED4FFC2BF24145145711D47F2C1FB6A7EC0BF1C35BFDB23E2D
            5EE97F067E2B6A3A65E78CF589ACEEED7C25A84D05D42D7D3149237588ABA329
            043024104115E67FF0EF2F8FFF00F4437E30FF00E119A97FF19AFEBAE8AFD029
            F1FD784143D92D15B767C5D4E0CA339B97B47ABBEC8FE453FE1DE5F1FF00FE88
            6FC61FFC23352FFE3347FC3BCBE3FF00FD10DF8C3FF8466A5FFC66BFAEBA2B4F
            F888788FF9F2BEF64FFA9347FE7EBFB91FC8A7FC3BCBE3FF00FD10DF8C3FF846
            6A5FFC6693FE1DEBF1FBFE8877C60FFC23751FFE335FD765147FC443C47FCF95
            F7B17FA9347FE7EBFB91FC89FF00C3BD7E3F7FD10EF8C1FF00846EA3FF00C668
            FF00877AFC7EFF00A21DF183FF0008DD47FF008CD7F5D9451FF110F11FF3E57D
            EC3FD49A3FF3F5FDC8FE44FF00E1DEBF1FBFE8877C60FF00C23751FF00E335FA
            65FF0006C97FC13DBC69F0F3F69CF1A7C47F88BE02F15784DFC33A3269DA20D7
            F47B8D3DA5B8BB73E6CB089914B1486164246401718EE2BF6EA8AE1CCB8DB118
            BC34F0DECD47995AE9BDBAFDFB1D981E13A386AF1AFCEE5CBADAC828A28AF893
            EAC28A28A0028A28A0028A28A00FCF7FF83913F630D6FF006AEFD872C356F096
            837BE21F16FC3ED6A2BFB7B3D3ECE4BBBFBAB49C7D9EE228638C1663B9A09580
            07E5809ED5F837FF000EF5F8FDFF00443BE307FE11BA8FFF0019AFEBB28AFAEC
            9B8BABE5F87FAB460A4936D5DBD2FD3EFD7E67CD66BC354B1B5FDBB9B8BB24EC
            BB1FC89FFC3BD7E3F7FD10EF8C1FF846EA3FFC668FF877AFC7EFFA21DF183FF0
            8DD47FF8CD7F5D9457ADFF00110F11FF003E57DECF37FD49A3FF003F5FDC8FE4
            4FFE1DEBF1FBFE8877C60FFC23751FFE334A3FE09E7F1FCF3FF0A37E309FFB93
            352FFE335FD75D147FC443C47FCF95F7B0FF005268FF00CFD7F723F914FF0087
            797C7FFF00A21BF187FF0008CD4BFF008CD1FF000EF2F8FF00FF004437E30FFE
            119A97FF0019AFEBAE8A3FE221E23FE7CAFBD8FF00D49A3FF3F5FDC8FE453FE1
            DE5F1FFF00E886FC61FF00C23352FF00E3347FC3BCBE3FFF00D10DF8C3FF0084
            66A5FF00C66BFAEBA28FF888788FF9F2BEF61FEA4D1FF9FAFEE4787FFC133FC2
            3A97807FE09EDF05B45D634FBED2756D37C1DA64179657B03DBDCDA4C2D937C7
            246E0323AB64156008239AF70A28AF80AF55D5A92A8FED36FEF3ECA8D354E9C6
            9AE892FB828A28AC8D028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28
            A0028A28A00FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 678.094930000000000000
          Top = 162.519685039370000000
          Width = 63.118098030000000000
          Height = 37.795275590000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lain-lain')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 663.417750000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hal : [page#]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 22.677180000000000000
          Top = 7.779530000000000000
          Width = 109.086580000000000000
          Height = 49.692950000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -48
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MLB')
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
        Height = 18.897637800000000000
        Top = 396.850650000000000000
        Width = 740.787880000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 36.283464570000000000
          Width = 170.078740160000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 205.984251970000000000
          Width = 53.291338580000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbLPB."grandtotal"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 506.913385830000000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Width = 36.283464570000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 327.666666660000000000
          Width = 83.149606300000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 260.086614170000000000
          Width = 68.031496060000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 601.110236220000000000
          Width = 75.968503940000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 678.205166230000000000
          Width = 63.118098030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 411.590551180000000000
          Width = 94.488188980000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbLPB
          DataSetName = 'DbLPB'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbLPB."grandtotal">,DetailData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
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
    Left = 576
    Top = 16
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 930
      FloatTop = 3
      FloatClientWidth = 56
      FloatClientHeight = 123
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarBaru'
        end
        item
          Visible = True
          ItemName = 'dxBarUpdate'
        end
        item
          Visible = True
          ItemName = 'dxbarRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarDelete'
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
      Action = ActBaru
      Caption = 'New'
      Category = 0
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
      Action = ActUpdate
      Category = 0
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
      Action = ActRo
      Category = 0
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
      Caption = 'Delete  '
      Category = 0
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
  end
  object ActMenu: TActionManager
    Left = 632
    Top = 16
    StyleName = 'Platform Default'
    object ActBaru: TAction
      Caption = 'Baru  '
      OnExecute = ActBaruExecute
    end
    object ActUpdate: TAction
      Caption = 'Update  '
      OnExecute = ActUpdateExecute
    end
    object ActRo: TAction
      Caption = 'Refresh  '
      OnExecute = ActRoExecute
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
      Visible = False
    end
    object ActReject: TAction
      Caption = 'Reject  '
      Enabled = False
      Visible = False
    end
    object ActClose: TAction
      Caption = 'CLose Kontrak    '
      Enabled = False
    end
  end
end
