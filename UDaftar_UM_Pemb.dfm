object FDaftar_UM_Pemb: TFDaftar_UM_Pemb
  Left = 0
  Top = 0
  Caption = 'Daftar Uang Muka'
  ClientHeight = 434
  ClientWidth = 821
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 821
    Height = 97
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 815
    object Label3: TLabel
      Left = 21
      Top = 21
      Width = 48
      Height = 17
      Caption = 'Supplier'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 289
      Top = 55
      Width = 19
      Height = 17
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 21
      Top = 52
      Width = 46
      Height = 17
      Caption = 'Tanggal'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Button4: TButton
      Left = 548
      Top = 19
      Width = 27
      Height = 21
      Caption = '...'
      TabOrder = 0
      OnClick = Button4Click
    end
    object txtnmsupp: TEdit
      Left = 249
      Top = 19
      Width = 293
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object cbsupp: TEdit
      Left = 160
      Top = 19
      Width = 83
      Height = 24
      CharCase = ecUpperCase
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = []
      ImeName = 'US'
      MaxLength = 5
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 2
    end
    object DtSelesai: TDateTimePicker
      Left = 315
      Top = 52
      Width = 121
      Height = 23
      Date = 45614.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.189661342599720200
      ImeName = 'US'
      TabOrder = 3
    end
    object DtMulai: TDateTimePicker
      Left = 160
      Top = 52
      Width = 123
      Height = 23
      Date = 45614.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.189661342599720200
      ImeName = 'US'
      TabOrder = 4
    end
    object BCari: TRzBitBtn
      Left = 456
      Top = 52
      Width = 86
      Caption = 'Cari ...'
      TabOrder = 5
      OnClick = BCariClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
        E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
        E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
        E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
        E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
        81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
        7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
        E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
        8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
        88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
        89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
        E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
        E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
        88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
        82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
        AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
        E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
      NumGlyphs = 2
    end
  end
  object PGC1: TRzPageControl
    Left = 0
    Top = 97
    Width = 821
    Height = 337
    Hint = ''
    ActivePage = TabSheet1
    Align = alClient
    TabIndex = 0
    TabOrder = 1
    ExplicitWidth = 815
    ExplicitHeight = 328
    FixedDimension = 21
    object TabSheet1: TRzTabSheet
      Color = 15987699
      Caption = 'Data Uang Muka'
      ExplicitWidth = 811
      ExplicitHeight = 303
      object DBGridEh1: TDBGridEh
        Left = 0
        Top = 0
        Width = 817
        Height = 312
        Align = alClient
        AutoFitColWidths = True
        DataSource = DSMem
        DynProps = <>
        ReadOnly = True
        SearchPanel.Enabled = True
        TabOrder = 0
        TitleParams.MultiTitle = True
        OnDblClick = DBGridEh1DblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'supplier_code'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'supplier_name'
            Footers = <>
            Title.Caption = 'Nama Supplier'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'trans_no'
            Footers = <>
            Title.Caption = 'Nomor Transaksi'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'trans_date'
            Footers = <>
            Title.Caption = 'Tanggal'
            Width = 100
          end
          item
            CellButtons = <>
            DisplayFormat = '#,##0.00'
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Caption = 'Jumlah'
            Width = 150
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object MemData: TMemTableEh
    Params = <>
    Left = 200
    Top = 160
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object supplier_code: TMTStringDataFieldEh
          FieldName = 'supplier_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object supplier_name: TMTStringDataFieldEh
          FieldName = 'supplier_name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
          Size = 100
        end
        object trans_no: TMTStringDataFieldEh
          FieldName = 'trans_no'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object trans_date: TMTDateTimeDataFieldEh
          FieldName = 'trans_date'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 20
        end
        object amount: TMTNumericDataFieldEh
          FieldName = 'amount'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object dpp_value: TMTNumericDataFieldEh
          FieldName = 'dpp_value'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object ppn_value: TMTNumericDataFieldEh
          FieldName = 'ppn_value'
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
  object DSMem: TDataSource
    DataSet = MemData
    Left = 179
    Top = 227
  end
end
