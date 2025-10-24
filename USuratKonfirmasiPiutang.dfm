object FSuratKonfirmasiPiutang: TFSuratKonfirmasiPiutang
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Surat Konfirmasi Piutang'
  ClientHeight = 360
  ClientWidth = 788
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 788
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
          Caption = 'Filter'
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
    Width = 788
    Height = 233
    Align = alClient
    DataSource = DataSource1
    DrawMemoText = True
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal Nota/Surat Jalan'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_no'
        Footers = <>
        Title.Caption = 'Nomor Nota/Surat Jalan'
        Width = 270
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'sisa_piutang'
        Footers = <>
        Title.Caption = 'Sisa Piutang'
        Width = 247
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActMenu: TActionManager
    Left = 752
    Top = 208
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
    Left = 720
    Top = 240
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
          ItemName = 'dtPerTanggal'
        end
        item
          Visible = True
          ItemName = 'dtTanggalSurat'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 251
          Visible = True
          ItemName = 'edNamaPelanggan'
        end
        item
          Visible = True
          ItemName = 'cbSBU'
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
      DockedLeft = 515
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
    object edKaresidenan: TcxBarEditItem
      Caption = 'Pelanggan'
      Category = 0
      Hint = 'Pelanggan'
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
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
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Rincian Perbarang (Versi Accurate)'
      Category = 0
      Hint = 'Rincian Perbarang (Versi Accurate)'
      Visible = ivAlways
      HotGlyph.SourceDPI = 96
      HotGlyph.Data = {
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
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = ' Alamat     '
      Category = 0
      Hint = ' Alamat     '
      Visible = ivAlways
      PropertiesClassName = 'TcxMemoProperties'
      Height = 20
    end
    object dxBarEdit1: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarEdit2: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dtPerTanggal: TdxBarDateCombo
      Caption = 'Per Tanggal   '
      Category = 0
      Hint = 'Per Tanggal   '
      Visible = ivAlways
    end
    object dtTanggalSurat: TdxBarDateCombo
      Caption = 'Tanggal Surat'
      Category = 0
      Hint = 'Tanggal Surat'
      Visible = ivAlways
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarEdit3: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarSpinEdit1: TdxBarSpinEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object edNamaPelanggan: TcxBarEditItem
      Caption = 'Pelanggan'
      Category = 0
      Hint = 'Pelanggan'
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edNamaPelangganPropertiesButtonClick
      InternalEditValue = nil
    end
    object dxBarEdit4: TdxBarEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
    end
    object cbSBU: TdxBarCombo
      Caption = 'SBU           '
      Category = 0
      Hint = 'SBU           '
      Visible = ivAlways
      ItemIndex = -1
    end
  end
  object frxDBDBHAmplopPelanggan: TfrxDBDataset
    UserName = 'frxDBDBHSrtKonfirmasiPiutang'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'no_inv_tax=no_inv_tax'
      'trans_date=trans_date'
      'code_cust=code_cust'
      'name_cust=name_cust'
      'amount_receivable=amount_receivable'
      'paid_amount=paid_amount'
      'sisa_piutang=sisa_piutang'
      'no_traveldoc=no_traveldoc')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 672
    Top = 40
  end
  object QDetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from get_piutang_invoice('#39'2025-08-23'#39')')
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 584
    Top = 224
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from get_piutang_invoice('#39'2025-08-23'#39')')
    Left = 552
    Top = 104
  end
  object dsCetakRincianBarang: TDataSource
    DataSet = QCetak
    Left = 480
    Top = 232
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 40907.381461944500000000
    ReportOptions.LastChange = 45894.441382430600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnGetValue = ReportGetValue
    Left = 672
    Top = 216
    Datasets = <
      item
        DataSet = frxDBDBHAmplopPelanggan
        DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 7.500000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 415.748300000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDBHAmplopPelanggan
        DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
        RowCount = 0
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 164.346630000000000000
          Width = 196.535450160000000000
          Height = 18.897637800000000000
          DataField = 'trans_no'
          DataSet = frxDBDBHAmplopPelanggan
          DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHSrtKonfirmasiPiutang."trans_no"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 3.338590000000000000
          Width = 30.236240000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[Line]')
          ParentFont = False
          SuppressRepeated = True
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 39.811070000000000000
          Width = 119.165430000000000000
          Height = 18.897637800000000000
          DataField = 'trans_date'
          DataSet = frxDBDBHAmplopPelanggan
          DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHSrtKonfirmasiPiutang."trans_date"]')
          ParentFont = False
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 161.629921260000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 36.795275590000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 364.677180000000000000
          Width = 200.314980160000000000
          Height = 18.897637800000000000
          DataField = 'no_traveldoc'
          DataSet = frxDBDBHAmplopPelanggan
          DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHSrtKonfirmasiPiutang."no_traveldoc"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Left = 363.968503937008000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 571.252320000000000000
          Width = 166.653680000000000000
          Height = 18.897637795275600000
          DataField = 'sisa_piutang'
          DataSet = frxDBDBHAmplopPelanggan
          DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHSrtKonfirmasiPiutang."sisa_piutang"]')
          ParentFont = False
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = 566.866141730000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line55: TfrxLineView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line8: TfrxLineView
          AllowVectorExport = True
          Left = 884.409448820000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 1086.008350000000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 985.700787401575000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 1180.213360000000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line18: TfrxLineView
          AllowVectorExport = True
          Left = 795.212598425197000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line6: TfrxLineView
          AllowVectorExport = True
          Left = 739.890230000000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 374.512060000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = '<frxDBDBHSrtKonfirmasiPiutang."code_cust">'
        StartNewPage = True
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Top = 329.157700000000000000
          Width = 740.787880000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 164.858380000000000000
          Top = 332.937230000000000000
          Width = 196.535450160000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor Nota')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 37.015770000000000000
          Top = 329.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Left = 160.771800000000000000
          Top = 329.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 363.952755910000000000
          Top = 329.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 329.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 332.937230000000000000
          Width = 30.236240000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 41.354360000000000000
          Top = 332.937230000000000000
          Width = 117.165430000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal'
            'Nota/Surat Jalan')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 368.291590000000000000
          Top = 332.937230000000000000
          Width = 196.535450160000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor Surat Jalan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 331.937230000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rupiah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = -3.000000000000000000
          Top = 15.102350000000000000
          Width = 212.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[kota], [tgl_surat]  ')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = -3.000000000000000000
          Top = 50.102350000000000000
          Width = 439.165430000000000000
          Height = 116.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Kepada Yth,'
            '[parNamaPelanggan]'
            '[parAlamatPelanggan]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = -3.000000000000000000
          Top = 170.102350000000000000
          Width = 55.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Perihal :')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 54.000000000000000000
          Top = 170.102350000000000000
          Width = 263.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          Memo.UTF8W = (
            'Konfirmasi Saldo Piutang ( Saldo Nota )')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = -4.000000000000000000
          Top = 238.102350000000000000
          Width = 212.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Dengan hormat,')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Top = 281.102350000000000000
          Width = 743.165430000000000000
          Height = 42.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Bersama surat ini  kami mengkonfirmasi tentang saldo piutang ( S' +
              'aldo Nota ) Bapak / Ibu  kepada  pihak [nmsbu] sampai dengan tan' +
              'ggal [tgl_sampai] sejumlah Rp.total_piutang (terbilang) yang ter' +
              'diri dari :')
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
        Height = 400.630180000000000000
        Top = 457.323130000000000000
        Width = 740.409927000000000000
        object Shape2: TfrxShapeView
          AllowVectorExport = True
          Left = -1.220470000000000000
          Width = 741.165354330000000000
          Height = 26.456692910000000000
          Frame.Typ = []
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 461.307360000000000000
          Top = 4.440940000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 574.709030000000000000
          Top = 2.779530000000000000
          Width = 162.874150000000000000
          Height = 15.118120000000000000
          DataSetName = 'frxdbsuratkonfirmasi'
          DisplayFormat.FormatStr = '#,###,###,###0.##'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDBHSrtKonfirmasiPiutang."sisa_piutang">,MasterData1)]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Top = 41.338280000000000000
          Width = 745.322834650000000000
          Height = 65.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Mohon  informasi tersebut di atas  bisa di bandingan dengan cata' +
              'tan  Bapak / Ibu .'
            
              'Apabila  menurut catatan Bapak / ibu  berbeda  dengan catatan ka' +
              'mi, mohon bisa dituliskan pada bagian bawah lembar ini.'
            
              'Setelah di isi mohon bisa di serahkan kepada pembawa surat ini a' +
              'tau di  FAX  ke nomor [nofax] atau di kirim  langsung ke alamat ' +
              ' kantor  di bawah ini :')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Top = 136.338280000000000000
          Width = 739.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[nmsbu]')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Top = 154.338280000000000000
          Width = 739.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[almt_ktr]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Top = 172.338280000000000000
          Width = 739.165430000000000000
          Height = 21.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UP. [nm_up]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = -3.000000000000000000
          Top = 218.338280000000000000
          Width = 740.165430000000000000
          Height = 65.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Demikian surat konfirmasi ini kami sampaikan  ,  besar harapan k' +
              'ami  Bapak / Ibu segera menyampaikan informasi ini secepatnya da' +
              'n atas perhatian dan kerjasamanya kami ucapkan terimakasih.')
          ParentFont = False
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Top = 289.338280000000000000
          Width = 141.165430000000000000
          Height = 26.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Hormat  kami ;')
          ParentFont = False
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 146.555555560000000000
          Top = 384.782724440000000000
          Width = -142.555555560000000000
          Height = 0.012248470000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
    end
    object Page2: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData2: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897650000000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDBHAmplopPelanggan
        DataSetName = 'frxDBDBHSrtKonfirmasiPiutang'
        RowCount = 0
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 226.811055350000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 36.795275590000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 416.685039370000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line17: TfrxLineView
          AllowVectorExport = True
          Left = 566.866141730000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line19: TfrxLineView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Height = 22.677180000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = 884.409448820000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line21: TfrxLineView
          AllowVectorExport = True
          Left = 1086.008350000000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = 985.700787401575000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 1180.213360000000000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line25: TfrxLineView
          AllowVectorExport = True
          Left = 795.212598425197000000
          Height = 22.677162910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line26: TfrxLineView
          AllowVectorExport = True
          Left = 739.890230000000000000
          Height = 18.897632910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 140.976377950000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = '<frxDBDBHSrtKonfirmasiPiutang."code_cust">'
        StartNewPage = True
        object Shape3: TfrxShapeView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Top = 95.157700000000000000
          Width = 740.787880000000000000
          Height = 45.354360000000000000
          Frame.Typ = []
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 37.015770000000000000
          Top = 95.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 226.771800000000000000
          Top = 95.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Top = 95.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 95.157700000000000000
          Height = 45.354360000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 3.559060000000000000
          Top = 98.937230000000000000
          Width = 30.236240000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NO.')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 41.354360000000000000
          Top = 98.937230000000000000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal'
            'Nota/Surat Jalan')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 231.330860000000000000
          Top = 98.937230000000000000
          Width = 181.417440000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor'
            'Nota/Surat Jalan')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 419.307360000000000000
          Top = 98.937230000000000000
          Width = 143.622140000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama'
            'Produk')
          ParentFont = False
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 97.937230000000000000
          Width = 166.299320000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rupiah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 7.559060000000000000
          Width = 661.417750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KONFIRMASI PIUTANG (SISA NOTA)')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Top = 39.102350000000000000
          Width = 146.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Informasi di atas sudah')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 141.000000000000000000
          Top = 39.102350000000000000
          Width = 133.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'benar / belum benar')
          ParentFont = False
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 271.000000000000000000
          Top = 38.102350000000000000
          Width = 360.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '( jika belum benar isikan jumlah yang benar di bawah ini )')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Top = 61.102350000000000000
          Width = 399.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Rp.                                            dengan rincian no' +
              'ta sbb :')
          ParentFont = False
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 557.031850000000000000
        Top = 222.992270000000000000
        Width = 740.409927000000000000
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Left = -1.220470000000000000
          Width = 742.677165354331000000
          Height = 26.456692913385800000
          Frame.Typ = []
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 461.307360000000000000
          Top = 4.440940000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Height = 26.456692910000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 548.016080000000000000
          Width = 188.976500000000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = -2.000000000000000000
          Top = 44.007730000000000000
          Width = 199.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Dengan alasan sebagai berikut :')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 18.000000000000000000
          Top = 85.007730000000000000
          Width = 22.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '1.')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 43.000000000000000000
          Top = 85.007730000000000000
          Width = 529.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '................................................................' +
              '................................................................' +
              '................')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 43.000000000000000000
          Top = 132.007730000000000000
          Width = 529.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '................................................................' +
              '................................................................' +
              '................')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 19.000000000000000000
          Top = 180.007730000000000000
          Width = 22.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '2.')
          ParentFont = False
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 44.000000000000000000
          Top = 180.007730000000000000
          Width = 529.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '................................................................' +
              '................................................................' +
              '................')
          ParentFont = False
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 44.000000000000000000
          Top = 229.007730000000000000
          Width = 529.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '................................................................' +
              '................................................................' +
              '................')
          ParentFont = False
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 18.000000000000000000
          Top = 281.007730000000000000
          Width = 22.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            '3.')
          ParentFont = False
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 43.000000000000000000
          Top = 281.007730000000000000
          Width = 529.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '................................................................' +
              '................................................................' +
              '................')
          ParentFont = False
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 44.000000000000000000
          Top = 330.007730000000000000
          Width = 529.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              '................................................................' +
              '................................................................' +
              '................')
          ParentFont = False
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 404.007730000000000000
          Width = 362.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            
              'Nama: ..........................................................' +
              '.......................')
          ParentFont = False
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Top = 457.007730000000000000
          Width = 113.165430000000000000
          Height = 19.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'Tanda Tangan :')
          ParentFont = False
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = QDetail
    Left = 384
    Top = 184
  end
end
