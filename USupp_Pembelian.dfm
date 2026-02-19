object FSupp_Pembelian: TFSupp_Pembelian
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Form Data Supplier'
  ClientHeight = 472
  ClientWidth = 923
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
    Width = 923
    Height = 472
    Align = alClient
    AutoFitColWidths = True
    DataSource = DsSupplier
    DynProps = <>
    ReadOnly = True
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
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'address'
        Footers = <>
        Title.Caption = 'Alamat'
        Width = 218
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_code'
        Footers = <>
        Title.Caption = 'Kode Perkiraan'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Perkiraan'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qsupplier: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT supplier_code,supplier_name,address,telp,supplier1_name,n' +
        'pwp,contact_person,pph,supplier_code2,a.header_code,account_code' +
        ',1 status_id,up_npwp,supplier_initial,'
      
        'sbu_code,header_code2, account_code2,tempo,item_do,b.account_nam' +
        'e,header_code_um,account_code_um from t_supplier  a left JOIN t_' +
        'ak_account b on a.header_code=b.code '
      'where a.deleted_at is null order by supplier_code asc')
    Left = 208
    Top = 64
  end
  object DsSupplier: TDataSource
    DataSet = Qsupplier
    Left = 296
    Top = 80
  end
end
