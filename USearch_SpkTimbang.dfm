object FSearch_SpkTimbang: TFSearch_SpkTimbang
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Form Search SPK Timbang'
  ClientHeight = 268
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 558
    Height = 268
    Align = alClient
    DataSource = DsSpkTimbang
    DynProps = <>
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_timbang'
        Footers = <>
        Title.Caption = 'No. Timbang'
        Width = 55
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_spk_prod'
        Footers = <>
        Title.Caption = 'No. Spk'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_formula'
        Footers = <>
        Title.Caption = 'No. Formula'
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'mc'
        Footers = <>
        Title.Caption = 'Mesin'
        Width = 40
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_produk'
        Footers = <>
        Title.Caption = 'Nama Produk'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_mulai'
        Footers = <>
        Title.Caption = 'Tanggal SPK Produksi|Mulai'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl_selesai'
        Footers = <>
        Title.Caption = 'Tanggal SPK Produksi|Selesai'
        Width = 70
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Qspktimbang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select Sum(jmlh_timbang)as total,no_spk_prod,no_formula,nm_produ' +
        'k,no_timbang,mc,tgl_mulai,tgl_selesai,sisatb from t_spk_prod_tmb' +
        'ng '
      
        'Group by no_spk_prod,no_formula,nm_produk,no_timbang,mc,tgl_mula' +
        'i,tgl_selesai,sisatb order by no_timbang asc')
    Left = 216
    Top = 120
  end
  object DsSpkTimbang: TDataSource
    DataSet = Qspktimbang
    Left = 280
    Top = 144
  end
end
