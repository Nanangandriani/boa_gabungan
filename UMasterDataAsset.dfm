object FMasterDataAsset: TFMasterDataAsset
  Left = 731
  Top = 266
  ClientHeight = 437
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 329
    Width = 370
    Height = 108
    Align = alBottom
    TabOrder = 0
    Visible = False
    ExplicitTop = 328
    ExplicitWidth = 366
    object Label1: TLabel
      Left = 32
      Top = 7
      Width = 59
      Height = 16
      Caption = 'Base URL'
    end
    object Label2: TLabel
      Left = 32
      Top = 31
      Width = 27
      Height = 16
      Caption = 'Path'
    end
    object Label3: TLabel
      Left = 32
      Top = 55
      Width = 61
      Height = 16
      Caption = 'Key Token'
    end
    object Label4: TLabel
      Left = 32
      Top = 79
      Width = 66
      Height = 16
      Caption = 'ValueToken'
    end
    object edPath: TEdit
      Left = 104
      Top = 31
      Width = 417
      Height = 24
      TabOrder = 0
      Text = 'api_aset/v1/aset/pengajuan'
    end
    object edKeyToken: TEdit
      Left = 104
      Top = 55
      Width = 417
      Height = 24
      TabOrder = 1
      Text = 'access-token-dmlt'
    end
    object edBaseURL: TEdit
      Left = 104
      Top = 7
      Width = 417
      Height = 24
      TabOrder = 2
      Text = 'http://devapi.hastaprimasolusi.com/'
    end
    object Memo1: TMemo
      Left = 552
      Top = 8
      Width = 705
      Height = 57
      TabOrder = 3
    end
    object edValueToken: TEdit
      Left = 104
      Top = 76
      Width = 945
      Height = 24
      TabOrder = 4
      Text = 
        'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpZCI6NSwiZmlyc3RfbmFtZSI' +
        '6InJ1ZHkiLCJsYXN0X25hbWUiOiJub3ZyaWFudG8iLCJlbWFpbCI6InJ1ZGlub3Z' +
        'yaWFudG8zMUBnbWFpbC5jb20iLCJwYXNzd29yZCI6IjZkMWJjZThjMWVjNzBiN2Z' +
        'lOWZmNjcwNzZhOTlmMWEyMmI4ZDM1MTEiLCJpcF9hZGRyZXNzIjoiMzYuOTUuMTU' +
        'wLjg3In0.xsydaAY_MGnfPu40BdNvFgxCJHONOJCyDg8Wh-AIfWg'
      Visible = False
    end
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 34
    Width = 370
    Height = 295
    Align = alClient
    DataSource = dsMasterData
    DynProps = <>
    FooterRowCount = 1
    HorzScrollBar.ExtraPanel.Visible = True
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    OnDblClick = DBGridDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KODE_MASTER'
        Footers = <>
        Title.Caption = 'KODE MASTER'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NAMA_MASTER'
        Footers = <>
        Title.Caption = 'NAMA MASTER'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'UUID_MASTER'
        Footers = <>
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -17
        Title.Font.Name = 'Trebuchet MS'
        Title.Font.Style = [fsBold]
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 370
    Height = 34
    Align = alTop
    Caption = 'MASTER DATA ASSET'
    Color = 15987699
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = 16744448
    ParentFont = False
    TabOrder = 2
    Visible = False
    VisualStyle = vsGradient
    ExplicitWidth = 366
  end
  object http: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 16
  end
  object dsMasterData: TDataSource
    DataSet = MemMasterData
    Left = 80
  end
  object MemMasterData: TMemTableEh
    Active = True
    Params = <>
    Left = 120
    object MemMasterDataKODE_MASTER: TStringField
      FieldName = 'KODE_MASTER'
      Size = 100
    end
    object MemMasterDataNAMA_MASTER: TStringField
      FieldName = 'NAMA_MASTER'
      Size = 50
    end
    object MemMasterDataUUID_MASTER: TStringField
      FieldName = 'UUID_MASTER'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KODE_MASTER: TMTStringDataFieldEh
          FieldName = 'KODE_MASTER'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object NAMA_MASTER: TMTStringDataFieldEh
          FieldName = 'NAMA_MASTER'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object UUID_MASTER: TMTStringDataFieldEh
          FieldName = 'UUID_MASTER'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 176
    Top = 224
  end
end
