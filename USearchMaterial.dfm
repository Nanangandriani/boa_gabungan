object FSearchMaterial: TFSearchMaterial
  Left = 0
  Top = 0
  Caption = 'Form Search Material'
  ClientHeight = 351
  ClientWidth = 391
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
    Width = 391
    Height = 351
    Align = alClient
    DataSource = DsMaterial
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 0
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material'
        Footers = <>
        Title.Caption = 'Kode Barang'
        Width = 77
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_material'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 64
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QMaterial: TUniQuery
    SQL.Strings = (
      'select * from t_material')
    Left = 248
  end
  object DsMaterial: TDataSource
    DataSet = QMaterial
    Left = 280
    Top = 8
  end
end
