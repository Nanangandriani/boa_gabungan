object FDaftarKontrak: TFDaftarKontrak
  Left = 0
  Top = 0
  Caption = 'Daftar Kontrak'
  ClientHeight = 541
  ClientWidth = 1056
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlFilter: TPanel
    Left = 0
    Top = 0
    Width = 1056
    Height = 121
    Align = alTop
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1050
    object GBType1: TGroupBox
      Left = 1
      Top = 1
      Width = 584
      Height = 119
      Align = alLeft
      TabOrder = 0
      object Label9: TLabel
        Left = 129
        Top = 18
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label8: TLabel
        Left = 30
        Top = 18
        Width = 91
        Height = 15
        Caption = 'Nama Pelanggan'
      end
      object Label14: TLabel
        Left = 129
        Top = 47
        Width = 3
        Height = 15
        Caption = ':'
      end
      object Label5: TLabel
        Left = 30
        Top = 47
        Width = 69
        Height = 15
        Caption = 'Jenis Kontrak'
      end
      object Panel2: TPanel
        Left = 2
        Top = 85
        Width = 580
        Height = 32
        Align = alBottom
        TabOrder = 0
        object progress: TGauge
          Left = 8
          Top = 8
          Width = 215
          Height = 17
          ForeColor = clSkyBlue
          Progress = 0
        end
        object btTampilkan: TRzBitBtn
          Left = 432
          Top = 1
          Width = 147
          Height = 30
          Align = alRight
          Caption = 'Tampilkan'
          TabOrder = 0
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
      object edNamaPelanggan: TRzButtonEdit
        Left = 143
        Top = 15
        Width = 293
        Height = 23
        Text = ''
        TabOrder = 1
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNamaPelangganButtonClick
      end
      object edKodePelanggan: TEdit
        Left = 451
        Top = 15
        Width = 96
        Height = 23
        TabOrder = 2
        Visible = False
      end
      object edNamaJenisKontrak: TRzButtonEdit
        Left = 143
        Top = 44
        Width = 293
        Height = 23
        Text = ''
        TabOrder = 3
        AltBtnNumGlyphs = 1
        ButtonNumGlyphs = 1
        OnButtonClick = edNamaJenisKontrakButtonClick
      end
      object EdKodeJenisKontrak: TEdit
        Left = 451
        Top = 44
        Width = 96
        Height = 23
        TabOrder = 4
        Visible = False
      end
    end
  end
  object DBGrid: TDBGridEh
    Left = 0
    Top = 121
    Width = 1056
    Height = 420
    Align = alClient
    DataSource = DsKontrakTagihan
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    OnDblClick = DBGridDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nocontract'
        Footers = <>
        Title.Caption = 'Nomor Kontrak'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'cust_name'
        Footers = <>
        Title.Caption = 'Nama Pelanggan'
        Width = 250
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'address'
        Footers = <>
        Title.Caption = 'Alamat'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'type_contract_name'
        Footers = <>
        Title.Caption = 'Jenis Kontrak'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'periode_end'
        Footers = <>
        Title.Caption = 'Tanggal Berakhir'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QKontrakTagihan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from "sale"."t_billing_contract" '
      'where deleted_at is null order by created_at Desc')
    Left = 660
    Top = 16
    object QKontrakTagihannocontract: TStringField
      FieldName = 'nocontract'
      Required = True
      Size = 255
    end
    object QKontrakTagihancust_name: TStringField
      FieldName = 'cust_name'
      Size = 255
    end
    object QKontrakTagihanaddress: TMemoField
      FieldName = 'address'
      OnGetText = QKontrakTagihanaddressGetText
      BlobType = ftMemo
    end
    object QKontrakTagihantype_contract_name: TStringField
      FieldName = 'type_contract_name'
      Size = 255
    end
    object QKontrakTagihanperiode_end: TDateField
      FieldName = 'periode_end'
    end
    object QKontrakTagihancust_code: TStringField
      FieldName = 'cust_code'
      Size = 100
    end
  end
  object DsKontrakTagihan: TDataSource
    DataSet = QKontrakTagihan
    Left = 737
    Top = 16
  end
end
