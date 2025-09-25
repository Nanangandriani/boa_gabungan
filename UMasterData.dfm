object FMasterData: TFMasterData
  Left = 0
  Top = 0
  Caption = 'Master Data'
  ClientHeight = 412
  ClientWidth = 760
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 15
  object DBGridCustomer: TDBGridEh
    Left = 0
    Top = 0
    Width = 760
    Height = 412
    Align = alClient
    DataSource = dsMasterData
    DynProps = <>
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridCustomerDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KD_MASTER'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Width = 125
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NM_MASTER'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KETERANGAN'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Keterangan'
        Width = 300
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dsMasterData: TDataSource
    DataSet = MemMasterData
    Left = 384
    Top = 256
  end
  object MemMasterData: TMemTableEh
    Params = <>
    Left = 488
    Top = 256
    object MemMasterDataKD_MASTER: TStringField
      FieldName = 'KD_MASTER'
      Size = 50
    end
    object MemMasterDataNM_MASTER: TStringField
      FieldName = 'NM_MASTER'
      Size = 255
    end
    object MemMasterDataKETERANGAN: TStringField
      FieldName = 'KETERANGAN'
      Size = 255
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KD_MASTER: TMTStringDataFieldEh
          FieldName = 'KD_MASTER'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object NM_MASTER: TMTStringDataFieldEh
          FieldName = 'NM_MASTER'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object KETERANGAN: TMTStringDataFieldEh
          FieldName = 'KETERANGAN'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
