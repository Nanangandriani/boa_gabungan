object FPajakCapFasilitas_KetTambahan: TFPajakCapFasilitas_KetTambahan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cap Fasilitas'
  ClientHeight = 442
  ClientWidth = 707
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
    Width = 707
    Height = 442
    Align = alClient
    DataSource = DSPajakCapFasilitas
    DrawMemoText = True
    DynProps = <>
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'id'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kode'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'keterangan'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 587
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'default'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kode_transaksi'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DSPajakCapFasilitas: TDataSource
    DataSet = QPajakCapFasilitas
    Left = 304
    Top = 224
  end
  object QPajakCapFasilitas: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_pajak_cap_fasilitas')
    Left = 424
    Top = 152
  end
end
