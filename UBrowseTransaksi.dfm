object FBrowseTransaksi: TFBrowseTransaksi
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Transaksi'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    DataSource = DStransaksi
    DynProps = <>
    EmptyDataInfo.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Caption = 'No Transaksi'
        Width = 180
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal Transaksi'
        Width = 81
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 304
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DStransaksi: TDataSource
    DataSet = QTransaksi
    Left = 304
    Top = 224
  end
  object QTransaksi: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select trans_no,trans_date from t_selling WHERE status_koreksi=1' +
        ' order by trans_no ASC')
    Left = 464
    Top = 216
  end
end
