object FCari_Barang: TFCari_Barang
  Left = 0
  Top = 0
  Caption = 'Form Search Barang'
  ClientHeight = 309
  ClientWidth = 530
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
  object Gauge1: TGauge
    Left = 320
    Top = 96
    Width = 100
    Height = 100
    Progress = 0
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 530
    Height = 309
    Align = alClient
    DataSource = DsBarang
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_code'
        Footers = <>
        Title.Caption = 'Kode Barang'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_name'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 279
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'category'
        Footers = <>
        Width = 124
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QBarang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_item order by item_code asc')
    Left = 216
    Top = 136
  end
  object DsBarang: TDataSource
    DataSet = QBarang
    Left = 216
    Top = 80
  end
end
