object FCari_Barang: TFCari_Barang
  Left = 0
  Top = 0
  Caption = 'Form Search Barang'
  ClientHeight = 309
  ClientWidth = 379
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
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 379
    Height = 309
    Align = alClient
    DataSource = DsBarang
    DynProps = <>
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material'
        Footers = <>
        Title.Caption = 'Kode Material'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_material'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 279
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QBarang: TUniQuery
    SQL.Strings = (
      'select * from t_material order by kd_material asc')
    Left = 216
    Top = 128
  end
  object DsBarang: TDataSource
    DataSet = QBarang
    Left = 216
    Top = 80
  end
end
