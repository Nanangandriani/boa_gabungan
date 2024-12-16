object FSearch_SuppSPKProd: TFSearch_SuppSPKProd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form Supplier'
  ClientHeight = 216
  ClientWidth = 536
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object DBGridKemasan: TDBGridEh
    Left = 0
    Top = 0
    Width = 536
    Height = 217
    Align = alTop
    DataSource = DsSupplier
    DynProps = <>
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    OnDblClick = DBGridKemasanDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material_stok'
        Footers = <>
        Title.Caption = 'Kode Barang'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_supplier'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_stok'
        Footers = <>
        Title.Caption = 'Kode Stok'
        Width = 119
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Quantity'
        Width = 54
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footer.FieldName = 'satuan'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'gudang'
        Footers = <>
        Title.Caption = 'Gudang'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridBaku: TDBGridEh
    Left = 0
    Top = 393
    Width = 536
    Height = 0
    Align = alClient
    DataSource = DsSupplier
    DynProps = <>
    TabOrder = 1
    OnDblClick = DBGridBakuDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material_stok'
        Footers = <>
        Title.Caption = 'Kode Material'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_supplier'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_stok'
        Footers = <>
        Title.Caption = 'Kode Stok'
        Width = 119
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Quantity'
        Width = 54
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footer.FieldName = 'satuan'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'gudang'
        Footers = <>
        Title.Caption = 'Gudang'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridKimia: TDBGridEh
    Left = 0
    Top = 217
    Width = 536
    Height = 176
    Align = alTop
    DataSource = DsSupplier
    DynProps = <>
    TabOrder = 2
    OnDblClick = DBGridKimiaDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material_stok'
        Footers = <>
        Title.Caption = 'Kode Material'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_supplier'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 143
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_stok'
        Footers = <>
        Title.Caption = 'Kode Stok'
        Width = 119
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Quantity'
        Width = 54
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footer.FieldName = 'satuan'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'gudang'
        Footers = <>
        Title.Caption = 'Gudang'
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QSupplier: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select B.kd_material_stok,A.kd_supplier,A.nm_supplier,C.kd_stok,' +
        ' C.qty, B.kd_material,B.satuan, '
      'C.Gudang, D.konversi'
      
        'from t_supplier A inner join t_material_stok B on A.kd_supplier=' +
        'B.kd_supplier '
      
        'Left join t_material_stok_det C on B.Kd_material_stok = C.kd_mat' +
        'erial_stok'
      'inner join t_konversi_material D on D.kd_material=B.kd_material')
    Left = 327
    Top = 56
  end
  object DsSupplier: TDataSource
    DataSet = QSupplier
    Left = 384
    Top = 56
  end
end
