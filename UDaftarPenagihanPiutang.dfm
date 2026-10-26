object FDaftarPenagihanPiutang: TFDaftarPenagihanPiutang
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daftar Penagihan Piutang'
  ClientHeight = 557
  ClientWidth = 1200
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
    Width = 1200
    Height = 105
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1196
    object Label8: TLabel
      Left = 21
      Top = 74
      Width = 72
      Height = 15
      Caption = 'Tanggal Tagih'
    end
    object Label9: TLabel
      Left = 118
      Top = 74
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label21: TLabel
      Left = 22
      Top = 21
      Width = 56
      Height = 15
      Caption = 'Pelanggan'
    end
    object Label22: TLabel
      Left = 119
      Top = 21
      Width = 3
      Height = 15
      Caption = ':'
    end
    object dtTagih: TRzDateTimePicker
      Left = 132
      Top = 71
      Width = 186
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      TabOrder = 0
    end
    object edKode_Pelanggan: TRzButtonEdit
      Left = 132
      Top = 18
      Width = 151
      Height = 23
      Text = ''
      TabOrder = 1
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
    end
    object edNama_Pelanggan: TEdit
      Left = 132
      Top = 44
      Width = 354
      Height = 23
      TabOrder = 2
    end
    object btTampilkan: TRzBitBtn
      Left = 339
      Top = 69
      Width = 147
      Height = 30
      Align = alCustom
      Caption = 'Preview'
      TabOrder = 3
      OnClick = btTampilkanClick
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
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 105
    Width = 1200
    Height = 420
    Hint = ''
    ActivePage = TabDetailFaktur
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 1
    ExplicitWidth = 1196
    ExplicitHeight = 419
    FixedDimension = 21
    object TabDetailFaktur: TRzTabSheet
      Caption = 'Data Rencana'
      ExplicitWidth = 1192
      ExplicitHeight = 394
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1196
        Height = 395
        Align = alClient
        DataSource = dsDetailPiutang
        DynProps = <>
        FrozenCols = 4
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            CellButtons = <>
            DisplayFormat = 'dd/mm/yyyy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgltagih'
            Footers = <>
            Title.Caption = 'Tanggal DPP'
            Width = 99
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kode_pelanggan'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nama_pelanggan'
            Footers = <>
            Title.Caption = 'Pelanggan'
            Width = 300
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_tagihan'
            Footers = <>
            Title.Caption = 'Nomor Invoice'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_Faktur'
            Footers = <>
            Title.Caption = 'Nomor Faktur'
            Width = 150
          end
          item
            CellButtons = <>
            DisplayFormat = 'dd/mm/yyyy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'tglfaktur'
            Footers = <>
            Title.Caption = 'Tanggal Faktur'
            Width = 75
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'jum_piutang'
            Footers = <>
            Title.Caption = 'Total'
            Width = 136
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'cash'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Tunai'
            Width = 115
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'bank_receipt'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Bank Resi'
            Width = 154
          end
          item
            CellButtons = <>
            DisplayFormat = 'dd/mm/yyyy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'date_receipt'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Tanggal Resi'
            Width = 84
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'receipt'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Jumlah Resi'
            Width = 96
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_bank_cheque'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Bank Chek/Giro'
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_cheque'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|No. Cek/Giro'
          end
          item
            CellButtons = <>
            DisplayFormat = 'dd/mm/yyyy'
            DynProps = <>
            EditButtons = <>
            FieldName = 'date_tempo_cheque'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Tanggal Cek/Giro'
            Width = 78
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'cheque_amount1'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Nilai Cek/Giro'
            Width = 87
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'counter_bill'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Penerimaan Uang Dari Kolektor|Kontrabon'
            Width = 84
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'status_dpp_kolektor_harmoni'
            Footers = <>
            ReadOnly = True
            Title.Caption = 
              'Penerimaan Uang Dari Kolektor|Status Penerimaan Uang Dari Kolekt' +
              'or'
            Width = 131
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pilih'
            Footers = <>
            Title.Caption = 'Pilih'
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 525
    Width = 1200
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 524
    ExplicitWidth = 1196
    object BBatal: TRzBitBtn
      Left = 1124
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
      ExplicitLeft = 1120
    end
    object BSave: TRzBitBtn
      Left = 1049
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Process'
      TabOrder = 0
      OnClick = BSaveClick
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
      ExplicitLeft = 1045
    end
  end
  object MemDetailPiutang: TMemTableEh
    Params = <>
    Left = 376
    Top = 298
    object MemDetailPiutangnotrans: TStringField
      FieldName = 'notrans'
      Size = 100
    end
    object MemDetailPiutangkode_pelanggan: TStringField
      FieldName = 'kode_pelanggan'
      Size = 100
    end
    object MemDetailPiutangnama_pelanggan: TStringField
      FieldName = 'nama_pelanggan'
      Size = 200
    end
    object MemDetailPiutangtgltagih: TDateField
      FieldName = 'tgltagih'
    end
    object MemDetailPiutangjum_piutang: TCurrencyField
      FieldName = 'jum_piutang'
    end
    object MemDetailPiutangno_tagihan: TStringField
      FieldName = 'no_tagihan'
      Size = 200
    end
    object MemDetailPiutangno_Faktur: TStringField
      FieldName = 'no_Faktur'
      Size = 200
    end
    object MemDetailPiutangtglfaktur: TDateField
      FieldName = 'tglfaktur'
    end
    object MemDetailPiutangpilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemDetailPiutangid_dpp: TStringField
      FieldName = 'id_dpp'
      Size = 250
    end
    object MemDetailPiutangcash: TFloatField
      FieldName = 'cash'
    end
    object MemDetailPiutangreceipt: TFloatField
      FieldName = 'receipt'
    end
    object MemDetailPiutangcounter_bill: TFloatField
      FieldName = 'counter_bill'
    end
    object MemDetailPiutangbank_receipt: TStringField
      FieldName = 'bank_receipt'
      Size = 100
    end
    object MemDetailPiutangdate_receipt: TStringField
      FieldName = 'date_receipt'
    end
    object MemDetailPiutangname_bank_cheque: TStringField
      FieldName = 'name_bank_cheque'
    end
    object MemDetailPiutangno_cheque: TStringField
      FieldName = 'no_cheque'
    end
    object MemDetailPiutangcheque_amount1: TFloatField
      FieldName = 'cheque_amount1'
    end
    object MemDetailPiutangdate_tempo_cheque: TStringField
      FieldName = 'date_tempo_cheque'
      Size = 100
    end
    object MemDetailPiutangstatus_dpp_kolektor_harmoni: TStringField
      FieldName = 'status_dpp_kolektor_harmoni'
      Size = 100
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object notrans: TMTStringDataFieldEh
          FieldName = 'notrans'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kode_pelanggan: TMTStringDataFieldEh
          FieldName = 'kode_pelanggan'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object nama_pelanggan: TMTStringDataFieldEh
          FieldName = 'nama_pelanggan'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object tglfaktur: TMTDateTimeDataFieldEh
          FieldName = 'tglfaktur'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object tgltagih: TMTDateTimeDataFieldEh
          FieldName = 'tgltagih'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 100
        end
        object jum_piutang: TMTNumericDataFieldEh
          FieldName = 'jum_piutang'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object no_tagihan: TMTStringDataFieldEh
          FieldName = 'no_tagihan'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object no_Faktur: TMTStringDataFieldEh
          FieldName = 'no_Faktur'
          StringDataType = fdtStringEh
          DisplayWidth = 200
          Size = 200
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
        object id_dpp: TMTStringDataFieldEh
          FieldName = 'id_dpp'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 250
        end
        object cash: TMTNumericDataFieldEh
          FieldName = 'cash'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object receipt: TMTNumericDataFieldEh
          FieldName = 'receipt'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object counter_bill: TMTNumericDataFieldEh
          FieldName = 'counter_bill'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object bank_receipt: TMTStringDataFieldEh
          FieldName = 'bank_receipt'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object date_receipt: TMTStringDataFieldEh
          FieldName = 'date_receipt'
          StringDataType = fdtStringEh
          DisplayWidth = 100
        end
        object name_bank_cheque: TMTStringDataFieldEh
          FieldName = 'name_bank_cheque'
          StringDataType = fdtStringEh
          DisplayWidth = 100
        end
        object no_cheque: TMTStringDataFieldEh
          FieldName = 'no_cheque'
          StringDataType = fdtStringEh
          DisplayWidth = 100
        end
        object cheque_amount1: TMTNumericDataFieldEh
          FieldName = 'cheque_amount1'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object date_tempo_cheque: TMTStringDataFieldEh
          FieldName = 'date_tempo_cheque'
          StringDataType = fdtStringEh
          DisplayWidth = 20
          Size = 100
        end
        object status_dpp_kolektor_harmoni: TMTStringDataFieldEh
          FieldName = 'status_dpp_kolektor_harmoni'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object dsDetailPiutang: TDataSource
    DataSet = MemDetailPiutang
    Left = 272
    Top = 306
  end
end
