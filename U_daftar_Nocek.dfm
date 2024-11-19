object Fdaftar_nocek: TFdaftar_nocek
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daftar No.Cek & BG'
  ClientHeight = 527
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Label2: TLabel
    Left = 22
    Top = 115
    Width = 61
    Height = 18
    Caption = 'Pencarian'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 23
    Top = 14
    Width = 30
    Height = 18
    Caption = 'Bank'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 23
    Top = 49
    Width = 47
    Height = 18
    Caption = 'No. Rek'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 22
    Top = 85
    Width = 52
    Height = 18
    Caption = 'Cek / BG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnok: TButton
    Left = 265
    Top = 11
    Width = 193
    Height = 25
    Caption = 'PILIH'
    TabOrder = 0
    Visible = False
    OnClick = btnokClick
  end
  object cbbank: TComboBox
    Left = 111
    Top = 12
    Width = 145
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ImeName = 'US'
    ParentFont = False
    TabOrder = 1
    OnChange = cbbankChange
  end
  object cbcek: TComboBox
    Left = 111
    Top = 79
    Width = 145
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ImeName = 'US'
    ParentFont = False
    TabOrder = 2
    Items.Strings = (
      'CEK'
      'BG'
      'SLIP')
  end
  object cbrek: TComboBox
    Left = 111
    Top = 44
    Width = 248
    Height = 26
    Style = csDropDownList
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Trebuchet MS'
    Font.Style = []
    ImeName = 'US'
    ParentFont = False
    TabOrder = 3
  end
  object txtcari: TEdit
    Left = 111
    Top = 113
    Width = 297
    Height = 21
    ImeName = 'US'
    TabOrder = 4
    Visible = False
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 192
    Width = 464
    Height = 335
    Align = alBottom
    DataSource = DSdafcek
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 5
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'cek_no'
        Footers = <>
        Title.Caption = 'No. Cek'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bank'
        Footers = <>
        Title.Caption = 'Bank'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
        Title.Caption = 'Status'
        Width = 100
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 145
    Width = 464
    Height = 47
    Align = alBottom
    TabOrder = 6
    ExplicitTop = 360
    object BCari: TRzBitBtn
      Left = 1
      Top = 1
      Width = 112
      Height = 45
      Align = alLeft
      Caption = 'Tampilkan'
      TabOrder = 0
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
      ExplicitHeight = 39
    end
  end
  object Table1: TUniTable
    TableName = 'T_ITEM_PRODUCT'
    Connection = dm.Koneksi
    Left = 371
    Top = 247
  end
  object qdafnocek: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT '
      
        #9'a.cek_no,a.bank,a.rek_no,a.status,a.cekbg,b.bank_name,b.address' +
        ',b.currency,b.saldo,b.account_no,b.on_behalf_of,b.bank_code'
      'FROM'
      #9't_nocek AS "a"'#9
      
        #9'INNER JOIN t_bank AS b ON a.rek_no = b.rekening_no AND a.bank =' +
        ' b.bank_code')
    Left = 312
    Top = 224
    object qdafnocekcek_no: TStringField
      FieldName = 'cek_no'
      Size = 35
    end
    object qdafnocekbank: TStringField
      FieldName = 'bank'
      Size = 10
    end
    object qdafnocekrek_no: TStringField
      FieldName = 'rek_no'
      Size = 25
    end
    object qdafnocekstatus: TStringField
      FieldName = 'status'
      Size = 1
    end
    object qdafnocekcekbg: TStringField
      FieldName = 'cekbg'
      Size = 5
    end
    object qdafnocekbank_name: TStringField
      FieldName = 'bank_name'
      ReadOnly = True
      Size = 100
    end
    object qdafnocekaddress: TMemoField
      FieldName = 'address'
      ReadOnly = True
      BlobType = ftMemo
    end
    object qdafnocekcurrency: TStringField
      FieldName = 'currency'
      ReadOnly = True
      Size = 25
    end
    object qdafnoceksaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
    end
    object qdafnocekaccount_no: TStringField
      FieldName = 'account_no'
      ReadOnly = True
      Size = 32
    end
    object qdafnocekon_behalf_of: TStringField
      FieldName = 'on_behalf_of'
      ReadOnly = True
      Size = 50
    end
    object qdafnocekbank_code: TStringField
      FieldName = 'bank_code'
      ReadOnly = True
      Size = 100
    end
  end
  object DSdafcek: TDataSource
    DataSet = qdafnocek
    Left = 309
    Top = 292
  end
end
