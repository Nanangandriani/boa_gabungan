object FNewDeliveryOrder: TFNewDeliveryOrder
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Delivery Order'
  ClientHeight = 574
  ClientWidth = 1350
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 0
    Width = 1350
    Height = 574
    Hint = ''
    ActivePage = TabDataMuatan
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 0
    OnClick = RzPageControl1Click
    ExplicitWidth = 1346
    ExplicitHeight = 573
    FixedDimension = 21
    object TabDataMuatan: TRzTabSheet
      Caption = 'Data Muatan'
      ExplicitWidth = 1342
      ExplicitHeight = 548
      object Label12: TLabel
        Left = 125
        Top = 115
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label13: TLabel
        Left = 28
        Top = 115
        Width = 57
        Height = 15
        Caption = 'Link Target'
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1346
        Height = 345
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1342
        object LabelPelanggan: TLabel
          Left = 20
          Top = 19
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label5: TLabel
          Left = 20
          Top = 49
          Width = 41
          Height = 15
          Caption = 'Tanggal'
        end
        object Label19: TLabel
          Left = 20
          Top = 78
          Width = 45
          Height = 15
          Caption = 'Jenis DO'
        end
        object Label18: TLabel
          Left = 117
          Top = 78
          Width = 3
          Height = 15
          Caption = ':'
        end
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
        object btMasterSumber: TSpeedButton
          Left = 482
          Top = 74
          Width = 23
          Height = 22
          Caption = '+'
          Visible = False
          OnClick = btMasterSumberClick
        end
        object edKodeDOMuatan: TEdit
          Left = 132
          Top = 16
          Width = 185
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 0
        end
        object dtTanggalMuatan: TRzDateTimePicker
          Left = 132
          Top = 45
          Width = 186
          Height = 23
          Date = 45405.000000000000000000
          Format = ''
          Time = 0.597438842589326700
          TabOrder = 1
          OnChange = dtTanggalMuatanChange
        end
        object edNamaJenisMuatan: TRzButtonEdit
          Left = 132
          Top = 75
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 2
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaJenisMuatanButtonClick
        end
        object edKodeJenisMuatan: TEdit
          Left = 512
          Top = 75
          Width = 200
          Height = 23
          TabOrder = 3
          Visible = False
        end
        object RzGroupBox1: TRzGroupBox
          Left = 903
          Top = 87
          Width = 525
          Height = 230
          Caption = 'Data Pelanggan'
          Color = 15987699
          TabOrder = 4
          Visible = False
          object Label39: TLabel
            Left = 27
            Top = 29
            Width = 32
            Height = 15
            Caption = 'Nama'
          end
          object Label38: TLabel
            Left = 124
            Top = 29
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label8: TLabel
            Left = 126
            Top = 87
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label9: TLabel
            Left = 29
            Top = 87
            Width = 38
            Height = 15
            Caption = 'Alamat'
          end
          object Label26: TLabel
            Left = 124
            Top = 135
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label27: TLabel
            Left = 29
            Top = 135
            Width = 81
            Height = 15
            Caption = 'No. Reff Utama'
          end
          object Label28: TLabel
            Left = 124
            Top = 164
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label29: TLabel
            Left = 29
            Top = 164
            Width = 87
            Height = 15
            Caption = 'No. Reff Sumber'
          end
          object edKodeVendorMuatan: TRzButtonEdit
            Left = 133
            Top = 26
            Width = 164
            Height = 23
            Text = ''
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edKodeVendorMuatanButtonClick
          end
          object edNamaVendorMuatan: TEdit
            Left = 133
            Top = 55
            Width = 323
            Height = 23
            TabOrder = 1
          end
          object MemVendorMuatan: TMemo
            Left = 133
            Top = 84
            Width = 323
            Height = 42
            ScrollBars = ssVertical
            TabOrder = 2
          end
          object edReffSumberMuatan: TEdit
            Left = 133
            Top = 161
            Width = 250
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 3
          end
          object edNomorReffUtamaMuatan: TRzButtonEdit
            Left = 133
            Top = 132
            Width = 250
            Height = 23
            Text = ''
            TabOrder = 4
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edNomorReffUtamaMuatanButtonClick
          end
        end
        object RzGroupBox2: TRzGroupBox
          Left = 28
          Top = 99
          Width = 869
          Height = 206
          Caption = 'Data Penyedia Jasa Transport'
          Color = 15987699
          TabOrder = 5
          object Label32: TLabel
            Left = 27
            Top = 29
            Width = 32
            Height = 15
            Caption = 'Nama'
          end
          object Label33: TLabel
            Left = 124
            Top = 29
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label34: TLabel
            Left = 126
            Top = 87
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label35: TLabel
            Left = 29
            Top = 87
            Width = 18
            Height = 15
            Caption = 'PIC'
          end
          object Label36: TLabel
            Left = 124
            Top = 116
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label37: TLabel
            Left = 29
            Top = 116
            Width = 56
            Height = 15
            Caption = 'Kendaraan'
          end
          object Label40: TLabel
            Left = 124
            Top = 145
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label41: TLabel
            Left = 29
            Top = 145
            Width = 84
            Height = 15
            Caption = 'Jenis Kendaraan'
          end
          object Label42: TLabel
            Left = 469
            Top = 145
            Width = 32
            Height = 15
            Caption = 'Kenek'
          end
          object Label43: TLabel
            Left = 564
            Top = 145
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label56: TLabel
            Left = 29
            Top = 176
            Width = 49
            Height = 15
            Caption = 'Kapasitas'
          end
          object Label57: TLabel
            Left = 124
            Top = 176
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label62: TLabel
            Left = 564
            Top = 174
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label63: TLabel
            Left = 469
            Top = 174
            Width = 39
            Height = 15
            Caption = 'No. PIB'
          end
          object Label30: TLabel
            Left = 564
            Top = 116
            Width = 3
            Height = 15
            Caption = ':'
          end
          object Label31: TLabel
            Left = 469
            Top = 116
            Width = 27
            Height = 15
            Caption = 'Sopir'
          end
          object edKodeVendorTransMuatan: TRzButtonEdit
            Left = 133
            Top = 26
            Width = 164
            Height = 23
            Text = ''
            TabOrder = 0
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edKodeVendorTransMuatanButtonClick
          end
          object edNamaVendorTransMuatan: TEdit
            Left = 133
            Top = 55
            Width = 323
            Height = 23
            TabOrder = 1
          end
          object edNamaKenek: TEdit
            Left = 573
            Top = 142
            Width = 250
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 8
          end
          object edNoKendMuatan: TRzButtonEdit
            Left = 133
            Top = 113
            Width = 250
            Height = 23
            Text = ''
            CharCase = ecUpperCase
            TabOrder = 3
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            OnButtonClick = edNoKendMuatanButtonClick
          end
          object edKodeJenisKendMuatan: TEdit
            Left = 389
            Top = 142
            Width = 68
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 5
            OnChange = edKodeJenisKendMuatanChange
          end
          object spKapasitas: TSpinEdit
            Left = 133
            Top = 171
            Width = 69
            Height = 24
            MaxValue = 0
            MinValue = 0
            TabOrder = 6
            Value = 0
          end
          object edNamaJenisKendMuatan: TRzButtonEdit
            Left = 133
            Top = 142
            Width = 250
            Height = 23
            Text = ''
            Color = clInfoBk
            ReadOnly = True
            TabOrder = 4
            AltBtnNumGlyphs = 1
            ButtonNumGlyphs = 1
            ButtonVisible = False
            OnButtonClick = edNamaJenisKendMuatanButtonClick
          end
          object edNomorPIB: TEdit
            Left = 573
            Top = 171
            Width = 250
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 9
          end
          object edNamaSupir: TEdit
            Left = 573
            Top = 113
            Width = 250
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 7
          end
          object edPICMuatan: TEdit
            Left = 133
            Top = 84
            Width = 250
            Height = 23
            CharCase = ecUpperCase
            TabOrder = 2
          end
        end
        object btAddDetail: TRzBitBtn
          Left = 20
          Top = 309
          Width = 116
          Height = 30
          Align = alCustom
          Caption = 'Ambil Data'
          TabOrder = 6
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
      end
      object Panel2: TPanel
        Left = 0
        Top = 517
        Width = 1346
        Height = 32
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 516
        ExplicitWidth = 1342
        object btNextStep: TRzBitBtn
          Left = 1270
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Next'
          TabOrder = 0
          OnClick = btNextStepClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000520B0000520B00000001000000000000000000003300
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909E8E8
            E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E80910101009E8
            E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
            E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
            09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
            1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
            101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910
            101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
            1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
            09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
            E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
            E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E809090909E8E8
            E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
          ExplicitLeft = 1266
        end
      end
      object DBGrid_SumberOrder: TDBGridEh
        Left = 0
        Top = 345
        Width = 1346
        Height = 172
        Align = alClient
        DataSource = dsDataMuatan
        DynProps = <>
        SearchPanel.Enabled = True
        TabOrder = 2
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'notrans'
            Footers = <>
            Title.Caption = 'Nomor Transaksi'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kode_vendor'
            Footers = <>
            Visible = False
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_vendor'
            Footers = <>
            Title.Caption = 'Nama Vendor'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_reff'
            Footers = <>
            Title.Caption = 'No Reff'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_barang'
            Footers = <>
            Visible = False
            Width = 100
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
            DisplayFormat = '#,##0.##'
            DynProps = <>
            EditButtons = <>
            FieldName = 'jumlah'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            Title.Caption = 'Satuan'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabDataBiaya: TRzTabSheet
      Caption = 'Data Biaya'
      OnClick = TabDataBiayaClick
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1346
        Height = 241
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 125
          Top = 86
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label2: TLabel
          Left = 125
          Top = 57
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label4: TLabel
          Left = 125
          Top = 27
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label7: TLabel
          Left = 28
          Top = 27
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label10: TLabel
          Left = 28
          Top = 57
          Width = 41
          Height = 15
          Caption = 'Tanggal'
        end
        object Label11: TLabel
          Left = 28
          Top = 86
          Width = 45
          Height = 15
          Caption = 'Jenis DO'
        end
        object Label20: TLabel
          Left = 125
          Top = 174
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label21: TLabel
          Left = 125
          Top = 146
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label44: TLabel
          Left = 125
          Top = 116
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label45: TLabel
          Left = 28
          Top = 174
          Width = 57
          Height = 15
          Caption = 'Kabupaten'
        end
        object Label46: TLabel
          Left = 28
          Top = 146
          Width = 42
          Height = 15
          Caption = 'Provinsi'
        end
        object Label47: TLabel
          Left = 28
          Top = 116
          Width = 62
          Height = 15
          Caption = 'Lokasi Awal'
        end
        object Label48: TLabel
          Left = 125
          Top = 203
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label49: TLabel
          Left = 28
          Top = 203
          Width = 67
          Height = 15
          Caption = 'Tambah Titik'
        end
        object Label54: TLabel
          Left = 661
          Top = 116
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label55: TLabel
          Left = 564
          Top = 116
          Width = 60
          Height = 15
          Caption = 'Keterangan'
        end
        object edKodeDOBiaya: TEdit
          Left = 140
          Top = 24
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 0
        end
        object edNamaJenisBiaya: TEdit
          Left = 140
          Top = 83
          Width = 200
          Height = 23
          ReadOnly = True
          TabOrder = 2
        end
        object dtTanggalBiaya: TRzDateTimePicker
          Left = 140
          Top = 54
          Width = 200
          Height = 23
          Date = 45405.000000000000000000
          Format = ''
          Time = 0.597438842589326700
          TabOrder = 1
        end
        object edNamaLokasi: TRzButtonEdit
          Left = 140
          Top = 113
          Width = 313
          Height = 23
          Text = ''
          TabOrder = 3
          OnChange = edNamaLokasiChange
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaLokasiButtonClick
        end
        object edNamaProvinsi: TRzButtonEdit
          Left = 140
          Top = 142
          Width = 313
          Height = 23
          Text = ''
          TabOrder = 5
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaProvinsiButtonClick
        end
        object edNamaKabupaten: TRzButtonEdit
          Left = 140
          Top = 171
          Width = 313
          Height = 23
          Text = ''
          TabOrder = 7
          OnChange = edNamaKabupatenChange
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaKabupatenButtonClick
        end
        object edKodeKabupaten: TEdit
          Left = 459
          Top = 171
          Width = 100
          Height = 23
          ReadOnly = True
          TabOrder = 8
          Visible = False
        end
        object edKodeProvinsi: TEdit
          Left = 459
          Top = 142
          Width = 100
          Height = 23
          TabOrder = 6
          Visible = False
        end
        object edKodeLokasi: TEdit
          Left = 459
          Top = 113
          Width = 100
          Height = 23
          TabOrder = 4
          Visible = False
        end
        object spTotalTitik: TSpinEdit
          Left = 140
          Top = 200
          Width = 69
          Height = 24
          MaxValue = 0
          MinValue = 0
          TabOrder = 9
          Value = 0
          OnClick = spTotalTitikClick
        end
        object MemKeteranganBiaya: TMemo
          Left = 676
          Top = 113
          Width = 419
          Height = 105
          ScrollBars = ssVertical
          TabOrder = 10
        end
        object BtnCekBiaya: TRzBitBtn
          Left = 276
          Top = 200
          Width = 116
          Height = 30
          Align = alCustom
          Caption = 'Cek Biaya Perubahan'
          TabOrder = 11
          OnClick = BtnCekBiayaClick
          Glyph.Data = {
            76060000424D7606000000000000360000002800000014000000140000000100
            2000000000004006000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000014140A1B888D3FB8AFB653EEB2B954F2B2B9
            54F2B2B954F2B2B954F2B2B954F2B2B954F2B2B954F2B2B954F2B2B954F2B2B9
            54F2B2B954F2B2B954F2B2B954F2AFB653EE8C9042BC181A0B21000000009A9C
            40CCBFC152FFC0C151FFC0C151FFC0C151FFC0C151FFC0C151FFC0C151FFBFC1
            51FFBFC151FFC0C151FFC0C151FFC0C151FFC0C151FFC0C151FFC0C151FFC0C1
            51FFBFC152FF9EA144D300000000C2C04AFFC3C04AFFC2C04AFFC2C04AFFC2C0
            4BFFC2C04AFFC3C049FFC2C04BFFBFBD50F9BDBA56F1BFBD50F8C1C04AFFC2C0
            4AFFC2BF4BFFC2BF4BFFC2BF4BFFC2C04AFFC2C04AFFC3BF4BFF00000000BDB6
            41F4C5BE44FFC5BE44FFC5BD43FFC4BF45FFC2C149FFDCD792FFF6F5E2FFFCFB
            F4FFFCFBF4FFFCFBF5FFF7F5E4FFDED893FFC2BA46FFC3BD46FFC7C24BFFC5BD
            44FFC5BE44FFBDB641F400000000BDB13BF2C7BB3EFFC8BC3EFFC5BC40FFC8B7
            3CFFF5EBCEFFFFFFFFFFE9E4B0FFD7CD71FFD0C65DFFD6CD70FFE8E1ACFFFAF8
            EDFFEBE9B1FFF1EDC8FFE6DDA3FFC6BC3FFFC7BB3EFFBDB13BF200000000C0B1
            34F2CABA37FFCAB938FFC9BF3AFFF5EFCAFFFFFFFFFFCFBE47FFC8BB3AFFCABA
            38FFCABA38FFCABA38FFCAB937FFF7F5E4FFFFFFFFFFFFFFFFFFE0D492FFCABA
            38FFCABA37FFC0B134F200000000C3AF2FF2CDB832FFCBB734FFDFCB66FFFFFF
            FFFFCEC550FFCCB832FFCDB831FFCDB832FFCDB832FFCCB832FFCEB838FFE3D8
            82FFF1E7BDFFF6F0D6FFCEBE3DFFCDB832FFCDB832FFC3AF2FF200000000C4AD
            29F2CFB62BFFCFB62BFFF5F0D4FFF9F5E3FFCFB72CFFCFB62BFFCFB62BFFCFB6
            2BFFCFB62BFFCFB62BFFCFB72BFFCEB52DFFCEB52DFFDDC861FFDDCA64FFCFB6
            2BFFCFB62BFFC4AD29F200000000C7AB23F2D2B425FFD2B425FFF9F5E1FFEEE3
            AAFFD1B425FFD2B425FFD2B425FFD2B425FFD2B425FFD2B425FFD2B425FFD2B4
            25FFD1B426FFEFE5B5FFFEFDF9FFD2B425FFD2B425FFC7AB23F200000000C9A9
            1EF2D4B220FFD4B220FFDCC146FFE2C759FFD4B220FFD4B320FFD4B220FFD4B2
            20FFD4B220FFD4B220FFD4B220FFD4B320FFD4B222FFF9F3DCFFF7F0D2FFD3B3
            21FFD4B220FFC9A91EF200000000CBA81AF2D6B11BFFD6B11AFFDCBD40FFFCF9
            EDFFF8EFD0FFEBD88DFFD7B31FFFD6B11BFFD6B11BFFD6B11BFFD7B11BFFD5AE
            1DFFD8B932FFFFFFFFFFE6C75FFFD5B11CFFD6B11BFFCBA81AF200000000CEA7
            15F2D9B016FFD8B016FFEEDA93FFFFFFFFFFFFFFFFFFF7EECEFFD7AF17FFD8AF
            16FFD9B016FFD9AF16FFD7AE17FFDDB82DFFFFFFFFFFF8EFC3FFD7AF18FFD9AF
            16FFD9B016FFCEA715F200000000D0A510F2DBAE11FFDAAD12FFF0D98AFFF1DF
            9DFFEFDC96FFFBF5E2FFF2E0A3FFE6C657FFE1BE40FFE5C654FFF1DFA2FFFFFF
            FFFFF9EEC5FFDDAB12FFD9AD11FFDBAE11FFDBAE11FFD0A510F200000000D3A5
            0BF4DDAC0BFFDEAC0BFFDDAC0CFFDDAD0CFFDDAB0BFFEBCC63FFFAF0D3FFFDF9
            EDFFFDFAF0FFFDF9EDFFFAF1D6FFEBCD6AFFDAA90DFFDCAC0CFFDEAD0BFFDDAC
            0BFFDDAC0BFFD3A50BF400000000DEA708FFE0AD08FFDFAB08FFDFAB08FFDFAB
            08FFDFAB08FFDEAB08FFDEAB08FFE0AE11FFE2B422FFE0AF13FFDFAB08FFDFAB
            08FFDFAB08FFDFAB08FFDFAB08FFDFAB08FFDFAC08FFDEAB08FF00000000B088
            03C7DEA705FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB
            05FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB05FFE0AB
            05FFDFA805FFB78D03CF0000000016130017C6992CDDE3AF13FFE3AD0EFFE3AD
            0EFFE3AD0EFFE3AD0EFFE3AD0EFFE3AD0EFFE3AD0EFFE3AD0EFFE3AD0EFFE3AD
            0EFFE3AD0EFFE3AD0EFFE3AD0EFFDDA70BF8A17A01B61912001C000000000000
            0000565656569E9E9E9E94949494919191919191919191919191919191919191
            9191919191919191919191919191919191919191919194949494A3A3A3A35A5A
            5A5A000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
        end
        object Memo1: TMemo
          Left = 1161
          Top = 12
          Width = 185
          Height = 89
          Lines.Strings = (
            'Memo1')
          TabOrder = 12
          Visible = False
        end
        object MemoAPI: TMemo
          Left = 581
          Top = 0
          Width = 257
          Height = 89
          Lines.Strings = (
            'MemoAPI')
          TabOrder = 13
          Visible = False
        end
        object edlokasiregencyid: TEdit
          Left = 459
          Top = 84
          Width = 100
          Height = 23
          TabOrder = 14
          Visible = False
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 512
        Width = 1346
        Height = 37
        Align = alBottom
        TabOrder = 1
        object btBatalSumberJual: TRzBitBtn
          Left = 1270
          Top = 1
          Height = 35
          Align = alRight
          Caption = 'Close'
          TabOrder = 1
          OnClick = btBatalSumberJualClick
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
        object btSimpanSumberJual: TRzBitBtn
          Left = 1195
          Top = 1
          Height = 35
          Align = alRight
          Caption = 'Save'
          TabOrder = 0
          OnClick = btSimpanSumberJualClick
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
        end
        object btBackStep: TRzBitBtn
          Left = 1
          Top = 1
          Height = 35
          Align = alLeft
          Caption = 'Back'
          TabOrder = 2
          OnClick = btBackStepClick
          Glyph.Data = {
            36060000424D3606000000000000360400002800000020000000100000000100
            08000000000000020000620B0000620B00000001000000000000000000003300
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809
            090909E8E8E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E80910
            101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8091010
            1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E809101010
            09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009
            E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E80910101009E8
            E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E80910101009E8
            E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910101009
            E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809101010
            09E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E8091010
            1009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E80910
            101009E8E80910101009E8E8E8E881ACACAC81E8E881ACACAC81E8E8E8E8E809
            090909E8E8E809090909E8E8E8E8E881818181E8E8E881818181E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
        end
        object BCorrection: TRzBitBtn
          Left = 1097
          Top = 1
          Width = 98
          Height = 35
          Align = alRight
          Caption = 'Submit Correction'
          TabOrder = 3
          OnClick = BCorrectionClick
          ExplicitLeft = 715
          ExplicitHeight = 30
        end
      end
      object DBGridSumberPenjualan: TDBGridEh
        Left = 0
        Top = 241
        Width = 1346
        Height = 271
        Align = alClient
        DataSource = dsDataBiaya
        DynProps = <>
        FooterRowCount = 1
        FooterParams.FillStyle = cfstGradientEh
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnColEnter = DBGridSumberPenjualanColEnter
        OnEnter = DBGridSumberPenjualanEnter
        OnExit = DBGridSumberPenjualanExit
        OnKeyDown = DBGridSumberPenjualanKeyDown
        OnKeyPress = DBGridSumberPenjualanKeyPress
        OnMouseEnter = DBGridSumberPenjualanMouseEnter
        Columns = <
          item
            CellButtons = <
              item
                Style = ebsGlyphEh
                OnClick = DBGridSumberPenjualanColumns0CellButtons0Click
                Caption = '...'
              end>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_biaya'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Kode '
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_biaya'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Biaya'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'dpp'
            Footer.DisplayFormat = '#,##0.##'
            Footer.FieldName = 'dpp'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -12
            Footer.Font.Name = 'Segoe UI'
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'BIAYA | DPP'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'akun_ppn'
            Footers = <>
            Title.Caption = 'BIAYA | PPN | Akun PPN'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <
              item
                Style = ebsGlyphEh
                OnClick = DBGridSumberPenjualanColumns4CellButtons0Click
                Caption = '...'
              end>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama_ppn'
            Footers = <>
            Title.Caption = 'BIAYA | PPN | Nama Akun PPN'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'persen_ppn'
            Footers = <>
            Title.Caption = 'BIAYA | PPN | PPN (%)'
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'ppn'
            Footer.FieldName = 'ppn'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -12
            Footer.Font.Name = 'Segoe UI'
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'BIAYA | PPN | Nilai PPN'
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'akun_pph'
            Footers = <>
            Title.Caption = 'BIAYA | PPH | Akun PPH'
            Visible = False
            Width = 100
          end
          item
            CellButtons = <
              item
                Style = ebsGlyphEh
                OnClick = DBGridSumberPenjualanColumns8CellButtons0Click
                Caption = '...'
              end>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama_pph'
            Footers = <>
            Title.Caption = 'BIAYA | PPH | Nama Akun PPH'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'persen_pph'
            Footers = <>
            Title.Caption = 'BIAYA | PPH | PPH (%)'
            Width = 50
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pph'
            Footer.FieldName = 'pph'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -12
            Footer.Font.Name = 'Segoe UI'
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'BIAYA | PPH | Nilai PPH'
            Width = 75
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'total'
            Footer.DisplayFormat = '#,##0.##'
            Footer.Font.Charset = DEFAULT_CHARSET
            Footer.Font.Color = clWindowText
            Footer.Font.Height = -12
            Footer.Font.Name = 'Segoe UI'
            Footer.Font.Style = [fsBold]
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'BIAYA | Total'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'keterangan'
            Footers = <>
            Title.Caption = 'Keterangan'
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_invoice'
            Footers = <>
            Title.Caption = 'Data Invoice | Tanggal'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_invoice'
            Footers = <>
            Title.Caption = 'Data Invoice | Nomor Tagihan'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabDokumenPendukung: TRzTabSheet
      Caption = 'Dokumen Pendukung'
      object Panel3: TPanel
        Left = 0
        Top = 517
        Width = 1346
        Height = 32
        Align = alBottom
        TabOrder = 0
        object btBatalParameter: TRzBitBtn
          Left = 1270
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Close'
          TabOrder = 1
          OnClick = btBatalParameterClick
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
        object btSaveParameter: TRzBitBtn
          Left = 1195
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Save'
          TabOrder = 0
          OnClick = btSaveParameterClick
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
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1346
        Height = 517
        Align = alClient
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object Label14: TLabel
          Left = 133
          Top = 94
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label15: TLabel
          Left = 133
          Top = 65
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label16: TLabel
          Left = 133
          Top = 35
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label17: TLabel
          Left = 36
          Top = 94
          Width = 45
          Height = 15
          Caption = 'Jenis DO'
        end
        object Label22: TLabel
          Left = 36
          Top = 65
          Width = 61
          Height = 15
          Caption = 'Tanggal DO'
        end
        object Label23: TLabel
          Left = 36
          Top = 35
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label24: TLabel
          Left = 36
          Top = 123
          Width = 60
          Height = 15
          Caption = 'No. Invoice'
        end
        object Label25: TLabel
          Left = 133
          Top = 123
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label58: TLabel
          Left = 133
          Top = 152
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label59: TLabel
          Left = 36
          Top = 152
          Width = 79
          Height = 15
          Caption = 'Tanggal Terima'
        end
        object Label60: TLabel
          Left = 36
          Top = 184
          Width = 56
          Height = 15
          Caption = 'Total Biaya'
        end
        object Label61: TLabel
          Left = 133
          Top = 184
          Width = 3
          Height = 15
          Caption = ':'
        end
        object edKodeDODok: TEdit
          Left = 148
          Top = 32
          Width = 200
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 0
        end
        object dtTanggalDoc: TRzDateTimePicker
          Left = 148
          Top = 62
          Width = 200
          Height = 23
          Date = 45405.000000000000000000
          Format = ''
          Time = 0.597438842589326700
          TabOrder = 1
        end
        object edNamaJenisDoc: TEdit
          Left = 148
          Top = 91
          Width = 200
          Height = 23
          ReadOnly = True
          TabOrder = 2
        end
        object edNomorTagihanVendor: TEdit
          Left = 148
          Top = 120
          Width = 200
          Height = 23
          TabOrder = 3
        end
        object dtTerimaTagihan: TRzDateTimePicker
          Left = 148
          Top = 149
          Width = 200
          Height = 23
          Date = 45405.000000000000000000
          Format = ''
          Time = 0.597438842589326700
          TabOrder = 4
        end
        object edTotalBiaya: TRzNumericEdit
          Left = 148
          Top = 181
          Width = 200
          Height = 23
          TabOrder = 5
          OnExit = edTotalBiayaExit
          DisplayFormat = '0.00#,##'
        end
      end
    end
  end
  object dsDataBiaya: TDataSource
    DataSet = MemDataBiaya
    Left = 800
    Top = 32
  end
  object MemDataBiaya: TMemTableEh
    Params = <>
    Left = 448
    Top = 208
    object MemDataBiayakd_biaya: TStringField
      FieldName = 'kd_biaya'
    end
    object MemDataBiayanm_biaya: TStringField
      FieldName = 'nm_biaya'
    end
    object MemDataBiayadpp: TFloatField
      FieldName = 'dpp'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaakun_ppn: TStringField
      FieldName = 'akun_ppn'
    end
    object MemDataBiayanama_ppn: TStringField
      FieldName = 'nama_ppn'
    end
    object MemDataBiayapersen_ppn: TFloatField
      FieldName = 'persen_ppn'
    end
    object MemDataBiayappn: TFloatField
      FieldName = 'ppn'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaakun_pph: TStringField
      FieldName = 'akun_pph'
    end
    object MemDataBiayanama_pph: TStringField
      FieldName = 'nama_pph'
    end
    object MemDataBiayapersen_pph: TFloatField
      FieldName = 'persen_pph'
    end
    object MemDataBiayapph: TFloatField
      FieldName = 'pph'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayatotal: TFloatField
      FieldName = 'total'
      DisplayFormat = '#,##0.##'
    end
    object MemDataBiayaketerangan: TWideStringField
      FieldName = 'keterangan'
      Size = 255
    end
    object MemDataBiayano_invoice: TStringField
      FieldName = 'no_invoice'
      Size = 100
    end
    object MemDataBiayatgl_invoice: TDateField
      FieldName = 'tgl_invoice'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_biaya: TMTStringDataFieldEh
          FieldName = 'kd_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nm_biaya: TMTStringDataFieldEh
          FieldName = 'nm_biaya'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object dpp: TMTNumericDataFieldEh
          FieldName = 'dpp'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_ppn: TMTStringDataFieldEh
          FieldName = 'akun_ppn'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_ppn: TMTStringDataFieldEh
          FieldName = 'nama_ppn'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object persen_ppn: TMTNumericDataFieldEh
          FieldName = 'persen_ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ppn: TMTNumericDataFieldEh
          FieldName = 'ppn'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object akun_pph: TMTStringDataFieldEh
          FieldName = 'akun_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_pph: TMTStringDataFieldEh
          FieldName = 'nama_pph'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object persen_pph: TMTNumericDataFieldEh
          FieldName = 'persen_pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object pph: TMTNumericDataFieldEh
          FieldName = 'pph'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object total: TMTNumericDataFieldEh
          FieldName = 'total'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtWideStringEh
          DisplayWidth = 255
          Size = 255
        end
        object no_invoice: TMTStringDataFieldEh
          FieldName = 'no_invoice'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object tgl_invoice: TMTDateTimeDataFieldEh
          FieldName = 'tgl_invoice'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsDataMuatan: TDataSource
    DataSet = MemDataMuatan
    Left = 728
    Top = 32
  end
  object MemDataMuatan: TMemTableEh
    Params = <>
    Left = 640
    object MemDataMuatannotrans: TStringField
      FieldName = 'notrans'
      Size = 100
    end
    object MemDataMuatankode_vendor: TStringField
      FieldName = 'kode_vendor'
      Size = 100
    end
    object MemDataMuatanname_vendor: TStringField
      FieldName = 'name_vendor'
      Size = 200
    end
    object MemDataMuatanno_reff: TStringField
      FieldName = 'no_reff'
      Size = 50
    end
    object MemDataMuatankd_barang: TStringField
      FieldName = 'kd_barang'
      Size = 255
    end
    object MemDataMuatannm_barang: TStringField
      FieldName = 'nm_barang'
      Size = 255
    end
    object MemDataMuatanjumlah: TFloatField
      FieldName = 'jumlah'
    end
    object MemDataMuatansatuan: TStringField
      FieldName = 'satuan'
    end
    object MemDataMuatanpilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object notrans: TMTStringDataFieldEh
          FieldName = 'notrans'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kode_vendor: TMTStringDataFieldEh
          FieldName = 'kode_vendor'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object name_vendor: TMTStringDataFieldEh
          FieldName = 'name_vendor'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object no_reff: TMTStringDataFieldEh
          FieldName = 'no_reff'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object kd_barang: TMTStringDataFieldEh
          FieldName = 'kd_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object nm_barang: TMTStringDataFieldEh
          FieldName = 'nm_barang'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 255
        end
        object jumlah: TMTNumericDataFieldEh
          FieldName = 'jumlah'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 544
    Top = 65528
  end
end
