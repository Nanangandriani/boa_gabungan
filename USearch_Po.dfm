object Fsearch_po: TFsearch_po
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Searh Purchase Order'
  ClientHeight = 202
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 0
    Width = 486
    Height = 202
    Align = alClient
    DataSource = DsPo
    DrawMemoText = True
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridEh1DblClick
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'po_no'
        Footers = <>
        Title.Caption = 'No. PO'
        Width = 171
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 267
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object DsPo: TDataSource
    DataSet = Qpo
    Left = 323
    Top = 93
  end
  object Qpo: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select a.sbu_code,a.po_no,a.supplier_code,b.supplier_name,a.tran' +
        's_category from t_po a '
      'inner join t_supplier b on a.supplier_code=b.supplier_code'
      'inner join t_podetail c on a.po_no=c.po_no '
      
        'where c.remaining_sp<>0 and a."approval_status"='#39'1'#39' and a.status' +
        '='#39'1'#39
      'and a.as_status='#39'1'#39
      
        'group by a.sbu_code,a.po_no,a.supplier_code,b.supplier_name orde' +
        'r by a."id" asc')
    Left = 323
    Top = 40
  end
end
