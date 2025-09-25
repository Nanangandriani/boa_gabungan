object Fbrowse_akun_kredit: TFbrowse_akun_kredit
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Browse Data Perkiraan'
  ClientHeight = 333
  ClientWidth = 636
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
  OnShow = FormShow
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 636
    Height = 333
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'id'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_code'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kode'
        Width = 108
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Perkiraan'
        Width = 227
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'header_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Kategori'
        Width = 162
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'keperluan'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Keperluan'
        Visible = False
        Width = 107
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = UniQuery1
    Left = 264
    Top = 224
  end
  object UniQuery1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select DISTINCT a.no_perk,b.namasp,b.namap from t_link_modulperk' +
        ' a left join tdata31 b on a.no_perk=b.KODE31'
      'where a.kd_modul=1 and b.namasp<>'#39#39
      'order by a.no_perk')
    Left = 344
    Top = 200
  end
end
