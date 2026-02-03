object FSearch_MaterialRetur: TFSearch_MaterialRetur
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Form Search Material Retur'
  ClientHeight = 441
  ClientWidth = 730
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 730
    Height = 441
    Align = alClient
    AutoFitColWidths = True
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
        FieldName = 'trans_no'
        Footers = <>
        Title.Caption = 'No. LPB'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'faktur_no'
        Footers = <>
        Title.Caption = 'No. Faktur'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'faktur_date'
        Footers = <>
        Title.Caption = 'Tanggal Faktur'
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'po_no'
        Footers = <>
        Title.Caption = 'Nomor PO'
        Width = 113
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
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price'
        Footers = <>
        Title.Caption = 'Harga'
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_stock_code'
        Footers = <>
        Visible = False
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_name'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qmaterial: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.stock_code,a.item_stock_code,b.price,c.faktur_date,c.fa' +
        'ktur_no,b.po_no,d.item_name,b.unit,d.supplier_code,c.trans_no,b.' +
        'item_code,b.wh_code'
      ' FROM t_item_stock_det A '
      
        'INNER JOIN t_purchase_invoice_det b ON a.item_stock_code=b.item_' +
        'stock_code --AND a.stock_code=b.stock_code'
      'INNER JOIN t_purchase_invoice C on b.trans_no=c.trans_no'
      
        'inner join t_item_stock d on a.item_stock_code=d.item_stock_code' +
        ' '
      
        'LEFT JOIN  t_item_receive_det e on  b.receive_no=e.po_no AND a.s' +
        'tock_code=e.stock_code'
      '')
    Left = 232
    Top = 80
  end
  object DsMaterial: TDataSource
    DataSet = Qmaterial
    Left = 224
    Top = 144
  end
end
