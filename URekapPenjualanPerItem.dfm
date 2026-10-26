object FRekapPenjualanPerItem: TFRekapPenjualanPerItem
  Left = 0
  Top = 0
  Caption = 'Rekap Penjualan Per Item'
  ClientHeight = 442
  ClientWidth = 1008
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
    Width = 1008
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    ExplicitLeft = -616
    ExplicitWidth = 1370
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
    Width = 1008
    Height = 315
    Align = alClient
    DataSource = dsRekap
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'group_id'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'group_name'
        Footers = <>
        Title.Caption = 'Kelompok Barang'
        Width = 154
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'item_name'
        Footers = <>
        Title.Caption = 'Nama Barang'
        Width = 241
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Qty'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_unit'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 120
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grand_tot'
        Footers = <>
        Title.Caption = 'Jumlah'
        Width = 131
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActMenu: TActionManager
    Left = 726
    Top = 414
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
    Left = 726
    Top = 414
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
          UserWidth = 176
          Visible = True
          ItemName = 'edKelompokBarang'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 177
          Visible = True
          ItemName = 'edTP'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
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
      DockedLeft = 582
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
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Clear'
      Category = 0
      Hint = 'Clear'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000206348524D00007A26000080840000FA00000080E8000075300000EA
        6000003A98000017709CBA513C00000006624B474400FF00FF00FFA0BDA79300
        0000097048597300000EC400000EC401952B0E1B0000000774494D4507E90B14
        01140E9DE08156000004464944415458C3B5965D681C5514C77FE7EEEC4736D9
        369A18AD989A362912D434A03E593096A212D42252B12AB460A4205804416CEA
        93A2F649D00745F0494512022A522D286812C156B482426C4822491389D96C94
        A4DD7CEECC1C1F6666B3BB49369B6E3C30CCDCB9E7F2FFDD73CFBDF7887ED746
        C9A64012582ED15FFC079063BDEBBA58C04D40758EC4769900CB081328F6464E
        16700EB8799BC53D006501971328DF140368DD66E17C536E2DD66DFE5771CFDC
        629DD69602AF05EF524C9062FE163B708050C9008B40784B11C8148F402DEF00
        CF03B192006C60A9E4D9F722F4168B80013A8133C0CA96E6B5B9F5213C87CBE5
        625960F08E95B7FC67BB20FA3074A08C6003D18D1D2DFFBD02BCE97F9F022265
        CEBC03D7178F831CE8DD3802B227DB194094B31CFD081DC008B6405C8B8A4370
        0E34E441BCE14314CDDE4DC52B1CE440DFA68324F85005C6DA826604388DB71C
        AB9B4E8129D6DB059EB8328C0D7C7A232C1B1048CF2AE939C518701C884485DA
        EFBBD602781047602C1534A33EC42B5988F5017E40781618E642027EAF5A8DAE
        9048CF6A343DA72B56982B99155C31A02E5811A1AEB72B1FA008C4CB40741D80
        20ECC3B8C087BB0012C043C02340737A4E2BAFCEEA023028C25911BE765DAEDC
        B04BF837A56B010074E008C4B31031A00B385C0090426847F9854406DEDE0DD0
        E2E7D08341D4AEFA4BE05B06F856844E557EABAE31EB5F46727B0FD815417309
        985EC76D0125892110DF0F7C0C3C9C9B37923FC530D0AECA2722B4CEFEE36E7C
        1BCABE73B9CD8DFC0C4315003BF1764E4BB6C77501F54E6155BF9DB53B543963
        0C35E55FC71351FCF53EB43ACF304ED33EB42A81380EBA238136374124EF163B
        A8CA93E50108CAEB0D06384C70AABA2E4E63134B2FBEC4F233C7701BF7E29C78
        1AFBF449F4B6C6DC48845579CABA4669CF2C551E9DB90E685E8512CC7412337E
        19FBEE7B58A9DF83C62A918121E4EFE9C2A4B8B3BC0818054B2B80CA5C0049A5
        887CF119329F466B6A203D4FA8FB4B48A60A0112E501B8020E4B78658A67AA68
        753599430FA09555909E87AA4ADCF683707DB57FE4666DA11C00C116C3A5CA59
        602417C0BDA51E7B7F2BA1C14B44DE7D1F1918C2BDAB056DA807370F60B09C1C
        4803CB3C9EB2198B7D85B7FF0511CCD828B10FDE2334318E3394243438097B77
        23C3A360B24BE08AD073AD114821BCC6BD3A453202F03970DE8B8B208B8B58BF
        5E446666502B842467901F2FC2FC626E0E5C40F868EB00420A38C912DD9C17D8
        698377529E02C6B27EC67830E0CD3A6472AFBE71113AD565B2548060E834315E
        E07EBA88FB7FA6B2C5533F701CF82977A0AE2D487F16E1B8E3D017B2564BB2CD
        EC0F6008E155FEA2272832E5BE5E4FE4E8D1C0AF0F780C78022F271A4588E3DD
        277F8A7016A15B5D26C3110F4E8AA9EA685BF01907AA112683123BA7942B8408
        AC02A1363DABF1F49C2E8A30E3382C18037606A231A8EBEF2E19207F3D0AC437
        04C9A98844201C151C5BA9EBEBCEBAFC0798C4968610769BD500000025744558
        74646174653A63726561746500323032352D31312D32305430313A31393A3132
        2B30303A30309A9486D30000002574455874646174653A6D6F64696679003230
        32352D31312D32305430313A31393A31322B30303A3030EBC93E6F0000002874
        455874646174653A74696D657374616D7000323032352D31312D32305430313A
        32303A31332B30303A30307F5C59CF0000001974455874536F66747761726500
        7777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      OnClick = dxBarLargeButton2Click
    end
    object edTP: TcxBarEditItem
      Caption = 'TP                           '
      Category = 0
      Hint = 'TP                           '
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edTPPropertiesButtonClick
    end
    object edKelompokBarang: TcxBarEditItem
      Caption = 'Kelompok Barang'
      Category = 0
      Hint = 'Kelompok Barang'
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edKelompokBarangPropertiesButtonClick
    end
  end
  object QRekapPenjualan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM get_rekap_penjualan_peritem('
      '    '#39'SMG'#39','
      '    4,'
      '    '#39'2026-07-01'#39','
      '    '#39'2026-07-28'#39
      ');')
    Left = 438
    Top = 248
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      #9'SELECT * FROM get_rekap_penjualan_peritem('
      '    '#39'SMG'#39','
      '    4,'
      '    '#39'2026-07-01'#39','
      '    '#39'2026-07-28'#39
      ');')
    Left = 558
    Top = 144
  end
  object frxDBDBHPenjualan: TfrxDBDataset
    UserName = 'frxDBDBHPenjualan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'group_id=group_id'
      'group_name=group_name'
      'item_name=item_name'
      'qty=qty'
      'grand_tot=grand_tot'
      'name_unit=name_unit')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 510
    Top = 144
  end
  object dsRekap: TDataSource
    DataSet = QRekapPenjualan
    Left = 534
    Top = 248
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmWholePage
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40907.381461944500000000
    ReportOptions.LastChange = 46231.492773391200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReportGetValue
    Left = 606
    Top = 144
    Datasets = <
      item
        DataSet = frxDBDBHPenjualan
        DataSetName = 'frxDBDBHPenjualan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 256
      LeftMargin = 30.000000000000000000
      RightMargin = 30.000000000000000000
      TopMargin = 7.500000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590600000000000000
        Top = 18.897650000000000000
        Width = 589.228727000000000000
        object Memo1: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 3.590553500000000000
          Top = 3.779530000000000000
          Width = 582.047620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[lap]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -73.889811500000000000
          Top = 23.338590000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[prsh]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = -73.889811500000000000
          Top = 44.252010000000000000
          Width = 737.008350000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[periode]')
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
        Height = 22.677180000000000000
        Top = 211.653680000000000000
        Width = 589.228727000000000000
        DataSet = frxDBDBHPenjualan
        DataSetName = 'frxDBDBHPenjualan'
        RowCount = 0
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.338590000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[line#]')
          ParentFont = False
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 38.551181100000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 43.244280000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'item_name'
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."item_name"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 188.598425200000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 480.638220000000000000
          Top = 1.000000000000000000
          Width = 106.181200000000000000
          Height = 18.897650000000000000
          DataField = 'grand_tot'
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."grand_tot"]')
          ParentFont = False
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = 1201.205351730000000000
          Top = 0.779529999999994000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line55: TfrxLineView
          AllowVectorExport = True
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 740.008350000000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 193.157226460000000000
          Width = 113.740260000000000000
          Height = 18.897650000000000000
          DataField = 'qty'
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."qty"]')
          ParentFont = False
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 311.433070866141700000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 588.472440944882000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 316.700990000000000000
          Width = 113.740260000000000000
          Height = 18.897650000000000000
          DataField = 'name_unit'
          DataSet = frxDBDBHPenjualan
          DataSetName = 'frxDBDBHPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."name_unit"]')
          ParentFont = False
        end
      end
      object ColumnHeader1: TfrxColumnHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 117.165430000000000000
        Width = 589.228727000000000000
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Width = 588.787570000000000000
          Height = 34.015770000000000000
          Frame.Typ = []
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 4.669295000000000000
          Top = 3.779529999999990000
          Width = 30.236240000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 42.756030000000000000
          Top = 3.779529999999990000
          Width = 143.622140000000000000
          Height = 26.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA BARANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 38.574830000000000000
          Height = 34.015770000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 188.645950000000000000
          Top = 1.000000000000000000
          Height = 34.015721180000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 195.031540000000000000
          Top = 2.881880000000000000
          Width = 113.385900000000000000
          Height = 30.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTY')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 438.118430000000000000
          Top = 3.322819999999990000
          Width = 147.401670000000000000
          Height = 27.354360000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 311.433070866141700000
          Height = 35.692950000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Height = 35.692950000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 316.480520000000000000
          Top = 1.000000000000000000
          Width = 113.385900000000000000
          Height = 30.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SATUAN')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 294.803340000000000000
        Width = 589.228727000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Top = 0.078540000000000000
          Width = 588.472440944882000000
          Height = 26.456710000000000000
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 1.661720000000000000
          Top = 3.078539999999970000
          Width = 185.196970000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL PENJUALAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 479.677490000000000000
          Top = 3.000000000000000000
          Width = 106.181200000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxdbrekjualitem'
          DisplayFormat.FormatStr = '%0.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBDBHPenjualan."grand_tot">)]')
          ParentFont = False
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 188.535560000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 311.433070870000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 193.425006460000000000
          Top = 2.779530000000000000
          Width = 113.740260000000000000
          Height = 22.677180000000000000
          DataSetName = 'frxdbrekjualitem'
          DisplayFormat.FormatStr = '#,##0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[sum(<frxDBDBHPenjualan."qty">)]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 434.645950000000000000
          Height = 26.456710000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 576
    Top = 336
  end
  object frxXLSExport1: TfrxXLSExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ExportEMF = True
    AsText = False
    Background = True
    FastExport = True
    PageBreaks = True
    EmptyLines = True
    SuppressPageHeadersFooters = False
    Left = 414
    Top = 336
  end
  object frxXLSXExport1: TfrxXLSXExport
    FileName = 'C:\Users\HP\Downloads\RekapTagihanKolektor2.xlsx'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 46195.384114675920000000
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 502
    Top = 336
  end
end
