object FDataPool: TFDataPool
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daftar Pool'
  ClientHeight = 442
  ClientWidth = 539
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGrid: TDBGridEh
    Left = 0
    Top = 0
    Width = 539
    Height = 442
    Align = alClient
    DataSource = DSPool
    DynProps = <>
    TabOrder = 0
    OnDblClick = DBGridDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pool'
        Width = 370
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'province_id'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'regencie_id'
        Footers = <>
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Memo1: TMemo
    Left = 8
    Top = 160
    Width = 364
    Height = 193
    TabOrder = 1
    Visible = False
  end
  object DSPool: TDataSource
    DataSet = MemPool
    Left = 312
    Top = 336
  end
  object MemPool: TMemTableEh
    Params = <>
    Left = 416
    Top = 328
    object MemPoolcode: TStringField
      FieldName = 'code'
    end
    object MemPoolname: TStringField
      FieldName = 'name'
    end
    object MemPoolprovince_id: TSmallintField
      FieldName = 'province_id'
    end
    object MemPoolregencie_id: TSmallintField
      FieldName = 'regencie_id'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object code: TMTStringDataFieldEh
          FieldName = 'code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object name: TMTStringDataFieldEh
          FieldName = 'name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object province_id: TMTNumericDataFieldEh
          FieldName = 'province_id'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object regencie_id: TMTNumericDataFieldEh
          FieldName = 'regencie_id'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 416
    Top = 232
  end
end
