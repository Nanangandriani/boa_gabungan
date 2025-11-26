object FDaftarKlasifikasi: TFDaftarKlasifikasi
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daftar Klasifikasi'
  ClientHeight = 558
  ClientWidth = 1081
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1081
    Height = 558
    ActivePage = TabDaftarKlasifikasiPelanggan
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 1077
    ExplicitHeight = 557
    object TabMasterKlasifikasi: TTabSheet
      Caption = 'Master Klasifikasi'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1073
        Height = 209
        Align = alTop
        TabOrder = 0
        ExplicitWidth = 1069
        object Label9: TLabel
          Left = 117
          Top = 77
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label10: TLabel
          Left = 9
          Top = 77
          Width = 94
          Height = 15
          Caption = 'Kelompok Barang'
        end
        object Label11: TLabel
          Left = 9
          Top = 106
          Width = 93
          Height = 15
          Caption = 'Jenis Perhitungan'
        end
        object Label12: TLabel
          Left = 117
          Top = 106
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label13: TLabel
          Left = 9
          Top = 48
          Width = 84
          Height = 15
          Caption = 'Jenis Pelanggan'
        end
        object Label14: TLabel
          Left = 117
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label7: TLabel
          Left = 117
          Top = 136
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label8: TLabel
          Left = 117
          Top = 165
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label15: TLabel
          Left = 9
          Top = 136
          Width = 79
          Height = 15
          Caption = 'Type Penjualan'
        end
        object Label16: TLabel
          Left = 11
          Top = 165
          Width = 80
          Height = 15
          Caption = 'Jenis Penjualan'
        end
        object Label1: TLabel
          Left = 117
          Top = 19
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label4: TLabel
          Left = 9
          Top = 19
          Width = 60
          Height = 15
          Caption = 'Jenis Usaha'
        end
        object ednm_jenis_pel: TRzButtonEdit
          Left = 126
          Top = 44
          Width = 259
          Height = 23
          Text = ''
          TabOrder = 0
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_jenis_pelButtonClick
        end
        object edkd_jenis_pel: TEdit
          Left = 975
          Top = 44
          Width = 98
          Height = 23
          TabOrder = 1
          Visible = False
        end
        object ednm_kategori: TRzButtonEdit
          Left = 126
          Top = 73
          Width = 259
          Height = 23
          Text = ''
          TabOrder = 2
          OnChange = ednm_kategoriChange
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_kategoriButtonClick
        end
        object edkd_kategori: TEdit
          Left = 975
          Top = 73
          Width = 98
          Height = 23
          TabOrder = 3
          Visible = False
          OnChange = edkd_kategoriChange
        end
        object ednm_type_jual: TRzButtonEdit
          Left = 126
          Top = 132
          Width = 259
          Height = 23
          Text = ''
          TabOrder = 4
          OnChange = ednm_type_jualChange
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_type_jualButtonClick
        end
        object edkd_type_jual: TEdit
          Left = 975
          Top = 132
          Width = 98
          Height = 23
          TabOrder = 5
          Visible = False
          OnChange = edkd_type_jualChange
        end
        object ednm_jenis_jual: TRzButtonEdit
          Left = 126
          Top = 161
          Width = 259
          Height = 23
          Text = ''
          TabOrder = 6
          OnChange = ednm_jenis_jualChange
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_jenis_jualButtonClick
        end
        object edkd_jenis_jual: TEdit
          Left = 975
          Top = 161
          Width = 98
          Height = 23
          TabOrder = 7
          Visible = False
          OnChange = edkd_jenis_jualChange
        end
        object ednm_type_hitung: TRzButtonEdit
          Left = 126
          Top = 102
          Width = 259
          Height = 23
          Text = ''
          TabOrder = 8
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_type_hitungButtonClick
        end
        object edkd_type_hitung: TEdit
          Left = 975
          Top = 102
          Width = 98
          Height = 23
          TabOrder = 9
          Visible = False
        end
        object rgPembayaran: TRzRadioGroup
          Left = 391
          Top = 16
          Width = 186
          Height = 46
          Caption = 'Status Pembayaran'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Cash                                  '
            'Kredit')
          TabOrder = 10
          Transparent = True
        end
        object rgPotongan: TRzRadioGroup
          Left = 589
          Top = 16
          Width = 186
          Height = 46
          Caption = 'Jenis Potongan'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 0
          Items.Strings = (
            'Disc'
            'Value (Rp)')
          TabOrder = 11
          Transparent = True
        end
        object rgPromo: TRzRadioGroup
          Left = 589
          Top = 70
          Width = 186
          Height = 46
          Caption = 'Status Promo'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 0
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 12
          Transparent = True
        end
        object rgGrouping: TRzRadioGroup
          Left = 391
          Top = 70
          Width = 186
          Height = 46
          Caption = 'Status Grouping'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Non Grouping                                  '
            'Grouping')
          TabOrder = 13
          Transparent = True
          OnChanging = rgGroupingChanging
          OnClick = rgGroupingClick
        end
        object rgPajak: TRzRadioGroup
          Left = 391
          Top = 122
          Width = 186
          Height = 46
          Caption = 'Include PPN'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 14
          Transparent = True
          OnClick = rgPajakClick
        end
        object edkd_jenis_usaha: TEdit
          Left = 975
          Top = 15
          Width = 98
          Height = 23
          TabOrder = 15
          Visible = False
        end
        object ednm_jenis_usaha: TRzButtonEdit
          Left = 126
          Top = 16
          Width = 259
          Height = 23
          Text = ''
          TabOrder = 16
          OnChange = ednm_jenis_usahaChange
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_jenis_usahaButtonClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 241
        Width = 1073
        Height = 287
        Align = alClient
        Caption = 'Daftar Klasifikasi'
        TabOrder = 1
        ExplicitWidth = 1069
        ExplicitHeight = 286
        object DBGridDetail: TDBGridEh
          Left = 2
          Top = 17
          Width = 1069
          Height = 268
          Align = alClient
          DataSource = dsKlasifikasi
          DynProps = <>
          HorzScrollBar.ExtraPanel.Visible = True
          SearchPanel.Enabled = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_barang'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_barang'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nama Barang'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_satuan'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Satuan'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_satuan'
              Footers = <>
              Visible = False
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'harga_satuan'
              Footers = <>
              Title.Caption = 'Harga Satuan'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'batas1'
              Footers = <>
              Title.Caption = 'Batas | Awal'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'batas2'
              Footers = <>
              Title.Caption = 'Batas | Akhir'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc'
              Footers = <>
              Visible = False
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc1'
              Footers = <>
              Title.Caption = 'Potongan | Ke- 1'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc2'
              Footers = <>
              Title.Caption = 'Potongan | Ke- 2'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc3'
              Footers = <>
              Title.Caption = 'Potongan | Ke- 3'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc4'
              Footers = <>
              Title.Caption = 'Potongan | Ke- 4'
              Width = 100
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 209
        Width = 1073
        Height = 32
        Align = alTop
        TabOrder = 2
        ExplicitWidth = 1069
        object RzLabel1: TRzLabel
          Left = 467
          Top = 11
          Width = 196
          Height = 15
          Caption = '*Harga Satuan sudah termasuk PPN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object bt_m_batal: TRzBitBtn
          Left = 997
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Close'
          TabOrder = 1
          OnClick = bt_m_batalClick
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
          ExplicitLeft = 993
        end
        object bt_m_simpan: TRzBitBtn
          Left = 922
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Save'
          TabOrder = 0
          OnClick = bt_m_simpanClick
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
          ExplicitLeft = 918
        end
        object bt_m_tampilkan: TRzBitBtn
          Left = 817
          Top = 1
          Width = 105
          Height = 30
          Align = alRight
          Caption = 'Preview'
          TabOrder = 2
          Visible = False
          OnClick = bt_m_tampilkanClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000830E0000830E00000001000000000000000000003300
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
            E8E8E8E8E8E8E8820982E8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE85E5E5E5E5E
            5E5E5E5E5E5E82090909E88181818181818181818181AC818181E85ED7D7D7D7
            D7D7D7D7D7DF09090982E881E8E8E8E8E8E8E8E8E8DF818181ACE85ED7E3E3E3
            E3E3DFDFDF09090982E8E881E8ACACACACACDFDFDF818181ACE8E85ED7D7D7D7
            E35DB3B3D7880982E8E8E881E8E8E8E8AC81E3E3D7E381ACE8E8E85ED7E3E3E3
            81E6B3B3B3D756E8E8E8E881E8ACACAC81E3E3E3E3D756E8E8E8E85ED7D7D7D7
            81E6D7E6B3B356E8E8E8E881E8E8E8E881E3D7E3E3E356E8E8E8E85ED7E3E3E3
            81E6D7D7E6B356E8E8E8E881E8ACACAC81E3D7D7E3E356E8E8E8E85ED7D7D7D7
            D781E6E6E65DDFE8E8E8E881E8E8E8E8E881E3E3E381DFE8E8E8E85ED7E3E3E3
            E3E3818181E35EE8E8E8E881E8ACACACACAC818181E381E8E8E8E85ED7D7D7D7
            D7D7D7D7D7D75EE8E8E8E881E8E8E8E8E8E8E8E8E8E881E8E8E8E85ED7E3E3E3
            E3E3D75E5E5E5EE8E8E8E881E8ACACACACACE881818181E8E8E8E85ED7D7D7D7
            D7D7D75EE35EE8E8E8E8E881E8E8E8E8E8E8E881E381E8E8E8E8E85ED7D7D7D7
            D7D7D75E5EE8E8E8E8E8E881E8E8E8E8E8E8E88181E8E8E8E8E8E85E5E5E5E5E
            5E5E5E5EE8E8E8E8E8E8E8818181818181818181E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
          ExplicitLeft = 813
        end
        object btAddDetail: TRzBitBtn
          Left = 1
          Top = 1
          Width = 116
          Height = 30
          Align = alLeft
          Caption = 'Tambah Detail'
          TabOrder = 3
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
        object BCorrection: TRzBitBtn
          Left = 719
          Top = 1
          Width = 98
          Height = 30
          Align = alRight
          Caption = 'Submit Correction'
          TabOrder = 4
          OnClick = BCorrectionClick
          ExplicitLeft = 715
        end
        object BKlasifikasi: TRzBitBtn
          Left = 117
          Top = 1
          Width = 212
          Height = 30
          Align = alLeft
          Caption = 'Ambil Klasifikasi Yang Sudah Ada'
          TabOrder = 5
          OnClick = BKlasifikasiClick
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
      end
    end
    object TabDaftarKlasifikasiPelanggan: TTabSheet
      Caption = 'Daftar Klasifikasi Pelanggan'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1073
        Height = 131
        Align = alTop
        TabOrder = 0
        object Label6: TLabel
          Left = 117
          Top = 49
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label3: TLabel
          Left = 117
          Top = 19
          Width = 3
          Height = 15
          Caption = ':'
        end
        object LabelPelanggan: TLabel
          Left = 20
          Top = 19
          Width = 86
          Height = 15
          Caption = 'Kode Pelanggan'
        end
        object Label5: TLabel
          Left = 20
          Top = 49
          Width = 91
          Height = 15
          Caption = 'Nama Pelanggan'
        end
        object Label25: TLabel
          Left = 589
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label26: TLabel
          Left = 492
          Top = 48
          Width = 80
          Height = 15
          Caption = 'Jenis Penjualan'
        end
        object Label27: TLabel
          Left = 492
          Top = 77
          Width = 94
          Height = 15
          Caption = 'Kelompok Barang'
        end
        object Label28: TLabel
          Left = 589
          Top = 77
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Wilayah: TLabel
          Left = 492
          Top = 19
          Width = 79
          Height = 15
          Caption = 'Type Penjualan'
        end
        object Label2: TLabel
          Left = 589
          Top = 19
          Width = 3
          Height = 15
          Caption = ':'
        end
        object edNama_Pelanggan: TEdit
          Left = 132
          Top = 46
          Width = 344
          Height = 23
          ReadOnly = True
          TabOrder = 0
        end
        object edkd_type_jual_pel: TEdit
          Left = 954
          Top = 16
          Width = 200
          Height = 23
          TabOrder = 1
          Visible = False
        end
        object ednm_jenis_jual_pel: TRzButtonEdit
          Left = 604
          Top = 45
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 2
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_jenis_jual_pelButtonClick
        end
        object ednm_type_jual_pel: TRzButtonEdit
          Left = 604
          Top = 16
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 3
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_type_jual_pelButtonClick
        end
        object edkd_jenis_jual_pel: TEdit
          Left = 954
          Top = 45
          Width = 200
          Height = 23
          TabOrder = 4
          Visible = False
        end
        object ednm_kategori_pel: TRzButtonEdit
          Left = 604
          Top = 74
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 5
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = ednm_kategori_pelButtonClick
        end
        object edkd_kategori_pel: TEdit
          Left = 954
          Top = 74
          Width = 200
          Height = 23
          TabOrder = 6
          Visible = False
        end
        object edKode_Pelanggan: TRzButtonEdit
          Left = 132
          Top = 16
          Width = 125
          Height = 23
          Text = ''
          TabOrder = 7
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edKode_PelangganButtonClick
        end
        object rgPajakPel: TRzRadioGroup
          Left = 20
          Top = 75
          Width = 186
          Height = 46
          Caption = 'Include PPN'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 8
          Transparent = True
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 342
        Width = 1073
        Height = 32
        Align = alTop
        TabOrder = 1
        object BBatal: TRzBitBtn
          Left = 816
          Top = 1
          Width = 256
          Height = 30
          Align = alRight
          Caption = 'Hapus'
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
        object BSave: TRzBitBtn
          Left = 1
          Top = 1
          Width = 256
          Height = 30
          Align = alLeft
          Caption = 'Tambahkan'
          TabOrder = 0
          OnClick = BSaveClick
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
        object BRefresh: TRzBitBtn
          Left = 257
          Top = 1
          Width = 559
          Height = 30
          Align = alClient
          Caption = 'Refresh'
          TabOrder = 2
          OnClick = BRefreshClick
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E85E09
            095EE8E8E8E8E8E8E8E8E8E8E8E8E28181E2E8E8E8E8E8E8E8E8E8E8E8090910
            1009E8E8E8E8E8E8E8E8E8E8E88181ACAC81E8E8E8E8E8E8E8E8E8E809101009
            095EE8E8E8E8E8E8E8E8E8E881ACAC8181E2E8E8E8E8E8E8E8E8E85E0910095E
            E8E809090909090909E8E8E281AC81E2E8E881818181818181E8E80910095EE8
            E8E809101010101009E8E881AC81E2E8E8E881ACACACACAC81E8E8091009E8E8
            E8E8E8091010101009E8E881AC81E8E8E8E8E881ACACACAC81E8E80910095EE8
            E8E8E85E0910101009E8E881AC81E2E8E8E8E8E281ACACAC81E8E85E0910095E
            E85E09091009101009E8E8E281AC81E2E8E28181AC81ACAC81E8E8E809101009
            09091010095E091009E8E8E881ACAC818181ACAC81E281AC81E8E8E8E8090910
            10100909E8E8E80909E8E8E8E88181ACACAC8181E8E8E88181E8E8E8E8E85E09
            09095EE8E8E8E8E8E8E8E8E8E8E8E2818181E2E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
        end
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 131
        Width = 1073
        Height = 211
        Align = alTop
        Caption = 'Daftar Klasifikasi'
        TabOrder = 2
        object DBGridKlasifikasi: TDBGridEh
          Left = 2
          Top = 17
          Width = 1069
          Height = 192
          Align = alClient
          DataSource = dsGroup
          DynProps = <>
          ReadOnly = True
          SearchPanel.Enabled = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          OnDblClick = DBGridKlasifikasiDblClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_barang'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_barang'
              Footers = <>
              Title.Caption = 'Nama Barang'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_satuan'
              Footers = <>
              Title.Caption = 'Satuan'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_satuan'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'harga_satuan'
              Footers = <>
              Title.Caption = 'Harga Satuan'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'batas1'
              Footers = <>
              Title.Caption = 'Batas | Awal'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'batas2'
              Footers = <>
              Title.Caption = 'Batas | Akhir'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc1'
              Footers = <>
              Title.Caption = 'Potongan | Kesatu'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc2'
              Footers = <>
              Title.Caption = 'Potongan | Kedua'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc3'
              Footers = <>
              Title.Caption = 'Potongan | Ketiga'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc4'
              Footers = <>
              Title.Caption = 'Potongan | Keempat'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'id_master'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'id_master_det'
              Footers = <>
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 374
        Width = 1073
        Height = 189
        Align = alTop
        Caption = 'Daftar Master Klasifikasi'
        TabOrder = 3
        object DBGridMaster: TDBGridEh
          Left = 2
          Top = 17
          Width = 1069
          Height = 170
          Align = alClient
          DataSource = dsMaster
          DynProps = <>
          ReadOnly = True
          SearchPanel.Enabled = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          OnDblClick = DBGridMasterDblClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_barang'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_barang'
              Footers = <>
              Title.Caption = 'Nama Barang'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'kd_satuan'
              Footers = <>
              Title.Caption = 'Satuan'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'nm_satuan'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'harga_satuan'
              Footers = <>
              Title.Caption = 'Harga Satuan'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'batas1'
              Footers = <>
              Title.Caption = 'Batas | Awal'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'batas2'
              Footers = <>
              Title.Caption = 'Batas | Akhir'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc1'
              Footers = <>
              Title.Caption = 'Potongan | Kesatu'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc2'
              Footers = <>
              Title.Caption = 'Potongan | Kedua'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc3'
              Footers = <>
              Title.Caption = 'Potongan | Ketiga'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'disc4'
              Footers = <>
              Title.Caption = 'Potongan | Keempat'
              Width = 100
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'id_master'
              Footers = <>
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'id_master_det'
              Footers = <>
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
    end
  end
  object dsKlasifikasi: TDataSource
    DataSet = MemKlasifikasi
    Left = 40
    Top = 448
  end
  object MemKlasifikasi: TMemTableEh
    Params = <>
    Left = 40
    Top = 504
    object MemKlasifikasikd_barang: TStringField
      FieldName = 'kd_barang'
    end
    object MemKlasifikasinm_barang: TStringField
      FieldName = 'nm_barang'
      Size = 200
    end
    object MemKlasifikasikd_satuan: TStringField
      FieldName = 'kd_satuan'
    end
    object MemKlasifikasinm_satuan: TStringField
      FieldName = 'nm_satuan'
    end
    object MemKlasifikasiharga_satuan: TFloatField
      FieldName = 'harga_satuan'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasibatas1: TFloatField
      FieldName = 'batas1'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasibatas2: TFloatField
      FieldName = 'batas2'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasidisc: TFloatField
      FieldName = 'disc'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasidisc1: TFloatField
      FieldName = 'disc1'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasidisc2: TFloatField
      FieldName = 'disc2'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasidisc3: TFloatField
      FieldName = 'disc3'
      DisplayFormat = '#,##0.##'
    end
    object MemKlasifikasidisc4: TFloatField
      FieldName = 'disc4'
      DisplayFormat = '#,##0.##'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_barang: TMTStringDataFieldEh
          FieldName = 'kd_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_barang: TMTStringDataFieldEh
          FieldName = 'nm_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object kd_satuan: TMTStringDataFieldEh
          FieldName = 'kd_satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_satuan: TMTStringDataFieldEh
          FieldName = 'nm_satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object harga_satuan: TMTNumericDataFieldEh
          FieldName = 'harga_satuan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object batas1: TMTNumericDataFieldEh
          FieldName = 'batas1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object batas2: TMTNumericDataFieldEh
          FieldName = 'batas2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc: TMTNumericDataFieldEh
          FieldName = 'disc'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc1: TMTNumericDataFieldEh
          FieldName = 'disc1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc2: TMTNumericDataFieldEh
          FieldName = 'disc2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc3: TMTNumericDataFieldEh
          FieldName = 'disc3'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc4: TMTNumericDataFieldEh
          FieldName = 'disc4'
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
  object dsGroup: TDataSource
    DataSet = MemGroup
    Left = 144
    Top = 448
  end
  object MemGroup: TMemTableEh
    Params = <>
    Left = 144
    Top = 504
    object StringField1: TStringField
      FieldName = 'kd_barang'
    end
    object StringField2: TStringField
      FieldName = 'nm_barang'
      Size = 200
    end
    object StringField3: TStringField
      FieldName = 'kd_satuan'
    end
    object StringField4: TStringField
      FieldName = 'nm_satuan'
    end
    object FloatField1: TFloatField
      FieldName = 'harga_satuan'
      DisplayFormat = '#,##0.##'
    end
    object FloatField2: TFloatField
      FieldName = 'batas1'
      DisplayFormat = '#,##0.##'
    end
    object FloatField3: TFloatField
      FieldName = 'batas2'
      DisplayFormat = '#,##0.##'
    end
    object FloatField4: TFloatField
      FieldName = 'disc'
      DisplayFormat = '#,##0.##'
    end
    object FloatField5: TFloatField
      FieldName = 'disc1'
      DisplayFormat = '#,##0.##'
    end
    object FloatField6: TFloatField
      FieldName = 'disc2'
      DisplayFormat = '#,##0.##'
    end
    object FloatField7: TFloatField
      FieldName = 'disc3'
      DisplayFormat = '#,##0.##'
    end
    object FloatField8: TFloatField
      FieldName = 'disc4'
      DisplayFormat = '#,##0.##'
    end
    object MemGroupid_master: TStringField
      FieldName = 'id_master'
      Size = 50
    end
    object MemGroupid_master_det: TStringField
      FieldName = 'id_master_det'
      Size = 50
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object id_master: TMTStringDataFieldEh
          FieldName = 'id_master'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object id_master_det: TMTStringDataFieldEh
          FieldName = 'id_master_det'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object kd_barang: TMTStringDataFieldEh
          FieldName = 'kd_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_barang: TMTStringDataFieldEh
          FieldName = 'nm_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object kd_satuan: TMTStringDataFieldEh
          FieldName = 'kd_satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_satuan: TMTStringDataFieldEh
          FieldName = 'nm_satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object harga_satuan: TMTNumericDataFieldEh
          FieldName = 'harga_satuan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object batas1: TMTNumericDataFieldEh
          FieldName = 'batas1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object batas2: TMTNumericDataFieldEh
          FieldName = 'batas2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc: TMTNumericDataFieldEh
          FieldName = 'disc'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc1: TMTNumericDataFieldEh
          FieldName = 'disc1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc2: TMTNumericDataFieldEh
          FieldName = 'disc2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc3: TMTNumericDataFieldEh
          FieldName = 'disc3'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc4: TMTNumericDataFieldEh
          FieldName = 'disc4'
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
  object dsMaster: TDataSource
    DataSet = MemMaster
    Left = 240
    Top = 448
  end
  object MemMaster: TMemTableEh
    Params = <>
    Left = 240
    Top = 504
    object StringField5: TStringField
      FieldName = 'kd_barang'
    end
    object StringField6: TStringField
      FieldName = 'nm_barang'
      Size = 200
    end
    object StringField7: TStringField
      FieldName = 'kd_satuan'
    end
    object StringField8: TStringField
      FieldName = 'nm_satuan'
    end
    object FloatField9: TFloatField
      FieldName = 'harga_satuan'
      DisplayFormat = '#,##0.##'
    end
    object FloatField10: TFloatField
      FieldName = 'batas1'
      DisplayFormat = '#,##0.##'
    end
    object FloatField11: TFloatField
      FieldName = 'batas2'
      DisplayFormat = '#,##0.##'
    end
    object FloatField12: TFloatField
      FieldName = 'disc'
      DisplayFormat = '#,##0.##'
    end
    object FloatField13: TFloatField
      FieldName = 'disc1'
      DisplayFormat = '#,##0.##'
    end
    object FloatField14: TFloatField
      FieldName = 'disc2'
      DisplayFormat = '#,##0.##'
    end
    object FloatField15: TFloatField
      FieldName = 'disc3'
      DisplayFormat = '#,##0.##'
    end
    object FloatField16: TFloatField
      FieldName = 'disc4'
      DisplayFormat = '#,##0.##'
    end
    object MemMasterid_master: TStringField
      FieldName = 'id_master'
      Size = 50
    end
    object MemMasterid_master_det: TStringField
      FieldName = 'id_master_det'
      Size = 50
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object id_master: TMTStringDataFieldEh
          FieldName = 'id_master'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object id_master_det: TMTStringDataFieldEh
          FieldName = 'id_master_det'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object kd_barang: TMTStringDataFieldEh
          FieldName = 'kd_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_barang: TMTStringDataFieldEh
          FieldName = 'nm_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object kd_satuan: TMTStringDataFieldEh
          FieldName = 'kd_satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_satuan: TMTStringDataFieldEh
          FieldName = 'nm_satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object harga_satuan: TMTNumericDataFieldEh
          FieldName = 'harga_satuan'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object batas1: TMTNumericDataFieldEh
          FieldName = 'batas1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object batas2: TMTNumericDataFieldEh
          FieldName = 'batas2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc: TMTNumericDataFieldEh
          FieldName = 'disc'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc1: TMTNumericDataFieldEh
          FieldName = 'disc1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc2: TMTNumericDataFieldEh
          FieldName = 'disc2'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc3: TMTNumericDataFieldEh
          FieldName = 'disc3'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object disc4: TMTNumericDataFieldEh
          FieldName = 'disc4'
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
  object IdCompressorZLib1: TIdCompressorZLib
    Left = 868
    Top = 170
  end
end
