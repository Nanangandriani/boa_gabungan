object FAkun_Perkiraan: TFAkun_Perkiraan
  Left = 0
  Top = 0
  Caption = 'List Akun Perkiraan'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    DataSource = DsAkun
    DynProps = <>
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
        Width = 130
        WordWrap = True
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <
          item
          end>
        FieldName = 'account_name'
        Footers = <>
        Title.Caption = 'Nama Akun Perkiraan'
        Width = 272
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object QAkun: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM t_ak_account')
    Left = 328
    Top = 120
  end
  object DsAkun: TDataSource
    DataSet = QAkun
    Left = 328
    Top = 184
  end
end
