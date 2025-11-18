object FbrowseKlasifikasi: TFbrowseKlasifikasi
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'List Klasifikasi'
  ClientHeight = 442
  ClientWidth = 918
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGrid: TDBGridEh
    Left = 0
    Top = 0
    Width = 918
    Height = 442
    Align = alClient
    DataSource = DsMasterKlasifikasi
    DrawMemoText = True
    DynProps = <>
    EmptyDataInfo.Active = True
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnDblClick = DBGridDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'id_master'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_type_customer'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_type_customer'
        Footers = <>
        Title.Caption = 'Jenis Pelanggan'
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_item_category'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_item_category'
        Footers = <>
        Title.Caption = 'Kategori Barang'
        Width = 153
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_type_count'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_type_count'
        Footers = <>
        Title.Caption = 'Jenis Perhitungan'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_customer_selling_type'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_customer_selling_type'
        Footers = <>
        Title.Caption = 'Jenis Penjualan Pelanggan'
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_sell_type'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_sell_type'
        Footers = <>
        Title.Caption = 'Jenis Penjualan'
        Width = 76
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_payment'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_payment'
        Footers = <>
        Title.Caption = 'Status Pembayaran'
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_grouping'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_grouping'
        Footers = <>
        Title.Caption = 'Status Grouping'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_tax'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_tax'
        Footers = <>
        Title.Caption = 'Include PPN'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_disc'
        Footers = <>
        Title.Caption = 'Status Potongan'
        Width = 60
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_disc'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_promo'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_promo'
        Footers = <>
        Title.Caption = 'Status Promo'
        Width = 48
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Status Koreksi'
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QMasterKlasifikasi: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      ''
      'SELECT'
      #9'a."id" AS id_master,'
      #9'a."code_type_business",'
      #9'g.NAME AS "name_type_business",'
      #9'"code_type_customer",'
      #9'b.NAME AS "name_type_customer",'
      #9'"code_item_category",'
      #9'c.category as "name_item_category",'
      #9'"code_type_count",'
      #9'd.name as "name_type_count",'
      #9'"code_customer_selling_type",'
      #9'e.name as "name_customer_selling_type",'
      #9'"code_sell_type",'
      #9'f.name as "name_sell_type",'
      #9'"status_payment",'
      
        #9'case when "status_payment"=0 then '#39'Cash'#39' else '#39'Kredit'#39' end "nam' +
        'e_payment",'
      #9'"status_grouping",'
      
        #9'case when "status_grouping"=0 then '#39'Non Grouping'#39' else '#39'Groupin' +
        'g'#39' end "name_grouping",'
      #9'"status_tax",'
      
        #9'case when "status_tax"=0 then '#39'Tidak'#39' else '#39'Iya'#39' end "name_tax"' +
        ','
      #9'"status_disc",'
      
        #9'case when "status_disc"=0 then '#39'Disc'#39' else '#39'Value (Rp)'#39' end "na' +
        'me_disc",'
      #9'"status_promo", '
      
        #9'case when "status_promo"=0 then '#39'Tidak'#39' else '#39'Iya'#39' end "name_pr' +
        'omo",'
      
        'case when a.status_approval=1 then '#39'Disetujui'#39' when a.status_app' +
        'roval=99 then '#39'Ditolak'#39' else '#39'Pengajuan'#39' end status_approval,a.s' +
        'tatus_correction  '
      'FROM'
      #9'"t_sales_classification" a'
      #9'LEFT JOIN t_customer_type b ON a.code_type_customer = b.code'
      #9'LEFT JOIN t_item_category c ON a.code_item_category = c.code'
      #9'LEFT JOIN t_sell_type_count d ON a.code_type_count = d.code'
      
        #9'LEFT JOIN t_customer_selling_type e ON a.code_customer_selling_' +
        'type = e.code'
      #9'LEFT JOIN t_sell_type f ON a.code_sell_type = f.code'
      
        '        LEFT JOIN t_customer_type_business g ON a.code_type_busi' +
        'ness = g.code'
      '')
    Left = 472
    Top = 256
    object QMasterKlasifikasiid_master: TGuidField
      FieldName = 'id_master'
      Required = True
      Size = 38
    end
    object QMasterKlasifikasicode_type_business: TStringField
      FieldName = 'code_type_business'
      Size = 100
    end
    object QMasterKlasifikasiname_type_business: TStringField
      FieldName = 'name_type_business'
      ReadOnly = True
      Size = 255
    end
    object QMasterKlasifikasicode_type_customer: TStringField
      FieldName = 'code_type_customer'
      Size = 100
    end
    object QMasterKlasifikasiname_type_customer: TStringField
      FieldName = 'name_type_customer'
      ReadOnly = True
      Size = 255
    end
    object QMasterKlasifikasicode_item_category: TStringField
      FieldName = 'code_item_category'
      Size = 100
    end
    object QMasterKlasifikasiname_item_category: TStringField
      FieldName = 'name_item_category'
      ReadOnly = True
      Size = 50
    end
    object QMasterKlasifikasicode_type_count: TStringField
      FieldName = 'code_type_count'
      Size = 100
    end
    object QMasterKlasifikasiname_type_count: TStringField
      FieldName = 'name_type_count'
      ReadOnly = True
      Size = 255
    end
    object QMasterKlasifikasicode_customer_selling_type: TStringField
      FieldName = 'code_customer_selling_type'
      Size = 100
    end
    object QMasterKlasifikasiname_customer_selling_type: TStringField
      FieldName = 'name_customer_selling_type'
      ReadOnly = True
      Size = 255
    end
    object QMasterKlasifikasicode_sell_type: TStringField
      FieldName = 'code_sell_type'
      Size = 100
    end
    object QMasterKlasifikasiname_sell_type: TStringField
      FieldName = 'name_sell_type'
      ReadOnly = True
      Size = 255
    end
    object QMasterKlasifikasistatus_payment: TIntegerField
      FieldName = 'status_payment'
    end
    object QMasterKlasifikasiname_payment: TMemoField
      FieldName = 'name_payment'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QMasterKlasifikasistatus_grouping: TIntegerField
      FieldName = 'status_grouping'
    end
    object QMasterKlasifikasiname_grouping: TMemoField
      FieldName = 'name_grouping'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QMasterKlasifikasistatus_tax: TIntegerField
      FieldName = 'status_tax'
    end
    object QMasterKlasifikasiname_tax: TMemoField
      FieldName = 'name_tax'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QMasterKlasifikasistatus_disc: TIntegerField
      FieldName = 'status_disc'
    end
    object QMasterKlasifikasiname_disc: TMemoField
      FieldName = 'name_disc'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QMasterKlasifikasistatus_promo: TIntegerField
      FieldName = 'status_promo'
    end
    object QMasterKlasifikasiname_promo: TMemoField
      FieldName = 'name_promo'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QMasterKlasifikasistatus_approval: TMemoField
      FieldName = 'status_approval'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QMasterKlasifikasistatus_correction: TSmallintField
      FieldName = 'status_correction'
    end
  end
  object DsMasterKlasifikasi: TDataSource
    DataSet = QMasterKlasifikasi
    Left = 577
    Top = 224
  end
end
