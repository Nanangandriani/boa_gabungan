object FDaftarKendaraan: TFDaftarKendaraan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Daftar Kendaraan'
  ClientHeight = 519
  ClientWidth = 700
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
    Top = 89
    Width = 700
    Height = 430
    Align = alClient
    DataSource = dsMasterData
    DynProps = <>
    ReadOnly = True
    SearchPanel.Enabled = True
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
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'plate_number'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Jenis Kendaraan'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'capacity'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kapasitas'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 0
    Width = 700
    Height = 89
    Align = alTop
    Lines.Strings = (
      'Memo1')
    TabOrder = 1
    Visible = False
    ExplicitWidth = 696
  end
  object dsMasterData: TDataSource
    DataSet = MemMasterData
    Left = 384
    Top = 256
  end
  object MemMasterData: TMemTableEh
    Active = True
    Params = <>
    Left = 488
    Top = 256
    object MemMasterDatacode: TStringField
      FieldName = 'code'
    end
    object MemMasterDataplate_number: TStringField
      FieldName = 'plate_number'
      Size = 50
    end
    object MemMasterDatatype: TStringField
      FieldName = 'type'
      Size = 255
    end
    object MemMasterDatatype_name: TStringField
      FieldName = 'type_name'
      Size = 50
    end
    object MemMasterDatacapacity: TFloatField
      FieldName = 'capacity'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object code: TMTStringDataFieldEh
          FieldName = 'code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object plate_number: TMTStringDataFieldEh
          FieldName = 'plate_number'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object type: TMTStringDataFieldEh
          FieldName = 'type'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object type_name: TMTStringDataFieldEh
          FieldName = 'type_name'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object capacity: TMTNumericDataFieldEh
          FieldName = 'capacity'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 255
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
    Left = 32
    Top = 120
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 32
    Top = 176
  end
  object NetHTTPClient1: TNetHTTPClient
    UserAgent = 'Embarcadero URI Client/1.0'
    Left = 272
    Top = 264
  end
end
