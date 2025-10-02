object FMasterSetingAsset: TFMasterSetingAsset
  Left = 197
  Top = 111
  ClientHeight = 725
  ClientWidth = 1374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1374
    Height = 725
    ActivePage = TabNamaHarta
    Align = alClient
    TabOrder = 0
    OnChange = PageControl1Change
    ExplicitWidth = 1368
    ExplicitHeight = 716
    object TabKategori: TTabSheet
      Caption = 'Master Kelompok'
      object RzPanel4: TRzPanel
        Left = 0
        Top = 0
        Width = 1366
        Height = 34
        Align = alTop
        Caption = 'MASTER KELOMPOK'
        Color = 15987699
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = clSilver
        GradientColorStop = 16744448
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
        ExplicitWidth = 1360
      end
      object Panel4: TPanel
        Left = 0
        Top = 34
        Width = 1366
        Height = 127
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1360
        object Label6: TLabel
          Left = 27
          Top = 14
          Width = 102
          Height = 18
          Caption = 'KODE KELOMPOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label8: TLabel
          Left = 27
          Top = 94
          Width = 77
          Height = 18
          Caption = 'MASA BULAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 27
          Top = 41
          Width = 104
          Height = 18
          Caption = 'NAMA KELOMPOK'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 27
          Top = 69
          Width = 78
          Height = 18
          Caption = 'MASA TAHUN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edKodeKelompok: TEdit
          Left = 184
          Top = 14
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 0
        end
        object edNamaKelompok: TEdit
          Left = 184
          Top = 41
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 1
        end
        object edMasaBulan: TEdit
          Left = 184
          Top = 94
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 2
        end
        object edMasaTahun: TEdit
          Left = 184
          Top = 67
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 3
        end
        object btSimpanKel: TRzBitBtn
          Left = 447
          Top = 72
          Width = 120
          Height = 46
          Align = alCustom
          Caption = 'SIMPAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btSimpanKelClick
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
            0000000000000000000000000000000000000000000000000000E8E8E8090909
            09090909090909090909E8E8E881818181818181818181818181E8E809101009
            E31009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E80909101009
            E31009E3E3E309101009E88181ACAC81E3AC81E3E3E381ACAC81091009101009
            E31009E3E3E30910100981AC81ACAC81E3AC81E3E3E381ACAC81091009101009
            E3E3E3E3E3E30910100981AC81ACAC81E3E3E3E3E3E381ACAC81091009101010
            0909090909091010100981AC81ACACAC818181818181ACACAC81091009101010
            1010101010101010100981AC81ACACACACACACACACACACACAC81091009101009
            0909090909090910100981AC81ACAC8181818181818181ACAC810910091009D7
            D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC810910091009D7
            090909090909D709100981AC81AC81D7818181818181D781AC810910091009D7
            D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC81091009E309D7
            090909090909D709090981AC81E381D7818181818181D78181810910091009D7
            D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC8109E309090909
            0909090909090909090981E38181818181818181818181818181091009D7D7D7
            D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8090909090909
            0909090909090909E8E88181818181818181818181818181E8E8}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object btBatalKel: TRzBitBtn
          Left = 569
          Top = 72
          Width = 120
          Height = 46
          Align = alCustom
          Caption = 'BATAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btBatalKelClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
      end
      object DBGridEhKategori: TDBGridEh
        Left = 0
        Top = 161
        Width = 1366
        Height = 533
        Align = alClient
        DataSource = dsTabKategori
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        ReadOnly = True
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnDblClick = DBGridEhKategoriDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kode'
            Footers = <>
            Title.Caption = 'KODE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kelompok'
            Footers = <>
            Title.Caption = 'NAMA KELOMPOK'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 350
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'masa_bulan'
            Footers = <>
            Title.Caption = 'MASA BULAN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'masa_tahun'
            Footers = <>
            Title.Caption = 'MASA TAHUN'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'persentase_garis_lurus'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'persentase_saldo_menurun'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabNamaHarta: TTabSheet
      Caption = 'Master Kategori Asset'
      ImageIndex = 1
      object RzPanel1: TRzPanel
        Left = 0
        Top = 0
        Width = 1366
        Height = 34
        Align = alTop
        Caption = 'MASTER KELOMPOK KATEGORI'
        Color = 15987699
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = clSilver
        GradientColorStop = 16744448
        ParentFont = False
        TabOrder = 0
        VisualStyle = vsGradient
      end
      object Panel1: TPanel
        Left = 0
        Top = 34
        Width = 1366
        Height = 191
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        object Label2: TLabel
          Left = 27
          Top = 14
          Width = 96
          Height = 18
          Caption = 'KODE KATEGORI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 27
          Top = 94
          Width = 118
          Height = 18
          Caption = 'NAMA AKUN KREDIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 27
          Top = 69
          Width = 81
          Height = 18
          Caption = 'AKUN KREDIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 27
          Top = 41
          Width = 98
          Height = 18
          Caption = 'NAMA KATEGORI'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 416
          Top = 68
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SpeedButton1Click
        end
        object Label12: TLabel
          Left = 27
          Top = 123
          Width = 73
          Height = 18
          Caption = 'AKUN DEBIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton2: TSpeedButton
          Left = 416
          Top = 122
          Width = 22
          Height = 20
          Caption = '...'
          OnClick = SpeedButton2Click
        end
        object Label13: TLabel
          Left = 27
          Top = 148
          Width = 110
          Height = 18
          Caption = 'NAMA AKUN DEBIT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edKodeHarta: TEdit
          Left = 184
          Top = 14
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 0
        end
        object edNamaHarta: TEdit
          Left = 184
          Top = 40
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 1
        end
        object edAkunKredit: TEdit
          Left = 184
          Top = 67
          Width = 225
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 2
        end
        object edNamaPerkKredit: TEdit
          Left = 184
          Top = 94
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 3
        end
        object btSimpanHarta: TRzBitBtn
          Left = 447
          Top = 124
          Width = 120
          Height = 46
          Align = alCustom
          Caption = 'SIMPAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = btSimpanHartaClick
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
            0000000000000000000000000000000000000000000000000000E8E8E8090909
            09090909090909090909E8E8E881818181818181818181818181E8E809101009
            E31009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E80909101009
            E31009E3E3E309101009E88181ACAC81E3AC81E3E3E381ACAC81091009101009
            E31009E3E3E30910100981AC81ACAC81E3AC81E3E3E381ACAC81091009101009
            E3E3E3E3E3E30910100981AC81ACAC81E3E3E3E3E3E381ACAC81091009101010
            0909090909091010100981AC81ACACAC818181818181ACACAC81091009101010
            1010101010101010100981AC81ACACACACACACACACACACACAC81091009101009
            0909090909090910100981AC81ACAC8181818181818181ACAC810910091009D7
            D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC810910091009D7
            090909090909D709100981AC81AC81D7818181818181D781AC810910091009D7
            D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC81091009E309D7
            090909090909D709090981AC81E381D7818181818181D78181810910091009D7
            D7D7D7D7D7D7D709100981AC81AC81D7D7D7D7D7D7D7D781AC8109E309090909
            0909090909090909090981E38181818181818181818181818181091009D7D7D7
            D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8090909090909
            0909090909090909E8E88181818181818181818181818181E8E8}
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object btBatalHarta: TRzBitBtn
          Left = 569
          Top = 124
          Width = 120
          Height = 46
          Align = alCustom
          Caption = 'BATAL'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          OnClick = btBatalHartaClick
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object edAkunDebit: TEdit
          Left = 184
          Top = 121
          Width = 225
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 6
        end
        object edNamaPerkDebit: TEdit
          Left = 184
          Top = 148
          Width = 256
          Height = 22
          Color = clWhite
          Ctl3D = False
          ImeName = 'US'
          ParentCtl3D = False
          TabOrder = 7
        end
      end
      object DBGridEhNamaHarta: TDBGridEh
        Left = 0
        Top = 225
        Width = 1366
        Height = 469
        Align = alClient
        DataSource = dsTabNamaHarta
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnDblClick = DBGridEhNamaHartaDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_nama_harta'
            Footers = <>
            Title.Caption = 'KODE'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama_harta'
            Footers = <>
            Title.Caption = 'NAMA KATEGORI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kodekredit'
            Footers = <>
            Title.Caption = 'AKUN KREDIT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'namakredit'
            Footers = <>
            Title.Caption = 'NAMA AKUN KREDIT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kodedebit'
            Footers = <>
            Title.Caption = 'AKUN DEBIT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'namadebit'
            Footers = <>
            Title.Caption = 'NAMA AKUN DEBIT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 250
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabListDataAsset: TTabSheet
      Caption = 'List Data Asset'
      ImageIndex = 2
      object RzPanel6: TRzPanel
        Left = 0
        Top = 0
        Width = 1366
        Height = 34
        Align = alTop
        Caption = 'DAFTAR ASSET'
        Color = 15987699
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Trebuchet MS'
        Font.Style = [fsBold]
        GradientColorStyle = gcsCustom
        GradientColorStart = clSilver
        GradientColorStop = 16744448
        ParentFont = False
        TabOrder = 0
        Visible = False
        VisualStyle = vsGradient
      end
      object Panel2: TPanel
        Left = 0
        Top = 650
        Width = 1366
        Height = 44
        Align = alBottom
        TabOrder = 1
        Visible = False
        object btProses: TRzBitBtn
          Left = 1210
          Top = 1
          Width = 155
          Height = 42
          Align = alRight
          Caption = 'PROSES'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btProsesClick
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
            0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
            120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
            12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
            1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
            181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
            E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
            E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
            E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
            E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
            E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
            E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
        end
      end
      object DBGridEh3: TDBGridEh
        Left = 0
        Top = 153
        Width = 1366
        Height = 497
        Align = alClient
        DataSource = dsDaftarAsset
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        SearchPanel.Enabled = True
        SumList.Active = True
        TabOrder = 2
        TitleParams.MultiTitle = True
        OnDblClick = DBGridEh3DblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'KODE_ASSET'
            Footers = <>
            Title.Caption = 'KODE ASSET'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 200
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TANGGAL'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 125
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMA_KELOMPOK'
            Footers = <>
            Title.Caption = 'NAMA KELOMPOK'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMA_HARTA'
            Footers = <>
            Title.Caption = 'NAMA HARTA'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NAMASP'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Visible = False
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'UMUR'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 125
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'JUMLAH'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SATUAN'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'SPESIFIKASI_ASSET'
            Footers = <>
            Title.Caption = 'DESKRIPSI'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'TOTAL'
            Footers = <>
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'NILAI_SUSUT'
            Footers = <>
            Title.Caption = 'NILAI SUSUT'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'STAT_APPRV'
            Footers = <>
            Title.Caption = 'PILIH'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -17
            Title.Font.Name = 'Trebuchet MS'
            Title.Font.Style = [fsBold]
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 34
        Width = 1366
        Height = 119
        Align = alTop
        TabOrder = 3
        object Label9: TLabel
          Left = 50
          Top = 15
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
          Top = 46
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
          Top = 74
          Width = 99
          Height = 22
          Caption = 'NAMA HARTA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Trebuchet MS'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btTampilkanPustJthTempo: TRzBitBtn
          Left = 552
          Top = 65
          Width = 137
          Height = 32
          Align = alCustom
          Caption = 'TAMPILKAN'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = btTampilkanPustJthTempoClick
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
        end
        object btKirimPustJthTempo: TRzBitBtn
          Left = 861
          Top = 15
          Width = 137
          Height = 32
          Align = alCustom
          Caption = 'KIRIM'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Visible = False
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
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8180C
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8E8E8E8E8E8181212
            0CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8E8E8E818121212
            120CE8E8E8E8E8E8E8E8E8E8E281818181DFE8E8E8E8E8E8E8E8E81812121212
            12120CE8E8E8E8E8E8E8E8E2818181818181DFE8E8E8E8E8E8E8E81812120C18
            1212120CE8E8E8E8E8E8E8E28181DFE2818181DFE8E8E8E8E8E8E818120CE8E8
            181212120CE8E8E8E8E8E8E281DFE8E8E2818181DFE8E8E8E8E8E8180CE8E8E8
            E8181212120CE8E8E8E8E8E2DFE8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8
            E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8
            E8E8E8181212120CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8
            E8E8E8E81812120CE8E8E8E8E8E8E8E8E8E8E8E8E28181DFE8E8E8E8E8E8E8E8
            E8E8E8E8E818120CE8E8E8E8E8E8E8E8E8E8E8E8E8E281DFE8E8E8E8E8E8E8E8
            E8E8E8E8E8E8180CE8E8E8E8E8E8E8E8E8E8E8E8E8E8E2DFE8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
            E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
          NumGlyphs = 2
        end
        object ckTandai: TCheckBox
          Left = 704
          Top = 80
          Width = 153
          Height = 17
          Caption = 'TANDAI SEMUA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = ckTandaiClick
        end
        object cbNamaHarta: TRzComboBox
          Left = 249
          Top = 74
          Width = 297
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnChange = cbNamaHartaChange
        end
        object cbKelompok: TRzComboBox
          Left = 249
          Top = 45
          Width = 297
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnChange = cbKelompokChange
        end
        object cbSumber_Asset: TRzComboBox
          Left = 248
          Top = 14
          Width = 297
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
      end
    end
  end
  object dsTabKategori: TDataSource
    DataSet = MemTabKategori
    Left = 1200
    Top = 64
  end
  object MemTabKategori: TMemTableEh
    Params = <>
    Left = 1232
    Top = 64
    object MemTabKategoriid: TSmallintField
      FieldName = 'id'
    end
    object MemTabKategorikode: TStringField
      FieldName = 'kode'
    end
    object MemTabKategorikelompok: TStringField
      FieldName = 'kelompok'
      Size = 100
    end
    object MemTabKategorimasa_bulan: TStringField
      FieldName = 'masa_bulan'
      Size = 5
    end
    object MemTabKategorimasa_tahun: TStringField
      FieldName = 'masa_tahun'
      Size = 5
    end
    object MemTabKategoripersentase_garis_lurus: TCurrencyField
      FieldName = 'persentase_garis_lurus'
    end
    object MemTabKategoripersentase_saldo_menurun: TCurrencyField
      FieldName = 'persentase_saldo_menurun'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object id: TMTNumericDataFieldEh
          FieldName = 'id'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object kode: TMTStringDataFieldEh
          FieldName = 'kode'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kelompok: TMTStringDataFieldEh
          FieldName = 'kelompok'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object masa_bulan: TMTStringDataFieldEh
          FieldName = 'masa_bulan'
          StringDataType = fdtStringEh
          DisplayWidth = 5
          Size = 5
        end
        object masa_tahun: TMTStringDataFieldEh
          FieldName = 'masa_tahun'
          StringDataType = fdtStringEh
          DisplayWidth = 5
          Size = 5
        end
        object persentase_garis_lurus: TMTNumericDataFieldEh
          FieldName = 'persentase_garis_lurus'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object persentase_saldo_menurun: TMTNumericDataFieldEh
          FieldName = 'persentase_saldo_menurun'
          NumericDataType = fdtCurrencyEh
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
  object dsTabNamaHarta: TDataSource
    DataSet = MemTabNamaHarta
    Left = 1200
    Top = 96
  end
  object MemTabNamaHarta: TMemTableEh
    Params = <>
    Left = 1232
    Top = 96
    object MemTabNamaHartaid: TStringField
      FieldName = 'id'
    end
    object MemTabNamaHartakd_nama_harta: TStringField
      FieldName = 'kd_nama_harta'
    end
    object MemTabNamaHartanama_harta: TStringField
      FieldName = 'nama_harta'
      Size = 200
    end
    object MemTabNamaHartakodekredit: TStringField
      FieldName = 'kodekredit'
    end
    object MemTabNamaHartanamakredit: TStringField
      FieldName = 'namakredit'
      Size = 100
    end
    object MemTabNamaHartakodedebit: TStringField
      FieldName = 'kodedebit'
    end
    object MemTabNamaHartanamadebit: TStringField
      FieldName = 'namadebit'
      Size = 100
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object id: TMTStringDataFieldEh
          FieldName = 'id'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object kd_nama_harta: TMTStringDataFieldEh
          FieldName = 'kd_nama_harta'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nama_harta: TMTStringDataFieldEh
          FieldName = 'nama_harta'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 200
        end
        object kodekredit: TMTStringDataFieldEh
          FieldName = 'kodekredit'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object namakredit: TMTStringDataFieldEh
          FieldName = 'namakredit'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kodedebit: TMTStringDataFieldEh
          FieldName = 'kodedebit'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object namadebit: TMTStringDataFieldEh
          FieldName = 'namadebit'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsDaftarAsset: TDataSource
    DataSet = MemDaftarAsset
    Left = 1136
    Top = 125
  end
  object QDaftarAsset: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT'
      #9'kode_asset,'
      #9'tgl_susut,'
      #9'kode_kel_penyusutan,'
      #9'kode_nama_harta,'
      #9'sumber_id,'
      #9'nama_kelompok_penyusutan,'
      #9'nama_harta,'
      #9'kre.namasp as namakredit,  '
      '        deb.namasp as namadebit, '
      #9'concat( masa_bulan, '#39' BULAN'#39' ) AS umur,'
      #9'spesifikasi_asset,'
      #9'jumlah,'
      #9'satuan,'
      #9'total_harga_beli AS total,'
      '        rin.jumlah as jumlahperbulan '
      'FROM'
      #9'`tmaster_asset` a'
      '         LEFT JOIN tdata31 kre ON a.kodekredit=kre.kode31  '
      '         LEFT JOIN tdata31 deb ON a.kodedebit=deb.kode31  ')
    Left = 1168
    Top = 125
  end
  object MemDaftarAsset: TMemTableEh
    Params = <>
    Left = 1200
    Top = 133
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KODE_ASSET: TMTStringDataFieldEh
          FieldName = 'KODE_ASSET'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object TANGGAL: TMTDateTimeDataFieldEh
          FieldName = 'TANGGAL'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 50
        end
        object NAMA_KELOMPOK: TMTStringDataFieldEh
          FieldName = 'NAMA_KELOMPOK'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object NAMA_HARTA: TMTStringDataFieldEh
          FieldName = 'NAMA_HARTA'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object NAMASP: TMTStringDataFieldEh
          FieldName = 'NAMASP'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object UMUR: TMTStringDataFieldEh
          FieldName = 'UMUR'
          StringDataType = fdtStringEh
          DisplayWidth = 20
          Size = 30
        end
        object SPESIFIKASI_ASSET: TMTStringDataFieldEh
          FieldName = 'SPESIFIKASI_ASSET'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object JUMLAH: TMTNumericDataFieldEh
          FieldName = 'JUMLAH'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object SATUAN: TMTStringDataFieldEh
          FieldName = 'SATUAN'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object TOTAL: TMTNumericDataFieldEh
          FieldName = 'TOTAL'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object STAT_APPRV: TMTBooleanDataFieldEh
          FieldName = 'STAT_APPRV'
          DisplayWidth = 20
        end
        object NILAI_SUSUT: TMTNumericDataFieldEh
          FieldName = 'NILAI_SUSUT'
          NumericDataType = fdtFloatEh
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
  object dstDaftarAsset: TDataSetDriverEh
    ProviderDataSet = QDaftarAsset
    Left = 1136
    Top = 45
  end
end
