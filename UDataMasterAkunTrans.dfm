object FDataMasterAkunTrans: TFDataMasterAkunTrans
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Master Akun Transaksi'
  ClientHeight = 654
  ClientWidth = 823
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
    Width = 823
    Height = 654
    Hint = ''
    ActivePage = TabPenjualan
    Align = alClient
    UseColoredTabs = True
    TabIndex = 1
    TabOrder = 0
    ExplicitWidth = 858
    ExplicitHeight = 653
    FixedDimension = 21
    object TabPembelian: TRzTabSheet
      Caption = 'Setting Transaksi Pembelian'
      ExplicitWidth = 858
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 819
        Height = 629
        Align = alClient
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 858
        object Label14: TLabel
          Left = 178
          Top = 265
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label15: TLabel
          Left = 28
          Top = 264
          Width = 135
          Height = 15
          Caption = 'Akun Uang Muka Hutang'
        end
        object Label16: TLabel
          Left = 178
          Top = 236
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label17: TLabel
          Left = 28
          Top = 236
          Width = 71
          Height = 15
          Caption = 'Akun Hutang'
        end
        object Label28: TLabel
          Left = 28
          Top = 83
          Width = 59
          Height = 15
          Caption = 'Kode Initial'
        end
        object Label31: TLabel
          Left = 28
          Top = 141
          Width = 60
          Height = 15
          Caption = 'Keterangan'
        end
        object Label32: TLabel
          Left = 28
          Top = 112
          Width = 82
          Height = 15
          Caption = 'Nama Transaksi'
        end
        object Label33: TLabel
          Left = 28
          Top = 56
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label34: TLabel
          Left = 28
          Top = 29
          Width = 35
          Height = 15
          Caption = 'Modul'
        end
        object Label37: TLabel
          Left = 178
          Top = 29
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label38: TLabel
          Left = 178
          Top = 56
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label39: TLabel
          Left = 178
          Top = 112
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label40: TLabel
          Left = 178
          Top = 141
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label41: TLabel
          Left = 178
          Top = 83
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Panel8: TPanel
          Left = 1
          Top = 596
          Width = 817
          Height = 32
          Align = alBottom
          TabOrder = 0
          ExplicitWidth = 856
          object btClose_Beli: TRzBitBtn
            Left = 741
            Top = 1
            Height = 30
            Align = alRight
            Caption = 'Close'
            TabOrder = 1
            OnClick = btClose_BeliClick
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
            ExplicitLeft = 780
          end
          object btSave_Beli: TRzBitBtn
            Left = 666
            Top = 1
            Height = 30
            Align = alRight
            Caption = 'Save'
            TabOrder = 0
            OnClick = btSave_BeliClick
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
            ExplicitLeft = 705
          end
        end
        object edNamaModulBeli: TRzButtonEdit
          Left = 193
          Top = 26
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 1
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaModulBeliButtonClick
        end
        object MemKeteranganbeli: TMemo
          Left = 193
          Top = 138
          Width = 261
          Height = 89
          TabOrder = 2
        end
        object edNamaUangMukaHutang: TEdit
          Left = 384
          Top = 261
          Width = 349
          Height = 23
          ReadOnly = True
          TabOrder = 3
        end
        object edNamaHutang: TEdit
          Left = 384
          Top = 232
          Width = 349
          Height = 23
          ReadOnly = True
          TabOrder = 4
        end
        object EdKodeInitialBeli: TEdit
          Left = 193
          Top = 80
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 5
        end
        object edKodeTransBeli: TEdit
          Left = 193
          Top = 53
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 6
        end
        object edNamaTransBeli: TEdit
          Left = 193
          Top = 109
          Width = 344
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 7
        end
        object edKodeModulBeli: TEdit
          Left = 543
          Top = 26
          Width = 200
          Height = 23
          TabOrder = 8
          Visible = False
        end
        object edAkunUangMukaHutang: TRzButtonEdit
          Left = 193
          Top = 261
          Width = 185
          Height = 23
          Text = ''
          TabOrder = 9
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edAkunUangMukaHutangButtonClick
        end
        object edAkunHutang: TRzButtonEdit
          Left = 193
          Top = 232
          Width = 185
          Height = 23
          Text = ''
          TabOrder = 10
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edAkunHutangButtonClick
        end
      end
    end
    object TabPenjualan: TRzTabSheet
      Caption = 'Setting Transaksi Penjualan'
      ExplicitWidth = 854
      ExplicitHeight = 628
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 819
        Height = 361
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object Label18: TLabel
          Left = 178
          Top = 83
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label19: TLabel
          Left = 178
          Top = 141
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label20: TLabel
          Left = 178
          Top = 112
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label21: TLabel
          Left = 178
          Top = 56
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label22: TLabel
          Left = 178
          Top = 29
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label23: TLabel
          Left = 28
          Top = 29
          Width = 35
          Height = 15
          Caption = 'Modul'
        end
        object Label24: TLabel
          Left = 28
          Top = 56
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label25: TLabel
          Left = 28
          Top = 112
          Width = 82
          Height = 15
          Caption = 'Nama Transaksi'
        end
        object Label26: TLabel
          Left = 28
          Top = 141
          Width = 60
          Height = 15
          Caption = 'Keterangan'
        end
        object Label27: TLabel
          Left = 28
          Top = 83
          Width = 59
          Height = 15
          Caption = 'Kode Initial'
        end
        object edNamaModulJual: TRzButtonEdit
          Left = 193
          Top = 26
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 0
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaModulJualButtonClick
        end
        object edKodeModulJual: TEdit
          Left = 544
          Top = 26
          Width = 200
          Height = 23
          TabOrder = 1
          Visible = False
        end
        object MemKeteranganJual: TMemo
          Left = 193
          Top = 138
          Width = 261
          Height = 98
          TabOrder = 2
        end
        object edNamaTransJual: TEdit
          Left = 193
          Top = 109
          Width = 344
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object edKodeTransJual: TEdit
          Left = 193
          Top = 53
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 4
        end
        object EdKodeInitialJual: TEdit
          Left = 193
          Top = 80
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 5
        end
        object rgMenejFee: TRzRadioGroup
          Left = 460
          Top = 190
          Width = 186
          Height = 46
          Caption = 'Menejmen Fee'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 6
          Transparent = True
        end
        object RzPageControl4: TRzPageControl
          Left = 1
          Top = 240
          Width = 817
          Height = 120
          Hint = ''
          ActivePage = TabSheet2
          Align = alBottom
          UseColoredTabs = True
          TabIndex = 2
          TabOrder = 7
          ExplicitTop = 232
          FixedDimension = 21
          object TabSetPPn: TRzTabSheet
            Color = clGradientInactiveCaption
            Caption = 'Seting PPn'
            ExplicitWidth = 848
            ExplicitHeight = 84
            object Label59: TLabel
              Left = 125
              Top = 115
              Width = 3
              Height = 15
              Caption = ':'
            end
            object Label60: TLabel
              Left = 28
              Top = 115
              Width = 57
              Height = 15
              Caption = 'Link Target'
            end
            object Panel9: TPanel
              Left = 0
              Top = 0
              Width = 813
              Height = 95
              Align = alClient
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 848
              ExplicitHeight = 84
              object Label58: TLabel
                Left = 135
                Top = 59
                Width = 3
                Height = 15
                Caption = ':'
              end
              object Label50: TLabel
                Left = 178
                Top = 121
                Width = 3
                Height = 15
                Caption = ':'
              end
              object Label53: TLabel
                Left = 264
                Top = 19
                Width = 3
                Height = 15
                Caption = ':'
              end
              object Label56: TLabel
                Left = 323
                Top = 19
                Width = 10
                Height = 15
                Caption = '%'
              end
              object Label52: TLabel
                Left = 223
                Top = 19
                Width = 35
                Height = 15
                Caption = 'Persen'
              end
              object Label51: TLabel
                Left = 7
                Top = 59
                Width = 56
                Height = 15
                Caption = 'Jenis Pajak'
              end
              object Label57: TLabel
                Left = 50
                Top = 121
                Width = 54
                Height = 15
                Caption = 'Akun PPN'
              end
              object edPersenPPNJual: TEdit
                Left = 277
                Top = 16
                Width = 40
                Height = 23
                TabOrder = 0
              end
              object edAkunJenisTax: TRzButtonEdit
                Left = 148
                Top = 56
                Width = 185
                Height = 23
                Text = ''
                TabOrder = 1
                AltBtnNumGlyphs = 1
                ButtonNumGlyphs = 1
                OnButtonClick = edAkunJenisTaxButtonClick
              end
              object edAkunPPNJual: TRzButtonEdit
                Left = 191
                Top = 118
                Width = 185
                Height = 23
                Text = ''
                TabOrder = 2
                AltBtnNumGlyphs = 1
                ButtonNumGlyphs = 1
                OnButtonClick = edAkunPPNJualButtonClick
              end
              object edNamaPPNJual: TEdit
                Left = 382
                Top = 118
                Width = 349
                Height = 23
                ReadOnly = True
                TabOrder = 3
              end
              object edNamaJenisTax: TEdit
                Left = 339
                Top = 56
                Width = 349
                Height = 23
                ReadOnly = True
                TabOrder = 4
              end
              object rgPPN: TRzRadioGroup
                Left = 8
                Top = 4
                Width = 186
                Height = 46
                Caption = 'Default PPN'
                Color = 15987699
                Columns = 2
                ItemHeight = 17
                ItemIndex = 1
                Items.Strings = (
                  'Tidak'
                  'Ya')
                TabOrder = 5
                Transparent = True
                OnClick = rgPPNClick
              end
            end
          end
          object TabSheet1: TRzTabSheet
            Color = clGradientInactiveCaption
            Caption = 'Setting PPh'
            ExplicitWidth = 852
            ExplicitHeight = 84
            object Panel10: TPanel
              Left = 0
              Top = 0
              Width = 813
              Height = 95
              Align = alClient
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 0
              ExplicitWidth = 852
              ExplicitHeight = 84
              object Label61: TLabel
                Left = 274
                Top = 27
                Width = 3
                Height = 15
                Caption = ':'
              end
              object Label62: TLabel
                Left = 333
                Top = 27
                Width = 10
                Height = 15
                Caption = '%'
              end
              object Label63: TLabel
                Left = 234
                Top = 27
                Width = 35
                Height = 15
                Caption = 'Persen'
              end
              object Label64: TLabel
                Left = 58
                Top = 104
                Width = 54
                Height = 15
                Caption = 'Akun PPH'
              end
              object Label65: TLabel
                Left = 186
                Top = 104
                Width = 3
                Height = 15
                Caption = ':'
              end
              object rgPPH: TRzRadioGroup
                Left = 26
                Top = 12
                Width = 186
                Height = 46
                Caption = 'Default PPH'
                Color = 15987699
                Columns = 2
                ItemHeight = 17
                ItemIndex = 1
                Items.Strings = (
                  'Tidak'
                  'Ya')
                TabOrder = 0
                Transparent = True
                OnClick = rgPPHClick
              end
              object edPersenPPHJual: TEdit
                Left = 287
                Top = 24
                Width = 40
                Height = 23
                TabOrder = 1
              end
              object edAkunPPHJual: TRzButtonEdit
                Left = 199
                Top = 101
                Width = 185
                Height = 23
                Text = ''
                TabOrder = 2
                AltBtnNumGlyphs = 1
                ButtonNumGlyphs = 1
                OnButtonClick = edAkunPPHJualButtonClick
              end
              object edNamaPPHJual: TEdit
                Left = 390
                Top = 101
                Width = 349
                Height = 23
                ReadOnly = True
                TabOrder = 3
              end
            end
          end
          object TabSheet2: TRzTabSheet
            Color = clGradientInactiveCaption
            Caption = 'Setting Default Akun Master Pelanggan'
            ExplicitHeight = 82
            object Label30: TLabel
              Left = 158
              Top = 9
              Width = 3
              Height = 15
              Caption = ':'
            end
            object Label36: TLabel
              Left = 158
              Top = 37
              Width = 3
              Height = 15
              Caption = ':'
            end
            object Label35: TLabel
              Left = 13
              Top = 37
              Width = 124
              Height = 15
              Caption = 'Akun Piutang Lain-Lain'
            end
            object Label29: TLabel
              Left = 13
              Top = 9
              Width = 72
              Height = 15
              Caption = 'Akun Piutang'
            end
            object Label66: TLabel
              Left = 13
              Top = 66
              Width = 92
              Height = 15
              Caption = 'Akun Uang Muka'
            end
            object Label67: TLabel
              Left = 158
              Top = 66
              Width = 3
              Height = 15
              Caption = ':'
            end
            object edNamaPiutang: TEdit
              Left = 358
              Top = 6
              Width = 349
              Height = 23
              ReadOnly = True
              TabOrder = 0
            end
            object edNamaPiutangLain: TEdit
              Left = 358
              Top = 34
              Width = 349
              Height = 23
              ReadOnly = True
              TabOrder = 1
            end
            object edAkunPiutangLainLain: TRzButtonEdit
              Left = 167
              Top = 34
              Width = 185
              Height = 23
              Text = ''
              TabOrder = 2
              AllowKeyEdit = False
              AltBtnNumGlyphs = 1
              ButtonNumGlyphs = 1
              OnButtonClick = edAkunPiutangLainLainButtonClick
            end
            object edAkunPiutang: TRzButtonEdit
              Left = 166
              Top = 6
              Width = 185
              Height = 23
              Text = ''
              TabOrder = 3
              AllowKeyEdit = False
              AltBtnNumGlyphs = 1
              ButtonNumGlyphs = 1
              OnButtonClick = edAkunPiutangButtonClick
            end
            object edAkunUangMukaPenjualan: TRzButtonEdit
              Left = 167
              Top = 63
              Width = 185
              Height = 23
              Text = ''
              TabOrder = 4
              AllowKeyEdit = False
              AltBtnNumGlyphs = 1
              ButtonNumGlyphs = 1
              OnButtonClick = edAkunUangMukaPenjualanButtonClick
            end
            object edNamaAkunUangMukaPenjualan: TEdit
              Left = 358
              Top = 63
              Width = 349
              Height = 23
              ReadOnly = True
              TabOrder = 5
            end
          end
        end
        object rgPotongan: TRzRadioGroup
          Left = 460
          Top = 138
          Width = 165
          Height = 46
          Caption = 'System Potongan Klasifikasi'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 8
          Transparent = True
          OnClick = rgPotonganClick
        end
        object rgKlasifikasiIncludePPN: TRzRadioGroup
          Left = 644
          Top = 141
          Width = 165
          Height = 46
          Caption = 'Klasifikasi Include PPN'
          Color = 15987699
          Columns = 2
          ItemHeight = 17
          ItemIndex = 1
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 9
          Transparent = True
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 597
        Width = 819
        Height = 32
        Align = alBottom
        TabOrder = 1
        ExplicitTop = 596
        ExplicitWidth = 854
        object btClose_Close: TRzBitBtn
          Left = 743
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Close'
          TabOrder = 1
          OnClick = btClose_CloseClick
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
          ExplicitLeft = 778
        end
        object btSave_Jual: TRzBitBtn
          Left = 668
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Save'
          TabOrder = 0
          OnClick = btSave_JualClick
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
          ExplicitLeft = 703
        end
      end
      object RzPageControl5: TRzPageControl
        Left = 0
        Top = 361
        Width = 819
        Height = 236
        Hint = ''
        ActivePage = RzTabSheet2
        Align = alClient
        UseColoredTabs = True
        TabIndex = 0
        TabOrder = 2
        ExplicitTop = 355
        ExplicitHeight = 242
        FixedDimension = 21
        object RzTabSheet2: TRzTabSheet
          Color = clGradientInactiveCaption
          Caption = 'Data Akun'
          ExplicitWidth = 850
          ExplicitHeight = 216
          object DBGridDetailJual: TDBGridEh
            Left = 0
            Top = 0
            Width = 815
            Height = 211
            Align = alClient
            DataSource = DSDetailPenjualan
            DynProps = <>
            HorzScrollBar.ExtraPanel.Visible = True
            SearchPanel.Enabled = True
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <
                  item
                    Style = ebsEllipsisEh
                    OnClick = DBGridDetailJualColumns0EditButtons0Click
                  end>
                FieldName = 'kd_akun'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Kode Akun'
                Width = 150
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nm_akun'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Nama Akun'
                Width = 300
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'posisi'
                Footers = <>
                PickList.Strings = (
                  'D'
                  'K')
                Title.Alignment = taCenter
                Title.Caption = 'Posisi'
                Width = 50
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'table_name'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Nama Table'
                Visible = False
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'field_name'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Nama Field'
                Visible = False
              end
              item
                ButtonStyle = cbsDropDown
                CellButtons = <>
                DropDownFormParams.PassParams = pspCustomValuesEh
                DynProps = <>
                EditButton.DropDownFormParams.PassParams = pspCustomValuesEh
                EditButton.Visible = True
                EditButtons = <>
                FieldName = 'nilai_name'
                Footers = <>
                PickList.Strings = (
                  'Aktif'
                  'Non-Aktif'
                  'Blokir')
                Title.Alignment = taCenter
                Title.Caption = 'Sumber Nilai'
                Width = 171
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
    object TabBank: TRzTabSheet
      Caption = 'Setting Transaksi Bank'
      ExplicitWidth = 858
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 819
        Height = 233
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 858
        object LabelPelanggan: TLabel
          Left = 20
          Top = 19
          Width = 35
          Height = 15
          Caption = 'Modul'
        end
        object Label3: TLabel
          Left = 117
          Top = 19
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label1: TLabel
          Left = 20
          Top = 135
          Width = 60
          Height = 15
          Caption = 'Keterangan'
        end
        object Label2: TLabel
          Left = 117
          Top = 135
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label6: TLabel
          Left = 20
          Top = 48
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label7: TLabel
          Left = 117
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label10: TLabel
          Left = 117
          Top = 106
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label11: TLabel
          Left = 20
          Top = 106
          Width = 82
          Height = 15
          Caption = 'Nama Transaksi'
        end
        object Label4: TLabel
          Left = 611
          Top = 51
          Width = 3
          Height = 15
          Caption = ':'
          Visible = False
        end
        object Label5: TLabel
          Left = 514
          Top = 51
          Width = 26
          Height = 15
          Caption = 'Bank'
          Visible = False
        end
        object Label8: TLabel
          Left = 611
          Top = 79
          Width = 3
          Height = 15
          Caption = ':'
          Visible = False
        end
        object Label9: TLabel
          Left = 514
          Top = 79
          Width = 71
          Height = 15
          Caption = 'No. Rekening'
          Visible = False
        end
        object Label12: TLabel
          Left = 117
          Top = 77
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label13: TLabel
          Left = 20
          Top = 77
          Width = 59
          Height = 15
          Caption = 'Kode Initial'
        end
        object edNamaModul: TRzButtonEdit
          Left = 132
          Top = 16
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 0
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaModulButtonClick
        end
        object edKodeModul: TEdit
          Left = 482
          Top = 16
          Width = 200
          Height = 23
          TabOrder = 1
          Visible = False
        end
        object edKodeTrans: TEdit
          Left = 132
          Top = 45
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 2
        end
        object edNamaTrans: TEdit
          Left = 132
          Top = 103
          Width = 344
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object MemKeterangan: TMemo
          Left = 132
          Top = 132
          Width = 261
          Height = 89
          TabOrder = 4
        end
        object edNamaBank: TRzButtonEdit
          Left = 626
          Top = 48
          Width = 173
          Height = 23
          Text = ''
          TabOrder = 5
          Visible = False
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaBankButtonClick
        end
        object edNorekening: TEdit
          Left = 626
          Top = 76
          Width = 344
          Height = 23
          TabOrder = 6
          Visible = False
        end
        object rgTagihan: TRzRadioGroup
          Left = 405
          Top = 132
          Width = 132
          Height = 69
          Caption = ''
          Color = 15987699
          ItemHeight = 17
          ItemIndex = 0
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 7
          Transparent = True
        end
        object EdKodeInitial: TEdit
          Left = 132
          Top = 74
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 8
        end
      end
      object RzPageControl1: TRzPageControl
        Left = 0
        Top = 233
        Width = 819
        Height = 364
        Hint = ''
        ActivePage = TabSDetailPel
        Align = alClient
        UseColoredTabs = True
        TabIndex = 0
        TabOrder = 1
        ExplicitWidth = 858
        FixedDimension = 21
        object TabSDetailPel: TRzTabSheet
          Color = clGradientInactiveCaption
          Caption = 'Data Akun'
          ExplicitWidth = 854
          object DBGridDetail: TDBGridEh
            Left = 0
            Top = 0
            Width = 815
            Height = 339
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
                EditButtons = <
                  item
                    Style = ebsEllipsisEh
                    OnClick = DBGridDetailColumns0EditButtons0Click
                  end>
                FieldName = 'kd_akun'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Kode Akun'
                Width = 150
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nm_akun'
                Footers = <>
                Title.Alignment = taCenter
                Title.Caption = 'Nama Akun'
                Width = 300
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'posisi'
                Footers = <>
                PickList.Strings = (
                  'D'
                  'K')
                Title.Alignment = taCenter
                Title.Caption = 'Posisi'
                Width = 50
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 597
        Width = 819
        Height = 32
        Align = alBottom
        TabOrder = 2
        ExplicitWidth = 858
        object BBatal: TRzBitBtn
          Left = 743
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
          ExplicitLeft = 782
        end
        object BSave: TRzBitBtn
          Left = 668
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
          ExplicitLeft = 707
        end
      end
    end
    object TabKas: TRzTabSheet
      Caption = 'Setting Transaksi Kas'
      ExplicitWidth = 858
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 819
        Height = 233
        Align = alTop
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 858
        object Label42: TLabel
          Left = 20
          Top = 19
          Width = 35
          Height = 15
          Caption = 'Modul'
        end
        object Label43: TLabel
          Left = 117
          Top = 19
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label44: TLabel
          Left = 20
          Top = 135
          Width = 60
          Height = 15
          Caption = 'Keterangan'
        end
        object Label45: TLabel
          Left = 117
          Top = 135
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label46: TLabel
          Left = 20
          Top = 48
          Width = 27
          Height = 15
          Caption = 'Kode'
        end
        object Label47: TLabel
          Left = 117
          Top = 48
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label48: TLabel
          Left = 117
          Top = 106
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label49: TLabel
          Left = 20
          Top = 106
          Width = 82
          Height = 15
          Caption = 'Nama Transaksi'
        end
        object Label54: TLabel
          Left = 117
          Top = 77
          Width = 3
          Height = 15
          Caption = ':'
        end
        object Label55: TLabel
          Left = 20
          Top = 77
          Width = 59
          Height = 15
          Caption = 'Kode Initial'
        end
        object edNamaModulKas: TRzButtonEdit
          Left = 132
          Top = 16
          Width = 344
          Height = 23
          Text = ''
          TabOrder = 0
          AltBtnNumGlyphs = 1
          ButtonNumGlyphs = 1
          OnButtonClick = edNamaModulKasButtonClick
        end
        object edKodeModulKas: TEdit
          Left = 482
          Top = 16
          Width = 200
          Height = 23
          TabOrder = 1
          Visible = False
        end
        object edKodeTransKas: TEdit
          Left = 132
          Top = 45
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          ReadOnly = True
          TabOrder = 2
        end
        object edNamaTransKas: TEdit
          Left = 132
          Top = 103
          Width = 344
          Height = 23
          CharCase = ecUpperCase
          TabOrder = 3
        end
        object MemKeteranganKas: TMemo
          Left = 132
          Top = 132
          Width = 261
          Height = 89
          TabOrder = 4
        end
        object EdKodeInitialKas: TEdit
          Left = 132
          Top = 74
          Width = 173
          Height = 23
          CharCase = ecUpperCase
          MaxLength = 5
          TabOrder = 5
        end
        object rgTagihanKas: TRzRadioGroup
          Left = 413
          Top = 140
          Width = 132
          Height = 69
          Caption = ''
          Color = 15987699
          ItemHeight = 17
          ItemIndex = 0
          Items.Strings = (
            'Tidak'
            'Ya')
          TabOrder = 6
          Transparent = True
        end
      end
      object RzPageControl3: TRzPageControl
        Left = 0
        Top = 233
        Width = 819
        Height = 364
        Hint = ''
        ActivePage = RzTabSheet1
        Align = alClient
        UseColoredTabs = True
        TabIndex = 0
        TabOrder = 1
        ExplicitWidth = 858
        FixedDimension = 21
        object RzTabSheet1: TRzTabSheet
          Color = clGradientInactiveCaption
          Caption = 'Detail Order'
          ExplicitWidth = 854
          object DBGridEh1: TDBGridEh
            Left = 0
            Top = 0
            Width = 815
            Height = 339
            Align = alClient
            DataSource = DSDetailKas
            DynProps = <>
            HorzScrollBar.ExtraPanel.Visible = True
            SearchPanel.Enabled = True
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <
                  item
                    Style = ebsEllipsisEh
                    OnClick = DBGridEh1Columns0EditButtons0Click
                  end>
                FieldName = 'kd_akun'
                Footers = <>
                Title.Caption = 'Kode Akun'
                Width = 150
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nm_akun'
                Footers = <>
                Title.Caption = 'Nama Akun'
                Width = 300
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'posisi'
                Footers = <>
                PickList.Strings = (
                  'D'
                  'K')
                Title.Caption = 'Posisi'
                Width = 50
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 597
        Width = 819
        Height = 32
        Align = alBottom
        TabOrder = 2
        ExplicitWidth = 858
        object btClose_Kas: TRzBitBtn
          Left = 743
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Close'
          TabOrder = 1
          OnClick = btClose_KasClick
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
          ExplicitLeft = 782
        end
        object btSave_Kas: TRzBitBtn
          Left = 668
          Top = 1
          Height = 30
          Align = alRight
          Caption = 'Save'
          TabOrder = 0
          OnClick = btSave_KasClick
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
          ExplicitLeft = 707
        end
      end
    end
  end
  object DSDetail: TDataSource
    DataSet = MemDetail
    Left = 456
    Top = 86
  end
  object MemDetail: TMemTableEh
    Params = <>
    Left = 1080
    Top = 254
    object MemDetailkd_akun: TStringField
      FieldName = 'kd_akun'
      Size = 50
    end
    object MemDetailnm_akun: TStringField
      FieldName = 'nm_akun'
      Size = 300
    end
    object MemDetailposisi: TStringField
      FieldName = 'posisi'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 300
        end
        object posisi: TMTStringDataFieldEh
          FieldName = 'posisi'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDetailKas: TDataSource
    DataSet = MemDetailKas
    Left = 984
    Top = 246
  end
  object MemDetailKas: TMemTableEh
    Params = <>
    Left = 992
    Top = 190
    object StringField1: TStringField
      FieldName = 'kd_akun'
      Size = 50
    end
    object StringField2: TStringField
      FieldName = 'nm_akun'
      Size = 300
    end
    object StringField3: TStringField
      FieldName = 'posisi'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 300
        end
        object posisi: TMTStringDataFieldEh
          FieldName = 'posisi'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object MemDetailPenjualan: TMemTableEh
    Active = True
    Params = <>
    Left = 1072
    Top = 166
    object StringField4: TStringField
      FieldName = 'kd_akun'
      Size = 50
    end
    object StringField5: TStringField
      FieldName = 'nm_akun'
      Size = 300
    end
    object StringField6: TStringField
      FieldName = 'posisi'
    end
    object MemDetailPenjualantable_name: TStringField
      FieldName = 'table_name'
    end
    object MemDetailPenjualanfield_name: TStringField
      FieldName = 'field_name'
    end
    object MemDetailPenjualannilai_name: TStringField
      FieldName = 'nilai_name'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_akun: TMTStringDataFieldEh
          FieldName = 'kd_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object nm_akun: TMTStringDataFieldEh
          FieldName = 'nm_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 300
        end
        object posisi: TMTStringDataFieldEh
          FieldName = 'posisi'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object table_name: TMTStringDataFieldEh
          FieldName = 'table_name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object field_name: TMTStringDataFieldEh
          FieldName = 'field_name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object nilai_name: TMTStringDataFieldEh
          FieldName = 'nilai_name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDetailPenjualan: TDataSource
    DataSet = MemDetailPenjualan
    Left = 1152
    Top = 230
  end
end
