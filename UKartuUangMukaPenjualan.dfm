object FKartuUangMukaPenjualan: TFKartuUangMukaPenjualan
  Left = 0
  Top = 0
  Caption = 'Kartu Uang Muka Penjualan'
  ClientHeight = 516
  ClientWidth = 1029
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
    Width = 1029
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
    Width = 1029
    Height = 389
    Align = alClient
    DataSource = dsMaster
    DynProps = <>
    ReadOnly = True
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 200
    SearchPanel.Enabled = True
    TabOrder = 1
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nama_pelanggan'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pelanggan'
        Width = 249
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nama_pkp'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama PKP'
        Width = 248
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'alamat'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Alamat'
        Width = 421
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'saldo_awal'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Saldo Awal'
        Width = 203
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridDetail: TDBGridEh
        Left = 0
        Top = 0
        Width = 992
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
            FieldName = 'tgltrans'
            Footers = <>
            Title.Caption = 'Tanggal'
            Width = 80
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'trans_no'
            Footers = <>
            Title.Caption = 'No Referensi'
            Width = 165
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'saldo_awal'
            Footers = <>
            Title.Caption = 'Jumlah | Saldo Awal'
            Visible = False
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 269
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
            FieldName = 'saldo_komulatif'
            Footers = <>
            Title.Caption = 'Jumlah | Saldo'
            Width = 119
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_urut'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object ActMenu: TActionManager
    Left = 741
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
    Left = 741
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
          UserWidth = 121
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
          UserDefine = [udWidth]
          UserWidth = 269
          Visible = True
          ItemName = 'edNama_Pelanggan'
        end
        item
          Visible = True
          ItemName = 'cbSBU'
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
    object dxBarManager1Bar2: TdxBar
      Caption = 'Laporan'
      CaptionButtons = <>
      DockedLeft = 581
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
    object cbSBU: TdxBarCombo
      Caption = 'SBU                '
      Category = 0
      Hint = 'SBU                '
      Visible = ivAlways
      ItemIndex = -1
    end
    object dxBarLargeButton1: TdxBarLargeButton
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
      OnClick = dxBarLargeButton1Click
    end
    object edNama_Pelanggan: TcxBarEditItem
      Caption = 'Pelanggan     '
      Category = 0
      Hint = 'Pelanggan     '
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edNama_PelangganPropertiesButtonClick
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      PropertiesClassName = 'TcxRadioGroupProperties'
      Properties.Items = <>
      InternalEditValue = ''
    end
    object dxBarMRUListItem1: TdxBarMRUListItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      Items.Strings = (
        'TP'
        'Kabupaten')
    end
    object dtAkhir: TcxBarEditItem
      Caption = 'Tanggal Akhir'
      Category = 0
      Hint = 'Tanggal Akhir'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ShowTime = False
    end
    object dtAwal: TcxBarEditItem
      Caption = 'Tanggal Awal '
      Category = 0
      Hint = 'Tanggal Awal '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ShowTime = False
    end
  end
  object QKartuUangMuka: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT customer_code,customer_name,customer_name_pkp,address,sal' +
        'do_awal from get_kartu_uang_muka_penjualan('#39'2026-01-01'#39', '#39'2026-0' +
        '2-27'#39') WHERE urut=0')
    Left = 669
    Top = 304
    object QKartuUangMukacustomer_code: TMemoField
      FieldName = 'customer_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukacustomer_name: TMemoField
      FieldName = 'customer_name'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukacustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaaddress: TMemoField
      FieldName = 'address'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukasaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      ReadOnly = True
    end
  end
  object DsKartuUangMuka: TDataSource
    DataSet = QKartuUangMuka
    Left = 573
    Top = 280
  end
  object QKartuUangMukaTRX: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT * FROM get_kartu_uang_muka_penjualan('#39'2026-01-01'#39', '#39'2026-' +
        '02-27'#39')')
    Left = 821
    Top = 326
    object QKartuUangMukaTRXcustomer_code: TMemoField
      FieldName = 'customer_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaTRXcustomer_name: TMemoField
      FieldName = 'customer_name'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaTRXcustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaTRXaddress: TMemoField
      FieldName = 'address'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaTRXtrans_date: TDateField
      FieldName = 'trans_date'
      ReadOnly = True
    end
    object QKartuUangMukaTRXtrans_no: TMemoField
      FieldName = 'trans_no'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaTRXsaldo_awal: TFloatField
      FieldName = 'saldo_awal'
      ReadOnly = True
    end
    object QKartuUangMukaTRXdebet: TFloatField
      FieldName = 'debet'
      ReadOnly = True
    end
    object QKartuUangMukaTRXkredit: TFloatField
      FieldName = 'kredit'
      ReadOnly = True
    end
    object QKartuUangMukaTRXdescription: TMemoField
      FieldName = 'description'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QKartuUangMukaTRXurut: TSmallintField
      FieldName = 'urut'
      ReadOnly = True
    end
    object QKartuUangMukaTRXsaldo_komulatif: TFloatField
      FieldName = 'saldo_komulatif'
      ReadOnly = True
    end
  end
  object dsKartuUangMukaTRX: TDataSource
    DataSet = QKartuUangMukaTRX
    Left = 757
    Top = 334
  end
  object MemMaster: TMemTableEh
    Params = <>
    Left = 136
    Top = 358
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
    object MemMasternama_pkp: TStringField
      FieldName = 'nama_pkp'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object nama_pkp: TMTStringDataFieldEh
          FieldName = 'nama_pkp'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
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
    Left = 56
    Top = 342
  end
  object dsMasterDetail: TDataSource
    DataSet = MemMasterDetail
    Left = 280
    Top = 342
  end
  object MemMasterDetail: TMemTableEh
    DetailFields = 'kode_cust'
    MasterFields = 'kode_pelanggan'
    MasterSource = dsMaster
    Params = <>
    Left = 360
    Top = 350
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
      Size = 100
    end
    object MemMasterDetailsaldo_komulatif: TFloatField
      FieldName = 'saldo_komulatif'
      EditFormat = '#,##0.##'
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
          DisplayWidth = 100
          Size = 100
        end
        object saldo_komulatif: TMTNumericDataFieldEh
          FieldName = 'saldo_komulatif'
          NumericDataType = fdtFloatEh
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
  object QCetak: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT * from get_kartu_uang_muka_penjualan('#39'2026-01-01'#39','#39'2026-0' +
        '2-26'#39')  WHERE customer_code='#39'PL200544'#39)
    Left = 749
    Top = 24
  end
  object frxDBDKartuUMPenjualan: TfrxDBDataset
    UserName = 'frxDBDKartuUMPenjualan'
    CloseDataSource = False
    FieldAliases.Strings = (
      'customer_code=customer_code'
      'customer_name=customer_name'
      'address=address'
      'contact_person=contact_person'
      'code_tp=code_tp'
      'tp=tp'
      'code_karesidenan=code_karesidenan'
      'karesidenan=karesidenan'
      'code_kecamatan=code_kecamatan'
      'kecamatan=kecamatan'
      'trans_date=trans_date'
      'trans_no=trans_no'
      'saldo_awal=saldo_awal'
      'debet=debet'
      'kredit=kredit'
      'description=description'
      'created_at=created_at'
      'urut=urut'
      'saldo_komulatif=saldo_komulatif')
    DataSet = QCetak
    BCDToCurrency = False
    DataSetOptions = []
    Left = 821
    Top = 80
  end
  object dsCetak: TDataSource
    DataSet = QCetak
    Left = 813
    Top = 16
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44805.841268819400000000
    ReportOptions.LastChange = 46079.454156840280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 749
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDKartuUMPenjualan
        DataSetName = 'frxDBDKartuUMPenjualan'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      HGuides.Strings = (
        '107'
        '97'
        '100')
      VGuides.Strings = (
        '3,77953')
      PaperWidth = 210.000000000000000000
      PaperHeight = 330.000000000000000000
      PaperSize = 10000
      LeftMargin = 5.000000000000000000
      RightMargin = 5.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 214.582677170000000000
        Top = 18.897650000000000000
        Width = 755.906000000000000000
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Top = 16.645640000000000000
          Width = 755.906000000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsUnderline]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'KARTU UANG MUKA PENJUALAN')
          ParentFont = False
        end
        object SysMemo8: TfrxSysMemoView
          AllowVectorExport = True
          Left = 646.094930000000000000
          Top = 12.984230000000000000
          Width = 106.795300000000000000
          Height = 26.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hal. [PAGE#] dari [TOTALPAGES#]')
          ParentFont = False
        end
        object prsh: TfrxMemoView
          AllowVectorExport = True
          Left = 0.779530000000000000
          Top = 3.866110000000000000
          Width = 260.842610000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'MAB')
          ParentFont = False
          VAlign = vaBottom
        end
        object prsh_alamat: TfrxMemoView
          AllowVectorExport = True
          Top = 25.204700000000000000
          Width = 253.228346460000000000
          Height = 52.913420000000000000
          StretchMode = smMaxHeight
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat Perusahaan')
          ParentFont = False
        end
        object Shape1: TfrxShapeView
          AllowVectorExport = True
          Top = 81.102350000000000000
          Width = 755.905511811024000000
          Height = 0.102350000000000000
          Frame.Typ = []
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 13.000000000000000000
          Top = 90.708661420000000000
          Width = 80.488250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nama')
          ParentFont = False
          VAlign = vaCenter
        end
        object Shape4: TfrxShapeView
          AllowVectorExport = True
          Top = 83.102350000000000000
          Width = 755.905511811024000000
          Height = 0.102350000000000000
          Frame.Typ = []
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 97.000000000000000000
          Top = 90.708661420000000000
          Width = 11.488250000000000000
          Height = 18.897637800000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 90.708661420000000000
          Width = 588.488250000000000000
          Height = 18.897637800000000000
          DataSetName = 'frxDBDatasetUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."customer_name"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object periode: TfrxMemoView
          AllowVectorExport = True
          Left = 1.000000000000000000
          Top = 40.763760000000000000
          Width = 755.906000000000000000
          Height = 41.574830000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '  ')
          ParentFont = False
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Top = 182.078740160000000000
          Width = 61.816474860000000000
          Height = 32.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Tanggal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo55: TfrxMemoView
          AllowVectorExport = True
          Left = 61.975001280000000000
          Top = 182.078740160000000000
          Width = 140.052089640000000000
          Height = 32.503937010000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Referensi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 202.651120530000000000
          Top = 182.078740160000000000
          Width = 264.325257420000000000
          Height = 32.503937010000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Keterangan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 467.346456690000000000
          Top = 182.078740160000000000
          Width = 96.377952760000000000
          Height = 32.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Debet')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 13.000000000000000000
          Top = 113.385826770000000000
          Width = 80.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Alamat')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 97.000000000000000000
          Top = 113.385826770000000000
          Width = 11.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':        ')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 114.385826770000000000
          Width = 588.488250000000000000
          Height = 37.897650000000000000
          DataSetName = 'frxDBDatasetUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."address"]')
          ParentFont = False
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 13.000000000000000000
          Top = 154.960629920000000000
          Width = 80.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'No. Telepon')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 97.000000000000000000
          Top = 154.960629920000000000
          Width = 11.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            ':')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385826770000000000
          Top = 154.960629920000000000
          Width = 588.488250000000000000
          Height = 18.897650000000000000
          DataSetName = 'frxDBDatasetUM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."contact_person"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 564.000000000000000000
          Top = 182.102350000000000000
          Width = 96.377952760000000000
          Height = 32.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Kredit')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 660.000000000000000000
          Top = 182.102350000000000000
          Width = 96.377952760000000000
          Height = 32.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo')
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
        Height = 28.346456690000000000
        Top = 294.803340000000000000
        Width = 755.906000000000000000
        DataSet = frxDBDKartuUMPenjualan
        DataSetName = 'frxDBDKartuUMPenjualan'
        RowCount = 0
        Stretched = True
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Width = 61.816474860000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          DataField = 'trans_date'
          DataSet = frxDBDKartuUMPenjualan
          DataSetName = 'frxDBDKartuUMPenjualan'
          DisplayFormat.FormatStr = 'dd-mm-yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."trans_date"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 61.975001290000000000
          Width = 140.564910150000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          DataField = 'trans_no'
          DataSet = frxDBDKartuUMPenjualan
          DataSetName = 'frxDBDKartuUMPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."trans_no"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 467.346456690000000000
          Width = 96.377952760000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          DataSet = frxDBDKartuUMPenjualan
          DataSetName = 'frxDBDKartuUMPenjualan'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."debet"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 203.163941040000000000
          Width = 263.812436910000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          DataField = 'description'
          DataSet = frxDBDKartuUMPenjualan
          DataSetName = 'frxDBDKartuUMPenjualan'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."description"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 564.000000000000000000
          Width = 96.377952760000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          DataField = 'kredit'
          DataSet = frxDBDKartuUMPenjualan
          DataSetName = 'frxDBDKartuUMPenjualan'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."kredit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 660.000000000000000000
          Width = 96.377952760000000000
          Height = 28.346456690000000000
          StretchMode = smMaxHeight
          DataField = 'saldo_komulatif'
          DataSet = frxDBDKartuUMPenjualan
          DataSetName = 'frxDBDKartuUMPenjualan'
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDKartuUMPenjualan."saldo_komulatif"]')
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
        Height = 28.346456690000000000
        Top = 385.512060000000000000
        Width = 755.906000000000000000
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Width = 62.329295370000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo59: TfrxMemoView
          AllowVectorExport = True
          Left = 61.975001270000000000
          Width = 142.103371710000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 467.346456690000000000
          Width = 96.377952760000000000
          Height = 28.346456690000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDKartuUMPenjualan."debet">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo61: TfrxMemoView
          AllowVectorExport = True
          Left = 203.163941040000000000
          Width = 263.812436910000000000
          Height = 28.346456690000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Left = 564.000000000000000000
          Width = 96.377952760000000000
          Height = 28.346456690000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<frxDBDKartuUMPenjualan."kredit">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 659.992125980000000000
          Width = 96.377952760000000000
          Height = 28.346456690000000000
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<frxDBDKartuUMPenjualan."saldo_awal">)+SUM(<frxDBDKartuUMPe' +
              'njualan."debet">,MasterData1)-SUM(<frxDBDKartuUMPenjualan."kredi' +
              't">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
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
    Left = 600
    Top = 152
  end
end
