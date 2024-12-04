object FNew_SalesOrder: TFNew_SalesOrder
  Left = 0
  Top = 0
  Caption = 'Data Sales Order'
  ClientHeight = 522
  ClientWidth = 1061
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1061
    Height = 277
    Align = alClient
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 270
    object LabelPelanggan: TLabel
      Left = 20
      Top = 19
      Width = 69
      Height = 15
      Caption = 'No. Transaksi'
    end
    object Label3: TLabel
      Left = 117
      Top = 19
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 20
      Top = 99
      Width = 91
      Height = 15
      Caption = 'Nama Pelanggan'
    end
    object Label38: TLabel
      Left = 117
      Top = 99
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label1: TLabel
      Left = 20
      Top = 126
      Width = 61
      Height = 15
      Caption = 'Nama Sales'
    end
    object Label2: TLabel
      Left = 117
      Top = 126
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label4: TLabel
      Left = 118
      Top = 153
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 21
      Top = 153
      Width = 67
      Height = 15
      Caption = 'Jatuh Tempo'
    end
    object Label14: TLabel
      Left = 198
      Top = 100
      Width = 22
      Height = 15
      Caption = 'Hari'
    end
    object Label6: TLabel
      Left = 20
      Top = 181
      Width = 43
      Height = 15
      Caption = 'No. Reff'
    end
    object Label7: TLabel
      Left = 117
      Top = 181
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label8: TLabel
      Left = 20
      Top = 210
      Width = 41
      Height = 15
      Caption = 'Sumber'
    end
    object Label9: TLabel
      Left = 117
      Top = 210
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label10: TLabel
      Left = 21
      Top = 72
      Width = 72
      Height = 15
      Caption = 'Tanggal Kirim'
    end
    object Label11: TLabel
      Left = 118
      Top = 72
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label12: TLabel
      Left = 21
      Top = 45
      Width = 75
      Height = 15
      Caption = 'Tanggal Pesan'
    end
    object Label13: TLabel
      Left = 118
      Top = 45
      Width = 3
      Height = 15
      Caption = ':'
    end
    object btMasterSumber: TSpeedButton
      Left = 320
      Top = 207
      Width = 23
      Height = 22
      Caption = '+'
      OnClick = btMasterSumberClick
    end
    object btMasterSales: TSpeedButton
      Left = 482
      Top = 125
      Width = 23
      Height = 22
      Caption = '+'
      OnClick = btMasterSalesClick
    end
    object edKodeOrder: TEdit
      Left = 132
      Top = 16
      Width = 185
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edNama_Pelanggan: TRzButtonEdit
      Left = 132
      Top = 96
      Width = 344
      Height = 23
      Text = ''
      TabOrder = 1
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNama_PelangganButtonClick
    end
    object edKode_Pelanggan: TEdit
      Left = 482
      Top = 96
      Width = 200
      Height = 23
      TabOrder = 2
      Visible = False
    end
    object edNama_Sales: TRzButtonEdit
      Left = 132
      Top = 123
      Width = 344
      Height = 23
      Text = ''
      TabOrder = 3
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNama_SalesButtonClick
    end
    object edKode_Sales: TEdit
      Left = 511
      Top = 125
      Width = 200
      Height = 23
      TabOrder = 4
      Visible = False
    end
    object spJatuhTempo: TSpinEdit
      Left = 132
      Top = 150
      Width = 60
      Height = 24
      MaxValue = 0
      MinValue = 0
      TabOrder = 5
      Value = 0
    end
    object edNoReff: TEdit
      Left = 132
      Top = 178
      Width = 185
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object edNamaSumber: TRzButtonEdit
      Left = 132
      Top = 207
      Width = 185
      Height = 23
      Text = ''
      TabOrder = 7
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaSumberButtonClick
    end
    object edKodeSumber: TEdit
      Left = 344
      Top = 207
      Width = 100
      Height = 23
      TabOrder = 8
      Visible = False
    end
    object dtTanggal_Kirim: TRzDateTimePicker
      Left = 132
      Top = 69
      Width = 186
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 9
    end
    object btAddDetail: TRzBitBtn
      Left = 21
      Top = 241
      Width = 116
      Height = 30
      Align = alCustom
      Caption = 'Tambah Detail'
      TabOrder = 10
      OnClick = btAddDetailClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000830B0000830B00000001000000000000000000003300
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
        09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E809090909
        0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E809101010
        1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809101010
        1010101010101009E8E8E8E881ACACACACACACACACACAC81E8E8E8E809090909
        0910100909090909E8E8E8E88181818181ACAC8181818181E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09101009E8E8E8E8E8E8E8E8E8E8E8E881ACAC81E8E8E8E8E8E8E8E8E8E8E8E8
        09090909E8E8E8E8E8E8E8E8E8E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object dtTanggal_Pesan: TRzDateTimePicker
      Left = 132
      Top = 42
      Width = 186
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 11
      OnChange = dtTanggal_PesanChange
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 490
    Width = 1061
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 481
    ExplicitWidth = 1055
    object BBatal: TRzBitBtn
      Left = 985
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Close'
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
      ExplicitLeft = 979
    end
    object BSave: TRzBitBtn
      Left = 910
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Save'
      TabOrder = 0
      OnClick = BSaveClick
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
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
      ExplicitLeft = 904
    end
    object Edautocode: TEdit
      Left = 712
      Top = 4
      Width = 185
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 2
      TextHint = 'Autonumber'
      Visible = False
    end
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 277
    Width = 1061
    Height = 213
    Hint = ''
    ActivePage = TabSDetailPel
    Align = alBottom
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 2
    FixedDimension = 21
    object TabSDetailPel: TRzTabSheet
      Caption = 'Detail Order'
      ExplicitWidth = 1051
      ExplicitHeight = 195
      object DBGridDetail: TDBGridEh
        Left = 0
        Top = 0
        Width = 1057
        Height = 188
        Align = alClient
        DataSource = DSDetail
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KD_ITEM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode Barang'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NM_ITEM'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Barang'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'JUMLAH'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KD_SATUAN'
            Footers = <>
            ReadOnly = True
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NM_ SATUAN'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Satuan'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KD_SUPPLIER'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode Supplier'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NM_SUPPLIER'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Supplier'
            Visible = False
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KD_GUDANG'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode Gudang'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NM_GUDANG'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Gudang'
            Visible = False
            Width = 250
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DSDetail: TDataSource
    DataSet = MemDetail
    Left = 64
    Top = 496
  end
  object MemDetail: TMemTableEh
    Params = <>
    Left = 136
    Top = 496
    object MemDetailKD_ITEM: TStringField
      FieldName = 'KD_ITEM'
      Size = 50
    end
    object MemDetailNM_ITEM: TStringField
      FieldName = 'NM_ITEM'
      Size = 500
    end
    object MemDetailJUMLAH: TFloatField
      FieldName = 'JUMLAH'
      DisplayFormat = '#,##0.##'
      EditFormat = '#,##0.##'
    end
    object MemDetailKD_SATUAN: TStringField
      FieldName = 'KD_SATUAN'
      Size = 50
    end
    object MemDetailNM_SATUAN: TStringField
      FieldName = 'NM_ SATUAN'
      Size = 500
    end
    object MemDetailKD_GUDANG: TStringField
      FieldName = 'KD_GUDANG'
      Size = 50
    end
    object MemDetailNM_GUDANG: TStringField
      FieldName = 'NM_GUDANG'
      Size = 500
    end
    object MemDetailKD_SUPPLIER: TStringField
      FieldName = 'KD_SUPPLIER'
      Size = 50
    end
    object MemDetailNM_SUPPLIER: TStringField
      FieldName = 'NM_SUPPLIER'
      Size = 500
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KD_ITEM: TMTStringDataFieldEh
          FieldName = 'KD_ITEM'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object NM_ITEM: TMTStringDataFieldEh
          FieldName = 'NM_ITEM'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object JUMLAH: TMTNumericDataFieldEh
          FieldName = 'JUMLAH'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.##'
          EditFormat = '#,##0.##'
          currency = False
          Precision = 15
        end
        object KD_SATUAN: TMTStringDataFieldEh
          FieldName = 'KD_SATUAN'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object NM_SATUAN: TMTStringDataFieldEh
          FieldName = 'NM_ SATUAN'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object KD_GUDANG: TMTStringDataFieldEh
          FieldName = 'KD_GUDANG'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object NM_GUDANG: TMTStringDataFieldEh
          FieldName = 'NM_GUDANG'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object KD_SUPPLIER: TMTStringDataFieldEh
          FieldName = 'KD_SUPPLIER'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object NM_SUPPLIER: TMTStringDataFieldEh
          FieldName = 'NM_SUPPLIER'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
