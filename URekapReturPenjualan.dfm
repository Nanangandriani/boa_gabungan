object FRekapReturPenjualan: TFRekapReturPenjualan
  Left = 0
  Top = 0
  Caption = 'Rekap Retur Penjualan'
  ClientHeight = 671
  ClientWidth = 1134
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
    Width = 1134
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
  object DBGrid: TDBGridEh
    Left = 0
    Top = 127
    Width = 1134
    Height = 544
    Align = alClient
    DataSource = DsRekapReturPenjualan
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Caption = 'Nomor Transaksi'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_cust'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_cust'
        Footers = <>
        Title.Caption = 'Nama Pelanggan'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_region'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_region'
        Footers = <>
        Title.Caption = 'Wilayah'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_item'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_item'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'amount'
        Footers = <>
        Title.Caption = 'Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_unit'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 50
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_unit'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nilaidpp'
        Footers = <>
        Title.Caption = 'Nilai | DPP'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nilaippn'
        Footers = <>
        Title.Caption = 'Nilai | PPn'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'grandtotal'
        Footers = <>
        Title.Caption = 'Nilai | Netto'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
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
          UserDefine = [udWidth]
          UserWidth = 154
          Visible = True
          ItemName = 'dtAwal'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 156
          Visible = True
          ItemName = 'dtAkhir'
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
      DockedLeft = 608
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
    object btExportExcel: TdxBarLargeButton
      Caption = 'Export Excel'
      Category = 0
      Hint = 'Export Excel'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E477265656E7B66696C6C3A233033394332
        333B7D262331333B262331303B2623393B2E426C61636B7B66696C6C3A233732
        373237323B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61
        636B2220643D224D382C3468313876366832563363302D302E352D302E352D31
        2D312D31483743362E352C322C362C322E352C362C337637683256347A222F3E
        0D0A3C7061746820636C6173733D22426C61636B2220643D224D32362C323848
        38762D392E32483656323963302C302E352C302E352C312C312C316832306330
        2E352C302C312D302E352C312D315631382E38682D325632387A222F3E0D0A3C
        7061746820636C6173733D22477265656E2220643D224D32392C38483543342E
        342C382C342C382E342C342C3976313063302C302E362C302E342C312C312C31
        68323463302E362C302C312D302E342C312D3156394333302C382E342C32392E
        362C382C32392C387A204D31312E362C31386C2D312E322D322E362020262339
        3B63302D302E312D302E312D302E332D302E312D302E356C302C3063302C302E
        312D302E312C302E332D302E322C302E364C382E382C313848362E396C322E33
        2D346C2D322E312D3468326C312C322E3463302E312C302E322C302E322C302E
        342C302E322C302E376C302C3020202623393B63302D302E322C302E312D302E
        342C302E322D302E376C312E312D322E3468312E386C2D322E322C346C322E32
        2C344831312E367A204D31392E382C3138682D342E33762D3868312E3676362E
        3568322E375631387A204D32352E382C31362E38632D302E322C302E332D302E
        342C302E352D302E362C302E3720202623393B732D302E362C302E332D302E39
        2C302E344332332E392C31382C32332E352C31382C32332E312C3138732D302E
        382C302D312E312D302E31632D302E342D302E312D302E372D302E322D302E39
        2D302E33762D312E3763302E332C302E332C302E362C302E352C312C302E3620
        202623393B63302E332C302E312C302E372C302E322C312C302E3263302E322C
        302C302E342C302C302E352D302E3163302E322C302C302E332D302E312C302E
        342D302E3273302E322D302E322C302E322D302E3263302D302E312C302E312D
        302E322C302E312D302E3363302D302E322C302D302E332D302E312D302E3420
        202623393B632D302E312D302E312D302E322D302E322D302E332D302E33732D
        302E332D302E322D302E352D302E33732D302E342D302E322D302E362D302E33
        632D302E362D302E332D312D302E362D312E332D302E39632D302E332D302E34
        2D302E342D302E382D302E342D312E3363302D302E342C302E312D302E372C30
        2E322D3120202623393B63302E322D302E332C302E342D302E352C302E362D30
        2E3763302E332D302E322C302E362D302E332C302E392D302E3473302E372D30
        2E312C312E312D302E3173302E372C302C312C302E3163302E332C302C302E36
        2C302E312C302E382C302E3276312E36632D302E312D302E312D302E332D302E
        322D302E342D302E3220202623393B732D302E332D302E312D302E342D302E32
        632D302E322C302D302E332D302E312D302E352D302E31632D302E312C302D30
        2E332C302D302E342C30632D302E322C302D302E342C302D302E352C302E3163
        2D302E322C302D302E332C302E312D302E342C302E3220202623393B632D302E
        312C302E312D302E322C302E322D302E322C302E32632D302E312C302E312D30
        2E312C302E322D302E312C302E3373302C302E322C302E312C302E3373302E32
        2C302E322C302E332C302E3363302E312C302E312C302E332C302E322C302E34
        2C302E3320202623393B63302E322C302E312C302E342C302E322C302E362C30
        2E3363302E332C302E312C302E352C302E332C302E382C302E3463302E322C30
        2E312C302E342C302E332C302E362C302E3573302E332C302E342C302E342C30
        2E3663302E312C302E322C302E312C302E352C302E312C302E3820202623393B
        4332362C31362E312C32352E392C31362E352C32352E382C31362E387A222F3E
        0D0A3C2F7376673E0D0A}
    end
    object btExportPDF: TdxBarLargeButton
      Caption = 'Export PDF'
      Category = 0
      Hint = 'Export PDF'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344313143
        31433B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C61636B
        2220643D224D382C3468313876366832563363302D302E352D302E352D312D31
        2D31483743362E352C322C362C322E352C362C337637683256347A222F3E0D0A
        3C7061746820636C6173733D22426C61636B2220643D224D32362C3238483856
        3136483676313363302C302E352C302E352C312C312C3168323063302E352C30
        2C312D302E352C312D31563136682D325632387A222F3E0D0A3C706174682063
        6C6173733D225265642220643D224D31302E332C31312E3648392E3656313468
        302E3663302E392C302C312E332D302E342C312E332D312E324331312E352C31
        322C31312E312C31312E362C31302E332C31312E367A222F3E0D0A3C70617468
        20636C6173733D225265642220643D224D31362E372C31312E37682D302E3876
        342E3968302E3863302E372C302C312E332D302E322C312E362D302E3773302E
        362D312E312C302E362D312E38732D302E322D312E332D302E362D312E374331
        382C31312E392C31372E342C31312E372C31362E372C31312E377A2020262339
        3B222F3E0D0A3C7061746820636C6173733D225265642220643D224D32392C38
        483543342E342C382C342C382E342C342C3976313063302C302E362C302E342C
        312C312C3168323463302E362C302C312D302E342C312D3156394333302C382E
        342C32392E362C382C32392C387A204D31322E352C31342E3620202623393B63
        2D302E352C302E352D312E322C302E372D322E312C302E3748392E3656313848
        38762D372E3768322E3563312E382C302C322E372C302E382C322E372C322E35
        4331332E322C31332E352C31332C31342E322C31322E352C31342E367A204D31
        392E362C31362E3920202623393B4331382E392C31372E362C31382C31382C31
        362E382C3138682D322E35762D372E3768322E3563322E352C302C332E382C31
        2E332C332E382C332E384332302E372C31352E332C32302E332C31362E322C31
        392E362C31362E397A204D32362C31312E37682D322E3576312E3968322E3356
        3135682D322E33763320202623393B682D312E36762D372E374832365631312E
        377A222F3E0D0A3C2F7376673E0D0A}
    end
    object dtAwal: TcxBarEditItem
      Caption = 'Tanggal Awal  '
      Category = 0
      Hint = 'Tanggal Awal  '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dtAkhir: TcxBarEditItem
      Caption = 'Tanggal Akhir '
      Category = 0
      Hint = 'Tanggal Akhir '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
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
  end
  object QRekapReturPenjualan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * from "public"."vrekap_returpenjualan"')
    Left = 1012
    Top = 376
    object QRekapReturPenjualantrans_no: TStringField
      FieldName = 'trans_no'
      Size = 255
    end
    object QRekapReturPenjualantrans_date: TDateField
      FieldName = 'trans_date'
    end
    object QRekapReturPenjualancode_cust: TStringField
      FieldName = 'code_cust'
      Size = 255
    end
    object QRekapReturPenjualanname_cust: TStringField
      FieldName = 'name_cust'
      Size = 255
    end
    object QRekapReturPenjualancode_region: TStringField
      FieldName = 'code_region'
      Size = 50
    end
    object QRekapReturPenjualanname_region: TStringField
      FieldName = 'name_region'
      Size = 255
    end
    object QRekapReturPenjualancode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object QRekapReturPenjualanname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object QRekapReturPenjualanamount: TFloatField
      FieldName = 'amount'
    end
    object QRekapReturPenjualancode_unit: TStringField
      FieldName = 'code_unit'
      Size = 100
    end
    object QRekapReturPenjualanname_unit: TStringField
      FieldName = 'name_unit'
      Size = 255
    end
    object QRekapReturPenjualannilaidpp: TFloatField
      FieldName = 'nilaidpp'
    end
    object QRekapReturPenjualannilaippn: TFloatField
      FieldName = 'nilaippn'
    end
    object QRekapReturPenjualangrandtotal: TFloatField
      FieldName = 'grandtotal'
    end
  end
  object DsRekapReturPenjualan: TDataSource
    DataSet = QRekapReturPenjualan
    Left = 1089
    Top = 376
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
    PreviewOptions.ZoomMode = zmWholePage
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45545.574615104200000000
    ReportOptions.LastChange = 45642.945645891200000000
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
        DataSet = frxDBDBHPenjualan
        DataSetName = 'frxDBDBHPenjualan'
      end
      item
        DataSet = frxDBDBHPenj_det
        DataSetName = 'frxDBDBHPenj_det'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'vTerbilang_qty'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 149.960712910000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object nama_pt: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 98.267780000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'nama_pt')
          ParentFont = False
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 43.015770000000000000
          Width = 952.441560000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'periode')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 97.267780000000000000
          Width = 1084.725110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Top = 11.795300000000000000
          Width = 952.441560000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP RETUR PENJUALAN')
          ParentFont = False
        end
        object wilayah: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 73.047310000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Wilayah :')
          ParentFont = False
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 148.196970000000000000
          Width = 1084.725110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Height = 147.401547950000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 384.260050000000000000
          Top = 97.133858270000000000
          Height = 525.354330710000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 4.779530000000000000
          Top = 115.181200000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No.')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 102.015770000000000000
          Top = 115.070807560000000000
          Width = 124.985213520000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Faktur')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 229.943345890000000000
          Top = 115.070807560000000000
          Width = 149.982256230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Penerima Barang')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 385.348138220000000000
          Top = 115.070807560000000000
          Width = 149.982256230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Barang')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 229.299320000000000000
          Top = 97.133858270000000000
          Height = 525.354330710000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 99.795300000000000000
          Top = 97.133858270000000000
          Height = 525.354547950000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Height = 98.267657950000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 538.628300210000000000
          Top = 115.165430000000000000
          Width = 59.367976420000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Qty')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 600.947631550000000000
          Top = 115.165430000000000000
          Width = 78.115758450000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 101.826840000000000000
          Width = 105.826783860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Debit')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 796.303150360000000000
          Top = 102.047310000000000000
          Width = 280.862899640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 128.504020000000000000
          Width = 105.826783860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Piutang Dagang')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 986.703821090000000000
          Top = 126.504020000000000000
          Width = 90.462228910000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Lain-Lain')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 889.818420720000000000
          Top = 126.504020000000000000
          Width = 89.996634640000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PPN Keluaran')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 796.507850360000000000
          Top = 126.504020000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Penjualan')
          ParentFont = False
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 536.441250000000000000
          Top = 97.133858270000000000
          Height = 525.354330710000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 599.693260000000000000
          Top = 97.133858270000000000
          Height = 525.354330710000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 681.842920000000000000
          Top = 98.267780000000000000
          Height = 555.590551180000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 793.228820000000000000
          Top = 98.267780000000000000
          Height = 555.590570710000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 888.394250000000000000
          Top = 123.504020000000000000
          Height = 529.133860710000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 983.559680000000000000
          Top = 123.504020000000000000
          Height = 529.133858267717000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = 684.535870000000000000
          Top = 122.724490000000000000
          Width = 404.409710000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 98.267780000000000000
          Height = 525.354547950000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 37.795300000000000000
          Top = 114.385900000000000000
          Width = 60.733203520000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 272.126160000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDBHPenjualan
        DataSetName = 'frxDBDBHPenjualan'
        RowCount = 0
        Stretched = True
        object Memo26: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 702.992580000000000000
          Width = 86.929133860000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."tot_piutang"]')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 797.480830000000000000
          Width = 86.929133860000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."tot_pejualan"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 891.969080000000000000
          Width = 86.929190000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."tot_ppn"]')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Width = 1084.725110000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 133.488250000000000000
        Top = 355.275820000000000000
        Width = 1084.725110000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = 384.512060000000000000
          Width = 700.346456690000000000
          Height = 30.236240000000000000
          Frame.Typ = [ftRight]
        end
        object kota_tanggal: TfrxMemoView
          AllowVectorExport = True
          Left = 389.291590000000000000
          Top = 3.779530000000000000
          Width = 291.023810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 45.354360000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Mengetahui,')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 45.354360000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat Oleh,')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 396.850650000000000000
          Top = 107.031540000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(___________________________)')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 854.173780000000000000
          Top = 107.031540000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(___________________________)')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Width = 1084.725110000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 702.992179690000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenjualan."tot_piutang">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 797.480341810000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenjualan."tot_pejualan">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo4: TfrxSysMemoView
          AllowVectorExport = True
          Left = 891.968503940000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenjualan."tot_ppn">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 986.456692910000000000
          Top = 3.779530000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
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
        Height = 18.897637800000000000
        Top = 230.551330000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDBHPenjualan."trans_no"'
        object Subreport1: TfrxSubreport
          AllowVectorExport = True
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = Report.Page2
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#]')
          ParentFont = False
        end
        object frxDBDBHPenjualantrans_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 100.795300000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."trans_no"]')
          ParentFont = False
        end
        object frxDBDBHPenjualanname_cust: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 229.299320000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'name_cust'
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."name_cust"]')
          ParentFont = False
        end
        object frxDBDBHPenjualantrans_date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 38.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = 'dd mmm yy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."trans_date"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 0.000019530000000000
        Top = 294.803340000000000000
        Width = 1084.725110000000000000
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 41.574830000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDBHPenj_det
        DataSetName = 'frxDBDBHPenj_det'
        RowCount = 0
        Stretched = True
        object Memo28: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 384.260050000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."name_item"]')
          ParentFont = False
        end
        object Memo29: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 537.220780000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."amount"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 603.472790000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."code_unit"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object frxDBDBHPenjualanjum_ak_deb: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 699.213050000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."jum_ak_deb"]')
          ParentFont = False
        end
        object frxDBDBHPenjualanjum_ak_kre: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 793.701300000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."jum_ak_kre"]')
          ParentFont = False
        end
        object frxDBDBHPenjualanppn_ak_kre: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 888.189550000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."ppn_ak_kre"]')
          ParentFont = False
        end
        object frxDBDBHPenjualanjum_ak_kre_lain: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 982.677800000000000000
          Width = 98.267780000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_det."jum_ak_kre_lain"]')
          ParentFont = False
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Top = 18.897650000000000000
        Visible = False
        Width = 1084.725110000000000000
        Condition = 'frxDBDBHPenjualan."trans_no"'
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236220470000000000
        Top = 83.149660000000000000
        Visible = False
        Width = 1084.725110000000000000
        object Shape2: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 1084.725110000000000000
          Height = 30.236220470000000000
          Frame.Typ = [ftRight]
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 386.512060000000000000
          Top = 3.779530000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 703.992179690000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenj_det."jum_ak_deb">,MasterData2)]')
          ParentFont = False
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 798.480341810000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenj_det."jum_ak_kre">,MasterData2)]')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 892.968503940000000000
          Top = 3.779530000000000000
          Width = 86.929133860000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenj_det."ppn_ak_kre">,MasterData2)]')
          ParentFont = False
        end
        object SysMemo9: TfrxSysMemoView
          AllowVectorExport = True
          Left = 987.456692910000000000
          Top = 3.779530000000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%0.0n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHPenj_det."jum_ak_kre_lain">,MasterData2)]')
          ParentFont = False
        end
      end
    end
  end
  object dsCetakdetail: TDataSource
    DataSet = QCetakdetail
    Left = 1041
    Top = 128
  end
  object frxDBDBHPenj_det: TfrxDBDataset
    UserName = 'frxDBDBHPenj_det'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'trans_date=trans_date'
      'code_cust=code_cust'
      'name_cust=name_cust'
      'code_region=code_region'
      'name_region=name_region'
      'code_item=code_item'
      'name_item=name_item'
      'amount=amount'
      'code_unit=code_unit'
      'name_unit=name_unit'
      'akn_debet=akn_debet'
      'nm_debit_deb=nm_debit_deb'
      'jum_ak_deb=jum_ak_deb'
      'akn_debet_lain=akn_debet_lain'
      'nm_debit_lain=nm_debit_lain'
      'jum_ak_deb_lain=jum_ak_deb_lain'
      'akn_kredit=akn_kredit'
      'nm_debit_kre=nm_debit_kre'
      'jum_ak_kre=jum_ak_kre'
      'ppn_ak_kre=ppn_ak_kre'
      'akn_kre_lain=akn_kre_lain'
      'nm_kre_lain=nm_kre_lain'
      'jum_ak_kre_lain=jum_ak_kre_lain')
    DataSet = QCetakdetail
    BCDToCurrency = False
    DataSetOptions = []
    Left = 944
    Top = 128
  end
  object frxDBDBHPenjualan: TfrxDBDataset
    UserName = 'frxDBDBHPenjualan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'trans_date=trans_date'
      'code_cust=code_cust'
      'name_cust=name_cust'
      'code_region=code_region'
      'name_region=name_region'
      'tot_piutang=tot_piutang'
      'tot_pejualan=tot_pejualan'
      'tot_ppn=tot_ppn')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 944
    Top = 72
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        ' SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.custo' +
        'mer_name_pkp IS NULL THEN a.name_cust ELSE d.customer_name_pkp E' +
        'ND AS name_cust, d.code_region, d.name_region, grand_tot as tot_' +
        'piutang, '
      
        'sub_total as tot_pejualan, ppn_value as tot_ppn FROM t_sales_ret' +
        'urns a'
      
        '  LEFT JOIN ( SELECT t_customer.customer_code, t_customer.custom' +
        'er_name_pkp, t_customer.code_region, t_customer.name_region FROM' +
        ' t_customer) d ON a.code_cust::text = d.customer_code::text'
      
        #9'LEFT JOIN (SELECT "code_province", "code" as code_kab, "name" a' +
        's name_kab, "code_karesidenan"  from t_region_regency WHERE dele' +
        'ted_at IS NULL)b ON "left"(code_region, 4)=b.code_kab')
    Left = 860
    Top = 72
    object QCetaktrans_no: TStringField
      FieldName = 'trans_no'
      Size = 255
    end
    object QCetaktrans_date: TDateField
      FieldName = 'trans_date'
    end
    object QCetakcode_cust: TStringField
      FieldName = 'code_cust'
      Size = 255
    end
    object QCetakname_cust: TStringField
      FieldName = 'name_cust'
      ReadOnly = True
      Size = 255
    end
    object QCetakcode_region: TStringField
      FieldName = 'code_region'
      ReadOnly = True
      Size = 50
    end
    object QCetakname_region: TStringField
      FieldName = 'name_region'
      ReadOnly = True
      Size = 255
    end
    object QCetaktot_piutang: TFloatField
      FieldName = 'tot_piutang'
    end
    object QCetaktot_pejualan: TFloatField
      FieldName = 'tot_pejualan'
    end
    object QCetaktot_ppn: TFloatField
      FieldName = 'tot_ppn'
    end
  end
  object QCetakdetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * from "public"."vbhreturppenjualan"')
    MasterSource = dsCetak
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 860
    Top = 128
    ParamData = <
      item
        DataType = ftString
        Name = 'trans_no'
        ParamType = ptInput
        Value = '001-2024/X/29-DKI'
      end>
    object StringField1: TStringField
      FieldName = 'trans_no'
      Size = 255
    end
    object DateField1: TDateField
      FieldName = 'trans_date'
    end
    object StringField2: TStringField
      FieldName = 'code_cust'
      Size = 255
    end
    object StringField3: TStringField
      FieldName = 'name_cust'
      Size = 255
    end
    object StringField4: TStringField
      FieldName = 'code_region'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'name_region'
      Size = 255
    end
    object StringField6: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object StringField7: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object FloatField1: TFloatField
      FieldName = 'amount'
    end
    object StringField8: TStringField
      FieldName = 'code_unit'
      Size = 100
    end
    object StringField9: TStringField
      FieldName = 'name_unit'
      Size = 255
    end
    object StringField10: TStringField
      FieldName = 'akn_debet'
      Size = 50
    end
    object StringField11: TStringField
      FieldName = 'nm_debit_deb'
      Size = 100
    end
    object FloatField2: TFloatField
      FieldName = 'jum_ak_deb'
    end
    object MemoField1: TMemoField
      FieldName = 'akn_debet_lain'
      BlobType = ftMemo
    end
    object MemoField2: TMemoField
      FieldName = 'nm_debit_lain'
      BlobType = ftMemo
    end
    object IntegerField1: TIntegerField
      FieldName = 'jum_ak_deb_lain'
    end
    object StringField12: TStringField
      FieldName = 'akn_kredit'
      Size = 50
    end
    object StringField13: TStringField
      FieldName = 'nm_debit_kre'
      Size = 100
    end
    object FloatField3: TFloatField
      FieldName = 'jum_ak_kre'
    end
    object FloatField4: TFloatField
      FieldName = 'ppn_ak_kre'
    end
    object StringField14: TStringField
      FieldName = 'akn_kre_lain'
      Size = 50
    end
    object StringField15: TStringField
      FieldName = 'nm_kre_lain'
      Size = 100
    end
    object FloatField5: TFloatField
      FieldName = 'jum_ak_kre_lain'
    end
  end
end
