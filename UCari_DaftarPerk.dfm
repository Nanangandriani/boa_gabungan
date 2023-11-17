object FCari_DaftarPerk: TFCari_DaftarPerk
  Left = 0
  Top = 0
  Caption = 'Daftar Perkiraan'
  ClientHeight = 416
  ClientWidth = 639
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object Label1: TLabel
    Left = 28
    Top = 14
    Width = 38
    Height = 13
    Caption = 'CARI..'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 353
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    Visible = False
  end
  object DBGridDaftar_Perk: TDBGridEh
    Left = 0
    Top = 0
    Width = 639
    Height = 416
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 1
    OnDblClick = DBGridDaftar_PerkDblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code'
        Footers = <>
        Title.Caption = 'Kode'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Perkiraan'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'header_name'
        Footers = <>
        Title.Caption = 'Kategori'
        Width = 192
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object Edit1: TEdit
    Left = 138
    Top = 92
    Width = 290
    Height = 21
    Ctl3D = False
    ImeName = 'US'
    ParentCtl3D = False
    TabOrder = 2
    Visible = False
  end
  object QDaftar_Perk: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT b.code,b.account_name,c.header_name FROM t_ak_account_det' +
        ' a'
      'left join t_ak_account b on a.account_code=b.code'
      'left join t_ak_header c on b.header_code=c.header_code')
    LockMode = lmOptimistic
    Left = 70
    Top = 85
  end
  object DataSource1: TDataSource
    DataSet = QDaftar_Perk
    Left = 75
    Top = 38
  end
end
