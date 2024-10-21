object FDataPenerimaanBank: TFDataPenerimaanBank
  Left = 0
  Top = 0
  Caption = 'Data Penerimaan Bank'
  ClientHeight = 554
  ClientWidth = 1133
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
    Width = 1133
    Height = 185
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1127
    object LabelPelanggan: TLabel
      Left = 10
      Top = 46
      Width = 69
      Height = 15
      Caption = 'No. Transaksi'
    end
    object Label3: TLabel
      Left = 120
      Top = 46
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label39: TLabel
      Left = 10
      Top = 19
      Width = 75
      Height = 15
      Caption = 'Jenis Transaksi'
    end
    object Label38: TLabel
      Left = 120
      Top = 19
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label12: TLabel
      Left = 10
      Top = 72
      Width = 91
      Height = 15
      Caption = 'Tanggal Transaksi'
    end
    object Label13: TLabel
      Left = 120
      Top = 72
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label4: TLabel
      Left = 685
      Top = 99
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label5: TLabel
      Left = 572
      Top = 99
      Width = 60
      Height = 15
      Caption = 'Keterangan'
    end
    object Label8: TLabel
      Left = 10
      Top = 99
      Width = 40
      Height = 15
      Caption = 'Periode'
    end
    object Label9: TLabel
      Left = 120
      Top = 99
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label10: TLabel
      Left = 279
      Top = 99
      Width = 17
      Height = 15
      Caption = 's/d'
    end
    object Label11: TLabel
      Left = 10
      Top = 126
      Width = 58
      Height = 15
      Caption = 'Mata Uang'
    end
    object Label14: TLabel
      Left = 120
      Top = 126
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label15: TLabel
      Left = 332
      Top = 126
      Width = 23
      Height = 15
      Caption = 'Kurs'
    end
    object Label16: TLabel
      Left = 368
      Top = 126
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label17: TLabel
      Left = 572
      Top = 19
      Width = 98
      Height = 15
      Caption = 'Untuk Penerimaan'
    end
    object Label18: TLabel
      Left = 685
      Top = 19
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label19: TLabel
      Left = 120
      Top = 152
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label20: TLabel
      Left = 10
      Top = 152
      Width = 38
      Height = 15
      Caption = 'Jumlah'
    end
    object edNoTrans: TEdit
      Left = 132
      Top = 43
      Width = 344
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object edNamaJenisTrans: TRzButtonEdit
      Left = 132
      Top = 16
      Width = 344
      Height = 23
      Text = ''
      TabOrder = 1
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaJenisTransButtonClick
    end
    object edKodeJenisTrans: TEdit
      Left = 482
      Top = 16
      Width = 63
      Height = 23
      TabOrder = 2
      Visible = False
    end
    object dtTrans: TRzDateTimePicker
      Left = 132
      Top = 69
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 3
    end
    object MemKeterangan: TMemo
      Left = 694
      Top = 98
      Width = 344
      Height = 76
      TabOrder = 4
    end
    object dtPeriode1: TRzDateTimePicker
      Left = 132
      Top = 96
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 5
    end
    object dtPeriode2: TRzDateTimePicker
      Left = 302
      Top = 96
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 6
    end
    object edNamaMataUang: TRzButtonEdit
      Left = 132
      Top = 123
      Width = 186
      Height = 23
      Text = ''
      TabOrder = 7
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNamaMataUangButtonClick
    end
    object edKodeMataUang: TEdit
      Left = 383
      Top = 149
      Width = 119
      Height = 23
      TabOrder = 8
      Visible = False
    end
    object edKurs: TRzNumericEdit
      Left = 383
      Top = 123
      Width = 93
      Height = 23
      TabOrder = 9
      OnChange = edKursChange
      DisplayFormat = '0.00#,##'
    end
    object edJumlah: TRzNumericEdit
      Left = 132
      Top = 149
      Width = 186
      Height = 23
      TabOrder = 10
      DisplayFormat = '0.00#,##'
    end
    object edUntukPengiriman: TMemo
      Left = 694
      Top = 16
      Width = 344
      Height = 76
      TabOrder = 11
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 522
    Width = 1133
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 513
    ExplicitWidth = 1127
    object BBatal: TRzBitBtn
      Left = 1057
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
      ExplicitLeft = 1051
    end
    object BSave: TRzBitBtn
      Left = 982
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
      ExplicitLeft = 976
      ExplicitTop = 3
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
    Top = 298
    Width = 1133
    Height = 224
    Hint = ''
    ActivePage = TabDetailAkun
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 2
    ExplicitWidth = 1127
    ExplicitHeight = 215
    FixedDimension = 21
    object TabDetailAkun: TRzTabSheet
      Caption = 'Detail Akun'
      ExplicitWidth = 1123
      ExplicitHeight = 190
      object DBGridAkun: TDBGridEh
        Left = 0
        Top = 0
        Width = 1129
        Height = 199
        Align = alClient
        DataSource = DSDetailAkun
        DynProps = <>
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnColEnter = DBGridAkunColEnter
        OnColExit = DBGridAkunColExit
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsPlusEh
                OnClick = DBGridAkunColumns0EditButtons0Click
              end>
            FieldName = 'kd_akun'
            Footers = <>
            Title.Caption = 'Kode Akun'
            Width = 100
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
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_header_akun'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jumlah_hasil_kurs'
            Footers = <>
            Title.Caption = 'Hasil Kurs'
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabDetailFaktur: TRzTabSheet
      Caption = 'Detail Tagihan'
      object DBGridTagihan: TDBGridEh
        Left = 0
        Top = 0
        Width = 1129
        Height = 199
        Align = alClient
        DataSource = dsDetailPiutang
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
                OnClick = DBGridTagihanColumns0EditButtons0Click
              end>
            FieldName = 'no_tagihan'
            Footers = <>
            Title.Caption = 'Nomor | Tagihan'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_faktur'
            Footers = <>
            Title.Caption = 'Nomor | Faktur'
            Width = 200
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
            FieldName = 'jum_piutang'
            Footers = <>
            Title.Caption = 'Jumlah Piutang'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 400
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 185
    Width = 1133
    Height = 113
    Align = alTop
    BevelOuter = bvNone
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 3
    ExplicitWidth = 1127
    object gbDataPiutang: TGroupBox
      Left = 0
      Top = 0
      Width = 514
      Height = 113
      Align = alLeft
      Caption = 'Data Tagihan'
      TabOrder = 0
      object Label21: TLabel
        Left = 20
        Top = 30
        Width = 56
        Height = 15
        Caption = 'Pelanggan'
      end
      object Label22: TLabel
        Left = 117
        Top = 30
        Width = 3
        Height = 15
        Caption = ':'
      end
      object edKode_Pelanggan: TRzButtonEdit
        Left = 130
        Top = 27
        Width = 199
        Height = 23
        Text = ''
        TabOrder = 0
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edKode_PelangganButtonClick
      end
      object edNama_Pelanggan: TEdit
        Left = 130
        Top = 53
        Width = 354
        Height = 23
        TabOrder = 1
      end
    end
    object gbDataBank: TGroupBox
      Left = 514
      Top = 0
      Width = 567
      Height = 113
      Align = alLeft
      Caption = 'Data Bank'
      TabOrder = 1
      object Label1: TLabel
        Left = 128
        Top = 59
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label2: TLabel
        Left = 31
        Top = 59
        Width = 90
        Height = 15
        Caption = 'Nomor Rekening'
      end
      object Label6: TLabel
        Left = 31
        Top = 33
        Width = 61
        Height = 15
        Caption = 'Nama Bank'
      end
      object Label7: TLabel
        Left = 128
        Top = 33
        Width = 3
        Height = 15
        Caption = ':'
      end
      object lbJenisBayarr: TLabel
        Left = 437
        Top = 59
        Width = 3
        Height = 15
        Caption = ':'
      end
      object lbSumberTagihann: TLabel
        Left = 437
        Top = 30
        Width = 3
        Height = 15
        Caption = ':'
      end
      object lbJenisBayar: TLabel
        Left = 340
        Top = 59
        Width = 94
        Height = 15
        Caption = 'Jenis Pembayaran'
      end
      object lbSumberTagihan: TLabel
        Left = 340
        Top = 30
        Width = 85
        Height = 15
        Caption = 'Sumber Tagihan'
      end
      object edNamaBank: TRzButtonEdit
        Left = 136
        Top = 27
        Width = 186
        Height = 23
        Text = ''
        TabOrder = 0
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNamaBankButtonClick
      end
      object edNoRek: TEdit
        Left = 136
        Top = 56
        Width = 186
        Height = 23
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 1
      end
      object edNMSumberTagihan: TRzButtonEdit
        Left = 446
        Top = 27
        Width = 103
        Height = 23
        Text = ''
        TabOrder = 2
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNMSumberTagihanButtonClick
      end
      object edNMJenisBayar: TRzButtonEdit
        Left = 446
        Top = 56
        Width = 103
        Height = 23
        Text = ''
        TabOrder = 3
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNMJenisBayarButtonClick
      end
      object edKodeSumberTagihan: TEdit
        Left = 555
        Top = 27
        Width = 50
        Height = 23
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 4
      end
      object edKodeJenisBayar: TEdit
        Left = 555
        Top = 56
        Width = 50
        Height = 23
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 5
      end
    end
  end
  object DSDetailAkun: TDataSource
    DataSet = MemDetailAkun
    Left = 504
    Top = 424
  end
  object MemDetailAkun: TMemTableEh
    Params = <>
    Left = 576
    Top = 424
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
    object MemDetailAkunjumlah_hasil_kurs: TCurrencyField
      FieldName = 'jumlah_hasil_kurs'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
        object jumlah_hasil_kurs: TMTNumericDataFieldEh
          FieldName = 'jumlah_hasil_kurs'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsDetailPiutang: TDataSource
    DataSet = MemDetailPiutang
    Left = 672
    Top = 424
  end
  object MemDetailPiutang: TMemTableEh
    Params = <>
    Left = 776
    Top = 424
    object MemDetailPiutangno_tagihan: TStringField
      FieldName = 'no_tagihan'
      Size = 500
    end
    object MemDetailPiutangtgl_faktur: TDateField
      FieldName = 'tgl_faktur'
    end
    object MemDetailPiutangketerangan: TStringField
      FieldName = 'keterangan'
    end
    object MemDetailPiutangno_faktur: TStringField
      FieldName = 'no_faktur'
    end
    object MemDetailPiutangjum_piutang: TCurrencyField
      FieldName = 'jum_piutang'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDetailPiutangjum_piutang_real: TCurrencyField
      FieldName = 'jum_piutang_real'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
        object no_tagihan: TMTStringDataFieldEh
          FieldName = 'no_tagihan'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object jum_piutang: TMTNumericDataFieldEh
          FieldName = 'jum_piutang'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object jum_piutang_real: TMTNumericDataFieldEh
          FieldName = 'jum_piutang_real'
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
