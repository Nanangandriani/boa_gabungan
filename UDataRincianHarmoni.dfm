object FDataRincianHarmoni: TFDataRincianHarmoni
  Left = 0
  Top = 0
  Caption = 'Data Rincian Harmoni'
  ClientHeight = 459
  ClientWidth = 855
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  TextHeight = 15
  object GBRincian: TGroupBox
    Left = 0
    Top = 0
    Width = 855
    Height = 459
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 849
    ExplicitHeight = 450
    object Label23: TLabel
      Left = 18
      Top = 20
      Width = 85
      Height = 15
      Caption = 'Nomor Pegawai'
    end
    object Label24: TLabel
      Left = 128
      Top = 20
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label25: TLabel
      Left = 128
      Top = 79
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label26: TLabel
      Left = 18
      Top = 79
      Width = 40
      Height = 15
      Caption = 'Periode'
    end
    object Label27: TLabel
      Left = 287
      Top = 78
      Width = 17
      Height = 15
      Caption = 's/d'
    end
    object Label1: TLabel
      Left = 128
      Top = 49
      Width = 3
      Height = 15
      Caption = ':'
    end
    object Label2: TLabel
      Left = 18
      Top = 49
      Width = 86
      Height = 15
      Caption = 'Nama Karyawan'
    end
    object edNoKaryawan: TRzButtonEdit
      Left = 140
      Top = 17
      Width = 189
      Height = 23
      Text = ''
      Enabled = False
      TabOrder = 0
      AltBtnNumGlyphs = 1
      ButtonNumGlyphs = 1
      OnButtonClick = edNoKaryawanButtonClick
    end
    object edNamaKaryawan: TEdit
      Left = 140
      Top = 46
      Width = 333
      Height = 23
      Enabled = False
      ReadOnly = True
      TabOrder = 1
    end
    object RzPageControl1: TRzPageControl
      Left = 2
      Top = 152
      Width = 851
      Height = 305
      Hint = ''
      ActivePage = RzTabSheet1
      Align = alBottom
      UseColoredTabs = True
      TabIndex = 0
      TabOrder = 2
      ExplicitTop = 143
      ExplicitWidth = 845
      FixedDimension = 21
      object RzTabSheet1: TRzTabSheet
        Color = clGradientInactiveCaption
        Caption = 'Detail Rincian'
        ExplicitWidth = 841
        object DBGridRincian: TDBGridEh
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 841
          Height = 274
          Align = alClient
          AutoFitColWidths = True
          DataSource = DSDataHarmoni
          DynProps = <>
          FooterRowCount = 1
          HorzScrollBar.ExtraPanel.Visible = True
          SearchPanel.Enabled = True
          SumList.Active = True
          TabOrder = 0
          TitleParams.MultiTitle = True
          OnDblClick = DBGridRincianDblClick
          Columns = <
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'document_number'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Nomor Dokumen'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'official_travel_id'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'ID Surat Tugas'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'component'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Komponen'
              Width = 200
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'cost'
              Footers = <>
              ReadOnly = True
              Title.Caption = 'Biaya'
              Width = 150
            end
            item
              AlwaysShowEditButton = True
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'pilih'
              Footers = <>
              Title.Caption = 'Pilih'
              Width = 75
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'id'
              Footers = <>
              ReadOnly = True
              Visible = False
            end
            item
              CellButtons = <>
              DynProps = <>
              EditButtons = <>
              FieldName = 'component_id'
              Footers = <>
              ReadOnly = True
              Visible = False
            end>
          object RowDetailData: TRowDetailPanelControlEh
          end
        end
      end
      object RzTabSheet2: TRzTabSheet
        Color = clGradientInactiveCaption
        TabVisible = False
        Caption = 'Detail Hutang'
        object DBGridEh2: TDBGridEh
          Left = 0
          Top = 0
          Width = 847
          Height = 280
          Align = alClient
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
    object dtawal: TRzDateTimePicker
      Left = 140
      Top = 76
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      Enabled = False
      TabOrder = 3
    end
    object dtakhir: TRzDateTimePicker
      Left = 310
      Top = 76
      Width = 141
      Height = 23
      Date = 45405.000000000000000000
      Format = ''
      Time = 0.597438842589326700
      Enabled = False
      TabOrder = 4
    end
    object btFind: TRzBitBtn
      Left = 140
      Top = 105
      Width = 109
      Height = 30
      Align = alCustom
      Caption = 'Find'
      TabOrder = 5
      OnClick = btFindClick
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
    object btProcess: TRzBitBtn
      Left = 255
      Top = 105
      Width = 109
      Height = 30
      Align = alCustom
      Caption = 'Process'
      TabOrder = 6
      OnClick = btProcessClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000230B0000230B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8A3787878
        7878787878787878E8E8E8E8818181818181818181818181E8E8E8A3CEA3D5CE
        CECECECECECEA3D578E8E881AC81E3ACACACACACACAC81E381E8E8A3CEA3D5D5
        D5D5D5D5D5D5CED578E8E881AC81E3E3E3E3E3E3E3E3ACE381E8E8A3CEA3D5D5
        0C5BD5D5D5D5CED578E8E881AC81E3E381ACE3E3E3E3ACE381E8E8A3CEA3D5D5
        7F3737D5D5D5CED578E8E881AC81E3E3AC8181E3E3E3ACE381E8E8A3CEA3D5D5
        B137615BD5D5CED578E8E881AC81E3E3E381E3ACE3E3ACE381E8E8A3CEA3D5D5
        D5368C37B1D5CED578E8E881AC81E3E3E381E381E3E3ACE381E8E8A3D5D5A3A3
        A33061615BA3A3A3A3E8E881E3E381818181E3E3AC81818181E8E8A3D5D5D5D5
        D5D9616137D578E8E8E8E881E3E3E3E3E381E3E381E381E8E8E8E8E8A3D5D5D5
        D5D9616137A3E8E8E8E8E8E881E3E3E3E381E3E38181E8E8E8E8E8E8E8A3A3A3
        A336616137E8E8E8E8E8E8E8E88181818181E3E381E8E8E8E8E8E8E8E8E80CD9
        D937616131D9D9E8E8E8E8E8E8E881818181E3E3818181E8E8E8E8E8E8E85CD9
        3D3D6161370C5CE8E8E8E8E8E8E8AC81E3E3E3E38181ACE8E8E8E8E8E8E8E831
        363D3D3631DEE8E8E8E8E8E8E8E8E88181E3E38181DEE8E8E8E8E8E8E8E8E887
        D912D980E8E8E8E8E8E8E8E8E8E8E8E3818181ACE8E8E8E8E8E8E8E8E8E8E8E8
        5C37ACE8E8E8E8E8E8E8E8E8E8E8E8E8AC81ACE8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object MemoAPI: TMemo
      Left = 502
      Top = 32
      Width = 257
      Height = 89
      Lines.Strings = (
        'MemoAPI')
      TabOrder = 7
      Visible = False
    end
    object edKodeKepada: TEdit
      Left = 335
      Top = 17
      Width = 61
      Height = 23
      CharCase = ecUpperCase
      TabOrder = 8
      Visible = False
    end
    object ch_tandai: TCheckBox
      Left = 376
      Top = 109
      Width = 97
      Height = 17
      Caption = 'Pilih Semua'
      TabOrder = 9
      OnClick = ch_tandaiClick
    end
  end
  object MemDataHarmoni: TMemTableEh
    Params = <>
    Left = 80
    Top = 256
    object MemDataHarmonidocument_number: TStringField
      FieldName = 'document_number'
      Size = 100
    end
    object MemDataHarmoniofficial_travel_id: TStringField
      FieldName = 'official_travel_id'
      Size = 100
    end
    object MemDataHarmonicomponent_id: TStringField
      FieldName = 'component_id'
      Size = 500
    end
    object MemDataHarmonicost: TCurrencyField
      FieldName = 'cost'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object MemDataHarmonicomponent: TStringField
      FieldName = 'component'
      Size = 500
    end
    object MemDataHarmoniid: TStringField
      FieldName = 'id'
      Size = 500
    end
    object MemDataHarmonipilih: TBooleanField
      FieldName = 'pilih'
      OnValidate = MemDataHarmonipilihValidate
    end
    object MemDataHarmonitransaction_code: TStringField
      FieldName = 'transaction_code'
      Size = 100
    end
    object MemDataHarmonidescription: TStringField
      FieldName = 'description'
      Size = 500
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object description: TMTStringDataFieldEh
          FieldName = 'description'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object component_id: TMTStringDataFieldEh
          FieldName = 'component_id'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object cost: TMTNumericDataFieldEh
          FieldName = 'cost'
          NumericDataType = fdtCurrencyEh
          AutoIncrement = False
          DisplayWidth = 20
          DisplayFormat = '#,##0.00'
          EditFormat = '#,##0.00'
          currency = False
          Precision = 15
        end
        object component: TMTStringDataFieldEh
          FieldName = 'component'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object id: TMTStringDataFieldEh
          FieldName = 'id'
          StringDataType = fdtStringEh
          DisplayWidth = 500
          Size = 500
        end
        object document_number: TMTStringDataFieldEh
          FieldName = 'document_number'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object official_travel_id: TMTStringDataFieldEh
          FieldName = 'official_travel_id'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
        object transaction_code: TMTStringDataFieldEh
          FieldName = 'transaction_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSDataHarmoni: TDataSource
    DataSet = MemDataHarmoni
    Left = 176
    Top = 256
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
    Top = 256
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 8
    Top = 104
  end
end
