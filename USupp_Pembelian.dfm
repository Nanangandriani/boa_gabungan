object FSupp_Pembelian: TFSupp_Pembelian
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'FSupp_Pembelian'
  ClientHeight = 256
  ClientWidth = 422
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 422
    Height = 256
    Align = alClient
    DataSource = DsSupplier
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_code'
        Footers = <>
        Title.Caption = 'Kode Supplier'
        Width = 87
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Nama Supplier'
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qsupplier: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'Select supplier_code, supplier_name from t_supplier')
    Left = 208
    Top = 64
  end
  object DsSupplier: TDataSource
    DataSet = Qsupplier
    Left = 296
    Top = 80
  end
end
