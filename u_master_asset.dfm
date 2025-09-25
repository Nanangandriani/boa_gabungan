object FMasterAsset: TFMasterAsset
  Left = 569
  Top = 256
  Caption = 'Master Asset'
  ClientHeight = 542
  ClientWidth = 874
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 16
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 874
    Height = 542
    Align = alClient
    DataSource = DataSource1
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
        FieldName = 'mas_kode'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'KODE'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Reference Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'mas_nama'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'NAMA ASSET'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Reference Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'msat_ket'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'SATUAN'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Reference Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'keterangan'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'KETERANGAN'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWhite
        Title.Font.Height = -13
        Title.Font.Name = 'MS Reference Sans Serif'
        Title.Font.Style = [fsBold]
        Width = 250
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = QMasterAsset
    Left = 424
    Top = 400
  end
  object QMasterAsset: TUniQuery
    SQL.Strings = (
      
        'SELECT '#9'`mas_kode`, `mas_nama`, `mas_namafull` as keterangan, ms' +
        'at_ket'
      '  FROM '#9'`aset`.`mst_aset` a'
      '   LEFT JOIN `mst_satuan` b ON a.mas_msat_kode = b.msat_kode'
      '  where mas_apv1 =1 and mas_apv2=1 and mas_apv3=0')
    Left = 392
    Top = 400
    object QMasterAssetmas_kode: TStringField
      FieldName = 'mas_kode'
      Size = 250
    end
    object QMasterAssetmas_nama: TStringField
      FieldName = 'mas_nama'
      Size = 250
    end
    object QMasterAssetmsat_ket: TStringField
      FieldName = 'msat_ket'
      ReadOnly = True
      Size = 50
    end
    object QMasterAssetketerangan: TStringField
      FieldName = 'keterangan'
      Size = 250
    end
  end
end
