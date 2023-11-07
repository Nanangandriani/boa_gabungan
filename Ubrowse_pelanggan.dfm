object Fbrowse_data_pelanggan: TFbrowse_data_pelanggan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Browse Data Pelanggan'
  ClientHeight = 294
  ClientWidth = 512
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 512
    Height = 294
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_code'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode Pelanggan'
        Width = 155
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pelanggan'
        Width = 315
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 248
    Top = 192
  end
  object UniQuery1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_customer')
    Left = 352
    Top = 184
  end
end
