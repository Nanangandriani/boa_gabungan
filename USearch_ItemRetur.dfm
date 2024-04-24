object FSearch_MaterialRetur: TFSearch_MaterialRetur
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Form Search Material Retur'
  ClientHeight = 332
  ClientWidth = 652
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 652
    Height = 332
    Align = alClient
    DataSource = DsMaterial
    DynProps = <>
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    OnCellClick = DBGridEh1CellClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_terima'
        Footers = <>
        Title.Caption = 'No. LPB'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nofaktur'
        Footers = <>
        Title.Caption = 'No. Faktur'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_faktur'
        Footers = <>
        Title.Caption = 'Tanggal Faktur'
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nopo'
        Footers = <>
        Width = 113
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_stok'
        Footers = <>
        Title.Caption = 'Kode Stok'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'harga'
        Footers = <>
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material_stok'
        Footers = <>
        Visible = False
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_material'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DsMaterial: TDataSource
    DataSet = Qmaterial
    Left = 440
    Top = 104
  end
  object Qmaterial: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.stock_code,a.item_stock_code,b.price,c.faktur_date,c.fa' +
        'ktur_no,b.po_no,d.item_name,b.unit,d.supplier_code,'
      'c.receive_no'
      'FROM warehouse.t_item_stock_det a '
      
        'INNER JOIN purchase.t_item_receive_det b ON a.item_stock_code=b.' +
        'item_stock_code AND a.stock_code=b.stock_code'
      
        'INNER JOIN purchase.t_item_receive c on b.receive_no=c.receive_n' +
        'o'
      
        'inner join warehouse.t_item_stock d on a.item_stock_code=d.item_' +
        'stock_code')
    Left = 376
    Top = 96
  end
end
