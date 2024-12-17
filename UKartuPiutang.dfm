object FKartuPiutang: TFKartuPiutang
  Left = 0
  Top = 0
  Caption = 'Kartu Piutang'
  ClientHeight = 624
  ClientWidth = 1257
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1257
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
  end
  object cbBulan: TRzComboBox
    Left = 57
    Top = 39
    Width = 180
    Height = 23
    TabOrder = 1
    Items.Strings = (
      ''
      'Januari'
      'Februari'
      'Maret'
      'April'
      'Mei'
      'Juni'
      'Juli'
      'Agustus'
      'September'
      'Oktober'
      'November'
      'Desember')
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 127
    Width = 1257
    Height = 497
    Align = alClient
    DataSource = dsMaster
    DynProps = <>
    ReadOnly = True
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 200
    SearchPanel.Enabled = True
    TabOrder = 2
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nama_pelanggan'
        Footers = <>
        Title.Caption = 'Nama Pelanggan'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'alamat'
        Footers = <>
        Title.Caption = 'Alamat'
        Width = 421
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'saldo_awal'
        Footers = <>
        Title.Caption = 'Saldo Awal'
        Width = 203
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridDetail: TDBGridEh
        Left = 0
        Top = 0
        Width = 806
        Height = 198
        Align = alClient
        DataSource = dsMasterDetail
        DrawMemoText = True
        DynProps = <>
        ReadOnly = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kode_cust'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama_cust'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'trans_no'
            Footers = <>
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgltrans'
            Footers = <>
            Width = 100
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'saldo_awal'
            Footers = <>
            Title.Caption = 'Jumlah | Saldo Awal'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'debet'
            Footers = <>
            Title.Caption = 'Jumlah | Debet'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'kredit'
            Footers = <>
            Title.Caption = 'Jumlah | Kredit'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_urut'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Width = 200
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ActMenu: TActionManager
    Left = 1016
    Top = 432
    StyleName = 'Platform Default'
    object ActBaru: TAction
      Caption = 'Baru  '
    end
    object ActUpdate: TAction
      Caption = 'Update  '
    end
    object ActRO: TAction
      Caption = 'Refresh  '
    end
    object ActDel: TAction
      Caption = 'Delete'
    end
    object ActPrint: TAction
      Caption = 'Print  '
    end
    object ActApp: TAction
      Caption = 'Approve  '
      Enabled = False
    end
    object ActReject: TAction
      Caption = 'Reject  '
      Enabled = False
    end
    object ActClose: TAction
      Caption = 'CLose PO    '
      Enabled = False
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 1096
    Top = 432
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 930
      FloatTop = 3
      FloatClientWidth = 56
      FloatClientHeight = 123
      ItemLinks = <
        item
          Visible = True
          ItemName = 'cxBarEditItem1'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 179
          Visible = True
          ItemName = 'spTahun'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 269
          Visible = True
          ItemName = 'edKaresidenan'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 271
          Visible = True
          ItemName = 'edKabupaten'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Laporan'
      CaptionButtons = <>
      DockedLeft = 600
      DockedTop = 0
      FloatLeft = 852
      FloatTop = 2
      FloatClientWidth = 51
      FloatClientHeight = 28
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btSearch'
        end
        item
          Visible = True
          ItemName = 'btPreview'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object edKaresidenan: TcxBarEditItem
      Caption = 'Karesidenan  '
      Category = 0
      Hint = 'Karesidenan  '
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edKaresidenanPropertiesButtonClick
      InternalEditValue = nil
    end
    object btPreview: TdxBarLargeButton
      Caption = 'Preview'
      Category = 0
      Hint = 'Preview'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000000C744558745469746C65005072696E743BC83632EA0000060E494441
        54785EA5575D885655177EF63967DEF9719A19474B25132C8B4253340AEBD31C
        6FA22ECAFA2C2F0A2A90BAC8E0B32E02454292309A1B2914FAA5FAAE0215ED2A
        A48B52502B27C902514C4AC2149CE6CF99F7ECFF662DF739FBBC338C32B45F16
        FBBCFBACB39F673D6B9DF5EE5778EF511D42089E0024FFFFEAE43789487A00A0
        F4F23EDCF6FC2987033C2F476F7235D61CDEF8F4038F00D0E435112FC3D423F1
        1E3DCF3EBE14FF667CB2EFC4C301C7C4D51B136005AC7130E3A6ADE77062EC31
        C24ABCE142A08832CB048C62DC946E4C83009BD0C6C23AC0398702CA5614F425
        8B08EA4B221E894B417B503000307D02DAC27B22C1092E01194408A002CA9785
        22E42380D479286510A39F660A9431701EB01CB60F51062270013F824E54C50A
        571048A64C8110626A05A481731ED64559F9D3081C5411D55A60BF3401A45255
        05C4F8F0D753403428A00D835BEB0248008D05588245E048D0A6099434054E1A
        1E7561F65502822D4AD504A04549CDE0C63A5E74938B0E40883EBEFFC5353F27
        39059811FA800260825972CA0AE0B7777DB960DEFC85BD499A3E74B2EFE8BC2C
        4D906B4D05185210A078765172462B6A44444504F8592935FEB775D739E53C96
        2C79E09256F90FA7FA8E6CF974F7F6F3442A23F077DEDFBF78E1ED771CBE7FE9
        6D9D7366B5E3E8B1EFB072CDA3F8B5EF34AC454841D1E97CB80E33A222824994
        3A700AB4D6B877E51A7CFFED213CFFE47D73FFBA32F24447477B4FEB8C8EC776
        BFFB7A1FE7A6AB7BCE5BF72DB9B573F6CC36B4B664503287CCC748BE52010672
        00A7A290BF943E10E49548D4596E64BC5F2EEB68AE659879532BFEB37C61C7E5
        CBFD6F02788609382FD6D69A520C8DD4D1DED60C994B68A970FEF471BCF4CA31
        DE3144DC303C1AAA718ACE082C5BB108B22E916529864773348DCF495A5B0DA0
        C629D0D677E4B96686843238308081FE2B58D9B3B652A395DD85C06436C14F54
        FDC063A0BF1F4383039C26671C7265A08D6BA3E0B908294FCA58A469C28D4778
        87F3674E23A3DB2241ADB9B944C9B20C69C68F4594CA30C6C01A53DE564A722A
        ACD19C3A6D1D943665836205B46646686AF2ECB46CF19D3871F22CB2A65A0CB4
        6CBFF1BBE0B28B5D398AC5BE10A1414955C78A65F7502DB129E3A075242094B6
        30E3A633CB15FFC273EB70E2A79DA88F198E5888099D34961BE2989416EEA25A
        4B24C260E30BEBB9204B2C6523015A90E39666AC04E6CC9D8B8FF7ECC07B7BBE
        C0A95FCEA2FFEF01C0314678DD62C40DFDB1580BBD607677D778E47763F3AB2F
        A2B3AB93D24CF23396368659730AE80B31CBB2849C98694BDB0C6CDBB2096992
        909AD31C9188751435171EAF694D249840AC01564019A444403928BE09D46514
        55548B7D8A122C1510D552684C9854960B90300B0584739E19266982BAD2CC10
        55A0384F7F343E4B386CCEFB58032453AE2D92D420CF0DA4B131E2881CC98809
        D106867E821F8212A8DCCF35EF0FEF7CAC0147795296F35D57865F93DD1F1CC4
        D9737FDE30F2C9E9996C772D9A8F4D2FAF2347C2E1343BEFA2028E9B033722D4
        254B84EEEE0E2C5FBA18BB766CC087C7FBD1DE928640A85780BB9A711E170715
        45C692F26F86A319181ED1E8FDEF02BCBAE5337475B66234B462C221730EA502
        CCC6180B651202E782DCF0D42AEC3DF02388A8B216D288B2B01CCF1E57256D14
        081138EF4514F9C3EBAD2D2D58BFEE418C49CD7EFC96595B1C747D0250973443
        63B9E64621B56532172E0FD2CC9129EDB8854AE383919FC7685E9C9A598140C6
        C3B385C0ACC3854B833C33B8F1A8E70ACE99E1E23C90FFF1DB2FAF8DD5EBBD02
        C92C78C038032973B4B6B5C107023273C50184A264F9A58E6B0CD8609ED51B1A
        18C6A71F1D44ADB90D2211EC6BAD19B872F1CC3600578940FDD0FEDEFD00BE06
        500BC7325A6FDDBC7DEFCF14A1A4E8875579D47200A474C8397CC20F469F4010
        81C8CDB7CCC281CF37AF0230128E62FC387D27CBC2E25522523917A6005AB4E1
        1CE38D35F318189573A1AD9C4C7DE517C9230E1FD202E0F780618940304B4604
        7C5C2C0693704AE547B6EEDCB7BAE10F072AC064AE7218291DCB53228C564703
        F868C068E078BD7FC744AE2958FC399C304FBD560AA601E4D3FD77EC2BF95211
        609209DC78B818F9E4F10F4824A6D94EC853CD0000000049454E44AE426082}
      OnClick = btPreviewClick
    end
    object btSearch: TdxBarLargeButton
      Caption = 'Search'
      Category = 0
      Hint = 'Search'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
        3131373744373B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0
        B95F32223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
        4D31332C31374C322C32386C322C326C31312D31316C312D316C2D322D324C31
        332C31377A222F3E0D0A09093C673E0D0A0909093C673E0D0A090909093C7061
        746820636C6173733D22426C75652220643D224D32302C34632D342E342C302D
        382C332E362D382C3873332E362C382C382C3873382D332E362C382D38533234
        2E342C342C32302C347A204D32302C3138632D332E332C302D362D322E372D36
        2D3673322E372D362C362D3673362C322E372C362C3620202623393B2623393B
        2623393B2623393B5332332E332C31382C32302C31387A222F3E0D0A0909093C
        2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = btSearchClick
    end
    object edKabupaten: TcxBarEditItem
      Caption = 'Kabupaten    '
      Category = 0
      Hint = 'Kabupaten    '
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edKabupatenPropertiesButtonClick
    end
    object spTahun: TcxBarEditItem
      Caption = 'Tahun    '
      Category = 0
      Hint = 'Tahun    '
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'Bulan'
      Category = 0
      Hint = 'Bulan'
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
  end
  object QKartuPiutang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM "public"."get_piutang_saldoawal"('#39'2024-11-30'#39');')
    Left = 1012
    Top = 376
    object QKartuPiutangcustomer_code: TMemoField
      FieldName = 'customer_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangcustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      OnGetText = QKartuPiutangcustomer_name_pkpGetText
      BlobType = ftMemo
    end
    object QKartuPiutangcode_region: TMemoField
      FieldName = 'code_region'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangname_region: TMemoField
      FieldName = 'name_region'
      ReadOnly = True
      OnGetText = QKartuPiutangname_regionGetText
      BlobType = ftMemo
    end
    object QKartuPiutangamount_receivable: TFloatField
      FieldName = 'amount_receivable'
      ReadOnly = True
    end
    object QKartuPiutangpaid_amount: TFloatField
      FieldName = 'paid_amount'
      ReadOnly = True
    end
    object QKartuPiutangtotal_receivables: TFloatField
      FieldName = 'total_receivables'
      ReadOnly = True
    end
  end
  object DsKartuPiutang: TDataSource
    DataSet = QKartuPiutang
    Left = 1097
    Top = 376
  end
  object QKartuPiutangTRX: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT * FROM "public"."get_piutang_trx"('#39'2024-10-30'#39','#39'2024-11-3' +
        '0'#39');')
    Left = 1012
    Top = 488
    object QKartuPiutangTRXcustomer_code: TMemoField
      FieldName = 'customer_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangTRXcustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangTRXcode_region: TMemoField
      FieldName = 'code_region'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangTRXname_region: TMemoField
      FieldName = 'name_region'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangTRXtrans_no: TMemoField
      FieldName = 'trans_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangTRXtgltrans: TDateField
      FieldName = 'tgltrans'
      ReadOnly = True
    end
    object QKartuPiutangTRXsaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      ReadOnly = True
    end
    object QKartuPiutangTRXdebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
    end
    object QKartuPiutangTRXkredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
    end
    object QKartuPiutangTRXno_urut: TMemoField
      FieldName = 'no_urut'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuPiutangTRXketerangan: TMemoField
      FieldName = 'keterangan'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object dsKartuPiutangTRX: TDataSource
    DataSet = QKartuPiutangTRX
    Left = 1105
    Top = 488
  end
  object MemMaster: TMemTableEh
    Params = <>
    Left = 152
    Top = 520
    object MemMasternama_pelanggan: TStringField
      FieldName = 'nama_pelanggan'
      Size = 50
    end
    object MemMasteralamat: TStringField
      FieldName = 'alamat'
      Size = 255
    end
    object MemMastersaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemMasterkode_pelanggan: TStringField
      FieldName = 'kode_pelanggan'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object nama_pelanggan: TMTStringDataFieldEh
          FieldName = 'nama_pelanggan'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object alamat: TMTStringDataFieldEh
          FieldName = 'alamat'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object kode_pelanggan: TMTStringDataFieldEh
          FieldName = 'kode_pelanggan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object saldo_awal: TMTNumericDataFieldEh
          FieldName = 'saldo_awal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          DisplayFormat = '#,##0.##'
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsMaster: TDataSource
    DataSet = MemMaster
    Left = 80
    Top = 520
  end
  object dsMasterDetail: TDataSource
    DataSet = MemMasterDetail
    Left = 304
    Top = 528
  end
  object MemMasterDetail: TMemTableEh
    DetailFields = 'kode_cust'
    MasterFields = 'kode_pelanggan'
    MasterSource = dsMaster
    Params = <>
    Left = 408
    Top = 528
    object MemMasterDetailkode_cust: TStringField
      FieldName = 'kode_cust'
      Size = 50
    end
    object MemMasterDetailnama_cust: TStringField
      FieldName = 'nama_cust'
      Size = 255
    end
    object MemMasterDetailtrans_no: TStringField
      FieldName = 'trans_no'
      Size = 255
    end
    object MemMasterDetailtgltrans: TDateField
      FieldName = 'tgltrans'
    end
    object MemMasterDetailsaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemMasterDetaildebet: TFloatField
      FieldName = 'debet'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemMasterDetailkredit: TFloatField
      FieldName = 'kredit'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemMasterDetailno_urut: TStringField
      FieldName = 'no_urut'
    end
    object MemMasterDetailketerangan: TStringField
      FieldName = 'keterangan'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kode_cust: TMTStringDataFieldEh
          FieldName = 'kode_cust'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object nama_cust: TMTStringDataFieldEh
          FieldName = 'nama_cust'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object trans_no: TMTStringDataFieldEh
          FieldName = 'trans_no'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object tgltrans: TMTDateTimeDataFieldEh
          FieldName = 'tgltrans'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object saldo_awal: TMTNumericDataFieldEh
          FieldName = 'saldo_awal'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object debet: TMTNumericDataFieldEh
          FieldName = 'debet'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object kredit: TMTNumericDataFieldEh
          FieldName = 'kredit'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object no_urut: TMTStringDataFieldEh
          FieldName = 'no_urut'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * from ('
      'SELECT '
      
        '    ROW_NUMBER() OVER (PARTITION BY customer_code ORDER BY no_ur' +
        'ut, tgltrans ASC) AS nomor,'
      '    *,'
      
        '    ROUND(CAST(SUM(saldo_awal + debet - kredit) OVER (PARTITION ' +
        'BY customer_code ORDER BY no_urut, tgltrans ASC) AS NUMERIC), 2)' +
        ' AS saldo'
      'FROM ('
      '    SELECT '
      
        '        customer_code, customer_name_pkp, code_region, name_regi' +
        'on, trans_no, tgltrans, saldo_awal, no_urut, keterangan, keteran' +
        'gan2, debet, kredit'
      '    FROM '
      '        "public"."get_piutang_trx" ('#39'2024-11-01'#39', '#39'2024-11-30'#39') '
      '    ORDER BY '
      '        customer_code, no_urut, tgltrans ASC'
      ') AS subquery'
      'ORDER BY customer_code, nomor) trx'
      
        'LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" as' +
        ' name_kab,  "code_karesidenan"  from t_region_regency WHERE dele' +
        'ted_at IS NULL)b   ON "left"(code_region, 4)=b.code_kab')
    Left = 860
    Top = 72
    object QCetaknomor: TLargeintField
      FieldName = 'nomor'
      ReadOnly = True
    end
    object QCetakcustomer_code: TMemoField
      FieldName = 'customer_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakcustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakcode_region: TMemoField
      FieldName = 'code_region'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakname_region: TMemoField
      FieldName = 'name_region'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetaktrans_no: TMemoField
      FieldName = 'trans_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetaktgltrans: TDateField
      FieldName = 'tgltrans'
      ReadOnly = True
    end
    object QCetaksaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      ReadOnly = True
    end
    object QCetakno_urut: TMemoField
      FieldName = 'no_urut'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakketerangan: TMemoField
      FieldName = 'keterangan'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakdebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
    end
    object QCetakkredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
    end
    object QCetaksaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
    end
    object QCetakcode_province: TStringField
      FieldName = 'code_province'
      ReadOnly = True
      Size = 255
    end
    object QCetakcode_kab: TStringField
      FieldName = 'code_kab'
      ReadOnly = True
      Size = 255
    end
    object QCetakname_kab: TStringField
      FieldName = 'name_kab'
      ReadOnly = True
      Size = 255
    end
    object QCetakcode_karesidenan: TStringField
      FieldName = 'code_karesidenan'
      ReadOnly = True
      Size = 255
    end
    object QCetakketerangan2: TMemoField
      FieldName = 'keterangan2'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxDBDKartuPiutang: TfrxDBDataset
    UserName = 'frxDBDKartuPiutang'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nomor=nomor'
      'customer_code=customer_code'
      'customer_name_pkp=customer_name_pkp'
      'code_region=code_region'
      'name_region=name_region'
      'trans_no=trans_no'
      'tgltrans=tgltrans'
      'saldo_awal=saldo_awal'
      'no_urut=no_urut'
      'keterangan=keterangan'
      'debet=debet'
      'kredit=kredit'
      'saldo=saldo'
      'code_province=code_province'
      'code_kab=code_kab'
      'name_kab=name_kab'
      'code_karesidenan=code_karesidenan'
      'keterangan2=keterangan2')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 944
    Top = 72
  end
  object dsCetak: TDataSource
    DataSet = QCetak
    Left = 1041
    Top = 72
  end
  object Report: TfrxReport
    Version = '2022.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45643.600177372700000000
    ReportOptions.LastChange = 45643.646060706020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 1032
    Top = 40
    Datasets = <
      item
        DataSet = frxDBDKartuPiutang
        DataSetName = 'frxDBDKartuPiutang'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 333.000000000000000000
      PaperHeight = 217.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 15.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 18.897650000000000000
        Visible = False
        Width = 1182.992890000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677167800000000000
        Top = 328.819110000000000000
        Width = 1182.992890000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBDKartuPiutang
        DataSetName = 'frxDBDKartuPiutang'
        RowCount = 0
        Stretched = True
        object frxDBDKartuPiutangdebit: TfrxMemoView
          AllowVectorExport = True
          Left = 388.937230000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."debet"]')
          ParentFont = False
        end
        object frxDBDKartuPiutangkredit: TfrxMemoView
          AllowVectorExport = True
          Left = 482.443616090000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."kredit"]')
          ParentFont = False
        end
        object frxDBDKartuPiutangtanggal: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Width = 60.472440940000000000
          Height = 18.897637800000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."tgltrans"]')
          ParentFont = False
        end
        object frxDBDKartuPiutangnofakturpajak: TfrxMemoView
          AllowVectorExport = True
          Left = 69.590600000000000000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."trans_no"]')
          ParentFont = False
        end
        object lbketerangan: TfrxMemoView
          AllowVectorExport = True
          Left = 161.299320000000000000
          Width = 219.212740000000000000
          Height = 26.456697800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."keterangan2"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 578.268090000000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."saldo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 434.645950000000000000
        Width = 1182.992890000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Shape1: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 1182.992890000000000000
          Height = 22.677180000000000000
          Frame.Typ = []
        end
        object totalsaldokhir1: TfrxMemoView
          AllowVectorExport = True
          Left = 575.795275590000000000
          Top = 3.779527560000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDKartuPiutang."saldo_awal">)+SUM(<frxDBDKartuPiutang.' +
              '"debet">,MasterData1)-SUM(<frxDBDKartuPiutang."kredit">,MasterDa' +
              'ta1)]')
          ParentFont = False
        end
        object totalkredit1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 483.259842520000000000
          Top = 3.779527560000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDKartuPiutang."kredit">,MasterData1)]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 3.779527560000000000
          Width = 147.401670000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 219.212740000000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
        object totaldebit2: TfrxMemoView
          AllowVectorExport = True
          Left = 386.645683940000000000
          Top = 3.779527560000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Visible = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          ParentFont = False
        end
        object totaldebit1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 387.259783940000000000
          Top = 3.779527560000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDKartuPiutang."debet">,MasterData1)]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 306.141930000000000000
        Width = 1182.992890000000000000
        Condition = 'frxDBDKartuPiutang."customer_code"'
        ResetPageNumbers = True
        StartNewPage = True
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 204.212740000000000000
        Top = 41.574830000000000000
        Width = 1182.992890000000000000
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 51.779530000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama Piutang')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 79.456710000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Karesidenan')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 111.133890000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kab / Kodya')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 814.094930000000000000
          Top = 51.779530000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Piutang')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 814.094930000000000000
          Top = 79.456710000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Jangka Kredit')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 814.094930000000000000
          Top = 111.133890000000000000
          Width = 128.504020000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Bulan')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 52.779530000000000000
          Width = 7.559060000000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 79.196866670000000000
          Width = 7.559060000000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 147.401670000000000000
          Top = 109.614203330000000000
          Width = 7.559060000000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 946.378480000000000000
          Top = 51.779530000000000000
          Width = 7.559060000000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 946.378480000000000000
          Top = 78.196866670000000000
          Width = 7.559060000000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 946.378480000000000000
          Top = 108.614203330000000000
          Width = 7.559060000000000000
          Height = 21.417336670000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 12.000000000000000000
          Width = 1182.992125980000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KARTU PIUTANG')
          ParentFont = False
        end
        object nama_PT: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 12.047244090000000000
          Width = 105.826840000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT.HKJ')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 46.574830000000000000
          Width = 1182.992125984250000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Top = 144.063080000000000000
          Width = 1182.992125984250000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 4.559060000000000000
          Top = 158.960730000000000000
          Width = 60.472480000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 69.590600000000000000
          Top = 150.842610000000000000
          Width = 86.929190000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor Faktur Penjualan')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 162.504020000000000000
          Top = 158.960730000000000000
          Width = 222.992270000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 389.929133860000000000
          Top = 158.960730000000000000
          Width = 86.929133860000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Debet')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 483.480314960000000000
          Top = 158.960730000000000000
          Width = 86.929133860000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 575.787401570000000000
          Top = 158.960730000000000000
          Width = 86.929133860000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
          ParentFont = False
        end
        object jangka_kredit: TfrxMemoView
          AllowVectorExport = True
          Left = 957.717070000000000000
          Top = 78.811070000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '30 Hari')
          ParentFont = False
        end
        object frxDBDKartuPiutangoutlet_name: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 53.913420000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."customer_name_pkp"]')
          ParentFont = False
        end
        object frxDBDKartuPiutangnama_kecamatan: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 81.590600000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."code_karesidenan"]')
          ParentFont = False
        end
        object frxDBDKartuPiutangnama_kabupaten: TfrxMemoView
          AllowVectorExport = True
          Left = 158.740260000000000000
          Top = 113.267780000000000000
          Width = 408.189240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."name_kab"]')
          ParentFont = False
        end
        object frxDBDKartuPiutangoutlet_code: TfrxMemoView
          AllowVectorExport = True
          Left = 957.717070000000000000
          Top = 51.133890000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'frxDBDKartuPiutangoutlet_codeOnBeforePrint'
          DataSet = frxDBDKartuPiutang
          DataSetName = 'frxDBDKartuPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuPiutang."customer_code"]')
          ParentFont = False
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 957.717070000000000000
          Top = 110.488250000000000000
          Width = 211.653680000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Maret 2024')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Top = 200.094620000000000000
          Width = 1182.992125980000000000
          Color = clBlack
          Frame.Style = fsDouble
          Frame.Typ = [ftTop]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 665.488560000000000000
          Top = 152.519790000000000000
          Width = 63.759027820000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal'
            'Diterima')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 732.638220000000000000
          Top = 158.519790000000000000
          Width = 59.979497820000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Bank')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 794.008350000000000000
          Top = 154.519790000000000000
          Width = 78.877147820000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor'
            'Check/Giro')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 877.158010000000000000
          Top = 155.519790000000000000
          Width = 82.656677820000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal'
            'Jatuh Tempo')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 962.528140000000000000
          Top = 161.299320000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1027.457330000000000000
          Top = 154.299320000000000000
          Width = 64.252010000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal'
            'Disetor')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 1091.693570000000000000
          Top = 161.299320000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Catatan')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 68.031540000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 160.299320000000000000
          Top = 143.622140000000000000
          Height = 600.944881890000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 385.819110000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 480.086890000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 573.677490000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 665.945270000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 733.417750000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 794.685530000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 876.276130000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 961.543910000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 1028.221090000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 1093.488870000000000000
          Top = 143.622140000000000000
          Height = 600.944881889764000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 374.173470000000000000
        Width = 1182.992890000000000000
      end
    end
  end
end
