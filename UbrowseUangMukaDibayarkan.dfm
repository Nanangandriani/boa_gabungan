object FbrowseUangMukaDibayarkan: TFbrowseUangMukaDibayarkan
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Data Uang Muka'
  ClientHeight = 442
  ClientWidth = 935
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object DBGridOrder: TDBGridEh
    Left = 0
    Top = 0
    Width = 935
    Height = 442
    Align = alClient
    DataSource = DSDetail
    DrawMemoText = True
    DynProps = <>
    IndicatorOptions = [gioShowRowIndicatorEh, gioShowRecNoEh]
    EmptyDataInfo.Active = True
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghDialogFind, dghShowRecNo, dghColumnResize, dghColumnMove, dghExtendVertLines]
    RowDetailPanel.Height = 170
    SearchPanel.Enabled = True
    TabOrder = 0
    OnDblClick = DBGridOrderDblClick
    Columns = <
      item
        CellButtons = <>
        Checkboxes = True
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Pilih'
        Visible = False
        Width = 39
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'voucher_no'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No BK'
        Width = 118
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_trans_down_payment'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'No Uang Muka'
        Width = 168
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Tanggal'
        Width = 80
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pelanggan'
        Width = 200
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_head_name'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Nama Pusat'
        Width = 192
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'sisa_uang_muka'
        Footers = <>
        Title.Alignment = taCenter
        Title.Caption = 'Sisa Uang Muka'
        Width = 124
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 0
        Height = 0
        Align = alClient
        DynProps = <>
        TabOrder = 0
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'notrans'
            Footers = <>
            Title.Alignment = taCenter
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'code_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Kode Barang'
            Width = 150
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_item'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Width = 250
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'amount'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Jumlah'
            Width = 100
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'name_unit'
            Footers = <>
            Title.Alignment = taCenter
            Title.Caption = 'Satuan'
            Width = 100
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
  end
  object DSDetail: TDataSource
    DataSet = Qdetail
    Left = 384
    Top = 272
  end
  object Qdetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from get_down_payment_sales() ')
    Left = 584
    Top = 208
  end
end
