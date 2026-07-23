object FSingkronisasiPusat: TFSingkronisasiPusat
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Sinkronisasi Pusat'
  ClientHeight = 314
  ClientWidth = 619
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
    Width = 619
    Height = 314
    Align = alClient
    Color = 15987699
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 24
      Top = 16
      Width = 24
      Height = 15
      Caption = 'Data'
    end
    object RzLabel2: TRzLabel
      Left = 24
      Top = 45
      Width = 30
      Height = 15
      Caption = 'Bulan'
    end
    object RzLabel3: TRzLabel
      Left = 192
      Top = 45
      Width = 32
      Height = 15
      Caption = 'Tahun'
    end
    object cbData: TRzComboBox
      Left = 59
      Top = 13
      Width = 254
      Height = 23
      TabOrder = 0
      OnChange = cbDataChange
    end
    object cbBulan: TRzComboBox
      Left = 59
      Top = 42
      Width = 120
      Height = 23
      TabOrder = 1
      Text = 'JANUARI'
      OnChange = cbBulanChange
      Items.Strings = (
        'JANUARI'
        'FEBRUARI'
        'MARET'
        'APRIL'
        'MEI'
        'JUNI'
        'JULI'
        'AGUSTUS'
        'SEPTEMBER'
        'OKTOBER'
        'NOVEMBER'
        'DESEMBER')
    end
    object cbTahun: TRzComboBox
      Left = 230
      Top = 42
      Width = 83
      Height = 23
      TabOrder = 2
      OnChange = cbTahunChange
    end
    object btProses: TRzBitBtn
      Left = 319
      Top = 13
      Width = 132
      Caption = 'Proses'
      TabOrder = 3
      OnClick = btProsesClick
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
    end
  end
  object RzGroupBox1: TRzGroupBox
    Left = 0
    Top = 76
    Width = 615
    Height = 235
    Caption = 'Sinkronisasi Terakhir'
    Color = 15987699
    TabOrder = 1
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 16
      Width = 613
      Height = 218
      Align = alClient
      DataSource = DSLog
      DynProps = <>
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'id'
          Footers = <>
          Title.Alignment = taCenter
          Visible = False
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'data_name'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Nama Data'
          Width = 193
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'year'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Tahun'
          Width = 51
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'month'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Bulan'
          Width = 34
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'created_at'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Waktu'
          Width = 92
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'full_name'
          Footers = <>
          Title.Alignment = taCenter
          Title.Caption = 'Disinkron Oleh'
          Width = 199
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object QLog: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT '
      '    a.id,'
      '    a.data_name,'
      '    sdl.year,'
      '    sdl.month,'
      '    sdl.created_at,'
      '    tu.full_name'
      'FROM t_sync_data a'
      'LEFT JOIN t_sync_data_log sdl ON sdl.id_sync_data = a.id'
      '    AND sdl.created_at = ('
      '        SELECT MAX(created_at) '
      '        FROM t_sync_data_log '
      '        WHERE id_sync_data = a.id'
      '    )'
      'LEFT JOIN t_user tu ON tu.user_name = sdl.created_by'
      'ORDER BY a.id ASC;')
    Left = 504
    Top = 23
  end
  object DSLog: TDataSource
    DataSet = QLog
    Left = 552
    Top = 32
  end
end
