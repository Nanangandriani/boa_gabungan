object FRpt_NeracaLajur: TFRpt_NeracaLajur
  Left = 0
  Top = 0
  Caption = 'Neraca Lajur'
  ClientHeight = 601
  ClientWidth = 920
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
  OnShow = FormShow
  TextHeight = 13
  object Label2: TLabel
    Left = 90
    Top = 176
    Width = 36
    Height = 13
    Caption = 'Periode'
    Visible = False
    WordWrap = True
  end
  object Label3: TLabel
    Left = 148
    Top = 176
    Width = 4
    Height = 13
    Caption = ':'
    Visible = False
    WordWrap = True
  end
  object Label7: TLabel
    Left = 287
    Top = 176
    Width = 15
    Height = 13
    Caption = 's/d'
    Visible = False
  end
  object GProses: TGauge
    Left = 114
    Top = 210
    Width = 318
    Height = 17
    ForeColor = clMenuHighlight
    Progress = 0
    Visible = False
  end
  object DtMulai1: TRzDateTimeEdit
    Left = 160
    Top = 173
    Width = 120
    Height = 21
    EditType = etDate
    Format = 'dd/mm/yyyy'
    TabOrder = 0
    Visible = False
  end
  object DtSelesai1: TRzDateTimeEdit
    Left = 307
    Top = 173
    Width = 120
    Height = 21
    EditType = etDate
    Format = 'dd/mm/yyyy'
    TabOrder = 1
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 560
    Width = 920
    Height = 41
    Align = alBottom
    TabOrder = 2
    Visible = False
    ExplicitTop = 551
    ExplicitWidth = 914
    object BBatal: TRzBitBtn
      Left = 844
      Top = 1
      Height = 39
      Align = alRight
      Caption = 'Batal'
      TabOrder = 0
      OnClick = BBatalClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 838
    end
    object BPrint: TRzBitBtn
      Left = 765
      Top = 1
      Width = 79
      Height = 39
      Align = alRight
      Caption = 'Print'
      TabOrder = 1
      OnClick = BPrintClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        09090909090909E8E8E8E8E88181818181818181818181E8E8E8E85E89898989
        89898989895E5E09E8E8E8E2ACACACACACACACACACE2E281E8E85E5E5E5E5E5E
        5E5E5E5E5E5E095E09E8E2E2E2E2E2E2E2E2E2E2E2E281E281E85ED789898989
        8989898989895E0909E8E2E8ACACACACACACACACACACE28181E85ED789898989
        181289B490895E5E09E8E2E8ACACACACE281ACE281ACE2E281E85ED7D7D7D7D7
        D7D7D7D7D7D75E5E5E09E2E8E8E8E8E8E8E8E8E8E8E8E2E2E2815ED789898989
        8989898989895E5E5E09E2E8ACACACACACACACACACACE2E2E281E85E5E5E5E5E
        5E5E5E5E5E89895E5E09E8E2E2E2E2E2E2E2E2E2E2ACACE2E281E8E85ED7D7D7
        D7D7D7D7D75E89895E09E8E8E2E8E8E8E8E8E8E8E8E2ACACE281E8E8E85ED7E3
        E3E3E3E3D75E5E5E09E8E8E8E8E2E8ACACACACACE8E2E2E281E8E8E8E85ED7D7
        D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85ED7
        E3E3E3E3E3D75EE8E8E8E8E8E8E8E2E8ACACACACACE8E2E8E8E8E8E8E8E85ED7
        D7D7D7D7D7D7D75EE8E8E8E8E8E8E2E8E8E8E8E8E8E8E8E2E8E8E8E8E8E8E85E
        5E5E5E5E5E5E5E5EE8E8E8E8E8E8E8E2E2E2E2E2E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 759
    end
  end
  object ProgressBar1: TProgressBar
    Left = 307
    Top = 58
    Width = 318
    Height = 17
    TabOrder = 3
    Visible = False
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 920
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 4
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
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 127
    Width = 920
    Height = 433
    Align = alClient
    DataSource = DsNeraca_lajur
    DrawMemoText = True
    DynProps = <>
    FooterRowCount = 1
    SumList.Active = True
    TabOrder = 5
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_code'
        Footers = <>
        Title.Caption = 'No. Perkiraan'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Perkiraan'
        Width = 158
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'debit'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Saldo Awal | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kredit'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Saldo Awal | K'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'db'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Mutasi Total | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kd'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Mutasi Total | K'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'dbnr'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Neraca Saldo | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kdnr'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Neraca Saldo | K'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'dbpy'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Penyesuaian | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kdpy'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Penyesuaian | K'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'dbnr2'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'NearacaSaldo Penyesuaian | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kdnr2'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'NearacaSaldo Penyesuaian | K'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'dblr'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Laba Rugi | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kdlr'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Laba Rugi | K'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'dbnr3'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Neraca | D'
        Width = 100
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00;'#39#39
        DynProps = <>
        EditButtons = <>
        FieldName = 'kdnr3'
        Footer.DisplayFormat = '#,##0.00;'#39#39
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Neraca | K'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object CbBulan: TComboBox
    Left = 58
    Top = 40
    Width = 151
    Height = 21
    Color = clInactiveBorder
    TabOrder = 6
    Items.Strings = (
      ''
      'Januari  '
      'Februari  '
      'Maret  '
      'April  '
      'Mei  '
      'Juni  '
      'Juli  '
      'Agustus  '
      'September  '
      'Oktober  '
      'November  '
      'Desember  ')
  end
  object DbNeraca_lajur: TfrxDBDataset
    UserName = 'DbNeraca_lajur'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kelompok_akun=kelompok_akun'
      'account_code=account_code'
      'notr=notr'
      'account_name=account_name'
      'debit=debit'
      'kredit=kredit'
      'db=db'
      'kd=kd'
      'dbpy=dbpy'
      'kdpy=kdpy'
      'dbnr=dbnr'
      'kdnr=kdnr'
      'dbnr2=dbnr2'
      'kdnr2=kdnr2'
      'dbnr3=dbnr3'
      'kdnr3=kdnr3'
      'dblr=dblr'
      'kdlr=kdlr')
    DataSet = QNeraca_lajur
    BCDToCurrency = False
    DataSetOptions = []
    Left = 430
    Top = 28
  end
  object QNeraca_lajur: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT w.kelompok_akun ,w.kd_akun account_code,w.notr,CASE'#9'WHEN ' +
        'w.notr = 0 THEn concat ('#39#39',w.nama_perkiraan ) ELSE w. nama_perki' +
        'raan END account_name,SUM ( w.debit ) debit,SUM ( w.kredit ) kre' +
        'dit,SUM ( w.db ) db,SUM ( w.kd ) kd,SUM ( w.dbpy ) dbpy, SUM ( w' +
        '.kdpy ) kdpy,SUM ( w.dbnr ) dbnr,SUM ( w.kdnr ) kdnr,SUM ( w.dbn' +
        'r2 ) dbnr2,SUM ( w.kdnr2 ) kdnr2,SUM ( w.dbnr3 ) dbnr3,SUM ( w.k' +
        'dnr3 ) kdnr3,SUM ( w.dblr ) dblr,SUM ( w.kdlr ) kdlr  FROM /*Tam' +
        'bahan baru di atas*/   (SELECT xxx.*,CASE'#9'WHEN yy.header_code IS' +
        ' NULL THEN'#9'0 ELSE 1 END notr,yy.header_code FROM (SELECT'#9'* ,CASE' +
        #9'WHEN ( xx4.kelompok_akun = 1 AND  xx4.dbnr2 > 0 ) THEN xx4.dbnr' +
        '2 ELSE 0 END dbnr3,CASE'#9'WHEN ( xx4.kelompok_akun = 1 AND xx4.kdn' +
        'r2 > 0 ) THEN'#9'xx4.kdnr2 ELSE 0  END kdnr3, CASE WHEN (xx4.kelomp' +
        'ok_akun = 2 AND xx4.dbnr2 > 0 ) THEN xx4.dbnr2 ELSE 0 END dblr,C' +
        'ASE'#9'WHEN ( xx4.kelompok_akun = 2 AND xx4.kdnr2 > 0 ) THEN xx4. k' +
        'dnr2 ELSE 0  END kdlr FROM (SELECT'#9'*,CASE'#9'WHEN ( xx3.dbnr-xx3.kd' +
        'nr ) + (  xx3.dbpy-xx3.kdpy ) > 0 THEN'#9'(xx3.dbnr- xx3.kdnr) + (x' +
        'x3.dbpy-xx3.kdpy ) ELSE 0 END dbnr2, CASE'#9'WHEN (xx3.kdnr -xx3.db' +
        'nr ) + (xx3.kdpy-xx3.dbpy ) > 0 THEN'#9'(  xx3.kdnr -  xx3.dbnr ) +' +
        ' (  xx3.kdpy -  xx3.dbpy ) ELSE 0 END kdnr2 FROM  (SELECT'#9'*,CASE' +
        #9'WHEN xx2.debit - xx2.kredit + xx2.db - xx2.kd > 0 THEN'#9'xx2.debi' +
        't - xx2.kredit + xx2.db - xx2.kd ELSE 0 END dbnr, CASE'#9'WHEN xx2.' +
        'kredit - xx2.debit + xx2.kd - xx2.db > 0 THEN'#9'xx2.kredit - xx2.d' +
        'ebit + xx2.kd - xx2.db ELSE 0 END kdnr FROM'#9' (SELECT'#9'xx.kelompok' +
        '_akun,xx.kd_akun,xx.nama_perkiraan,CASE WHEN xx.debit > 0 THEN'#9'x' +
        'x.debit ELSE 0 END debit,CASE WHEN xx.kredit > 0 THEN'#9'xx. kredit' +
        ' ELSE 0 END kredit,CASE'#9'WHEN xx.db > 0 THEN'#9'0 ELSE xx.db END db,' +
        'CASE'#9'WHEN xx.kd > 0 THEN'#9'0 ELSE xx.kd '#9'END kd,CASE WHEN xx.dbpy ' +
        '> 0 THEN 0 ELSE xx.dbpy '#9'END dbpy,CASE WHEN xx.kdpy > 0 THEN'#9'0 E' +
        'LSE xx.kdpy END kdpy FROM '#9'/* HEADER */  (SELECT'#9'aa.balance_stat' +
        'us kelompok_akun,aa.kd_akun,aa.account_name nama_perkiraan,CASE ' +
        'WHEN aa.debit > 0 THEN aa.debit ELSE NULL END debit,CASE WHEN aa' +
        '.kredit IS NULL THEN 0 ELSE aa.kredit END kredit, CASE'#9'WHEN b.db' +
        ' IS NULL THEN 0 ELSE b.db END db,CASE'#9'WHEN b.kd IS NULL THEN 0 E' +
        'LSE b.kd '#9'END kd,CASE WHEN C.db IS NULL THEN'#9'0 ELSE C.db '#9'END db' +
        'py,CASE'#9'WHEN C.kd IS NULL THEN'#9'0 ELSE C.kd '#9'END kdpy FROM'#9'(SELEC' +
        'T C.code kd_akun,C.header_code,C.balance_status,C.account_name,S' +
        'UM (c.db ) debit,'#9'SUM (C.kd ) kredit FROM  '#9'(SELECT DISTINCT A.c' +
        'ode,A.header_code,A.account_name,A.balance_status,b.db,b.kd FROM' +
        #9't_ak_account'#9'A INNER JOIN "VSearch_Item_Neraca" b ON A.code = b' +
        '.account_code WHERE  /*balance_status='#39'1'#39' and*/ code = header_co' +
        'de AND header_code <> '#39'5400'#39' ) C  GROUP BY C.code,C.header_code,' +
        'C.balance_status,C.account_name ORDER BY'#9'C.code ASC) AA LEFT JOI' +
        'N LATERAL (SELECT CASE WHEN status_dk = '#39'D'#39' THEN SUM(amount) ELS' +
        'E 0 END db,CASE WHEN status_dk = '#39'K'#39' THEN'#9'SUM(amount)ELSE 0 END ' +
        'kd,b.code FROM'#9't_general_ledger_real'#9'A  INNER JOIN t_ak_account ' +
        'b ON A.account_code = b.code WHERE'#9'b.code = aa.kd_akun AND A.mod' +
        'ule_id <> 7 AND (to_char( trans_date, '#39'yyyy'#39' ) = '#39'2025'#39') AND ( t' +
        'o_char( trans_date, '#39'mm'#39' ) = '#39'3'#39') GROUP BY b.code,A.status_dk) b' +
        ' ON 1 = 1  '#9'LEFT JOIN LATERAL (SELECT CASE WHEN status_dk = '#39'D'#39' ' +
        'THEN SUM ( amount ) ELSE 0 END db,CASE'#9'WHEN status_dk = '#39'K'#39' THEN' +
        #9'SUM (amount) ELSE 0 '#9'END kd,'#9'b.code FROM'#9't_general_ledger_real'#9 +
        'A INNER JOIN t_ak_account b ON A.account_code = b.code WHERE'#9'b.c' +
        'ode = aa.kd_akun AND b.code <> '#39'1112.01'#39' '#9'AND A.module_id = 7 '#9'A' +
        'ND  ( to_char( trans_date, '#39'yyyy'#39' ) = '#39'2025'#39') AND ( to_char( tra' +
        'ns_date, '#39'mm'#39' ) = '#39'3'#39')   GROUP BY'#9'b.code,A.status_dk '#9') C ON 1 =' +
        ' 1 ORDER BY'#9'kd_akun ASC ) xx ) xx2) xx3   UNION  SELECT'#9'xx31.kel' +
        'ompok_akun,xx31.kd_akun,xx31.nama_perkiraan,xx31.debit,xx31.kred' +
        'it,xx31.db,xx31.kd,xx31.dbpy,xx31.kdpy,xx31.dbnr,xx31.kdnr, CASE' +
        #9'WHEN ( xx31.dbnr - xx31.kdnr ) + ( xx31.dbpy - xx31.kdpy ) > 0 ' +
        'THEN'#9'( xx31.dbnr - xx31.kdnr ) + ( xx31.dbpy - xx31.kdpy ) ELSE ' +
        '0 END dbnr2, CASE'#9'WHEN ( xx31.dbnr - xx31.dbnr ) + ( xx31.kdpy -' +
        ' xx31.dbpy ) > 0 THEN'#9'( xx31.kdnr - xx31.dbnr ) + ( xx31.kdpy - ' +
        'xx31.dbpy ) ELSE 0 END kdnr2 FROM'#9' (/*bop detail*/ SELECT'#9'xx3.ke' +
        'lompok_akun,xx3.kd_akun,xx3.nama_perkiraan,xx3.debit,xx3.kredit,' +
        'xx3.db,xx3.kd,xx3.dbpy,xx3.kdpy,xx3.dbnr,xx3.kdnr,0 dbnr2,0 kdnr' +
        '2 FROM   (SELECT'#9'*,CASE'#9'WHEN xx2.debit - xx2.kredit + xx2.db - x' +
        'x2.kd > 0 THEN'#9'xx2.debit - xx2.kredit + xx2.db - xx2.kd ELSE 0 E' +
        'ND dbnr, CASE'#9'WHEN xx2.kredit -xx2.debit + xx2.kd - xx2.db > 0 T' +
        'HEN xx2.kredit - xx2.debit + xx2.kd - xx2.db ELSE 0 END kdnr FRO' +
        'M '#9'(SELECT'#9'xx.kelompok_akun,xx.kd_akun,xx.nama_perkiraan,CASE'#9'WH' +
        'EN xx.debit > 0 THEN xx.debit ELSE 0 END debit,CASE'#9'WHEN xx.kred' +
        'it >0 THEN'#9'xx.debit ELSE 0 END kredit, CASE'#9'WHEN xx.db >0 THEN x' +
        'x.db ELSE 0 END db,CASE'#9'WHEN xx.kd >0 THEN xx.kd  ELSE 0 END kd,' +
        'CASE'#9'WHEN xx.dbpy>0  THEN xx.dbpy ELSE 0'#9'END dbpy,CASE'#9'WHEN xx.k' +
        'dpy >0 THEN'#9'xx.kdpy ELSE 0'#9'END kdpy FROM (SELECT'#9'aa.balance_stat' +
        'us kelompok_akun,aa.kd_akun,aa.account_name nama_perkiraan,CASE'#9 +
        'WHEN aa.debit > 0 THEN'#9'aa.debit ELSE NULL END debit,CASE'#9'WHEN aa' +
        '.kredit IS NULL THEN'#9'0 ELSE aa.kredit END kredit, CASE'#9'WHEN b.db' +
        ' IS NULL THEN 0 ELSE b.db END db,CASE'#9'WHEN b.kd IS NULL THEN 0 E' +
        'LSE b.kd END kd,CASE WHEN C.db IS NULL THEN 0 ELSE C.db END dbpy' +
        ',CASE WHEN C.kd IS NULL THEN 0 ELSE C.kd END kdpy FROM '#9'(SELECT ' +
        'C.code kd_akun,C.header_code,C.balance_status,C.account_name,d.d' +
        'ebit,d.kredit FROM  (SELECT DISTINCT code, header_code, account_' +
        'name, balance_status FROM t_ak_account A WHERE balance_status = ' +
        #39'1'#39' ) C  INNER JOIN (SELECT'#9'trans_year,A.periode1,A.periode2,tra' +
        'ns_month'
      
        ',A.trans_no,b.debit,b.kredit,'#9#9'account_code FROM'#9'(SELECT trans_y' +
        'ear, periode1, periode2, trans_month, trans_no FROM t_neraca_laj' +
        'ur WHERE  (to_char( periode2, '#39'yyyy'#39' ) <= '#39'2025'#39') AND ( to_char(' +
        ' periode2, '#39'mm'#39' ) < '#39'2'#39')   ORDER BY periode2 DESC LIMIT 1)'#9'A INN' +
        'ER JOIN t_neraca_lajur_det b ON A.trans_no = b.trans_no) d ON C.' +
        'code = d.account_code GROUP BY'#9'C.code,C.header_code,C.balance_st' +
        'atus,C.account_name,d.debit,d.kredit ORDER BY C.code ASC) AA   '
      ' LEFT JOIN LATERAL ('
      
        'SELECT CASE WHEN b.status_dk = '#39'D'#39' THEN SUM ( amount ) ELSE 0 EN' +
        'D db,CASE'#9'WHEN b.status_dk = '#39'K'#39' THEN SUM ( amount ) ELSE 0 END ' +
        'kd,b.account_code2 code FROM t_general_ledger_real'#9'A INNER JOIN ' +
        '"v_ak_account_nr"  b ON A.account_code = b.account_code2  WHERE ' +
        'b.header_code= aa.kd_akun AND '
      
        ' A.module_id <> 7 AND (to_char( trans_date, '#39'yyyy'#39' ) = '#39'2025'#39') A' +
        'ND ( to_char( trans_date, '#39'mm'#39' ) = '#39'02'#39')   GROUP BY b.account_co' +
        'de2 ,b.status_dk) b ON 1 = 1  '#9
      
        ' LEFT JOIN LATERAL (SELECT CASE WHEN b.status_dk = '#39'D'#39' THEN SUM ' +
        '( amount ) ELSE 0 END db,CASE'#9'WHEN b.status_dk = '#39'K'#39' THEN SUM ( ' +
        'amount ) ELSE 0 END kd,b.account_code2 code FROM t_general_ledge' +
        'r_real'#9'A INNER JOIN "v_ak_account_nr"  b ON A.account_code = b.a' +
        'ccount_code2 WHERE'#9'b.header_code = aa.kd_akun AND'
      
        #9'b.account_code2 <> '#39'1112.01'#39' AND A.module_id = 7 '#9'AND (to_char(' +
        ' trans_date, '#39'yyyy'#39' ) = '#39'2025'#39') AND ( to_char( trans_date, '#39'mm'#39' ' +
        ') = '#39'2'#39')   GROUP BY'#9'b.account_code2,'#9'b.status_dk '#9') C ON 1 = 1 O' +
        'RDER BY '#9'kd_akun ASC) xx ) xx2) xx3) xx31) xx4 ORDER BY'#9'kd_akun ' +
        ') XXX /*Tambahan baru di atas*/LEFT JOIN t_ak_header yy ON xxx.k' +
        'd_akun = yy.header_code) w GROUP BY'#9'w.kelompok_akun,w.kd_akun,w.' +
        'notr,w.nama_perkiraan')
    Left = 436
    Top = 80
  end
  object MemNeraca_lajur: TMemTableEh
    Params = <>
    DataDriver = DataSetDriverEh1
    Left = 563
    Top = 180
  end
  object Rpt: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44708.624305300900000000
    ReportOptions.LastChange = 45966.946209432870000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure MasterData1OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      '  if <DbNeraca_lajur."notr"> = 1 then'
      '  begin'
      '    memo30.left:=35;'
      '    memo30.Width:=139;'
      '  end else'
      '  if <DbNeraca_lajur."notr"> = 0 then'
      '  begin'
      '    memo30.left:=50;'
      '    memo30.Width:=124;'
      '  end;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    OnGetValue = RptGetValue
    Left = 488
    Top = 176
    Datasets = <
      item
        DataSet = DbNeraca_lajur
        DataSetName = 'DbNeraca_lajur'
      end>
    Variables = <>
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
      LeftMargin = 3.000000000000000000
      RightMargin = 3.000000000000000000
      TopMargin = 3.000000000000000000
      BottomMargin = 3.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        Height = 86.929143620000000000
        ParentFont = False
        Top = 18.897650000000000000
        Visible = False
        Width = 1224.567720000000000000
        object Mpt2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 1.889763780000000000
          Width = 1209.448818900000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT MENARA LAUT BERSATU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 18.897637800000000000
          Width = 1209.448818900000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NERACA LAJUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mtgl2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 37.795275590000000000
          Width = 1209.448818900000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODE : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Top = 56.314960630000000000
          Width = 45.354330710000000000
          Height = 30.614173230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Perk.')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 45.732283460000000000
          Top = 56.314960630000000000
          Width = 120.944881890000000000
          Height = 30.614173230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Perkiraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299212600000000000
          Top = 56.314960630000000000
          Width = 158.740157480000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299212600000000000
          Top = 71.811023620000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 245.669291340000000000
          Top = 71.811023620000000000
          Width = 79.370078740000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039370080000000000
          Top = 56.314960629921300000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mutasi Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039370080000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 400.629921260000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Top = 56.314960629921300000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Neraca Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811023620000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401574800000000000
          Top = 56.314960629921300000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penyesuaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401574800000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992125980000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 778.582677170000000000
          Top = 56.314960629921300000
          Width = 143.622042360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Neraca Saldo Penyesuaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 778.582677170000000000
          Top = 71.811023620000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 850.393700790000000000
          Top = 71.811023620000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.385826770000000000
          Top = 56.314960629921300000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Neraca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.385826770000000000
          Top = 71.811023620000000000
          Width = 73.700787400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.086614170000000000
          Top = 71.811023620000000000
          Width = 77.480314960000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 922.204724410000000000
          Top = 56.314960629921300000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Laba/ Rugi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 922.204724410000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 997.795275590000000000
          Top = 71.811023620000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
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
        Height = 18.897650000000000000
        Top = 268.346630000000000000
        Width = 1224.567720000000000000
        OnBeforePrint = 'MasterData1OnBeforePrint'
        DataSet = DbNeraca_lajur
        DataSetName = 'DbNeraca_lajur'
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015748031496100000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_code'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DbNeraca_lajur."account_code"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448821340000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kredit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039370080000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."db"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 400.629921260000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kd"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo36: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811023620000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'kdnr'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kdnr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo42: TfrxMemoView
          AllowVectorExport = True
          Left = 850.393700790000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'kdnr2'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kdnr2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo43: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.385826770000000000
          Width = 73.700787400000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'dbnr3'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."dbnr3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo47: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858272600000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."debit"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo48: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."dbnr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401574800000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."dbpy"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo51: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992125980000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kdpy"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.086614170000000000
          Width = 77.480314960000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'kdnr3'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kdnr3"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 922.204724410000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'dblr'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."dblr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Left = 997.795275590000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."kdlr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo58: TfrxMemoView
          AllowVectorExport = True
          Left = 778.583180000000000000
          Width = 71.811023620000000000
          Height = 18.897650000000000000
          StretchMode = smMaxHeight
          DataField = 'dbnr2'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[DbNeraca_lajur."dbnr2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo92: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 139.842519690000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<DbNeraca_lajur."notr"> = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = 10027007
          Highlight.Frame.Typ = []
          ParentFont = False
          WordWrap = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015748030000000000
          Width = 139.842519690000000000
          Height = 18.897637800000000000
          StretchMode = smMaxHeight
          DataField = 'account_name'
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<DbNeraca_lajur."notr"> = 1'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clWhite
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[DbNeraca_lajur."account_name"]')
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
        Height = 18.897637800000000000
        Top = 427.086890000000000000
        Visible = False
        Width = 1224.567720000000000000
        object Memo90: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DbNeraca_lajur."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur.' +
              '"dblr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo91: TfrxMemoView
          AllowVectorExport = True
          Left = 997.796466770000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo88: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.387017950000000000
          Width = 73.700787400000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo89: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.087805350000000000
          Width = 77.480314960000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DbNeraca_lajur."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur.' +
              '"dblr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 79.748041260000000000
        Top = 128.504020000000000000
        Width = 1224.567720000000000000
        object Mpt: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 1209.448818900000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT MENARA LAUT BERSATU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo60: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 15.118120000000000000
          Width = 1209.448818900000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'NERACA LAJUR')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mtgl: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236240000000000000
          Width = 1209.448818900000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PERIODE : ')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo62: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133858270000000000
          Width = 34.015748031496100000
          Height = 30.614173230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'No. Perk.')
          ParentFont = False
        end
        object Memo63: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015748030000000000
          Top = 49.133858270000000000
          Width = 139.842519685039000000
          Height = 30.614173230000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Nama Perkiraan')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo64: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858272600000000000
          Top = 49.133858270000000000
          Width = 151.181097480000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Saldo Awal')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo65: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858272600000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo66: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448821340000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo67: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039370080000000000
          Top = 49.133858267716500000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Mutasi Total')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo68: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039370080000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo69: TfrxMemoView
          AllowVectorExport = True
          Left = 400.629921260000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo70: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Top = 49.133858267716500000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Neraca Saldo')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo71: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo72: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811023620000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo73: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401574800000000000
          Top = 49.133858267716500000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Penyesuaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo74: TfrxMemoView
          AllowVectorExport = True
          Top = 49.133890000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo75: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992125980000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo76: TfrxMemoView
          AllowVectorExport = True
          Left = 778.582677170000000000
          Top = 49.133858267716500000
          Width = 143.622042360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Neraca Saldo Penyesuaian')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo77: TfrxMemoView
          AllowVectorExport = True
          Left = 778.582677170000000000
          Top = 64.629921260000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo78: TfrxMemoView
          AllowVectorExport = True
          Left = 850.393700790000000000
          Top = 64.629921260000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo79: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.385826770000000000
          Top = 49.133858267716500000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Neraca')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo80: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.385826770000000000
          Top = 64.629921260000000000
          Width = 73.700787400000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo81: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.086614170000000000
          Top = 64.669323070000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo82: TfrxMemoView
          AllowVectorExport = True
          Left = 922.204724410000000000
          Top = 49.133858267716500000
          Width = 151.181102360000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'Laba/ Rugi')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo83: TfrxMemoView
          AllowVectorExport = True
          Left = 922.204724410000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo84: TfrxMemoView
          AllowVectorExport = True
          Left = 997.795275590000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo85: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220780000000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo86: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 64.629921260000000000
          Width = 75.590551180000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'D')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo87: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.086614170000000000
          Top = 64.629921260000000000
          Width = 77.480314960000000000
          Height = 15.118110240000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'K')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 1054.488870000000000000
          Top = 7.559060000000000000
          Width = 154.960730000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Hal [PAGE#] Dari [TOTALPAGES#]')
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
        Height = 56.692937800000000000
        Top = 309.921460000000000000
        Width = 1224.567720000000000000
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Width = 34.015748031496100000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo35: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015748030000000000
          Width = 139.842519685039000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            'Jumlah')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 249.448821340000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kredit">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Left = 325.039370080000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."db">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 400.629921260000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kd">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 551.811023620000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kdnr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo44: TfrxMemoView
          AllowVectorExport = True
          Left = 778.582677170000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."dbnr2">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo45: TfrxMemoView
          AllowVectorExport = True
          Left = 850.393700790000000000
          Width = 71.811023620000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kdnr2">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo46: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.385826770000000000
          Width = 73.700787400000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."dbnr3">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo49: TfrxMemoView
          AllowVectorExport = True
          Left = 173.858272600000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."debit">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo52: TfrxMemoView
          AllowVectorExport = True
          Left = 476.220472440000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."dbnr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo53: TfrxMemoView
          AllowVectorExport = True
          Left = 627.401574800000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."dbpy">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo54: TfrxMemoView
          AllowVectorExport = True
          Left = 702.992125980000000000
          Width = 75.590551180000000000
          Height = 18.897637795275600000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00;(#,##0.00);'#39#39
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kdpy">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mkdnr3: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.086614170000000000
          Width = 77.480314960000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kdnr3">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo56: TfrxMemoView
          AllowVectorExport = True
          Left = 922.204724410000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."dblr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo57: TfrxMemoView
          AllowVectorExport = True
          Left = 997.795275590000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kdlr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo96: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Top = 18.897650000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DbNeraca_lajur."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur.' +
              '"dblr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo97: TfrxMemoView
          AllowVectorExport = True
          Left = 997.796466770000000000
          Top = 18.897650000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo98: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.387017950000000000
          Top = 18.897650000000000000
          Width = 73.700787400000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '-')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mkdnr4: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.087805350000000000
          Top = 18.897650000000000000
          Width = 77.480314960000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DbNeraca_lajur."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur.' +
              '"dblr">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo100: TfrxMemoView
          AllowVectorExport = True
          Left = 922.205320000000000000
          Top = 37.795300000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DbNeraca_lajur."dblr">,MasterData1,3)+(SUM(<DbNeraca_lajur' +
              '."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur."dblr">,MasterData1,' +
              '3))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo101: TfrxMemoView
          AllowVectorExport = True
          Left = 997.796466770000000000
          Top = 37.795300000000000000
          Width = 75.590551180000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            
              '[SUM(<DbNeraca_lajur."dblr">,MasterData1,3)+(SUM(<DbNeraca_lajur' +
              '."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur."dblr">,MasterData1,' +
              '3))]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo102: TfrxMemoView
          AllowVectorExport = True
          Left = 1073.387017950000000000
          Top = 37.795300000000000000
          Width = 73.700787400000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          DisplayFormat.FormatStr = '#,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."dbnr3">,MasterData1,3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo103: TfrxMemoView
          AllowVectorExport = True
          Left = 1147.087805350000000000
          Top = 37.795300000000000000
          Width = 77.480314960000000000
          Height = 18.897637800000000000
          DataSet = DbNeraca_lajur
          DataSetName = 'DbNeraca_lajur'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbNeraca_lajur."kdnr3">,MasterData1,3)+'
            
              '(SUM(<DbNeraca_lajur."kdlr">,MasterData1,3)-SUM(<DbNeraca_lajur.' +
              '"dblr">,MasterData1,3))]')
          ParentFont = False
          VAlign = vaCenter
          Formats = <
            item
              FormatStr = '#,##0.00'
              Kind = fkNumeric
            end
            item
            end>
        end
      end
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
    Left = 492
    Top = 8
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 805
      FloatTop = 8
      FloatClientWidth = 100
      FloatClientHeight = 130
      ItemLinks = <
        item
          UserDefine = [udWidth]
          UserWidth = 149
          Visible = True
          ItemName = 'DtMulai'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 152
          Visible = True
          ItemName = 'spTahun'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'DxRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBUpdate: TdxBarButton
      Caption = 'Update  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D960600000000000036000000280000001800000011000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFF6E3BBFFEEC7
        74FFEABC59FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC
        58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFECC2
        67FFF2D69AFFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFEFCA7CFFE3A41CFFECC3
        69FFF7E5BFFFF8EACCFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EA
        CAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACBFFF8EACAFFF0CE
        85FFE4A621FFE4A723FFFCF6EAFFFFFFFFFFFFFFFFFFE6AD33FFEECA7AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8E8C7FFE4A724FFF3D89EFFFFFFFFFFFFFFFFFFE6AE36FFF1D391FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE6AE36FFEFCA7CFFF5DE
        ADFFFAEFD9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC979FFE5AC2FFFE4A8
        25FFE8B343FFF8EBCDFFF4DDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3E3FFE2A115FFF4DB
        A7FFF8E9C8FFE5AB2EFFE5AA2AFFEDC36BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECD1FFECC2
        67FFE5AB2DFFE7B240FFE8B341FFE6AE36FFE7B03AFFFCF7EBFFFFFFFFFFFFFF
        FFFFFFFEFFFFE19C09FFF2D699FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D9
        A1FFE4A826FFE7B13DFFE8B341FFE8B341FFE7B13DFFE4A827FFF4DDACFFFFFF
        FFFFFFFFFFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF6E8FFE7AF38FFE6AF37FFE8B341FFE8B341FFE7B240FFE5AB2DFFECC2
        67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D38FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECC267FFE5AB2DFFE7B240FFE8B341FFE8B341FFE6AF
        37FFE6AF38FFFCF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFE6AD34FFF1D290FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DDABFFE4A827FFE7B13DFFE8B341FFE8B3
        41FFE7B13DFFE4A825FFF2D699FFFFFFFFFFFFFFFFFFEBBE5CFFE6AE35FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7EBFFE7B03AFFE6AE36FFE8B3
        41FFE7B03AFFE6AC31FFF8EACAFFF3D89DFFFFFFFFFFFDF9F0FFE5AB2DFFE3A5
        1EFFEBBE5DFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBF5FFFEBBF
        5FFFEBBF5FFFE9B950FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFECC36BFFE4A7
        23FFECC164FFFEFCF8FFEABA53FFE5AA2AFFE6AE36FFFFFFFFFFFFFFFFFFF9EB
        CFFFF7E4BCFFF6E4BCFFF6E3BAFFF6E3B9FFF6E2B8FFF6E2B6FFF6E1B5FFF5E0
        B3FFF5E0B2FFF4DCA8FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC
        D0FFF6E1B5FFE4A724FFE5AC2FFFE7B03BFFFCF6E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF7ECFFEDC36AFFF1D08BFFFFFFFFFFFFFFFFFF}
    end
    object dxBDelete: TdxBarButton
      Caption = 'Delete  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424DD60500000000000036000000280000001400000012000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFF9A9A
        FFFF0000FFFFBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBFFFF0000FFFF9D9DFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF7474FFFF0000FFFF0000FFFF0000FFFF9999FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
        FFFF0000FFFF0000FFFF0000FFFF7676FFFFFFFFFFFF7070FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF7E7EFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6FFFF7C7CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7171FFFF4343FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF6060FFFFE3E3FFFFFFFFFFFFFFFFFFFFE3E3FFFF5E5EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF4545FFFFFFFFFFFF4F4FFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3F3FFFFFDEDEFFFFDDDD
        FFFF3E3EFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5050
        FFFFFFFFFFFFFFFFFFFFFBFBFFFF5757FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF3333FFFF3232FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF5757FFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FFFF6161FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6262FFFFFBFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBCBCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFFBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFA8A8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6868FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6C6CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFFFF5858FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF5A5AFFFFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFF5555
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3636FFFF3636
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFFF9F9
        FFFFFFFFFFFFFCFCFFFF4A4AFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF4A4AFFFFE2E2FFFFE1E1FFFF4A4AFFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF4D4DFFFFFCFCFFFF3E3EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6D6DFFFFE8E8FFFFFFFFFFFFFFFF
        FFFFE8E8FFFF6C6CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF3E3EFFFF7575FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF8A8A
        FFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFF8A8AFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF7777FFFFFFFFFFFF7D7DFFFF0000
        FFFF0000FFFF0000FFFFA2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1FFFF0000FFFF0000FFFF0000FFFF7E7E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7FFFF0B0BFFFFC0C0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBFBFFFFF0C0CFFFFABABFFFFFFFFFFFFFFFFFFFF}
    end
    object dxBbaru: TdxBarLargeButton
      Caption = 'Baru  '
      Category = 0
      Visible = ivNever
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D660700000000000036000000280000001700000014000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA
        7CFFD09E6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A1
        6FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD09E6BFFD6AA
        7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7AD80FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D8FFC27A32FFD0985CFFD099
        5DFFD5A169FFBF7527FFE1C19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5D6FFEBCCABFFFFFFFFFFFFFFFFFFF0D4
        B6FFDEBA94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1E4D7FFE7C4A0FFFFFCF0FFDBAB7AFFDCB996FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A9
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFAF7FFE3BA90FFD4A16CFFE8D2BAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA7CFFD09E
        6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A2
        70FFCE9963FFC68746FFF4E9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF}
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'Print  '
      Category = 0
      Enabled = False
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D2E0B00000000000036000000280000001A0000001B000000010020000000
        00000000000074120000741200000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8
        F8FFE6E5E4FFDEDDDBFFDEDDDBFFE9E8E7FFFBFBFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F4FFBEBB
        B8FF95918BFF8F8B85FF928E88FF938F89FF97938EFF8E8983FF3C2814FF4532
        1FFF8D8176FFEEECEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1
        ADFF8D8882FF96918CFF9A9590FF9B9792FF9B9792FF9F9B97FF95908AFF4835
        22FF4E3C2AFF4E3C29FF473421FF37230EFF7B6E60FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEEE
        EDFF918D87FF96918CFF9A9691FF9B9792FF9B9792FF9B9792FF9F9C98FF928D
        86FF473420FF4E3C2AFF503E2CFF503E2CFF503E2CFF4F3D2BFF473421FF3F2B
        18FFE1DFDBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFE9E8E7FF8C8782FF999590FF9B9792FF9B9792FF9B9792FF9B9792FFA09C
        98FF908A83FF46331FFF4F3C2AFF503E2CFF503E2CFF503E2CFF503E2CFF503E
        2CFF503E2CFF4D3B29FF36210DFFD8D4D0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9F8F8FF8D8983FF9A9691FF9B9792FF9B9792FF9B9792FF9B97
        92FF9D9995FF888079FF402C18FF493724FF4A3725FF4A3725FF4A3725FF4C3A
        27FF503E2CFF503E2CFF503E2CFF503E2CFF4E3C2AFF38240FFFF3F2F1FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9994FF98948FFF9B9792FF9B9792FF9B97
        92FF9B9792FF9D9A96FF9E9994FF766758FF7D7063FF7E7164FF7E7164FF7E71
        64FF807366FF645444FF4C3A27FF503E2CFF503E2CFF503E2CFF503E2CFF4B39
        26FF544231FFFFFFFFFFFFFFFFFFFFFFFFFFD7D6D4FF918D87FF9B9792FF9B97
        92FF9B9792FF9B9792FFA19E9AFF786F65FFDBD7D3FF958A7FFF9C9288FF9C92
        88FF9C9288FF9C9288FF968B80FFE5E3E1FF412D1AFF503E2CFF503E2CFF503E
        2CFF503E2CFF503E2CFF3F2C18FFB9B2AAFFFFFFFFFFFFFFFFFF9B9792FF9995
        90FF9B9792FF9B9792FF9B9792FFA29F9BFF847B73FF37210CFFDDDAD7FF3925
        10FF473422FF473422FF473422FF473422FF392510FFDCD9D6FF412E1AFF503E
        2CFF503E2CFF503E2CFF503E2CFF503E2CFF4D3A28FF503E2CFFFFFFFFFFF4F3
        F3FF8F8A85FF9B9792FF9B9792FF9B9792FF9A9692FF72675CFF37220CFF331E
        0AFFDAD6D3FF412E1AFF503E2CFF503E2CFF503E2CFF503E2CFF412E1AFFD9D5
        D2FF341F0AFF422E1BFF412E1AFF483522FF503E2CFF503E2CFF503E2CFF3B27
        13FFEBE9E7FFD6D5D3FF948F8AFF9B9792FF9B9792FF96928DFFC2C0BDFFDBD6
        D2FFD7D3CFFFCDC8C3FFFEFEFEFF321D08FF44311EFF44311EFF44311EFF4431
        1EFF321D08FFFCFCFCFFCEC9C5FFD9D5D1FFE7E5E2FF92877CFF483522FF503E
        2CFF503E2CFF44311DFFB7AFA8FFC5C2BFFF96928CFF9B9792FF9B9792FF938F
        89FFF4F4F5FF37230FFF3B2712FF7B6E60FFFFFFFFFFB7B0A9FFBEB8B1FFBEB8
        B1FFBEB8B1FFBEB8B1FFB7B0A9FFFFFFFFFF7C6E61FF3B2712FF3A2611FFDDD9
        D5FF422F1BFF503E2CFF503E2CFF44311DFF998E84FFBCBAB7FF97928DFF9B97
        92FF9B9792FF938F89FFF1F1F1FF45321FFF4E3B29FF544231FF4D3B28FF5645
        33FF52412FFF554433FF554433FF513F2DFF594837FF544231FF554332FF4E3C
        29FF483521FFD7D3CFFF422F1BFF503E2CFF4A3725FF574737FFC4C2C1FFBEBB
        B8FF96928DFF9B9792FF9B9792FF938F89FFF1F1F1FF45321FFF4E3C2AFF4835
        23FFBEB7B0FF897D71FFBAB3ACFF91867CFF908579FFCCC7C2FF695A4AFF6F61
        52FF4A3825FF4F3D2BFF483521FFD7D3CFFF422F1BFF4A3724FF5E4E3FFFA09E
        9AFFBEBCB9FFC9C6C4FF95918CFF9B9792FF9B9792FF938F89FFF1F1F1FF4532
        1FFF4C3A27FF3E2A16FF756758FF564533FF6E5F50FF554433FF645344FF5341
        2FFF685849FF645444FF3F2B17FF4C3A28FF483521FFD7D3CFFF3C2713FF6052
        43FFA5A39FFF96928DFFC8C6C3FFDDDCDAFF938F89FF9B9792FF9B9792FF938F
        89FFF3F3F3FF36220EFF4C3927FFFFFFFFFFFCFBFBFFCBC6C1FFCFCAC5FFD1CC
        C8FFD0CBC7FFD1CCC8FFCAC5C0FFFDFDFDFFFFFFFFFF4C3A28FF3A2510FFD4CF
        CAFF564636FFA5A3A0FF9B9792FF938F89FFDDDBDAFFFFFFFFFF8D8883FF9A96
        91FF9B9792FF95918BFFD5D3D2FFBFB7B0FFBDB5AEFFE0DDD9FFEFECEAFF311B
        06FF422F1CFF422F1CFF422F1CFF422F1CFF311B06FFF0EEEDFFE8E6E3FFBEB6
        B0FFC0B9B1FFC6C3BFFF9B9894FF9B9792FF9A9691FF8D8883FFFEFEFEFFFFFF
        FFFFAAA7A3FF97938EFF9B9792FF9A9691FF948F8AFFA4A19DFFA5A29EFF9996
        91FFF4F5F4FF301A05FF412E1AFF412E1AFF412E1AFF412E1AFF321D08FFDFDB
        D8FF45321EFFA09C98FFA5A29EFF95918CFF9B9792FF9B9792FF97938EFFAAA6
        A2FFFFFFFFFFFFFFFFFFECEBEAFF8D8983FF9A9691FF9B9792FF9A9691FF9995
        90FF999590FF918D88FFECECEBFFD0CAC5FFD3CEC9FFD3CEC9FFD3CEC9FFD3CE
        C9FFD2CCC7FFDAD5D2FF8B857EFF9B9893FF999590FF9A9691FF9B9792FF9B97
        92FF8D8983FFEBEBEAFFFFFFFFFFFFFFFFFFFFFFFFFFB4B1ADFF95908BFF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF938E89FF96928DFF96928DFF9692
        8DFF96928DFF96928DFF96928DFF95918CFF9C9893FF9B9792FF9B9792FF9B97
        92FF9B9792FF95908BFFB4B1ADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF9A9691FF97938EFF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF97938EFF999590FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF98948FFF96918CFF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF96918CFF98938EFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAAA6A2FF908B
        86FF999590FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B9792FF9B97
        92FF9B9792FF9B9792FF9B9792FF999590FF908B86FFA9A6A2FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDCDBD9FF98938EFF918C87FF96928DFF999590FF9A9691FF9B97
        92FF9B9792FF9A9691FF999590FF96928DFF918C87FF97938EFFDCDAD9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3E2E0FFB9B7B3FF9C98
        93FF8D8983FF8F8B85FF8F8B85FF8D8983FF9C9893FFB9B7B3FFE3E2E0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFFFDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ItemLinks = <>
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Neraca Lajur'
      Category = 0
      Hint = 'Neraca Lajur'
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
      OnClick = BPrintClick
    end
    object DxRefresh: TdxBarLargeButton
      Caption = 'CariX'
      Category = 0
      Hint = 'CariX'
      Visible = ivNever
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
    object DtMulai: TcxBarEditItem
      Caption = 'Bulan     '
      Category = 0
      Hint = 'Bulan     '
      Visible = ivAlways
      PropertiesClassName = 'TcxLabelProperties'
    end
    object spTahun: TcxBarEditItem
      Caption = 'Tahun    '
      Category = 0
      Hint = 'Tahun    '
      Visible = ivAlways
      PropertiesClassName = 'TcxSpinEditProperties'
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'PrintX'
      Category = 0
      Hint = 'PrintX'
      Visible = ivNever
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
      OnClick = dxBarLargeButton2Click
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Cari'
      Category = 0
      Hint = 'Cari'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032302E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078220D0A092076696577426F783D223020302033322033322220
        7374796C653D22656E61626C652D6261636B67726F756E643A6E657720302030
        2033322033323B2220786D6C3A73706163653D227072657365727665223E0D0A
        3C7374796C6520747970653D22746578742F637373223E0D0A092E426C61636B
        7B66696C6C3A233732373237323B7D0D0A092E426C75657B66696C6C3A233131
        373744373B7D0D0A3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0
        B95F32223E0D0A093C7061746820636C6173733D22426C61636B2220643D224D
        31332C31374C322C32386C322C326C31312D31316C312D316C2D322D324C3133
        2C31377A222F3E0D0A093C673E0D0A09093C673E0D0A0909093C706174682063
        6C6173733D22426C75652220643D224D32302C34632D342E342C302D382C332E
        362D382C3873332E362C382C382C3873382D332E362C382D385332342E342C34
        2C32302C347A204D32302C3138632D332E332C302D362D322E372D362D367332
        2E372D362C362D3673362C322E372C362C360D0A090909095332332E332C3138
        2C32302C31387A222F3E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F673E0D
        0A3C2F7376673E0D0A}
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
      OnClick = dxBarLargeButton4Click
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'Neraca Lajur'
      Category = 0
      Hint = 'Neraca Lajur'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000018744558745469746C65005072696E745469746C65733B5072696E74
        3B393703740000046D49444154785EED96594C5C6514C7E9866CB16A6BA2D1EA
        83AF361A97C425F14163AC467990560553AA764191616B0B658452E850A16C71
        2476A50D04A929282D6B456D4A1B9A505310DA52C156CAE27406668159EE0C03
        E5EF776EBE7EC9F53AB7834BFAD293FC1EBE9973FEE737992F373704C06DE58E
        404872F54B21AC1672163342FF5B2853E48B1202371767566FBAC464F07F40D9
        4224804058C28117D06FAEC2F9D112152C44719E4F0F655236ED0824406651F1
        C667D0355C841F073F559158F9A2E23C9F1ECAA46CDAC177A904963096C6953E
        85CEDF0D68EBDFA862C39EE714E7F9F4502665D30EDA1548E09E778A9EC0F991
        AFD07165BB8AB5E54FAB3E1B1C6F84C5F98BA0F3720B9D55D83C03387DB119B4
        435320C6B012C1D2D1D784EE5F2FC058752628322B0A48E05E2EA0AAC58CBB73
        CADB60774CC1649EC098C9825193595072B8537176B93D283FD481208B7A4960
        19ED0A241045022E8F1756870B137627C66D5382A2836714678FE4C5EE7D2741
        65B57B340140BD24B03C90C02246644ED909787D339874F9547CBEAF0312FB4E
        E09D4641453BA8CC56972600A89704EEA75D8104223E2B6D83CF3F0BA7C7AFA2
        6FC08CFEDFCC28AB3C0543C50F884DC8456E592BA8C62C4E4DA8A897666876E7
        97EDD7F38D277299C0028580BEB8154C42454FFF1FC82E6DC1DEAF3BD1D53B02
        AA351FE9A12F6A04D5A8794A132AEAA5192ACAA0AC9C92C63C921002DB8A9AE1
        9D9E85C33DADC0E79F41764933CEF60CA3BBDF04AAE8F737E3F5D5BA79413300
        2883B228D34C77420864163641620276D7B402C9E7C7B6C2E33877614CE6C6DC
        1C6237E8B12A260D710905884FDA8D8D5B8CD065EFC7664335320B6B91B1AB06
        A93B0E2121A302EB74C572EF7BEBF5342B7228931ECF4260EBAE46F982D99C3E
        0574E1D2F3EBD1C9AC09B7E447556D135E7EEB63BCF6762A856B413DD4CB661A
        6956E4B04C120817025B0CC7E06102D6299F020F1348CA3E8253E786644C3637
        DC5E3F2AAB1BF0E69A243CFFCA5A4DA2DF4DC6E19AE33443B322873269AF1048
        DFD90026A1E2E7DE6BD8945185F6B3576486AE4F61C4E284C3E5C3EC8D39DCAA
        6667E76067BDC36C8666790E652A05D2F2BE63963318777815B8A569AC4B3988
        96D3033283A38E7F05CFA14CA540EA8E6F65010B13107081D84FF6E0D84F9765
        2E5DB3E1D955FA7F04CDF21CCA540884A7E4D6C325F961B64B0A5C920F31EB8D
        A8FBFEA24CEFD5090A936FB17D5242EEC9494DA8877A698666790E652A04C292
        B7D7D17F4A120ABC3E3FA2E3CB70A4B54FA67BD022B3D5D0008BD58DAC768716
        D443BD628EE750A61058C8084DCCAA3DA0CBA9C35FE9EA1962B65FE08DB86205
        6979F518314D22BDD5A605F550AF6AFED5D5F955379F030BF813E92E46147F71
        B88FB18CF300E331C6E38C959C277539477175C41E14D4CB3356301E663C24DE
        0FB8807825E756E18C084E246329975ACE79F003DDDEDAC4AC6F100C1FA6ECAF
        E1F3913C338C96CBBB93B28F720921B22808C2B8C8238C476FC10A2E1FCA5015
        096812A04876091789D040F96BFFAE00DC56EE08FC091C368BFD77624AAE0000
        000049454E44AE426082}
      OnClick = dxBarLargeButton5Click
    end
  end
  object DsNeraca_lajur: TDataSource
    DataSet = MemNeraca_lajur
    Left = 496
    Top = 64
  end
  object DataSetDriverEh1: TDataSetDriverEh
    ProviderDataSet = QNeraca_lajur
    Left = 600
    Top = 48
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
    Left = 128
    Top = 192
  end
  object frxXLSXExport1: TfrxXLSXExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    ChunkSize = 0
    OpenAfterExport = False
    PictureType = gpPNG
    Left = 24
    Top = 192
  end
end
