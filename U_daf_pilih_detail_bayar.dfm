object frmdafdetailbayar: Tfrmdafdetailbayar
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  ClientHeight = 429
  ClientWidth = 1028
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1028
    Height = 105
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 1026
    object Label1: TLabel
      Left = 429
      Top = 8
      Width = 168
      Height = 17
      Caption = 'SUMBER DATA PEMBAYARAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = [fsUnderline]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 70
      Width = 58
      Height = 15
      Caption = 'Tanggal BK'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 222
      Top = 69
      Width = 19
      Height = 15
      Caption = 'S/D'
    end
    object BCari: TButton
      Left = 383
      Top = 63
      Width = 105
      Height = 25
      Caption = 'Cari..'
      TabOrder = 0
      OnClick = BCariClick
    end
    object BProses: TButton
      Left = 784
      Top = 63
      Width = 105
      Height = 25
      Caption = 'PROSES'
      TabOrder = 1
      OnClick = BProsesClick
    end
    object Dtp1: TDateTimePicker
      Left = 88
      Top = 67
      Width = 129
      Height = 21
      Date = 45948.000000000000000000
      Time = 0.639644039350969300
      TabOrder = 2
    end
    object Dtp2: TDateTimePicker
      Left = 247
      Top = 67
      Width = 129
      Height = 21
      Date = 45948.000000000000000000
      Time = 0.639644039350969300
      TabOrder = 3
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 105
    Width = 1028
    Height = 324
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 1026
    ExplicitHeight = 316
    object DBGridEh1: TDBGridEh
      Left = 1
      Top = 1
      Width = 1030
      Height = 323
      Align = alClient
      DataSource = DSdafsumberbayar
      DynProps = <>
      HorzScrollBar.ExtraPanel.Visible = True
      SearchPanel.Enabled = True
      TabOrder = 0
      Columns = <
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'noref'
          Footers = <>
          Title.Caption = 'No.Ref'
          Width = 120
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'tglref'
          Footers = <>
          Title.Caption = 'Tgl.Ref'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'nm_sumber'
          Footers = <>
          Title.Caption = 'Deskripsi'
          Width = 200
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'keterangan'
          Footers = <>
          Title.Caption = 'Nama Ref'
          Width = 200
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'saldo'
          Footers = <>
          ReadOnly = True
          Title.Caption = 'Jumlah'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'kode_akun'
          Footers = <>
          Title.Caption = 'Kode Akun'
          Visible = False
          Width = 100
        end
        item
          CellButtons = <>
          DisplayFormat = '0.00#,##'
          DynProps = <>
          EditButtons = <>
          FieldName = 'bayar'
          Footers = <>
          Title.Caption = 'Bayar'
          Width = 100
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'pilih'
          Footers = <>
          Title.Caption = 'Pilih'
          Width = 50
        end
        item
          CellButtons = <>
          DynProps = <>
          EditButtons = <>
          FieldName = 'source_id'
          Footers = <>
          Visible = False
          Width = 100
        end>
      object RowDetailData: TRowDetailPanelControlEh
      end
    end
  end
  object Qdafsumberbayar: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      ''
      
        'select noref,tglref, keter,nm_sumber ,total_hutang,akun_um,total' +
        '_hutang-bayar as saldo from '
      
        '(select a.*,(case when b.bayar is null then 0 else b.bayar end)b' +
        'ayar from '
      
        '(select a.no_trans as noref,a.trans_date as tglref,'#39#39' keter,b.su' +
        'pplier_name as nm_sumber ,um_value as total_hutang,a.um_account_' +
        'code as akun_um from t_advance_payment a,t_supplier b '
      
        'where a.um_payment_status=false and a.um_status=true and a.trans' +
        '_date between '#39'2025-12-08'#39' and '#39'2025-12-08'#39' and a.supplier_code=' +
        'b.supplier_code)a left join (select voucher_no,sum(pay) bayar fr' +
        'om t_payment_detail_real '
      
        'GROUP BY voucher_no) b on a.noref=b.voucher_no)zzz  where total_' +
        'hutang-bayar>0 '
      'order by tglref,noref')
    Left = 760
    Top = 16
    object Qdafsumberbayarnoref: TStringField
      FieldName = 'noref'
      ReadOnly = True
      Size = 50
    end
    object Qdafsumberbayartglref: TDateField
      FieldName = 'tglref'
      ReadOnly = True
    end
    object Qdafsumberbayarketer: TMemoField
      FieldName = 'keter'
      ReadOnly = True
      BlobType = ftMemo
    end
    object Qdafsumberbayarnm_sumber: TStringField
      FieldName = 'nm_sumber'
      ReadOnly = True
      Size = 100
    end
    object Qdafsumberbayartotal_hutang: TFloatField
      FieldName = 'total_hutang'
      ReadOnly = True
    end
    object Qdafsumberbayarakun_um: TStringField
      FieldName = 'akun_um'
      ReadOnly = True
    end
    object Qdafsumberbayarsaldo: TFloatField
      FieldName = 'saldo'
      ReadOnly = True
    end
  end
  object Memdafsumberbayar: TMemTableEh
    Active = True
    Params = <>
    Left = 920
    Top = 16
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object noref: TMTStringDataFieldEh
          FieldName = 'noref'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object tglref: TMTDateTimeDataFieldEh
          FieldName = 'tglref'
          DateTimeDataType = fdtDateEh
          DisplayWidth = 200
        end
        object keterangan: TMTStringDataFieldEh
          FieldName = 'keterangan'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object nm_sumber: TMTStringDataFieldEh
          FieldName = 'nm_sumber'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
        object total_hutang: TMTNumericDataFieldEh
          FieldName = 'total_hutang'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 100
          currency = False
          Precision = 15
        end
        object kode_akun: TMTStringDataFieldEh
          FieldName = 'kode_akun'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object saldo: TMTNumericDataFieldEh
          FieldName = 'saldo'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object bayar: TMTNumericDataFieldEh
          FieldName = 'bayar'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object pilih: TMTBooleanDataFieldEh
          FieldName = 'pilih'
          DisplayWidth = 20
        end
        object source_id: TMTNumericDataFieldEh
          FieldName = 'source_id'
          NumericDataType = fdtSmallintEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DSdafsumberbayar: TDataSource
    DataSet = Memdafsumberbayar
    Left = 984
    Top = 32
  end
end
