object FRpt_Lr: TFRpt_Lr
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Laporan Laba Rugi'
  ClientHeight = 493
  ClientWidth = 672
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
  object Label16: TLabel
    Left = 94
    Top = 294
    Width = 26
    Height = 13
    Caption = 'Bulan'
    Visible = False
  end
  object Label15: TLabel
    Left = 94
    Top = 330
    Width = 30
    Height = 13
    Caption = 'Tahun'
    Visible = False
  end
  object Label2: TLabel
    Left = 94
    Top = 255
    Width = 36
    Height = 13
    Caption = 'Periode'
    Visible = False
  end
  object Label1: TLabel
    Left = 279
    Top = 255
    Width = 15
    Height = 13
    Caption = 's/d'
    Visible = False
  end
  object cbbulan: TComboBox
    Left = 167
    Top = 291
    Width = 150
    Height = 21
    TabOrder = 0
    Visible = False
    OnSelect = cbbulanSelect
    Items.Strings = (
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
  object edth: TSpinEdit
    Left = 167
    Top = 327
    Width = 150
    Height = 22
    MaxValue = 3000
    MinValue = 2000
    TabOrder = 1
    Value = 2022
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 461
    Width = 672
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 144
    ExplicitWidth = 377
    object BBatal: TRzBitBtn
      Left = 596
      Top = 1
      Height = 30
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
      ExplicitLeft = 301
    end
    object BPrint: TRzBitBtn
      Left = 521
      Top = 1
      Height = 30
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
      ExplicitLeft = 226
    end
    object Bprint2: TRzBitBtn
      Left = 446
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Print'
      TabOrder = 2
      OnClick = Bprint2Click
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
      ExplicitLeft = 151
    end
  end
  object dtmulai1: TRzDateTimeEdit
    Left = 167
    Top = 252
    Width = 106
    Height = 21
    EditType = etDate
    Format = 'dd/mm/yyyy'
    TabOrder = 3
    Visible = False
  end
  object dtselesai1: TRzDateTimeEdit
    Left = 300
    Top = 252
    Width = 106
    Height = 21
    EditType = etDate
    Format = 'dd/mm/yyyy'
    TabOrder = 4
    Visible = False
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 672
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 5
    TabStop = False
    ExplicitWidth = 667
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
    Width = 672
    Height = 334
    Align = alClient
    DynProps = <>
    TabOrder = 10
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Nama Perkiraan'
        Width = 235
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Caption = 'Bulan'
        Width = 174
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        Footers = <>
        Title.Caption = '%'
        Width = 78
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Rpt: TfrxReport
    Version = '2022.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44873.702720590300000000
    ReportOptions.LastChange = 45100.661568506900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'procedure GroupHeader1OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <DbLr."lr">='#39#39' then GroupFooter1.visible:=false else GroupF' +
        'ooter1.visible:=true;'
      
        '//  if <DbLr."lr">='#39#39' then Groupheader1.visible:=false else Grou' +
        'pheader1.visible:=true;'
      'end;'
      ''
      'procedure GroupHeader2OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <DbLr."lr2">='#39#39' then GroupFooter2.visible:=false else Group' +
        'Footer2.visible:=true;'
      
        '//  if <DbLr."lr2">='#39#39' then Groupheader2.visible:=false else Gro' +
        'upheader2.visible:=true;'
      'end;'
      ''
      'procedure MasterData3OnAfterPrint(Sender: TfrxComponent);'
      'begin'
      
        '// if <DbLr."kode">='#39#39' then memo30.font.style:=fsbold else memo3' +
        '0.font.style:=fsnormal;'
      
        '// if <DbLr."kode"> ='#39#39' then memo30.font.style:=[fsbold]; //else' +
        ' memo30.font.style:=[];'
      'end;'
      ''
      'procedure MasterData3OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      
        '  if <DbLr."kode">='#39#39' then memo30.width:=500 else memo30.width:=' +
        '400 ;'
      
        '  if <DbLr."kode"><>'#39#39' then memo30.left:=120 else memo30.left:=1' +
        '10 ;'
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 390
    Top = 240
    Datasets = <
      item
        DataSet = DbLr
        DataSetName = 'DbLr'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 355.600000000000000000
      PaperSize = 5
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
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
        Height = 102.944940470000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Mpt: TfrxMemoView
          AllowVectorExport = True
          Top = 18.897650000000000000
          Width = 234.330384020000000000
          Height = 26.456692910000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haBlock
          Memo.UTF8W = (
            'PT MENARA LAUT BERSATU')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Top = -0.000017090000000001
          Width = 737.007874020000000000
          Height = 30.236220472440900000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -24
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'LABA RUGI')
          ParentFont = False
          VAlign = vaCenter
        end
        object Mbln: TfrxMemoView
          AllowVectorExport = True
          Top = 27.456678270000000000
          Width = 737.007874020000000000
          Height = 22.677165350000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'BULAN JANUARI 2022')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 72.566929133858300000
          Width = 98.267780000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NO PERKIRAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 72.566929130000000000
          Width = 419.527830000000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            'NAMA PERKIRAAN')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 72.566929133858300000
          Width = 170.078740160000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874794410000000000
          Top = 72.566929130000000000
          Width = 51.023622050000000000
          Height = 30.236220470000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '%')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677165360000000000
        Top = 181.417440000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupHeader1OnAfterPrint'
        Condition = 'DbLr."lr"'
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779527559055120000
          Width = 98.267716540000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 3.779527559055120000
          Width = 419.527559060000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '[DbLr."lr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795275590000000000
          Top = 3.779527559055120000
          Width = 170.078740160000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874460000000000000
          Top = 3.779527559055120000
          Width = 51.023622047244100000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
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
        Top = 351.496290000000000000
        Width = 740.409927000000000000
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Width = 98.267780000000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 419.527830000000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'TOTAL [DbLr."lr"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Width = 170.078740160000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbLr."qty">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo31: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874794410000000000
          Width = 51.023622050000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbLr."qty2">,MasterData3)]')
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
        Height = 17.007874020000000000
        Top = 268.346630000000000000
        Width = 740.409927000000000000
        OnBeforePrint = 'MasterData3OnBeforePrint'
        DataSet = DbLr
        DataSetName = 'DbLr'
        RowCount = 0
        object Memo29: TfrxMemoView
          AllowVectorExport = True
          Width = 98.267716540000000000
          Height = 17.007874020000000000
          DataField = 'kode'
          DataSet = DbLr
          DataSetName = 'DbLr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          Memo.UTF8W = (
            '[DbLr."kode"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo28: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795275590000000000
          Width = 170.078740160000000000
          Height = 17.007874020000000000
          DataSet = DbLr
          DataSetName = 'DbLr'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -12
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<DbLr."kode"> = '#39#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[DbLr."qty"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo30: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Width = 381.732259060000000000
          Height = 17.007874020000000000
          DataSet = DbLr
          DataSetName = 'DbLr'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftBottom]
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -12
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<DbLr."kode"> = '#39#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[DbLr."nama_perkiraan"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 94.488250000000000000
          Height = 17.007874020000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftBottom]
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874460000000000000
          Width = 51.023622050000000000
          Height = 17.007874020000000000
          DataSet = DbLr
          DataSetName = 'DbLr'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftBottom]
          HAlign = haRight
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clBlack
          Highlight.Font.Height = -12
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = [fsBold]
          Highlight.Condition = '<DbLr."kode"> = '#39#39
          Highlight.FillType = ftBrush
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[DbLr."qty2"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupHeader2: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 226.771800000000000000
        Width = 740.409927000000000000
        OnAfterPrint = 'GroupHeader2OnAfterPrint'
        Condition = 'DbLr."lr2"'
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Width = 98.267716540000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 419.527559060000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '   [DbLr."lr2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo37: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795275590000000000
          Width = 170.078740160000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo33: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874460000000000000
          Width = 51.023622047244100000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object GroupFooter2: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 18.897637800000000000
        Top = 309.921460000000000000
        Width = 740.409927000000000000
        object Memo38: TfrxMemoView
          AllowVectorExport = True
          Width = 98.267716540000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo39: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 419.527559060000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            '   TOTAL  [DbLr."lr2"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo40: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795275590000000000
          Width = 170.078740160000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbLr."qty">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo34: TfrxMemoView
          AllowVectorExport = True
          Left = 687.874460000000000000
          Width = 51.023622050000000000
          Height = 18.897637800000000000
          DataSet = FRpt_Neraca.DbRpt_Neraca
          DataSetName = 'DbRpt_Neraca'
          DisplayFormat.FormatStr = '#,###0.00;(#,#0.00);#,#'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8W = (
            '[SUM(<DbLr."qty2">,MasterData3)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object DbLr2: TfrxDBDataset
    UserName = 'DbLr2'
    CloseDataSource = False
    DataSet = QLr2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 337
    Top = 273
  end
  object QLr2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT 0 Nourut,a.periode1,a.periode2,sum(b.bahan_bk)bk, cast('#39'B' +
        'IAYA BAHAN BAKU'#39' AS VARCHAR) nm_bahan FROM'#9't_hpp AS "a" INNER JO' +
        'IN t_hpp_det AS b ON a.notrans=b.notrans WHERE periode1='#39'2022-01' +
        '-03'#39' and periode2='#39'2022-01-09'#39' GROUP BY a.periode1,a.periode2'
      'UNION'
      
        'SELECT'#9'1 ,a.periode1,a.periode2,sum(b.bahan_km)km, cast('#39'BIAYA B' +
        'AHAN KIMIA'#39' AS VARCHAR) nm_bahan FROM'#9't_hpp AS "a" INNER JOIN t_' +
        'hpp_det AS b ON a.notrans=b.notrans WHERE periode1='#39'2022-01-03'#39' ' +
        'and periode2='#39'2022-01-09'#39' GROUP BY a.periode1,a.periode2'
      'UNION'
      
        'SELECT'#9'2,a.periode1,a.periode2,sum(b.bahan_pnl)pnl, cast('#39'BIAYA ' +
        'BAHAN PENOLONG'#39' AS VARCHAR) nm_bahan FROM'#9't_hpp AS "a" INNER JOI' +
        'N t_hpp_det AS b ON a.notrans=b.notrans WHERE periode1='#39'2022-01-' +
        '03'#39' and periode2='#39'2022-01-09'#39' GROUP BY a.periode1,a.periode2'
      'UNION'
      
        'SELECT'#9'3,a.periode1,a.periode2,sum(b.bahan_kms)kms, cast('#39'BIAYA ' +
        'BAHAN KEMASAN'#39' AS VARCHAR) nm_bahan FROM'#9't_hpp AS "a" INNER JOIN' +
        ' t_hpp_det AS b ON a.notrans=b.notrans WHERE periode1='#39'2022-01-0' +
        '3'#39' and periode2='#39'2022-01-09'#39' GROUP BY a.periode1,a.periode2  UNI' +
        'ON'
      
        'SELECT'#9'4,a.periode1,a.periode2,a.tkl, cast('#39'BIAYA TENAGA KERJA L' +
        'ANGSUNG'#39' AS VARCHAR) nm_bahan FROM'#9't_hpp AS "a" WHERE periode1='#39 +
        '2022-01-03'#39' and periode2='#39'2022-01-09'#39
      'UNION'
      
        'SELECT'#9'5,a.periode1,a.periode2,a.bop, cast('#39'BIAYA OVERHEAD PABRI' +
        'K'#39' AS VARCHAR) nm_bahan FROM'#9't_hpp AS "a" WHERE periode1='#39'2022-0' +
        '1-03'#39' and periode2='#39'2022-01-09'#39'  ORDER BY nourut ASC;')
    Left = 393
    Top = 287
  end
  object QLr: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,qty from (SE' +
        'LECT KODE,kode_header,nama_perkiraan,id_LR,posisi_dk,lr,lr2 FROM' +
        ' (select * from t_daftar_perkiraan WHERE st_lr>'#39'0'#39') A RIGHT JOIN' +
        ' t_jenis_lr b on a.st_lr=b.id_lr  where (id_lr<>4 and id_lr<>6 a' +
        'nd id_lr<>'#39'8'#39')'
      ') a left JOIN'
      
        '(select a.periode1,a.periode2,(debit2+kredit2) qty,kd_akun from ' +
        't_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=' +
        'b.notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-' +
        '08'#39' and b.kd_akun<>'#39'1146'#39' and (debit2+kredit2) >0'
      'UNION'
      
        'select a.periode1,a.periode2,-(debit+kredit) qty,kd_akun from t_' +
        'neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.' +
        'notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-08' +
        #39' and b.kd_akun='#39'1146'#39
      'UNION /*tkl*/'
      
        'select null periode1, null periode2,kredit qty,kode_header from ' +
        't_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.n' +
        'o_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on ' +
        'b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39'2022-' +
        '01-08'#39' and b.akun_kredit='#39'5300'#39
      'union /*bop*/'
      
        'select null periode1, null periode2,sum(kredit) qty,kode_header ' +
        'from t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b o' +
        'n a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan ' +
        'c on b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39 +
        '2022-01-08'#39' and c.kode_header='#39'5400'#39' and kode<>'#39'5400.18'#39' GROUP B' +
        'Y kode_header'
      'UNION'
      
        'SELECT periode1,periode2,qty,kd_akun FROM (select a.periode1,a.p' +
        'eriode2,CASE WHEN (debit+kredit) ISNULL THEN 0 ELSE (debit+kredi' +
        't) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_l' +
        'ajur1_det b on a.notrans=b.notrans WHERE a.periode2<'#39'2022-01-08'#39 +
        ' and b.kd_akun='#39'1146'#39' ORDER BY periode1 DESC LIMIT 1) A '
      'UNION /*Bahan produksi*/'
      'select null,null,qtypk,kdakun FROM ('
      
        'select kdakun,category,sum(hargapk) qtypk from (select a.kdakun,' +
        'a.kd_produk,category, a.kd_material,qtypk*harga hargapk from (SE' +
        'LECT a.kd_produk,c.category,sum(b.qtyperubahan) qtypk,b.kd_mater' +
        'ial,d.kode_header kdakun FROM  t_pakai_bahan a INNER JOIN t_paka' +
        'i_bahan_det b on a.notrans=b.notrans INNER join t_material c on ' +
        'b.kd_material=c.kd_material INNER JOIN t_daftar_perkiraan d on c' +
        '.kd_akun=d.kode WHERE periode1='#39'2022-01-02'#39' and periode2='#39'2022-0' +
        '1-08'#39' GROUP BY a.kd_produk,c.category,b.kd_material,d.kode_heade' +
        'r)a  INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),' +
        '0) > 0 then round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a' +
        '.notrans,kd_material FROM t_sa_persediaan a INNER JOIN t_sa_pers' +
        'ediaan_det b on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' ' +
        'and periode2='#39'2022-01-08'#39' and category<>'#39'BAHAN KEMASAN'#39')b on  a.' +
        'kd_material=b.kd_material )x GROUP BY kdakun,category'
      'UNION'
      
        'select kode_header,category,sum(hargapk) qtypk from (select kode' +
        '_header,a.kd_produk,category, a.kd_material,qtypk*harga hargapk ' +
        'from (SELECT c.kode_header,a.kd_produk,c.category,sum(b.qtyperub' +
        'ahan) qtypk,b.kd_material FROM  t_pakai_bahan a INNER JOIN t_pak' +
        'ai_bahan_det b on a.notrans=b.notrans INNER join (select a.*,b.k' +
        'ode_header from t_material a inner join t_daftar_perkiraan b on ' +
        'a.kd_akun=b.kode where st_kms=1) c on b.kd_material=c.kd_materia' +
        'l WHERE periode12='#39'2022-01-02'#39' and periode22='#39'2022-01-08'#39' GROUP ' +
        'BY c.kode_header,a.kd_produk,c.category,b.kd_material)a  INNER J' +
        'OIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then ' +
        'round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a.notrans,kd_' +
        'material FROM t_sa_persediaan a INNER JOIN t_sa_persediaan_det b' +
        ' on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' and periode2' +
        '='#39'2022-01-08'#39' and category='#39'BAHAN KEMASAN'#39')b on  a.kd_material=b' +
        '.kd_material )x GROUP BY kode_header,category)x'
      'ORDER BY kd_akun ASC'
      ')b on a.kode=b.kd_akun'
      ' --ORDER BY id_lr,kode ASC '
      ' /*lr betul*/'
      'union /*LABA (RUGI) KOTOR*/'
      
        'select CAST('#39#39' AS VARCHAR ),null,'#39'LABA (RUGI) KOTOR'#39' perk,'#39'4'#39' id' +
        'lr,'#39#39' lr,'#39#39' lr2, sum(qtypenj-(qtyhpp+qtybj)) Qtykotor from '
      
        '( SELECT id_lr,case when id_lr=1 then sum(qty) else 0 end qtypen' +
        'j,case when id_lr=2 then sum(qty) else 0 end qtyhpp,case when id' +
        '_lr=3 then sum(qty) else 0 end qtybj from (SELECT KODE,kode_head' +
        'er,nama_perkiraan,id_LR,posisi_dk,lr,lr2 FROM (select * from t_d' +
        'aftar_perkiraan WHERE st_lr>'#39'0'#39') A RIGHT JOIN t_jenis_lr b on a.' +
        'st_lr=b.id_lr  where id_lr=1 or id_lr=2 or id_lr=3'
      ') a left JOIN'
      
        '(select a.periode1,a.periode2,(debit2+kredit2) qty,kd_akun from ' +
        't_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=' +
        'b.notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-' +
        '08'#39' and b.kd_akun<>'#39'1146'#39' and (debit2+kredit2) >0'
      'UNION'
      
        'select a.periode1,a.periode2,-(debit+kredit) qty,kd_akun from t_' +
        'neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.' +
        'notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-08' +
        #39' and b.kd_akun='#39'1146'#39
      'UNION /*tkl*/'
      
        'select null periode1, null periode2,kredit qty,kode_header from ' +
        't_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.n' +
        'o_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on ' +
        'b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39'2022-' +
        '01-08'#39' and b.akun_kredit='#39'5300'#39
      'union /*bop*/'
      
        'select null periode1, null periode2,sum(kredit) qty,kode_header ' +
        'from t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b o' +
        'n a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan ' +
        'c on b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39 +
        '2022-01-08'#39' and c.kode_header='#39'5400'#39' and kode<>'#39'5400.18'#39' GROUP B' +
        'Y kode_header'
      'UNION'
      
        'SELECT periode1,periode2,qty,kd_akun FROM (select a.periode1,a.p' +
        'eriode2,CASE WHEN (debit+kredit) ISNULL THEN 0 ELSE (debit+kredi' +
        't) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_l' +
        'ajur1_det b on a.notrans=b.notrans WHERE a.periode2<'#39'2022-01-08'#39 +
        ' and b.kd_akun='#39'1146'#39' ORDER BY periode1 DESC LIMIT 1) A '
      'UNION /*Bahan produksi*/'
      'select null,null,qtypk,kdakun FROM ('
      
        'select kdakun,category,sum(hargapk) qtypk from (select a.kdakun,' +
        'a.kd_produk,category, a.kd_material,qtypk*harga hargapk from (SE' +
        'LECT a.kd_produk,c.category,sum(b.qtyperubahan) qtypk,b.kd_mater' +
        'ial,d.kode_header kdakun FROM  t_pakai_bahan a INNER JOIN t_paka' +
        'i_bahan_det b on a.notrans=b.notrans INNER join t_material c on ' +
        'b.kd_material=c.kd_material INNER JOIN t_daftar_perkiraan d on c' +
        '.kd_akun=d.kode WHERE periode1='#39'2022-01-02'#39' and periode2='#39'2022-0' +
        '1-08'#39' GROUP BY a.kd_produk,c.category,b.kd_material,d.kode_heade' +
        'r)a  INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),' +
        '0) > 0 then round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a' +
        '.notrans,kd_material FROM t_sa_persediaan a INNER JOIN t_sa_pers' +
        'ediaan_det b on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' ' +
        'and periode2='#39'2022-01-08'#39' and category<>'#39'BAHAN KEMASAN'#39')b on  a.' +
        'kd_material=b.kd_material )x GROUP BY kdakun,category'
      'UNION'
      
        'select kode_header,category,sum(hargapk) qtypk from (select kode' +
        '_header,a.kd_produk,category, a.kd_material,qtypk*harga hargapk ' +
        'from (SELECT c.kode_header,a.kd_produk,c.category,sum(b.qtyperub' +
        'ahan) qtypk,b.kd_material FROM  t_pakai_bahan a INNER JOIN t_pak' +
        'ai_bahan_det b on a.notrans=b.notrans INNER join (select a.*,b.k' +
        'ode_header from t_material a inner join t_daftar_perkiraan b on ' +
        'a.kd_akun=b.kode where st_kms=1) c on b.kd_material=c.kd_materia' +
        'l WHERE periode12='#39'2022-01-02'#39' and periode22='#39'2022-01-08'#39' GROUP ' +
        'BY c.kode_header,a.kd_produk,c.category,b.kd_material)a  INNER J' +
        'OIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then ' +
        'round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a.notrans,kd_' +
        'material FROM t_sa_persediaan a INNER JOIN t_sa_persediaan_det b' +
        ' on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' and periode2' +
        '='#39'2022-01-08'#39' and category='#39'BAHAN KEMASAN'#39')b on  a.kd_material=b' +
        '.kd_material )x GROUP BY kode_header,category)x)b on a.kode=b.kd' +
        '_akun GROUP BY id_lr) xx '
      ''
      'union /*LABA (RUGI) USAHA*/'
      
        'select CAST('#39#39' AS VARCHAR ),null,'#39'LABA (RUGI) USAHA'#39' perk,'#39'6'#39' id' +
        'lr,'#39#39' lr,'#39#39' lr2, sum((qtypenj-(qtyhpp+qtybj))-qtybo) Qtyusaha fr' +
        'om '
      
        '( SELECT id_lr,case when id_lr=1 then sum(qty) else 0 end qtypen' +
        'j,case when id_lr=2 then sum(qty) else 0 end qtyhpp,case when id' +
        '_lr=3 THEN SUM(QTY) else 0 end qtybj,case when id_lr=5 then sum(' +
        'qty) else 0 end qtyBO from (SELECT KODE,kode_header,nama_perkira' +
        'an,id_LR,posisi_dk,lr,lr2 FROM (select * from t_daftar_perkiraan' +
        ' WHERE st_lr>'#39'0'#39') A RIGHT JOIN t_jenis_lr b on a.st_lr=b.id_lr  ' +
        '-- where id_lr=1 or id_lr=2 or id_lr=3'
      ') a left JOIN'
      
        '(select a.periode1,a.periode2,(debit2+kredit2) qty,kd_akun from ' +
        't_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=' +
        'b.notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-' +
        '08'#39' and b.kd_akun<>'#39'1146'#39' and (debit2+kredit2) >0'
      'UNION'
      
        'select a.periode1,a.periode2,-(debit+kredit) qty,kd_akun from t_' +
        'neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.' +
        'notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-08' +
        #39' and b.kd_akun='#39'1146'#39
      'UNION /*tkl*/'
      
        'select null periode1, null periode2,kredit qty,kode_header from ' +
        't_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.n' +
        'o_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on ' +
        'b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39'2022-' +
        '01-08'#39' and b.akun_kredit='#39'5300'#39
      'union /*bop*/'
      
        'select null periode1, null periode2,sum(kredit) qty,kode_header ' +
        'from t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b o' +
        'n a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan ' +
        'c on b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39 +
        '2022-01-08'#39' and c.kode_header='#39'5400'#39' and kode<>'#39'5400.18'#39' GROUP B' +
        'Y kode_header'
      'UNION'
      
        'SELECT periode1,periode2,qty,kd_akun FROM (select a.periode1,a.p' +
        'eriode2,CASE WHEN (debit+kredit) ISNULL THEN 0 ELSE (debit+kredi' +
        't) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_l' +
        'ajur1_det b on a.notrans=b.notrans WHERE a.periode2<'#39'2022-01-08'#39 +
        ' and b.kd_akun='#39'1146'#39' ORDER BY periode1 DESC LIMIT 1) A '
      'UNION /*Bahan produksi*/'
      'select null,null,qtypk,kdakun FROM ('
      
        'select kdakun,category,sum(hargapk) qtypk from (select a.kdakun,' +
        'a.kd_produk,category, a.kd_material,qtypk*harga hargapk from (SE' +
        'LECT a.kd_produk,c.category,sum(b.qtyperubahan) qtypk,b.kd_mater' +
        'ial,d.kode_header kdakun FROM  t_pakai_bahan a INNER JOIN t_paka' +
        'i_bahan_det b on a.notrans=b.notrans INNER join t_material c on ' +
        'b.kd_material=c.kd_material INNER JOIN t_daftar_perkiraan d on c' +
        '.kd_akun=d.kode WHERE periode1='#39'2022-01-02'#39' and periode2='#39'2022-0' +
        '1-08'#39' GROUP BY a.kd_produk,c.category,b.kd_material,d.kode_heade' +
        'r)a  INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),' +
        '0) > 0 then round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a' +
        '.notrans,kd_material FROM t_sa_persediaan a INNER JOIN t_sa_pers' +
        'ediaan_det b on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' ' +
        'and periode2='#39'2022-01-08'#39' and category<>'#39'BAHAN KEMASAN'#39')b on  a.' +
        'kd_material=b.kd_material )x GROUP BY kdakun,category'
      'UNION'
      
        'select kode_header,category,sum(hargapk) qtypk from (select kode' +
        '_header,a.kd_produk,category, a.kd_material,qtypk*harga hargapk ' +
        'from (SELECT c.kode_header,a.kd_produk,c.category,sum(b.qtyperub' +
        'ahan) qtypk,b.kd_material FROM  t_pakai_bahan a INNER JOIN t_pak' +
        'ai_bahan_det b on a.notrans=b.notrans INNER join (select a.*,b.k' +
        'ode_header from t_material a inner join t_daftar_perkiraan b on ' +
        'a.kd_akun=b.kode where st_kms=1) c on b.kd_material=c.kd_materia' +
        'l WHERE periode12='#39'2022-01-02'#39' and periode22='#39'2022-01-08'#39' GROUP ' +
        'BY c.kode_header,a.kd_produk,c.category,b.kd_material)a  INNER J' +
        'OIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then ' +
        'round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a.notrans,kd_' +
        'material FROM t_sa_persediaan a INNER JOIN t_sa_persediaan_det b' +
        ' on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' and periode2' +
        '='#39'2022-01-08'#39' and category='#39'BAHAN KEMASAN'#39')b on  a.kd_material=b' +
        '.kd_material )x GROUP BY kode_header,category)x)b on a.kode=b.kd' +
        '_akun GROUP BY id_lr) xx'
      'union '
      
        'SELECT kode,kode_header,nama_perkiraan,id_lr,lr,lr2,qty from (SE' +
        'LECT KODE,kode_header,nama_perkiraan,id_LR,posisi_dk,lr,lr2 FROM' +
        ' (select * from t_daftar_perkiraan WHERE st_lr>'#39'0'#39') A RIGHT JOIN' +
        ' t_jenis_lr b on a.st_lr=b.id_lr  where (id_lr<>4 and id_lr<>6 a' +
        'nd id_lr<>'#39'8'#39')'
      ') a left JOIN'
      
        '(select a.periode1,a.periode2,(debit2+kredit2) qty,kd_akun from ' +
        't_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=' +
        'b.notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-' +
        '08'#39' and b.kd_akun<>'#39'1146'#39' and (debit2+kredit2) >0'
      'UNION'
      
        'select a.periode1,a.periode2,-(debit+kredit) qty,kd_akun from t_' +
        'neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.' +
        'notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-08' +
        #39' and b.kd_akun='#39'1146'#39
      'UNION /*tkl*/'
      
        'select null periode1, null periode2,kredit qty,kode_header from ' +
        't_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.n' +
        'o_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on ' +
        'b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39'2022-' +
        '01-08'#39' and b.akun_kredit='#39'5300'#39
      'union /*bop*/'
      
        'select null periode1, null periode2,sum(kredit) qty,kode_header ' +
        'from t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b o' +
        'n a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan ' +
        'c on b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39 +
        '2022-01-08'#39' and c.kode_header='#39'5400'#39' and kode<>'#39'5400.18'#39' GROUP B' +
        'Y kode_header'
      'UNION'
      
        'SELECT periode1,periode2,qty,kd_akun FROM (select a.periode1,a.p' +
        'eriode2,CASE WHEN (debit+kredit) ISNULL THEN 0 ELSE (debit+kredi' +
        't) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_l' +
        'ajur1_det b on a.notrans=b.notrans WHERE a.periode2<'#39'2022-01-08'#39 +
        ' and b.kd_akun='#39'1146'#39' ORDER BY periode1 DESC LIMIT 1) A '
      'UNION /*Bahan produksi*/'
      'select null,null,qtypk,kdakun FROM ('
      
        'select kdakun,category,sum(hargapk) qtypk from (select a.kdakun,' +
        'a.kd_produk,category, a.kd_material,qtypk*harga hargapk from (SE' +
        'LECT a.kd_produk,c.category,sum(b.qtyperubahan) qtypk,b.kd_mater' +
        'ial,d.kode_header kdakun FROM  t_pakai_bahan a INNER JOIN t_paka' +
        'i_bahan_det b on a.notrans=b.notrans INNER join t_material c on ' +
        'b.kd_material=c.kd_material INNER JOIN t_daftar_perkiraan d on c' +
        '.kd_akun=d.kode WHERE periode1='#39'2022-01-02'#39' and periode2='#39'2022-0' +
        '1-08'#39' GROUP BY a.kd_produk,c.category,b.kd_material,d.kode_heade' +
        'r)a  INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),' +
        '0) > 0 then round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a' +
        '.notrans,kd_material FROM t_sa_persediaan a INNER JOIN t_sa_pers' +
        'ediaan_det b on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' ' +
        'and periode2='#39'2022-01-08'#39' and category<>'#39'BAHAN KEMASAN'#39')b on  a.' +
        'kd_material=b.kd_material )x GROUP BY kdakun,category'
      'UNION'
      
        'select kode_header,category,sum(hargapk) qtypk from (select kode' +
        '_header,a.kd_produk,category, a.kd_material,qtypk*harga hargapk ' +
        'from (SELECT c.kode_header,a.kd_produk,c.category,sum(b.qtyperub' +
        'ahan) qtypk,b.kd_material FROM  t_pakai_bahan a INNER JOIN t_pak' +
        'ai_bahan_det b on a.notrans=b.notrans INNER join (select a.*,b.k' +
        'ode_header from t_material a inner join t_daftar_perkiraan b on ' +
        'a.kd_akun=b.kode where st_kms=1) c on b.kd_material=c.kd_materia' +
        'l WHERE periode12='#39'2022-01-02'#39' and periode22='#39'2022-01-08'#39' GROUP ' +
        'BY c.kode_header,a.kd_produk,c.category,b.kd_material)a  INNER J' +
        'OIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then ' +
        'round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a.notrans,kd_' +
        'material FROM t_sa_persediaan a INNER JOIN t_sa_persediaan_det b' +
        ' on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' and periode2' +
        '='#39'2022-01-08'#39' and category='#39'BAHAN KEMASAN'#39')b on  a.kd_material=b' +
        '.kd_material )x GROUP BY kode_header,category)x'
      'ORDER BY kd_akun ASC'
      ')b on a.kode=b.kd_akun'
      ' --ORDER BY id_lr,kode ASC '
      ' /*lr betul*/'
      'union /*LABA (RUGI) PERUSAHAAN*/'
      
        'select CAST('#39#39' AS VARCHAR ),null,'#39'LABA (RUGI) PERUSAHAAN'#39' perk,'#39 +
        '8'#39' idlr,'#39#39' lr,'#39#39' lr2, sum(((qtypenj-(qtyhpp+qtybj))-qtybo)-qtydu' +
        ') Qtyusaha from '
      
        '( SELECT id_lr,case when id_lr=1 then sum(qty) else 0 end qtypen' +
        'j,case when id_lr=2 then sum(qty) else 0 end qtyhpp,case when id' +
        '_lr=3 THEN SUM(QTY) else 0 end qtybj,case when id_lr=5 then sum(' +
        'qty) else 0 end qtyBO,case when id_lr=7 then sum(qty) else 0 end' +
        ' qtydu from (SELECT KODE,kode_header,nama_perkiraan,id_LR,posisi' +
        '_dk,lr,lr2 FROM (select * from t_daftar_perkiraan WHERE st_lr>'#39'0' +
        #39') A RIGHT JOIN t_jenis_lr b on a.st_lr=b.id_lr  -- where id_lr=' +
        '1 or id_lr=2 or id_lr=3'
      ') a left JOIN'
      
        '(select a.periode1,a.periode2,(debit2+kredit2) qty,kd_akun from ' +
        't_neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=' +
        'b.notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-' +
        '08'#39' and b.kd_akun<>'#39'1146'#39' and (debit2+kredit2) >0'
      'UNION'
      
        'select a.periode1,a.periode2,-(debit+kredit) qty,kd_akun from t_' +
        'neraca_lajur1 a INNER JOIN t_neraca_lajur1_det b on a.notrans=b.' +
        'notrans WHERE a.periode1='#39'2022-01-02'#39' and a.periode2='#39'2022-01-08' +
        #39' and b.kd_akun='#39'1146'#39
      'UNION /*tkl*/'
      
        'select null periode1, null periode2,kredit qty,kode_header from ' +
        't_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b on a.n' +
        'o_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan c on ' +
        'b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39'2022-' +
        '01-08'#39' and b.akun_kredit='#39'5300'#39
      'union /*bop*/'
      
        'select null periode1, null periode2,sum(kredit) qty,kode_header ' +
        'from t_jurnal_memorial a INNER JOIN t_jurnal_memorial_detail b o' +
        'n a.no_bukti_memo=b.no_bukti_memo INNER JOIN t_daftar_perkiraan ' +
        'c on b.akun_kredit=c.kode WHERE a.tgl>='#39'2022-01-02'#39' and a.tgl<='#39 +
        '2022-01-08'#39' and c.kode_header='#39'5400'#39' and kode<>'#39'5400.18'#39' GROUP B' +
        'Y kode_header'
      'UNION'
      
        'SELECT periode1,periode2,qty,kd_akun FROM (select a.periode1,a.p' +
        'eriode2,CASE WHEN (debit+kredit) ISNULL THEN 0 ELSE (debit+kredi' +
        't) END  qty,kd_akun from t_neraca_lajur1 a INNER JOIN t_neraca_l' +
        'ajur1_det b on a.notrans=b.notrans WHERE a.periode2<'#39'2022-01-08'#39 +
        ' and b.kd_akun='#39'1146'#39' ORDER BY periode1 DESC LIMIT 1) A '
      'UNION /*Bahan produksi*/'
      'select null,null,qtypk,kdakun FROM ('
      
        'select kdakun,category,sum(hargapk) qtypk from (select a.kdakun,' +
        'a.kd_produk,category, a.kd_material,qtypk*harga hargapk from (SE' +
        'LECT a.kd_produk,c.category,sum(b.qtyperubahan) qtypk,b.kd_mater' +
        'ial,d.kode_header kdakun FROM  t_pakai_bahan a INNER JOIN t_paka' +
        'i_bahan_det b on a.notrans=b.notrans INNER join t_material c on ' +
        'b.kd_material=c.kd_material INNER JOIN t_daftar_perkiraan d on c' +
        '.kd_akun=d.kode WHERE periode1='#39'2022-01-02'#39' and periode2='#39'2022-0' +
        '1-08'#39' GROUP BY a.kd_produk,c.category,b.kd_material,d.kode_heade' +
        'r)a  INNER JOIN (SELECT case when round(hargapk/NULLIF(qtypk,0),' +
        '0) > 0 then round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a' +
        '.notrans,kd_material FROM t_sa_persediaan a INNER JOIN t_sa_pers' +
        'ediaan_det b on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' ' +
        'and periode2='#39'2022-01-08'#39' and category<>'#39'BAHAN KEMASAN'#39')b on  a.' +
        'kd_material=b.kd_material )x GROUP BY kdakun,category'
      'UNION'
      
        'select kode_header,category,sum(hargapk) qtypk from (select kode' +
        '_header,a.kd_produk,category, a.kd_material,qtypk*harga hargapk ' +
        'from (SELECT c.kode_header,a.kd_produk,c.category,sum(b.qtyperub' +
        'ahan) qtypk,b.kd_material FROM  t_pakai_bahan a INNER JOIN t_pak' +
        'ai_bahan_det b on a.notrans=b.notrans INNER join (select a.*,b.k' +
        'ode_header from t_material a inner join t_daftar_perkiraan b on ' +
        'a.kd_akun=b.kode where st_kms=1) c on b.kd_material=c.kd_materia' +
        'l WHERE periode12='#39'2022-01-02'#39' and periode22='#39'2022-01-08'#39' GROUP ' +
        'BY c.kode_header,a.kd_produk,c.category,b.kd_material)a  INNER J' +
        'OIN (SELECT case when round(hargapk/NULLIF(qtypk,0),0) > 0 then ' +
        'round(hargapk/NULLIF(qtypk,0),0) else 0 end harga, a.notrans,kd_' +
        'material FROM t_sa_persediaan a INNER JOIN t_sa_persediaan_det b' +
        ' on a.notrans=b.notrans  WHERE periode='#39'2022-01-02'#39' and periode2' +
        '='#39'2022-01-08'#39' and category='#39'BAHAN KEMASAN'#39')b on  a.kd_material=b' +
        '.kd_material )x GROUP BY kode_header,category)x)b on a.kode=b.kd' +
        '_akun GROUP BY id_lr) xx'
      ' ORDER BY id_lr,kode ASC')
    Left = 393
    Top = 335
  end
  object DbLr: TfrxDBDataset
    UserName = 'DbLr'
    CloseDataSource = False
    DataSet = QLr
    BCDToCurrency = False
    DataSetOptions = []
    Left = 337
    Top = 321
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
    Top = 16
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
          Visible = True
          ItemName = 'DtMulai'
        end
        item
          Visible = True
          ItemName = 'DtSelesai'
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
    object dxBUpdate: TdxBarButton
      Caption = 'Update  '
      Category = 0
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D960600000000000036000000280000001800000011000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFF6E3BBFFEEC7
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
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFF9A9A
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
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
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
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
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
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
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
      OnClick = BPrintClick
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
    end
    object DtMulai: TcxBarEditItem
      Caption = 'Tanggal Awal   '
      Category = 0
      Hint = 'Tanggal Awal   '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object DtSelesai: TcxBarEditItem
      Caption = 'Tanggal Akhir  '
      Category = 0
      Hint = 'Tanggal Akhir  '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
  end
end
