object FListApproveDaftarPenagihanPiutang: TFListApproveDaftarPenagihanPiutang
  Left = 0
  Top = 0
  Caption = 'FListApproveDaftarPenagihanPiutang'
  ClientHeight = 442
  ClientWidth = 1374
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1374
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 0
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
        end
        item
          Caption = 'Filter'
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 127
    Width = 1374
    Height = 41
    Align = alTop
    Color = 15987699
    TabOrder = 1
    ExplicitWidth = 1370
    object cbApproveAll: TRzCheckBox
      Left = 382
      Top = 7
      Width = 85
      Height = 19
      AlignmentVertical = avCenter
      Caption = 'Pilih Semua'
      State = cbUnchecked
      TabOrder = 0
      Visible = False
      OnClick = cbApproveAllClick
    end
    object BCorrection: TRzBitBtn
      Left = 577
      Top = -2
      Width = 98
      Height = 37
      Caption = 'Submit Correction'
      TabOrder = 1
      Visible = False
      OnClick = BCorrectionClick
    end
    object BUpdate: TRzBitBtn
      Left = 473
      Top = -2
      Width = 98
      Height = 37
      Caption = 'Update'
      TabOrder = 2
      Visible = False
      OnClick = BUpdateClick
    end
    object cbApprovePenerimaan: TRzCheckBox
      Left = 14
      Top = 9
      Width = 170
      Height = 19
      AlignmentVertical = avCenter
      Caption = 'Approve Lanjut Penerimaan'
      State = cbUnchecked
      TabOrder = 3
    end
  end
  object DBGridEh1: TDBGridEh
    Left = 0
    Top = 168
    Width = 1374
    Height = 274
    Align = alClient
    DataSource = DsDPP
    DrawMemoText = True
    DynProps = <>
    FrozenCols = 9
    RowDetailPanel.Active = True
    TabOrder = 2
    TitleParams.Color = clBtnFace
    TitleParams.FillStyle = cfstSolidEh
    TitleParams.Font.Charset = DEFAULT_CHARSET
    TitleParams.Font.Color = clWindowText
    TitleParams.Font.Height = -12
    TitleParams.Font.Name = 'Segoe UI'
    TitleParams.Font.Style = []
    TitleParams.MultiTitle = True
    TitleParams.ParentFont = False
    OnCellClick = DBGridEh1CellClick
    OnDrawColumnCell = DBGridEh1DrawColumnCell
    OnRowDetailPanelHide = DBGridEh1RowDetailPanelHide
    OnRowDetailPanelShow = DBGridEh1RowDetailPanelShow
    Columns = <
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'pilih'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Pilih'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_desc'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Status'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'status_correction_desc'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Status Koreksi'
        Visible = False
        Width = 89
      end
      item
        CellButtons = <>
        DisplayFormat = 'dd/mm/yyyyy'
        DynProps = <>
        EditButtons = <>
        FieldName = 'created_at'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tanggal Input'
      end
      item
        CellButtons = <>
        DisplayFormat = 'dd/mm/yyyyy'
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_dpp'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tanggal DPP'
        Width = 72
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_collector'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Kolektor|Kode'
        Width = 62
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'nik_collector'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Kolektor|NIK'
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_collector'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Kolektor|Nama'
        Width = 162
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_invoice'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|No Nota'
        Width = 168
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_invoice'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tanggal Faktur'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_cust'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|code_cust'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Pelanggan'
        Width = 202
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'customer_name_pkp'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Nama PKP'
        Width = 174
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'paid_amount'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Piutang'
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'cash'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tunai'
        Width = 75
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bank_receipt'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Bank Resi'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_receipt'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tanggal Resi'
        Width = 95
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'receipt'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Jumlah Resi'
        Width = 85
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_bank_cheque'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Bank Cek/Giro'
        Width = 115
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_cheque'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|No. Cek/Giro'
        Width = 82
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_tempo_cheque'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tanggal Cek/Giro'
        Width = 130
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'cheque_amount1'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Nilai Cek/Giro'
        Width = 115
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'cheque_amount2'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Penerimaan Kolektor|cheque_amount2'
        Visible = False
        Width = 136
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_counter_bill'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|No Kontra Bon'
        Width = 131
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'counter_bill'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Kontra Bon'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_counter_bill'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Tanggal Kontra Bon'
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'wilayah'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Penerimaan Kolektor|wilayah'
        Visible = False
        Width = 78
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_karesidenan'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|code_karesidenan'
        Visible = False
        Width = 122
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'karesidenan'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Karesidenan'
        Width = 111
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'code_regency'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Penerimaan Kolektor|code_regency'
        Visible = False
        Width = 95
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'kabupaten'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Kabupaten'
        Width = 128
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'file'
        Footers = <>
        ReadOnly = True
        TextEditing = False
        Title.Caption = 'Penerimaan Kolektor|File'
        Visible = False
        Width = 41
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'address'
        Footers = <>
        Title.Caption = 'Penerimaan Kolektor|Alamat Kunjungan'
        Width = 126
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'cash_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Tunai'
        Width = 101
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'bank_receipt_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Bank Resi'
        Width = 110
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_receipt_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Tanggal Resi'
        Width = 92
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'receipt_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Jumlah Resi'
        Width = 98
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'name_bank_cheque_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Bank Cek/Giro'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_cheque_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|No. Cek/Giro'
        Width = 102
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_tempo_cheque_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Tanggal Cek/Giro'
        Width = 83
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'cheque_amount1_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Nilai Cek/Giro'
        Width = 100
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'no_counter_bill_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|No Kontra Bon'
        Width = 110
      end
      item
        CellButtons = <>
        DisplayFormat = '#,##0.##'
        DynProps = <>
        EditButtons = <>
        FieldName = 'counter_bill_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Kontra Bon'
        Width = 91
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'date_counter_bill_dpp'
        Footers = <>
        ReadOnly = True
        Title.Caption = 'Daftar Penagihan Piutang|Tanggal Kontra Bon'
        Width = 88
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object DBGridEh2: TDBGridEh
        Left = 0
        Top = 0
        Width = 97
        Height = 118
        Align = alLeft
        DataSource = DSDetail
        DynProps = <>
        TabOrder = 0
        OnCellClick = DBGridEh2CellClick
        OnDrawColumnCell = DBGridEh2DrawColumnCell
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id'
            Footers = <>
            Visible = False
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'file_name'
            Footers = <>
            ReadOnly = True
            TextEditing = False
            Title.Alignment = taCenter
            Title.Caption = 'Gambar'
            Width = 53
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'description'
            Footers = <>
            ReadOnly = True
            Title.Alignment = taCenter
            Title.Caption = 'Deskripsi'
            Visible = False
            Width = 443
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'id_dpp_temp'
            Footers = <>
            Visible = False
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
      object RzPanel2: TRzPanel
        Left = 97
        Top = 0
        Width = 1236
        Height = 118
        Align = alClient
        Color = 15987699
        TabOrder = 1
        object RzListBoxChat: TRzListBox
          Left = 2
          Top = 33
          Width = 1232
          Height = 83
          Align = alClient
          ItemHeight = 15
          TabOrder = 0
        end
        object RzPanel3: TRzPanel
          Left = 2
          Top = 2
          Width = 1232
          Height = 31
          Align = alTop
          Color = 15987699
          TabOrder = 1
          object RzLabel1: TRzLabel
            Left = 6
            Top = 0
            Width = 170
            Height = 15
            Caption = 'Catatan Terima Kas dan Kolektor'
          end
          object BCatatan: TRzButton
            Left = 192
            Top = 3
            Width = 105
            Caption = 'Tambah Catatan'
            TabOrder = 0
            OnClick = BCatatanClick
          end
        end
      end
    end
  end
  object DsDPP: TDataSource
    DataSet = QDPP
    Left = 673
    Top = 128
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 768
    Top = 14
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 930
      FloatTop = 3
      FloatClientWidth = 67
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeReject'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButtonUpdate'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 229
      DockedTop = 0
      FloatLeft = 817
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dtAwal'
        end
        item
          Visible = True
          ItemName = 'dtAkhir'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 188
          Visible = True
          ItemName = 'cbStatus'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 170
          Visible = True
          ItemName = 'edKaresidenan'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton2'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New'
      Category = 0
      Hint = 'New'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002C744558745469746C65004164643B4974656D3B4164644974656D3B
        426172733B526962626F6E3B4974656D3B506C75734E32EF8100000286494441
        54785E5D915D48545B14C77FFB9C199D11CDA264A2C828B2A44891B844491924
        A441915020611045742F04D14B11D1439015193E28652541057D125CEFBDF8D0
        43D017D8BDE0EDC1BC57ED8331106AC6907072C673CEDEAB98738686D9ECBDD8
        9BCDFFBF7E6B2D05D8B7FF1C7962DB768320002020E2DF252F8880E7382F0EEE
        A9691411072004584AA986BDDB5700148A0005FC34BBD537BA09B00172064A6B
        01C0714D8E01113F0882BF15C5610BCF330056BE01DA8000264F1DE803A2E01F
        411B0D4001819BAB3B10E5F74005068288CA11A8020300C1989F225028019409
        5E0631B0A8A204C06ABBF88AD9B4830528CFD501B2600013D4EE89C7B3A1043D
        8FE3B4FF1EA7AB3F4E32AD299BBF387AE7C4068504CD7082261A14C677427B2E
        97FF7ACF6832C3968D0BF9AD75395BEA63A4EC302DC7EFFFB1B8BA3EFAE84C83
        CA1218CF030163C4CF2E86FE810954B14D63C312929922B6ED7F80A722346FAD
        64CDCA8AF5EB769E3C05D85903D71F9F2F3682D6FA077A92BADA1803EF1C1229
        8D339B617246F37ADCA5B6268656E17D40289435D006117F9C205862484CCEF0
        E1AB45C7B9BB686310ED71F8C8358CD6F474FD8AEB780B013B9882017C7CB225
        0891B0E1E3C4341DED6D84141C3A7A8587D78F90CA0883EFA648CFA43FE7C628
        3982D2888D88C218F8A56A0EFF0CC50947A3D8B6C24967F8EFB3CB976F9A91D7
        1F989EFAD20778214067BEA59E9FEE7CB9591044A0BC2CCCD2452564129FF8F7
        E9104B5757D2DD7D8CBFDF24181F1E67622C3EFC71F0DE59C005B08028500ECC
        05E60567412852BEACBAE94267CDEE1B6375AD77646D4BEFDB554DE72F1595C6
        2A8050F58E5E948850B856EFBA094AF8BFEF80058481A22091011CC0AD6ABE6A
        44E03B805C64CDB4C3E1300000000049454E44AE426082}
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002C744558745469746C65004164643B4974656D3B4164644974656D3B
        426172733B526962626F6E3B4974656D3B506C75734E32EF8100000286494441
        54785E5D915D48545B14C77FFB9C199D11CDA264A2C828B2A44891B844491924
        A441915020611045742F04D14B11D1439015193E28652541057D125CEFBDF8D0
        43D017D8BDE0EDC1BC57ED8331106AC6907072C673CEDEAB98738686D9ECBDD8
        9BCDFFBF7E6B2D05D8B7FF1C7962DB768320002020E2DF252F8880E7382F0EEE
        A9691411072004584AA986BDDB5700148A0005FC34BBD537BA09B00172064A6B
        01C0714D8E01113F0882BF15C5610BCF330056BE01DA8000264F1DE803A2E01F
        411B0D4001819BAB3B10E5F74005068288CA11A8020300C1989F225028019409
        5E0631B0A8A204C06ABBF88AD9B4830528CFD501B2600013D4EE89C7B3A1043D
        8FE3B4FF1EA7AB3F4E32AD299BBF387AE7C4068504CD7082261A14C677427B2E
        97FF7ACF6832C3968D0BF9AD75395BEA63A4EC302DC7EFFFB1B8BA3EFAE84C83
        CA1218CF030163C4CF2E86FE810954B14D63C312929922B6ED7F80A722346FAD
        64CDCA8AF5EB769E3C05D85903D71F9F2F3682D6FA077A92BADA1803EF1C1229
        8D339B617246F37ADCA5B6268656E17D40289435D006117F9C205862484CCEF0
        E1AB45C7B9BB686310ED71F8C8358CD6F474FD8AEB780B013B9882017C7CB225
        0891B0E1E3C4341DED6D84141C3A7A8587D78F90CA0883EFA648CFA43FE7C628
        3982D2888D88C218F8A56A0EFF0CC50947A3D8B6C24967F8EFB3CB976F9A91D7
        1F989EFAD20778214067BEA59E9FEE7CB9591044A0BC2CCCD2452564129FF8F7
        E9104B5757D2DD7D8CBFDF24181F1E67622C3EFC71F0DE59C005B08028500ECC
        05E60567412852BEACBAE94267CDEE1B6375AD77646D4BEFDB554DE72F1595C6
        2A8050F58E5E948850B856EFBA094AF8BFEF80058481A22091011CC0AD6ABE6A
        44E03B805C64CDB4C3E1300000000049454E44AE426082}
    end
    object dxBarButton3: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000027744558745469746C6500526566726573683B5265706561743B4261
        72733B526962626F6E3B52656C6F6164CD4DF6E90000030249444154785EA593
        6D4C926B18C76F018114A40D6D619DE98433AAE3F16D7CB173AC43666FE69C7A
        D4F48825339D4E6136D314EB2C23B46C332B957484A0522E5B6E2C31B537B437
        319BCECC17B2652D672FC715E03194AEEE875A6BB53E796DBFDDCF7EF7FFFFE1
        DAB3DB0500D052C6E5A7FEC73B70F2FDC89A4D48D664FA5A5AF5DB1FE4E8928B
        E2226D9F11FB0F04459A7B3D052A63DE0E71B11B91C10E77FA9D5D94DF70DF59
        4E93EB7EC957DF1B4F935FE009B3EBB7A59FE8704C59E6E185E503DC9D7C0B9A
        5B66D8A7BA33243AD4E087F3A4E9F98F683FD1959EBD8BF0B8E6D418BB1F3C9B
        855DA57A23871BC00C15D755FD99D508E1521DE49EB90E833356B8D4F71C726A
        7A460285F11EC48A92CF5D44D973CC50A8BDF504C6FE7780F2CA3044481AFEF5
        FE3598C1DD24F5E10A73F88109958A8DD94DF69E171638D53E0AA2A36D07885E
        E6E95E8476E6D5090AD57D0B66DB02F45B1661DC6A87B4B2F685E0D8C3422284
        21619605FC5DA148ADE884F303D3905C6630112EF5C40D449AB550D5BDBDA314
        D9C99BC862B52379ED6DF478E215C595B9AAFE4B9918D2CC4857CBE4F834A22D
        672287831C881D4B9B2F74232EE918CFA81283FDDA4B1B241CE9062F7E441076
        0C0C19438B2CD63F8A3AD8017187BB4033F61E88EFA8920E882CD24F92F8D1D5
        F3383467B3D846269EFE877CBC5928707372CAB7FFFFF9F01D890783BE98951E
        8628542ACACDDC88ACAF5E3B4C8656090ACBBD4C846802514DE9DEDAFBD038F4
        06E28F742F083395C7F91B44416BFEDACDA731BD38214995E519AA01A837CF41
        A2A213BC422455B8C744828C56E78E8C956B3921E226739666109A47DE81E4DC
        0024286E424CE935F83DA95A87337E41A92A93ECEA14B043F63F2451591CE78A
        01BB5B50DB14B105725D199C28F0FF47FD24EEF86D28D19B4139340BCAC15908
        2F6807DFF042317BCD9650FF14ED33EA8AB0F5384F65AC2B40889FD48CD1394F
        42D2D9BCD53E5BE515BC98DA21EC017BE0C52A877DB797CBC8547716CE786068
        74AE1411E0F90132C61DC3C67030DE18CF2F8EFC7D78C9CFF9136643522887EA
        10230000000049454E44AE426082}
    end
    object dxBarButton4: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Delete'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000023744558745469746C650043616E63656C3B53746F703B457869743B
        426172733B526962626F6E3B4C9696B20000038849444154785E1D906B4C5367
        18C7FF3DBD40CB1A2E32B55C9D598B4CA675D8D13836652E9B0359B67D589665
        3259E644A52571644474CB4CB6ECC23770C4449DD38D2885005E4683AB69C616
        8DA12384264EC8AAAC0C9149A1175ACEE9E939CFDE9EE7E477F2CBFFB924E720
        E6E943CC3B8895D12B00A0FEE3D08167A75A5BBAEEB71D9D081E6B4DA549FBDD
        A3CEEFDD1F3658016818AA98A71FD1915E202DE980A19D741E3EF6E0F8A7FC7F
        673B6979E002C5BC43B4C2581EB8480BE7BA68E6441BEF3B72F03300990C8E1D
        5016554E7B55D6C1ED9543C6C2B5BB739FDF025988838424E4240F10A0D2EAA0
        D26540AD37203CFE17C2C187A3EDBFDE7CF3DAD4748403A06EA8A8E830AC5FB3
        3B7BAB1901B717AE23DFE1CEC5EBEC90A0E0EB71A3CFD981C0B017C6F252180B
        D6BD74BCFA856E003A0CBDFD966DF250532AD4FF038DB734D18557DF21CFB08F
        2E37B5D370ED5E72D7D52BEEF9654CE9F91C1FD392EB0C4D3A0E4BE7F6ECD909
        CFDEFAD381AF4ED0A3D35FD399E272BA3F3D478F971234FD2044BDCE930AF798
        CF2FAED0DF5373CACCFCA92F2970B29DDCAFD7F56B48945E918201C41738945A
        2D581C7461ADA3192AB50AD64F9A010272730CC8D4AA313BE44289D58CF85D3F
        2411504BB28D93845489145E041F9CC1863C09A11BD7E1EFEA86240339463DB2
        B3F59025C0DFD98DD0C83594E6886C360831F408523265D208BC0021B20A35A7
        82B8BC0429C2239A10D812417988007088B14C8A8421EA75A094044A8A48F200
        17E78587629220B370E69F2884EA3750F07E23245946868E43A64EA3B8695F23
        F8EA7A046763EC780AC9640AF155FEB1269AE0BD91AC8CFDF910108E26F15A5B
        33788D1E860CF6CDE7CF225D45FB3F02A0C7CE36076E5CBD84825C3562A20E4B
        097E0CAD051B5FFCA97C9BE4ABAEA05B2FDBE9E6BE0F880F8568FCDB0E1AA9AA
        646C579C654AEF564D15FDB96333FDBCC94A8E751B6A0140DF5168B9E42A7B86
        266AB6D2ED1A1BF559CAC853B58DFCB576F2D7D9D3AE64B777D96862D716EA2F
        2BA76F4CE62B008C1A00C2F9C57F9D8DA2C99212C5E72C85323699F320A77FD2
        72040021DF9885F56BF2204457706F9EC74C4CF2F744169A012430DBF21E00A8
        2B754F98BEC82EEEED7AF2291A306FA451EBD3346633938FF13BF341969D62BD
        CF738AAF6ED6EA4B006882CE77A14ABFD255D2799903606830E4EF28E274070C
        1C67D74255041044C25C9CE43B4149F8B16735F41B8038DB9300E07F6924ECFB
        01D589CC0000000049454E44AE426082}
    end
    object dxBarButton5: TdxBarButton
      Caption = 'Update'
      Category = 0
      Hint = 'Update'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000022744558745469746C65005570646174655461626C654F66436F6E74
        656E74733B5461626C653BEFA5E0D80000025549444154785E85526D48535118
        7EEE36C3849ACDF9B18470FDEB0B9641D4A06CAE7F4912513F8432F0C7E88F65
        D81CD48FF0C7D60429964441069251B00AD9922CCC204BEA4F7EC0C490626E7D
        6C1024C8D0B5CE793BF7DC4B1769D2C37DDE735EEE3DCF79DEF7BD0A0442439F
        C6A0281EE2042202172482B6E77A2ED6C2AFFC78F88CCB4B4405E8B0082AE2F1
        048E3AF13F0406670FE867560B702299AC143800ED76B923994A07CB7906CE39
        044C30201345B507FD40389646389E925485AFC692528C412B47730C1475A0AE
        BEC3357AED9A6067D3161087CC19A7620E0C0135F6BDF8A6F38B140C0E7D962B
        230EC6F81A0EB417F2E6B35E0748F6411104FCCD5BF52900EEED76DC28E2C064
        9400449EA7111949E3FAB305A4171770EB6D0F5A061AE18E54A3F7CD716C6C35
        BB6D7EB3D5D669DE6B94C00C81AE66A7E4698F0577DE87F178E6367EE45238E2
        6A404B831BDB76399F82A31BC0C0DF1218374A5045080AC6E68751B1BE167DC7
        E2720AF19947984CBE43D37E174AF8A1F6D093FE7FA790CB3390FEE72928C5A9
        FA8B60FA78DBF675E142D407E6E0F86DFE0A90D144B69C5B7ADD7177FAA01C9D
        08EE1D768446CF2138DA2EEBAA28AB83B7CE8744E6D5CA443253AADD47AB1A59
        26582E6813AC10B4575E5A4723E99BD43F7D996CE74B0601D4E8DF581ECC76A3
        BC436923D5A91A8AA14A08044FFA91CDCF616A3EB9F4726AB297085145FBB54F
        80F073F11A8F98B00638612EF0301C898E4F60B3CDBAA171E79E2B0E6B65A2DA
        6A4FD46EAADACD0931AD076B81A895183EA632D9E8BDEFD91E22AA07E1031186
        01BA0F4212027F001ABA574BB80B6B080000000049454E44AE426082}
    end
    object dxBarButton6: TdxBarButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        610000002A744558745469746C650052656672657368416C6C5069766F745461
        626C653B526566726573683B5570646174653B80B9A4FD000002714944415478
        5E5D936B48536118C775373D8D3235D7583A576ACB9A49105B17A274122E5D33
        8DCDCD5C6E2DC12E7633ED02D6666464B58D2E2BA304175A560C4B12AB6F19B4
        3EA8501059D482A8BE46DF6AF0F43C87F7C838077E7BDEE7FF9EFDDFCB9F9326
        7AD21912448AC85895902E42FCF0A2D4D3BDD6EEF31B07F6F6983EB69E33FDA5
        4A3DE9382F27535FC0E8171B496ABCFAFCC66365A1A6AEF2E4D86404DE2726E0
        C7EF29BE524FBAE3685998BD036C67E9C2CAF2BAFDA5A1BBA3A7E0C3CF18449F
        77C1F1A0051A3B5653E57B5E7F7606E98686432BC9408148F8D5AB3D45CEED6D
        CB93F12F57E0EC6D2B58BCC5239BEAB54DAA02653155EAAFC59A219EB8046F12
        7D80EF924126DB459A6C6BCBB2C148CC05171F58A1CABD742447CD15A09EC3C8
        AB74E9C2A7FB2BE0D1740B8FC55744069C602037BB0B67AB76EB803059350ED4
        16201C51E1D29E275D4CEA0E144836B29860ABCE63BA9CC66C5E8DE4231A6411
        9221DC8102E30231185D802263464AC791F206610E639C4DBDC40C8AE5D79F69
        9EE8B81FEC870D7D6C65391994ACC9CDC60887C65E5F87D15761C071947421C6
        4C8A25FE2DCC7367FC20D8F6AD18B6784B761836A8726B5BF5D6BA03A5F74243
        6DF0F66B84224C567B4ADC642E1870144BCF600DCF939976B8F5D4079D97B7C1
        CE76039C0CDAE0FE8B1330F9A9170203B58091DFC045B310D9DC0E28167393EE
        26C6D58FE364F0613D4C4C75C0BBEF17E0E54C275C7D6C07D2CDBB7491551BF3
        F4EC7812C140B1C5A9EDA5BC11F53A9B66CF66A776B8B2B9F033C6F58F2AF5EB
        6D4BBC2C2165EAF60929C2B189F9C84216938AC5AA627D56CAC54AC45FA18C10
        6E5D304C8163BA54FC29FF073A900E21C7F057FD0000000049454E44AE426082}
    end
    object dxBarButton7: TdxBarButton
      Caption = 'Delete'
      Category = 0
      Hint = 'Refresh'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
        6100000029744558745469746C650052656D6F76653B44656C6574653B426172
        733B526962626F6E3B5374616E646172643B635648300000026449444154785E
        A551494C5351146568194A2B583746627F458902118892AAB811369246043462
        8556D032A82D831664486D8C3FB40B8128E3C68998A289625720314469022591
        26566BC484681C22C6012B5A1556C7F73EBF507FDCF193F3DFBBE7DC7BDE7BF7
        86005811B820E80B2310F16B6880E4F7E10462AAF3F1B2014F889E961FBB307D
        AAE2EBC8FEDC137C72280FB1AB546BA0DAE4F11296C491940F36089F2CD5593F
        DFE8C682771453E71B31909D6D207C044D76166B8C339D1789E6C4A76B5D18D7
        15D9A869B04184A744E7FBED72C03FD08EF9B13BF09CADC1F50C55CDE08182DA
        B7ED562CB807E1BFDB06FF701F3C47753E52131D6C20B2EFCA343C31EAF1D3D1
        89B93E167F1EF5E37155255ED92C989F70E0C74D96E3C734F9B89498749A1E2A
        EC41644F4A6AF5B8F6107C7D2D98ED6D847FE80A7EDDBF8A6FBD4D98ED69C088
        3A0BD678A589E44A843D089844DB141B4D0FF3D5F8D251878FAC9EA08C5B87F6
        EC44B37C6D23C991F2530AF99F81E472BAAA7E42AFC307B612EFEA0E2FC1A52D
        446B5A4633C991090D968A5B93D24D4EAD06336DF5982E5363BA9C07D9BF674F
        62B4F020AC9B53976EF1CF145A36249B1EE4E5E28DA5022F8AB23045706B1383
        DB498974CFE1F599620CAB736061B63409A720ED5624CFBD341E81B760379EE5
        65A23F410183487ACE208EB1F42728E1CDCFE4F0BC641FBA9894395213176C10
        655EA3EC706CDF06778E0A76C57A5447C8E87B63298C91B166BB92817BEF0EDC
        4BDB8A0639D34DF8986083309A58278BEFB0C631BEAAC5E255940F6886A8D566
        A27DAF95ADEB22B15CD883808984208E209A8F859A9C6F6078F0145684BF98E8
        BFC080A205F60000000049454E44AE426082}
    end
    object dxBarUpdate: TdxBarButton
      Action = ActUpdate
      Category = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000009704859730000136100001361011D7D0BC7000000206348524D0000
        7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
        C546000003674944415478DAAC956D6C935514C77F4F9F87BED197B5C96698A3
        84CD4C0C8E0515944C88463F181533247341867398810BBE0CB3A8335111A726
        26644A34230B9861826F89224618388CC100716108CA52B46CB8AEEDB6D2B88E
        BDB55DDBE7F845E7BA17F10337B9C9C93DE7FC72EFB9FF7BAE22225CCFA14CB1
        55E0266033700AF8FD3FF28680F06C0E6D8A5D9E5378F3017732816978887E77
        36BB76EE60B03FC4D5E161545545D334144561F7074DA96030F414F0F15C3B7C
        7D7DD192DA8A95CBB316582D2C76D868E9F88550E152DEDFFDE1B49434A56B1F
        229D8CF3EDB1130DC0AB53BDAA41510E7C575DF16CEDEA95E6F64E2FD18924F9
        2E27AD274F71F86217ABEFBB07B32644C27D4C24C6888D8FE2FDCDC7B2E26292
        C9D49A9E1EFF25E0C22471CFA30FCAF75B36CA0287AD776BDD767DE18DB95260
        D2A4FEED0649495CDE7DA7415EACAB95FA97EAA4DBD729A3C3574452A3222272
        F2449B00DB336A181E19E3E9AF8EAC03FAAAD697B6AF2A5A86584C3C59B68196
        7D7BE80D0430A80620C1E123AD6CABD9CAF8F83856FB7C0606C200E319C0378E
        FF9800BE06D676777553F9441541BF8FF6D33F60B3DB292959F56FB0A672F6E7
        73E8BACED2A2628C26E3CC5BD6455AFFB6DD3939D99C3FD7416363232282C56C
        C6A0AA93C1BAAE138BC55050D8F64C0D6EB77B56D96CFA273E9148E07038B965
        49E135059C95E52218F04F5DCA03FED480D10C1D29A028866B020D060564F241
        003403A1A9C2C66C32138D46F9F542E7AC101141749D458B3C58AD16B4791A40
        04C0A4A9773BCDE6400670301A65C55D256CA9DE3C03964EA77039B3C8CB2FA0
        6EC79B3435EFA562E30680AB40F95B0FDC6B6F3A7DD69B018CC7E3381C59DC71
        FBF269301D87CB8DA0515BFF0AC1835FF293AA110847B8F586ECCFF6953DEC6A
        0FF4D13D186DD632EB62008491918CB262B7DBF05DEEE1CEDB5650E93071B4A6
        8A56EF2562BD3E3E7AA1DAF58DB78BE70E1DDB0BB419FE4F4B9A984862351929
        2B7F0CBF289CBFDC83324FE3626C82FB9B3FF963DDFE2F9E07AAA7E76DFAFCD3
        FD2222327825903123037E191B0A8B8848CBA183E2B1CD977C4F9EBCF6DE2E01
        1E9FAB7D398D461300168B65E60D23C44622543E52CAE2E3470987FA292A2C60
        27E4CED560D7783C0B5F76B95C2493C9390E2FA4532972737371BADC749C3943
        30186A04DA2681D7FB0BF86B00AE57698FE6D4F6320000000049454E44AE4260
        82}
    end
    object dxBarRefresh: TdxBarButton
      Action = ActRO
      Category = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000009704859730000136100001361011D7D0BC7000000206348524D0000
        7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
        C546000002FE4944415478DAAC95CD8B5C4514C57FB75EBD7A6927743B93C964
        662492C46C020A3119246A364A247EEB2622B80BA81B17A22EFC03DCB90BBA10
        7125B85286E84211348E814451277E04B131A26432EA74263D5FDD9D7EFD5ED5
        75F15E4FC72181282928A85ADC7BCF3DE7DC2A51556EE4B2579C9F021E043A80
        BFCEF808A8011F03EF0188AA62EA6BDBF6D5574FFD11745716FE3B2AAFA41D0D
        9F93C7CF89AA124FCF9D96343F8035FFBF57AFA88BBEB70036CD0FE00C848D7C
        16F74A64187686952CD0CEF5DAE4F97CAF0588626DA37E08110405010DF0F4CE
        2A2FEEAE3159898804BCC242D7F3C6B915DE3DB784460615037D6185B6057026
        8492505EBD7D8C2D4E487DE0D189CDCC5CBCCC6B3FB758E8668C6EB23C3EB199
        37F78DF2CCCE2A8F7D7601950CCC3A55C102C426ACB75891C0D11DC3009C59EA
        F2CA99791401115881937FAFF27A7D911F0FEFE2F8A15B38F2C5EF14688A0C06
        20164F2C1E2B810FE69A347B9E1F96534E345A6CB245C1583CB1F1D808963B5D
        F67F5AE7E0CD0987C76B38930F721409075E71165E98FD93D3175741401462D9
        20400CCB69CE6FAD1E2FEF19E6CBC54BA8CAC0D88396E1EDA9ED7CDD6CF3EDA5
        A5A20FB9BAA8224A7DB5C3A1F11A56B4A8DC4FE8CC6030D6B29CBB478648A2C0
        55A752C094F67A7FAEC9F47CF35FF1162029111A0D1CFBB5C15B533BD85D55CE
        AF0514B902A4E2303C7CDB56EEAD5599A8C43C3FFB0B8919542E443125E14639
        DB6AF0CD7287E97BEE64AB8BA84419CEF8720754728E6E1FE5FEF12A7B6A158E
        8C8DE0CAF8D894A22452423682F19E97BEFA89635377F0C97D7B393EDF6066A1
        C9629AB225711C1C1DA112457CD858649B750C571C89C9D7451155E58113A75A
        C01014A63746B126F0D0D8244FDE3AC988737DFA58EA654CCFFDC547E72F4024
        C4B125CD425FBCB6A82A8FCC9C2CE6AD9CDDFE49110C4A624CAF12D9EE659F27
        DDE01390BEA805B325C9A252AA1CE97726F8FD7A0D8FA87AD7C933074222E5A3
        211BC557309CB5003765D913C1C93BA27AD78647F77A570E66368D7BCFCA8DFE
        02FE19007E4E40427BAAAF350000000049454E44AE426082}
    end
    object dxBarDelete: TdxBarButton
      Action = ActDel
      Category = 0
      Glyph.SourceDPI = 96
      Glyph.Data = {
        89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
        0D00000009704859730000136100001361011D7D0BC7000000206348524D0000
        7A25000080830000F9FF000080E9000075300000EA6000003A980000176F925F
        C546000003D24944415478DAAC954D6C945514869FFBF7FDCC74DA426768490B
        05943682092BA389898924C4880B8DC10D1B16155DB1616D24685C023B636264
        6320514360638824C6445D1058A9D4084A143A949F5A3A9DCE37DFCCF7738F8B
        16D00571C3494E727317EF79CF7DDF73AE12119E64689E702801E6D6D7B9BA7D
        DBF8B0F40FA98AD96F22B5C9860A13ADE5DAF9D11D9840B7ED5079D6A4958FC3
        E93B97DC2BB380605B51441A84BBB570A1B4DAD8D5427F80F440AD7520807A40
        42008392299FBA03AA3007BC7787690F9F6010D40F5B9F192FE2B019ADB239A2
        AD3A6E2A745CE8D115C1040E1B80AA2854CDE3ACC1198D8B2C6A40F69BD09F32
        3A22A8B2D7EEFBF6BC96521F574A81F71F96A97C405E7694F214DEE2FB355CA9
        1172BC29A92D0E112701B901B18AB0969F3661B11B11BC2F3F07D085B5FB8C78
        4C2F3BA2BB295A79147EB444EF889736B0A4074807AB4CCC4F30727D1341D76D
        290399EA9516AF342692EF08F31BA047565516AF1564194EF46048311AE3B5F9
        32D2E9ACB1ED77EF879A321C265CA8938FB45E5CAE277F9A9EBE2AF794EA2F1A
        284294577328BF6A1BB5F6CAFD3854BEE779F6FB2B0CDCE89CE85407286A773E
        0983CEFB516A284616F7CC4D367FCC5602D68D27EF6D3874512A532DCA851A88
        720F347BE84327855A0E63E2C504DBCCCE5DAB4D3F9F3B978E76BB478364E9EB
        E6C6F90B00639DC1B72BE32B1FB9890496D64390F36F0B3C04D4DE43A1F8757C
        33C9F6802C8D2F35FC538D6A1EB47359D99BE399B0D53D71A83FA380FEE569CA
        DB43A8387BCCA428F00B8AA1173A98D7045912BA6AF9A0173FA8D188163A65F9
        165E40811E6B812DC13F66F48ACC5119EE31FEDC7DE2326334BBFD69479A27FE
        AEC992768DBD2349EDFC5DD57967A1C82E4A616B6ED35DDCF46D7C27FE0FA07D
        E0FE52F0B57539CD2B93745BD5335BA3BFDE8CD2C1EBF33A7C291808E7B7FDD2
        38EF4339B732BAFCBABEB6EE9639BD73C8A0C5461EA07CC45029005BF55DCA65
        68DEDA489A557F2E943A6356C6760569349FDB04C4D0F87DF28DA1D49DECF6D4
        37ADCB1B28162B98E104B4B7C8AA2ED697FE2698CDCAE99DBE50B35AE798AA3F
        EAFB016925A39127D0EE716F4BC1F0429DA01DCC24F53EE15842BC31470C4839
        B003B70AA80B678F66C6610C5FB9AAA94A69A10BCE9614C37771BA47D8135AD5
        3677A6E648EA3D82C2118AC3979E52CB29E9055592CA170076B2D73AD996685F
        3A14BF1A38160DC531D03FA124D3822AD1A021C82DCA2A7C2062510627DBB285
        DA8CD6E1B4ABA77376F3CD9987FBB0596FF0DBF6A78FD5E81DB6219848F3BFFB
        3054984063CAF86CB8EBD6C1E0E5D94510D493FE02FE19007AE4A9BBD87973BB
        0000000049454E44AE426082}
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarSubItem2: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarLargeRefresh: TdxBarLargeButton
      Caption = 'Refresh'
      Category = 0
      Hint = 'Refresh'
      Visible = ivNever
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000023744558745469746C6500436F6E766572743B5265706561743B4172
        726F773B45786368616E6765762368D20000096949444154785EAD560B7054E5
        15FEEE637793CDE6615E98C0929010C233C8A3BC331110854210B485DAFA0415
        19C60748B5BED1B10DAFD18A55AAB5D5A91541333289A8C8148C0222798A0193
        401E246CD86C7693DD64F7EEDDBBF7BFF7EFE6CEBD99DBA6D3DAB12773E63FF7
        9F93FFFBCEB7E7FEE732F8FFD8BF9E43F1038D37827D47966BA7503AE414548F
        31146B0103AA0EEFEB7BDA031E5B779C293BB8545155FAB138286F7BF18193ED
        00E88B7F5B4C8D5C6DD5F2552D7EFE9EAFCC04A01D7EEFF2FDF8A1661469B7E6
        3300982172AB176C29AD6A38B46CC7DB25BBEBBF72EF7AFAF62F22006838DA46
        A9499CB2BF6E18A9408C3D142A816178FC2773580B9891F28389950FE7B53958
        BF6C4B5C43F3D96759F6F3DBA7CCC97CB86CF3A9A331922A001A925AA886A5A8
        230950150845AF209E1F058EB599AA6490689BC898C08CD8BCB2AA42112521F4
        8B0D9858908B02E7A3795575951F3FF1262A07BC916DAF3F55DBE9B0156A441E
        DFBF908E689E3DE537E097376ED5B6ACDC35C84898FF4FA0BFDEB720C7916459
        4319660E033A0180838229D07BE412050A36FFEC29F4866A00001C1B87245B1E
        BA7BFCA8AAAD8878FB7A77551FEBDE7BEA932B22008D889900761DBA01BF5AF1
        88B63D2679955129FBCC5BC5BFE0ADDCC684F8C4EB73464D44767A3ED292B360
        B5C421C591AE8105823E446411890E0EEEE0197397209E4F85C33A1EF5176A50
        DDF8656B7040DCBAFFC9BACF012800E83081B2F7976A04C6A6943200B858C533
        1DC9D6D746A58D9E3D7DFC22E48D9E02590D211CF542243EC88AA03951A3E0D9
        7858621ED59E23467F42510942D1010891009212B290C8E6A1A6A101975D1D87
        F73D5ABD0E80C20346B23A04CE02609F7C63D17D29498E57674D29E1C66639D1
        17BE8433974F80A8122C5C1C78D60A96E563A0360D2C02410394150944952113
        09128920428461324421F046BCE87479D0D1E6E1FEDD05C202E062E08FA4A7A6
        ED5E3AB71484EDC395401D42913E50CA80672DE0391B3886070B0E60585018F7
        04B47820DC6B7A0638D60A0B138FE60B3E34D4765F1606A2DBAADE737F0A8000
        50797327C7645F939898B47BD9C23508484D70F9CE435622E0591BE278077ABD
        02BA2EF7C0E70D21188C408A2860591676BB0579F9A330797A86A62428C0322C
        E22C76B8BAC2F8E664ABD4EF0DBF2C7A6CAFD61C77FB4D4D485983C08215CE78
        AB9D7B65D18CA508449AD0E96B40541661E512D0DFA3A2E2F077F8A4B2D17DAE
        BE7B5757FBC02DFD3D5271D3D781F473557D993D9DE292407F04E98E71A014E0
        B93848611B8E56B4A2E283F3475B1AFAE77E75C05376E7863F4DBD7FCFD177A6
        16AF8D37BDD25AC06F7D69DE86378EDC4D6BAFECA207EB4BE9DBDF2CA6076A57
        D2A7FF3C8FAE7AD0E959B661F4CF01D801D80058F43B84036005E07870EF1C7A
        B2ED19FA97D33FA50FFDFE3A3A7F7D4647D14D29EB0124DFB6F99EDC7B7756EE
        7EEE9DAF237B0ED5D1BB5E28DFA8FF1FC3EB0438DEC6DC31CE99076FB00D2169
        1016360EAECE30BEAD77B7F8AF46D79E3EEC6907A098E4339BAA2A148DDFB7E3
        C3F27AC9E711F64158BCB7F164A578E773074A53D2B376CE2D1AE39C31310B9D
        EE015CECEABD03C00100841F6E4030D3EC092CBA023DDA55C9F336B45CE88638
        A86C8F817700202660C6145383C0EB7FA83816F62B8FB7578B2D4025BD75DBFE
        E9D76464BF77D7EA2230160B3AFC114458168ACA4E05C0190A401F26692C0F08
        5210AA3EBA422119C7DF75D5E9550300A73BD5D550F498EC7FB2364E2766ECB1
        1DDF55B9329D132081479B5B80ACA848B0719024394DCF05AB070C21B44F080F
        82283278C6864060A801357E4E3DCFB672D3CE49F7EDF9ECF0A6978E4700588C
        4374501940D44480CB2D2A9969B5B01AB0242B50548AC160149214ED836EAC21
        219195F32E970F09D65474348770ACB2EDAA42D8BB01B48C299C9D74C78EF2A7
        27CF5C507DDB8AE9CB894C8C41C68E988C7A634EBB7EDDB58EF49C9D0B67E420
        1C55202B5453B6AF6F001141F85EC7056F101043E4BDB3358D254238447ADDA1
        3F369F75EEEEBCF0B578F3C3AFFD343D6B5C59F1ACBC9CE299395A99B2AC4057
        40364D485607B7ACDCB26F697266EEEE05D373F3B247A7A2CD1B065114F0E070
        A9B91B21BFEF7D4329DE90F0CC67AE0FC7CDB6DFE4ED12F7567FD2DB366FCD5A
        E7825BB7FF7672C1E8E5AB4A26C09E6043B720412688B982159BCAE69E2ADF57
        CF30ACBA68DDA3452C6349B125A6CEE7AD09EB32D2929C4BE7E5233333056DBE
        30FC82AC31ECEBF5A3A3DDEDF9EEF85B1F0120E661C4E915D926CF2A4E2E5CBC
        717376F698AD2B4B0A6D13C6A5C31796634EB426B2F10CFE7EAC11A20284C351
        288A020BC7222D391ED99949C873A6626C760A3CA1283AFB44089256285499E0
        C4A7D5F05E69BDBBF6A3E73E042019C3C890D072E3FD2FDF94919DB773C9BCF1
        E316CECE4158A6B8E80BC756151400544D67DC5A3A03A9760B4001455121AB40
        94A8084A04FE908C331D01842545FBCD399681188CE0F4893AF8DCAE1762E087
        F5865561FAEDAC6B1F3BF841617E76E9EA25936077C4A3478862502450F48F4A
        A250AD8B6559854C5444C91000341214548BB54AF57C76E88F01BA3AAEE2DCD9
        1665C0D3F5C4B9233BDE04201AF29B7B800985444E084BB8E28F20D41F852011
        501D40FF4AD60F0718866AABA26A2BA03FB360B49805E0EEF2A0F97C3B3C2ECF
        85C19EE6AD6DA7DE380B20620687497E1E40FCEC5B76AC4ACA70964D292A185B
        30652C14309AC454AF9252683D10F00BE02D3CE2EC368D9C1014218912FCFD21
        78DD7DB8EAEA85303050130DF7BFDB7C6CE7010DD874474CBD792F3D5FB11DE6
        D79000106B3FDA51919439BE6AB0EFDEED179B3AB74C9F33D13A6A740688AA18
        D26A63F6C467755008E91143C2B59A320A715385F4AB847412229E0BF6345576
        9F2BBFA883464D33045FB606E8A687DE1CF955AC9350077B5B496DF96F9ECFFD
        C96D877AAFF6FC2E677CEE92A23993604B8807512958502844C1E9B737160310
        4C879BAF67A2BBAA3BAA2E05A8964031447E04013A6BFDABA83BF4A0AA77A872
        B9E6FDC698AF0B963CBCBAABCDF5FCA41985CEF1D3F22133D01A124018C0A09E
        6F1E4C66C7171AB0CE8252E3F36FA402244AF04DE7009D9793ACE5180DD3FAE5
        2BE58ECCC22F82FEB55BDB9B2E3F306DFE342B218AA198ACBBD97022060A981B
        98C26CD444803182A9A57BF55749D5D29B8E3C66BEA47800F6CCC9374F49CCBA
        EE85C48CACEBBF3DF8C03500420094FC1B5E1CC2192E5C8BFF8B759C78163FD4
        8CBBC2022001400A80640071C3D3F44718F33FE69901D5E1927F84FD03EF8804
        FDEBAEB9D10000000049454E44AE426082}
      OnClick = dxBarLargeRefreshClick
    end
    object dxBarLargeReject: TdxBarLargeButton
      Caption = 'Reject'
      Category = 0
      Hint = 'Reject'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F40000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C00000011744558745469746C65004572726F723B4661696C3BE8
        835D030000084F49444154785EAD977B8C5C551DC73FE7CE6377667666776776
        B7DB6DBBB4D05D7915092D540869406A11FE50AA606240098AD1158A2214B444
        794880D88A7F28448AA98FC44029290594F7528BA5D8D2B440E9DB2EDBD7BE3B
        B33BCFFB38F71C27277BE364035909DEC96FBEB97732F7F33DBFDFF99D7B8FE0
        D31FD3FD477F869B4D0B15B5F109605D1B9FD54000B100F1EECA1F9FD7108D5D
        13B2C41596202604E769A551CADFA3151547BA6F9E2A97375DFED8DA0F006562
        1A23621AB80042BBEFBA6379437DF4C1682AD595E83E83FAD33AB02251A26D19
        40E30C8FA11C874AFF098AFB0F6367270E8F57CAF75FF2F813CF027E60E6D318
        1080D5BBE27B736725D37F6D98DDB1B8E99285D4CDC820C7C7F12726D0D2C32F
        16402BAC58022C8B706323E1741A7BF814636F6DA7D077FCDD5D0383DFBE69E3
        C63E4006D998CE8019F53BB7DD72793AD5B0BE75C9C5CD89EEB9B80327ABE071
        0003D5DA282855153DA9BEB9164A355277DA3CF2078F32F4C63F737D63D91B96
        3FF5542FE04D35213E0EBEB5A7E78B6D2DCD2FB67FE54BD190F071874E06BED1
        68843274033626B44607067CA3E8AAD6CFE9C48FC4E97FE6EFDE919383D75CBB
        716360421100A7A6FD851B6FEC3A7D46CBD6CE6BAFCEE8620E393181A8B11C00
        D118C5644307193046F07DCC7955C3CD6944CB4C0EFF655376C7D1A397ADE8ED
        3D08C8C04478EAE83B53C975AD975E9851B9D12A3C0708746DA7E9404DFC17AE
        9519BD3164B220CDB9333444C471E9B8E292F482E72B4F024B6BBBC3AA1DFD96
        9BBF735DAC357D71ACB11E776C04EDC96A7826ECF13C3B9E79859756AF63F78B
        FF4056ECE037A46DB3FB6F6FF1C29A3FB36DC36BD8F902DAF3519E3493D51D1A
        209EB048B467163FBDECAAEB80F024935A03A1B808DD9B5E78369563FD68D743
        792670260AEC7CEE0D2AF33E4FEBCF1F653C3E839D9B7AF12AB631B263D39B8C
        273BE878F077B85D8B7867E39B54F2050337F7A86AF9D0013A162FA0B9AEFE1E
        203AC9162280AF5F76F5D233CFED7A79F692F371860711E6278CEE7E651B4EF7
        425ABE763DED2D293CE9B3EFD78F103D7908B4A6DC3E9F19DFBD9519AD8D58A1
        30FB1FFF2DBCB7950B962E04E583545591D4CF9ACDBFB7EE67F7DE035F5DB173
        FBAB8017CC01AB4170652411A1B8E73D428DCD889015A486FCD0184B7EF37D2A
        2242736303088DB5F2677CB8FA61A4AF68BBE916DADBD3B46452C6D0923B7FC4
        A6A5CF83E7A27C8DE90A29291D3E4CA225495328B20CE805A415D43F8CBE288C
        87DDFF11C5BDEF237359B4EB9A14B6CD9F4BDFDAC798D99A04344A41A6B58973
        56AEE2B49EDB995985679A93A62D1375213E58F32BDAE777E27B12E5B9C86211
        7B70D0CCAB685811D1621110AAED024BFBFA733865A4E782A3291E3C4038D140
        38D342F7E2B3D9BB7917EF3DF210E7FF741545DB0720934991AE0680069255F8
        CE07EE23FFE12ECEBBEC02BCC101FC4201DFB54D7B8220EC39E0EBAE49032298
        8D422A95A25246393E58A6F678853C5EB1807DE21867747572F0DD6DECB8FF3E
        CEBCEB1EC002AD090EE52BFEF5F003E4776EE39C0BBB29EDDD63D681A055B569
        55083B45AAD7930137C880509E5F8595CC64410B0402843162FABAD4DF87B66D
        B2D902A3A3455A6B46AE301C4A858AA97BE9683F16060C9AC08031E3954A48A9
        0CB3B604F8BE97772A4EC60AD675211002A320383E5AC1ED5E44EAFA1FA205F8
        5A1BB8C16B008B39B7DDCDA1D5BFE4C8BEEDCC9B9534049446A38D82C02E3A48
        E91502AE15AC48B6A30E39150FA57C7CE9A37D89AAAA9292C1AC8377E685246F
        E8A1AD3D4DBA2981D68AA67888C678046DEEAF48A79374DD710FFA9CC51C1B2C
        A2A4C2F77D94E76354294A45978A944782C405195045D7DD592C852F8EC40548
        0F69056510543C58F0939594741803872A3C526DC3870CFCDC6A37648B1E00CD
        E9145FF8C5BD6C597E9531AF8327A7D2A6E0F9BC47C17577013EB50646DDCA1B
        CDF9F08A541490BE812B0B2C04F1440376EF0BCCFDD6CD946C492A16667F7521
        CABEBDC5D477AF80B3EF5C45BEECD1108BF2D1BA752453717CE9229446EB2020
        97B31976ECCDB50634E0AF3AB867CBBAB32EE8CB47383D1913E60F285058B4B5
        D573ECB90D009CBEFCEBEC5DF37B4E6DDBC2ECF6240838B17533FBB4E6DC1FF4
        70F88F1BE87F763D9DB31A71468741690CD9B2C8654BE4F27EFFA3C3FD9B0159
        6B4001DEC98AFD48DD78DDDA584421B49E5CA815F6C81033DBDA197C71237DCF
        3C4D2251477B26466960000174B4B531BC7D2B2FBFFE3AF15884391D55F8C888
        994306AEC1D78A13633EC7ECD21AC006E4D4B7DD3090786CDE82D73B926A5126
        294CFAB104A011A130F1B61642F57164B984333A86D23A785E50DFD242241E33
        4FC6F2C8A86967A18599034A6906B31E47C7D5FB778F1C59064C006E90018232
        00CEEE89EC0A74E34B21E135A7A2214448603ED2A1707C0084464C7D2B47531A
        18048101A28D694CABFA8A5C5172725C8C6F2F4FDC069401F949FB8230507F7B
        6BE795F3EBE24FB527BD4863CC2214B2B0002584510D46D5D46D41F0ADB551E9
        4972259F1339CBDBEF966EFC437EE465A014D47FAA81DA52C46E4D574D44EB9F
        6C8DBB8D4D3188462D2C61D6E829CE7530E24911661D71A4245B84C102F903AE
        DDF3A7D2C82B4011F0A67B2925C8C435A9F4598BC34D4F34D6E9F3D3F5927854
        63852CA2D50041C8B230B5533E68AAAA70A54FC98153A51039477FF0B657EC79
        CDCEED03CA93703EC9C0D46B21A00E88AF48757CA3DD8ADC150FD39988F8C423
        0A21A02EAC0CD89102A505654F50742C2A92E3C794BB7A6D69780350AA9DF51F
        B32F98764B169E3412FB662C73D19C70F4CB71C2975A5AD4472CBAD1E02A75C8
        D7D825FCB74F48F7D5F5EEA91D40A506EC07F0CFB2370C01919A08D5BC53AAC9
        F06AC2AF05FF3F77C7D6C7EC90754D28A3FFE356FD3FB15EB5AD8D7B31F10000
        000049454E44AE426082}
      OnClick = dxBarLargeRejectClick
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Approve '
      Category = 0
      Hint = 'Approve '
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F400000021744558745469746C65004170706C793B4F4B3B436865636B3B4261
        72733B526962626F6E3B6463C8680000098749444154785E8D570B7054D519FE
        CEDDBB9BCD6349480C7910214882488804C25B5E2518F041A5D5215550192D30
        BCA28E531D713A6851C6B1EA0C68950A5A2B2275C096F2465AE340B0BC820931
        40020979BFC826FBCA66F73ECEE9B967EF4D769C71DAFFCE37FF393B9BFBFDFF
        F7FFE73F1BB2E5E3FB21D98880CD80046BCF01489201BE2600B111AC7FF008C1
        CF1BDE3FB284E99482E90C3A87C641752ABCAE510ED3F3FDDB1BBF87CCC0F0EC
        F29520C643220020F6109F0169714F58A4E4278836C6814D0F9F30BC40AB7F2F
        63E00F63A0CCF0D45C53ECFC72B7E09169E42B0695F0E235661019F183C41207
        D9B6A7E8DE78977D991C438A2409B184907BB987A6EAD58C61203CA07FEBED0B
        1F7CFDB767AE00A059AE1514006BF6EE315F6D1A231C919D0C33326A0621C819
        9099F0B495A5EDADBD45BF8A75C96FB8E25DB9A3D2C6202D39030ED981C4F814
        18E6EDEF2D50B4103ADCEDB39A3B6FBDFAEE3F8A6E04BCCAEB5B569D3900401F
        95F8246DF47C4605970188A5A90035369A491CE1CC723D6B2CA49777CCCEBE23
        3D6E6F7AEA88199372272325291903AA07612D00151A3AFC4D4235598A059125
        64676660FCE809E8F5F5E656D5557CF1E6BE79CFDDBAEA796AF7D62B0DD949AB
        3400ECA67B1783A9BA59021D0688F98C1EB65664BD79E79C5F240D777E559857
        387C4C56167CA14EB4795BCDEA987D42221969340C4A19FCAC87EFEBE1B02560
        56C16C34B6B64C03BBF07DE91F0B57EEF85DC5BF01A83929AB51DBB393314A87
        14A0D0203182ECA48D82FCA5EDB3162627C71D9E3F6D8EC319CF33F55E15C406
        3B61C259120A0C351A85A1685077C31FEA414A4A06164E2F1A5E76BEECE0FA6D
        05CB3EDC5C2982E0ECFC311550354D9460CCF01784EC6B5F9F9CE31A1EF3E5FC
        69331DD4EE86271830B32591004874374522B10415C930030C7575DDB878E93C
        1E7D6406164C9F6F3F1E3AB5A7E4B9F10BBEDA7EBD767CEA7AADF4DD422A0208
        0407409906ABE192D3623E2D9C383145957B785BFB20116236272049569FB021
        723320EB34793D611C3D5A8B8CC44528C85E8CBF1FFA14CB1F9330F5DE29C9FD
        81EF770158C44177BC58218E2A79F2F779D8B3B5469097BE3DA564D4E8115FCC
        9B33017DC15608498814A580F05607588D14E96C063434F4A2EC9B3E3CB6E80D
        E48D9B02095EBCB4A318C50FDC85FCDC3C949FBD8ADADAB6673EDB5AB30F80C2
        4165C6E860F676A76DCBA4BC1CB8032D42154244001C881C52CA4186C80931BC
        8800577FBC8DCA0B4E6C28D983D1776622CEA9E0B50F4BB172F922C4247AD0ED
        6FC0A4BCF168EBE87E15C0D71C9A50C0225FFEC2B84513F2338F2F583016DE60
        A718BBD663B0F22D303425ADDCC52B2A2A3A50579D8875251F223B2B034E8782
        57B69760EEBC4C0CBBA31FFD8A579C92E4F82C9C2D6F407545EB23073FBA7912
        802A5B93CEE69016DF91928EF6BE7638EC549C0A227120527BCAF792352BC810
        7979791BBA1A33B0E1F10F90959106BB1CC6CBEF95A0707A3212520308843DA0
        0CE23EE8F6B6237D443A6E24741603304E84260356A9C9F4D804825E7F801332
        24C5C7F04024681AC3951FDC98322D15B24D1A9A011C953FDC46676326D6977C
        809199A9888BB1E1FDBD9B917127436636833FDC2732D7548A605813AAC7B952
        20C9642A001B07061560C0DD924383AE68D028438F974296249CFDB60B0E9A8B
        43CD4DB8FFE1118875CAA2048DB7FCB85AE944E98AF79099910A1B9170F1C723
        B8D57916CB7F5300777F1B544D87A2E8DC3350508083385443D15C3300622940
        18C3308D0C40339A8F49A0D071E17437D212E6E08987DEC08DC6CB38786033E6
        172741A70CE5653EACFEF527B833331386296A37761D780DCB4BA6A0C5DD24AE
        5C0AF3F603336704A02304C6E0B2782D0508A380AA0D80722F1106354CE0F3A8
        D8B86C1D46A6A72039693E626376E08B63CF43D1827862C976DC33F61ED1974E
        07C1B68F5FC4CCD963D0A7B440D535733282830ECD09468DBF1565B16A29C134
        5D67BE50488D1C30CA9010EFC4234B67E283FD1B40582F9C4E3BF22714E29965
        BBF1C07DAF60EAC4D9B0C936714CCF5CDA075FB81EA923091435049D52014A75
        3026BC088401E01C06971F51F73C33A02BAC2E1460002542AE012500D5D18BFB
        E66463CBCE1590A5001C7619E3C78EC7FC69CB6077D845869AEEC65F0FBF85D9
        7373D117EC86C684DC11586B911405A180C1A186683D00CAC12C05286F964BBE
        3E5D9C320A26E00FF6C296E0C3DD79097873D72A0C8B6590650971713142E218
        AEC09747B76162FE48045997208B266783DE04213038C203FA65003A0793AD00
        825EF55F5D6DC14D29A362C0A80A888621F004DC189E9A8AB410C53B9FAFC18B
        4FED465F4087615D3D55A8AA3F85E287F278F6ED436319885A47C8B913B3A5AB
        AD1F7E8F5A2602889E841CF14BD7E55E2E98EBBA2B2E915A3FD306EF80545726
        6EDDF023D1968F358FBE87B0A2E10F1F2F436E5E0CB418237B8B58500A811933
        F72C32B6FBBD12AACAFD8D87FE543703809743911E5C9BCBCC7AA8813EE5AD5B
        D7544844162FA48C1A10EBDBBE768C1D9784AEFE0A7C75722B2ED57C0D6AEB86
        1CDF0F4DD323B2EB3A984E394CF961958342820D4DD71478BA43EF0008997701
        64668509A8657F6BDAFFE09A9C351D4D646A6A9604C62C251828083A3C4DC89F
        340615178FE1C4B9CF515434113E437A625E4E11A5C51AE2D8411881848E6605
        3D9D0355A7F737EF07101E6C42C6DDF19A0DCCAC49B8BD3EB0A9A126DCD7EFA5
        919751F33C9B8DD4D2DB80A9D34763E5E30B11827B5025F613C5740630018280
        97A1A17AC0D37CCD5B0A2028B2378D2C7E36079B9EBF5FE4B834FFCF3200E7CC
        5F662D4ECF8EDB973359B6BB9225B31798353B84271187E84F59D4860976C0D7
        ABA3BE52535B6F069EBE78B4FD38807E0E6DC9EA1C7662D74D4888324B857387
        5A4FB537F4AFB87E5EF576B7E8603055B0BA1A667DAD7F340C44D79C463EEF6E
        D570FDBCE66BAD0DACE2E427ADEC0F57AF638C12444D420ACB4C79062E1C693B
        515FE929BE79395C59F31F05FE3E5112F35C4380320C0560B63277E2BB57CFA9
        A8BBA45CA9AB703F70F144FB3100010E75888F5901584BE048F55A161DC4B573
        B76B4E7EDA50DC7C2DB8B1FA74B8B9EABB305AAE6BF0BA75881E31874C90AF7D
        BD142DB52AAABE53507D5A6969AA09967EF397FAC57517DDD5427693FC30E720
        1832D99AC804148C7B439EA5F91F1100BA755CCEFDB3750F8003050BD3A7BBDB
        9D4B1C4EDB1C02E6B4D9A571A26E2AAB63602125A49FF576874F5695755E3012
        883A6EBA450ECBA29BF0E7ECE42737AD60257358D92D98FBC1516E428D826E02
        9C83FDCCFB41F0FF1989F292E94D086316A20B2CFCFFB0FF02A614B488B3A126
        BC0000000049454E44AE426082}
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Search'
      Category = 0
      Hint = 'Search'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D22D0
        A1D0BBD0BED0B95F312220786D6C6E733D22687474703A2F2F7777772E77332E
        6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A
        2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D2230707822
        20793D22307078222076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E262331333B
        262331303B3C7374796C6520747970653D22746578742F6373732220786D6C3A
        73706163653D227072657365727665223E2E426C61636B7B66696C6C3A233732
        373237323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23
        3131373744373B7D3C2F7374796C653E0D0A3C672069643D22D0A1D0BBD0BED0
        B95F32223E0D0A09093C7061746820636C6173733D22426C61636B2220643D22
        4D31332C31374C322C32386C322C326C31312D31316C312D316C2D322D324C31
        332C31377A222F3E0D0A09093C673E0D0A0909093C673E0D0A090909093C7061
        746820636C6173733D22426C75652220643D224D32302C34632D342E342C302D
        382C332E362D382C3873332E362C382C382C3873382D332E362C382D38533234
        2E342C342C32302C347A204D32302C3138632D332E332C302D362D322E372D36
        2D3673322E372D362C362D3673362C322E372C362C3620202623393B2623393B
        2623393B2623393B5332332E332C31382C32302C31387A222F3E0D0A0909093C
        2F673E0D0A09093C2F673E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = dxBarLargeButton2Click
    end
    object cbStatus: TdxBarCombo
      Caption = 'Status             '
      Category = 0
      Hint = 'Status             '
      Visible = ivAlways
      Items.Strings = (
        'Pengajuan'
        'Disetujui'
        'Sudah Dibuat Penerimaan'
        'Ditolak'
        '')
      ItemIndex = -1
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'Clear'
      Category = 0
      Hint = 'Clear'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000206348524D00007A26000080840000FA00000080E8000075300000EA
        6000003A98000017709CBA513C00000006624B474400FF00FF00FFA0BDA79300
        0000097048597300000EC400000EC401952B0E1B0000000774494D4507E90B14
        01140E9DE08156000004464944415458C3B5965D681C5514C77FE7EEEC4736D9
        369A18AD989A362912D434A03E593096A212D42252B12AB460A4205804416CEA
        93A2F649D00745F0494512022A522D286812C156B482426C4822491389D96C94
        A4DD7CEECC1C1F6666B3BB49369B6E3C30CCDCB9E7F2FFDD73CFBDF7887ED746
        C9A64012582ED15FFC079063BDEBBA58C04D40758EC4769900CB081328F6464E
        16700EB8799BC53D006501971328DF140368DD66E17C536E2DD66DFE5771CFDC
        629DD69602AF05EF524C9062FE163B708050C9008B40784B11C8148F402DEF00
        CF03B192006C60A9E4D9F722F4168B80013A8133C0CA96E6B5B9F5213C87CBE5
        625960F08E95B7FC67BB20FA3074A08C6003D18D1D2DFFBD02BCE97F9F022265
        CEBC03D7178F831CE8DD3802B227DB194094B31CFD081DC008B6405C8B8A4370
        0E34E441BCE14314CDDE4DC52B1CE440DFA68324F85005C6DA826604388DB71C
        AB9B4E8129D6DB059EB8328C0D7C7A232C1B1048CF2AE939C518701C884485DA
        EFBBD602781047602C1534A33EC42B5988F5017E40781618E642027EAF5A8DAE
        9048CF6A343DA72B56982B99155C31A02E5811A1AEB72B1FA008C4CB40741D80
        20ECC3B8C087BB0012C043C02340737A4E2BAFCEEA023028C25911BE765DAEDC
        B04BF837A56B010074E008C4B31031A00B385C0090426847F9854406DEDE0DD0
        E2E7D08341D4AEFA4BE05B06F856844E557EABAE31EB5F46727B0FD815417309
        985EC76D0125892110DF0F7C0C3C9C9B37923FC530D0AECA2722B4CEFEE36E7C
        1BCABE73B9CD8DFC0C4315003BF1764E4BB6C77501F54E6155BF9DB53B543963
        0C35E55FC71351FCF53EB43ACF304ED33EB42A81380EBA238136374124EF163B
        A8CA93E50108CAEB0D06384C70AABA2E4E63134B2FBEC4F233C7701BF7E29C78
        1AFBF449F4B6C6DC48845579CABA4669CF2C551E9DB90E685E8512CC7412337E
        19FBEE7B58A9DF83C62A918121E4EFE9C2A4B8B3BC0818054B2B80CA5C0049A5
        887CF119329F466B6A203D4FA8FB4B48A60A0112E501B8020E4B78658A67AA68
        753599430FA09555909E87AA4ADCF683707DB57FE4666DA11C00C116C3A5CA59
        602417C0BDA51E7B7F2BA1C14B44DE7D1F1918C2BDAB056DA807370F60B09C1C
        4803CB3C9EB2198B7D85B7FF0511CCD828B10FDE2334318E3394243438097B77
        23C3A360B24BE08AD073AD114821BCC6BD3A453202F03970DE8B8B208B8B58BF
        5E446666502B842467901F2FC2FC626E0E5C40F868EB00420A38C912DD9C17D8
        698377529E02C6B27EC67830E0CD3A6472AFBE71113AD565B2548060E834315E
        E07EBA88FB7FA6B2C5533F701CF82977A0AE2D487F16E1B8E3D017B2564BB2CD
        EC0F6008E155FEA2272832E5BE5E4FE4E8D1C0AF0F780C78022F271A4588E3DD
        277F8A7016A15B5D26C3110F4E8AA9EA685BF01907AA112683123BA7942B8408
        AC02A1363DABF1F49C2E8A30E3382C18037606A231A8EBEF2E19207F3D0AC437
        04C9A98844201C151C5BA9EBEBCEBAFC0798C4968610769BD500000025744558
        74646174653A63726561746500323032352D31312D32305430313A31393A3132
        2B30303A30309A9486D30000002574455874646174653A6D6F64696679003230
        32352D31312D32305430313A31393A31322B30303A3030EBC93E6F0000002874
        455874646174653A74696D657374616D7000323032352D31312D32305430313A
        32303A31332B30303A30307F5C59CF0000001974455874536F66747761726500
        7777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
      OnClick = dxBarLargeButton3Click
    end
    object dtAwal: TcxBarEditItem
      Caption = 'Tanggal Awal '
      Category = 0
      Hint = 'Tanggal Awal '
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dtAkhir: TcxBarEditItem
      Caption = 'Tanggal Akhir'
      Category = 0
      Hint = 'Tanggal Akhir'
      Visible = ivAlways
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarButton8: TdxBarButton
      Caption = 'Update'
      Category = 0
      Hint = 'Update'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Submit Correction'
      Category = 0
      Hint = 'Submit Correction'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
        F4000000206348524D00007A26000080840000FA00000080E8000075300000EA
        6000003A98000017709CBA513C00000006624B474400FF00FF00FFA0BDA79300
        00000774494D4507EA060C012B2CFBF723E10000071E4944415458C3C5976B6C
        54C715C77F73EFDD5DEFC37B77BD061B3F288F02C1A02880C01411DA8487A12D
        2520519B80C144812608B551DB348A841A25694A9BD0C66EC297B6246D697178
        8434290950054251C3A3024A212990F0328204DB6BEF837D7977EF9D7EB0BDDE
        B517433E54196974EF3D77E69CFFFCCF397366849452F22536E5763FBAE271DA
        6FDCF8BF03D0F20923910857CF9FE38F3F7D8645EB1E675CF5744CD3B82B8542
        28E8BA8ECD66BBBBF1FD5D70F4E811F6EC799B88DFCFE76FBD4351A18BD8C891
        0CB97702168B95C13C964EA7080643545555D1B07A0D3E9FEF8B0188C5626CF8
        F1131008402084FCE4024B268E61DFF9CBD866CCA4F6C91FE12E2AC234FAB321
        90D2A4A5E50A5BB76EC5A3BBB13B5CAC59BB8EB2B2F241016462209948F0DE96
        2DB4EFFD3BAE53A799140EB068C218BEE2F3F0BD199319FADF33ECFED90BC4FD
        6D1479DD14790A73BA5777E2B02938EC7696D5D5525CA4D3D4F82B2E5DFCF4CE
        00E2D128BFDFB0810F366D6276D930BE31761455E52594BA0B91120A0B6CD44E
        9E40F4F8317634BE4A3291404A89699A3DDDC0300CCC740A00AF6F0875B5B58C
        1F379ACD9B9B3873E6F4ED014829D9D5D4C47FDED8C194CA4A8A5C4EE2C924D7
        3B837C160A83805B892E9A4F9EC53E752A0FAD5B4B281CE6E6CD56DADADA686D
        6DC3EFEFC0300C2C160B8691E66ACB35A2F124D5D5D3183D7238AFFCE6D71C3B
        FA61FE183879F0A07C75ED634CD43D382C0AD73BFC843515CDEB859B9FB3B86A
        3407AE5CA778EE3CBEFBC3273015852DAFBD4E301844088194128F476755FD0A
        A411E7D0E17F72E2D4593455ED66499A747404F07ABD3CFBFC46BCDEA21C00DA
        9EDFFE8EC23444125D9CF5078995F878E4C91F5051398297EB1F61FB272DCC7A
        FC316AEA1F465155DAFD7EE6CD9DD39396A29B465521994E53E874F3F55933B9
        EFDE892453690054CD42ACCB64D7AEDD2493C9010C68E78F1CA554B373C34CB3
        E4B9673974FA04432ACB29B017E01D358A6FAE59CDB4B9731042100804D8B6AD
        99502884107D7B989412B7DBCDEA869514F986E1292AE981068AAA110845B058
        2C7953588B0783B4DB53D43EFD0C33162EE4D0E913188681DBE7637DE34B0CAD
        A8C84C74BBDDAC5C599F270D415155745D4751551414A4EC06A6284A06ACC8C0
        CA02905604CE8A61DCBF780969D304BA8D15389D14385DB4B5B5611866F75401
        420C5402601A067EBFBF7BB6045555F0783CA8AADAC7549E79DAB8695371EA3A
        BACF87BFBD3D0763381CE6CF7F69EE09B84CDC72A726A544D7DD34AC5A497171
        F1A063B5C5EBD7F3AFFDFB91A6998B524A1C0E070BE6D7904C25F3D2775B0048
        AC160B0E87836CB7F76A8886C3482971E93A5A754D0D524A12B158EEE2842016
        8BB36FFF7E82C15077CAE55DFF40696F5036ACAAC7E1700C7041B8B393E3FBF6
        B1F0D147D134AB95EAF9F351358D68229EAD05A7D3C1438B16914AA7BE3003AA
        AAE2743A7319E85161B15A39B06D1B23AAAABACBB1C56AEDB5D9B71A2188446E
        D1BC7D3B9D9D01147177000412A128545656B2ACAE8E02BB3D7B4D0074B6B672
        EDDC390EBFF966EE7940F428E87D9752128B4689466E21441F075264F129043D
        3997A15FF7E8CC7EF0015C4E678F5CE6307078F76ED42E836BE7CEE702C84E13
        29252E978B15CB97934A25192CFAB3534E511422C11027F6EEC7BBD845E9F0E1
        19E342281C7E6B37479A7730D45D84D5661BC840B6C362B118EFEDDD97D9F7F3
        FABB27E55637ACA2B8B8981B97AFB073E38B7C7AF21433BFF32D548B86A22A74
        45A2EC6C6AE4EC5FDFA1D25EC8F5B89F7BA6570FC28029297415B2E2E1651886
        01FD01489991A9AA8A5BD7F9E8D87176FEFC977C5515045C2E4E1D3ACC8593A7
        B978E623DADEFF00A15A18AFFBE80CDDC25AE2E381A54B0761404A144DA578C8
        E01B496F45FCF06FEFF2FE2B9B995751CA98612548A1F2F1D66D688A4AA1CDCA
        FC51A3505226AD81102DE10EEA9E7A9ECAB163F31F4AFB533C58330D833D5BFE
        C0BFFFB495D55326526AD3088783CC2A2B263ED44BAC2B452C91241C8DD3D211
        E4E38E0E6ABEBF9EB9CB9703B73915677C21B3044264457EEE708BD58A0412E1
        20787430D218F104C9648A6822C967A10817DA3B8978BCD4FD62230FD6D6666A
        445E00823C312FF37C0B108AC282867A8A2BCA697E71135FF307985856CAC18B
        57B9114D90B458303C5E3A2BCA79BAB189F1F74DCA51331080CC632D5B260498
        B98C4824D5F3E630A4BC8C379E7B814B67CE732599A6E6A99F306EF22414BB93
        2DAFBF86AFAC6C8039A5BF1D29BA8D18661A69A6318D34A669F4F5DE6F239DE9
        D23048A7928C183F8EB52FBF84593D9D9014544D9BC2887BC660B1A918E954A6
        E0DD96019BCD86A66A5CBA74194511DCCDADB1BFAB84A2707FFD52EC253E5AAE
        5E2492B8C5A5CB579080ADA060E0FCFE37A37F1C3AC0BB7BDEEECEFD3B16A0FC
        51297A4E2FD2347BE24465C1826F337BCEBC3B03000885822412892CE5F90B71
        1F08D1EF3DFB09365B011E8F273F835FF6F5FC7F448C20498A82241900000025
        74455874646174653A63726561746500323032362D30362D31325430313A3433
        3A34312B30303A303047F2CD0B0000002574455874646174653A6D6F64696679
        00323032362D30362D31325430313A34333A34312B30303A303036AF75B70000
        002874455874646174653A74696D657374616D7000323032362D30362D313254
        30313A34333A34342B30303A303033827BCF0000000049454E44AE426082}
    end
    object dxBarLargeButtonUpdate: TdxBarLargeButton
      Caption = 'Update'
      Category = 0
      Hint = 'Update'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        FFD8FFE000104A46494600010100000100010000FFEB373B4A50000100000001
        000037316A756D620000001E6A756D646332706100110010800000AA00389B71
        036332706100000018996A756D62000000476A756D6463326D61001100108000
        00AA00389B710375726E3A633270613A33666338393338662D373663362D3061
        36352D363537642D34666363633935646435373800000013026A756D62000000
        286A756D646332637300110010800000AA00389B7103633270612E7369676E61
        7475726500000012D263626F72D28459062AA2012618218259033E3082033A30
        8202C0A003020102021400A7336C0C37E0036FF781EC18F4DA0FC3B4DD62300A
        06082A8648CE3D0403033051310B300906035504061302555331133011060355
        040A0C0A476F6F676C65204C4C43312D302B06035504030C24476F6F676C6520
        43325041204D6564696120536572766963657320315020494341204733301E17
        0D3236303232353135313535345A170D3237303232303135313535335A306B31
        0B300906035504061302555331133011060355040A130A476F6F676C65204C4C
        43311C301A060355040B1313476F6F676C652053797374656D20363030333231
        29302706035504031320476F6F676C65204D656469612050726F63657373696E
        672053657276696365733059301306072A8648CE3D020106082A8648CE3D0301
        0703420004EE2B03C58E2CD13532F352285B68902BF97710EB91848C417723DA
        0C6EEC480D724C4EAB25432BAEB9EBC5E3B0C956D8B1716ABCC7C69583DBA8D0
        43E79AB0A4A382015A30820156300E0603551D0F0101FF0404030206C0301F06
        03551D250418301606082B06010505070304060A2B0601040183E85E0201300C
        0603551D130101FF04023000301D0603551D0E04160414D8F7AD9006085502F8
        71643861DB6E081E5D2A1B301F0603551D23041830168014DA7BE1BDB42C8A85
        E010D66B9AC74AF1FADFF637306C06082B060105050701010460305E30260608
        2B06010505073001861A687474703A2F2F633270612D6F6373702E706B692E67
        6F6F672F303406082B060105050730028628687474703A2F2F706B692E676F6F
        672F633270612F6D656469612D31702D6963612D67332E63727430170603551D
        200410300E300C060A2B0601040183E85E0101301906092B0601040183E85E03
        040C060A2B0601040183E85E030A303306092B0601040183E85E0404260C2430
        313963333464332D373333662D376134372D623931372D353064643338663431
        656365300A06082A8648CE3D04030303680030650231008037AECEA9B5F6C652
        942FFDB13FBDBA3219154B2BFA8BA32A65241426E2A3BF7A4AF7465BDD11638F
        DF7F5B03CAF985023027473CCBFC5816574D908111543A202D0EE3344DE48C8F
        D1B4BE3FBAAB917105832E670B57DFBD2AD5549E8B2C46FCFA5902E0308202DC
        30820263A003020102021441FAA52147762158DA7F9B2CFF8DFD16091EEE3E30
        0A06082A8648CE3D0403033043310B3009060355040613025553311330110603
        55040A0C0A476F6F676C65204C4C43311F301D06035504030C16476F6F676C65
        204332504120526F6F74204341204733301E170D323530353038323233363236
        5A170D3330303530383232333632365A3051310B300906035504061302555331
        133011060355040A0C0A476F6F676C65204C4C43312D302B06035504030C2447
        6F6F676C652043325041204D6564696120536572766963657320315020494341
        2047333076301006072A8648CE3D020106052B8104002203620004B823E55314
        A296DAA7076971D844BB14AF935595A6031473CC38D3CCA67CBA6A2ACAF0AA48
        B3A4641ACE89E68BAABA7EAE7CEDD040035961F75FAD8DAB311745EC16EAB6FF
        952ED55E4542334DA00B4660256EFE3C2B1980BA1405443E9E4379A382010830
        82010430170603551D200410300E300C060A2B0601040183E85E0101300E0603
        551D0F0101FF040403020106301F0603551D250418301606082B060105050703
        04060A2B0601040183E85E020130120603551D130101FF040830060101FF0201
        00306406082B0601050507010104583056302C06082B06010505073002862068
        7474703A2F2F706B692E676F6F672F633270612F726F6F742D67332E63727430
        2606082B06010505073001861A687474703A2F2F633270612D6F6373702E706B
        692E676F6F672F301F0603551D230418301680149C5CD8895343E75AD581DB03
        DE197F042A2A2DAA301D0603551D0E04160414DA7BE1BDB42C8A85E010D66B9A
        C74AF1FADFF637300A06082A8648CE3D0403030367003064023002C6D104DCD5
        B5DDBC0DD6EFF9D5EAE270D17AAE41216151120CEE89A9BE5C5F7EC7C20D17F5
        2DAB1FEBD76A8159207B02302D37C0228AA260C782A578ED4B72C87A59968E48
        640096EF65DD738822A5D58C12686F3E4F3C76FC5B62D9FE2D577DCCA4677369
        6754737432A169747374546F6B656E7381A16376616C5907E0308207DC06092A
        864886F70D010702A08207CD308207C9020103310D300B060960864801650304
        0201308190060B2A864886F70D0109100104A08180047E307C020101060A2B06
        010401D679020A013031300D060960864801650304020105000420F6A7FECB82
        E08AA58FB8A730A80BA373C02ECC76CD6428D96EA50E9CBE1197940214093BC7
        4C6785D31E37CAFE8E364B2A183938424C180F32303236313030313036333931
        345A300602010180010A020900856BEE50AE5677C4A08205A1308202CA308202
        4FA00302010202137B519970FFD75A959D0C40D74E86F1D7702483300A06082A
        8648CE3D0403033052310B300906035504061302555331133011060355040A0C
        0A476F6F676C65204C4C43312E302C06035504030C25476F6F676C6520433250
        4120436F72652054696D652D5374616D70696E6720494341204733301E170D32
        35303930383133343835395A170D3331303930393031343835385A3054310B30
        0906035504061302555331133011060355040A130A476F6F676C65204C4C4331
        30302E06035504031327476F6F676C6520436F72652054696D65205374616D70
        696E6720417574686F72697479205431313059301306072A8648CE3D02010608
        2A8648CE3D030107034200045B2099EFD267C3B9CE98EE583D3251BA8ABAFC33
        21F7B7CB087945D05CCD84E5ABE1339EF52B0764673D67139C9A3B12AF3E0CF9
        AEA730F12D26D2FD9CDCDC93A38201003081FD300E0603551D0F0101FF040403
        0206C0300C0603551D130101FF04023000301D0603551D0E0416041418CFDB7C
        67A7BB57D87CBFA10A53FFD0F7FCF9D6301F0603551D23041830168014DE5597
        8C60743B03E26AB44406659761CAE5F88E306C06082B06010505070101046030
        5E302606082B06010505073001861A687474703A2F2F633270612D6F6373702E
        706B692E676F6F672F303406082B060105050730028628687474703A2F2F706B
        692E676F6F672F633270612F636F72652D7473612D6963612D67332E63727430
        170603551D200410300E300C060A2B0601040183E85E010130160603551D2501
        01FF040C300A06082B06010505070308300A06082A8648CE3D04030303690030
        66023100DE636B36A12D67067B8EEB307C6DAA8F7D8999F6F9407078545D0F42
        033C5B7A461BFA9A1EA4B5B246FB7EEBC30FEDC1023100975DD62AB14EC83D3B
        C29C4E829E98AC0F7BE4755609671CC5870428FA50EC27CC1AD5797BC68369CD
        6812A4D3890A49308202CF30820256A00302010202144500836E721302C564A4
        9E643376FA8F09B764F4300A06082A8648CE3D0403033043310B300906035504
        061302555331133011060355040A0C0A476F6F676C65204C4C43311F301D0603
        5504030C16476F6F676C65204332504120526F6F74204341204733301E170D32
        35303530383232333632365A170D3430303530383232333632365A3052310B30
        0906035504061302555331133011060355040A0C0A476F6F676C65204C4C4331
        2E302C06035504030C25476F6F676C65204332504120436F72652054696D652D
        5374616D70696E67204943412047333076301006072A8648CE3D020106052B81
        04002203620004A37DF7F1BD082A1F455925E052F9A920DFFEDB2E8F4521D84F
        0AD5CD0371DD672A2C596EC09C2432722279B902915FB9A6CA479FA7C5347313
        7E5EC52544E931228E34D5B816FE1AC1AB33EAC6212C234FFF01E4E0C17FF038
        6BC572AD254B0AA381FB3081F830170603551D200410300E300C060A2B060104
        0183E85E0101300E0603551D0F0101FF04040302010630130603551D25040C30
        0A06082B0601050507030830120603551D130101FF040830060101FF02010030
        6406082B0601050507010104583056302C06082B060105050730028620687474
        703A2F2F706B692E676F6F672F633270612F726F6F742D67332E637274302606
        082B06010505073001861A687474703A2F2F633270612D6F6373702E706B692E
        676F6F672F301F0603551D230418301680149C5CD8895343E75AD581DB03DE19
        7F042A2A2DAA301D0603551D0E04160414DE55978C60743B03E26AB444066597
        61CAE5F88E300A06082A8648CE3D0403030367003064023041C6068D1D4A7C01
        95D6E54D81747C605DCC70425B4A118463FFA587DC9424D881CCA8F94751E676
        2E887669285850710230700BA62DD31E9BC5E9109B0011E753F4ED25A3E92C6A
        E7F06C9F770558791C6DE1DFBAF18A3F27134EB8BA1A523E232D3182017B3082
        017702010130693052310B300906035504061302555331133011060355040A0C
        0A476F6F676C65204C4C43312E302C06035504030C25476F6F676C6520433250
        4120436F72652054696D652D5374616D70696E672049434120473302137B5199
        70FFD75A959D0C40D74E86F1D7702483300B0609608648016503040201A081A4
        301A06092A864886F70D010903310D060B2A864886F70D0109100104301C0609
        2A864886F70D010905310F170D3236313030313036333931335A302F06092A86
        4886F70D01090431220420AFD6020D1EF3A61776C1D110439C9E61938CBAD196
        413B0EBC1EB2261C6F776C3037060B2A864886F70D010910022F312830263024
        30220420EF79271A4FBB713F293C3EDFF2B7AFBAF0A5F3CEAA167F6B166A22C1
        CA536128300A06082A8648CE3D0403020447304502207FFEE66C47A89569503B
        80189BF0A82A04968A63DF19264BFCBECE899C44C8C6022100D23230CD635671
        955CFDCCA5703E2F0A1B61670B0000B7EB4BDFAC9753F378FB657256616C73A1
        686F63737056616C73825903F5308203F10A0100A08203EA308203E606092B06
        01050507300101048203D7308203D33081ECA1423040310B3009060355040613
        02555331133011060355040A130A476F6F676C65204C4C43311C301A06035504
        03131343325041204F43535020526573706F6E646572180F3230323630393330
        3135333330305A3081943081913069300D060960864801650304020105000420
        B2CC90C9A99F32F0575E5082BCD383B8D109D0C658E07B9A1DC6E8AA1516ED2A
        04209C1AFD5F3E7E5C824796B574F2533FE382696FAE0DB746F67010B19539B1
        DB3D021400A7336C0C37E0036FF781EC18F4DA0FC3B4DD628000180F32303236
        303933303135333333385AA011180F32303236313030373135333333385A300A
        06082A8648CE3D04030203480030450220544B9E16B1E4058242F2BDE7B4EE17
        5989355D893601E01A25258DAAB9515D63022100E18FF0F1B3564844F8241E78
        208FDE089192772A6DDC09B35D06AAFEAA55D0E9A082028A3082028630820282
        30820207A003020102021400EEDCED621FB0249AE6E5017B9B261862AF3BE030
        0A06082A8648CE3D0403033051310B3009060355040613025553311330110603
        55040A0C0A476F6F676C65204C4C43312D302B06035504030C24476F6F676C65
        2043325041204D6564696120536572766963657320315020494341204733301E
        170D3236303932393134323335375A170D3236313032393134323335365A3040
        310B300906035504061302555331133011060355040A130A476F6F676C65204C
        4C43311C301A0603550403131343325041204F43535020526573706F6E646572
        3059301306072A8648CE3D020106082A8648CE3D030107034200042A500394AB
        60A5AA8D17756A5A96551D9ED54D81E3464F9D47E03906E52B6EA53EC8ECB3EF
        2E760EA7FE828BA810465CD39427332513DF29FADAECC96A04918EA381CD3081
        CA300E0603551D0F0101FF04040302078030130603551D25040C300A06082B06
        010505070309300C0603551D130101FF04023000301D0603551D0E041604142A
        F5E7AA2B01CFEE501D0DB8B59388B85C672729301F0603551D23041830168014
        DA7BE1BDB42C8A85E010D66B9AC74AF1FADFF637304406082B06010505070101
        04383036303406082B060105050730028628687474703A2F2F706B692E676F6F
        672F633270612F6D656469612D31702D6963612D67332E637274300F06092B06
        0105050730010504020500300A06082A8648CE3D0403030369003066023100CC
        C8306568339F62FFDE88B631937D49F52805033B47099701C4898C95B7A609BF
        BA1B77681992AAA9BB84EF9B9A8FB4023100A130C391D5E70C643708EB2C5D8A
        7ED4968BCB68C0A40C2F212D7B4EF43A7B3B4F55A688F103D826D15C29518B15
        D71E406370616458440000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000064706164324100F6584074C87A44A9EA3856EC
        8B541803A3A365C6F13B6FADFF472B50AC2B28F2DC26D6A0FEBD8A234A2FF21C
        462B8D670BA4EA65B20D21128D0ADAD211C572DBCA74FB000002126A756D6200
        0000276A756D646332636C00110010800000AA00389B7103633270612E636C61
        696D2E763200000001E363626F72A56A696E7374616E63654944782461353635
        613939342D646163652D343232312D333462342D346435613033336134623665
        74636C61696D5F67656E657261746F725F696E666FA2646E616D657822476F6F
        676C65204332504120436F72652047656E657261746F72204C69627261727967
        76657273696F6E733938393939313339343A3938393939313339347263726561
        7465645F617373657274696F6E7383A26375726C782D73656C66236A756D6266
        3D633270612E617373657274696F6E732F633270612E696E6772656469656E74
        2E76336468617368582043CF4105267EEEBCC1D2041CB75135CC2F00616C7827
        ED8827B9FBCE7B583996A26375726C782A73656C66236A756D62663D63327061
        2E617373657274696F6E732F633270612E616374696F6E732E76326468617368
        58205AC43E3C3AFF62129FEBC10EFFD6748C439D515F6B87E1F689714323B9C6
        AA5CA26375726C782973656C66236A756D62663D633270612E61737365727469
        6F6E732F633270612E686173682E6461746164686173685820C2AB7696113D18
        2C6F798358120AFB5F0A734E567DF3D5618E547AED3188DC5D697369676E6174
        757265781973656C66236A756D62663D633270612E7369676E61747572656361
        6C6766736861323536000003366A756D62000000296A756D6463326173001100
        10800000AA00389B7103633270612E617373657274696F6E73000000009C6A75
        6D62000000286A756D6463626F7200110010800000AA00389B7103633270612E
        686173682E64617461000000006C63626F72A46A6578636C7573696F6E7381A2
        65737461727414666C656E6774681918CB63616C676673686132353664686173
        685820FB959659A6EB21FB0FD26F584FC531FB19E203AD30928A9A063FF70D6A
        60248D637061644E0000000000000000000000000000000001F86A756D620000
        00296A756D6463626F7200110010800000AA00389B7103633270612E61637469
        6F6E732E763200000001C763626F72A167616374696F6E7382A466616374696F
        6E6C633270612E637265617465646B6465736372697074696F6E782043726561
        74656420627920476F6F676C652047656E657261746976652041492E71646967
        6974616C536F75726365547970657846687474703A2F2F63762E697074632E6F
        72672F6E657773636F6465732F6469676974616C736F75726365747970652F74
        7261696E6564416C676F726974686D69634D656469616A706172616D65746572
        73A16B696E6772656469656E747381A26375726C782D73656C66236A756D6266
        3D633270612E617373657274696F6E732F633270612E696E6772656469656E74
        2E76336468617368582043CF4105267EEEBCC1D2041CB75135CC2F00616C7827
        ED8827B9FBCE7B583996A366616374696F6E6B633270612E6564697465646B64
        65736372697074696F6E78284170706C69656420696D7065726365707469626C
        652053796E746849442077617465726D61726B2E716469676974616C536F7572
        6365547970657846687474703A2F2F63762E697074632E6F72672F6E65777363
        6F6465732F6469676974616C736F75726365747970652F747261696E6564416C
        676F726974686D69634D65646961000000716A756D620000002C6A756D646362
        6F7200110010800000AA00389B7103633270612E696E6772656469656E742E76
        33000000003D63626F72A26C72656C6174696F6E7368697067696E707574546F
        6B6465736372697074696F6E72496E70757420696E6772656469656E74203000
        001E726A756D62000000476A756D6463326D6100110010800000AA00389B7103
        75726E3A633270613A37353164613437392D303864632D616134302D38623938
        2D34643135363833346164346300000012FE6A756D62000000286A756D646332
        637300110010800000AA00389B7103633270612E7369676E6174757265000000
        12CE63626F72D284590628A2012618218259033C30820338308202BFA0030201
        0202131F31B08D2302A402392A5BD988A9EB7525E282300A06082A8648CE3D04
        03033051310B300906035504061302555331133011060355040A0C0A476F6F67
        6C65204C4C43312D302B06035504030C24476F6F676C652043325041204D6564
        696120536572766963657320315020494341204733301E170D32363037323732
        31303532385A170D3237303732323231303532375A306B310B30090603550406
        1302555331133011060355040A130A476F6F676C65204C4C43311C301A060355
        040B1313476F6F676C652053797374656D203930323931312930270603550403
        1320476F6F676C65204D656469612050726F63657373696E6720536572766963
        65733059301306072A8648CE3D020106082A8648CE3D030107034200044265BA
        DD9E0F9828B83DE5636F163C5240899F41098C1BBD52130386D24F71DC69D09D
        8FCFE640F66DF410C5D1502800060DD01B4791374CCF2B618D298D093EA38201
        5A30820156300E0603551D0F0101FF0404030206C0301F0603551D2504183016
        06082B06010505070304060A2B0601040183E85E0201300C0603551D130101FF
        04023000301D0603551D0E041604141A797E5D681EC62017955A090262DB24D9
        A7CA56301F0603551D23041830168014DA7BE1BDB42C8A85E010D66B9AC74AF1
        FADFF637306C06082B060105050701010460305E302606082B06010505073001
        861A687474703A2F2F633270612D6F6373702E706B692E676F6F672F30340608
        2B060105050730028628687474703A2F2F706B692E676F6F672F633270612F6D
        656469612D31702D6963612D67332E63727430170603551D200410300E300C06
        0A2B0601040183E85E0101301906092B0601040183E85E03040C060A2B060104
        0183E85E030A303306092B0601040183E85E0404260C2430313966373232322D
        343637612D373939312D383835652D643135643234303166373961300A06082A
        8648CE3D040303036700306402306BAC68A57E1FDAF1C134089AAEBD338C4992
        88CABD06BB1F4F829DA93B6DE326ABB7898149F211ACD79D40CEF10F93780230
        5B2F771718A1DA23D2B803C72FFC4D0C533404F39D573151E57EE3B231321C8C
        163E6614EAE8FBA7DC3B90FBEDE3A17B5902E0308202DC30820263A003020102
        021441FAA52147762158DA7F9B2CFF8DFD16091EEE3E300A06082A8648CE3D04
        03033043310B300906035504061302555331133011060355040A0C0A476F6F67
        6C65204C4C43311F301D06035504030C16476F6F676C65204332504120526F6F
        74204341204733301E170D3235303530383232333632365A170D333030353038
        3232333632365A3051310B300906035504061302555331133011060355040A0C
        0A476F6F676C65204C4C43312D302B06035504030C24476F6F676C6520433250
        41204D6564696120536572766963657320315020494341204733307630100607
        2A8648CE3D020106052B8104002203620004B823E55314A296DAA7076971D844
        BB14AF935595A6031473CC38D3CCA67CBA6A2ACAF0AA48B3A4641ACE89E68BAA
        BA7EAE7CEDD040035961F75FAD8DAB311745EC16EAB6FF952ED55E4542334DA0
        0B4660256EFE3C2B1980BA1405443E9E4379A38201083082010430170603551D
        200410300E300C060A2B0601040183E85E0101300E0603551D0F0101FF040403
        020106301F0603551D250418301606082B06010505070304060A2B0601040183
        E85E020130120603551D130101FF040830060101FF020100306406082B060105
        0507010104583056302C06082B060105050730028620687474703A2F2F706B69
        2E676F6F672F633270612F726F6F742D67332E637274302606082B0601050507
        3001861A687474703A2F2F633270612D6F6373702E706B692E676F6F672F301F
        0603551D230418301680149C5CD8895343E75AD581DB03DE197F042A2A2DAA30
        1D0603551D0E04160414DA7BE1BDB42C8A85E010D66B9AC74AF1FADFF637300A
        06082A8648CE3D0403030367003064023002C6D104DCD5B5DDBC0DD6EFF9D5EA
        E270D17AAE41216151120CEE89A9BE5C5F7EC7C20D17F52DAB1FEBD76A815920
        7B02302D37C0228AA260C782A578ED4B72C87A59968E48640096EF65DD738822
        A5D58C12686F3E4F3C76FC5B62D9FE2D577DCCA46773696754737432A1697473
        74546F6B656E7381A16376616C5907DD308207D906092A864886F70D010702A0
        8207CA308207C6020103310D300B060960864801650304020130818E060B2A86
        4886F70D0109100104A07F047D307B020101060A2B06010401D679020A013031
        300D060960864801650304020105000420BC9AABCD03DA9201E26D939234C72E
        6E85F9B731AAE7B23033D9AD47BDB3A93C02143F7E92F6F1405B7572345CC186
        15D303B20E96B3180F32303236313030313036333931395A300602010180010A
        020868A565ACB6C9D6B0A08205A0308202C93082024FA00302010202136C26EE
        EDD09CDCEC7670D543E6DA504E3A9C5E300A06082A8648CE3D0403033052310B
        300906035504061302555331133011060355040A0C0A476F6F676C65204C4C43
        312E302C06035504030C25476F6F676C65204332504120436F72652054696D65
        2D5374616D70696E6720494341204733301E170D323530393038313334393030
        5A170D3331303930393031343835395A3054310B300906035504061302555331
        133011060355040A130A476F6F676C65204C4C433130302E0603550403132747
        6F6F676C6520436F72652054696D65205374616D70696E6720417574686F7269
        7479205431323059301306072A8648CE3D020106082A8648CE3D030107034200
        048A0B64D863A2126B0395490A90909EE9F4BF1933600C26D62AD31B3EFB92A6
        F1D40BA187025F4E974145BEC717B6F4587E1B82DC5769C8509B04285D6C0491
        FCA38201003081FD300E0603551D0F0101FF0404030206C0300C0603551D1301
        01FF04023000301D0603551D0E0416041456DADD780A42632B92BCC9FCA81C3C
        4A8AC7151A301F0603551D23041830168014DE55978C60743B03E26AB4440665
        9761CAE5F88E306C06082B060105050701010460305E302606082B0601050507
        3001861A687474703A2F2F633270612D6F6373702E706B692E676F6F672F3034
        06082B060105050730028628687474703A2F2F706B692E676F6F672F63327061
        2F636F72652D7473612D6963612D67332E63727430170603551D200410300E30
        0C060A2B0601040183E85E010130160603551D250101FF040C300A06082B0601
        0505070308300A06082A8648CE3D0403030368003065023100CDCFE6E058F52E
        896A2B5A13AEA18D0E68891C4D47BB5B38ADA6740E868177F3BC83DD5380AD69
        5842818DA00E1E64EB02304E92FC92D721C32340ABBD61A64F20DF4CC35B24D8
        2E7FCD9348D4F290189D50438778EC5DB2371E7B90B2923DF99798308202CF30
        820256A00302010202144500836E721302C564A49E643376FA8F09B764F4300A
        06082A8648CE3D0403033043310B300906035504061302555331133011060355
        040A0C0A476F6F676C65204C4C43311F301D06035504030C16476F6F676C6520
        4332504120526F6F74204341204733301E170D3235303530383232333632365A
        170D3430303530383232333632365A3052310B30090603550406130255533113
        3011060355040A0C0A476F6F676C65204C4C43312E302C06035504030C25476F
        6F676C65204332504120436F72652054696D652D5374616D70696E6720494341
        2047333076301006072A8648CE3D020106052B8104002203620004A37DF7F1BD
        082A1F455925E052F9A920DFFEDB2E8F4521D84F0AD5CD0371DD672A2C596EC0
        9C2432722279B902915FB9A6CA479FA7C53473137E5EC52544E931228E34D5B8
        16FE1AC1AB33EAC6212C234FFF01E4E0C17FF0386BC572AD254B0AA381FB3081
        F830170603551D200410300E300C060A2B0601040183E85E0101300E0603551D
        0F0101FF04040302010630130603551D25040C300A06082B0601050507030830
        120603551D130101FF040830060101FF020100306406082B0601050507010104
        583056302C06082B060105050730028620687474703A2F2F706B692E676F6F67
        2F633270612F726F6F742D67332E637274302606082B06010505073001861A68
        7474703A2F2F633270612D6F6373702E706B692E676F6F672F301F0603551D23
        0418301680149C5CD8895343E75AD581DB03DE197F042A2A2DAA301D0603551D
        0E04160414DE55978C60743B03E26AB44406659761CAE5F88E300A06082A8648
        CE3D0403030367003064023041C6068D1D4A7C0195D6E54D81747C605DCC7042
        5B4A118463FFA587DC9424D881CCA8F94751E6762E887669285850710230700B
        A62DD31E9BC5E9109B0011E753F4ED25A3E92C6AE7F06C9F770558791C6DE1DF
        BAF18A3F27134EB8BA1A523E232D3182017B3082017702010130693052310B30
        0906035504061302555331133011060355040A0C0A476F6F676C65204C4C4331
        2E302C06035504030C25476F6F676C65204332504120436F72652054696D652D
        5374616D70696E672049434120473302136C26EEEDD09CDCEC7670D543E6DA50
        4E3A9C5E300B0609608648016503040201A081A4301A06092A864886F70D0109
        03310D060B2A864886F70D0109100104301C06092A864886F70D010905310F17
        0D3236313030313036333931385A302F06092A864886F70D0109043122042001
        DABEDFAEF417D7BD80F2F229A3CF8A7DDDABB7B4380363DC4F40CAE20B846630
        37060B2A864886F70D010910022F31283026302430220420790881DC3D3398F1
        33E54C2ED6AABCD1766D7FC51418B4A2AC9F4C19966CE56D300A06082A8648CE
        3D0403020447304502200FEF0B89F1EA0CCEAEAD5B2687CF24A6161E2457AA5A
        98D63FFAA43A4A9FA5C202210099288507EA59FCAEED23C80034864FD51481BD
        0AF398C0F0082C2559257A2A6E657256616C73A1686F63737056616C73825903
        F3308203EF0A0100A08203E8308203E406092B0601050507300101048203D530
        8203D13081EBA1423040310B300906035504061302555331133011060355040A
        130A476F6F676C65204C4C43311C301A0603550403131343325041204F435350
        20526573706F6E646572180F32303236313030313036323730305A3081933081
        903068300D060960864801650304020105000420B2CC90C9A99F32F0575E5082
        BCD383B8D109D0C658E07B9A1DC6E8AA1516ED2A04209C1AFD5F3E7E5C824796
        B574F2533FE382696FAE0DB746F67010B19539B1DB3D02131F31B08D2302A402
        392A5BD988A9EB7525E2828000180F32303236313030313036323734375AA011
        180F32303236313030383036323734375A300A06082A8648CE3D040302034800
        3045022100D2344022EE06670ACE6D5BE3737F2FDE49A1F387C9F1A501D56D1C
        7803505B9802206E8B74F8AE5FAB1018CF13E619C16F48B723F021F33D6B67C4
        AC7E8DA7186F84A0820289308202853082028130820207A003020102021400F4
        8E805632DC7F583B900F4548E50402CF34BB300A06082A8648CE3D0403033051
        310B300906035504061302555331133011060355040A0C0A476F6F676C65204C
        4C43312D302B06035504030C24476F6F676C652043325041204D656469612053
        6572766963657320315020494341204733301E170D3236303932393135323534
        385A170D3236313032393135323534375A3040310B3009060355040613025553
        31133011060355040A130A476F6F676C65204C4C43311C301A06035504031313
        43325041204F43535020526573706F6E6465723059301306072A8648CE3D0201
        06082A8648CE3D03010703420004F1025B12F86173F0672D2EB2E19F9D4E6694
        BDB1E98EF567DE368FCF3E912364FFFE22F9A8D971C5A6F1B524B272BB7A14CF
        AA87A2FD8E790E4C04C97D9032A3A381CD3081CA300E0603551D0F0101FF0404
        0302078030130603551D25040C300A06082B06010505070309300C0603551D13
        0101FF04023000301D0603551D0E04160414BF4FA2C9317DABF7AAD444E6A69C
        8F1D29ADE748301F0603551D23041830168014DA7BE1BDB42C8A85E010D66B9A
        C74AF1FADFF637304406082B0601050507010104383036303406082B06010505
        0730028628687474703A2F2F706B692E676F6F672F633270612F6D656469612D
        31702D6963612D67332E637274300F06092B060105050730010504020500300A
        06082A8648CE3D04030303680030650230352A68FCFDEDB75849B931954431E5
        0BF9FCFFDF47C0A7998D8D2D4FF573038B98A3DC426E4FA48A5CCA6161E5F78A
        74023100DD87FA6021B589A845B674477AF14C99FDFFC55941A4B60DBE8C441D
        054F371742476F334C67EE812EE0D236874DEEB0406370616458470000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000064706164324100F658409A2BB23AEB2140B45E1F40771FC4B7C998276F70
        6753AE1262C9634758596A56C88B4A921615C1D57AE970F728B10730C63F3A2B
        7AA8E652872AEDC4739647FA000002126A756D62000000276A756D646332636C
        00110010800000AA00389B7103633270612E636C61696D2E763200000001E363
        626F72A56A696E7374616E63654944782465383032626166322D636361332D63
        6263632D343835332D34376162636431336465383074636C61696D5F67656E65
        7261746F725F696E666FA2646E616D657822476F6F676C65204332504120436F
        72652047656E657261746F72204C6962726172796776657273696F6E73393836
        3037363034373A39383630373630343772637265617465645F61737365727469
        6F6E7383A26375726C782D73656C66236A756D62663D633270612E6173736572
        74696F6E732F633270612E696E6772656469656E742E763364686173685820F4
        8BA9B7BE99FB4523ACDC3AC379C52CBEDB5113A6248B5C43D8593CEDE01B0FA2
        6375726C782A73656C66236A756D62663D633270612E617373657274696F6E73
        2F633270612E616374696F6E732E763264686173685820D2BA487E6D9C54D4E3
        A387D409CC76C738039066B029C027B5FB7C1F559B644BA26375726C78297365
        6C66236A756D62663D633270612E617373657274696F6E732F633270612E6861
        73682E64617461646861736858201CD12F1540E35FF24982D99AD2D82FB7CD8D
        33C4719BBFEB6C21A18E76E03B0F697369676E6174757265781973656C66236A
        756D62663D633270612E7369676E617475726563616C67667368613235360000
        09136A756D62000000296A756D646332617300110010800000AA00389B710363
        3270612E617373657274696F6E73000000009C6A756D62000000286A756D6463
        626F7200110010800000AA00389B7103633270612E686173682E646174610000
        00006C63626F72A46A6578636C7573696F6E7381A2657374617274191FB8666C
        656E67746819373D63616C676673686132353664686173685820287EE488483F
        B07D35B7E1A20E8A10545E0AB904E7274A56F06921E0B2D00630637061644C00
        0000000000000000000000000001CE6A756D62000000296A756D6463626F7200
        110010800000AA00389B7103633270612E616374696F6E732E7632000000019D
        63626F72A167616374696F6E7382A366616374696F6E6B633270612E6F70656E
        65646B6465736372697074696F6E704F70656E656420627920476F6F676C656A
        706172616D6574657273A16B696E6772656469656E747381A26375726C782D73
        656C66236A756D62663D633270612E617373657274696F6E732F633270612E69
        6E6772656469656E742E763364686173685820F48BA9B7BE99FB4523ACDC3AC3
        79C52CBEDB5113A6248B5C43D8593CEDE01B0FA366616374696F6E6F63327061
        2E7472616E73636F646564716469676974616C536F7572636554797065784668
        7474703A2F2F63762E697074632E6F72672F6E657773636F6465732F64696769
        74616C736F75726365747970652F616C676F726974686D6963616C6C79456E68
        616E6365646A706172616D6574657273A16B696E6772656469656E747381A263
        75726C782D73656C66236A756D62663D633270612E617373657274696F6E732F
        633270612E696E6772656469656E742E763364686173685820F48BA9B7BE99FB
        4523ACDC3AC379C52CBEDB5113A6248B5C43D8593CEDE01B0F000006786A756D
        620000002C6A756D6463626F7200110010800000AA00389B7103633270612E69
        6E6772656469656E742E7633000000064463626F72A56964633A666F726D6174
        6A696D6167652F6A7065676C72656C6174696F6E7368697068706172656E744F
        667176616C69646174696F6E526573756C7473A16E6163746976654D616E6966
        657374A3676661696C7572658067737563636573738AA264636F64657374696D
        655374616D702E76616C6964617465646375726C784D73656C66236A756D6266
        3D2F633270612F75726E3A633270613A33666338393338662D373663362D3061
        36352D363537642D3466636363393564643537382F633270612E7369676E6174
        757265A264636F64657174696D655374616D702E747275737465646375726C78
        4D73656C66236A756D62663D2F633270612F75726E3A633270613A3366633839
        3338662D373663362D306136352D363537642D3466636363393564643537382F
        633270612E7369676E6174757265A264636F646578217369676E696E67437265
        64656E7469616C2E6F6373702E6E6F745265766F6B65646375726C784D73656C
        66236A756D62663D2F633270612F75726E3A633270613A33666338393338662D
        373663362D306136352D363537642D3466636363393564643537382F63327061
        2E7369676E6174757265A264636F646578197369676E696E6743726564656E74
        69616C2E747275737465646375726C784D73656C66236A756D62663D2F633270
        612F75726E3A633270613A33666338393338662D373663362D306136352D3635
        37642D3466636363393564643537382F633270612E7369676E6174757265A264
        636F6465781D636C61696D5369676E61747572652E696E7369646556616C6964
        6974796375726C784D73656C66236A756D62663D2F633270612F75726E3A6332
        70613A33666338393338662D373663362D306136352D363537642D3466636363
        393564643537382F633270612E7369676E6174757265A264636F64657818636C
        61696D5369676E61747572652E76616C6964617465646375726C784D73656C66
        236A756D62663D2F633270612F75726E3A633270613A33666338393338662D37
        3663362D306136352D363537642D3466636363393564643537382F633270612E
        7369676E6174757265A264636F64657819617373657274696F6E2E6861736865
        645552492E6D617463686375726C786173656C66236A756D62663D2F63327061
        2F75726E3A633270613A33666338393338662D373663362D306136352D363537
        642D3466636363393564643537382F633270612E617373657274696F6E732F63
        3270612E696E6772656469656E742E7633A264636F6465781961737365727469
        6F6E2E6861736865645552492E6D617463686375726C785E73656C66236A756D
        62663D2F633270612F75726E3A633270613A33666338393338662D373663362D
        306136352D363537642D3466636363393564643537382F633270612E61737365
        7274696F6E732F633270612E616374696F6E732E7632A264636F646578196173
        73657274696F6E2E6861736865645552492E6D617463686375726C785D73656C
        66236A756D62663D2F633270612F75726E3A633270613A33666338393338662D
        373663362D306136352D363537642D3466636363393564643537382F63327061
        2E617373657274696F6E732F633270612E686173682E64617461A264636F6465
        7818617373657274696F6E2E64617461486173682E6D617463686375726C785D
        73656C66236A756D62663D2F633270612F75726E3A633270613A336663383933
        38662D373663362D306136352D363537642D3466636363393564643537382F63
        3270612E617373657274696F6E732F633270612E686173682E646174616D696E
        666F726D6174696F6E616C806E6163746976654D616E6966657374A26375726C
        783E73656C66236A756D62663D2F633270612F75726E3A633270613A33666338
        393338662D373663362D306136352D363537642D346663636339356464353738
        64686173685820BF7931136D268DF1FA1E0B190C8150DA2FE5DA138339AEE11D
        3D956165C04E686E636C61696D5369676E6174757265A26375726C784D73656C
        66236A756D62663D2F633270612F75726E3A633270613A33666338393338662D
        373663362D306136352D363537642D3466636363393564643537382F63327061
        2E7369676E61747572656468617368582040872C67D3A88757000D09583FA9E8
        82EAB6775204573CEC203F6722599F157AFFE11FA245786966000049492A0008
        000000040012010300010000000100000031010200070000003E000000120203
        000200000002000200698704000100000046000000D400000050696361736100
        00060000900700040000003032323001A00300010000000100000002A0040001
        0000000004000003A00400010000000004000005A0040001000000B600000020
        A402002100000094000000000000006131373239353563393830383966393630
        3030303030303030303030303030300000020001000200040000005239380002
        00070004000000303130300000000006000301030001000000060000001A0105
        0001000000220100001B010500010000002A0100002801030001000000020000
        000102040001000000320100000202040001000000681E000000000000480000
        00010000004800000001000000FFD8FFE000104A464946000101000001000100
        00FFDB0043000503040404030504040405050506070C08070707070F0B0B090C
        110F1212110F111113161C1713141A1511111821181A1D1D1F1F1F1317222422
        1E241C1E1F1EFFDB0043010505050706070E08080E1E1411141E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E
        1E1E1E1E1E1E1E1E1E1E1EFFC000110800A000A003012200021101031101FFC4
        001D000001050101010100000000000000000000010506070804020903FFC400
        59100000030503050B06090906020B0000000102040003050611071221081314
        3191151622415152566194A1D232718295D1D31837425455748193B324263638
        62727592B22334445764B146E109173543475363A2A4C1F0FFC4001B01010100
        030101010000000000000000000001020304050607FFC4003111000202020101
        0506040700000000000000010203041105211231415171132261A1C1F0068191
        B114324252D1E1F1FFDA000C03010002110311003F00D39FA2C340FCB34AC39B
        76EEDE560BF9AF817F2CD2C38B83729B6BE5314DEBE15D3B49C39B729B795800
        DECE003A6E961FBB729B6BAFB98009F9AF80082BD2FD1B94DBCEEE60B7E58F24
        A2B34BE40BB769B6BADA39699310D95D9FC6E6476EC9127AED219E3A767E0941
        E050A401D750BC70AEAC01B1CC9766F375ADC0145A04D76988A0899F2978E9C9
        E20FC7857697AE96F14A42008D000390706037570E56A01482AF4AD785DB94DB
        5D6C5D3CADE49455E9586ABB729B795B0B3FB1995DD3CCDBCCA2E500307167C4
        7FD9E33AC272754917298D0CB75965694A02630B87A27A0062234079C40CD136
        6C3791A844A31B75013C550A88BC49DE75D2133F291F090B5E1012A2221AF60B
        38814F2B968528ACD2F5E176E536D7CAEE6F95AA10AC39A211144ADEAC4A85F0
        3B055894C72888814C002350A805695C2AD7CD99E4E5119F648874D309B4B704
        70B08379D192BD13B97851A1DD9A87D603B4283C6D134FB8CE509452725DFDC6
        D8A1E570E0945669618E025B94DB5D6CB43CAD81482B34AD785DB94DB5D6D92B
        E08532FF009989FB23EF1B1F0429947FF12D37647DE36BA30DA35ADD3CAF814A
        2AF4AD785DBB4DB5D6C014F2B850A5157A66BC2EDCA6DAF94D92872429978ED3
        137647DE3607241997FCCC4DD91F78D9A1B46B5029E57C0A5159A66BC2EDCA6D
        AF95DCC943CAFE4945582B0C46976E536D75B64BF820CCBFE65A6EC8FBC6D5ED
        BBD88472CA655491E553A162A452B41283A74E9E3B128890C6BD5130F3694EB6
        686CDED5DEB601F960ABF46ED36F2B01F9AD80082C157C9C1BB4DB5D6D92725B
        CA055CACF5D49968647A2E94BB75B9B11546128BB2182A42BC110C48202174FC
        5C78621AD4292C0540417695C7E4DCA6DAD6AC28A01BD7A800E97A5F2706E536
        D7CA60B595F00FCB34BE4E0DCA6DAF95DCC537B380516E961FBB729B797B9800
        DECF182DD2FD1B94DBCEEE601004657D5459A5FA3729B6BAFB994A6195870FCB
        34AE4E0DDBBB6BAD903F3638C16E97E8DCA6DE5EE6ED862308101EF3C0519FA0
        E2176ED36F2B01C621BD7C0074ED2BD1B94DBCACD335CC306B3081BF8CC7A20E
        B41785E1BD38DDBA21A8A50C44C61AE0018E0DD9175C8E43862A89C4143B788C
        1D19EBF7C71BA0E4840A88F1D75B6069F2688ADB1CE8F563F78A134AE81E0951
        2611A7079478B3860C447883006C2738D71729771BF1B1ACCAB55552DB648ED3
        ADAE6AB48451494E4F86821965598A450FD49005F3F294D782F1B107615A0DD2
        D470D62D0087D9DBA076408944DEBDBBA9DB90A142BAE823EC6B160D0676E52B
        B74E9D9532628508EC814C3FFDC6DDEFDF422185AAA5291375BE78528F78B78D
        6E7DB37A8745F33F42C3FC2F878D0ED647BCFE3D17DFA95F16429740B8B9526E
        B17C3EC6E6556790779514CA55B81E2E101C3FD9AC577314BAF8D71DC6A1A630
        F167C80DD8770914100E0476728860620863F68368FE27222F6DB3D25C4F1972
        D46B8BF4FF00442603004909811E175D208F6F678C62D3397B01C3CCD2FC9127
        47B21DA62AB3A8C28A42A36F00C89E1C685229A7007AAF97803FB4056FCDFC2B
        0AB879E89BDAD07B4A812B790F77134C478ED7A03671DBC77AC4A0351A087180
        E21F6B6EC3CA71B7DF7FCDFB9E77E20E1A16E12F631D3AD74F4F15F5FF00A7D0
        F61AB8C9D6D15D5A4D9A228BBE78418B25A258A103583F287974E43850C1D622
        1C4D63B7BE7E641461861801B397FD201F14906FE364FC178DA35B3A65FCEDE1
        EC8612729044A48D92F080605AB97800D02EF1BD5595422D2EC164E2BCB88E36
        9A0297425D7757F64039B79C66208FDA1AC38C058B27DB688CD964C0FACCAD49
        33C76EDD98AE51AD7EF3FBB07C9298D8DE7235E09FE4F9B55BD620FDCA9B1E94
        4E99E91F10B074EECC241BC0062900A628D38C0404043A9B86DA6CB61169500D
        19513458AA728E82BCA4A99D0F34DCE763C61C5AC31D6D1532DE20965B281886
        05E558150300D00A01C61AEB5BCDFB3875BDDAD0DA6E95D576E536F3BB9B2258
        35B047EC6A647D6656A291E0210315DA458F4C22094B8DD1BD4E1B81AE021E4F
        9AA01AFE1499D429CE79CA976B5DAA294E431442ED2950101A8D406BADA191F8
        2097C06F88ADA71E24FF009B1FA53808E85A2E18F0AFD76535321877D03AF431
        4B8F3AFD7672320177D1C7A0E8B873AFD76723019672CC9C55A48543ECD212FC
        7488D1C8A57800D073453083A763D463D4C3FB80D0196E1A82050429D43C76E9
        124254EF0F8018DC661FB7FF00A06E49F630F67ECA56648D8855CA37C295316B
        50203B00745A6C31BCE2DC810D88DA85A224B3F81BD339852335E5EA4A15294A
        51A1CE3CB411BA50E330B79B95195F6AA9772EACFAFE1ADAF8CC19E74D6E727D
        98AF4FA6FBFD06B8FCD535CC90D8AAE94D02A4F038612F2C5E05A080088142A6
        1C0A2222142870B8DACCC9BB27F94ED0E4371394D3148CBF50A14BE7429DCBD2
        BB205C352A261013088FD8D705BBCAB07B38C98262962069C8544F513B025D0A
        08095EBB113987E518D5C4593226F880877D7D5FE20377554C2A5A8A3E6B373F
        23327DBBA5BFD97A22056F561364321D96C5E6472962EE5638760E9186E80981
        E2838DD200809710D6234E228B539662BA152C49857F188B3870758F05F91C98
        F78C526A0A142A38D2BF6836B5CA4ACA6256AF028442D0CC2E612ED12B33F7C5
        7CE8CF08F6F140A0342E378BC2A717085A2B24649F67505B8FA3EA22331A80A0
        895F1F47715FDC20DE10F399B1C8A15D1ECB7A46CE33917C7DBEDA31DBD696FC
        0CF6A6D2DDAC5808258812F8BAA379050763C2F310A0261EE694C0ACAADF2772
        DE529DC4A70F7A188AA3E60C251FD80BCF47EDA36C69665B97A58480925D8243
        A12E698951A72BB11F3880547ED11676000EA6C6BC3A6BEE47465F3F9F95D256
        69792E9FB15264EB62AE2C91C44DE8CC0FA2CB22447657C00E734E480413085D
        2D4444784388EC6B6D861BA8F18564D4C30C000CC53F4A7069DE535D2CC79C19
        EA158400309468776601A94E41E2314710D9A8459F5860322BFC91A6646A1EBA
        825A3B974884E267653B87CECFE9010C215EB06F1F0519F7FCCC4BFF00C8F6B6
        BD61A68BB30E5A664CB344B9264566A8A4EA8624EE14945F0BA176F84E628087
        04A26D5ADAEAC89D22B8F589A6D2620F3F2356F9D3ABF5350806A81431C0031A
        075B4E3291F8869D3F859FFA8AD08C88D0EEBD8425719ECC68912546BD4ADFBC
        25D94BAC654CBC29BE6E446293D2BF5D9C9DEC5DDF4EBA22D1B0E75EAECE460C
        1BE7A57F23D13D2BF5D94D5DEC094669C0688F45C39D7AF6CE46853E6D4B11C3
        A486CD9345F0056FDFD1C88EBCE3D13880FD9511FB1B5C647528859FD95B8989
        72407D149A80153CBD819CB82D7345AD38C0C27F48391B184B70457179E52488
        4208114C64AE4E01E5050C2430FD85BC2DF4E13277327A77499310AA9C3D7657
        6ECA01741D1481400E3E210D8DAE15F66529799D79194EDAABABC20BE6DB6DFD
        F915AE5489F70EC026C4C2F34AD39293854A66EEBE20F5D6B5669C897E2021DF
        5F57F88CEF95327DC4B019B1303CD2B4E4A4E15299BBAF883D75AD7AB5334644
        DF1010EFAFABFC46DA8E365BD1642FD711D95CC516C3C4822222984953F50DE2
        8B37EE02EE964776B9F03384593C45411D843A26440628889CC64C0FAF871062
        21466FDCD99BA52E7D564F135310DC05DD2C8EED73E0637017F4B239B5CF818D
        CD99BA52E7D564F131B9D3374A1CFAAC9E26017701774B239B5CF8193701774B
        239FCCE7C0CBB9B3374A1CFAAC9E26373666E9439F5593C4C026E02EE964736B
        9F031B80BBA591CDAE7C0CBB9D3353F4A1CFAAC9E26061B32F4A1CFAAC9E2610
        3701774B239B5CF818080AEE95C736B9F031B9B3374A1CFAAC9E264DCD99BA50
        E7D564F1300BB80BBA571CDAE7C0DD90A872844F4E77D19882F03168055224A1
        7AC2E94316E2DCD99BA52E7D564F1376C252C593BD39A231722E209400852A42
        BABA35D75011AB010FCA4BE21A74FE167FEB2B42722140318B094AE33BA38248
        92A35EA56FDE317FDA8D36CA4BE21A74FE167FEB2B42B2305FA0E4FB0CA39179
        7E28B351A94A189ED68CCD1734E2A73C64620EEE5DBC180EBD4DFBCCB11FEED7
        5CF10EA1F337ED363E04BA28DCCE672F6AE2D4DF9018657FF5DA4E3CDB94DBCA
        D0A67C972C522F246548AA7E7EE51299745E285684C57A19C17CF49412892950
        BA2738D7550038F568100DEC6182D057E8DCA6DE5EE6F460195B01A2D0558736
        E536F2B250658C3FBE699E8DCA6DE77730159654A9B70EC066C4C07053A72527
        0A94CDDD7C41EBAD6BDCCD59137C4043BEBEAFF119DB2A64DB876033625BE0A3
        4E4A4E15299BBAF883D75AD59A7226F880870FFAF57F88D51196F459DC58E477
        B94A50B83008E7054B833C010E2A5D30519BF31387D2702EC2F7DE377C58D180
        23BDC8750F787A8E734B78720007152E00F7B37E7274F9A4B7DA54781A980B98
        9C3E9380F617BEF18CC4E1F4A407B0BDF78C97E74F9A4B7DA547818BF3A7CD25
        BED2A3C0C02E6270FA4E03D85EFBC6331387D2901EC2F7DE3267274F9A4B7DA5
        47818CE4E61FE125BED2A3C0C28B989C3E9480F617BEF1933138FD2901EC0F7D
        E319C9D3E672DF6951E063393A7CD25BED2A3C0C2066270FA5203D85EFBC65CC
        4E1F4A407B0BDF78C99C9D356892DF6951E062FCE9F3496FB4A8F030A2E6270F
        A4E03D85EFBC6EC853B8D91E9C62AAE1CFDDDDE00264E7762035E313186A0DC5
        9C9D3E692DF6951E06ED849A3C67A708B3885BB7605E00A47AF0E613578EF943
        0F33010FCA47E21A74FE167FEA2B4232245DB9161095FE641469711545BB5A5C
        BA62E3C7AEF7734DF292F8869D3F859FFACAD08C89176E4583A47F98051A5C49
        51695A5CBA62FF00BDEEE68CC917788EF669802DD2FD1B94DBCBDCCB7B7AE218
        02ED2B1E6DCA6DE56411DEC53FC602BF46E536F3BB99A623344BF22CC08200BA
        2E8DEC56301792A439EE3C381478831D63500D55101A55A147700DEB60020B74
        AC39B76EEDE564286F5C0400416697E8DCA6DAEBEE629BD6C004176958736E53
        6F2B001BD8C2A0B74BF46E536F2F730159654A982056033625CE691A7A5270A9
        4B975F107AEB5AB35644DFABFC37EBEAFF00119D72A54DB876033626CE693A72
        5270A94CDDD7C41EBAD6BDCCD5913FEAFF000DFAFABFC462232DD8BBF8A3823B
        186439CAD3088DF078A733743884301AB37EE84D5D1A45EB40F0338C595AC484
        7428E12FA2226110315DBE76EEE05358DF10AD7A99BB76639D0F5DDB93F89B23
        10D3E6AE8D22F5A07818DD09AFA348BD681E06376639D0F5DDB53F898DD98DF4
        3D776D4FE2600DD09ABA348BD6A1E0637426BD7BDA45EB40F032EEC473A1EBBB
        6A7F1326ECC73A1EBBB6A7F13006E84D7D1A45EB40F031BA135746917AD43C0C
        6ECC73A1EBBB6A7F131BB11CE87AEEDC9FC4C01BA135746917AD03C0C69F35F4
        6917AD43C0C6EC473A1EBBB6A7F131BB31BE87AEEDA9FC4C01BA135F46917AD0
        3C0DDB0953187CF4E113853844402D48676B01F0986BAA97428DC7BB31BE87AE
        EDA9FC4DD9095D1056F5E15640D4438A52D4A778A1D3C030D755082220C043B2
        92F8869D3F859BFACAD09C89220306B074AFF359FD2E24A8B4AD2E5D3176D6F7
        734DF292F8869D3F859BFACAD09C88D76E4583A57D99D234B892A2DDAD2E5D31
        43AF5D7B9A33245DC17A571E0D16E99AB1BB729B79DDCDF3E2D4E7B05F94B84C
        C8548BE45078BB8728DE86006769DE0621D461031BD26D6F94CCEE364B65EBC1
        1AA2BD8BC7886468043826726A70DE06BF24A6AD796EB61898E087854A7024A6
        76255CB1F19FBC28EB013014085FB029F688B6B94D45A5E674D38D3B6139AEE8
        ADBFD52FA9F4E0437AD8574FD270E6DCBBB795929BD8FF005DA5FA3729B79DDC
        C1BF35878976958736E536F2B1FA31C8B74BF46E536F3BB9B339CACF2A64DB87
        6033626CE695A72577C2A533775F107AEB5AF5334E44FF00ABFC37EBEAFF0011
        9D72A64DB896033626CE029D39293854A66EEBE20F5D6B566AC89EBF07F86FD7
        D5FE2354465BD165EF5091D99DC2E20BEF888095210A612538C6F1819BF7C0AB
        A29317DC3BF78DDF1789BA8691D99E245EA7382200095319F0969CB4D4CDDBE9
        4BF43CC1EAC78D4C4F5BE055D1498BEE1DFBC637C0ABA29317DC3BF78DE77D09
        7E878FFAB1E31BE94BF43CC1EAB78C02EF815745262FB875EF1977C2ABA29317
        DC3AF78DE77D297E87983D56F18DF4A5FA1E60F563C610F41302AE8A4C5F70EB
        DE31BE055D1498BEE1D7BC6F3BE94B5FFB1E60F563C637D297E87983D58F1853
        D6F815745262FB875EF18DF02AE8ACC5F70EFDE370C6E7E8141218FA29184D17
        4085C05E7AA1420391D903AC47FDB58B669B57CA1E649E563E95AC9D3A94080C
        1754458E19B7E728E0377FF24BD7E58F56A6C652515B6675D53B64A105B6CB56
        D3F2909424656785A8854516465D9801E2228BA2E68075DF3818C051A7C9D7CB
        46B4E578F6EF2372B1DC1E2885C3F4EED43A3AB764281CA70030005D30E34101
        6F9CB685292596E5C46F4EFCEAE26A950E79F984682174444003CE3AC7116FA1
        32ACC9077702469941DEC348910B9219E2F202720DD214B818C341D4D8556C6D
        8F6A3DC746661D98767B2B57BDD3E6346525F10D3A7F0B37F595ABBC90664874
        979378C7E2EF5D91082D5667EF1E1AE83A2904BE7A88D6801AC4680DFAE52F6C
        7673FF00563314AE8A654B148B4451993B97283FB7294C2628D4E70E00061CA2
        3D4D9624F85CDF33CB28A5D58B542195133F3292BAA5D07AF0C389803E58F100
        8E01C4D6CB235AED49931312ECAB1575476D9278DC6565AFDA5BE99D791EB996
        A16612214EF79803502886ABC61E11BEC0E46E488393CCB6C928414099D17ABD
        D1DE13F605E008FF00ED20B4A1495142218485207647095C178541C0A0188D47
        8C78C45BBB23D879E336C513B43508CCF91421D99D23AE019E785B85C69C4EEF
        88FEF0379B8F64B22FF69E0BB8FAEE5716BE278B58C9EE7635BFCBAFE8BA1B34
        DF9AD860B74AC39B769B795929BD7C3059A67A3729B6BAD8A6F58681F96E9587
        36EDDDBCAC1437B15C416697E8DCA6DAF95DCDEA1F1456795326DC3B019B135F
        D274E4AEF854A66EEBE20FDB5AB34E44FF00ABFC33EBEAFF00119D72A64DB876
        033626079A4E9E95DF0A94CDDD7C41FB6B5EE66BC89FF57F86FD7D5FE2354465
        B9188BA08411D1D73C7A42BD110266D3BC7B510C47C828D3ED66EDF94BFF0039
        59EAE53EED9CA2D1886C1C8ECF115EED195E8894827110BC2188EA66FDFACB3F
        4FA7FE63FB1A989E77E52FFCE567AB94FBB637E52F7CE567AB94FBB6F5BF5967
        E9F4FF00CC7F631BF5967E9F4FFCC6F6301E77E52F87F8959EAE53EED8DF94BF
        F3959EAE53EEDBD6FD659FA7D3FF0031FD8C6FD659E9027FE63FB180F3BF297F
        E72B3D5CA7DDB416D4EDFA439121CF6F297F128C5D01730C76E9E3A786AEA31C
        4E50B84EBC479005A7833ACB14C6604FFCC7F63652CA72CE52299A555A648B1D
        71135AF9F0295D0C785178F2FE153BA010E1170C4838871543008F7AE858A4DA
        DF710F992213EDB2C55DC62745C787C1087BC921AE2A42143F6483C74D673544
        78B069541E18861284A8A1C9889DC17E497588F288EB11EB1686CA73AEED905D
        1DEE61793CB707E3EB2F28756B0691044D51431CD8FA2DF3B976DB397667D3E0
        7EB7C16060D14AB319F69BFEAF1F4F87A1E2749591CD28DC2754A1F381707139
        0EEE83AC2820203AF503459DD914200C02F62CB8E1C804217DAD2E08B280FF00
        BB75B07DADE0D13567C0B70BE62B6A8645B5C7B317D0EAC9E230B26CF6B6D69C
        BCFAFF0093920D22CAF09107C48795F3C2620F549AFD079683C10D8CE8BA2450
        0176986A3AAFF1079998E2F164E91D8BD892E76E8BFF00A87C47CC1AC7634652
        C4E629D62A10090E14A95283E075005A5C28FCA11D442FED185B642ABB265B7D
        7E2CD1919BC7F115B4B49FF6AD6DFDF9B09A562F8E4593C972E393AC89AF7A0E
        4E57788E3F22BDE61E2001AF1B6E4B239312D8C48C825F700EE20FDF173AADF1
        02EE71FEB39B8EA1880075141A2B60D6390BB154448A4401C46E6788BA122858
        181531701176EAB8D06A1530D04D4E20C1AD7288CAC35C1682AC79B72EEDAEB6
        F728A634C3B28FCCB92E46CE42F7759F92F2428177AF80082DD2BD1B9776F2B2
        006F6700105BA587EEDCA6DE5EE62812B6003A7695E8DCBBB7958C258C3FBF69
        7E8DCA6DAEBEE6DC70159654E9B70EC026C4D9C053A72677C2A533775F107AEB
        5AB35E44FF00ABFC33EBCAFF00119D72A64C103B009B13E734AD392BBE15299B
        BAF883D75AD7A99AB227FD5FE19F5E57F88D511970446250E8715D9A22BD2A42
        BC11020BF7C525E10D60151C5B8B7CD2D748211DB1DFB59D1F3972F8001F3974
        F40355F201A9B5BF3D050FCC92FDC17D8D4C46FDF34B5D208476C77ED637CD2D
        0FFC4108ED8EFDADDFA0A1F9925FB82FB18D050FCC92FDC17D8C0706F9A5AE90
        423B63BF6B1BE69683FE208476C77ED6EFD050FCC92FDC17D8C68487E6497EE0
        BEC603837CD2D748211DB1DFB58DF34B5D208476C77ED6EFD050FCC92FDC17D8
        CBA121F9925FB92FB180CE5943D90C9939BC7B34C9B3140E113493FB4390AB5D
        BB72B4C1C6341E03CFDBD43F2B95B3D4BB343D2AF7902994808E24E0E2E84E6A
        014E60C2834C007AC3016FA25A122F9925FB92FB1AB9B6FB1895ED3A0B9B50E5
        D43232E08208E24E1D00189C8478014BE4AF16B0E210E3D17E3C2E8EA47A7C67
        2B7F1D676EA7D3C5783FBF3319CF2B62CEE2D0685C2969111D73DCDE70E20528
        0898A501318406850AE2D62413276B468EA83A77F6992D08131780897BC50628
        5695A10A183574BA519CE52B6194E559BD19CC74F154E548F40A2776A5D0BF27
        0887F965C3CE1A868DF4601C2774F9E19CB872EC44C35123B02D42BD40D8518D
        1AE0934B66FE5397B72B2256572928BD74DFC17D4C7F3D64C303936CB6649A62
        B3344A33154080CF9C811D95CB903DE28546A2631B58F18359190FA97705B0C7
        2A8A948F8CBE24A4A710002885C1280088D31F2B8F534E3292F8869D3F859BFA
        C8D09C88D76E4584267F99D234B892A2DDAD2E5D12F50D6B7BB9BA0F1D36FAB2
        EEAEF63551682BF46E536F2F73297F35C70A2DD2B1E6DCBBB795970963FD7697
        E8DCA6DE5EE62BBD71AD34ED2B1E6DCBBB7958510437AF860BB4AC39B72EEDE5
        6400DEC05305BA5FA3729B797B9BD1837AA341A2CD2B978376EEDAEB6412EF5F
        01A2BD2C38F83729B6BE5773010AB739595ADB229925A406058AE2E887470F26
        8F1D980E52F1F9438713672C9BEDEE5DB36925F4933A42E2C954A158F4EECEE1
        381C786202621C863144A629807FE546D8421BD7A54016699CBC1B94DB5F2BB9
        A3D32C8F263B54455314A70298542A0C1F2C42ECC7253F68C0223AFB980ABBE1
        63653CD987B017DE31F0B1B29E6CC3EAF2FBC6B094D9659A4BD701459FCAF10D
        27C9BF0C741729E701D75EE614D9659ACBB7014D9FCAF10D23C9BF0B741729E7
        01D75EE6BB268AFBE163653C9317ABCBEF18F858D9473662F5797DE3580A2CAE
        CD65EBBA44812BC4749F26FC2DD17374F380F2F730A6CB2CD65EBBA4C812BC43
        4AF26FC2DD17374F39475DEEE69B1A2BEF858D94F24C5EAF2FBC65F858D94F36
        62F5797DE3580A6CB6CD65EB80A6CFE5788693E4DF85BA2E6E9E701E5EE65536
        5B6692F5DD26CFE5788693E4DE85BA0B94F380F2F735D8D15F7C2CACA79B317A
        BCBEF18F858D94F3662F5797DE3582A6CB2CD65EBBA4C812BC4348F26F42DD16
        E53CE03AEBDCC28B2CB359784BA4C812BC4349F26F42DD17374FB0797B9A6C68
        AF7E165653C930FABCBEF18F858D94F3662F5797DE3584A6CB2CD65EBBA44812
        BC434AF26F42DD17374F380F3BB985365B6692F5C05367F2BC4349F26F431D17
        374F380F2F735D8D15CBDCAA6C85F3D74F5F268E3C78E4D79D1CF0C7661763CA
        5113F047AC1BF4F858D94F3661EC05F78D6129B2DB359784BA4C812BC4349F26
        F42DD16E53CE03CBDCCAAACB2CD65EBBA44812BC4348F26FC2DD16E53CE03CBD
        CCD8D141DBA652D274D366B1595A56411750BA2CEC1309D4B82BA23A2098A223
        81844C6C28001CAD6EE4BD008AD9BD8BC1D1C6D11817C4CCF55BC4C7E099381C
        D5294DFB5744A22185070695C3A42922455CE97A093E01A5BDC5D3F750F76E8E
        E4439A3411E3E2A6A6918FE6BE23F95E99CBC1B94DB5F2BB9A152D07E8C722DD
        2C3F76E536F2F7315DEB8D680BB4AC79B72EEDE560C3BD6A568AF4B0E3E0DCA6
        DAEB6511DEAD0440166958E3C1BB776D75B01FFFD9FFDB004300020101020101
        0202020202020202030503030303030604040305070607070706070708090B09
        08080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB00430102
        0202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFF
        C00011080020002003012200021101031101FFC4001900000203010000000000
        00000000000000060702030804FFC40031100001040103030203060700000000
        000002010304050607081100122109141315221617233161814244519397D1D2
        FFC4001801000203000000000000000000000000000406000105FFC400231100
        01040104020301000000000000000001020311210400123161052241425171FF
        DA000C03010002110311003F00647A80FAA9E65A8DADEEE9F6855B5AD3C3C3DC
        9EE5A5BD4B4FCC9D902C50509071D98C04E370221A39DCF9120BA62BE3B0114B
        87D29B7139E6EC75FEFB13CDB597572F625BD5FCE696CB16BF5083544D227C48
        B20BE03BF0D1D68C1C6D5D342EF6DC1E3EA14E9C1B17D95AED36976FB8865B57
        5CF6639063D99CBCDB9EC92D4F96EC2840AC9972A2EB4DB3DAD222AA8F1DEBFC
        65CEBDC59A6708C763D4D20314B53145058835E0CC48ACA2270882D364209FB2
        741B78EF9703AB72AE53023ABE6BFB67F38D3065795F1A311786CE20DD50E952
        F7D1951299D9ED100048DA28951BD257785A4398E85691C5CA70ED62D6D09F5D
        90D50CD7AC260E490E2403960129E7A0046437D906CB9311E09054951478EE43
        DD98EEFAB775989DAA3910EA72EC49F6A25F56A4596DC652704D599510E436D3
        8E447D00C9B2214707B1C6CD10C14BA3C0C967344841612C087CA2A3E28A9FBA
        39D06E0F62AE6F0B555F9320BBC715C41C27DF75144453E72A5DCA5CA70BFD55
        784FD7CF4711A5B428CC6AAD57F1BC2D1AF3C7151987E9FC940E8A45F1E13EB1
        FEE0FF00C741FB837E7623AF7A5996263D94DDD25246C8ABEC4A86A5DB4930CE
        6448A2C1130D7E2281132E0A9222A0AF6F2A9DC8BD453705529E3ECA6B87F8DA
        DFFDF512754B0674B9DE4FA84623B43A5971BDBCDCCF361867322E314EE8AC92
        0445547243AADAB719B5E3E953E4CD7C36D9AFE58EF7FDBCF5DD664198E9AE8F
        B5636FF7F14D8B624B69ED9F86A66D2CF5910A3B6F036E992AC86D5D7BB11B6D
        86E42F7297816CFA816D0717DD504ECA709A4D65C1F541F6C41EB22D32B7F637
        88008D824D01422575B04446E40277822209238DF008D4F4F7D91613A19AEB9B
        E57418967CCC51ABABADA7BACFA2BCD5C2BCA32CACBDB83E824CB27CC3425001
        125151452442EB3DD198A74A41486EAEF777D4F7F1DE9AF115E019C143CB0E2F
        27DA52424373F524DA881C911EC641291CFF00FFD9}
      OnClick = dxBarLargeButtonUpdateClick
    end
    object edKaresidenan: TcxBarEditItem
      Caption = 'Karesidenan'
      Category = 0
      Hint = 'Karesidenan'
      Visible = ivAlways
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.OnButtonClick = edKaresidenanPropertiesButtonClick
    end
  end
  object ActMenu: TActionManager
    Left = 720
    Top = 134
    StyleName = 'Platform Default'
    object ActBaru: TAction
      Caption = 'Baru  '
    end
    object ActUpdate: TAction
      Caption = 'Update  '
    end
    object ActRO: TAction
      Caption = 'Refresh  '
      OnExecute = ActROExecute
    end
    object ActDel: TAction
      Caption = 'Delete'
    end
    object ActPrint: TAction
      Caption = 'Print  '
    end
    object ActApp: TAction
      Caption = 'Approve  '
    end
    object ActReject: TAction
      Caption = 'Reject  '
    end
    object ActClose: TAction
      Caption = 'CLose PO    '
      Enabled = False
    end
  end
  object QDPP: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT false pilih,a.*,b.cash cash_dpp,b.receipt receipt_dpp,b.n' +
        'o_counter_bill no_counter_bill_dpp,b.date_counter_bill date_coun' +
        'ter_bill_dpp,b.counter_bill counter_bill_dpp,b.bank_receipt bank' +
        '_receipt_dpp, b.date_receipt date_receipt_dpp,b.name_bank_cheque' +
        ' name_bank_cheque_dpp,b.no_cheque no_cheque_dpp,b.cheque_amount1' +
        ' cheque_amount1_dpp,b.date_tempo_cheque date_tempo_cheque_dpp  F' +
        'ROM get_dpp_temp() a '
      'LEFT JOIN t_dpp b on b.id=a.id_dpp '
      'WHERE a.status=0;')
    Left = 716
    Top = 80
    object QDPPpilih: TBooleanField
      FieldName = 'pilih'
    end
    object QDPPdate_dpp: TDateField
      FieldName = 'date_dpp'
      ReadOnly = True
    end
    object QDPPnik_collector: TMemoField
      FieldName = 'nik_collector'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcode_collector: TMemoField
      FieldName = 'code_collector'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPname_collector: TMemoField
      FieldName = 'name_collector'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPphone_number_collector: TMemoField
      FieldName = 'phone_number_collector'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPaddress_collector: TMemoField
      FieldName = 'address_collector'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcode_karesidenan: TMemoField
      FieldName = 'code_karesidenan'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPkaresidenan: TMemoField
      FieldName = 'karesidenan'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcode_kabupaten: TMemoField
      FieldName = 'code_kabupaten'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPkabupaten: TMemoField
      FieldName = 'kabupaten'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcode_cust: TMemoField
      FieldName = 'code_cust'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPno_invoice: TMemoField
      FieldName = 'no_invoice'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPpaid_amount: TFloatField
      FieldName = 'paid_amount'
      ReadOnly = True
    end
    object QDPPcash: TFloatField
      FieldName = 'cash'
      ReadOnly = True
    end
    object QDPPreceipt: TFloatField
      FieldName = 'receipt'
      ReadOnly = True
    end
    object QDPPcounter_bill: TFloatField
      FieldName = 'counter_bill'
      ReadOnly = True
    end
    object QDPPbank_receipt: TMemoField
      FieldName = 'bank_receipt'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPdate_receipt: TDateField
      FieldName = 'date_receipt'
      ReadOnly = True
    end
    object QDPPname_bank_cheque: TMemoField
      FieldName = 'name_bank_cheque'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPno_cheque: TMemoField
      FieldName = 'no_cheque'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcheque_amount1: TFloatField
      FieldName = 'cheque_amount1'
      ReadOnly = True
    end
    object QDPPdate_tempo_cheque: TDateField
      FieldName = 'date_tempo_cheque'
      ReadOnly = True
    end
    object QDPPcustomer_code: TMemoField
      FieldName = 'customer_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcustomer_name: TMemoField
      FieldName = 'customer_name'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcustomer_name_pkp: TMemoField
      FieldName = 'customer_name_pkp'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPid_dpp: TGuidField
      FieldName = 'id_dpp'
      ReadOnly = True
      Size = 38
    end
    object QDPPsbu_code: TMemoField
      FieldName = 'sbu_code'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPid: TGuidField
      FieldName = 'id'
      ReadOnly = True
      Size = 38
    end
    object QDPPdate_invoice: TDateField
      FieldName = 'date_invoice'
      ReadOnly = True
    end
    object QDPPstatus_desc: TMemoField
      FieldName = 'status_desc'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPstatus_correction: TSmallintField
      FieldName = 'status_correction'
      ReadOnly = True
    end
    object QDPPstatus_correction_desc: TMemoField
      FieldName = 'status_correction_desc'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcreated_at: TDateField
      FieldName = 'created_at'
      ReadOnly = True
    end
    object QDPPlatitude: TMemoField
      FieldName = 'latitude'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPlongitude: TMemoField
      FieldName = 'longitude'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPaddress: TMemoField
      FieldName = 'address'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPno_counter_bill: TMemoField
      FieldName = 'no_counter_bill'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPdate_counter_bill: TDateField
      FieldName = 'date_counter_bill'
      ReadOnly = True
    end
    object QDPPstatus: TSmallintField
      FieldName = 'status'
      ReadOnly = True
    end
    object QDPPapproved_rejected_by: TMemoField
      FieldName = 'approved_rejected_by'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPapproved_rejected_at: TDateTimeField
      FieldName = 'approved_rejected_at'
      ReadOnly = True
    end
    object QDPPapproved_rejected_note: TMemoField
      FieldName = 'approved_rejected_note'
      ReadOnly = True
      BlobType = ftMemo
    end
    object QDPPcash_dpp: TFloatField
      FieldName = 'cash_dpp'
    end
    object QDPPreceipt_dpp: TFloatField
      FieldName = 'receipt_dpp'
    end
    object QDPPno_counter_bill_dpp: TStringField
      FieldName = 'no_counter_bill_dpp'
      Size = 255
    end
    object QDPPdate_counter_bill_dpp: TDateField
      FieldName = 'date_counter_bill_dpp'
    end
    object QDPPcounter_bill_dpp: TFloatField
      FieldName = 'counter_bill_dpp'
    end
    object QDPPbank_receipt_dpp: TStringField
      FieldName = 'bank_receipt_dpp'
      Size = 100
    end
    object QDPPdate_receipt_dpp: TDateField
      FieldName = 'date_receipt_dpp'
    end
    object QDPPname_bank_cheque_dpp: TStringField
      FieldName = 'name_bank_cheque_dpp'
      Size = 255
    end
    object QDPPno_cheque_dpp: TStringField
      FieldName = 'no_cheque_dpp'
      Size = 100
    end
    object QDPPcheque_amount1_dpp: TFloatField
      FieldName = 'cheque_amount1_dpp'
    end
    object QDPPdate_tempo_cheque_dpp: TDateField
      FieldName = 'date_tempo_cheque_dpp'
    end
  end
  object ImageList1: TImageList
    Left = 240
    Top = 120
    Bitmap = {
      494C010101000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8E69110A9E696FAAAE5
      95E8B1E48DACA5E4945794E28A170000000000000000153FFF054360FF174F6D
      FF3A5460FF655661FF7800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBEDF5DEF9E9F1F4F4E7EBFFF5E5
      EAFFF5E4E9FFF5E2E8FFF5E2E8FFF6DFE7FFF1DAEFFFF0D6F3FFF0D6F3FFF0D6
      F3FFF0D6F3FFD8C2F2FF4F66FF2F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCEEF7FFBFDD9DFFC4D682FF98E9
      B8FF9FE9B0FFA7E8A8FFB0E69EFFB0E69EFFB9E595FFC4E488FFC4E488FFCCE2
      7FFFDAE092FFFEDEF3FFAAC768E0DCE1653B0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCEEF7FF9DE2A3FFABDD92FFBBDA
      83FF8BEABBFF96E9AFFF9DE8A7FFA4E79FFFADE696FFB4E58FFFBDE485FFC1E3
      80FFC8E378FFFEDEF3FFADCC63FFDBE065FA0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCEEF7FF88E8BCFF99E3A9FFA7DF
      98FFABDD92FF86EBC0FF92EAB4FF9AE9ABFFA1E8A3FFA8E79CFFB1E592FFB9E5
      8AFFC1E380FFFEDEF3FFADCC63FFDAE066B00000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF0F8FFE7C041FF7DECCAFF8EE6
      B4FFA7DF98FFC2CE77FF86EBC0FF8EEAB7FF9AE9ABFFA1E8A3FFA8E79CFFADE6
      96FFBBDA83FFFEE2F6FFABCD66FFD8E169530000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF2F9FFFBC023FFD7CA53FF93E3
      AFFFF2BA37FFF9B52FFF9FDDA0FF86EBC0FF8EEAB7FF96E9AFFF9DE8A7FFA8E7
      9CFFF8A839FFFEE2F6FFABCD66FFBBE58A130000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF2F9FFFBC221FFFBC023FFFABE
      26FFF9BC29FFFAB92BFFFBB62BFF88E8BCFF81EBC6FF8BEABBFF92EAB4FFF1B1
      40FFF8A839FFFDE6F8FFABCD66FF000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F9FFFBC61CFFFAC521FFFBC2
      21FFFBC023FFF9BC29FFFAB92BFFF9B72DFF7AEDCDFF7DECCAFFDCC350FFF9AF
      33FFF8AC37FFFDE6F8FFA1C46EFF153FFF050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F9FFFBC81DFFFBC81DFF48C4
      EDFF3FB9F0FFFABF25FFF9BC29FFF9BA2AFFF9B72DFFF2BA37FFF9B231FFF9B2
      31FFF9AF33FFFDE6F8FF809F89FF4360FF170000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F9FFFCCE16FFF0CA2AFF3ED3
      FFFF39C6FFFFDCC144FFFBC023FFFABE26FFF9BC29FFF9B72DFFF9B52FFFF9B5
      2FFFF9B231FFFDE6F8FF5E79B2FF4F6DFF3A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F9FFFCCE16FFFCCE16FFC3CE
      6DFFAACF80FFFBC61CFFFAC521FFFBC023FFFABE26FFF9BC29FFFAB92BFFF9B7
      2DFFF9B52FFFFDEBF6FF4569E9FF4B80FF690000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FBF6F9FFFBEBBDFFFBE69EFFFBE6
      9EFFFBE2A0FFFBE2A0FFFBE2A0FFFBDEA2FFFBDEA2FFFADBA3FFFAD9A3FFFAD7
      A4FFFBDFCCFFFDEBF6FF416EF8C2153FFF050000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FCF6F8479DD1FBC485C8FCFE85C8
      FCFE90CCFCDF9DD1FBC4BBDAFA98F3F1F66CCFEDD7B5C5EBC9EEC8EAC0FFC8EA
      C0FFCEE8BAFFC6E6A4F800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A8E6
      9110B0E6944ABBE58A1300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFF0000000000008183000000000000
      0001000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0003000000000000FFE300000000000000000000000000000000000000000000
      000000000000}
  end
  object DSDetail: TDataSource
    DataSet = QDetail
    Left = 712
    Top = 232
  end
  object QDetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT id,CONCAT((SELECT value_parameter FROM t_parameter WHERE ' +
        'key_parameter='#39'asset_base_url_dpp'#39'),file_name) file_name,descrip' +
        'tion,id_dpp_temp FROM t_dpp_temp_file')
    MasterSource = DsDPP
    MasterFields = 'id'
    DetailFields = 'id_dpp_temp'
    Left = 448
    Top = 176
    ParamData = <
      item
        DataType = ftGuid
        Name = 'id'
        ParamType = ptInput
        Value = '{5ed99c0a-1bf8-44a5-844c-67ea941fc485}'
      end>
  end
end
