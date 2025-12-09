object FDataKasKecil: TFDataKasKecil
  Left = 0
  Top = 0
  Caption = 'Kas Kecil'
  ClientHeight = 491
  ClientWidth = 1237
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
    Width = 1237
    Height = 217
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1231
    object LabelPelanggan: TLabel
      Left = 18
      Top = 104
      Width = 39
      Height = 15
      Caption = 'Kepada'
    end
    object Label3: TLabel
      Left = 128
      Top = 104
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label12: TLabel
      Left = 18
      Top = 44
      Width = 91
      Height = 15
      Caption = 'Tanggal Transaksi'
    end
    object Label13: TLabel
      Left = 128
      Top = 44
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label4: TLabel
      Left = 128
      Top = 131
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 18
      Top = 131
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label1: TLabel
      Left = 18
      Top = 15
      Width = 69
      Height = 15
      Caption = 'No. Transaksi'
    end
    object Label2: TLabel
      Left = 128
      Top = 15
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label6: TLabel
      Left = 18
      Top = 74
      Width = 41
      Height = 15
      Caption = 'Sumber'
    end
    object Label7: TLabel
      Left = 128
      Top = 74
      Width = 3
      Height = 15
      Caption = ':'
    end
    object edKodeKepada: TEdit
      Left = 492
      Top = 100
      Width = 61
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
      Visible = False
    end
    object dtTrans: TRzDateTimePicker
      Left = 140
      Top = 41
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 1
      OnChange = dtTransChange
    end
    object MemKeterangan: TMemo
      Left = 140
      Top = 129
      Width = 344
      Height = 82
      TabOrder = 2
    end
    object edNoTrans: TEdit
      Left = 140
      Top = 12
      Width = 344
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object edNamaKepada: TRzButtonEdit
      Left = 140
      Top = 100
      Width = 344
      Height = 23
      Text = ''
      TabOrder = 4
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaKepadaButtonClick
    end
    object edNamaSumberKas: TRzButtonEdit
      Left = 140
      Top = 71
      Width = 344
      Height = 23
      Text = ''
      TabOrder = 5
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaSumberKasButtonClick
    end
    object edKodeSumberKas: TEdit
      Left = 492
      Top = 71
      Width = 61
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 6
      Visible = False
    end
    object gbDataBON: TGroupBox
      Left = 504
      Top = 16
      Width = 497
      Height = 107
      Caption = 'Data BON'
      TabOrder = 7
      Visible = False
      object Label8: TLabel
        Left = 18
        Top = 32
        Width = 61
        Height = 15
        Caption = 'No. Kasbon'
      end
      object Label9: TLabel
        Left = 128
        Top = 32
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label19: TLabel
        Left = 128
        Top = 66
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label20: TLabel
        Left = 18
        Top = 66
        Width = 38
        Height = 15
        Caption = 'Jumlah'
      end
      object edNomorKasBon: TRzButtonEdit
        Left = 140
        Top = 29
        Width = 344
        Height = 23
        Text = ''
        TabOrder = 0
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNomorKasBonButtonClick
      end
      object edJumlah: TRzNumericEdit
        Left = 140
        Top = 63
        Width = 186
        Height = 23
        TabOrder = 1
        DisplayFormat = '0.00#,##'
      end
    end
    object BtnAmbil_Data: TRzBitBtn
      Left = 522
      Top = 10
      Width = 186
      Caption = 'AMBIL DATA PENGAJUAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      Visible = False
      OnClick = BtnAmbil_DataClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000A30E0000A30E00000001000000000000000000003300
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E80909
        E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8090909
        09090909090909E8E8E8E8E8E881818181818181818181E8E8E8E8E8E8E80909
        E8E8E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E881E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8A37878787878
        78E8E85E5E5E5E5E5E5E81818181818181E8E881818181818181A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5D5D5D5
        78E8E85ED7D7D7D7D75E81ACACACACAC81E8E881E8E8E8E8E881A3D5D5A3A3A3
        A3E8E85ED7D75E5E5E5E81ACAC81818181E8E881E8E881818181A3D5D5A3D678
        E8E8E85ED7D75EE35EE881ACAC81AC81E8E8E881E8E881E381E8A3D5D5A378E8
        E8E8E85ED7D75E5EE8E881ACAC8181E8E8E8E881E8E88181E8E8A3A3A3A3E8E8
        E8E8E85E5E5E5EE8E8E881818181E8E8E8E8E881818181E8E8E8}
      NumGlyphs = 2
    end
    object GbHutang: TGroupBox
      Left = 504
      Top = 100
      Width = 497
      Height = 111
      TabOrder = 9
      Visible = False
      object Label10: TLabel
        Left = 294
        Top = 24
        Width = 17
        Height = 15
        Caption = 's/d'
      end
      object Label11: TLabel
        Left = 133
        Top = 24
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label14: TLabel
        Left = 20
        Top = 24
        Width = 40
        Height = 15
        Caption = 'Periode'
      end
      object Label16: TLabel
        Left = 353
        Top = 54
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label15: TLabel
        Left = 317
        Top = 54
        Width = 23
        Height = 15
        Caption = 'Kurs'
      end
      object Label17: TLabel
        Left = 133
        Top = 54
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label18: TLabel
        Left = 20
        Top = 54
        Width = 58
        Height = 15
        Caption = 'Mata Uang'
      end
      object Label21: TLabel
        Left = 133
        Top = 82
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label22: TLabel
        Left = 20
        Top = 82
        Width = 38
        Height = 15
        Caption = 'Jumlah'
      end
      object dtPeriode2: TRzDateTimePicker
        Left = 317
        Top = 21
        Width = 141
        Height = 23
        Date = 45405.000000000000000000
        Format = ''
        Time = 0.597438842589326700
        TabOrder = 0
      end
      object dtPeriode1: TRzDateTimePicker
        Left = 147
        Top = 21
        Width = 141
        Height = 23
        Date = 45405.000000000000000000
        Format = ''
        Time = 0.597438842589326700
        TabOrder = 1
      end
      object edKurs: TRzNumericEdit
        Left = 376
        Top = 50
        Width = 82
        Height = 23
        TabOrder = 2
        DisplayFormat = '0.00#,##'
      end
      object edNamaMataUang: TRzButtonEdit
        Left = 147
        Top = 50
        Width = 142
        Height = 23
        Text = ''
        TabOrder = 3
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
      end
      object edKodeMataUang: TEdit
        Left = 376
        Top = 79
        Width = 83
        Height = 23
        TabOrder = 4
        Visible = False
        OnChange = edKodeMataUangChange
      end
      object Ed_Jumlah_Hutang: TRzNumericEdit
        Left = 147
        Top = 79
        Width = 142
        Height = 23
        TabOrder = 5
        DisplayFormat = '0.00#,##'
      end
    end
    object ak_account: TEdit
      Left = 408
      Top = 41
      Width = 76
      Height = 23
      TabOrder = 10
      Visible = False
    end
    object edKode_supplier: TRzButtonEdit
      Left = 328
      Top = 41
      Width = 74
      Height = 23
      Text = ''
      TabOrder = 11
      Visible = False
      OnChange = edKode_supplierChange
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
    end
  end
  object PGC: TRzPageControl
    Left = 0
    Top = 217
    Width = 1237
    Height = 242
    Hint = ''
    ActivePage = TabDetailAkun
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 1
    ExplicitWidth = 1231
    ExplicitHeight = 233
    FixedDimension = 21
    object TabDetailAkun: TRzTabSheet
      Caption = 'Detail Akun'
      ExplicitWidth = 1227
      ExplicitHeight = 208
      object DBGridAkun: TDBGridEh
        Left = 0
        Top = 0
        Width = 1233
        Height = 217
        Align = alClient
        DataSource = DSDetailAkun
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridAkunColumns0EditButtons0Click
              end>
            FieldName = 'kd_header_akun'
            Footers = <>
            Title.Caption = 'Kode Akun'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_akun'
            Footers = <>
            Title.Caption = 'Nama Akun'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'debit'
            Footers = <>
            Title.Caption = 'Jumlah | Debit'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kredit'
            Footers = <>
            Title.Caption = 'Jumlah | Kredit'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridAkunColumns4EditButtons0Click
              end>
            FieldName = 'nm_group_biaya'
            Footers = <>
            Title.Caption = 'Group Biaya'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
              end>
            FieldName = 'kd_akun'
            Footers = <>
            Title.Caption = 'Kode Anak Akun '
            Visible = False
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_group_biaya'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabDetailFaktur: TRzTabSheet
      TabVisible = False
      Caption = 'Detail Hutang'
      object DBGridTagihan: TDBGridEh
        Left = 0
        Top = 0
        Width = 1233
        Height = 217
        Align = alClient
        DataSource = dsDetailHutang
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        Visible = False
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
              end>
            FieldName = 'no_tagihan'
            Footers = <>
            Title.Caption = 'Nomor | Voucher'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_sj'
            Footers = <>
            Title.Caption = 'Nomor | Surat Jalan'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_faktur'
            Footers = <>
            Title.Caption = 'Nomor | Faktur'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
              end>
            FieldName = 'tgl_faktur'
            Footers = <>
            Title.Caption = 'Tanggal'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jum_hutang'
            Footers = <>
            Title.Caption = 'Jumlah Hutang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Visible = False
            Width = 250
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 1237
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 450
    ExplicitWidth = 1231
    object BBatal: TRzBitBtn
      Left = 1161
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
      ExplicitLeft = 1155
    end
    object BSave: TRzBitBtn
      Left = 1086
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
      ExplicitLeft = 1080
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
  object MemDetailAkun: TMemTableEh
    Params = <>
    Left = 568
    Top = 360
    object MemDetailAkunkd_akun: TStringField
      FieldName = 'kd_akun'
      Size = 100
    end
    object MemDetailAkunnm_akun: TStringField
      FieldName = 'nm_akun'
      Size = 500
    end
    object MemDetailAkunketerangan: TStringField
      FieldName = 'keterangan'
      Size = 500
    end
    object MemDetailAkundebit: TCurrencyField
      FieldName = 'debit'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailAkunkredit: TCurrencyField
      FieldName = 'kredit'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailAkunkd_header_akun: TStringField
      FieldName = 'kd_header_akun'
    end
    object MemDetailAkunkd_group_biaya: TStringField
      FieldName = 'kd_group_biaya'
    end
    object MemDetailAkunnm_group_biaya: TStringField
      FieldName = 'nm_group_biaya'
      Size = 200
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object debit: TMTNumericDataFieldEh
          FieldName = 'debit'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object kredit: TMTNumericDataFieldEh
          FieldName = 'kredit'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 50
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object kd_header_akun: TMTStringDataFieldEh
          FieldName = 'kd_header_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_group_biaya: TMTStringDataFieldEh
          FieldName = 'kd_group_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_group_biaya: TMTStringDataFieldEh
          FieldName = 'nm_group_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDetailAkun: TDataSource
    DataSet = MemDetailAkun
    Left = 648
    Top = 360
  end
  object dsDetailHutang: TDataSource
    DataSet = MemDetailHutang
    Left = 864
    Top = 319
  end
  object MemDetailHutang: TMemTableEh
    Active = True
    Params = <>
    Left = 800
    Top = 319
    object MemDetailHutangno_tagihan: TStringField
      FieldName = 'no_tagihan'
      Size = 500
    end
    object MemDetailHutangtgl_faktur: TDateField
      FieldName = 'tgl_faktur'
    end
    object MemDetailHutangketerangan: TStringField
      FieldName = 'keterangan'
    end
    object MemDetailHutangno_faktur: TStringField
      FieldName = 'no_faktur'
    end
    object MemDetailHutangno_sj: TStringField
      FieldName = 'no_sj'
    end
    object MemDetailHutangjum_hutang: TCurrencyField
      FieldName = 'jum_hutang'
    end
    object MemDetailHutangjum_hutang_real: TCurrencyField
      FieldName = 'jum_hutang_real'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object tgl_faktur: TMTDateTimeDataFieldEh
          FieldName = 'tgl_faktur'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 100
        end
        object no_faktur: TMTStringDataFieldEh
          FieldName = 'no_faktur'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_sj: TMTStringDataFieldEh
          FieldName = 'no_sj'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object no_tagihan: TMTStringDataFieldEh
          FieldName = 'no_tagihan'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object jum_hutang: TMTNumericDataFieldEh
          FieldName = 'jum_hutang'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object jum_hutang_real: TMTNumericDataFieldEh
          FieldName = 'jum_hutang_real'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
