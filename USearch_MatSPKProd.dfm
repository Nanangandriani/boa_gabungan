object FSearch_MatSPKProd: TFSearch_MatSPKProd
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Form Search Material SPK Produksi'
  ClientHeight = 163
  ClientWidth = 364
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
  OnShow = FormShow
  TextHeight = 13
  object DBGridBaku: TDBGridEh
    Left = 0
    Top = 0
    Width = 364
    Height = 161
    Align = alTop
    DataSource = DsMaterial
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridBakuDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material'
        Footers = <>
        Title.Caption = 'Kode Barang'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_material'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 219
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridKemasan: TDBGridEh
    Left = 0
    Top = 322
    Width = 364
    Height = 161
    Align = alTop
    DataSource = DsMaterial
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    OnDblClick = DBGridKemasanDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material'
        Footers = <>
        Title.Caption = 'Kode Material'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_material'
        Footers = <>
        Title.Caption = 'Nama Material'
        Width = 219
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DBGridKimia: TDBGridEh
    Left = 0
    Top = 161
    Width = 364
    Height = 161
    Align = alTop
    DataSource = DsMaterial
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 2
    OnDblClick = DBGridKimiaDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd_material'
        Footers = <>
        Title.Caption = 'Kode Material'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_material'
        Footers = <>
        Title.Caption = 'Nama Material'
        Width = 219
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qmaterial: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select kd_material,nm_material,no_urut from t_material order by ' +
        'no_urut ASC')
    Left = 351
    Top = 48
  end
  object DsMaterial: TDataSource
    DataSet = Qmaterial
    Left = 352
    Top = 104
  end
end
