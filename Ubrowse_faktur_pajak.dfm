object Fbrowse_faktur_pajak: TFbrowse_faktur_pajak
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Data Faktur Pajak'
  ClientHeight = 360
  ClientWidth = 558
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  TextHeight = 13
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 558
    Height = 360
    Align = alClient
    DataSource = DataSource1
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    SearchPanel.Enabled = True
    SearchPanel.FilterOnTyping = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'id_faktur'
        Footers = <>
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'tahun'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Tahun'
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'periode'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Periode'
        Width = 73
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_faktur'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Faktur Pajak'
        Width = 362
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Status'
        Visible = False
        Width = 129
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DataSource1: TDataSource
    DataSet = Qfaktur
    Left = 320
    Top = 208
  end
  object Qfaktur: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT * FROM t_faktur where status='#39'Non Aktif'#39' order by periode' +
        ', no_faktur')
    Left = 520
    Top = 224
  end
end
