object FNew_SPKProduksi: TFNew_SPKProduksi
  Left = 0
  Top = 0
  Caption = 'New SPK Produksi'
  ClientHeight = 611
  ClientWidth = 848
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object Label5: TLabel
    Left = 56
    Top = 32
    Width = 81
    Height = 13
    Caption = 'No. SPK Produksi'
  end
  object Label6: TLabel
    Left = 56
    Top = 72
    Width = 58
    Height = 13
    Caption = 'No. Formula'
  end
  object Label7: TLabel
    Left = 368
    Top = 32
    Width = 65
    Height = 13
    Caption = 'Tanggal Mulai'
  end
  object Label8: TLabel
    Left = 368
    Top = 72
    Width = 122
    Height = 13
    Caption = 'Perkiraan Tanggal Selesai'
  end
  object RzPageControl1: TRzPageControl
    Left = 0
    Top = 185
    Width = 848
    Height = 394
    Hint = ''
    ActivePage = TabTimbang
    Align = alClient
    TabIndex = 1
    TabOrder = 0
    ExplicitTop = 177
    ExplicitWidth = 852
    ExplicitHeight = 403
    FixedDimension = 19
    object TabSPKProduksi: TRzTabSheet
      Caption = 'SPK Produksi'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 380
      object DBGridProduksi: TDBGridEh
        Left = 0
        Top = 0
        Width = 848
        Height = 372
        Align = alClient
        DataSource = DsSPKProd
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
        OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
        SumList.Active = True
        TabOrder = 0
        OnCellClick = DBGridProduksiCellClick
        OnColEnter = DBGridProduksiColEnter
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Regu'
            Footers = <>
            PickList.Strings = (
              'A'
              'B'
              'C')
            Width = 112
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Produk'
            Footers = <>
            LookupParams.KeyFieldNames = 'Produk'
            LookupParams.LookupDataSet = Qproduk
            LookupParams.LookupDisplayFieldName = 'kd_produk'
            LookupParams.LookupKeyFieldNames = 'kd_produk'
            Title.Caption = 'Nama Produk'
            Width = 136
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'Timbang'
            Footer.Alignment = taRightJustify
            Footer.ValueType = fvtSum
            Footers = <>
            Title.Caption = 'Jumlah Timbang'
            Width = 191
          end>
        object RowDetailData: TRowDetailPanelControlEh
        end
      end
    end
    object TabTimbang: TRzTabSheet
      Caption = 'SPK Timbang'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 380
      object DBGridTimbang: TDBGridEh
        Left = 0
        Top = 0
        Width = 848
        Height = 372
        Align = alClient
        DataSource = DsTimbang
        DynProps = <>
        FooterRowCount = 1
        HorzScrollBar.ExtraPanel.Visible = True
        RowDetailPanel.Active = True
        RowDetailPanel.Height = 200
        SumList.Active = True
        TabOrder = 0
        OnDblClick = DBGridTimbangDblClick
        Columns = <
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <
              item
                Style = ebsEllipsisEh
                OnClick = DBGridTimbangColumns0EditButtons0Click
              end>
            FieldName = 'mc'
            Footers = <>
            Title.Caption = 'Mesin'
            Width = 97
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'nm_produk'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Nama Produk'
            Width = 183
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'jmlh_timbang'
            Footer.Alignment = taRightJustify
            Footer.ValueType = fvtSum
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Jumlah Timbang'
            Width = 144
          end
          item
            CellButtons = <>
            DynProps = <>
            EditButtons = <>
            FieldName = 'notes'
            Footers = <>
            ReadOnly = True
            Title.Caption = 'Keterangan'
            Width = 330
          end>
        object RowDetailData: TRowDetailPanelControlEh
          object RzPageControl2: TRzPageControl
            Left = 0
            Top = 0
            Width = 737
            Height = 198
            Hint = ''
            ActivePage = TabSheet1
            Align = alClient
            TabIndex = 0
            TabOrder = 0
            FixedDimension = 19
            object TabSheet1: TRzTabSheet
              Caption = 'Bahan Tepung'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object DBGridBaku: TDBGridEh
                Left = 0
                Top = 0
                Width = 733
                Height = 175
                Align = alClient
                DataSource = DsBaku
                DynProps = <>
                HorzScrollBar.ExtraPanel.Visible = True
                ReadOnly = True
                TabOrder = 0
                TitleParams.MultiTitle = True
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <
                      item
                      end>
                    FieldName = 'kd_material_stok'
                    Footers = <>
                    Title.Caption = 'Kode Barang'
                    Width = 65
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_material'
                    Footers = <>
                    Title.Caption = 'Nama Barang'
                    Width = 150
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_supplier'
                    Footers = <>
                    Title.Caption = 'Supplier'
                    Width = 200
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_stok'
                    Footers = <>
                    Title.Caption = 'Kode Stok'
                    Width = 150
                  end
                  item
                    Alignment = taRightJustify
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'index'
                    Footers = <>
                    Title.Caption = 'Permintaan|Index'
                    Width = 55
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ttlberat'
                    Footers = <>
                    Title.Caption = 'Permintaan|Total'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'satuan'
                    Footers = <>
                    Title.Caption = 'Index|Satuan'
                    Visible = False
                    Width = 49
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'qtyperkemasan'
                    Footers = <>
                    Title.Caption = 'Karung/Botol|Berat(KG)'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'jmlhkemasan'
                    Footers = <>
                    Title.Caption = 'Karung/Botol|Jumlah'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'gudang'
                    Footers = <>
                    Width = 60
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object TabSheet2: TRzTabSheet
              Caption = 'Bahan Kimia'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object DBGridKimia: TDBGridEh
                Left = 0
                Top = 0
                Width = 733
                Height = 175
                Align = alClient
                DataSource = DsKimia
                DynProps = <>
                HorzScrollBar.ExtraPanel.Visible = True
                ReadOnly = True
                TabOrder = 0
                TitleParams.MultiTitle = True
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <
                      item
                      end>
                    FieldName = 'kd_material_stok'
                    Footers = <>
                    Title.Caption = 'Kode Barang'
                    Width = 65
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_material'
                    Footers = <>
                    Title.Caption = 'Nama Barang'
                    Width = 150
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_supplier'
                    Footers = <>
                    Title.Caption = 'Supplier'
                    Width = 200
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_stok'
                    Footers = <>
                    Title.Caption = 'Kode Stok'
                    Width = 150
                  end
                  item
                    Alignment = taRightJustify
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'index'
                    Footers = <>
                    Title.Caption = 'Permintaan|Index'
                    Width = 55
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'ttlberat'
                    Footers = <>
                    Title.Caption = 'Permintaan|Total'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'satuan'
                    Footers = <>
                    Title.Caption = 'Index|Satuan'
                    Visible = False
                    Width = 61
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'qtyperkemasan'
                    Footers = <>
                    Title.Caption = 'Karung/Botol|Berat(KG)'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'jmlhkemasan'
                    Footers = <>
                    Title.Caption = 'Karung/Botol|Total'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'gudang'
                    Footers = <>
                    Title.Caption = 'Gudang'
                    Width = 60
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
            object TabSheet3: TRzTabSheet
              TabVisible = False
              Caption = 'Bahan Kemasan'
              ExplicitLeft = 0
              ExplicitTop = 0
              ExplicitWidth = 0
              ExplicitHeight = 0
              object DBGridKemasan: TDBGridEh
                Left = 0
                Top = 0
                Width = 733
                Height = 175
                Align = alClient
                DataSource = DsKemasan
                DynProps = <>
                HorzScrollBar.ExtraPanel.Visible = True
                Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
                ReadOnly = True
                TabOrder = 0
                TitleParams.MultiTitle = True
                Columns = <
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <
                      item
                      end>
                    FieldName = 'kd_material_stok'
                    Footers = <>
                    Title.Caption = 'Kode Barang'
                    Width = 65
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'nm_material'
                    Footers = <>
                    Title.Caption = 'Nama Barang'
                    Width = 150
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <
                      item
                      end>
                    FieldName = 'nm_supplier'
                    Footers = <>
                    Title.Caption = 'Supplier'
                    Width = 200
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_supplier'
                    Footers = <>
                    Visible = False
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'kd_stok'
                    Footers = <>
                    Title.Caption = 'Kode Stok'
                    Width = 150
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'index2'
                    Footers = <>
                    Width = 60
                  end
                  item
                    Alignment = taRightJustify
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'index'
                    Footers = <>
                    PickList.Strings = (
                      '1/320'
                      '1/430')
                    Title.Caption = 'Permintaan|Index'
                    Width = 55
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'Totalberat'
                    Footers = <>
                    Title.Caption = 'Permintaan|Total'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'qtyperkemasan'
                    Footers = <>
                    Title.Caption = 'Karung/Botol|Berat(@)'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DisplayFormat = '0.00#,##'
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'jmlhkemasan'
                    Footers = <>
                    Title.Caption = 'Karung/Botol|Jumlah'
                    Width = 70
                  end
                  item
                    CellButtons = <>
                    DynProps = <>
                    EditButtons = <>
                    FieldName = 'gudang'
                    Footers = <>
                    Width = 60
                  end>
                object RowDetailData: TRowDetailPanelControlEh
                end
              end
            end
          end
        end
      end
    end
    object TabSheet4: TRzTabSheet
      TabVisible = False
      Caption = 'TabSheet4'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 380
      object RzPageControl3: TRzPageControl
        Left = 0
        Top = 0
        Width = 848
        Height = 372
        Hint = ''
        ActivePage = RzTabSheet1
        Align = alClient
        TabIndex = 0
        TabOrder = 0
        ExplicitHeight = 380
        FixedDimension = 19
        object RzTabSheet1: TRzTabSheet
          Caption = 'Bahan Tepung'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 357
          object DBGridbaku2: TDBGridEh
            Left = 0
            Top = 0
            Width = 844
            Height = 349
            Align = alClient
            DataSource = DsBaku2
            DynProps = <>
            HorzScrollBar.ExtraPanel.Visible = True
            ReadOnly = True
            TabOrder = 0
            TitleParams.MultiTitle = True
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <
                  item
                  end>
                FieldName = 'kd_material'
                Footers = <>
                Title.Caption = 'Kode Barang'
                Width = 65
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nm_material'
                Footers = <>
                Title.Caption = 'Nama Barang'
                Width = 150
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'stok'
                Footers = <>
                Title.Caption = 'Stok'
                Width = 100
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'index'
                Footers = <>
                Width = 100
              end
              item
                CellButtons = <>
                DisplayFormat = '0.00#,##'
                DynProps = <>
                EditButtons = <>
                FieldName = 'Qty'
                Footers = <>
                Title.Caption = 'Qty Pakai'
                Width = 100
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
      end
    end
  end
  object RzPanel1: TRzPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 185
    Align = alTop
    Color = 15987699
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 21
      Width = 81
      Height = 13
      Caption = 'No. SPK Produksi'
    end
    object Label2: TLabel
      Left = 48
      Top = 61
      Width = 58
      Height = 13
      Caption = 'No. Formula'
    end
    object Label3: TLabel
      Left = 462
      Top = 21
      Width = 65
      Height = 13
      Caption = 'Tanggal Mulai'
    end
    object Label4: TLabel
      Left = 462
      Top = 61
      Width = 122
      Height = 13
      Caption = 'Perkiraan Tanggal Selesai'
    end
    object Label9: TLabel
      Left = 598
      Top = 61
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label10: TLabel
      Left = 598
      Top = 21
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label11: TLabel
      Left = 184
      Top = 21
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label12: TLabel
      Left = 184
      Top = 61
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Label13: TLabel
      Left = 48
      Top = 95
      Width = 56
      Height = 13
      Caption = 'Keterangan'
    end
    object Label14: TLabel
      Left = 184
      Top = 95
      Width = 4
      Height = 13
      Caption = ':'
    end
    object Edno_spk: TRzEdit
      Left = 194
      Top = 18
      Width = 247
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 0
    end
    object DtMulai: TRzDateTimeEdit
      Left = 608
      Top = 18
      Width = 121
      Height = 21
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object DtSelasai: TRzDateTimeEdit
      Left = 608
      Top = 58
      Width = 121
      Height = 21
      EditType = etDate
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object Ednourut: TEdit
      Left = 48
      Top = 40
      Width = 49
      Height = 21
      TabOrder = 3
      Text = 'Ednourut'
      Visible = False
    end
    object EdNotes: TMemo
      Left = 194
      Top = 91
      Width = 535
      Height = 79
      TabOrder = 4
    end
    object EdNoFormula: TRzComboBox
      Left = 194
      Top = 58
      Width = 247
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      OnSelect = EdNoFormulaSelect
    end
    object EdNo_spktemp: TRzEdit
      Left = 194
      Top = 40
      Width = 247
      Height = 21
      Text = ''
      CharCase = ecUpperCase
      TabOrder = 6
      Visible = False
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 579
    Width = 848
    Height = 32
    Align = alBottom
    TabOrder = 2
    ExplicitTop = 580
    ExplicitWidth = 852
    object BBatal: TRzBitBtn
      Left = 776
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Batal'
      TabOrder = 0
      OnClick = BBatalClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000630B0000630B00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8B46C6C6CE8
        E8E8E8E8B46C6C6CE8E8E8E2DFDFDFE8E8E8E8E8E2DFDFDFE8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8E8E8B4
        9090906CE8E8E8E8E8E8E8E8E8E8E8E2818181DFE8E8E8E8E8E8E8E8E8E8B490
        909090906CE8E8E8E8E8E8E8E8E8E28181818181DFE8E8E8E8E8E8E8E8B49090
        906C9090906CE8E8E8E8E8E8E8E2818181DF818181DFE8E8E8E8E8E8B4909090
        6CE8B49090906CE8E8E8E8E8E2818181DFE8E2818181DFE8E8E8E8B49090906C
        E8E8E8B49090906CE8E8E8E2818181DFE8E8E8E2818181DFE8E8E8B4B4B4B4E8
        E8E8E8E8B4B4B4B4E8E8E8E2E2E2E2E8E8E8E8E8E2E2E2E2E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object BSimpan: TRzBitBtn
      Left = 701
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 1
      OnClick = BSimpanClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
    object BEdit: TRzBitBtn
      Left = 626
      Top = 1
      Height = 30
      Align = alRight
      Caption = 'Simpan'
      TabOrder = 2
      Visible = False
      OnClick = BEditClick
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000730E0000730E00000001000000000000000000003300
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
        0000000000000000000000000000000000000000000000000000E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E809090909
        090909090909090909E8E8E881818181818181818181818181E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        1009E3E3E309101009E8E881ACAC81E3AC81E3E3E381ACAC81E8E809101009E3
        E3E3E3E3E309101009E8E881ACAC81E3E3E3E3E3E381ACAC81E8E80910101009
        090909090910101009E8E881ACACAC818181818181ACACAC81E8E80910101010
        101010101010101009E8E881ACACACACACACACACACACACAC81E8E80910100909
        090909090909101009E8E881ACAC8181818181818181ACAC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E8091009D709
        0909090909D7091009E8E881AC81D7818181818181D781AC81E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E809E309D709
        0909090909D7090909E8E881E381D7818181818181D7818181E8E8091009D7D7
        D7D7D7D7D7D7091009E8E881AC81D7D7D7D7D7D7D7D781AC81E8E80909090909
        090909090909090909E8E88181818181818181818181818181E8E8E8E8E8E8E8
        E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
      NumGlyphs = 2
    end
  end
  object Qproduk: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_produk')
    Left = 665
    Top = 95
  end
  object DsProduk: TDataSource
    DataSet = Qproduk
    Left = 665
    Top = 143
  end
  object MemSPkProd: TMemTableEh
    Params = <>
    Left = 729
    Top = 95
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object Regu: TMTStringDataFieldEh
          FieldName = 'Regu'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Produk: TMTStringDataFieldEh
          FieldName = 'Produk'
          StringDataType = fdtStringEh
          DisplayWidth = 20
        end
        object Timbang: TMTNumericDataFieldEh
          FieldName = 'Timbang'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 20
          currency = False
          Precision = 15
        end
        object notes: TMTStringDataFieldEh
          FieldName = 'notes'
          StringDataType = fdtStringEh
          DisplayWidth = 100
          Size = 100
        end
      end
      object RecordsList: TRecordsListEh
      end
    end
  end
  object DsSPKProd: TDataSource
    DataSet = MemSPkProd
    Left = 728
    Top = 144
  end
  object DsTimbang: TDataSource
    DataSet = MemTimbang
    Left = 637
    Top = 240
  end
  object MemTimbang: TMemTableEh
    FieldDefs = <
      item
        Name = 'mc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'jmlh_timbang'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'tgl_mulai'
        DataType = ftDate
      end
      item
        Name = 'tgl_selesai'
        DataType = ftDate
      end
      item
        Name = 'jmlh_karton'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'nm_produk'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'no_spk_prod'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'no_formula'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'notes'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'no_timbang'
        Attributes = [faRequired]
        DataType = ftInteger
        Precision = 15
      end>
    IndexDefs = <>
    Params = <>
    DataDriver = DsdTimbang
    StoreDefs = True
    Left = 632
    Top = 192
  end
  object QTimbang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_spk_prod_tmbng order by nm_produk Desc')
    Left = 705
    Top = 205
  end
  object DsdTimbang: TDataSetDriverEh
    ProviderDataSet = QTimbang
    Left = 704
    Top = 256
  end
  object QBaku: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select A.*,B.nm_material , C.category,D.nm_supplier'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok '
      'inner join t_material C on B.kd_material=C.kd_material '
      'inner join t_supplier D on A.kd_supplier=D.kd_supplier'
      'where C.Category='#39'BAHAN BAKU'#39)
    MasterSource = DsTimbang
    MasterFields = 'no_timbang'
    DetailFields = 'no_timbang'
    Left = 343
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'no_timbang'
        ParamType = ptInput
        Value = 'edno'
      end>
  end
  object DsBaku: TDataSource
    DataSet = QBaku
    Left = 343
    Top = 264
  end
  object QKimia: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select A.*,B.nm_material , C.category,D.nm_supplier'
      'from t_spk_prod_tmbng_det A'
      
        'INNER join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok '
      'INNER join t_material C on B.kd_material=C.kd_material '
      'left join t_supplier D on A.kd_supplier=D.kd_supplier'
      'where C.Category='#39'KIMIA'#39)
    MasterSource = DsTimbang
    MasterFields = 'no_timbang'
    DetailFields = 'no_timbang'
    Left = 447
    Top = 224
    ParamData = <
      item
        DataType = ftInteger
        Name = 'no_timbang'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DsKimia: TDataSource
    DataSet = QKimia
    Left = 447
    Top = 272
  end
  object DsKemasan: TDataSource
    DataSet = QKemasan
    Left = 551
    Top = 264
  end
  object QKemasan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'Select a.no_formula,b.nm_material,c.category,d.nm_supplier,a.gud' +
        'ang,a.kd_material_stok,a.kd_stok,'
      
        'a."index",a.satuan,a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jm' +
        'lhkemasan,a.no_timbang,a.index2,'
      'a.satuankemasan'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok '
      'inner join t_material C on B.kd_material=C.kd_material '
      'inner join t_supplier D on A.kd_supplier=D.kd_supplier'
      'where C.Category='#39'BAHAN KEMASAN'#39
      
        'Group by a.no_formula,b.nm_material,c.category,d.nm_supplier,a.g' +
        'udang,a.kd_material_stok,a.kd_stok,'
      
        'a."index",a.satuan,a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jm' +
        'lhkemasan,a.no_timbang,a.index2,'
      'a.satuankemasan')
    MasterSource = DsTimbang
    MasterFields = 'no_timbang'
    DetailFields = 'no_timbang'
    Left = 551
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'no_timbang'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DsBaku2: TDataSource
    DataSet = MemBaku
    Left = 343
    Top = 160
  end
  object DsKimia2: TDataSource
    Left = 423
    Top = 160
  end
  object DsKemasan2: TDataSource
    Left = 495
    Top = 160
  end
  object MemBaku: TMemTableEh
    Params = <>
    Left = 344
    Top = 112
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 4
          Size = 4
          Transliterate = True
        end
        object stok: TMTNumericDataFieldEh
          FieldName = 'stok'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object Qty: TMTNumericDataFieldEh
          FieldName = 'Qty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          currency = False
          Precision = 15
        end
        object Sisa: TMTNumericDataFieldEh
          FieldName = 'Sisa'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = False
          Precision = 30
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'LA'
            8.500000000000000000
            1.000000000000000000
            79
            nil
            'Tepung Lengket')
          (
            'OA'
            13.000000000000000000
            3.000000000000000000
            80
            nil
            'Tepung Onggok')
          (
            'TA'
            2.000000000000000000
            10.000000000000000000
            81
            nil
            'Tepung Tapioka')
          (
            'BA'
            23.000000000000000000
            3.000000000000000000
            82
            nil
            'Tepung Batok')
          (
            'JA'
            18.500000000000000000
            12.000000000000000000
            83
            nil
            'Tepung Jati')
          (
            'WA'
            0.500000000000000000
            9.000000000000000000
            84
            nil
            'Tepung DW')
          (
            'PA'
            0.500000000000000000
            13.000000000000000000
            85
            nil
            'Tepung Putusan')
          (
            'LA'
            8.500000000000000000
            1.000000000000000000
            90
            nil
            'Tepung Lengket')
          (
            'OA'
            13.000000000000000000
            3.000000000000000000
            91
            nil
            'Tepung Onggok')
          (
            'TA'
            2.000000000000000000
            10.000000000000000000
            92
            nil
            'Tepung Tapioka')
          (
            'BA'
            23.000000000000000000
            3.000000000000000000
            93
            nil
            'Tepung Batok')
          (
            'JA'
            18.500000000000000000
            12.000000000000000000
            94
            nil
            'Tepung Jati')
          (
            'WA'
            0.500000000000000000
            9.000000000000000000
            95
            nil
            'Tepung DW')
          (
            'PA'
            0.500000000000000000
            13.000000000000000000
            96
            nil
            'Tepung Putusan'))
      end
    end
  end
  object Qkemasan2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'Select a.no_formula,b.nm_material,c.category,d.nm_supplier,a.gud' +
        'ang,a.kd_material_stok,a.kd_stok,'
      
        'a."index",a.satuan,a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jm' +
        'lhkemasan,a.no_timbang,a.index2,'
      'a.satuankemasan'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok '
      'inner join t_material C on B.kd_material=C.kd_material '
      'inner join t_supplier D on A.kd_supplier=D.kd_supplier'
      'where C.Category='#39'BAHAN KEMASAN'#39
      
        'Group by a.no_formula,b.nm_material,c.category,d.nm_supplier,a.g' +
        'udang,a.kd_material_stok,a.kd_stok,'
      
        'a."index",a.satuan,a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jm' +
        'lhkemasan,a.no_timbang,a.index2,'
      'a.satuankemasan')
    MasterSource = DsTimbang
    MasterFields = 'no_timbang'
    DetailFields = 'no_timbang'
    Left = 511
    Top = 80
    ParamData = <
      item
        DataType = ftInteger
        Name = 'no_timbang'
        ParamType = ptInput
        Value = 1
      end>
  end
  object UniQuery1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'Select a.no_formula,b.nm_material,c.category,d.nm_supplier,a.gud' +
        'ang,a.kd_material_stok,a.kd_stok,'
      
        'a."index",a.satuan,a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jm' +
        'lhkemasan,a.no_timbang,a.index2,'
      'a.satuankemasan'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_material_stok B on A.kd_material_stok=B.kd_material' +
        '_stok '
      'inner join t_material C on B.kd_material=C.kd_material '
      'inner join t_supplier D on A.kd_supplier=D.kd_supplier'
      'where C.Category='#39'BAHAN KEMASAN'#39
      
        'Group by a.no_formula,b.nm_material,c.category,d.nm_supplier,a.g' +
        'udang,a.kd_material_stok,a.kd_stok,'
      
        'a."index",a.satuan,a.kd_supplier,a.ttlberat,a.qtyperkemasan,a.jm' +
        'lhkemasan,a.no_timbang,a.index2,'
      'a.satuankemasan')
    MasterSource = DsTimbang
    MasterFields = 'no_timbang'
    DetailFields = 'no_timbang'
    Left = 415
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'no_timbang'
        ParamType = ptInput
        Value = 1
      end>
  end
  object Qbaku2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from')
    DetailFields = 'no_timbang'
    Left = 343
    Top = 64
  end
  object MemKimia: TMemTableEh
    Params = <>
    Left = 416
    Top = 112
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 4
          Size = 4
          Transliterate = True
        end
        object stok: TMTNumericDataFieldEh
          FieldName = 'stok'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object Qty: TMTNumericDataFieldEh
          FieldName = 'Qty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          currency = False
          Precision = 15
        end
        object Sisa: TMTNumericDataFieldEh
          FieldName = 'Sisa'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = False
          Precision = 30
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'LA'
            8.500000000000000000
            1.000000000000000000
            79
            nil
            'Tepung Lengket')
          (
            'OA'
            13.000000000000000000
            3.000000000000000000
            80
            nil
            'Tepung Onggok')
          (
            'TA'
            2.000000000000000000
            10.000000000000000000
            81
            nil
            'Tepung Tapioka')
          (
            'BA'
            23.000000000000000000
            3.000000000000000000
            82
            nil
            'Tepung Batok')
          (
            'JA'
            18.500000000000000000
            12.000000000000000000
            83
            nil
            'Tepung Jati')
          (
            'WA'
            0.500000000000000000
            9.000000000000000000
            84
            nil
            'Tepung DW')
          (
            'PA'
            0.500000000000000000
            13.000000000000000000
            85
            nil
            'Tepung Putusan')
          (
            'LA'
            8.500000000000000000
            1.000000000000000000
            90
            nil
            'Tepung Lengket')
          (
            'OA'
            13.000000000000000000
            3.000000000000000000
            91
            nil
            'Tepung Onggok')
          (
            'TA'
            2.000000000000000000
            10.000000000000000000
            92
            nil
            'Tepung Tapioka')
          (
            'BA'
            23.000000000000000000
            3.000000000000000000
            93
            nil
            'Tepung Batok')
          (
            'JA'
            18.500000000000000000
            12.000000000000000000
            94
            nil
            'Tepung Jati')
          (
            'WA'
            0.500000000000000000
            9.000000000000000000
            95
            nil
            'Tepung DW')
          (
            'PA'
            0.500000000000000000
            13.000000000000000000
            96
            nil
            'Tepung Putusan'))
      end
    end
  end
  object MemKemasan: TMemTableEh
    Params = <>
    Left = 496
    Top = 112
    object MemTableData: TMemTableDataEh
      object DataStruct: TMTDataStructEh
        object kd_material: TMTStringDataFieldEh
          FieldName = 'kd_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'kd_material_stok'
          DisplayWidth = 4
          Size = 4
          Transliterate = True
        end
        object stok: TMTNumericDataFieldEh
          FieldName = 'stok'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'index'
          DisplayWidth = 10
          currency = False
          Precision = 15
        end
        object Qty: TMTNumericDataFieldEh
          FieldName = 'Qty'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayLabel = 'kd_supplier'
          DisplayWidth = 5
          currency = False
          Precision = 15
        end
        object Sisa: TMTNumericDataFieldEh
          FieldName = 'Sisa'
          NumericDataType = fdtLargeintEh
          AutoIncrement = True
          DisplayLabel = 'iddetail'
          DisplayWidth = 15
          currency = False
          Precision = 15
        end
        object index: TMTNumericDataFieldEh
          FieldName = 'index'
          NumericDataType = fdtFloatEh
          AutoIncrement = False
          DisplayWidth = 30
          currency = False
          Precision = 30
        end
        object nm_material: TMTStringDataFieldEh
          FieldName = 'nm_material'
          StringDataType = fdtStringEh
          DisplayLabel = 'nm_material'
          DisplayWidth = 50
          Size = 50
          Transliterate = True
        end
      end
      object RecordsList: TRecordsListEh
        Data = (
          (
            'LA'
            8.500000000000000000
            1.000000000000000000
            79
            nil
            'Tepung Lengket')
          (
            'OA'
            13.000000000000000000
            3.000000000000000000
            80
            nil
            'Tepung Onggok')
          (
            'TA'
            2.000000000000000000
            10.000000000000000000
            81
            nil
            'Tepung Tapioka')
          (
            'BA'
            23.000000000000000000
            3.000000000000000000
            82
            nil
            'Tepung Batok')
          (
            'JA'
            18.500000000000000000
            12.000000000000000000
            83
            nil
            'Tepung Jati')
          (
            'WA'
            0.500000000000000000
            9.000000000000000000
            84
            nil
            'Tepung DW')
          (
            'PA'
            0.500000000000000000
            13.000000000000000000
            85
            nil
            'Tepung Putusan')
          (
            'LA'
            8.500000000000000000
            1.000000000000000000
            90
            nil
            'Tepung Lengket')
          (
            'OA'
            13.000000000000000000
            3.000000000000000000
            91
            nil
            'Tepung Onggok')
          (
            'TA'
            2.000000000000000000
            10.000000000000000000
            92
            nil
            'Tepung Tapioka')
          (
            'BA'
            23.000000000000000000
            3.000000000000000000
            93
            nil
            'Tepung Batok')
          (
            'JA'
            18.500000000000000000
            12.000000000000000000
            94
            nil
            'Tepung Jati')
          (
            'WA'
            0.500000000000000000
            9.000000000000000000
            95
            nil
            'Tepung DW')
          (
            'PA'
            0.500000000000000000
            13.000000000000000000
            96
            nil
            'Tepung Putusan'))
      end
    end
  end
end
