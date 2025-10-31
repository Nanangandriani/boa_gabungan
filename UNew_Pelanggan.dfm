object FNew_Pelanggan: TFNew_Pelanggan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'New Pelanggan'
  ClientHeight = 456
  ClientWidth = 1276
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzPageControl2: TRzPageControl
    Left = 0
    Top = 0
    Width = 1276
    Height = 456
    Hint = ''
    ActivePage = TabDetailPelanggan
    Align = alClient
    UseColoredTabs = True
    TabIndex = 1
    TabOrder = 0
    ExplicitWidth = 1272
    ExplicitHeight = 455
    FixedDimension = 21
    object TabMasterPelanggan: TRzTabSheet
      Caption = 'Master Pelanggan'
      object Panel3: TPanel
        Left = 0
        Top = 399
        Width = 1272
        Height = 32
        Align = alBottom
        TabOrder = 0
        object btNextStep: TRzBitBtn
          Left = 1196
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
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 399
        Align = alClient
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object Label14: TLabel
          Left = 247
          Top = 278
          Width = 22
          Height = 15
          Caption = 'Hari'
        end
        object Label13: TLabel
          Left = 48
          Top = 102
          Width = 29
          Height = 15
          Caption = 'Email'
        end
        object Label12: TLabel
          Left = 157
          Top = 102
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label10: TLabel
          Left = 49
          Top = 278
          Width = 54
          Height = 15
          Caption = 'Jth Tempo'
        end
        object Label6: TLabel
          Left = 157
          Top = 73
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label3: TLabel
          Left = 157
          Top = 14
          Width = 3
          Height = 15
          Caption = ':'
        end
        object LabelPelanggan: TLabel
          Left = 48
          Top = 14
          Width = 86
          Height = 15
          Caption = 'Kode Pelanggan'
        end
        object Label5: TLabel
          Left = 48
          Top = 73
          Width = 91
          Height = 15
          Caption = 'Nama Pelanggan'
        end
        object Label21: TLabel
          Left = 48
          Top = 131
          Width = 36
          Height = 15
          Caption = 'No. VA'
        end
        object Label22: TLabel
          Left = 157
          Top = 131
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label25: TLabel
          Left = 157
          Top = 220
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label26: TLabel
          Left = 48
          Top = 220
          Width = 103
          Height = 15
          Caption = 'Kategori Pelanggan'
        end
        object Label27: TLabel
          Left = 48
          Top = 249
          Width = 52
          Height = 15
          Caption = 'Golongan'
        end
        object Label28: TLabel
          Left = 157
          Top = 249
          Width = 3
          Height = 15
          Caption = ':'
        end
        object btMasterTypePenjualan: TSpeedButton
          Left = 413
          Top = 245
          Width = 23
          Height = 22
          Caption = '+'
          OnClick = btMasterTypePenjualanClick
        end
        object Label1: TLabel
          Left = 48
          Top = 191
          Width = 84
          Height = 15
          Caption = 'Jenis Pelanggan'
        end
        object Label2: TLabel
          Left = 157
          Top = 191
          Width = 3
          Height = 15
          Caption = ':'
        end
        object btJenisPelanggan: TSpeedButton
          Left = 413
          Top = 216
          Width = 23
          Height = 22
          Caption = '+'
          OnClick = btJenisPelangganClick
        end
        object btMasterGolongan: TSpeedButton
          Left = 413
          Top = 274
          Width = 23
          Height = 22
          Caption = '+'
          OnClick = btMasterGolonganClick
        end
        object Label8: TLabel
          Left = 157
          Top = 278
          Width = 3
          Height = 15
          Caption = ':'
        end
        object btJenisUsaha: TSpeedButton
          Left = 413
          Top = 185
          Width = 23
          Height = 22
          Caption = '+'
          OnClick = btJenisUsahaClick
        end
        object Label9: TLabel
          Left = 157
          Top = 160
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label11: TLabel
          Left = 48
          Top = 160
          Width = 60
          Height = 15
          Caption = 'Jenis Usaha'
        end
        object Label33: TLabel
          Left = 157
          Top = 43
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label34: TLabel
          Left = 48
          Top = 43
          Width = 60
          Height = 15
          Caption = 'Kode Inisial'
        end
        object Label45: TLabel
          Left = 443
          Top = 14
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label46: TLabel
          Left = 408
          Top = 14
          Width = 21
          Height = 15
          Caption = 'SBU'
        end
        object Edemail: TEdit
          Left = 172
          Top = 99
          Width = 313
          Height = 23
          TabOrder = 0
          OnKeyPress = EdemailKeyPress
        end
        object Edtempo: TEdit
          Left = 172
          Top = 275
          Width = 69
          Height = 23
          NumbersOnly = True
          TabOrder = 1
        end
        object Edkode: TEdit
          Left = 172
          Top = 11
          Width = 185
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = EdkodeKeyPress
        end
        object Ednama: TEdit
          Left = 172
          Top = 70
          Width = 313
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 3
          OnKeyPress = EdnamaKeyPress
        end
        object cbpkp: TCheckBox
          Left = 363
          Top = 43
          Width = 142
          Height = 17
          Caption = 'PKP'
          TabOrder = 4
          OnClick = cbpkpClick
        end
        object Ednomorva: TEdit
          Left = 172
          Top = 128
          Width = 313
          Height = 23
          TabOrder = 5
          OnChange = EdnomorvaChange
        end
        object edJenisPelanggan: TRzButtonEdit
          Left = 172
          Top = 188
          Width = 240
          Height = 23
          Text = ''
          TabOrder = 6
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edJenisPelangganButtonClick
        end
        object edTypePenjualan: TRzButtonEdit
          Left = 172
          Top = 217
          Width = 240
          Height = 23
          Text = ''
          TabOrder = 7
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edTypePenjualanButtonClick
        end
        object edGolonganPelanggan: TRzButtonEdit
          Left = 172
          Top = 246
          Width = 240
          Height = 23
          Text = ''
          TabOrder = 8
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edGolonganPelangganButtonClick
        end
        object edKode_jnispel: TEdit
          Left = 443
          Top = 187
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 9
          Visible = False
          OnKeyPress = EdkodeKeyPress
        end
        object edKode_typejual: TEdit
          Left = 443
          Top = 217
          Width = 100
          Height = 23
          ReadOnly = True
          TabOrder = 10
          Visible = False
          OnKeyPress = EdnamaKeyPress
        end
        object edKode_gol: TEdit
          Left = 443
          Top = 246
          Width = 100
          Height = 23
          ReadOnly = True
          TabOrder = 11
          Visible = False
          OnKeyPress = EdnamapkpKeyPress
        end
        object edKode_JenisUsaha: TEdit
          Left = 443
          Top = 156
          Width = 100
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 12
          Visible = False
          OnKeyPress = EdkodeKeyPress
        end
        object edJenisUsaha: TRzButtonEdit
          Left = 172
          Top = 157
          Width = 240
          Height = 23
          Text = ''
          TabOrder = 13
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edJenisUsahaButtonClick
        end
        object Edkodeinitial: TEdit
          Left = 172
          Top = 40
          Width = 185
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 14
          OnKeyPress = EdkodeKeyPress
        end
        object edSBU: TEdit
          Left = 458
          Top = 11
          Width = 85
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 15
          OnKeyPress = EdkodeKeyPress
        end
      end
    end
    object TabDetailPelanggan: TRzTabSheet
      Caption = 'Detail Pelanggan'
      object Panel4: TPanel
        Left = 0
        Top = 394
        Width = 1272
        Height = 37
        Align = alBottom
        TabOrder = 0
        object btBackStep: TRzBitBtn
          Left = 1
          Top = 1
          Height = 35
          Align = alLeft
          Caption = 'Back'
          TabOrder = 0
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
        object RzBitBtn1: TRzBitBtn
          Left = 1196
          Top = 1
          Height = 35
          Align = alRight
          Caption = 'Next'
          TabOrder = 1
          OnClick = RzBitBtn1Click
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
        end
      end
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 137
        Width = 1272
        Height = 257
        Hint = ''
        ActivePage = TabSDetailPel
        Align = alClient
        UseColoredTabs = True
        TabIndex = 0
        TabOrder = 1
        FixedDimension = 21
        object TabSDetailPel: TRzTabSheet
          Caption = 'Detail Alamat Pelanggan'
          object DBGridCustomer: TDBGridEh
            Left = 0
            Top = 0
            Width = 1268
            Height = 232
            Align = alClient
            DataSource = DSDetailPel
            DynProps = <>
            SearchPanel.Enabled = True
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ALAMAT_UNTUK'
                Footers = <>
                Title.Caption = 'Alamat Untuk'
                Width = 150
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'KODE_URUTAN_KE'
                Footers = <>
                Title.Caption = 'Kode Urutan'
                Visible = False
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'ALAMAT'
                Footers = <>
                Title.Caption = 'Alamat'
                Width = 450
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CONTACT_PERSON1'
                Footers = <>
                Title.Caption = 'Contact Person 1'
                Width = 150
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CONTACT_PERSON2'
                Footers = <>
                Title.Caption = 'Contact Person 2'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'CONTACT_PERSON3'
                Footers = <>
                Title.Caption = 'Contact Person 3'
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'URUTAN_KE'
                Footers = <>
                Visible = False
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LONGITUDE'
                Footers = <>
                Title.Caption = 'Longitude'
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'LATITUDE'
                Footers = <>
                Title.Caption = 'Latitude'
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 137
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object Label32: TLabel
          Left = 149
          Top = 20
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label24: TLabel
          Left = 149
          Top = 79
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label4: TLabel
          Left = 149
          Top = 107
          Width = 3
          Height = 15
          Caption = ':'
        end
        object btKantorPusat: TSpeedButton
          Left = 267
          Top = 17
          Width = 23
          Height = 22
          Caption = '+'
          OnClick = btKantorPusatClick
        end
        object btMasterDetailPel: TSpeedButton
          Left = 444
          Top = 104
          Width = 172
          Height = 22
          Caption = 'Add Master Detail Pelanggan'
          OnClick = btMasterDetailPelClick
        end
        object Label7: TLabel
          Left = 40
          Top = 107
          Width = 49
          Height = 15
          Caption = 'Kode Pos'
        end
        object Label23: TLabel
          Left = 40
          Top = 79
          Width = 42
          Height = 15
          Caption = 'Wilayah'
        end
        object Label31: TLabel
          Left = 40
          Top = 20
          Width = 59
          Height = 15
          Caption = 'Kode Pusat'
        end
        object Edkodepos: TEdit
          Left = 164
          Top = 104
          Width = 125
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 0
          OnKeyPress = EdkodeKeyPress
        end
        object Edkodewilayah: TRzButtonEdit
          Left = 164
          Top = 75
          Width = 97
          Height = 23
          Text = ''
          TabOrder = 1
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = EdkodewilayahButtonClick
        end
        object edNamaKantorPusat: TEdit
          Left = 164
          Top = 45
          Width = 313
          Height = 23
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = EdemailKeyPress
        end
        object edKodeKantorPusat: TRzButtonEdit
          Left = 164
          Top = 16
          Width = 97
          Height = 23
          Text = ''
          TabOrder = 3
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edKodeKantorPusatButtonClick
        end
        object Ednamawilayah: TEdit
          Left = 267
          Top = 75
          Width = 349
          Height = 23
          ReadOnly = True
          TabOrder = 4
          OnKeyPress = EdemailKeyPress
        end
        object Memo1: TMemo
          Left = 622
          Top = 9
          Width = 185
          Height = 89
          Lines.Strings = (
            'Memo1')
          TabOrder = 5
          Visible = False
        end
      end
    end
    object TabAkunPerkiraan: TRzTabSheet
      Caption = 'Akun Perkiraan'
      object Panel5: TPanel
        Left = 1
        Top = 0
        Width = 1254
        Height = 337
        Align = alCustom
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label36: TLabel
          Left = 149
          Top = 57
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label30: TLabel
          Left = 149
          Top = 28
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label35: TLabel
          Left = 15
          Top = 56
          Width = 124
          Height = 15
          Caption = 'Akun Piutang Lain-Lain'
        end
        object Label29: TLabel
          Left = 15
          Top = 28
          Width = 72
          Height = 15
          Caption = 'Akun Piutang'
        end
        object edAkunPiutang: TRzButtonEdit
          Left = 164
          Top = 24
          Width = 185
          Height = 23
          Text = ''
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 0
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edAkunPiutangButtonClick
        end
        object edAkunPiutangLainLain: TRzButtonEdit
          Left = 164
          Top = 53
          Width = 185
          Height = 23
          Text = ''
          Color = clInfoBk
          ReadOnly = True
          TabOrder = 1
          AllowKeyEdit = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edAkunPiutangLainLainButtonClick
        end
        object edNamaPiutangLain: TEdit
          Left = 354
          Top = 53
          Width = 390
          Height = 23
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = EdemailKeyPress
        end
        object edNamaPiutang: TEdit
          Left = 354
          Top = 24
          Width = 390
          Height = 23
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = EdemailKeyPress
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 394
        Width = 1272
        Height = 37
        Align = alBottom
        TabOrder = 1
        object RzBitBtn3: TRzBitBtn
          Left = 1
          Top = 1
          Height = 35
          Align = alLeft
          Caption = 'Back'
          TabOrder = 0
          OnClick = RzBitBtn3Click
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
        object RzBitBtn4: TRzBitBtn
          Left = 1196
          Top = 1
          Height = 35
          Align = alRight
          Caption = 'Next'
          TabOrder = 1
          OnClick = RzBitBtn4Click
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
        end
      end
    end
    object TabPajak: TRzTabSheet
      Caption = 'Pajak'
      ExplicitWidth = 1268
      ExplicitHeight = 430
      object Panel2: TPanel
        Left = 0
        Top = 397
        Width = 1272
        Height = 34
        Align = alBottom
        TabOrder = 0
        ExplicitTop = 396
        ExplicitWidth = 1268
        object BBatal: TRzBitBtn
          Left = 1196
          Top = 1
          Height = 32
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
          ExplicitLeft = 1192
        end
        object BSave: TRzBitBtn
          Left = 1121
          Top = 1
          Height = 32
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
          ExplicitLeft = 1117
        end
        object BDataProspek: TRzBitBtn
          Left = 244
          Top = 1
          Width = 105
          Height = 32
          Align = alLeft
          Caption = 'Data Prospek'
          TabOrder = 2
          Visible = False
          OnClick = BDataProspekClick
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
        object Edautocode: TEdit
          Left = 712
          Top = 4
          Width = 185
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 3
          TextHint = 'Autonumber'
          Visible = False
          OnKeyPress = EdkodeKeyPress
        end
        object btKlasifikasiHargaHargaJual: TRzBitBtn
          Left = 76
          Top = 1
          Width = 168
          Height = 32
          Align = alLeft
          Caption = 'Data Klasifikasi Harga Jual'
          TabOrder = 4
          Visible = False
          OnClick = btKlasifikasiHargaHargaJualClick
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
        object RzBitBtn2: TRzBitBtn
          Left = 1
          Top = 1
          Height = 32
          Align = alLeft
          Caption = 'Back'
          TabOrder = 5
          OnClick = RzBitBtn2Click
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
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1272
        Height = 397
        Align = alClient
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        ExplicitWidth = 1268
        ExplicitHeight = 396
        object Label37: TLabel
          Left = 130
          Top = 57
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label38: TLabel
          Left = 130
          Top = 28
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label39: TLabel
          Left = 12
          Top = 56
          Width = 38
          Height = 15
          Caption = 'Negara'
        end
        object Label40: TLabel
          Left = 12
          Top = 28
          Width = 115
          Height = 15
          Caption = 'Jenis Pajak Pelanggan'
        end
        object Label19: TLabel
          Left = 12
          Top = 143
          Width = 19
          Height = 15
          Caption = 'NIK'
        end
        object Label18: TLabel
          Left = 12
          Top = 114
          Width = 34
          Height = 15
          Caption = 'NPWP'
        end
        object Label15: TLabel
          Left = 12
          Top = 85
          Width = 56
          Height = 15
          Caption = 'Nama PKP'
        end
        object Label16: TLabel
          Left = 130
          Top = 85
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label17: TLabel
          Left = 130
          Top = 114
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label20: TLabel
          Left = 130
          Top = 143
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label41: TLabel
          Left = 12
          Top = 172
          Width = 33
          Height = 15
          Caption = 'NITKU'
        end
        object Label42: TLabel
          Left = 130
          Top = 172
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label43: TLabel
          Left = 12
          Top = 201
          Width = 43
          Height = 15
          Caption = 'PASPOR'
        end
        object Label44: TLabel
          Left = 130
          Top = 201
          Width = 3
          Height = 15
          Caption = ':'
        end
        object edKd_Jenis_Pajak: TRzButtonEdit
          Left = 145
          Top = 24
          Width = 99
          Height = 23
          Text = ''
          TabOrder = 0
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edKd_Jenis_PajakButtonClick
        end
        object edKd_Negara: TRzButtonEdit
          Left = 145
          Top = 53
          Width = 99
          Height = 23
          Text = ''
          TabOrder = 1
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edKd_NegaraButtonClick
        end
        object edNm_Negara: TEdit
          Left = 250
          Top = 53
          Width = 349
          Height = 23
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = EdemailKeyPress
        end
        object edNm_Jenis_Pajak: TEdit
          Left = 250
          Top = 24
          Width = 349
          Height = 23
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = EdemailKeyPress
        end
        object Ednik: TEdit
          Left = 145
          Top = 140
          Width = 313
          Height = 23
          MaxLength = 16
          TabOrder = 4
          OnChange = EdnikChange
          OnKeyPress = EdnikKeyPress
        end
        object Ednpwp: TEdit
          Left = 145
          Top = 111
          Width = 313
          Height = 23
          TabOrder = 5
          OnChange = EdnpwpChange
          OnKeyPress = EdnpwpKeyPress
        end
        object Ednamapkp: TEdit
          Left = 145
          Top = 82
          Width = 313
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 6
          OnKeyPress = EdnamapkpKeyPress
        end
        object EdNitKu: TEdit
          Left = 145
          Top = 169
          Width = 313
          Height = 23
          TabOrder = 7
          OnChange = EdNitKuChange
          OnKeyPress = EdnikKeyPress
        end
        object EdPaspor: TEdit
          Left = 145
          Top = 198
          Width = 313
          Height = 23
          TabOrder = 8
          OnChange = EdPasporChange
          OnKeyPress = EdnikKeyPress
        end
      end
    end
  end
  object DSDetailPel: TDataSource
    DataSet = MemDetailPel
    Left = 1080
    Top = 424
  end
  object MemDetailPel: TMemTableEh
    Params = <>
    Left = 960
    Top = 256
    object MemDetailPelKODE_URUTAN_KE: TStringField
      FieldName = 'KODE_URUTAN_KE'
    end
    object MemDetailPelALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 500
    end
    object MemDetailPelCONTACT_PERSON1: TStringField
      FieldName = 'CONTACT_PERSON1'
    end
    object MemDetailPelCONTACT_PERSON2: TStringField
      FieldName = 'CONTACT_PERSON2'
    end
    object MemDetailPelCONTACT_PERSON3: TStringField
      FieldName = 'CONTACT_PERSON3'
    end
    object MemDetailPelURUTAN_KE: TIntegerField
      FieldName = 'URUTAN_KE'
    end
    object MemDetailPelLONGITUDE: TStringField
      FieldName = 'LONGITUDE'
      Size = 500
    end
    object MemDetailPelLATITUDE: TStringField
      FieldName = 'LATITUDE'
      Size = 500
    end
    object MemDetailPelALAMAT_UNTUK: TStringField
      FieldName = 'ALAMAT_UNTUK'
      Size = 500
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KODE_URUTAN_KE: TMTStringDataFieldEh
          FieldName = 'KODE_URUTAN_KE'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object ALAMAT: TMTStringDataFieldEh
          FieldName = 'ALAMAT'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object LONGITUDE: TMTStringDataFieldEh
          FieldName = 'LONGITUDE'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object LATITUDE: TMTStringDataFieldEh
          FieldName = 'LATITUDE'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object CONTACT_PERSON1: TMTStringDataFieldEh
          FieldName = 'CONTACT_PERSON1'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object CONTACT_PERSON2: TMTStringDataFieldEh
          FieldName = 'CONTACT_PERSON2'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object CONTACT_PERSON3: TMTStringDataFieldEh
          FieldName = 'CONTACT_PERSON3'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object URUTAN_KE: TMTNumericDataFieldEh
          FieldName = 'URUTAN_KE'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object ALAMAT_UNTUK: TMTStringDataFieldEh
          FieldName = 'ALAMAT_UNTUK'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
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
    Left = 8
    Top = 304
  end
end
