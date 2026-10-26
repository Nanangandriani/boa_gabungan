object FRekapTagihanKolektor2: TFRekapTagihanKolektor2
  Left = 0
  Top = 0
  Caption = 'FRekapTagihanKolektor2'
  ClientHeight = 442
  ClientWidth = 1184
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
    Width = 1184
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
    Width = 1184
    Height = 315
    Align = alClient
    DataSource = dsCetak
    DrawMemoText = True
    DynProps = <>
    FrozenCols = 2
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowDetailPanel.Height = 200
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name'
        Footers = <>
        Title.Caption = 'Nama'
        Width = 177
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'minggu_ke'
        Footers = <>
        Title.Caption = 'Periode'
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
        FieldName = 'jumlah_lembar_saldo_awal'
        Footers = <>
        Title.Caption = 'Saldo Awal|Lembar'
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'saldo_awal'
        Footers = <>
        Title.Caption = 'Saldo Awal|Nominal'
        Width = 122
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
        FieldName = 'jumlah_lembar_jual'
        Footers = <>
        Title.Caption = 'Penjualan|Lembar'
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grand_tot_jual'
        Footers = <>
        Title.Caption = 'Penjualan|Nominal'
        Width = 129
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jumlah_lembar_bayar'
        Footers = <>
        Title.Caption = 'Nota Tertagih|Lembar'
        Width = 47
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grand_tot_bayar'
        Footers = <>
        Title.Caption = 'Nota Tertagih|Nominal'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'saldo_akhir_lembar'
        Footers = <>
        Title.Caption = 'Saldo Akhir|Lembar'
        Width = 70
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'saldo_akhir_tot'
        Footers = <>
        Title.Caption = 'Saldo Akhir|Nominal'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActMenu: TActionManager
    Left = 912
    Top = 80
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
    Left = 920
    Top = 32
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
          UserWidth = 258
          Visible = True
          ItemName = 'edTP'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 259
          Visible = True
          ItemName = 'edKaresidenan'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 260
          Visible = True
          ItemName = 'edKabupaten'
        end
        item
          Visible = True
          ItemName = 'cbBulan'
        end
        item
          Visible = True
          ItemName = 'cbTahun'
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
      DockedLeft = 528
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
    object btPreview: TdxBarLargeButton
      Caption = 'Cetak'
      Category = 0
      Hint = 'Cetak'
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
      Caption = 'Kabupaten  '
      Category = 0
      Hint = 'Kabupaten  '
      Visible = ivNever
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edKabupatenPropertiesButtonClick
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
      Caption = 'TP                 '
      Category = 0
      Hint = 'TP                 '
      Visible = ivNever
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edTPPropertiesButtonClick
    end
    object cbBulan: TdxBarCombo
      Caption = 'Bulan '
      Category = 0
      Hint = 'Bulan '
      Visible = ivAlways
      Text = 'JANUARI'
      Items.Strings = (
        'JANUARI'
        'FEBRUARI'
        'MARET'
        'APRIL'
        'MEI'
        'JUNI'
        'JULI'
        'AGUSTUS'
        'SEPTEMBER'
        'OKTOBER'
        'NOVEMBER'
        'DESEMBER')
      ItemIndex = 0
    end
    object cbTahun: TdxBarCombo
      Caption = 'Tahun'
      Category = 0
      Hint = 'Tahun'
      Visible = ivAlways
      ItemIndex = -1
    end
    object edKaresidenan: TcxBarEditItem
      Caption = 'Karesidenan'
      Category = 0
      Hint = 'Karesidenan'
      Visible = ivNever
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = cbKaresidenanPropertiesButtonClick
    end
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT * from get_rekap_tagihan_kolektor('#39'2026-02-01'#39','#39'2026-02-2' +
        '8'#39')')
    Left = 304
    Top = 96
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    EngineOptions.DoublePass = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44931.582494618100000000
    ReportOptions.LastChange = 46317.654462650460000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'var'
      '  no: Integer;'
      '  PreviousValue,PreviousValue2,PreviousValue3,PreviousValue4,'
      
        '  PreviousValue5,PreviousValue6,PreviousValue7,PreviousValue8: S' +
        'tring;'
      ''
      
        '  FirstSaldoAwal,FirstInsentifPencapaianNominal,FirstInsentifNot' +
        'aNominal,'
      '  FirstTotInsentif,TotSaldoAwalNominal,TotSaldoAkhirNominal,'
      
        '  TotInsentifPencapaianNominal,TotInsentifNotaNominal,TotInsenti' +
        'f: Currency;'
      
        '  FirstLembarSaldoAwal,FirstInsentifPencapaianPersen,FirstInsent' +
        'ifNotaPersen,'
      
        '  TotSaldoAwalLembar,TotSaldoAkhirLembar,TotInsentifNotaLembar: ' +
        'Integer;'
      ''
      'procedure Memo31OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e) then'
      '  begin'
      '    if Engine.FinalPass then'
      '      no := no + 1;'
      ''
      '    PreviousValue := <frxDBCetakTagihanKolektor."nik_employee">;'
      '  end;'
      '  Memo31.Text := IntToStr(no);'
      'end;'
      ''
      'procedure Memo35OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo35.Text := <frxDBCetakTagihanKolektor."minggu_ke">;'
      'end;'
      ''
      
        'procedure MemInsentivePencapaianPersenOnBeforePrint(Sender: Tfrx' +
        'Component);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e2) then'
      '  begin'
      
        '    MemInsentivePencapaianPersen.Text := <frxDBCetakTagihanKolek' +
        'tor."persen_insentif">;'
      '    MemInsentivePencapaianPersen.Frame.Typ := 7;'
      
        '    FirstInsentifPencapaianPersen :=  <frxDBCetakTagihanKolektor' +
        '."persen_insentif">;'
      '  end'
      '  else'
      '  begin'
      '     MemInsentivePencapaianPersen.Text := '#39#39';'
      '     MemInsentivePencapaianPersen.Frame.Typ := 3;'
      '  end;'
      ''
      '  PreviousValue2 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      'procedure ReportOnStartReport(Sender: TfrxComponent);'
      'begin'
      '  no := 0;'
      '  FirstSaldoAwal:=0;'
      '  FirstLembarSaldoAwal:=0;'
      '  FirstInsentifPencapaianNominal:=0;'
      '  FirstInsentifNotaNominal:=0;'
      '  FirstTotInsentif:=0;'
      '  FirstInsentifPencapaianPersen:=0;'
      '  FirstInsentifNotaPersen:=0;'
      '  TotSaldoAwalNominal:=0;'
      '  TotSaldoAwalLembar:=0;'
      '  TotSaldoAkhirNominal:=0;'
      '  TotSaldoAkhirLembar:=0;'
      '  TotInsentifPencapaianNominal:=0;'
      '  TotInsentifNotaNominal:=0;'
      '  TotInsentifNotaLembar:=0;'
      '  TotInsentif:=0;'
      ''
      '  PreviousValue := '#39#39';'
      '  PreviousValue := '#39#39';'
      '  PreviousValue2 := '#39#39';'
      '  PreviousValue3 := '#39#39';'
      '  PreviousValue4 := '#39#39';'
      '  PreviousValue5 := '#39#39';'
      '  PreviousValue6 := '#39#39';'
      '  PreviousValue7 := '#39#39';'
      '  PreviousValue8 := '#39#39';'
      'end;'
      ''
      
        'procedure MemInsentivePencapaianNominalOnBeforePrint(Sender: Tfr' +
        'xComponent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e3) then'
      '  begin'
      
        '    MemInsentivePencapaianNominal.Text := FormatFloat('#39'#,#0.00;(' +
        '#,#0.00);#,#0'#39', <frxDBCetakTagihanKolektor."nominal_insentif">);'
      '    MemInsentivePencapaianNominal.Frame.Typ := 7;'
      
        '    FirstInsentifPencapaianNominal:= <frxDBCetakTagihanKolektor.' +
        '"nominal_insentif">;'
      ''
      '    if not Engine.FinalPass then'
      
        '      TotInsentifPencapaianNominal := TotInsentifPencapaianNomin' +
        'al + <frxDBCetakTagihanKolektor."nominal_insentif">;'
      '  end'
      '  else'
      '  begin'
      '     MemInsentivePencapaianNominal.Text := '#39#39';'
      '    MemInsentivePencapaianNominal.Frame.Typ:=3;'
      '  end;'
      ''
      '  PreviousValue3 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      
        'procedure MemInsentiveNotaPersenOnBeforePrint(Sender: TfrxCompon' +
        'ent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e4) then'
      '  begin'
      
        '    MemInsentiveNotaPersen.Text := <frxDBCetakTagihanKolektor."l' +
        'embar_insentif_nota_tertagih">;'
      '    MemInsentiveNotaPersen.Frame.Typ := 7;'
      
        '    FirstInsentifNotaPersen:=<frxDBCetakTagihanKolektor."lembar_' +
        'insentif_nota_tertagih">;'
      '    if not Engine.FinalPass then'
      
        '      TotInsentifNotaLembar := TotInsentifNotaLembar + <frxDBCet' +
        'akTagihanKolektor."lembar_insentif_nota_tertagih">;'
      '  end'
      '  else'
      '  begin'
      '     MemInsentiveNotaPersen.Text := '#39#39';'
      '     MemInsentiveNotaPersen.Frame.Typ := 3;'
      '  end;'
      ''
      '  PreviousValue4 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      
        'procedure MemInsentiveNotaNominalOnBeforePrint(Sender: TfrxCompo' +
        'nent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e5) then'
      '  begin'
      
        '    MemInsentiveNotaNominal.Text := FormatFloat('#39'#,#0.00;(#,#0.0' +
        '0);#,#0'#39', <frxDBCetakTagihanKolektor."nominal_insentif_nota_tert' +
        'agih">);'
      '    MemInsentiveNotaNominal.Frame.Typ := 5;'
      
        '    FirstInsentifNotaNominal:=<frxDBCetakTagihanKolektor."nomina' +
        'l_insentif_nota_tertagih">;'
      '    if not Engine.FinalPass then'
      
        '      TotInsentifNotaNominal := TotInsentifNotaNominal + <frxDBC' +
        'etakTagihanKolektor."nominal_insentif_nota_tertagih">;'
      '  end'
      '  else'
      '  begin'
      '     MemInsentiveNotaNominal.Text := '#39#39';'
      '     MemInsentiveNotaNominal.Frame.Typ := 1;'
      '  end;'
      ''
      '  PreviousValue5 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      'procedure MemTotInsentiveOnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e6) then'
      '  begin'
      
        '    MemTotInsentive.Text := FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39 +
        ', <frxDBCetakTagihanKolektor."total_insentif">);'
      '    MemTotInsentive.Frame.Typ := 7;'
      
        '    FirstTotInsentif:= <frxDBCetakTagihanKolektor."total_insenti' +
        'f">;'
      '    if not Engine.FinalPass then'
      
        '      TotInsentif := TotInsentif + <frxDBCetakTagihanKolektor."t' +
        'otal_insentif">;'
      ''
      '  end'
      '  else'
      '  begin'
      '     MemTotInsentive.Text := '#39#39';'
      '     MemTotInsentive.Frame.Typ := 3;'
      '  end;'
      ''
      '  PreviousValue6 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      'procedure Memo41OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo41.Text:=IntToStr(FirstInsentifPencapaianPersen);'
      'end;'
      ''
      'procedure Memo43OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo43.Text:=Memo32.Text;'
      '  if not Engine.FinalPass then'
      '      TotSaldoAkhirLembar := TotSaldoAkhirLembar + Memo32.Value;'
      'end;'
      ''
      'procedure Memo44OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo44.Text:=Memo34.Text;'
      '  if not Engine.FinalPass then'
      
        '      TotSaldoAkhirNominal := TotSaldoAkhirNominal + Memo34.Valu' +
        'e;'
      'end;'
      ''
      'procedure Memo42OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo42.Text:=FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39',FirstInsenti' +
        'fPencapaianNominal);'
      'end;'
      ''
      'procedure Memo52OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e7) then'
      '  begin'
      '    FirstSaldoAwal:=<frxDBCetakTagihanKolektor."saldo_awal">;'
      '    if not Engine.FinalPass then'
      
        '      TotSaldoAwalNominal := TotSaldoAwalNominal + <frxDBCetakTa' +
        'gihanKolektor."saldo_awal">;'
      '  end;'
      ''
      '  PreviousValue7 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      'procedure Memo51OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo51.Text:= FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', FirstSaldo' +
        'Awal);'
      'end;'
      ''
      'procedure Memo46OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo46.Text:=IntToStr(FirstLembarSaldoAwal);'
      'end;'
      ''
      'procedure Memo36OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if (<frxDBCetakTagihanKolektor."nik_employee"> <> PreviousValu' +
        'e8) then'
      '  begin'
      
        '    FirstLembarSaldoAwal:=<frxDBCetakTagihanKolektor."jumlah_lem' +
        'bar_saldo_awal">;'
      ''
      '    if not Engine.FinalPass then'
      
        '      TotSaldoAwalLembar := TotSaldoAwalLembar + <frxDBCetakTagi' +
        'hanKolektor."jumlah_lembar_saldo_awal">;'
      '  end;'
      ''
      '  PreviousValue8 := <frxDBCetakTagihanKolektor."nik_employee">;'
      'end;'
      ''
      'procedure Memo54OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo54.Text := FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', FirstIns' +
        'entifNotaNominal);'
      'end;'
      ''
      'procedure Memo53OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '   Memo53.Text := IntToStr(FirstInsentifNotaPersen);'
      'end;'
      ''
      'procedure Memo45OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo45.Text:= FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', FirstTotIn' +
        'sentif);'
      'end;'
      ''
      'procedure Memo70OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo70.Text:=FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', TotSaldoAwa' +
        'lNominal);'
      'end;'
      ''
      'procedure Memo69OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo69.Text:=IntToStr(TotSaldoAwalLembar);'
      'end;'
      ''
      'procedure Memo44OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure Memo68OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo68.Text:=FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', TotSaldoAkh' +
        'irNominal);'
      'end;'
      ''
      'procedure Memo67OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo67.Text:=FormatFloat('#39'#,##'#39', TotSaldoAkhirLembar);'
      'end;'
      ''
      'procedure Memo82OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo82.Text:=FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', TotInsentif' +
        ');'
      'end;'
      ''
      'procedure Memo81OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  Memo81.Text:=FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', TotInsentif' +
        'NotaNominal);'
      'end;'
      ''
      'procedure Memo80OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  Memo80.Text:=IntToStr(TotInsentifNotaLembar);'
      'end;'
      ''
      'procedure Memo64OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '   Memo64.Text:=FormatFloat('#39'#,#0.00;(#,#0.00);#,#0'#39', TotInsenti' +
        'fPencapaianNominal);'
      'end;'
      ''
      'procedure Memo63OnBeforePrint(Sender: TfrxComponent);'
      'var'
      '  TotalBayar: Extended;'
      '  TotalJual: Extended;'
      '  Pembagi: Extended;'
      'begin'
      
        '  TotalBayar := Report.Calc('#39'SUM(<frxDBCetakTagihanKolektor."gra' +
        'nd_tot_bayar">)'#39');'
      
        '  TotalJual  := Report.Calc('#39'SUM(<frxDBCetakTagihanKolektor."gra' +
        'nd_tot_jual">)'#39');'
      ''
      '  Pembagi := TotSaldoAwalNominal + TotalJual;'
      ''
      '  if Pembagi <> 0 then'
      '  begin'
      
        '    Memo63.Text := FormatFloat('#39'#,##0.00'#39', TotalBayar / Pembagi)' +
        ';'
      '  end'
      '  else'
      '  begin'
      '    Memo63.Text := '#39'0.00'#39';'
      '  end;'
      'end;'
      ''
      'begin'
      '  no := 0;'
      '  FirstSaldoAwal:=0;'
      '  FirstLembarSaldoAwal:=0;'
      '  FirstInsentifPencapaianNominal:=0;'
      '  FirstInsentifNotaNominal:=0;'
      '  FirstTotInsentif:=0;'
      '  FirstInsentifPencapaianPersen:=0;'
      '  FirstInsentifNotaPersen:=0;'
      '  TotSaldoAwalNominal:=0;'
      '  TotSaldoAwalLembar:=0;'
      '  TotSaldoAkhirNominal:=0;'
      '  TotSaldoAkhirLembar:=0;'
      '  TotInsentifPencapaianNominal:=0;'
      '  TotInsentifNotaNominal:=0;'
      '  TotInsentifNotaLembar:=0;'
      '  TotInsentif:=0;'
      '  PreviousValue := '#39#39';'
      '  PreviousValue2 := '#39#39';'
      '  PreviousValue3 := '#39#39';'
      '  PreviousValue4 := '#39#39';'
      '  PreviousValue5 := '#39#39';'
      '  PreviousValue6 := '#39#39';'
      '  PreviousValue7 := '#39#39';'
      '  PreviousValue8 := '#39#39';'
      'end.')
    OnStartReport = 'ReportOnStartReport'
    Left = 664
    Top = 64
    Datasets = <
      item
        DataSet = frxDBCetakTagihanKolektor
        DataSetName = 'frxDBCetakTagihanKolektor'
      end
      item
        DataSet = frxDBCetakTagihanKolektor2
        DataSetName = 'frxDBCetakTagihanKolektor2'
      end>
    Variables = <
      item
        Name = ' New Category1'
        Value = Null
      end
      item
        Name = 'Total1131'
        Value = Null
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      OnBeforePrint = 'Page1OnBeforePrint'
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 115.010111530000000000
        Top = 18.897650000000000000
        Width = 1209.449600000000000000
        object Judul: TfrxMemoView
          AllowVectorExport = True
          Left = 0.457817770000000000
          Width = 1208.612581190000000000
          Height = 21.093382860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP TAGIHAN KOLEKTOR MAB')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 54.537670590000000000
          Width = 28.120033390000000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 27.991001130000000000
          Top = 54.537670590000000000
          Width = 164.906117510000000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 272.774387490000000000
          Top = 93.456692910000000000
          Width = 109.606299212598000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 246.366386430000000000
          Top = 93.456692910000000000
          Width = 26.456692913385800000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemBulan: TfrxMemoView
          AllowVectorExport = True
          Left = 0.457817770000000000
          Top = 20.918985720000000000
          Width = 1208.612581180000000000
          Height = 21.093382860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 246.502463400000000000
          Top = 54.537670590000000000
          Width = 135.514549810000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 193.427555050000000000
          Top = 54.537670590000000000
          Width = 53.668666840000000000
          Height = 60.432307290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Periode')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 408.714047180000000000
          Top = 93.354330708661400000
          Width = 110.807602660000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 382.261606430000000000
          Top = 93.449943750000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 382.110236220472000000
          Top = 54.530921430000000000
          Width = 136.730963060000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 544.251968503937000000
          Top = 93.449943750000000000
          Width = 108.850393700000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 518.551181102362000000
          Top = 93.449943750000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 518.571428570000000000
          Top = 54.530921430000000000
          Width = 134.929133860000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Tertagih')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 680.012183830000000000
          Top = 93.449943750000000000
          Width = 109.223751730000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Left = 652.975892150000000000
          Top = 93.449943750000000000
          Width = 26.801412280000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 653.285714290000000000
          Top = 54.530921430000000000
          Width = 136.016677350000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Akhir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 826.750577390000000000
          Top = 93.449943750000000000
          Width = 124.938037450000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Left = 789.000000000000000000
          Top = 93.449943750000000000
          Width = 37.515697990000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 789.309822140000000000
          Top = 54.530921430000000000
          Width = 162.445248780000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insentive Pencapaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 989.607720250000000000
          Top = 93.449943750000000000
          Width = 124.724409448819000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 951.857142860000000000
          Top = 93.449943750000000000
          Width = 37.515697990000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 952.166965000000000000
          Top = 54.530921430000000000
          Width = 161.763779527559000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insentive Nota (Lbr x 1.000)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.844720490000000000
          Top = 54.530921430000000000
          Width = 95.244094488189000000
          Height = 60.432307290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Insentive')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 215.433210000000000000
        Width = 1209.449600000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBCetakTagihanKolektor
        DataSetName = 'frxDBCetakTagihanKolektor'
        RowCount = 0
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Width = 28.056194060000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo31OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          Duplicates = dmMerge
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 28.133858270000000000
          Width = 164.356580430000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'name'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."name"]')
          ParentFont = False
          Duplicates = dmMerge
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 247.325836560000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo36OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'jumlah_lembar_saldo_awal'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."jumlah_lembar_saldo_awal"]')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo52OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'saldo_awal'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."saldo_awal"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 382.110236220000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah_lembar_jual'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."jumlah_lembar_jual"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'grand_tot_jual'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."grand_tot_jual"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah_lembar_bayar'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."jumlah_lembar_bayar"]')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'grand_tot_bayar'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."grand_tot_bayar"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_akhir_lembar'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."saldo_akhir_lembar"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_akhir_tot'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."saldo_akhir_tot"]')
          ParentFont = False
        end
        object MemInsentivePencapaianPersen: TfrxMemoView
          AllowVectorExport = True
          Left = 788.869565220000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'MemInsentivePencapaianPersenOnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object MemInsentivePencapaianNominal: TfrxMemoView
          AllowVectorExport = True
          Left = 826.460116400000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'MemInsentivePencapaianNominalOnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object MemInsentiveNotaPersen: TfrxMemoView
          AllowVectorExport = True
          Left = 952.173913040000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'MemInsentiveNotaPersenOnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object MemInsentiveNotaNominal: TfrxMemoView
          AllowVectorExport = True
          Left = 988.764464220000000000
          Width = 124.160512550000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'MemInsentiveNotaNominalOnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object MemTotInsentive: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.652173910000000000
          Width = 95.539046740000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'MemTotInsentiveOnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 192.809384650000000000
          Width = 54.062943220000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo35OnBeforePrint'
          StretchMode = smMaxHeight
          DataField = 'minggu_ke'
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor."minggu_ke"]')
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
        Top = 192.756030000000000000
        Width = 1209.449600000000000000
        Condition = 'frxDBCetakTagihanKolektor."nik_employee"'
        KeepTogether = True
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 257.008040000000000000
        Width = 1209.449600000000000000
        Stretched = True
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor."grand_tot_jual">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 382.162162160000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor."jumlah_lembar_jual">,MasterData' +
              '1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor."jumlah_lembar_bayar">,MasterDat' +
              'a1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor."grand_tot_bayar">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 788.787401570000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo41OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 826.582677170000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo43OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          OnAfterPrint = 'Memo44OnAfterPrint'
          OnBeforePrint = 'Memo44OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 247.181102360000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo46OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo51OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 951.875000000000000000
          Top = -0.133040000000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo53OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 988.724409450000000000
          Top = -0.133040000000000000
          Width = 125.480314960000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo54OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.826771650000000000
          Width = 95.622047240000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo45OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Top = -0.133040000000000000
          Width = 247.497047240000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 298.582870000000000000
        Width = 1209.449600000000000000
        Stretched = True
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor."grand_tot_jual">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 382.162162160000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor."jumlah_lembar_jual">,MasterData' +
              '1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor."jumlah_lembar_bayar">,MasterDat' +
              'a1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor."grand_tot_bayar">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 788.787401570000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo63OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 826.582677170000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo64OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo67OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo68OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 247.181102360000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo69OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo70OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 951.875000000000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo80OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 989.593974670000000000
          Width = 125.480314960000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo81OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Width = 247.497047240000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.826771650000000000
          Width = 95.622047240000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo82OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
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
        Height = 101.807614780000000000
        Top = 377.953000000000000000
        Width = 1209.449600000000000000
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 286.739130440000000000
          Top = 7.264391300000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 266.739130430000000000
          Top = 83.220913050000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 833.913043480000000000
          Top = 7.264391300000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diperiksa,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 813.913043480000000000
          Top = 83.220913050000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page2: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle2: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 115.010111530000000000
        Top = 18.897650000000000000
        Width = 1209.449600000000000000
        object Judul2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.457817770000000000
          Width = 1208.612581190000000000
          Height = 21.093382860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP TAGIHAN KOLEKTOR MAB')
          ParentFont = False
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Top = 54.537670590000000000
          Width = 28.120033390000000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 27.991001130000000000
          Top = 54.537670590000000000
          Width = 218.456692913386000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 272.774387490000000000
          Top = 93.456692910000000000
          Width = 109.606299212598000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 246.366386430000000000
          Top = 93.456692910000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemBulan2: TfrxMemoView
          AllowVectorExport = True
          Left = 0.457817770000000000
          Top = 20.918985720000000000
          Width = 1208.612581180000000000
          Height = 21.093382860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN')
          ParentFont = False
        end
        object Memo94: TfrxMemoView
          AllowVectorExport = True
          Left = 246.502463400000000000
          Top = 54.537670590000000000
          Width = 135.514549810000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 408.714047180000000000
          Top = 93.354330708661400000
          Width = 110.807602660000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 382.261606430000000000
          Top = 93.449943750000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 382.110236220472000000
          Top = 54.530921430000000000
          Width = 136.730963060000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo99: TfrxMemoView
          AllowVectorExport = True
          Left = 544.251968503937000000
          Top = 93.449943750000000000
          Width = 108.850393700000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 518.551181102362000000
          Top = 93.449943750000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 518.571428570000000000
          Top = 54.530921430000000000
          Width = 134.929133860000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Tertagih')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 680.012183830000000000
          Top = 93.449943750000000000
          Width = 109.223751730000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 652.975892150000000000
          Top = 93.449943750000000000
          Width = 27.212598425196900000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo104: TfrxMemoView
          AllowVectorExport = True
          Left = 653.285714290000000000
          Top = 54.530921430000000000
          Width = 136.016677350000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Akhir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo105: TfrxMemoView
          AllowVectorExport = True
          Left = 826.750577390000000000
          Top = 93.449943750000000000
          Width = 124.938037450000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo106: TfrxMemoView
          AllowVectorExport = True
          Left = 789.000000000000000000
          Top = 93.449943750000000000
          Width = 37.515697990000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo107: TfrxMemoView
          AllowVectorExport = True
          Left = 789.309822140000000000
          Top = 54.530921430000000000
          Width = 162.445248780000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insentive Pencapaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo108: TfrxMemoView
          AllowVectorExport = True
          Left = 989.607720250000000000
          Top = 93.449943750000000000
          Width = 124.724409448819000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo109: TfrxMemoView
          AllowVectorExport = True
          Left = 951.857142860000000000
          Top = 93.449943750000000000
          Width = 37.515697990000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo110: TfrxMemoView
          AllowVectorExport = True
          Left = 952.166965000000000000
          Top = 54.530921430000000000
          Width = 161.763779527559000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insentive Nota (Lbr x 1.000)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo111: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.844720490000000000
          Top = 54.530921430000000000
          Width = 95.244094488189000000
          Height = 60.432307290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Insentive')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 192.756030000000000000
        Width = 1209.449600000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBCetakTagihanKolektor2
        DataSetName = 'frxDBCetakTagihanKolektor2'
        RowCount = 0
        object Memo112: TfrxMemoView
          AllowVectorExport = True
          Width = 28.056194060000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          Duplicates = dmMerge
        end
        object Memo113: TfrxMemoView
          AllowVectorExport = True
          Left = 28.133858270000000000
          Width = 218.078740160000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'name'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."name"]')
          ParentFont = False
        end
        object Memo114: TfrxMemoView
          AllowVectorExport = True
          Left = 247.325836560000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah_lembar_saldo_awal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."jumlah_lembar_saldo_awal"]')
          ParentFont = False
        end
        object Memo115: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_awal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."saldo_awal"]')
          ParentFont = False
        end
        object Memo116: TfrxMemoView
          AllowVectorExport = True
          Left = 382.110236220000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'lembar_jual'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."lembar_jual"]')
          ParentFont = False
        end
        object Memo117: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'total_jual'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."total_jual"]')
          ParentFont = False
        end
        object Memo118: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'lembar_bayar'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."lembar_bayar"]')
          ParentFont = False
        end
        object Memo119: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'total_bayar'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."total_bayar"]')
          ParentFont = False
        end
        object Memo120: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'lembar_saldo_akhir'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."lembar_saldo_akhir"]')
          ParentFont = False
        end
        object Memo121: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_akhir'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."saldo_akhir"]')
          ParentFont = False
        end
        object Memo122: TfrxMemoView
          AllowVectorExport = True
          Left = 788.869565220000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_pencapaian_persen'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_pencapaian_persen"]')
          ParentFont = False
        end
        object Memo123: TfrxMemoView
          AllowVectorExport = True
          Left = 826.460116400000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_pencapaian_nominal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_pencapaian_nominal"]')
          ParentFont = False
        end
        object Memo124: TfrxMemoView
          AllowVectorExport = True
          Left = 952.173913040000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_nota_lembar'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_nota_lembar"]')
          ParentFont = False
        end
        object Memo125: TfrxMemoView
          AllowVectorExport = True
          Left = 988.764464220000000000
          Width = 124.160512550000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_nota_nominal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_nota_nominal"]')
          ParentFont = False
        end
        object Memo126: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.652173910000000000
          Width = 95.539046740000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'total_insentive'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."total_insentive"]')
          ParentFont = False
        end
      end
      object Footer2: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 234.330860000000000000
        Width = 1209.449600000000000000
        Stretched = True
        object Memo142: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."total_jual">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo143: TfrxMemoView
          AllowVectorExport = True
          Left = 382.162162160000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."lembar_jual">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo144: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."lembar_bayar">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo145: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."total_bayar">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo146: TfrxMemoView
          AllowVectorExport = True
          Left = 788.787401570000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[Format('#39'%2.2f'#39', [SUM(<frxDBCetakTagihanKolektor2."total_bayar">' +
              ',MasterData2) / (SUM(<frxDBCetakTagihanKolektor2."total_jual">,M' +
              'asterData2) + SUM(<frxDBCetakTagihanKolektor2."saldo_awal">,Mast' +
              'erData2))])]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo147: TfrxMemoView
          AllowVectorExport = True
          Left = 826.582677170000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."insentive_pencapaian_nominal">' +
              ',MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo148: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."lembar_saldo_akhir">,MasterDat' +
              'a2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo149: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."saldo_akhir">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo150: TfrxMemoView
          AllowVectorExport = True
          Left = 247.181102360000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."jumlah_lembar_saldo_awal">,Mas' +
              'terData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo151: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."saldo_awal">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo152: TfrxMemoView
          AllowVectorExport = True
          Left = 951.875000000000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."insentive_nota_lembar">,Master' +
              'Data2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo153: TfrxMemoView
          AllowVectorExport = True
          Left = 989.593974670000000000
          Width = 125.480314960000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."insentive_nota_nominal">,Maste' +
              'rData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo154: TfrxMemoView
          AllowVectorExport = True
          Width = 247.497047240000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo155: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.826771650000000000
          Width = 95.622047240000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."total_insentive">,MasterData2)' +
              ']')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary2: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 122.829608700000000000
        Top = 313.700990000000000000
        Width = 1209.449600000000000000
        object Memo156: TfrxMemoView
          AllowVectorExport = True
          Left = 160.739130440000000000
          Top = 22.299010000000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo158: TfrxMemoView
          AllowVectorExport = True
          Left = 580.913043480000000000
          Top = 22.299010000000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo127: TfrxMemoView
          AllowVectorExport = True
          Left = 1002.782608710000000000
          Top = 22.299010000000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo128: TfrxMemoView
          AllowVectorExport = True
          Left = 982.782608700000000000
          Top = 98.255531750000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo159: TfrxMemoView
          AllowVectorExport = True
          Left = 560.913043480000000000
          Top = 99.220913050000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo157: TfrxMemoView
          AllowVectorExport = True
          Left = 140.739130430000000000
          Top = 99.220913050000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemKotaTanggal2: TfrxMemoView
          AllowVectorExport = True
          Left = 928.695652180000000000
          Top = 1.212053480000000000
          Width = 220.869565210000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tegal')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
    object Page3: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 330.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle3: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 115.010111530000000000
        Top = 18.897650000000000000
        Width = 1209.449600000000000000
        object Judul3: TfrxMemoView
          AllowVectorExport = True
          Left = 0.457817770000000000
          Width = 1208.612581190000000000
          Height = 21.093382860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'REKAP TAGIHAN KOLEKTOR MAB')
          ParentFont = False
        end
        object Memo130: TfrxMemoView
          AllowVectorExport = True
          Top = 54.537670590000000000
          Width = 28.120033390000000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo131: TfrxMemoView
          AllowVectorExport = True
          Left = 27.991001130000000000
          Top = 54.537670590000000000
          Width = 218.456692913386000000
          Height = 60.472440940000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo132: TfrxMemoView
          AllowVectorExport = True
          Left = 272.774387490000000000
          Top = 93.456692910000000000
          Width = 109.606299212598000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo133: TfrxMemoView
          AllowVectorExport = True
          Left = 246.366386430000000000
          Top = 93.456692910000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemBulan3: TfrxMemoView
          AllowVectorExport = True
          Left = 0.457817770000000000
          Top = 20.918985720000000000
          Width = 1208.612581180000000000
          Height = 21.093382860000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN')
          ParentFont = False
        end
        object Memo135: TfrxMemoView
          AllowVectorExport = True
          Left = 246.502463400000000000
          Top = 54.537670590000000000
          Width = 135.514549810000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo136: TfrxMemoView
          AllowVectorExport = True
          Left = 408.714047180000000000
          Top = 93.354330708661400000
          Width = 110.807602660000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo137: TfrxMemoView
          AllowVectorExport = True
          Left = 382.261606430000000000
          Top = 93.449943750000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo138: TfrxMemoView
          AllowVectorExport = True
          Left = 382.110236220472000000
          Top = 54.530921430000000000
          Width = 136.730963060000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penjualan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo139: TfrxMemoView
          AllowVectorExport = True
          Left = 544.251968503937000000
          Top = 93.449943750000000000
          Width = 108.850393700000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo140: TfrxMemoView
          AllowVectorExport = True
          Left = 518.551181102362000000
          Top = 93.449943750000000000
          Width = 26.087126570000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo141: TfrxMemoView
          AllowVectorExport = True
          Left = 518.571428570000000000
          Top = 54.530921430000000000
          Width = 134.929133860000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nota Tertagih')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo160: TfrxMemoView
          AllowVectorExport = True
          Left = 680.012183830000000000
          Top = 93.449943750000000000
          Width = 109.223751730000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo161: TfrxMemoView
          AllowVectorExport = True
          Left = 652.975892150000000000
          Top = 93.449943750000000000
          Width = 27.212598425196900000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo162: TfrxMemoView
          AllowVectorExport = True
          Left = 653.285714290000000000
          Top = 54.530921430000000000
          Width = 136.016677350000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Akhir')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo163: TfrxMemoView
          AllowVectorExport = True
          Left = 826.750577390000000000
          Top = 93.449943750000000000
          Width = 124.938037450000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo164: TfrxMemoView
          AllowVectorExport = True
          Left = 789.000000000000000000
          Top = 93.449943750000000000
          Width = 37.515697990000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo165: TfrxMemoView
          AllowVectorExport = True
          Left = 789.309822140000000000
          Top = 54.530921430000000000
          Width = 162.445248780000000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insentive Pencapaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo166: TfrxMemoView
          AllowVectorExport = True
          Left = 989.607720250000000000
          Top = 93.449943750000000000
          Width = 124.724409448819000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nominal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo167: TfrxMemoView
          AllowVectorExport = True
          Left = 951.857142860000000000
          Top = 93.449943750000000000
          Width = 37.515697990000000000
          Height = 21.543307090000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Lbr')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo168: TfrxMemoView
          AllowVectorExport = True
          Left = 952.166965000000000000
          Top = 54.530921430000000000
          Width = 161.763779527559000000
          Height = 38.934611440000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Insentive Nota (Lbr x 1.000)')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo169: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.844720490000000000
          Top = 54.530921430000000000
          Width = 95.244094488189000000
          Height = 60.432307290000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Total Insentive')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 192.756030000000000000
        Width = 1209.449600000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = frxDBCetakTagihanKolektor2
        DataSetName = 'frxDBCetakTagihanKolektor2'
        RowCount = 0
        object Memo170: TfrxMemoView
          AllowVectorExport = True
          Width = 28.056194060000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          Duplicates = dmMerge
        end
        object Memo171: TfrxMemoView
          AllowVectorExport = True
          Left = 28.133858270000000000
          Width = 218.078740160000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'name'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."name"]')
          ParentFont = False
        end
        object Memo172: TfrxMemoView
          AllowVectorExport = True
          Left = 247.325836560000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'jumlah_lembar_saldo_awal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."jumlah_lembar_saldo_awal"]')
          ParentFont = False
        end
        object Memo173: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_awal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."saldo_awal"]')
          ParentFont = False
        end
        object Memo174: TfrxMemoView
          AllowVectorExport = True
          Left = 382.110236220000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'lembar_jual'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."lembar_jual"]')
          ParentFont = False
        end
        object Memo175: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'total_jual'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."total_jual"]')
          ParentFont = False
        end
        object Memo176: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'lembar_bayar'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."lembar_bayar"]')
          ParentFont = False
        end
        object Memo177: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'total_bayar'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."total_bayar"]')
          ParentFont = False
        end
        object Memo178: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'lembar_saldo_akhir'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."lembar_saldo_akhir"]')
          ParentFont = False
        end
        object Memo179: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_akhir'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."saldo_akhir"]')
          ParentFont = False
        end
        object Memo180: TfrxMemoView
          AllowVectorExport = True
          Left = 788.869565220000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_pencapaian_persen'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_pencapaian_persen"]')
          ParentFont = False
        end
        object Memo181: TfrxMemoView
          AllowVectorExport = True
          Left = 826.460116400000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_pencapaian_nominal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_pencapaian_nominal"]')
          ParentFont = False
        end
        object Memo182: TfrxMemoView
          AllowVectorExport = True
          Left = 952.173913040000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_nota_lembar'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_nota_lembar"]')
          ParentFont = False
        end
        object Memo183: TfrxMemoView
          AllowVectorExport = True
          Left = 988.764464220000000000
          Width = 124.160512550000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'insentive_nota_nominal'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."insentive_nota_nominal"]')
          ParentFont = False
        end
        object Memo184: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.652173910000000000
          Width = 95.539046740000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'total_insentive'
          DataSet = frxDBCetakTagihanKolektor2
          DataSetName = 'frxDBCetakTagihanKolektor2'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBCetakTagihanKolektor2."total_insentive"]')
          ParentFont = False
        end
      end
      object Footer3: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 234.330860000000000000
        Width = 1209.449600000000000000
        Stretched = True
        object Memo185: TfrxMemoView
          AllowVectorExport = True
          Left = 408.188976380000000000
          Width = 110.247469070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."total_jual">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo186: TfrxMemoView
          AllowVectorExport = True
          Left = 382.162162160000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."lembar_jual">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo187: TfrxMemoView
          AllowVectorExport = True
          Left = 519.307086610000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."lembar_bayar">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo188: TfrxMemoView
          AllowVectorExport = True
          Left = 545.007874020000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."total_bayar">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo189: TfrxMemoView
          AllowVectorExport = True
          Left = 788.787401570000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo190: TfrxMemoView
          AllowVectorExport = True
          Left = 826.582677170000000000
          Width = 125.464860370000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."insentive_pencapaian_nominal">' +
              ',MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo191: TfrxMemoView
          AllowVectorExport = True
          Left = 652.724409450000000000
          Width = 27.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."lembar_saldo_akhir">,MasterDat' +
              'a2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo192: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Width = 108.073556030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."saldo_akhir">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo193: TfrxMemoView
          AllowVectorExport = True
          Left = 247.181102360000000000
          Width = 25.973829350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."jumlah_lembar_saldo_awal">,Mas' +
              'terData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo194: TfrxMemoView
          AllowVectorExport = True
          Left = 272.881889760000000000
          Width = 109.377903850000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBCetakTagihanKolektor2."saldo_awal">,MasterData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo195: TfrxMemoView
          AllowVectorExport = True
          Left = 951.875000000000000000
          Width = 37.278177180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."insentive_nota_lembar">,Master' +
              'Data2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo196: TfrxMemoView
          AllowVectorExport = True
          Left = 989.593974670000000000
          Width = 125.480314960000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."insentive_nota_nominal">,Maste' +
              'rData2)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo197: TfrxMemoView
          AllowVectorExport = True
          Width = 247.497047240000000000
          Height = 18.897637800000000000
          OnBeforePrint = 'Memo42OnBeforePrint'
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo198: TfrxMemoView
          AllowVectorExport = True
          Left = 1113.826771650000000000
          Width = 95.622047240000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = frxDBCetakTagihanKolektor
          DataSetName = 'frxDBCetakTagihanKolektor'
          DisplayFormat.FormatStr = '#,#0.00;(#,#0.00);#,#0'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBCetakTagihanKolektor2."total_insentive">,MasterData2)' +
              ']')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportSummary3: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 276.931057980000000000
        Top = 313.700990000000000000
        Width = 1209.449600000000000000
        object Memo199: TfrxMemoView
          AllowVectorExport = True
          Left = 45.739130440000000000
          Top = 176.299010000000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Dibuat,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo200: TfrxMemoView
          AllowVectorExport = True
          Left = 731.913043480000000000
          Top = 176.299010000000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diketahui,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo201: TfrxMemoView
          AllowVectorExport = True
          Left = 1071.782608710000000000
          Top = 176.299010000000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Disetujui,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo202: TfrxMemoView
          AllowVectorExport = True
          Left = 1051.782608700000000000
          Top = 252.255531750000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo203: TfrxMemoView
          AllowVectorExport = True
          Left = 711.913043480000000000
          Top = 253.220913050000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo204: TfrxMemoView
          AllowVectorExport = True
          Left = 25.739130430000000000
          Top = 253.220913050000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object MemKotaTanggal3: TfrxMemoView
          AllowVectorExport = True
          Left = 0.028985510000000000
          Top = 156.878720150000000000
          Width = 245.869565210000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tegal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo206: TfrxMemoView
          AllowVectorExport = True
          Left = 378.086956530000000000
          Top = 176.820749130000000000
          Width = 82.608695650000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Diperiksa,')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo207: TfrxMemoView
          AllowVectorExport = True
          Left = 358.086956520000000000
          Top = 253.742652180000000000
          Width = 122.608695660000000000
          Height = 16.521739130000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '(                                          )')
          ParentFont = False
          VAlign = vaCenter
        end
        object Rich1: TfrxRichView
          AllowVectorExport = True
          Left = 21.666666660000000000
          Top = 6.299010000000000000
          Width = 629.488249990000000000
          Height = 145.564316670000000000
          Frame.Typ = []
          GapX = 2.000000000000000000
          GapY = 1.000000000000000000
          RichEdit = {
            7B5C727466315C616E73695C616E7369637067313235325C64656666305C6E6F
            7569636F6D7061745C6465666C616E67313033337B5C666F6E7474626C7B5C66
            305C666E696C5C666368617273657430205365676F652055493B7D7D0D0A7B5C
            2A5C67656E657261746F722052696368656432302031302E302E32323632317D
            5C766965776B696E64345C756331200D0A5C706172645C66305C667331382050
            454E494C4149414E204245534152414E20494E53454E54495645203A5C746162
            5C7461625C7461625C7461625C7061720D0A312E5C7E5C7E5C7E20494E53454E
            544956452050454E4341504149414E204E4F4D494E414C204441524920544147
            4948414E20204E4F5441203A5C7461625C7461625C7461625C7461625C706172
            0D0A5C74616220412E5C7E5C7E5C7E50656E6361706169616E20203930252073
            2F64203130302025205C7461625C7461625C74616220203D2052702E3335302E
            3030302C2D205C7061720D0A5C74616220422E5C7E5C7E2050656E6361706169
            616E203830202520732F6420383920255C7461625C7461625C74616220203D20
            52702E3331352E3030302C2D205C7061720D0A5C74616220432E5C7E5C7E2050
            656E6361706169616E2037302520732F6420373920255C7461625C7461625C74
            616220203D2052702E3238302E3030302C2D205C7061720D0A5C7461625C7461
            625C7461625C7461625C7061720D0A322E5C7E5C7E5C7E20494E53454E544956
            452044415249204E4F5441205445525441474948203A5C7461625C7461625C74
            61625C7461625C7061720D0A5C746162204A756D6C61682064617269206C656D
            626172206E6F74612079616E6720746572746167696820782052702E312E3030
            302C2D5C7061720D0A7D0D0A00}
        end
      end
    end
  end
  object dsCetak: TDataSource
    DataSet = QCetak
    Left = 360
    Top = 96
  end
  object DSQBHPenjualanExportKredit: TDataSource
    Left = 600
    Top = 414
  end
  object frxDBCetakTagihanKolektor: TfrxDBDataset
    UserName = 'frxDBCetakTagihanKolektor'
    CloseDataSource = False
    FieldAliases.Strings = (
      'minggu_ke=minggu_ke'
      'nik_employee=nik_employee'
      'name=name'
      'code_karesidenan=code_karesidenan'
      'karesidenan=karesidenan'
      'jumlah_lembar_saldo_awal=jumlah_lembar_saldo_awal'
      'saldo_awal=saldo_awal'
      'jumlah_lembar_jual=jumlah_lembar_jual'
      'grand_tot_jual=grand_tot_jual'
      'jumlah_lembar_bayar=jumlah_lembar_bayar'
      'grand_tot_bayar=grand_tot_bayar'
      'saldo_akhir_lembar=saldo_akhir_lembar'
      'saldo_akhir_tot=saldo_akhir_tot'
      'persen_insentif=persen_insentif'
      'nominal_insentif=nominal_insentif'
      'lembar_insentif_nota_tertagih=lembar_insentif_nota_tertagih'
      'nominal_insentif_nota_tertagih=nominal_insentif_nota_tertagih'
      'total_insentif=total_insentif')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 592
    Top = 96
  end
  object QCetak2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT *  from get_rekap_tagihan_kolektor_sum('#39'2026-02-01'#39','#39'2026' +
        '-02-28'#39')')
    Left = 312
    Top = 200
  end
  object frxDBCetakTagihanKolektor2: TfrxDBDataset
    UserName = 'frxDBCetakTagihanKolektor2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'nik_employee=nik_employee'
      'name=name'
      'code_karesidenan=code_karesidenan'
      'karesidenan=karesidenan'
      'jumlah_lembar_saldo_awal=jumlah_lembar_saldo_awal'
      'saldo_awal=saldo_awal'
      'lembar_jual=lembar_jual'
      'total_jual=total_jual'
      'lembar_bayar=lembar_bayar'
      'total_bayar=total_bayar'
      'lembar_saldo_akhir=lembar_saldo_akhir'
      'saldo_akhir=saldo_akhir'
      'insentive_pencapaian_persen=insentive_pencapaian_persen'
      'insentive_pencapaian_nominal=insentive_pencapaian_nominal'
      'insentive_nota_lembar=insentive_nota_lembar'
      'insentive_nota_nominal=insentive_nota_nominal'
      'total_insentive=total_insentive')
    DataSet = QCetak2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 592
    Top = 152
  end
end
