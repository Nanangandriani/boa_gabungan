object FCari_SumberMemorial: TFCari_SumberMemorial
  Left = 0
  Top = 0
  Caption = 'Form Sumber Memorial'
  ClientHeight = 464
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 13
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 1023
    Height = 41
    Align = alTop
    Color = 15987699
    TabOrder = 0
    ExplicitWidth = 1031
    object RzLabel1: TRzLabel
      Left = 16
      Top = 14
      Width = 38
      Height = 13
      Caption = 'Tanggal'
    end
    object RzLabel4: TRzLabel
      Left = 88
      Top = 14
      Width = 4
      Height = 13
      Caption = ':'
    end
    object RzLabel2: TRzLabel
      Left = 247
      Top = 14
      Width = 17
      Height = 13
      Caption = 'S/D'
    end
    object DTtgl: TRzDateTimeEdit
      Left = 98
      Top = 11
      Width = 143
      Height = 21
      EditType = etDate
      TabOrder = 0
    end
    object RzBitBtn1: TRzBitBtn
      Left = 424
      Top = 2
      Width = 105
      Height = 37
      Caption = 'Tampilkan'
      TabOrder = 1
      OnClick = RzBitBtn1Click
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
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8B4D8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E281E8E8E8E8E8E8E8E8E8E8E8E8E8
        B46C6CD8E8E8E8E8E8E8E8E8E8E8E8E8E2818181E8E8E8E8E8E8E8E8E8E8E8E8
        B46CD86CD8E8E8E8E8E8E8E8E8E8E8E8E281818181E8E8E8E8E8E8E8E8E8E8E8
        B46C6CD86CD8E8E8E8E8E8E8E8E8E8E8E28181818181E8E8E8E8E8E8E8E8E8D7
        5E6C6C6CB46CD8E8E8E8E8E8E8E8E8D781818181E28181E8E8E8E8E8E8E8E8D7
        89896CB4B4B46CD8E8E8E8E8E8E8E8D7ACAC81E2E2E28181E8E8E8E8E8E8D789
        89D7D7B4C7C7C76CE8E8E8E8E8E8D7ACACD7D7E2ACACAC81E8E8E8E8E8D78989
        D7D7D7D76C6C6CE8E8E8E8E8E8D7ACACD7D7D7D7818181E8E8E8E8E8D78989D7
        D7D75E5EE8E8E8E8E8E8E8E8D7ACACD7D7D78181E8E8E8E8E8E8E8D78989D7D7
        D75EE8E8E8E8E8E8E8E8E8D7ACACD7D7D781E8E8E8E8E8E8E8E8D78989D7D7D7
        5EB4E8E8E8E8E8E8E8E8D7ACACD7D7D781E2E8E8E8E8E8E8E8E85E89D7D7D75E
        B4E8E8E8E8E8E8E8E8E881ACD7D7D781E2E8E8E8E8E8E8E8E8E8E85ED7D75EE8
        E8E8E8E8E8E8E8E8E8E8E881D7D781E8E8E8E8E8E8E8E8E8E8E8E8E85E5EE8E8
        E8E8E8E8E8E8E8E8E8E8E8E88181E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object Dttgl2: TRzDateTimeEdit
      Left = 270
      Top = 11
      Width = 139
      Height = 21
      EditType = etDate
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 535
      Top = 11
      Width = 250
      Height = 21
      TabOrder = 3
      Text = 'Edit1'
      Visible = False
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 41
    Width = 1023
    Height = 423
    Align = alClient
    DataSource = DataSource1
    DrawMemoText = True
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 1
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'notrans'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Trans'
        Width = 121
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nofaktur'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Faktur / Nota'
        Width = 164
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nm_supplier'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Supplier'
        Width = 167
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tgl'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 77
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'dpp'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Dpp'
        Width = 122
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'ppn_rp'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'PPN'
        Width = 95
      end
      item
        CellButtons = <>
        DisplayFormat = '#,###;(#,#0.00);#,#0'
        DynProps = <>
        EditButtons = <>
        FieldName = 'jumlah'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Jumlah'
        Width = 111
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'ket'
        Footers = <>
        Width = 136
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = QSumber_memo
    Left = 616
    Top = 224
  end
  object QSumber_memo: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select nodo notrans,tgl_do tgl,noinv nofaktur,nm_supplier,dpp,pp' +
        'n_rp,(dpp+ppn_rp) jumlah from t_do a INNER JOIN t_supplier b on ' +
        'a.kd_supplier_angkutan=b.kd_supplier')
    Left = 608
    Top = 280
  end
  object QSumber_memo2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select nodo notrans,tgl_do tgl,noinv nofaktur,nm_supplier,dpp,pp' +
        'n_rp,(dpp+ppn_rp) jumlah from t_do a INNER JOIN t_supplier b on ' +
        'a.kd_supplier_angkutan=b.kd_supplier')
    Left = 744
    Top = 176
  end
  object DataSource2: TDataSource
    DataSet = QSumber_memo2
    Left = 752
    Top = 120
  end
end
