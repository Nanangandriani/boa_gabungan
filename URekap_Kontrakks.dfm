object FRekapKontrak: TFRekapKontrak
  Left = 0
  Top = 0
  Caption = 'Rekap Kontrak Kerjasama'
  ClientHeight = 601
  ClientWidth = 935
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
  TextHeight = 13
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 935
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end>
      Index = 0
    end
  end
  object DBGridKontrak: TDBGridEh
    Left = 0
    Top = 127
    Width = 935
    Height = 474
    Align = alClient
    DataGrouping.GroupLevels = <
      item
      end
      item
      end>
    DataSource = DsKerjasama
    DrawMemoText = True
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    RowDetailPanel.Active = True
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'contract_no'
        Footers = <>
        Title.Caption = 'No. Kontrak'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'contract_date'
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 70
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Nama Supplier'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_name'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 168
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Kuantum'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'unit'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 85
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'price'
        Footers = <>
        Title.Caption = 'Harga'
        Visible = False
        Width = 109
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'remaining_qty'
        Footers = <>
        Title.Caption = 'Belum Dikirim'
        Width = 106
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 0
        Width = 810
        Height = 118
        Align = alClient
        DataSource = DsKerjasama_det
        DynProps = <>
        FooterRowCount = 1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        SumList.Active = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'contract_no'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'po_no'
            Footers = <>
            Title.Caption = 'No. PO'
            Width = 140
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'item_stock_code'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'po_date'
            Footers = <>
            Title.Caption = 'Tanggal'
            Width = 77
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'qty'
            Footer.Alignment = taRightJustify
            Footer.DisplayFormat = '#,##'
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Kuantum'
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'unit'
            Footers = <>
            Title.Caption = 'Satuan'
            Width = 88
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DsKerjasama: TDataSource
    DataSet = Memkerjasama
    Left = 41
    Top = 248
  end
  object QKerjasama: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select'#9'A.contract_no,b.supplier_name,d.item_name,c.qty,c.unit,c.' +
        'price,c.remaining_qty,a.contract_date,c.item_stock_code from t_c' +
        'oop_contract A inner join t_supplier B on A.supplier_code=B.supp' +
        'lier_code '
      
        'INNER JOIN t_coop_contract_det AS "c" on a. contract_no=c.contra' +
        'ct_no'
      
        'INNER JOIN t_item_stock AS d'#9'ON c.item_stock_code = d.item_stock' +
        '_code'
      'order by a.id Desc')
    Left = 44
    Top = 192
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QKerjasama
    Left = 128
    Top = 240
  end
  object Memkerjasama: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 129
    Top = 180
  end
  object QKerjasama_det: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT'#9'a.contract_no, a.po_no,b.item_stock_code,a.po_date,b.qty,' +
        'b.unit from t_po a  INNER JOIN '
      't_podetail b on b.po_no=a.po_no order by a.po_date asc')
    MasterSource = DsKerjasama
    MasterFields = 'contract_no;item_stock_code'
    DetailFields = 'contract_no;item_stock_code'
    Left = 424
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contract_no'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'item_stock_code'
        Value = nil
      end>
  end
  object DsKerjasama_det: TDataSource
    DataSet = QKerjasama_det
    Left = 489
    Top = 48
  end
  object ActMenu: TActionManager
    Left = 216
    Top = 184
    StyleName = 'Platform Default'
    object ActBaru: TAction
      Caption = 'Baru  '
    end
    object ActUpdate: TAction
      Caption = 'Update  '
    end
    object ActRo: TAction
      Caption = 'Refresh  '
    end
    object ActDel: TAction
      Caption = 'Delete  '
    end
    object ActPrint: TAction
      Caption = 'Print  '
    end
    object ActApp: TAction
      Caption = 'Approve  '
      Enabled = False
      Visible = False
    end
    object ActReject: TAction
      Caption = 'Reject  '
      Enabled = False
      Visible = False
    end
    object ActClose: TAction
      Caption = 'CLose Kontrak    '
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
    Left = 728
    Top = 32
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 805
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtmulai'
        end
        item
          Visible = True
          ItemName = 'dtselesai'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Print'
      Category = 0
      Hint = 'Print'
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
      OnClick = dxBarLargeButton1Click
    end
    object DxRefresh: TdxBarLargeButton
      Caption = 'Cari'
      Category = 0
      Hint = 'Cari'
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
      OnClick = DxRefreshClick
    end
    object dtmulai: TcxBarEditItem
      Caption = 'Tanggal Awal '
      Category = 0
      Hint = 'Tanggal Awal '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dtselesai: TcxBarEditItem
      Caption = 'Tanggal Akhir'
      Category = 0
      Hint = 'Tanggal Akhir'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
  end
end
