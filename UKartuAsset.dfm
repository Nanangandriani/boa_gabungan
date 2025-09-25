object FKartuAsset: TFKartuAsset
  Left = 619
  Top = 353
  ClientHeight = 270
  ClientWidth = 642
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 16
  object Panel2: TPanel
    Left = 0
    Top = 44
    Width = 642
    Height = 185
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 640
    ExplicitHeight = 177
    object Label9: TLabel
      Left = 50
      Top = 47
      Width = 110
      Height = 22
      Caption = 'SUMBER ASSET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 50
      Top = 78
      Width = 185
      Height = 22
      Caption = 'KELOMPOK PENYUSUTAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 50
      Top = 106
      Width = 74
      Height = 22
      Caption = 'KATEGORI'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 50
      Top = 15
      Width = 90
      Height = 22
      Caption = 'KODE ASSET'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object SpeedButton1: TSpeedButton
      Left = 521
      Top = 17
      Width = 22
      Height = 20
      Caption = '...'
      OnClick = SpeedButton1Click
    end
    object edKodeAsset: TRzEdit
      Left = 248
      Top = 15
      Width = 272
      Height = 22
      Text = ''
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ImeName = 'US'
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnChange = edKodeAssetChange
    end
    object cbNamaHarta: TRzComboBox
      Left = 249
      Top = 106
      Width = 297
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object cbKelompok: TRzComboBox
      Left = 249
      Top = 77
      Width = 297
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object cbSumber_Asset: TRzComboBox
      Left = 248
      Top = 46
      Width = 297
      Height = 24
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 229
    Width = 642
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 221
    ExplicitWidth = 640
    object BCetak: TRzBitBtn
      Left = 339
      Top = 1
      Width = 150
      Height = 39
      Align = alRight
      Caption = 'Cetak'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BCetakClick
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
    end
    object BBatal: TRzBitBtn
      Left = 489
      Top = 1
      Width = 150
      Height = 39
      Align = alRight
      Caption = 'Batal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
    end
  end
  object PNJUDUL: TRzPanel
    Left = 0
    Top = 0
    Width = 642
    Height = 44
    Align = alTop
    Caption = 'KARTU ASSET'
    Color = 15987699
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    GradientColorStyle = gcsCustom
    GradientColorStart = clSilver
    GradientColorStop = 16744448
    ParentFont = False
    TabOrder = 2
    VisualStyle = vsGradient
    ExplicitWidth = 640
  end
  object frxDBDKartuAsset: TfrxDBDataset
    UserName = 'frxDBDKartuAsset'
    CloseDataSource = False
    FieldAliases.Strings = (
      'kode_asset=kode_asset'
      'tgl_susut=tgl_susut'
      'kode_kel_penyusutan=kode_kel_penyusutan'
      'kode_nama_harta=kode_nama_harta'
      'sumber_id=sumber_id'
      'nama_kelompok_penyusutan=nama_kelompok_penyusutan'
      'nama_harta=nama_harta'
      'namasp=namasp'
      'umur=umur'
      'spesifikasi_asset=spesifikasi_asset'
      'jumlah=jumlah'
      'satuan=satuan'
      'total=total'
      'nomor_urut=nomor_urut'
      'bulan_nama=bulan_nama'
      'tahun=tahun'
      'voucher=voucher'
      'jum_perbulan=jum_perbulan'
      'nama=nama'
      'tgl_beli=tgl_beli')
    DataSet = QKartuAsset
    BCDToCurrency = False
    DataSetOptions = []
    Left = 80
    Top = 12
  end
  object Report: TfrxReport
    Version = '2022.1.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44260.432679409700000000
    ReportOptions.LastChange = 45145.652535532400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo3OnBeforePrint(Sender: TfrxComponent);'
      'begin                                   '
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 112
    Top = 12
    Datasets = <
      item
        DataSet = frxDBDKartuAsset
        DataSetName = 'frxDBDKartuAsset'
      end>
    Variables = <>
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
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
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
        Width = 1046.929810000000000000
        object judul: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 36.118120000000000000
          Width = 1039.370750000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'DATA HISTORY INVOICE')
          ParentFont = False
        end
        object nama_PT: TfrxMemoView
          Align = baCenter
          AllowVectorExport = True
          Left = 1.889765000000000000
          Top = 7.559060000000000000
          Width = 1043.150280000000000000
          Height = 30.236240000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PT. RODA CHAKRA KENCANA')
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
        Height = 22.677165350000000000
        Top = 317.480520000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDKartuAsset
        DataSetName = 'frxDBDKartuAsset'
        RowCount = 0
        Stretched = True
        object frxDBDKartuAssetbulan_nama: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'bulan_nama'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."bulan_nama"]')
          ParentFont = False
        end
        object frxDBDKartuAssettahun: TfrxMemoView
          AllowVectorExport = True
          Left = 234.330860000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataField = 'tahun'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."tahun"]')
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
        Height = 139.842610000000000000
        Top = 154.960730000000000000
        Width = 1046.929810000000000000
        Condition = '<frxDBDKartuAsset."kode_asset">'
        ResetPageNumbers = True
        object frxDBDKartuAssetkode_asset: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 3.779530000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'kode_asset'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."kode_asset"]')
          ParentFont = False
        end
        object frxDBDKartuAssetnama_kelompok_penyusutan: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 22.677180000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'nama_kelompok_penyusutan'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."nama_kelompok_penyusutan"]')
          ParentFont = False
        end
        object frxDBDKartuAssetnama_harta: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 45.354360000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'nama_harta'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."nama_harta"]')
          ParentFont = False
        end
        object frxDBDKartuAssetnama: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181102360000000000
          Top = 68.031540000000000000
          Width = 377.952755910000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."nama"]')
          ParentFont = False
        end
        object frxDBDKartuAssetumur: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960629921000000
          Top = 3.779527560000000000
          Width = 340.157480314961000000
          Height = 18.897650000000000000
          DataField = 'umur'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."umur"]')
          ParentFont = False
        end
        object frxDBDKartuAssetspesifikasi_asset: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960630000000000
          Top = 68.031496060000000000
          Width = 340.157480310000000000
          Height = 56.692950000000000000
          DataField = 'spesifikasi_asset'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."spesifikasi_asset"]')
          ParentFont = False
        end
        object frxDBDKartuAssetjumlah: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960629921000000
          Top = 22.677165350000000000
          Width = 340.157480314961000000
          Height = 18.897650000000000000
          DataField = 'jumlah'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."jumlah"]')
          ParentFont = False
        end
        object frxDBDKartuAssetsatuan: TfrxMemoView
          AllowVectorExport = True
          Left = 680.314960629921000000
          Top = 45.354330710000000000
          Width = 340.157480314961000000
          Height = 18.897650000000000000
          DataField = 'satuan'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."satuan"]')
          ParentFont = False
        end
        object frxDBDKartuAssettgl_beli: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Top = 86.929190000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataField = 'tgl_beli'
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."tgl_beli"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118110240000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'KODE ASSET')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118110240000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NAMA KELOMPOK')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118110240000000000
          Top = 45.354330710000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'NAMA HARTA')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118110240000000000
          Top = 68.031496060000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SUMBER')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118110240000000000
          Top = 86.929190000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TANGGGAL AWAL')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 3.779530000000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 22.677180000000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 45.354330710000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063080000000000000
          Top = 68.031496060000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
          Left = 136.063080000000000000
          Top = 86.929190000000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
          Left = 532.913730000000000000
          Top = 3.779530000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL MASA')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 22.677180000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'JUMLAH')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 45.354330710000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SATUAN')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 68.031496060000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'SPESIFIKASI')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858699760000000000
          Top = 3.779530000000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858699760000000000
          Top = 22.677180000000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858699760000000000
          Top = 45.354330710000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 653.858699760000000000
          Top = 68.031496060000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181209760000000000
          Top = 105.826840000000000000
          Width = 377.953000000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDKartuAsset
          DataSetName = 'frxDBDKartuAsset'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDKartuAsset."total"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 105.826840000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'TOTAL BIAYA')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 136.063089760000000000
          Top = 105.826840000000000000
          Width = 11.338582680000000000
          Height = 18.897650000000000000
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
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 151.181200000000000000
        Top = 362.834880000000000000
        Width = 1046.929810000000000000
      end
    end
  end
  object dsKartuAsset: TDataSource
    DataSet = QKartuAsset
    Left = 48
    Top = 12
  end
  object QKartuAsset: TUniQuery
    SQL.Strings = (
      'SELECT'
      #9'* '
      'FROM'
      #9'('
      #9'SELECT'
      #9#9'a.kode_asset,'
      #9#9
      '                a.tgl_beli,'
      #9#9'rin.tgl_susut,'
      #9#9'kode_kel_penyusutan,'
      #9#9'kode_nama_harta,'
      #9#9'sumber_id,'
      #9#9'sa.nama,'
      #9#9'nama_kelompok_penyusutan,'
      #9#9'nama_harta,'
      #9#9'kre.namasp as namakredit,  '
      '                deb.namasp as namadebit, '
      #9#9'concat( masa_bulan, '#39' BULAN'#39' ) AS umur,'
      #9#9'spesifikasi_asset,'
      #9#9'a.jumlah,'
      #9#9'satuan,'
      #9#9'total_harga_beli AS total,'
      
        #9#9'nomor_urut, bulan_nama, tahun, voucher, case when (voucher=0) ' +
        'or (voucher is null) then 0 else rin.jumlah end jum_perbulan'
      #9'FROM'
      #9#9'`tmaster_asset` a'
      #9#9'LEFT JOIN tdata31 akun ON a.kode31 = akun.NAMASP'
      
        #9#9'LEFT JOIN tdetail_rincian_asset rin ON a.kode_asset = rin.kode' +
        '_asset '
      #9#9'LEFT JOIN tsumber_asset sa ON a.sumber_id=sa.id'
      #9')a'
      #9'ORDER BY a.kode_asset,nomor_urut asc')
    Left = 16
    Top = 12
    object QKartuAssetkode_asset: TStringField
      FieldName = 'kode_asset'
      Required = True
      Size = 100
    end
    object QKartuAssettgl_susut: TDateField
      FieldName = 'tgl_susut'
    end
    object QKartuAssetkode_kel_penyusutan: TStringField
      FieldName = 'kode_kel_penyusutan'
      Size = 10
    end
    object QKartuAssetkode_nama_harta: TStringField
      FieldName = 'kode_nama_harta'
      Size = 10
    end
    object QKartuAssetsumber_id: TIntegerField
      FieldName = 'sumber_id'
    end
    object QKartuAssetnama_kelompok_penyusutan: TStringField
      FieldName = 'nama_kelompok_penyusutan'
      Size = 100
    end
    object QKartuAssetnama_harta: TStringField
      FieldName = 'nama_harta'
      Size = 100
    end
    object QKartuAssetnamasp: TStringField
      FieldName = 'namakredit'
      Size = 255
    end
    object QKartuAssetumur: TStringField
      FieldName = 'umur'
      Size = 11
    end
    object QKartuAssetspesifikasi_asset: TMemoField
      FieldName = 'spesifikasi_asset'
      BlobType = ftMemo
    end
    object QKartuAssetjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object QKartuAssetsatuan: TStringField
      FieldName = 'satuan'
    end
    object QKartuAssettotal: TFloatField
      FieldName = 'total'
    end
    object QKartuAssetnomor_urut: TIntegerField
      FieldName = 'nomor_urut'
    end
    object QKartuAssetbulan_nama: TStringField
      FieldName = 'bulan_nama'
      Size = 10
    end
    object QKartuAssettahun: TStringField
      FieldName = 'tahun'
      Size = 4
    end
    object QKartuAssetvoucher: TStringField
      FieldName = 'voucher'
      Size = 50
    end
    object QKartuAssetjum_perbulan: TFloatField
      FieldName = 'jum_perbulan'
    end
    object QKartuAssetnama: TStringField
      FieldName = 'nama'
    end
    object QKartuAssettgl_beli: TDateField
      FieldName = 'tgl_beli'
    end
    object QKartuAssetnamadebit: TStringField
      FieldName = 'namadebit'
      Size = 255
    end
  end
end
