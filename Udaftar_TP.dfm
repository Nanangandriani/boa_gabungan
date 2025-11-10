object FDaftar_TP: TFDaftar_TP
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Daftar TP'
  ClientHeight = 327
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 606
    Height = 327
    Align = alClient
    Caption = 'Panel1'
    TabOrder = 0
    ExplicitHeight = 338
    object DBGridTP_Ajuan: TDBGridEh
      Left = 1
      Top = 1
      Width = 604
      Height = 325
      Align = alClient
      DataSource = DSTP
      DynProps = <>
      FooterRowCount = 1
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbInsertEh, nbDeleteEh, nbEditEh, nbPostEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      SearchPanel.Enabled = True
      SumList.Active = True
      TabOrder = 0
      OnKeyDown = DBGridTP_AjuanKeyDown
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tp_code'
          Footers = <>
          Width = 0
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              Style = ebsEllipsisEh
              OnClick = DBGridEh1Columns1EditButtons0Click
            end>
          FieldName = 'tp_name'
          Footers = <>
          Title.Caption = 'Nama TP'
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'description'
          Footer.Alignment = taRightJustify
          Footer.Value = 'Total :'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'Keterangan'
          Width = 300
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'amount'
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Jumlah'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'voucher_no'
          Footers = <>
          Title.Caption = 'Voucher'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'voucher_tmp'
          Footers = <>
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
    object DBGridTP_Real: TDBGridEh
      Left = 1
      Top = 1
      Width = 604
      Height = 325
      Align = alClient
      DataSource = DSTP_Real
      DynProps = <>
      FooterRowCount = 1
      HorzScrollBar.ExtraPanel.NavigatorButtons = [nbFirstEh, nbPriorEh, nbNextEh, nbLastEh, nbInsertEh, nbDeleteEh, nbEditEh, nbPostEh, nbRefreshEh]
      HorzScrollBar.ExtraPanel.Visible = True
      SearchPanel.Enabled = True
      SumList.Active = True
      TabOrder = 1
      Visible = False
      OnKeyDown = DBGridTP_RealKeyDown
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tp_code'
          Footers = <>
          Width = 0
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <
            item
              Style = ebsEllipsisEh
              OnClick = DBGridTP_RealColumns1EditButtons0Click
            end>
          FieldName = 'tp_name'
          Footers = <>
          Title.Caption = 'Nama TP'
          Width = 150
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'description'
          Footer.Alignment = taRightJustify
          Footer.Value = 'Total :'
          Footer.ValueType = fvtStaticText
          Footers = <>
          Title.Caption = 'Keterangan'
          Width = 300
        end
        item
          CellButtons = <>
          DisplayFormat = '#,##0.00'
          DynProps = <>
          EditButtons = <>
          FieldName = 'amount'
          Footer.DisplayFormat = '#,##0.00'
          Footer.ValueType = fvtSum
          Footers = <>
          Title.Caption = 'Jumlah'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'voucher_no'
          Footers = <>
          Title.Caption = 'Voucher'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'voucher_tmp'
          Footers = <>
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object MemTP: TMemTableEh
    Active = True
    Params = <>
    Left = 384
    Top = 56
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object tp_code: TMTStringDataFieldEh
          FieldName = 'tp_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tp_name: TMTStringDataFieldEh
          FieldName = 'tp_name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object description: TMTStringDataFieldEh
          FieldName = 'description'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object amount: TMTNumericDataFieldEh
          FieldName = 'amount'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object voucher_no: TMTStringDataFieldEh
          FieldName = 'voucher_no'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object voucher_tmp: TMTStringDataFieldEh
          FieldName = 'voucher_tmp'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSTP: TDataSource
    DataSet = MemTP
    Left = 456
    Top = 88
  end
  object DSTP_Real: TDataSource
    DataSet = MemTP_Real
    Left = 328
    Top = 160
  end
  object MemTP_Real: TMemTableEh
    Active = True
    Params = <>
    Left = 256
    Top = 128
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object tp_code: TMTStringDataFieldEh
          FieldName = 'tp_code'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tp_name: TMTStringDataFieldEh
          FieldName = 'tp_name'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object description: TMTStringDataFieldEh
          FieldName = 'description'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object amount: TMTNumericDataFieldEh
          FieldName = 'amount'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object voucher_no: TMTStringDataFieldEh
          FieldName = 'voucher_no'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object voucher_tmp: TMTStringDataFieldEh
          FieldName = 'voucher_tmp'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
end
