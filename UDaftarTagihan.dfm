object FDaftarTagihan: TFDaftarTagihan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Daftar Tagihan'
  ClientHeight = 491
  ClientWidth = 1088
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
    Top = 57
    Width = 1088
    Height = 402
    Hint = ''
    ActivePage = TabDetailFaktur
    Align = alClient
    UseColoredTabs = True
    TabIndex = 0
    TabOrder = 0
    ExplicitWidth = 1084
    ExplicitHeight = 401
    FixedDimension = 21
    object TabDetailFaktur: TRzTabSheet
      Caption = 'Detail Tagihan'
      ExplicitWidth = 1080
      ExplicitHeight = 376
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 1084
        Height = 377
        Align = alClient
        DataSource = dsDetailPiutang
        DynProps = <>
        FrozenCols = 5
        HorzScrollBar.ExtraPanel.Visible = True
        SearchPanel.Enabled = True
        SearchPanel.FilterOnTyping = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_cust'
            Footers = <>
            Title.Caption = 'Kode Pelanggan'
            Width = 64
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_cust'
            Footers = <>
            Title.Caption = 'Nama Pelanggan'
            Width = 198
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'customer_name_pkp'
            Footers = <>
            Title.Caption = 'Nama PKP'
            Width = 181
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kabupaten'
            Footers = <>
            Title.Caption = 'Kabupaten'
            Width = 135
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'kecamatan'
            Footers = <>
            Title.Caption = 'Kecamatan'
            Width = 106
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_faktur'
            Footers = <>
            Title.Caption = 'Tanggal | Tagihan'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'tgl_tempo'
            Footers = <>
            Title.Caption = 'Tanggal | Tempo'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_tagihan'
            Footers = <>
            Title.Caption = 'Nomor | Tagihan'
            Width = 168
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'no_faktur'
            Footers = <>
            Title.Caption = 'Nomor | Faktur'
            Width = 167
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jum_piutang'
            Footers = <>
            Title.Caption = 'Jumlah Piutang'
            Width = 152
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'pilih'
            Footers = <>
            Title.Caption = 'Pilih'
            Width = 50
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 459
    Width = 1088
    Height = 32
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 458
    ExplicitWidth = 1084
    object BBatal: TRzBitBtn
      Left = 1012
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
      ExplicitLeft = 1008
    end
    object BSave: TRzBitBtn
      Left = 937
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
      ExplicitLeft = 933
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1088
    Height = 57
    Align = alTop
    Color = 15987699
    TabOrder = 2
    ExplicitWidth = 1084
    object RzLabel1: TRzLabel
      Left = 8
      Top = 21
      Width = 64
      Height = 15
      Caption = 'Karesidenan'
    end
    object RzLabel2: TRzLabel
      Left = 302
      Top = 21
      Width = 57
      Height = 15
      Caption = 'Kabupaten'
    end
    object RzLabel3: TRzLabel
      Left = 593
      Top = 21
      Width = 59
      Height = 15
      Caption = 'Kecamatan'
    end
    object edKaresidenan: TRzButtonEdit
      Left = 78
      Top = 18
      Width = 185
      Height = 23
      Text = ''
      TabOrder = 0
      OnChange = edKaresidenanChange
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKaresidenanButtonClick
    end
    object edKabupaten: TRzButtonEdit
      Left = 368
      Top = 18
      Width = 185
      Height = 23
      Text = ''
      TabOrder = 1
      OnChange = edKabupatenChange
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKabupatenButtonClick
    end
    object edKecamatan: TRzButtonEdit
      Left = 660
      Top = 18
      Width = 185
      Height = 23
      Text = ''
      TabOrder = 2
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edKecamatanButtonClick
    end
    object RzButton1: TRzButton
      Left = 872
      Top = 16
      Width = 113
      Caption = 'Cari'
      TabOrder = 3
      OnClick = RzButton1Click
    end
  end
  object dsDetailPiutang: TDataSource
    DataSet = MemDetailPiutang
    Left = 232
    Top = 202
  end
  object MemDetailPiutang: TMemTableEh
    Params = <>
    Left = 336
    Top = 202
    object MemDetailPiutangno_tagihan: TStringField
      FieldName = 'no_tagihan'
      Size = 500
    end
    object MemDetailPiutangpilih: TBooleanField
      FieldName = 'pilih'
    end
    object MemDetailPiutangno_faktur: TStringField
      FieldName = 'no_faktur'
    end
    object MemDetailPiutangtgl_faktur: TDateField
      FieldName = 'tgl_faktur'
    end
    object MemDetailPiutangjum_piutang: TCurrencyField
      FieldName = 'jum_piutang'
      DisplayFormat = '#,##0.00'
    end
    object MemDetailPiutangtgl_tempo: TDateField
      FieldName = 'tgl_tempo'
    end
    object MemDetailPiutangcode_cust: TStringField
      FieldName = 'code_cust'
      Size = 100
    end
    object MemDetailPiutangname_cust: TStringField
      FieldName = 'name_cust'
      Size = 100
    end
    object MemDetailPiutangcustomer_name_pkp: TStringField
      FieldName = 'customer_name_pkp'
      Size = 100
    end
    object MemDetailPiutangkabupaten: TStringField
      FieldName = 'kabupaten'
      Size = 100
    end
    object MemDetailPiutangkecamatan: TStringField
      FieldName = 'kecamatan'
      Size = 100
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object code_cust: TMTStringDataFieldEh
          FieldName = 'code_cust'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object customer_name_pkp: TMTStringDataFieldEh
          FieldName = 'customer_name_pkp'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object name_cust: TMTStringDataFieldEh
          FieldName = 'name_cust'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object tgl_faktur: TMTDateTimeDataFieldEh
          FieldName = 'tgl_faktur'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 100
        end
        object no_tagihan: TMTStringDataFieldEh
          FieldName = 'no_tagihan'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object no_faktur: TMTStringDataFieldEh
          FieldName = 'no_faktur'
          StringDataType = fdtStringEh
          DisplayWidth = 20
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
        object tgl_tempo: TMTDateTimeDataFieldEh
          FieldName = 'tgl_tempo'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
        object kabupaten: TMTStringDataFieldEh
          FieldName = 'kabupaten'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object kecamatan: TMTStringDataFieldEh
          FieldName = 'kecamatan'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
