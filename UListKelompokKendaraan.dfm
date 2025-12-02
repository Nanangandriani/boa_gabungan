object FListKelompokKendaraan: TFListKelompokKendaraan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Kelompok Kendaraan'
  ClientHeight = 442
  ClientWidth = 888
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object DBGrid: TDBGridEh
    Left = 0
    Top = 0
    Width = 888
    Height = 442
    Align = alClient
    DataSource = DsKendaraan
    DynProps = <>
    EmptyDataInfo.Active = True
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 180
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'vehicle_group_sort_number'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kelompok Kendaraan'
        Width = 298
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_vehicles_code'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode Type Kendaraan'
        Width = 121
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_vehicles_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Type Kendaraan'
        Width = 336
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###'
        DynProps = <>
        EditButtons = <>
        FieldName = 'capacity'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kapasitas'
        Width = 98
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 836
        Height = 178
        Align = alClient
        DataSource = DSDetail
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'notrans'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'No SO'
            Width = 155
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'trans_no'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'No Invoice'
            Width = 172
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'order_date'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Tanggal Order'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_cust'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Kode Pelanggan'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_cust'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Pelanggan'
            Width = 236
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'vehicle_group_id'
            Footers = <>
            Title.Alignment = taCenter
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Kode Barang'
            Width = 118
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Width = 117
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Jumlah'
            Width = 73
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_unit'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DsKendaraan: TDataSource
    DataSet = QKendaraan
    Left = 352
    Top = 264
  end
  object QKendaraan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT DISTINCT '
      '    vehicle_group_sort_number,'
      '    vehicle_group_id,'
      '    type_vehicles_code,'
      '    type_vehicles_name,'
      '    capacity'
      'FROM '
      '    t_sales_order a '
      'WHERE vehicle_group_id IS NOT NULL AND '
      
        '    vehicle_group_id NOT IN (SELECT vehicle_group_id FROM t_deli' +
        'very_order_load WHERE vehicle_group_id IS NOT NULL ) ;')
    Left = 504
    Top = 264
  end
  object DSDetail: TDataSource
    DataSet = QDetail
    Left = 416
    Top = 304
  end
  object QDetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.notrans,b.trans_no,a.order_date,a.code_cust,a.name_cust' +
        ',a.vehicle_group_id,c.code_item,c.name_item,c.amount ,c.code_uni' +
        't from t_sales_order a'
      
        'LEFT JOIN t_selling b on b.no_reference=a.notrans AND b.deleted_' +
        'at is NULL'
      'LEFT JOIN t_sales_order_det c on c.notrans=a.notrans '
      'Order by a.notrans ASC')
    MasterSource = DsKendaraan
    MasterFields = 'vehicle_group_id'
    DetailFields = 'vehicle_group_id'
    Left = 478
    Top = 335
    ParamData = <
      item
        DataType = ftString
        Name = 'vehicle_group_id'
        ParamType = ptInput
        Value = nil
      end>
  end
end
