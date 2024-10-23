object FCari_UM: TFCari_UM
  Left = 0
  Top = 0
  Caption = 'Forma Cari Uang Muka'
  ClientHeight = 442
  ClientWidth = 713
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object DBGrid_um: TDBGridEh
    Left = 0
    Top = 0
    Width = 713
    Height = 442
    Align = alClient
    DataGrouping.Active = True
    DataGrouping.GroupLevels = <
      item
        ColumnName = 'Column_2_supplier_name'
      end>
    DataSource = DS_UM
    DynProps = <>
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    TitleParams.MultiTitle = True
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_trans'
        Footers = <>
        Title.Caption = 'No Trans'
        Width = 120
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'supplier_name'
        Footers = <>
        Title.Caption = 'Supplier'
        Width = 200
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'um_value'
        Footers = <>
        Title.Caption = 'Nilai Uang Muka'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'po_no'
        Footers = <>
        Title.Caption = 'No.PO'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridCek_Det: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        DynProps = <>
        IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
        TabOrder = 0
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object QUM: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select a.*,b.supplier_name '
      'from purchase.t_advance_payment a'
      'LEFT JOIN t_supplier b on a.supplier_code=b.supplier_code'
      'group by a.supplier_code,b.supplier_name,a.no_trans'
      'order by a.no_trans DESC')
    Active = True
    Left = 384
    Top = 16
  end
  object DS_UM: TDataSource
    DataSet = QUM
    Left = 384
    Top = 72
  end
end
