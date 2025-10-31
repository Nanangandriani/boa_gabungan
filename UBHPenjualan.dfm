object FBHPenjualan: TFBHPenjualan
  Left = 0
  Top = 0
  Caption = 'Buku Harian Penjualan'
  ClientHeight = 603
  ClientWidth = 1209
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
    Width = 1209
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
    Width = 1209
    Height = 476
    Align = alClient
    DataSource = DsBHPenjualan
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
        Title.Caption = 'No. Transaksi'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal'
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
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_region'
        Footers = <>
        Title.Caption = 'Wilayah'
        Width = 250
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
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'amount'
        Footers = <>
        Title.Caption = 'Qty'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_unit'
        Footers = <>
        Title.Caption = 'Satuan'
        Width = 75
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
        FieldName = 'akn_debet'
        Footers = <>
        Title.Caption = 'Debit | Piutang | No. Perk'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_debit_deb'
        Footers = <>
        Title.Caption = 'Debit | Piutang | Nama Akun'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jum_ak_deb'
        Footers = <>
        Title.Caption = 'Debit | Piutang | Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'akn_debet_lain'
        Footers = <>
        Title.Caption = 'Debit | Lain-Lain | No. Perk'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_debit_lain'
        Footers = <>
        Title.Caption = 'Debit | Lain-Lain | Nama Akun'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'jum_ak_deb_lain'
        Footers = <>
        Title.Caption = 'Debit | Lain-Lain | Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'akn_kredit'
        Footers = <>
        Title.Caption = 'Kredit | Persediaan | No. Perk'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_debit_kre'
        Footers = <>
        Title.Caption = 'Kredit | Persediaan | Nama Perkiraan'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'jum_ak_kre'
        Footers = <>
        Title.Caption = 'Kredit | Persediaan | Jumlah'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ppn_ak_kre'
        Footers = <>
        Title.Caption = 'Kredit | Persediaan | Nilai PPn'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'akn_kre_lain'
        Footers = <>
        Title.Caption = 'Kredit | Lain-Lain | No. Perk'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_kre_lain'
        Footers = <>
        Title.Caption = 'Kredit | Lain-Lain | Nama Perkiraan'
        Width = 150
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'jum_ak_kre_lain'
        Footers = <>
        Title.Caption = 'Kredit | Lain-Lain | Jumlah'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object ActMenu: TActionManager
    Left = 792
    Top = 352
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
    Left = 896
    Top = 352
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
          UserWidth = 122
          Visible = True
          ItemName = 'dtAwal'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 123
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
      DockedLeft = 575
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
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
      Caption = 'TP                   '
      Category = 0
      Hint = 'TP                   '
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
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Rincian Perbarang (Versi Accurate)'
      Category = 0
      Hint = 'Rincian Perbarang (Versi Accurate)'
      Visible = ivAlways
      OnClick = dxBarLargeButton1Click
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
    object cbSBU: TdxBarCombo
      Caption = 'SBU                '
      Category = 0
      Hint = 'SBU                '
      Visible = ivAlways
      ItemIndex = -1
    end
  end
  object QBHPenjualan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * from "public"."vbhpenjualan"')
    Left = 788
    Top = 240
    object QBHPenjualantrans_no: TStringField
      FieldName = 'trans_no'
      Size = 255
    end
    object QBHPenjualantrans_date: TDateField
      FieldName = 'trans_date'
    end
    object QBHPenjualancode_cust: TStringField
      FieldName = 'code_cust'
      Size = 255
    end
    object QBHPenjualanname_cust: TStringField
      FieldName = 'name_cust'
      Size = 255
    end
    object QBHPenjualanname_region: TStringField
      FieldName = 'name_region'
      Size = 255
    end
    object QBHPenjualancode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object QBHPenjualanname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object QBHPenjualanamount: TFloatField
      FieldName = 'amount'
    end
    object QBHPenjualancode_unit: TStringField
      FieldName = 'code_unit'
      Size = 100
    end
    object QBHPenjualanname_unit: TStringField
      FieldName = 'name_unit'
      Size = 255
    end
    object QBHPenjualanakn_debet: TStringField
      FieldName = 'akn_debet'
      Size = 50
    end
    object QBHPenjualannm_debit_deb: TStringField
      FieldName = 'nm_debit_deb'
      Size = 100
    end
    object QBHPenjualanjum_ak_deb: TFloatField
      FieldName = 'jum_ak_deb'
    end
    object QBHPenjualanakn_debet_lain: TMemoField
      FieldName = 'akn_debet_lain'
      OnGetText = QBHPenjualanakn_debet_lainGetText
      BlobType = ftMemo
    end
    object QBHPenjualannm_debit_lain: TMemoField
      FieldName = 'nm_debit_lain'
      OnGetText = QBHPenjualannm_debit_lainGetText
      BlobType = ftMemo
    end
    object QBHPenjualanjum_ak_deb_lain: TIntegerField
      FieldName = 'jum_ak_deb_lain'
    end
    object QBHPenjualanakn_kredit: TStringField
      FieldName = 'akn_kredit'
      Size = 50
    end
    object QBHPenjualannm_debit_kre: TStringField
      FieldName = 'nm_debit_kre'
      Size = 100
    end
    object QBHPenjualanjum_ak_kre: TFloatField
      FieldName = 'jum_ak_kre'
    end
    object QBHPenjualanppn_ak_kre: TFloatField
      FieldName = 'ppn_ak_kre'
    end
    object QBHPenjualanakn_kre_lain: TStringField
      FieldName = 'akn_kre_lain'
      Size = 50
    end
    object QBHPenjualannm_kre_lain: TStringField
      FieldName = 'nm_kre_lain'
      Size = 100
    end
    object QBHPenjualanjum_ak_kre_lain: TFloatField
      FieldName = 'jum_ak_kre_lain'
    end
  end
  object DsBHPenjualan: TDataSource
    DataSet = QBHPenjualan
    Left = 777
    Top = 160
  end
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.custom' +
        'er_name_pkp  IS NULL THEN a.name_cust ELSE d.customer_name_pkp E' +
        'ND AS name_cust, d.code_region,  d.name_region, grand_tot as tot' +
        '_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn  FROM ' +
        't_selling a  LEFT JOIN ( SELECT t_customer.customer_code, t_cust' +
        'omer.customer_name_pkp,  t_customer.code_region, t_customer.name' +
        '_region FROM t_customer) d ON a.code_cust::text = d.customer_cod' +
        'e::text   LEFT JOIN (SELECT "code_province", "code" as code_kab,' +
        ' "name" as name_kab,  "code_karesidenan"  from t_region_regency ' +
        'WHERE deleted_at IS NULL)b   ON "left"(code_region, 4)=b.code_ka' +
        'b  where trans_date between '#39'2025-10-26'#39'  and '#39'2025-10-26'#39' '
      ' ORDER BY trans_date, trans_no')
    Left = 868
    Top = 32
    object QCetaktrans_no: TMemoField
      FieldName = 'trans_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakno_inv_tax: TMemoField
      FieldName = 'no_inv_tax'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetaktrans_date: TDateField
      FieldName = 'trans_date'
      ReadOnly = True
    end
    object QCetakcode_cust: TMemoField
      FieldName = 'code_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QCetakname_cust: TMemoField
      FieldName = 'name_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
  end
  object frxDBDBHPenjualan: TfrxDBDataset
    UserName = 'frxDBDBHPenjualan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'no_inv_tax=no_inv_tax'
      'trans_date=trans_date'
      'code_cust=code_cust'
      'name_cust=name_cust')
    DataSource = dsCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 952
    Top = 32
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
    ReportOptions.CreateDate = 44931.582494618100000000
    ReportOptions.LastChange = 45960.383855844910000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Page1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'procedure MasterData4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = ReportGetValue
    Left = 1040
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDBHPenjualan
        DataSetName = 'frxDBDBHPenjualan'
      end
      item
        DataSet = frxDBDBHPenj_Debit
        DataSetName = 'frxDBDBHPenj_Debit'
      end
      item
        DataSet = frxDBDRincianBarang
        DataSetName = 'frxDBDRincianBarang'
      end
      item
        DataSet = frxDBDBHPenj_Kredit
        DataSetName = 'frxDBDBHPenj_Kredit'
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
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 9
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
        Height = 132.283596380000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        object Shape1: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 1084.725110000000000000
          Height = 132.283596380000000000
          Frame.Typ = []
        end
        object Line4: TfrxLineView
          AllowVectorExport = True
          Top = 84.488250000000000000
          Width = 1084.724621810000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object kodeprsh: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 21.897650000000000000
          Width = 109.606370000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'HKJ')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 1077.165986540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BUKU HARIAN PENJUALAN')
          ParentFont = False
        end
        object tanggal: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 21.677180000000000000
          Width = 1077.165986540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[PERIODE]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.094620000000000000
          Top = 63.692950000000000000
          Width = 75.590551180000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Karesidenan')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = -1.000000000000000000
          Top = 98.708720000000000000
          Width = 26.456646540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NO')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 26.677180000000000000
          Top = 98.708661420000000000
          Width = 98.267716540000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Invoice')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 134.170686670000000000
          Top = 97.488191420000000000
          Width = 91.601049870000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kode Outlet')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 431.330860000000000000
          Top = 98.708661420000000000
          Width = 113.385900000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Barang')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 549.157700000000000000
          Top = 98.708661420000000000
          Width = 41.574830000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTY')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 594.598640000000000000
          Top = 100.149660000000000000
          Width = 41.574766540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Line9: TfrxLineView
          AllowVectorExport = True
          Left = 637.764070000000000000
          Top = 84.149660000000000000
          Height = 49.133858270000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line12: TfrxLineView
          AllowVectorExport = True
          Left = 592.393940000000000000
          Top = 84.149660000000000000
          Height = 49.133858270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line13: TfrxLineView
          AllowVectorExport = True
          Left = 548.031496062992100000
          Top = 84.149660000000000000
          Height = 49.133858270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line14: TfrxLineView
          AllowVectorExport = True
          Left = 344.653680000000000000
          Top = 84.149660000000000000
          Height = 49.133858270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line15: TfrxLineView
          AllowVectorExport = True
          Left = 126.992125984252000000
          Top = 84.149660000000000000
          Height = 49.133858270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line16: TfrxLineView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Top = 84.149660000000000000
          Height = 49.133890000000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 77.126160000000000000
          Top = 63.252010000000000000
          Width = 7.559035590000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object karesidenan: TfrxMemoView
          AllowVectorExport = True
          Left = 84.685220000000000000
          Top = 63.252010000000000000
          Width = 173.858282360000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[KARESIDENAN]')
          ParentFont = False
        end
        object kota: TfrxMemoView
          AllowVectorExport = True
          Left = 792.449290000000000000
          Top = 62.252010000000000000
          Width = 287.244182360000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDCetakOrder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[KOTA_KAB]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Top = 86.929190000000000000
          Width = 109.606370000000000000
          Height = 45.354347800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Penerima Barang')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line5: TfrxLineView
          AllowVectorExport = True
          Left = 229.787570000000000000
          Top = 84.283464570000000000
          Height = 49.133858270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line10: TfrxLineView
          AllowVectorExport = True
          Left = 431.984540000000000000
          Top = 84.149660000000000000
          Height = 48.377952760000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Top = 98.267780000000000000
          Width = 86.929190000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kode Barang')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 640.858690000000000000
          Top = 113.763789290000000000
          Width = 56.692886540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Akun')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 701.331170000000000000
          Top = 113.763789290000000000
          Width = 75.590536540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 784.480830000000000000
          Top = 113.763789290000000000
          Width = 75.590558500000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 859.512370000000000000
          Top = 113.763789290000000000
          Width = 56.692913385826800000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Akun')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 923.323440000000000000
          Top = 113.763789290000000000
          Width = 75.590551181102400000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Akun')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 1006.134510000000000000
          Top = 113.763789290000000000
          Width = 75.590536540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
        end
        object Line11: TfrxLineView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 109.228346460000000000
          Width = 445.984540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 640.858690000000000000
          Top = 90.708720000000000000
          Width = 215.433146540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Debit')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 863.291900000000000000
          Top = 90.708720000000000000
          Width = 219.212676540000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
        end
        object Line23: TfrxLineView
          AllowVectorExport = True
          Left = 859.512370000000000000
          Top = 84.929190000000000000
          Height = 49.133858270000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line30: TfrxLineView
          AllowVectorExport = True
          Left = 698.456692913386000000
          Top = 109.606370000000000000
          Height = 22.677148270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line31: TfrxLineView
          AllowVectorExport = True
          Left = 777.826771653543300000
          Top = 109.606370000000000000
          Height = 22.677148270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line32: TfrxLineView
          AllowVectorExport = True
          Left = 919.937007874015700000
          Top = 109.606370000000000000
          Height = 22.677148270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line33: TfrxLineView
          AllowVectorExport = True
          Left = 1001.473100000000000000
          Top = 109.606370000000000000
          Height = 22.677148270000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line29: TfrxLineView
          AllowVectorExport = True
          Left = 1084.945091810000000000
          Top = -18.897650000000000000
          Height = 1122.519685040000000000
          Color = clBlack
          Frame.Typ = []
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 1.111111110000000000
        Top = 253.228510000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDBHPenjualan
        DataSetName = 'frxDBDBHPenjualan'
        RowCount = 0
        Stretched = True
        object Line3: TfrxLineView
          AllowVectorExport = True
          Left = 1.111111110000000000
          Top = 1.111111110000000000
          Width = 718.110236220000000000
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
        Height = 18.897637800000000000
        Top = 211.653680000000000000
        Width = 1084.725110000000000000
        Condition = 'frxDBDBHPenjualan."trans_no"'
        Stretched = True
        object frxDBDCetakOrderOUTLET_NAME: TfrxMemoView
          AllowVectorExport = True
          Left = 26.456710000000000000
          Width = 99.250154760000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDCetakOrder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."trans_no"]')
          ParentFont = False
        end
        object frxDBDCetakOrderNAMA_KABUPATEN: TfrxMemoView
          AllowVectorExport = True
          Left = 129.173228350000000000
          Width = 98.713976670000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDCetakOrder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."code_cust"]')
          ParentFont = False
        end
        object Subreport1: TfrxSubreport
          AllowVectorExport = True
          Left = 345.407199100000000000
          Top = 0.714285710000000000
          Width = 94.488250000000000000
          Height = 18.897637800000000000
          Page = Report.Page2
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Width = 1084.724409450000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Width = 26.456710000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[LINE#].')
          ParentFont = False
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 230.551330000000000000
          Width = 112.806370000000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDCetakOrder'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenjualan."name_cust"]')
          ParentFont = False
        end
        object Subreport2: TfrxSubreport
          AllowVectorExport = True
          Left = 637.606299210000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = Report.Page3
        end
        object Subreport3: TfrxSubreport
          AllowVectorExport = True
          Left = 860.178852640000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Page = Report.Page4
        end
        object Line51: TfrxLineView
          AllowVectorExport = True
          Left = 26.456692913385830000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line54: TfrxLineView
          AllowVectorExport = True
          Left = 126.992125984252000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line55: TfrxLineView
          AllowVectorExport = True
          Left = 229.795275590000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line56: TfrxLineView
          AllowVectorExport = True
          Left = 344.692913385826800000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 75.590563390000000000
        Top = 317.480520000000000000
        Width = 1084.725110000000000000
        object Shape4: TfrxShapeView
          Align = baClient
          AllowVectorExport = True
          Width = 1084.725110000000000000
          Height = 75.590563390000000000
          Frame.Typ = []
        end
        object Line27: TfrxLineView
          AllowVectorExport = True
          Left = 859.464566930000000000
          Height = 75.590551181102400000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line28: TfrxLineView
          AllowVectorExport = True
          Left = 637.606299210000000000
          Height = 75.590551181102400000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PIUTANG DAGANG')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 18.897637795275600000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'POTONGAN PENJUALAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 37.795275590551200000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PENJUALAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 684.094930000000000000
          Top = 56.692913385826800000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'PPN KELUARAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo3: TfrxSysMemoView
          AllowVectorExport = True
          Left = 873.512370000000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(Copy(Trim(<frxDBDBHPenj_Debit."account_code">),1,7)='#39'11' +
              '04.01'#39',<frxDBDBHPenj_Debit."db">,0), MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo5: TfrxSysMemoView
          AllowVectorExport = True
          Left = 873.512370000000000000
          Top = 18.897637800000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(Copy(Trim(<frxDBDBHPenj_Debit."account_code">),1,7)='#39'42' +
              '01.01'#39',<frxDBDBHPenj_Debit."db">,0), MasterData3)')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo6: TfrxSysMemoView
          AllowVectorExport = True
          Left = 873.512370000000000000
          Top = 37.795275590000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(Copy(Trim(<frxDBDBHPenj_Kredit."account_code">),1,7)='#39'1' +
              '110.01'#39',<frxDBDBHPenj_Kredit."kd">,0), MasterData5)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo7: TfrxSysMemoView
          AllowVectorExport = True
          Left = 873.512370000000000000
          Top = 56.692913390000000000
          Width = 207.874150000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(IIF(Copy(Trim(<frxDBDBHPenj_Kredit."account_code">),1,7)='#39'2' +
              '130.09'#39',<frxDBDBHPenj_Kredit."kd">,0), MasterData5)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line48: TfrxLineView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 18.897637800000000000
          Width = 445.984540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line49: TfrxLineView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 37.795275590551200000
          Width = 445.984540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Line50: TfrxLineView
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 56.692913390000000000
          Width = 445.984540000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          ParentFont = False
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 275.905690000000000000
        Visible = False
        Width = 1084.725110000000000000
        OnBeforePrint = 'MasterData4OnBeforePrint'
        DataSet = frxDBDBHPenj_Debit
        DataSetName = 'frxDBDBHPenj_Debit'
        RowCount = 0
        Stretched = True
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 139.842610000000000000
          Width = 79.370088500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'db'
          DataSet = frxDBDBHPenj_Debit
          DataSetName = 'frxDBDBHPenj_Debit'
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_Debit."db"]')
          ParentFont = False
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472443390000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_code'
          DataSet = frxDBDBHPenj_Debit
          DataSetName = 'frxDBDBHPenj_Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_Debit."account_code"]')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_name'
          DataSet = frxDBDBHPenj_Debit
          DataSetName = 'frxDBDBHPenj_Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_Debit."account_name"]')
          ParentFont = False
        end
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
        Height = 19.738663760000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDRincianBarang
        DataSetName = 'frxDBDRincianBarang'
        RowCount = 0
        Stretched = True
        object frxDBDDetailCetakOrdernopol: TfrxMemoView
          AllowVectorExport = True
          Left = 90.851577140000000000
          Width = 111.434607260000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'name_item'
          DataSet = frxDBDRincianBarang
          DataSetName = 'frxDBDRincianBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRincianBarang."name_item"]')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 250.346630000000000000
          Top = 0.714285710000000000
          Width = 42.020999820000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'name_unit'
          DataSet = frxDBDRincianBarang
          DataSetName = 'frxDBDRincianBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRincianBarang."name_unit"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Top = 0.714285710000000000
          Width = 86.929133860000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'code_item'
          DataSet = frxDBDRincianBarang
          DataSetName = 'frxDBDRincianBarang'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDRincianBarang."code_item"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 203.553245610000000000
          Top = 0.714285710000000000
          Width = 44.013827540000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'amount'
          DataSet = frxDBDRincianBarang
          DataSetName = 'frxDBDRincianBarang'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDRincianBarang."amount"]')
          ParentFont = False
        end
        object Line20: TfrxLineView
          AllowVectorExport = True
          Left = -319.748031496063000000
          Top = 0.714285710000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line22: TfrxLineView
          AllowVectorExport = True
          Left = -218.456692913386000000
          Top = 0.714285710000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line24: TfrxLineView
          AllowVectorExport = True
          Left = -114.897637795276000000
          Top = 0.714285710000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line41: TfrxLineView
          AllowVectorExport = True
          Left = 86.685039370000000000
          Top = 0.841025950000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line42: TfrxLineView
          AllowVectorExport = True
          Left = 202.960629920000000000
          Top = 0.841025960000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line43: TfrxLineView
          AllowVectorExport = True
          Left = 246.425196850000000000
          Top = 0.841025950000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line68: TfrxLineView
          AllowVectorExport = True
          Left = 292.535433070000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line69: TfrxLineView
          AllowVectorExport = True
          Left = 353.007874020000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line70: TfrxLineView
          AllowVectorExport = True
          Left = 433.133858270000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line71: TfrxLineView
          AllowVectorExport = True
          Left = 514.015748030000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line72: TfrxLineView
          AllowVectorExport = True
          Left = 574.571428570000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line73: TfrxLineView
          AllowVectorExport = True
          Left = 655.857142860000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
    object Page3: TfrxReportPage
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
      object MasterData3: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 19.024378040000000000
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        DataSet = frxDBDBHPenj_Debit
        DataSetName = 'frxDBDBHPenj_Debit'
        RowCount = 0
        Stretched = True
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Width = 60.472443390000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_code'
          DataSet = frxDBDBHPenj_Debit
          DataSetName = 'frxDBDBHPenj_Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_Debit."account_code"]')
          ParentFont = False
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_name'
          DataSet = frxDBDBHPenj_Debit
          DataSetName = 'frxDBDBHPenj_Debit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_Debit."account_name"]')
          ParentFont = False
        end
        object Line39: TfrxLineView
          AllowVectorExport = True
          Left = -45.354330708661400000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 141.842610000000000000
          Width = 79.370088500000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'db'
          DataSet = frxDBDBHPenj_Debit
          DataSetName = 'frxDBDBHPenj_Debit'
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_Debit."db"]')
          ParentFont = False
        end
        object Line7: TfrxLineView
          AllowVectorExport = True
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line36: TfrxLineView
          AllowVectorExport = True
          Left = 140.598425200000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line40: TfrxLineView
          AllowVectorExport = True
          Left = 60.913385830000000000
          Top = 0.126740240000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line37: TfrxLineView
          AllowVectorExport = True
          Left = -89.196850393700800000
          Top = 0.126740240000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line45: TfrxLineView
          AllowVectorExport = True
          Left = -89.952755905511810000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line47: TfrxLineView
          AllowVectorExport = True
          Left = -611.527559055118100000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line57: TfrxLineView
          AllowVectorExport = True
          Left = -510.992125984252000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line60: TfrxLineView
          AllowVectorExport = True
          Left = -407.433070866141700000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line61: TfrxLineView
          AllowVectorExport = True
          Left = -292.535433070866100000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line63: TfrxLineView
          AllowVectorExport = True
          Left = -205.606299212598400000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line65: TfrxLineView
          AllowVectorExport = True
          Left = 221.480314960000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line66: TfrxLineView
          AllowVectorExport = True
          Left = 363.590551180000000000
          Top = -1.428571430000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line67: TfrxLineView
          AllowVectorExport = True
          Left = 282.708661417322800000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
    object Page4: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -9
      Font.Name = 'Arial'
      Font.Style = []
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
      object MasterData5: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -9
        Font.Name = 'Arial'
        Font.Style = []
        Height = 18.897637800000000000
        ParentFont = False
        Top = 18.897650000000000000
        Width = 1084.725110000000000000
        AllowSplit = True
        DataSet = frxDBDBHPenj_Kredit
        DataSetName = 'frxDBDBHPenj_Kredit'
        RowCount = 0
        Stretched = True
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 0.555555560000000000
          Top = 0.008761110000000001
          Width = 58.250221170000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_code'
          DataSet = frxDBDBHPenj_Kredit
          DataSetName = 'frxDBDBHPenj_Kredit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_Kredit."account_code"]')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 61.028035560000000000
          Top = 0.008761110000000001
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_name'
          DataSet = frxDBDBHPenj_Kredit
          DataSetName = 'frxDBDBHPenj_Kredit'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDBHPenj_Kredit."account_name"]')
          ParentFont = False
        end
        object Memo41: TfrxMemoView
          AllowVectorExport = True
          Left = 143.509276670000000000
          Top = 0.008761110000000001
          Width = 78.258977390000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'kd'
          DataSet = frxDBDBHPenj_Kredit
          DataSetName = 'frxDBDBHPenj_Kredit'
          DisplayFormat.FormatStr = '##,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDBHPenj_Kredit."kd"]')
          ParentFont = False
        end
        object Line52: TfrxLineView
          AllowVectorExport = True
          Left = 140.598425200000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line53: TfrxLineView
          AllowVectorExport = True
          Left = 59.716535433070900000
          Top = 0.000000000000000001
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object LineNoAkunDebit1: TfrxLineView
          AllowVectorExport = True
          Left = -161.763779527559000000
          Top = 0.135501350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line4NoAkunDebit2: TfrxLineView
          AllowVectorExport = True
          Left = -82.393700787401600000
          Top = 0.135501350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line38: TfrxLineView
          AllowVectorExport = True
          Left = -267.968503937008000000
          Top = 0.135501350000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line44: TfrxLineView
          AllowVectorExport = True
          Left = -312.188976377952800000
          Top = 0.370370370000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line46: TfrxLineView
          AllowVectorExport = True
          Left = -833.763779527559100000
          Top = -0.008761110000000001
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line58: TfrxLineView
          AllowVectorExport = True
          Left = -733.228346456692900000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line59: TfrxLineView
          AllowVectorExport = True
          Left = -629.669291338582700000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line62: TfrxLineView
          AllowVectorExport = True
          Left = -514.771653543307100000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
        object Line64: TfrxLineView
          AllowVectorExport = True
          Left = -427.842519685039400000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          Color = clBlack
          Frame.Typ = [ftLeft]
        end
      end
    end
  end
  object QCetakdetailDebit: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT trans_no,account_code,account_name,status_dk,db FROM "pub' +
        'lic"."VTrans_Journal"  where status_dk='#39'D'#39' AND db<>0')
    MasterSource = dsCetak
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 868
    Top = 184
    ParamData = <
      item
        DataType = ftMemo
        Name = 'trans_no'
        ParamType = ptInput
        Value = 'FP/001/06/X/2025/HLJ'
      end>
    object QCetakdetailDebittrans_no: TStringField
      FieldName = 'trans_no'
      Size = 100
    end
    object QCetakdetailDebitaccount_code: TStringField
      FieldName = 'account_code'
      Size = 50
    end
    object QCetakdetailDebitaccount_name: TMemoField
      FieldName = 'account_name'
      BlobType = ftMemo
    end
    object QCetakdetailDebitstatus_dk: TStringField
      FieldName = 'status_dk'
      Size = 1
    end
    object QCetakdetailDebitdb: TFloatField
      FieldName = 'db'
    end
  end
  object frxDBDBHPenj_Debit: TfrxDBDataset
    UserName = 'frxDBDBHPenj_Debit'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'account_code=account_code'
      'account_name=account_name'
      'status_dk=status_dk'
      'db=db')
    DataSet = QCetakdetailDebit
    BCDToCurrency = False
    DataSetOptions = []
    Left = 968
    Top = 168
  end
  object dsCetak: TDataSource
    DataSet = QCetak
    Left = 1041
    Top = 72
  end
  object dsCetakdetailDebit: TDataSource
    DataSet = QCetakdetailDebit
    Left = 1073
    Top = 200
  end
  object QCetakRincianBarang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select trans_no,'
      'code_item,'
      'name_item, '
      'amount,'
      'name_unit '
      'from t_selling_det ')
    MasterSource = dsCetak
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 868
    Top = 104
    ParamData = <
      item
        DataType = ftMemo
        Name = 'trans_no'
        ParamType = ptInput
        Value = 'FP/001/06/X/2025/HLJ'
      end>
    object QCetakRincianBarangtrans_no: TStringField
      FieldName = 'trans_no'
      Required = True
      Size = 255
    end
    object QCetakRincianBarangcode_item: TStringField
      FieldName = 'code_item'
      Size = 100
    end
    object QCetakRincianBarangname_item: TStringField
      FieldName = 'name_item'
      Size = 255
    end
    object QCetakRincianBarangamount: TFloatField
      FieldName = 'amount'
    end
    object QCetakRincianBarangname_unit: TStringField
      FieldName = 'name_unit'
      Size = 255
    end
  end
  object frxDBDRincianBarang: TfrxDBDataset
    UserName = 'frxDBDRincianBarang'
    CloseDataSource = False
    FieldAliases.Strings = (
      'no_invoice=no_invoice'
      'code_item=code_item'
      'name_item=name_item'
      'amount=amount'
      'name_unit=name_unit')
    DataSet = QCetakRincianBarang
    BCDToCurrency = False
    DataSetOptions = []
    Left = 952
    Top = 88
  end
  object dsCetakRincianBarang: TDataSource
    DataSet = QCetakRincianBarang
    Left = 1041
    Top = 136
  end
  object QCetakdetailKredit: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT trans_no,account_code,account_name,status_dk,kd FROM "pub' +
        'lic"."VTrans_Journal"  where status_dk='#39'K'#39' AND kd<>0')
    MasterSource = dsCetak
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 868
    Top = 256
    ParamData = <
      item
        DataType = ftMemo
        Name = 'trans_no'
        ParamType = ptInput
        Value = 'FP/001/06/X/2025/HLJ'
      end>
    object QCetakdetailKredittrans_no: TStringField
      FieldName = 'trans_no'
      Size = 100
    end
    object QCetakdetailKreditaccount_code: TStringField
      FieldName = 'account_code'
      Size = 50
    end
    object QCetakdetailKreditaccount_name: TMemoField
      FieldName = 'account_name'
      BlobType = ftMemo
    end
    object QCetakdetailKreditstatus_dk: TStringField
      FieldName = 'status_dk'
      Size = 1
    end
    object QCetakdetailKreditkd: TFloatField
      FieldName = 'kd'
    end
  end
  object frxDBDBHPenj_Kredit: TfrxDBDataset
    UserName = 'frxDBDBHPenj_Kredit'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'account_code=account_code'
      'account_name=account_name'
      'status_dk=status_dk'
      'kd=kd')
    DataSet = QCetakdetailKredit
    BCDToCurrency = False
    DataSetOptions = []
    Left = 968
    Top = 256
  end
  object dsCetakdetailKredit: TDataSource
    DataSet = QCetakdetailKredit
    Left = 1073
    Top = 288
  end
  object QCetak2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.trans_no, a.trans_date, a.code_cust, CASE WHEN d.custom' +
        'er_name_pkp  IS NULL THEN a.name_cust ELSE d.customer_name_pkp E' +
        'ND AS name_cust, d.code_region,  d.name_region, grand_tot as tot' +
        '_piutang, sub_total as tot_pejualan, ppn_value as tot_ppn  FROM ' +
        't_selling a  LEFT JOIN ( SELECT t_customer.customer_code, t_cust' +
        'omer.customer_name_pkp,  t_customer.code_region, t_customer.name' +
        '_region FROM t_customer) d ON a.code_cust::text = d.customer_cod' +
        'e::text   LEFT JOIN (SELECT "code_province", "code" as code_kab,' +
        ' "name" as name_kab,  "code_karesidenan"  from t_region_regency ' +
        'WHERE deleted_at IS NULL)b   ON "left"(code_region, 4)=b.code_ka' +
        'b  where trans_date between '#39'2025-10-01'#39'  and '#39'2025-10-26'#39' '
      ' ORDER BY trans_date, trans_no')
    Left = 456
    Top = 208
    object QCetak2trans_no: TStringField
      FieldName = 'trans_no'
      Size = 255
    end
    object QCetak2trans_date: TDateField
      FieldName = 'trans_date'
    end
    object QCetak2code_cust: TStringField
      FieldName = 'code_cust'
      Size = 255
    end
    object QCetak2name_cust: TStringField
      FieldName = 'name_cust'
      ReadOnly = True
      Size = 255
    end
    object QCetak2code_region: TStringField
      FieldName = 'code_region'
      ReadOnly = True
      Size = 50
    end
    object QCetak2name_region: TStringField
      FieldName = 'name_region'
      ReadOnly = True
      Size = 255
    end
    object QCetak2tot_piutang: TFloatField
      FieldName = 'tot_piutang'
    end
    object QCetak2tot_pejualan: TFloatField
      FieldName = 'tot_pejualan'
    end
    object QCetak2tot_ppn: TFloatField
      FieldName = 'tot_ppn'
    end
  end
  object QCetakRincianBarang2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        ' SELECT a.trans_no,a.trans_date,a.code_cust,a.name_cust,a.amount' +
        ',a.code_unit,a.jum_ak_deb,code_karesidenan,code_kab,name_kab fro' +
        'm "public"."vbhpenjualan" a  '
      
        '                LEFT JOIN (SELECT "code_province", "code" as cod' +
        'e_kab, "name" as name_kab, '
      
        '               "code_karesidenan"  from t_region_regency WHERE d' +
        'eleted_at IS NULL)b  '
      '               ON "left"(code_region, 4)=b.code_kab ')
    MasterSource = DataSource1
    MasterFields = 'trans_no'
    DetailFields = 'trans_no'
    Left = 520
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'trans_no'
        ParamType = ptInput
        Value = 'FP/001/13/X/2025/HLJ/0'
      end>
  end
  object Report2: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PreviewOptions.ZoomMode = zmWholePage
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45673.924529294000000000
    ReportOptions.LastChange = 45956.910922777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    OnGetValue = ReportGetValue
    Left = 504
    Top = 336
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 5.000000000000000000
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
        Height = 132.283550000000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object nama_pt: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 0.102350000000000000
          Width = 748.346940000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'nama_pt')
          ParentFont = False
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 52.338590000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'periode')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 22.015770000000000000
          Width = 748.346940000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Rincian Penjualan Per Barang')
          ParentFont = False
        end
        object wilayah: TfrxMemoView
          AllowVectorExport = True
          Left = 310.529444110000000000
          Top = 75.590600000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Wilayah :')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 109.606299210000000000
          Width = 149.982256230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nomor')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 162.519790000000000000
          Top = 109.606299210000000000
          Width = 97.068836230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 264.008040000000000000
          Top = 109.606299210000000000
          Width = 199.116146230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811380000000000000
          Top = 109.606299210000000000
          Width = 63.053066230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Satuan')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 109.606299210000000000
          Width = 131.084606230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penjualan')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Top = 109.606299210000000000
          Width = 78.171186230000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kuantitas')
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
        Height = 18.897637800000000000
        Top = 253.228510000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        Stretched = True
        object frxDBDBHPenj_dettrans_no: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559055120000000000
          Width = 150.047244090000000000
          Height = 18.897650000000000000
          DataField = 'trans_no'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."trans_no"]')
          ParentFont = False
        end
        object frxDBDBHPenj_dettrans_date: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 162.519685040000000000
          Width = 97.133858270000000000
          Height = 18.897650000000000000
          DataField = 'trans_date'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."trans_date"]')
          ParentFont = False
        end
        object frxDBDBHPenj_detname_cust: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 264.188976380000000000
          Width = 199.181102360000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'name_cust'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."name_cust"]')
          ParentFont = False
        end
        object frxDBDBHPenj_detamount: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 468.661417320000000000
          Width = 78.236220470000000000
          Height = 18.897650000000000000
          DataField = 'amount'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."amount"]')
          ParentFont = False
        end
        object frxDBDBHPenj_detcode_unit: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 551.811023620000000000
          Width = 63.118110240000000000
          Height = 18.897650000000000000
          DataField = 'code_unit'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."code_unit"]')
          ParentFont = False
        end
        object frxDBDBHPenj_detjum_ak_deb: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842519690000000000
          Width = 131.149606300000000000
          Height = 18.897650000000000000
          DataField = 'jum_ak_deb'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          DisplayFormat.FormatStr = '%2.n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset2."jum_ak_deb"]')
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
        Height = 52.913420000000000000
        Top = 374.173470000000000000
        Width = 755.906000000000000000
        object Memo1: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 438.047527000000000000
          Top = 34.015770000000000000
          Width = 313.700990000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Halaman [Page#] dari [TotalPages#]')
        end
        object Memo9: TfrxMemoView
          Align = baBottom
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 34.015770000000000000
          Width = 389.291590000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Tercetak Pada Tanggal [Date] [Time]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 7.559060000000000000
          Width = 748.346940000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 6.897650000000000000
          Width = 748.346940000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Smart Backoffice Automation System Report')
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
        Height = 18.897650000000000000
        Top = 211.653680000000000000
        Width = 755.906000000000000000
        Condition = 'frxDBDataset2."name_item"'
        object frxDBDBHPenj_detname_item: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDBHPenj_det'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."name_item"]')
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
        Height = 18.897637800000000000
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 619.842519685039000000
          Width = 131.084606230000000000
          Height = 1.133858267716540000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 468.661417322835000000
          Width = 78.171186230000000000
          Height = 1.133858270000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16744448
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 468.661720000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."amount">,MasterData1)]')
          ParentFont = False
        end
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clBlue
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDataset2."jum_ak_deb">,MasterData1)]')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'trans_no=trans_no'
      'no_inv_tax=no_inv_tax'
      'trans_date=trans_date'
      'code_cust=code_cust'
      'name_cust=name_cust')
    DataSource = DataSource1
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 224
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
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
      'jum_ak_kre_lain=jum_ak_kre_lain'
      'code_karesidenan=code_karesidenan'
      'code_kab=code_kab'
      'name_kab=name_kab')
    DataSource = DataSource2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 608
    Top = 328
  end
  object DataSource1: TDataSource
    DataSet = QCetak2
    Left = 401
    Top = 216
  end
  object DataSource2: TDataSource
    DataSet = QCetakRincianBarang2
    Left = 417
    Top = 320
  end
end
