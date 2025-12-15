object FbrowseUangMukaPenjualan: TFbrowseUangMukaPenjualan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Data Uang Muka Penjualan'
  ClientHeight = 441
  ClientWidth = 762
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
    Width = 762
    Height = 51
    Align = alTop
    Color = 15987699
    TabOrder = 0
    object RzLabel1: TRzLabel
      Left = 45
      Top = 14
      Width = 41
      Height = 15
      Caption = 'Tanggal'
    end
    object RzLabel3: TRzLabel
      Left = 191
      Top = 14
      Width = 19
      Height = 15
      Caption = 'S/D'
    end
    object DTTanggal1: TRzDateTimePicker
      Left = 96
      Top = 11
      Width = 89
      Height = 23
      Date = 45967.000000000000000000
      Format = ''
      Time = 0.458865937500377200
      TabOrder = 0
    end
    object DTTanggal2: TRzDateTimePicker
      Left = 216
      Top = 11
      Width = 89
      Height = 23
      Date = 45967.000000000000000000
      Format = ''
      Time = 0.458865937500377200
      TabOrder = 1
    end
    object RzBitBtn1: TRzBitBtn
      Left = 328
      Top = 9
      Caption = 'Cari'
      TabOrder = 2
      OnClick = RzBitBtn1Click
      NumGlyphs = 2
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 51
    Width = 762
    Height = 390
    Align = alClient
    DataSource = DSListUangMuka
    DrawMemoText = True
    DynProps = <>
    TabOrder = 1
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_trans'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Uang Muka'
        Width = 184
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pelanggan'
        Width = 237
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_code'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end
      item
        CellButtons = <>
        DisplayFormat = '0.00#,##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'grand_tot'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nilai Uang Muka'
        Width = 150
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sbu_code'
        Footers = <>
        Title.Alignment = taCenter
        Visible = False
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DSListUangMuka: TDataSource
    DataSet = QListUangMuka
    Left = 296
    Top = 184
  end
  object QListUangMuka: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT a.*,b.customer_name FROM t_down_payment_sales a'
      'LEFT JOIN get_customer() b on b.customer_code=a.customer_code')
    Left = 448
    Top = 176
  end
end
