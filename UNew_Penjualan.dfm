object Finput_penjualan: TFinput_penjualan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Input Data Penjualan'
  ClientHeight = 485
  ClientWidth = 837
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object pninput: TPanel
    Left = 0
    Top = 0
    Width = 837
    Height = 155
    Align = alTop
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 930
    object qty: TLabel
      Left = 8
      Top = 39
      Width = 76
      Height = 13
      Caption = 'Tanggal Invoice'
    end
    object Label3: TLabel
      Left = 101
      Top = 39
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label5: TLabel
      Left = 427
      Top = 12
      Width = 80
      Height = 13
      Caption = 'Nama Pelanggan'
    end
    object Label6: TLabel
      Left = 516
      Top = 12
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label11: TLabel
      Left = 8
      Top = 12
      Width = 55
      Height = 13
      Caption = 'No. Invoice'
    end
    object Label13: TLabel
      Left = 101
      Top = 12
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label1: TLabel
      Left = 8
      Top = 65
      Width = 51
      Height = 13
      Caption = 'No. Faktur'
    end
    object Label4: TLabel
      Left = 101
      Top = 65
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label10: TLabel
      Left = 516
      Top = 40
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label12: TLabel
      Left = 426
      Top = 40
      Width = 62
      Height = 13
      Caption = 'Jatuh Tempo'
    end
    object Label2: TLabel
      Left = 427
      Top = 69
      Width = 52
      Height = 13
      Caption = 'Mata Uang'
    end
    object Label7: TLabel
      Left = 516
      Top = 67
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label8: TLabel
      Left = 516
      Top = 94
      Width = 4
      Height = 13
      Caption = ':'
      Visible = False
    end
    object Labelvalas: TLabel
      Left = 427
      Top = 94
      Width = 21
      Height = 13
      Caption = 'Kurs'
      Visible = False
    end
    object Label9: TLabel
      Left = 8
      Top = 94
      Width = 40
      Height = 13
      Caption = 'Kategori'
    end
    object Label19: TLabel
      Left = 100
      Top = 92
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label22: TLabel
      Left = 8
      Top = 121
      Width = 49
      Height = 13
      Caption = 'Status DO'
    end
    object Label23: TLabel
      Left = 100
      Top = 119
      Width = 4
      Height = 13
      Caption = ':'
    end
    object DTtgl_invoice: TRzDateTimeEdit
      Left = 116
      Top = 36
      Width = 164
      Height = 21
      EditType = etDate
      TabOrder = 0
      OnKeyPress = DTtgl_invoiceKeyPress
    end
    object EdNoInvoice: TRzEdit
      Left = 116
      Top = 9
      Width = 220
      Height = 21
      Text = ''
      DisabledColor = clInfoBk
      Enabled = False
      TabOrder = 1
    end
    object EdFaktur: TRzEdit
      Left = 116
      Top = 63
      Width = 220
      Height = 21
      Text = ''
      DisabledColor = clInfoBk
      Enabled = False
      TabOrder = 2
    end
    object EdPelanggan: TRzEdit
      Left = 531
      Top = 9
      Width = 191
      Height = 21
      Text = ''
      DisabledColor = clInfoBk
      Enabled = False
      TabOrder = 3
    end
    object DTtgl_jatuh_tempo: TRzDateTimeEdit
      Left = 531
      Top = 37
      Width = 164
      Height = 21
      EditType = etDate
      TabOrder = 4
      OnKeyPress = DTtgl_invoiceKeyPress
    end
    object RzBitBtn1: TRzBitBtn
      Left = 342
      Top = 62
      Width = 47
      Height = 24
      Default = True
      ModalResult = 1
      Caption = '...'
      TabOrder = 5
      OnClick = RzBitBtn1Click
      NumGlyphs = 2
    end
    object RzBitBtn2: TRzBitBtn
      Left = 728
      Top = 6
      Width = 23
      Caption = '...'
      TabOrder = 6
      OnClick = RzBitBtn2Click
    end
    object CBmata_uang: TRzComboBox
      Left = 531
      Top = 64
      Width = 121
      Height = 21
      TabOrder = 7
      Text = 'RUPIAH'
      OnChange = CBmata_uangChange
      Items.Strings = (
        'RUPIAH'
        'DOLAR')
      ItemIndex = 0
    end
    object ednilai_valas: TRzEdit
      Left = 531
      Top = 91
      Width = 111
      Height = 21
      Text = ''
      TabOrder = 8
      Visible = False
      OnChange = ednilai_valasChange
    end
    object CBkategori: TRzComboBox
      Left = 116
      Top = 90
      Width = 121
      Height = 21
      TabOrder = 10
      Text = 'DALAM PULAU'
      OnChange = CBmata_uangChange
      Items.Strings = (
        'DALAM PULAU'
        'LUAR PULAU')
      ItemIndex = 0
    end
    object CBstatus_do: TRzComboBox
      Left = 116
      Top = 117
      Width = 121
      Height = 21
      TabOrder = 9
      OnChange = CBmata_uangChange
      Items.Strings = (
        'TANPA DO'
        'PAKAI DO')
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 453
    Width = 837
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 477
    ExplicitWidth = 930
    object BBatal: TRzBitBtn
      Left = 761
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Batal'
      TabOrder = 0
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
      ExplicitLeft = 854
    end
    object BSimpan: TRzBitBtn
      Left = 686
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = BSimpanClick
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
      ExplicitLeft = 779
    end
    object edidjurnal_umum: TEdit
      Left = 124
      Top = 38
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'edidjurnal_umum'
    end
  end
  object DBGridgrn: TDBGridEh
    Left = 0
    Top = 196
    Width = 837
    Height = 187
    Align = alClient
    AllowedOperations = [alopUpdateEh, alopDeleteEh]
    DataSource = DSdetail
    DrawMemoText = True
    DynProps = <>
    EditActions = [geaCutEh, geaCopyEh, geaDeleteEh, geaSelectAllEh]
    FooterRowCount = 1
    HorzScrollBar.ExtraPanel.Visible = True
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SumList.Active = True
    TabOrder = 2
    TitleParams.MultiTitle = True
    OnColEnter = DBGridgrnColEnter
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
            Style = ebsEllipsisEh
            OnClick = DBGridgrnColumns0EditButtons0Click
          end>
        FieldName = 'no_sp_muat'
        Footers = <>
        Title.Caption = 'No SP Muat'
        Width = 145
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_produk'
        Footers = <>
        TextEditing = False
        Title.Caption = 'Nama Produk'
        Width = 213
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'qty'
        Footers = <>
        Title.Caption = 'Qty'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'satuan'
        Footers = <>
        TextEditing = False
        Title.Caption = 'Satuan'
        Width = 78
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'harga'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'Tahoma'
        Footer.Font.Style = [fsBold]
        Footer.Value = 'Subtotal :'
        Footer.ValueType = fvtStaticText
        Footers = <>
        TextEditing = False
        Title.Caption = 'Rupiah | Harga'
        Width = 81
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_harga'
        Footer.Color = clHighlightText
        Footer.DisplayFormat = '#,###;(#,#0.00);#,#0'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'Tahoma'
        Footer.Font.Style = [fsBold]
        Footer.ValueType = fvtSum
        Footers = <>
        ReadOnly = True
        TextEditing = False
        Title.Caption = 'Rupiah | Total Harga'
        Width = 74
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_harga'
        Footers = <>
        Title.Caption = 'Dolar | Harga'
        Visible = False
        Width = 79
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'total_harga_dolar'
        Footers = <>
        Title.Caption = 'Dolar | Total Harga'
        Visible = False
        Width = 90
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'lain'
        Footer.DisplayFormat = '#,###;(#,#0.00);#,#0'
        Footer.Font.Charset = DEFAULT_CHARSET
        Footer.Font.Color = clWindowText
        Footer.Font.Height = -11
        Footer.Font.Name = 'Tahoma'
        Footer.Font.Style = [fsBold]
        Footer.ValueType = fvtSum
        Footers = <>
        Title.Caption = 'Lain - lain'
        Width = 75
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridbrowse: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        DataSource = DSbrowse
        DynProps = <>
        SearchPanel.Enabled = True
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kd_produk'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Kode Produk'
            Width = 87
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_produk'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Produk'
            Width = 226
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'stok'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Stok'
            Width = 57
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'satuan'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Width = 90
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 383
    Width = 837
    Height = 70
    Align = alBottom
    Color = 15987699
    TabOrder = 3
    ExplicitTop = 407
    ExplicitWidth = 930
    object Label17: TLabel
      Left = 480
      Top = 36
      Width = 88
      Height = 16
      Caption = 'GRAND TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 573
      Top = 39
      Width = 5
      Height = 16
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 67
      Top = 8
      Width = 40
      Height = 16
      Caption = 'TOTAL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label21: TLabel
      Left = 113
      Top = 8
      Width = 5
      Height = 16
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label14: TLabel
      Left = 480
      Top = 9
      Width = 24
      Height = 16
      Caption = 'PPN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label15: TLabel
      Left = 573
      Top = 7
      Width = 5
      Height = 16
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label16: TLabel
      Left = 629
      Top = 8
      Width = 11
      Height = 13
      Caption = '%'
    end
    object RzGroupBox1: TRzGroupBox
      Left = 306
      Top = -2
      Width = 350
      Height = 67
      Caption = 'Rupiah'
      Color = 15987699
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      Visible = False
    end
    object EDGrand_total: TRzEdit
      Left = 585
      Top = 35
      Width = 180
      Height = 24
      Text = '0'
      Alignment = taRightJustify
      Color = clInfoBk
      DisabledColor = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      OnChange = EDGrand_totalChange
    end
    object EDTotal: TRzEdit
      Left = 124
      Top = 6
      Width = 176
      Height = 24
      Text = '0'
      DisabledColor = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      OnChange = EDTotalChange
    end
    object Edppn_persen: TRzEdit
      Left = 584
      Top = 6
      Width = 43
      Height = 24
      Text = '0'
      DisabledColor = clInfoBk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnChange = Edppn_persenChange
    end
    object Edppn: TRzEdit
      Left = 647
      Top = 5
      Width = 118
      Height = 24
      Text = '0'
      Alignment = taRightJustify
      DisabledColor = clInfoBk
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnChange = EdppnChange
    end
    object RzGroupBox2: TRzGroupBox
      Left = 867
      Top = 6
      Width = 352
      Height = 67
      Caption = 'Dolar'
      Color = 15987699
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Visible = False
      object RzLabel1: TRzLabel
        Left = 32
        Top = 16
        Width = 24
        Height = 16
        Caption = 'PPN'
        Visible = False
      end
      object RzLabel2: TRzLabel
        Left = 32
        Top = 42
        Width = 88
        Height = 16
        Caption = 'GRAND TOTAL'
        Visible = False
      end
      object RzLabel3: TRzLabel
        Left = 128
        Top = 16
        Width = 5
        Height = 16
        Caption = ':'
        Visible = False
      end
      object RzLabel4: TRzLabel
        Left = 129
        Top = 41
        Width = 5
        Height = 16
        Caption = ':'
        Visible = False
      end
      object RzEdit1: TRzEdit
        Left = 140
        Top = 40
        Width = 180
        Height = 24
        Text = '0'
        Alignment = taRightJustify
        Color = clInfoBk
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        Visible = False
        OnChange = EDGrand_totalChange
      end
      object RzEdit2: TRzEdit
        Left = 202
        Top = 10
        Width = 118
        Height = 24
        Text = '0'
        Alignment = taRightJustify
        DisabledColor = clInfoBk
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Visible = False
        OnChange = EdppnChange
      end
      object RzEdit3: TRzEdit
        Left = 140
        Top = 11
        Width = 43
        Height = 24
        Text = '0'
        DisabledColor = clInfoBk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Visible = False
        OnChange = Edppn_persenChange
      end
    end
    object eddpp: TEdit
      Left = 159
      Top = 76
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'eddpp'
    end
  end
  object edidpiutang: TEdit
    Left = 24
    Top = 541
    Width = 121
    Height = 21
    TabOrder = 4
    Text = 'edidpiutang'
  end
  object Panel2: TPanel
    Left = 0
    Top = 155
    Width = 837
    Height = 41
    Align = alTop
    ParentBackground = False
    TabOrder = 5
    Visible = False
    ExplicitWidth = 930
    object Btn_show_produk: TRzBitBtn
      Left = 1
      Top = 1
      Width = 185
      Height = 39
      Alignment = taLeftJustify
      Align = alLeft
      Caption = 'Tambah Surat Perintah Muat'
      Color = clSkyBlue
      TabOrder = 0
      OnClick = Btn_show_produkClick
      Glyph.Data = {
        FE0A0000424DFE0A00000000000036000000280000001E0000001E0000000100
        180000000000C80A000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9FDF9BBEEBB6ADA6A3ACC
        3A27C6271BC31B1BC31B29C7293DCD3D6EDA6EBFEFBFFAFEFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFF7FDF79AE69A28C72800BB0002C10707C91E0BCE30
        0ED13A0ED13A0BCD3007C81E02C10700BB002CC82C9FE79FF8FDF8FFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFC3F0C32AC92A00BC0008C91F1BE27129F6B12EFCC62EFECB2FFFCE2F
        FFCF2FFECC2EFDC72AF6B21BE27107C91F00BC002DC92DC7F1C7FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EE79E
        05BD0503C30E1CE3762EFCC82FFFCF2BFCC12AFABC29FABA29FABA29FABA29FA
        BA2AFABB2BFCC22FFFD02FFDCA1CE37503C20E06BE06A4E8A4FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF90E39000BB000CCE332B
        F8B92EFECA29F8B527F6B127F6B227F6B227F7B227F6B227F6B227F6B127F6B1
        27F6B127F6B028F7B52FFECD2CF9BB0CCF3400BC0093E493FFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFA6E9A600BC000FD2402FFDC92AF9BA26F3
        A926F4AB26F3AA26F3AA26F3AA24F3A91BF3A51BF3A51AF2A421F3A726F3A925
        F3A925F3A925F3A72BF9BD30FDCC0FD23E01BC01A9E9A9FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFDCF6DC0EC00E0ACB292EFCC627F5AE24F0A124F1A324F1A3
        24F1A224F1A220F1A03CF3ACAFFADEAFFADEB3FBDF54F4B61DEF9E24F0A124F0
        A124F0A123EF9E27F4AF2FFCC80ACB2912C112E2F8E2FFFFFFFFFFFF0000FFFF
        FFFFFFFF64D86402C10B29F4AF29F5B422ED9723EE9B23EE9B23EE9B22EE9A22
        EE9A1BED9749F1ACFEFFFFFFFFFFFFFFFF72F4BE16EC9322ED9922ED9922ED99
        22ED9921EC9429F6B52AF4B103C10C67D867FFFFFFFFFFFF0000FFFFFFCBF2CB
        02BC021CE2742EFBC720EA8F21EB9321EB9321EB9321EB9321EB9221EB921AEA
        8E49EFA6FFFFFFFFFFFFFFFFFF6DF1B714E98B20EA9120EA9120EA9120EA9120
        EA901FE98C2EFBC71CE27603BC03CEF3CEFFFFFF0000FFFFFF61D76105C6172E
        FAC422EC971FE7891FE88B1FE88B1FE88B1FE88B1FE88A1FE88A17E78649ECA0
        FFFFFFFFFFFFFFFFFF6BEFB112E6831EE7891EE7891EE7891EE7891EE7881EE6
        8621EA922DF8C105C51465D865FFFFFF0000EEFBEE17C21713D6502DF9C11CE4
        7E1DE5831DE5831CE5831BE5821BE5821BE5811CE58114E47D47EA99FFFFFFFF
        FFFFFFFFFF68EDAB10E37B1CE4811CE4811CE4811CE4811CE4801DE4801BE27B
        2BF6B913D75019C319EFFBEF0000B9EDB900BC0022EA8F25EFA21AE1771BE27B
        1BE27B1CE27B1CE27B1BE27A1AE17919E1780FE07345E792FFFFFFFFFFFFFFFF
        FF60EAA106DE6D12E07312E07312E07311E07314E0741AE17819E07422EB9721
        E98E00BC00BBEEBB000087E08701C0042AF5B21EE68619DE701ADF730FDD6C73
        ECAADFFBECD2F9E4D0F9E3CEF8E2CAF8DFD5F9E6FFFFFFFFFFFFFFFFFFD7FAE6
        BFF6D8BFF6D8BDF6D7BBF6D6C0F6D98CEFB813DD6C18DD6E1CE27C29F3AD01C1
        068FE28F000064D76405C6162DF9BF1ADF7418DB6918DC6B0ADA628AEDB4FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFBFF5D50EDA6216DB6718DD6D2BF6B806C61876DC76
        000056D35607C91F2EFAC318DB6A16D96216D96308D75A8CEDB2FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFBBF4D10BD65914D85F15D9622BF7BA08C9226ED96E000057D4
        5707C81C2EFBC517DA6713D55914D65B0CD55655E1889EEEBA98EDB79AEDB89D
        EEB99BEDB8B6F2CBFFFFFFFFFFFFFFFFFFC3F4D5A8EFC1AFF1C6B1F1C7B3F1C9
        BDF3D086E9A90DD45314D55715D65C2CF7BA08C91F6ED96E000067D86703C30F
        2EFAC319DD6F11D14F12D35313D3540BD24E04D14805D14A05D14905D14900CF
        423FDC73FFFFFFFFFFFFFFFFFF4FDE7E00CF4007D14908D14A08D14A08D14A0B
        D14B11D25010D14E14D65B2BF7B804C41178DD7800008CE28C00BE0029F4AE20
        E78D0ECD4310D04B10D04B10D04B10D04B10D04B10D04A10D04A06CE4348DB74
        FFFFFFFFFFFFFFFFFF54DD7D05CE4110D04910D04910D04910D04910CF4810CF
        480FCD4219DD6E28F2AA00BE0093E4930000BEEEBE00BB001CE4792CF7BC0ECC
        3E0FCD420FCD430FCD430FCD430FCD430ECD420ECD4204CB3A48D970FFFFFFFF
        FFFFFFFFFF51DB7603CB380ECD410ECD410ECD410ECD410ECC400ECC400CC936
        25EC9E1EE57D00BB00C0EFC00000F3FCF31DC41D0CCE3534FFDE16D8600BC733
        0DCA3B0DCA3B0DCA3B0DCA3B0CCA3A0CCA3A02C83248D76BFFFFFFFFFFFFFFFF
        FF4ED86F01C8300CCA390CCA390CCA390CCA390CC9380BC73310CF4731FDD00C
        CE331FC41FF4FCF40000FFFFFF6DDA6D01C0042AF5B32BF4B70BC7320BC7310B
        C8330BC8330BC8330BC7320BC73200C5294AD667FFFFFFFFFFFFFFFFFF4CD668
        00C5280AC7310AC7310AC7310AC7310BC62F09C32825EC9F2BF5B501BF036FDA
        6FFFFFFF0000FFFFFFD6F5D608BE080FD23F37FFE61CE07A06C01C09C52B09C5
        2B09C52B09C42A09C42A00C2233BD055D3F5D9CFF3D5D6F5DB3DD05601C22209
        C42909C42909C42909C42905BF1A18DA6936FFE40FD24109BE09D8F5D8FFFFFF
        0000FFFFFFFFFFFF6FDB6F00BC001EE67F34FFDC14D55705BD1707C12208C123
        07C12207C12207C12207C12206C12007C12107C12207C12107C12107C12107C1
        2107C12004BD1511D04B32FED71EE68100BD0073DC73FFFFFFFFFFFF0000FFFF
        FFFFFFFFE7F9E719C41900BF0226EF9F35FFE316D75F03BA0E04BD1605BE1A05
        BE1A05BE1A05BE1A04BE1804BE1803BD1704BE1805BE1905BE1904BC1302BA0D
        15D65C34FFE026EE9F01BF031DC51DECFAECFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFB9EEB908BF0804C31124EE9B36FFE61FE58607C12100B60402B90C03BB
        1103BB1103BB1103BB1103BB1103BA0F01B80900B70408C22520E68A36FFE625
        EF9C04C31009BF09BCEEBCFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
        FFFFA9E9A903BE0301BE041AE27035FFE230FBCE1ADD7007C12201B70500B500
        00B40000B40000B50002B80809C42A1DE17B32FDD435FFE21AE37001BE0404BE
        04ABEAABFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFB0EBB011C21100BC000CCE3122EC8F33FFD832FFD629F2AD22E78E1EE2801E
        E38222E9942BF5B534FFDC33FFD822EB8F0BCE3000BC0013C313B5ECB5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        DAF6DA42D04200BC0000BC0007C81D17DE6325EF9A2BF8B92FFCC62EFCC62BF8
        B824EE9917DD6207C81D00BC0000BC0046D146DDF6DDFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD
        FEFDB5ECB543D04305BE0500BB0000BC0001C00302C20A02C20A01C00300BC00
        00BB0006BF0648D148BAEEBAFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFD5F4D589E18952D45231CA311FC61F1FC61F34CB3456D5568EE38ED9
        F5D9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000}
    end
  end
  object Memdetail: TMemTableEh
    Active = True
    CachedUpdates = True
    Params = <>
    Left = 264
    Top = 249
    object Memdetailno_sp_muat: TStringField
      FieldName = 'no_sp_muat'
      Size = 255
    end
    object Memdetailkode_produk: TStringField
      FieldName = 'kode_produk'
      Size = 100
    end
    object Memdetailqty: TIntegerField
      FieldName = 'qty'
    end
    object Memdetailsatuan: TStringField
      FieldName = 'satuan'
    end
    object Memdetailharga: TFloatField
      FieldName = 'harga'
    end
    object Memdetailtotal_harga: TFloatField
      FieldName = 'total_harga'
    end
    object Memdetaillain: TSmallintField
      FieldName = 'lain'
    end
    object Memdetailnm_produk: TStringField
      FieldName = 'nm_produk'
      Size = 255
    end
    object Memdetailtotal_harga_dolar: TFloatField
      FieldName = 'total_harga_dolar'
    end
    object Memdetailharga_dolar: TFloatField
      FieldName = 'harga_dolar'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object no_sp_muat: TMTStringDataFieldEh
          FieldName = 'no_sp_muat'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object kode_produk: TMTStringDataFieldEh
          FieldName = 'kode_produk'
          StringDataType = fdtStringEh
          DisplayLabel = 'kode_produk'
          DisplayWidth = 100
          Size = 100
          Transliterate = True
        end
        object qty: TMTNumericDataFieldEh
          FieldName = 'qty'
          NumericDataType = fdtIntegerEh
          AutoIncrement = False
          DisplayLabel = 'qty'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object satuan: TMTStringDataFieldEh
          FieldName = 'satuan'
          StringDataType = fdtStringEh
          DisplayLabel = 'satuan'
          DisplayWidth = 20
          Transliterate = True
        end
        object harga: TMTNumericDataFieldEh
          FieldName = 'harga'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'harga'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object total_harga: TMTNumericDataFieldEh
          FieldName = 'total_harga'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'total_harga'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object lain: TMTNumericDataFieldEh
          FieldName = 'lain'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object nm_produk: TMTStringDataFieldEh
          FieldName = 'nm_produk'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_produk'
          DisplayWidth = 255
          Size = 255
          Transliterate = True
        end
        object total_harga_dolar: TMTNumericDataFieldEh
          FieldName = 'total_harga_dolar'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object harga_dolar: TMTNumericDataFieldEh
          FieldName = 'harga_dolar'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil
            nil))
      end
    end
  end
  object DSdetail: TDataSource
    DataSet = Memdetail
    Left = 264
    Top = 297
  end
  object DSbrowse: TDataSource
    DataSet = Qbrowse
    Left = 648
    Top = 264
  end
  object Qbrowse: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_produk')
    Left = 512
    Top = 296
  end
  object Qtemp: TUniQuery
    Connection = dm.Koneksi
    Left = 339
    Top = 240
  end
  object Qdate: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT date_part('#39'year'#39', CURRENT_DATE) AS tahun,  date_part('#39'mon' +
        'th'#39', CURRENT_DATE) AS bulan')
    Left = 576
    Top = 272
  end
  object Qtemp2: TUniQuery
    Connection = dm.Koneksi
    Left = 440
    Top = 248
  end
end
