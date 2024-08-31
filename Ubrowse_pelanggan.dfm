object Fbrowse_data_pelanggan: TFbrowse_data_pelanggan
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Browse Data Pelanggan'
  ClientHeight = 563
  ClientWidth = 1114
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 13
  object DBGridCustomer: TDBGridEh
    Left = 0
    Top = 146
    Width = 1114
    Height = 417
    Align = alClient
    DataSource = dsMasterData
    DynProps = <>
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridCustomerDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KD_PELANGGAN'
        Footers = <>
        Title.Caption = 'Kode Pelanggan'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'NM_PELANGGAN'
        Footers = <>
        Title.Caption = 'Nama Pelanggan'
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'KD_WILAYAH'
        Footers = <>
        Title.Caption = 'Kode Wilayah'
        Visible = False
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'WILAYAH'
        Footers = <>
        Title.Caption = 'Wilayah'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ALAMAT'
        Footers = <>
        Title.Caption = 'Alamat'
        Width = 500
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object pnlFilter: TPanel
    Left = 0
    Top = 0
    Width = 1114
    Height = 146
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 1108
    object GBType1: TGroupBox
      Left = 1
      Top = 1
      Width = 536
      Height = 144
      Align = alLeft
      TabOrder = 0
      object Label24: TLabel
        Left = 100
        Top = 38
        Width = 4
        Height = 13
        Caption = ':'
      end
      object Label23: TLabel
        Left = 34
        Top = 37
        Width = 38
        Height = 13
        Caption = 'Wilayah'
      end
      object Ednamawilayah: TEdit
        Left = 115
        Top = 63
        Width = 349
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object Edkodewilayah: TRzButtonEdit
        Left = 115
        Top = 34
        Width = 240
        Height = 21
        Text = ''
        TabOrder = 1
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = EdkodewilayahButtonClick
      end
      object Panel2: TPanel
        Left = 2
        Top = 110
        Width = 532
        Height = 32
        Align = alBottom
        TabOrder = 2
        object Edautocode: TEdit
          Left = 712
          Top = 4
          Width = 185
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          TextHint = 'Autonumber'
        end
        object btTampilkan: TRzBitBtn
          Left = 384
          Top = 1
          Width = 147
          Height = 30
          Align = alRight
          Caption = 'Tampilkan'
          TabOrder = 1
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
    end
    object GBType2: TGroupBox
      Left = 537
      Top = 1
      Width = 400
      Height = 144
      Align = alLeft
      Caption = 'GBType2'
      TabOrder = 1
    end
  end
  object dsMasterData: TDataSource
    DataSet = MemMasterData
    Left = 384
    Top = 256
  end
  object MemMasterData: TMemTableEh
    Params = <>
    Left = 488
    Top = 256
    object MemMasterDataKD_PELANGGAN: TStringField
      FieldName = 'KD_PELANGGAN'
      Size = 50
    end
    object MemMasterDataNM_PELANGGAN: TStringField
      FieldName = 'NM_PELANGGAN'
      Size = 255
    end
    object MemMasterDataKD_WILAYAH: TStringField
      FieldName = 'KD_WILAYAH'
      Size = 50
    end
    object MemMasterDataWILAYAH: TStringField
      FieldName = 'WILAYAH'
      Size = 255
    end
    object MemMasterDataALAMAT: TStringField
      FieldName = 'ALAMAT'
      Size = 255
    end
    object MemMasterDataKD_KARES: TStringField
      FieldName = 'KD_KARES'
    end
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object KD_PELANGGAN: TMTStringDataFieldEh
          FieldName = 'KD_PELANGGAN'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object NM_PELANGGAN: TMTStringDataFieldEh
          FieldName = 'NM_PELANGGAN'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object KD_WILAYAH: TMTStringDataFieldEh
          FieldName = 'KD_WILAYAH'
          StringDataType = fdtStringEh
          DisplayWidth = 50
          Size = 50
        end
        object WILAYAH: TMTStringDataFieldEh
          FieldName = 'WILAYAH'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object ALAMAT: TMTStringDataFieldEh
          FieldName = 'ALAMAT'
          StringDataType = fdtStringEh
          DisplayWidth = 255
          Size = 255
        end
        object KD_KARES: TMTStringDataFieldEh
          FieldName = 'KD_KARES'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
