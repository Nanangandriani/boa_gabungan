object FCari_Barang2: TFCari_Barang2
  Left = 0
  Top = 0
  Caption = 'FCari_Barang2'
  ClientHeight = 491
  ClientWidth = 746
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
    Top = 0
    Width = 746
    Height = 491
    Align = alClient
    DataSource = DsBarang
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_stock_code'
        Footers = <>
        Title.Caption = 'Kode Barang'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_name'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 220
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Nama Supplier'
        Width = 220
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'unit'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 69
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qbarang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.item_stock_code,a.item_name,b.supplier_name,f.type,a.it' +
        'em_code,a.supplier_code,a.unit,0 qty from warehouse.t_item_stock' +
        ' a '
      'inner join t_supplier b on a.supplier_code=b.supplier_code'
      'inner join t_item c on a.item_code=c.item_code '
      'inner join t_item_group d on c.group_id=d.group_id '
      'inner join t_item_category e on d.category_id=d.category_id'
      'inner join t_item_type f on f.type_id=e.type_id '
      '-- where f.type='#39'PRODUKSI'#39
      'ORDER BY a.item_stock_code asc')
    Left = 240
    Top = 104
  end
  object DsBarang: TDataSource
    DataSet = Qbarang
    Left = 240
    Top = 168
  end
end
