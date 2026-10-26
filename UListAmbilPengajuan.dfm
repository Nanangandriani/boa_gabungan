object FListAmbilPengajuan: TFListAmbilPengajuan
  Left = 0
  Top = 0
  Caption = 'Data Pengajuan'
  ClientHeight = 482
  ClientWidth = 1115
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnShow = FormShow
  TextHeight = 15
  object DBGrid: TDBGridEh
    AlignWithMargins = True
    Left = 3
    Top = 75
    Width = 1109
    Height = 404
    Align = alClient
    AutoFitColWidths = True
    DataSource = DsListPengajuan
    DynProps = <>
    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghAutoSortMarking, dghMultiSortMarking, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
    ReadOnly = True
    SearchPanel.Enabled = True
    TabOrder = 0
    TitleParams.SortMarkerStyle = smstClassicEh
    OnDblClick = DBGridDblClick
    OnSortMarkingChanged = DBGridSortMarkingChanged
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'voucher_no'
        Footers = <>
        Title.Caption = 'No Transaksi'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_date'
        Footers = <>
        Title.Caption = 'Tanggal Pengajuan'
        Width = 125
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'remark'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 300
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'to_'
        Footers = <>
        Title.Caption = 'Kepada'
        Width = 300
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.00'
        DynProps = <>
        EditButtons = <>
        FieldName = 'amount'
        Footers = <>
        Title.Caption = 'Jumlah'
        Width = 150
      end>
    object RowDetailData: TRowDetailPanelControlEh
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1115
    Height = 26
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    ExplicitWidth = 1109
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
        end
        item
        end>
      Index = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 26
    Width = 1115
    Height = 46
    Align = alTop
    Color = 15987699
    TabOrder = 2
    ExplicitWidth = 1109
    object Label1: TLabel
      Left = 15
      Top = 3
      Width = 99
      Height = 34
      Caption = 'Tanggal Periode Pengajuan'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label2: TLabel
      Left = 286
      Top = 15
      Width = 19
      Height = 18
      Caption = 's/d'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Trebuchet MS'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 144
      Top = 14
      Width = 5
      Height = 16
      Caption = ':'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DateTimePicker2: TDateTimePicker
      Left = 312
      Top = 12
      Width = 121
      Height = 21
      Date = 38346.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.189661342599720200
      ImeName = 'US'
      TabOrder = 0
    end
    object BCari: TRzBitBtn
      Left = 439
      Top = 9
      Width = 112
      Height = 30
      Caption = 'Tampilkan'
      TabOrder = 1
      OnClick = BCariClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000330B0000330B00000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000080000080
        000000808000800000008000800080800000C0C0C00080808000191919004C4C
        4C00B2B2B200E5E5E500C8AC2800E0CC6600F2EABF00B59B2400D8E9EC009933
        6600D075A300ECC6D900646F710099A8AC00E2EFF10000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000E8ACDEE3E8E8
        E8E8E8E8E8E8E8E8E8E8E8ACDEE3E8E8E8E8E8E8E8E8E8E8E8E8AC807A81E3E8
        E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8E8CEA37A81E3
        E8E8E8E8E8E8E8E8E8E8E8ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A81
        E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA37A
        81E3E8E8E8E8E8E8E8E8E8E8E3ACE28181E3E8E8E8E8E8E8E8E8E8E8E8D0CEA3
        7AACAD82828288E3E8E8E8E8E8E3ACE281ACE3818181E2E3E8E8E8E8E8E8D0CE
        E28288E6B3E6E682EBE8E8E8E8E8E3ACE281E2ACACACAC81E3E8E8E8E8E8E8E3
        8289B3B3B3D7D7D782E3E8E8E8E8E8E381E3ACACACE3E3E381E3E8E8E8E8E8AD
        88B3E6B3B3D7D7D7E688E8E8E8E8E8E3E2ACACACACE3E3E3ACE2E8E8E8E8E888
        89E6E6B3B3B3D7D7E682E8E8E8E8E8E2E3ACACACACACE3E3AC81E8E8E8E8E882
        E6E6E6E6B3B3B3B3B382E8E8E8E8E881ACACACACACACACACAC81E8E8E8E8E888
        E6B3E6E6E6B3B3B3E682E8E8E8E8E8E2ACACACACACACACACAC81E8E8E8E8E8AD
        88D7D7E6E6E6E6B38888E8E8E8E8E8E3E2E3E3ACACACACACE2E2E8E8E8E8E8E3
        82EBD7B3E6E6E68982E3E8E8E8E8E8E381E3E3ACACACACE381E3E8E8E8E8E8E8
        AD82ADE6E6E68882ADE8E8E8E8E8E8E8E381E3ACACACE281E3E8E8E8E8E8E8E8
        E8E38882828282E3E8E8E8E8E8E8E8E8E8E3E281818181E3E8E8}
      NumGlyphs = 2
    end
    object DateTimePicker1: TDateTimePicker
      Left = 159
      Top = 12
      Width = 123
      Height = 21
      Date = 38346.000000000000000000
      Format = 'dd/MM/yyyy'
      Time = 0.189661342599720200
      ImeName = 'US'
      TabOrder = 2
    end
  end
  object QListPengajuan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT a.voucher_no, a.trans_date, a.remark, a.to_ , a.amount  f' +
        'rom t_cash_bank_expenditure_submission a'
      
        'left join (select * from t_cash_bank_expenditure where deleted_a' +
        't is null) b on a.voucher_no=b.voucher_tmp'
      'where b.voucher_no is null')
    Left = 568
    Top = 104
    object QListPengajuanvoucher_no: TStringField
      FieldName = 'voucher_no'
      Required = True
      Size = 30
    end
    object QListPengajuantrans_date: TDateField
      FieldName = 'trans_date'
    end
    object QListPengajuanremark: TStringField
      FieldName = 'remark'
      Size = 600
    end
    object QListPengajuanto_: TStringField
      FieldName = 'to_'
      Size = 150
    end
    object QListPengajuanamount: TFloatField
      FieldName = 'amount'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DsListPengajuan: TDataSource
    DataSet = QListPengajuan
    Left = 568
    Top = 48
  end
  object DS_Pengajuan: TDataSource
    DataSet = Qdaf_PengajuanKasBank
    Left = 48
    Top = 352
  end
  object Qdaf_PengajuanKasBank: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      '-- SELECT * FROM cash_banks.t_cash_bank_expenditure_submission'
      ''
      
        '-- SELECT a."voucher_no",a."subvoucher",a."remark",a."entry_date' +
        '",a."trans_date",a."periode1",a."periode2",a."amount",a."account' +
        '_code",a."account_name",a."dk",a."debit",a."kredit",a."header_co' +
        'de",a."ref_no",a."posting",a."customer_code",a.supplier_code,a."' +
        'cash_type",a."job_no",a."company_code",a."tp_code",a."trans_year' +
        '",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."bank' +
        '_giro_name",a."giro_due_date",a."customer_name",a."supplier_name' +
        '",a."to_",a."deposit",a."deposit_date",a."TgUP",a."voucher_code"' +
        ',a."to_getout",a."status",a."approve_status",a."approval_date",a' +
        '."approval",a."app_stat",a."currency",a."kurs",a."plan_to",a."bo' +
        'n_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_am' +
        'ount_origin",a."credit_amount_origin",a."created_at",a."created_' +
        'by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by",' +
        'a."trans_type_code",a."trans_type_name",a."bank_number_account",' +
        'a."bank_name_account",a."additional_code",a."id"'
      
        '--  ,b."code_module",b."name_module",b."name_trans",c."code",c."' +
        'name",d."currency_name" FROM cash_banks.t_cash_bank_expenditure_' +
        'submission a '
      
        '-- INNER JOIN t_master_trans_account b on a.trans_type_code=b.co' +
        'de_trans '
      '-- INNER JOIN t_source_payment c on a.additional_code=c.code '
      '-- LEFT JOIN t_currency d on a."currency"=d."currency_name"'
      
        '-- GROUP BY a."voucher_no",a."subvoucher",a."remark",a."entry_da' +
        'te",a."trans_date",a."periode1",a."periode2",a."amount",a."accou' +
        'nt_code",a."account_name",a."dk",a."debit",a."kredit",a."header_' +
        'code",a."ref_no",a."posting",a."customer_code",a.supplier_code,a' +
        '."cash_type",a."job_no",a."company_code",a."tp_code",a."trans_ye' +
        'ar",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."ba' +
        'nk_giro_name",a."giro_due_date",a."customer_name",a."supplier_na' +
        'me",a."to_",a."deposit",a."deposit_date",a."tgup",a."voucher_cod' +
        'e",a."to_getout",a."status",a."approve_status",a."approval_date"' +
        ',a."approval",a."app_stat",a."currency",a."kurs",a."plan_to",a."' +
        'bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_' +
        'amount_origin",a."credit_amount_origin",a."created_at",a."create' +
        'd_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by' +
        '",a."trans_type_code",a."trans_type_name",a."bank_number_account' +
        '",a."bank_name_account",a."additional_code",a."id"'
      
        '--  ,b."code_module",b."name_module",b."name_trans",c."code",c."' +
        'name",d."currency_name" '
      ''
      ''
      
        'SELECT a."voucher_no",a."subvoucher",a."remark",a."entry_date",a' +
        '."trans_date",a."periode1",a."periode2",a."amount", a."account_c' +
        'ode",a."account_name",a."dk",a."debit",a."kredit",a."header_code' +
        '",a."ref_no",a."posting",a."customer_code", a.supplier_code,a."c' +
        'ash_type",a."job_no",a."company_code",a."tp_code",a."trans_year"' +
        ',a."trans_month",a."trans_day", a."order_no",a."giro_no",a."bank' +
        '_giro_name",a."giro_due_date",a."customer_name",a."supplier_name' +
        '",a."to_",a."deposit", a."deposit_date",a."tgup",a."voucher_code' +
        '",a."to_getout",a."status",a."approve_status",a."approval_date",' +
        'a."approval", a."app_stat",a."currency",a."kurs",a."plan_to",a."' +
        'bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit_' +
        'amount_origin",a."credit_amount_origin",a."created_at",a."create' +
        'd_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_by' +
        '",a."trans_type_code", a."trans_type_name",a."bank_number_accoun' +
        't",a."bank_name_account",a."additional_code",a."id" ,'
      'a.cheque_no,a.cheque_date,a.cheque_due_date,'
      
        'b."code_module",b."name_module",b."name_trans",c."code",c."name"' +
        ',d."currency_name",e."source_name" '
      'FROM t_cash_bank_expenditure_submission a '
      
        'LEFT JOIN t_master_trans_account b on a."trans_type_code"=b.code' +
        '_trans '
      'LEFT JOIN t_source_payment c on a."additional_code"=c.code '
      'LEFT JOIN t_currency d on a."currency"=d."currency_code" '
      'LEFT JOIN t_settlement_data_source e  on a."ref_no"=e."code"'
      
        'GROUP BY a."voucher_no",a."subvoucher",a."remark",a."entry_date"' +
        ',a."trans_date",a."periode1",a."periode2",a."amount",a."account_' +
        'code", a."account_name",a."dk",a."debit",a."kredit",a."header_co' +
        'de",a."ref_no",a."posting",a."customer_code",a.supplier_code,a."' +
        'cash_type",a."job_no", a."company_code",a."tp_code",a."trans_yea' +
        'r",a."trans_month",a."trans_day",a."order_no",a."giro_no",a."ban' +
        'k_giro_name",a."giro_due_date",a."customer_name", a."supplier_na' +
        'me",a."to_",a."deposit",a."deposit_date",a."tgup",a."voucher_cod' +
        'e",a."to_getout",a."status",a."approve_status",a."approval_date"' +
        ',a."approval", a."app_stat",a."currency",a."kurs",a."plan_to",a.' +
        '"bon_no",a."bank_norek",a."bank_name",a."amount_origin",a."debit' +
        '_amount_origin",a."credit_amount_origin", a."created_at",a."crea' +
        'ted_by",a."updated_at",a."updated_by",a."deleted_at",a."deleted_' +
        'by",a."trans_type_code",a."trans_type_name",a."bank_number_accou' +
        'nt", a."bank_name_account",a."additional_code",a."id" ,b."code_m' +
        'odule",b."name_module",b."name_trans",c."code",c."name",d."curre' +
        'ncy_code",d."currency_name",e."source_name" '
      'ORDER BY entry_date,voucher_no,trans_date,order_no ASC'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 48
    Top = 288
    object Qdaf_PengajuanKasBankvoucher_no: TStringField
      FieldName = 'voucher_no'
      Required = True
      Size = 30
    end
    object Qdaf_PengajuanKasBanksubvoucher: TFloatField
      FieldName = 'subvoucher'
    end
    object Qdaf_PengajuanKasBankremark: TStringField
      FieldName = 'remark'
      Size = 600
    end
    object Qdaf_PengajuanKasBankentry_date: TDateField
      FieldName = 'entry_date'
    end
    object Qdaf_PengajuanKasBanktrans_date: TDateField
      FieldName = 'trans_date'
    end
    object Qdaf_PengajuanKasBankperiode1: TDateField
      FieldName = 'periode1'
    end
    object Qdaf_PengajuanKasBankperiode2: TDateField
      FieldName = 'periode2'
    end
    object Qdaf_PengajuanKasBankamount: TFloatField
      FieldName = 'amount'
    end
    object Qdaf_PengajuanKasBankaccount_code: TStringField
      FieldName = 'account_code'
      Size = 30
    end
    object Qdaf_PengajuanKasBankaccount_name: TStringField
      FieldName = 'account_name'
      Size = 255
    end
    object Qdaf_PengajuanKasBankdk: TStringField
      FieldName = 'dk'
      Size = 1
    end
    object Qdaf_PengajuanKasBankdebit: TFloatField
      FieldName = 'debit'
    end
    object Qdaf_PengajuanKasBankkredit: TFloatField
      FieldName = 'kredit'
    end
    object Qdaf_PengajuanKasBankheader_code: TStringField
      FieldName = 'header_code'
      Size = 5
    end
    object Qdaf_PengajuanKasBankref_no: TStringField
      FieldName = 'ref_no'
      Size = 30
    end
    object Qdaf_PengajuanKasBankposting: TStringField
      FieldName = 'posting'
      Size = 10
    end
    object Qdaf_PengajuanKasBankcustomer_code: TStringField
      FieldName = 'customer_code'
      Size = 30
    end
    object Qdaf_PengajuanKasBanksupplier_code: TStringField
      FieldName = 'supplier_code'
      Size = 30
    end
    object Qdaf_PengajuanKasBankcash_type: TStringField
      FieldName = 'cash_type'
      Size = 1
    end
    object Qdaf_PengajuanKasBankjob_no: TStringField
      FieldName = 'job_no'
      Size = 30
    end
    object Qdaf_PengajuanKasBankcompany_code: TStringField
      FieldName = 'company_code'
      Size = 3
    end
    object Qdaf_PengajuanKasBanktp_code: TStringField
      FieldName = 'tp_code'
      Size = 3
    end
    object Qdaf_PengajuanKasBanktrans_year: TSmallintField
      FieldName = 'trans_year'
    end
    object Qdaf_PengajuanKasBanktrans_month: TSmallintField
      FieldName = 'trans_month'
    end
    object Qdaf_PengajuanKasBanktrans_day: TSmallintField
      FieldName = 'trans_day'
    end
    object Qdaf_PengajuanKasBankorder_no: TIntegerField
      FieldName = 'order_no'
    end
    object Qdaf_PengajuanKasBankgiro_no: TStringField
      FieldName = 'giro_no'
      Size = 50
    end
    object Qdaf_PengajuanKasBankbank_giro_name: TStringField
      FieldName = 'bank_giro_name'
      Size = 50
    end
    object Qdaf_PengajuanKasBankgiro_due_date: TDateField
      FieldName = 'giro_due_date'
    end
    object Qdaf_PengajuanKasBankcustomer_name: TStringField
      FieldName = 'customer_name'
      Size = 50
    end
    object Qdaf_PengajuanKasBanksupplier_name: TStringField
      FieldName = 'supplier_name'
      Size = 150
    end
    object Qdaf_PengajuanKasBankto_: TStringField
      FieldName = 'to_'
      Size = 150
    end
    object Qdaf_PengajuanKasBankdeposit: TStringField
      FieldName = 'deposit'
    end
    object Qdaf_PengajuanKasBankdeposit_date: TDateField
      FieldName = 'deposit_date'
    end
    object Qdaf_PengajuanKasBankvoucher_code: TStringField
      FieldName = 'voucher_code'
      Size = 2
    end
    object Qdaf_PengajuanKasBankto_getout: TStringField
      FieldName = 'to_getout'
      Size = 100
    end
    object Qdaf_PengajuanKasBankstatus: TSmallintField
      FieldName = 'status'
    end
    object Qdaf_PengajuanKasBankapprove_status: TSmallintField
      FieldName = 'approve_status'
    end
    object Qdaf_PengajuanKasBankapproval_date: TDateField
      FieldName = 'approval_date'
    end
    object Qdaf_PengajuanKasBankapproval: TStringField
      FieldName = 'approval'
      Size = 100
    end
    object Qdaf_PengajuanKasBankapp_stat: TBooleanField
      FieldName = 'app_stat'
    end
    object Qdaf_PengajuanKasBankcurrency: TStringField
      FieldName = 'currency'
      Size = 10
    end
    object Qdaf_PengajuanKasBankkurs: TFloatField
      FieldName = 'kurs'
    end
    object Qdaf_PengajuanKasBankplan_to: TSmallintField
      FieldName = 'plan_to'
    end
    object Qdaf_PengajuanKasBankbon_no: TStringField
      FieldName = 'bon_no'
      Size = 100
    end
    object Qdaf_PengajuanKasBankbank_norek: TStringField
      FieldName = 'bank_norek'
      Size = 30
    end
    object Qdaf_PengajuanKasBankbank_name: TStringField
      FieldName = 'bank_name'
      Size = 255
    end
    object Qdaf_PengajuanKasBankamount_origin: TFloatField
      FieldName = 'amount_origin'
    end
    object Qdaf_PengajuanKasBankdebit_amount_origin: TFloatField
      FieldName = 'debit_amount_origin'
    end
    object Qdaf_PengajuanKasBankcredit_amount_origin: TFloatField
      FieldName = 'credit_amount_origin'
    end
    object Qdaf_PengajuanKasBankcreated_at: TDateTimeField
      FieldName = 'created_at'
    end
    object Qdaf_PengajuanKasBankcreated_by: TStringField
      FieldName = 'created_by'
      Size = 50
    end
    object Qdaf_PengajuanKasBankupdated_at: TDateTimeField
      FieldName = 'updated_at'
    end
    object Qdaf_PengajuanKasBankupdated_by: TStringField
      FieldName = 'updated_by'
      Size = 50
    end
    object Qdaf_PengajuanKasBankdeleted_at: TDateTimeField
      FieldName = 'deleted_at'
    end
    object Qdaf_PengajuanKasBankdeleted_by: TStringField
      FieldName = 'deleted_by'
      Size = 50
    end
    object Qdaf_PengajuanKasBanktrans_type_code: TStringField
      FieldName = 'trans_type_code'
      Size = 100
    end
    object Qdaf_PengajuanKasBanktrans_type_name: TStringField
      FieldName = 'trans_type_name'
      Size = 255
    end
    object Qdaf_PengajuanKasBankbank_number_account: TStringField
      FieldName = 'bank_number_account'
      Size = 100
    end
    object Qdaf_PengajuanKasBankbank_name_account: TStringField
      FieldName = 'bank_name_account'
      Size = 255
    end
    object Qdaf_PengajuanKasBankadditional_code: TStringField
      FieldName = 'additional_code'
      Size = 200
    end
    object Qdaf_PengajuanKasBankid: TLargeintField
      FieldName = 'id'
    end
    object Qdaf_PengajuanKasBankcode_module: TStringField
      FieldName = 'code_module'
      ReadOnly = True
      Required = True
      Size = 100
    end
    object Qdaf_PengajuanKasBankname_module: TStringField
      FieldName = 'name_module'
      ReadOnly = True
      Size = 255
    end
    object Qdaf_PengajuanKasBankname_trans: TStringField
      FieldName = 'name_trans'
      ReadOnly = True
      Size = 255
    end
    object Qdaf_PengajuanKasBankcode: TStringField
      FieldName = 'code'
      ReadOnly = True
      Size = 10
    end
    object Qdaf_PengajuanKasBankname: TStringField
      FieldName = 'name'
      ReadOnly = True
      Size = 255
    end
    object Qdaf_PengajuanKasBankcurrency_name: TStringField
      FieldName = 'currency_name'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object Qdaf_PengajuanKasBanktgup: TDateField
      FieldName = 'tgup'
    end
    object Qdaf_PengajuanKasBanksource_name: TStringField
      FieldName = 'source_name'
      ReadOnly = True
      Size = 255
    end
    object Qdaf_PengajuanKasBankcheque_no: TStringField
      FieldName = 'cheque_no'
      Size = 50
    end
    object Qdaf_PengajuanKasBankcheque_date: TDateField
      FieldName = 'cheque_date'
    end
    object Qdaf_PengajuanKasBankcheque_due_date: TDateField
      FieldName = 'cheque_due_date'
    end
  end
  object DSDetail_Akun_Ajun: TDataSource
    DataSet = QDetail_akun_ajuan
    Left = 182
    Top = 353
  end
  object DSDetail_Hutang_Ajuan: TDataSource
    DataSet = QDetail_Hutang_Ajuan
    Left = 312
    Top = 354
  end
  object QDetail_Hutang_Ajuan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_cash_bank_expenditure_submission_payable')
    Left = 310
    Top = 288
  end
  object QDetail_akun_ajuan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_cash_bank_expenditure_submission_det')
    Left = 182
    Top = 288
  end
  object QTP_Ajuan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'SELECT * FROM t_cost_detail_submission')
    Left = 432
    Top = 288
  end
  object DSTP_Ajuan: TDataSource
    DataSet = QTP_Ajuan
    Left = 432
    Top = 353
  end
end
