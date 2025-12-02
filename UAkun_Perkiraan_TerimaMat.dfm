object FAkun_Perkiraan_TerimaMat: TFAkun_Perkiraan_TerimaMat
  Left = 0
  Top = 0
  Caption = 'List Akun Perkiraan'
  ClientHeight = 417
  ClientWidth = 684
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
  OnShow = FormShow
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 684
    Height = 416
    Align = alTop
    DataSource = DsAkun
    DrawMemoText = True
    DynProps = <>
    FooterRowCount = 1
    HorzScrollBar.ExtraPanel.NavigatorButtons = [nbLastEh, nbInsertEh, nbDeleteEh, nbPostEh, nbRefreshEh]
    HorzScrollBar.ExtraPanel.Visible = True
    HorzScrollBar.ExtraPanel.VisibleItems = [gsbiNavigator, gsbiSelAggregationInfoEh]
    SearchPanel.Enabled = True
    SumList.Active = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code'
        Footers = <>
        Title.Caption = 'Kode Akun Perkiraan'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Akun Perkiraan'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'header_name'
        Footers = <>
        Title.Caption = 'Kategori'
        Width = 200
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QAkun: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        '-- SELECT a.account_code,b.account_name,c.header_name FROM t_ak_' +
        'account_det a'
      '-- left join t_ak_account b'
      '-- on a.account_code=b.code'
      '-- left join t_ak_header c on b.header_code=c.header_code'
      '-- where a.module_id='#39'2'#39
      ''
      ''
      'SELECT DISTINCT * FROM v_search_account'
      ''
      ''
      '')
    Left = 312
    Top = 144
  end
  object DsAkun: TDataSource
    DataSet = QAkun
    Left = 312
    Top = 208
  end
end
