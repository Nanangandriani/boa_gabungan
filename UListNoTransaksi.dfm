object FListNoTransaksi: TFListNoTransaksi
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data No Transaksi'
  ClientHeight = 442
  ClientWidth = 323
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
    Width = 323
    Height = 442
    Align = alClient
    DataSource = DSListTransNo
    DynProps = <>
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Transaksi'
        Width = 307
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QListTransNo: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT trans_no from t_selling WHERE trans_date='#39'2025-03-05'#39' and' +
        ' deleted_at is NOT NULL '
      'AND (trans_no_replacement is NULL OR trans_no_replacement='#39#39')')
    Left = 40
    Top = 208
  end
  object DSListTransNo: TDataSource
    DataSet = QListTransNo
    Left = 128
    Top = 208
  end
end
