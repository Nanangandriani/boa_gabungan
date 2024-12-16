object FSPK_Produksi: TFSPK_Produksi
  Left = 0
  Top = 0
  Caption = 'Form SPK Produksi'
  ClientHeight = 611
  ClientWidth = 1084
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 13
  object DbgridSPKProd: TDBGridEh
    Left = 0
    Top = 127
    Width = 1084
    Height = 484
    Align = alClient
    DataGrouping.Active = True
    DataGrouping.GroupLevels = <
      item
        ColumnName = 'Column_5_trans_year'
      end
      item
        ColumnName = 'Column_6_trans_month'
      end
      item
        ColumnName = 'Column_7_trans_day'
      end>
    DataSource = DsSPKProd
    DrawMemoText = True
    DynProps = <>
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    RowDetailPanel.Active = True
    RowDetailPanel.Height = 250
    SearchPanel.Enabled = True
    SearchPanel.CaseSensitive = True
    TabOrder = 0
    Columns = <
      item
        BiDiMode = bdLeftToRight
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'spk_prod_no'
        Footers = <>
        Title.Caption = 'No. SPK Produksi'
        Width = 153
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'formula_no'
        Footers = <>
        Title.Caption = 'No. Formula'
        Width = 196
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'start_date'
        Footers = <>
        Title.Caption = 'Tanggal Mulai'
        Width = 157
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'end_date'
        Footers = <>
        Title.Caption = 'Perkiraan Tanggal Selesai'
        Width = 179
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'notes'
        Footers = <>
        Title.Caption = 'Keterangan'
        Width = 180
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_year'
        Footers = <>
        Title.Caption = 'Tahun'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_month'
        Footers = <>
        Title.Caption = 'Bulan'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'trans_day'
        Footers = <>
        Title.Caption = 'Tanggal'
        Visible = False
      end
      item
        CellButtons = <>
        DynProps = <>
        EditButtons = <>
        FieldName = 'sts'
        Footers = <>
        Title.Caption = 'Status'
        Width = 108
      end>
    object RowDetailData: TRowDetailPanelControlEh
      object RzPageControl3: TRzPageControl
        Left = 0
        Top = 0
        Width = 958
        Height = 248
        Hint = ''
        ActivePage = TabTimbang
        Align = alClient
        TabIndex = 1
        TabOrder = 0
        FixedDimension = 19
        object TabSPKProd: TRzTabSheet
          Caption = 'SPK Produksi'
          object DBGridProduksi: TDBGridEh
            Left = 0
            Top = 0
            Width = 954
            Height = 225
            Align = alClient
            DataGrouping.Active = True
            DataGrouping.Footers = <
              item
                ColumnItems = <
                  item
                  end
                  item
                  end
                  item
                    ValueType = gfvSumEh
                  end
                  item
                  end>
                Visible = False
              end>
            DataGrouping.GroupLevels = <
              item
                ColumnName = 'Column_0_nm_produk'
                RowHeight = 0
                RowLines = 0
              end>
            DataGrouping.GroupRowDefValues.FooterInGroupRow = True
            DataSource = DsSpkProddet
            DynProps = <>
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
            SumList.Active = True
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nm_produk'
                Footers = <>
                Title.Caption = 'Nama Produk'
                Width = 137
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'shift'
                Footers = <>
                PickList.Strings = (
                  'A'
                  'B'
                  'C')
                Title.Caption = 'Regu'
                Width = 99
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'jumlah_timbang'
                Footer.Alignment = taRightJustify
                Footer.ValueType = fvtSum
                Footers = <>
                Title.Caption = 'Jumlah Timbang'
                Width = 165
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'notes'
                Footers = <>
                Title.Caption = 'Keterangan'
                Visible = False
                Width = 227
              end>
            object RowDetailData: TRowDetailPanelControlEh
            end
          end
        end
        object TabTimbang: TRzTabSheet
          Caption = 'SPK Timbang'
          object DBGridTimbang: TDBGridEh
            Left = 0
            Top = 0
            Width = 954
            Height = 225
            Align = alClient
            DataSource = DsSPKTimbang
            DynProps = <>
            FooterRowCount = 1
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
            RowDetailPanel.Active = True
            RowDetailPanel.Height = 250
            SumList.Active = True
            TabOrder = 0
            Columns = <
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <
                  item
                  end>
                FieldName = 'mc'
                Footers = <>
                Title.Caption = 'Mesin'
                Width = 123
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'nm_produk'
                Footers = <>
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
                Title.Caption = 'Jumlah Timbang'
                Width = 156
              end
              item
                CellButtons = <>
                DynProps = <>
                EditButtons = <>
                FieldName = 'notes'
                Footers = <>
                Title.Caption = 'Keterangan'
                Width = 330
              end>
            object RowDetailData: TRowDetailPanelControlEh
              object RzPageControl2: TRzPageControl
                Left = 0
                Top = 0
                Width = 775
                Height = 165
                Hint = ''
                ActivePage = TabSheet3
                Align = alClient
                TabIndex = 2
                TabOrder = 0
                FixedDimension = 19
                object TabSheet1: TRzTabSheet
                  Caption = 'Bahan Tepung'
                  object DBGridBaku: TDBGridEh
                    Left = 0
                    Top = 0
                    Width = 771
                    Height = 142
                    Align = alClient
                    DataSource = DsBaku
                    DynProps = <>
                    HorzScrollBar.ExtraPanel.Visible = True
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
                        Width = 76
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
                  object DBGridKimia: TDBGridEh
                    Left = 0
                    Top = 0
                    Width = 771
                    Height = 142
                    Align = alClient
                    DataSource = DsKimia
                    DynProps = <>
                    HorzScrollBar.ExtraPanel.Visible = True
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
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
                  Caption = 'Bahan Kemasan'
                  object DBGridKemasan: TDBGridEh
                    Left = 0
                    Top = 0
                    Width = 771
                    Height = 142
                    Align = alClient
                    DataSource = DsKemasan
                    DynProps = <>
                    HorzScrollBar.ExtraPanel.Visible = True
                    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgMultiSelect]
                    OptionsEh = [dghFixed3D, dghHighlightFocus, dghClearSelection, dghEnterAsTab, dghDialogFind, dghColumnResize, dghColumnMove, dghExtendVertLines]
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
                        FieldName = 'ttlberat'
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
      end
    end
  end
  object dxRibbon1: TdxRibbon
    Left = 0
    Top = 0
    Width = 1084
    Height = 127
    BarManager = dxBarManager1
    Style = rs2010
    ColorSchemeName = 'Blue'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object dxRibbon1Tab1: TdxRibbonTab
      Active = True
      Caption = 'Home'
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
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
    Left = 408
    Top = 72
    PixelsPerInch = 96
    object dxBarManager1Bar1: TdxBar
      Caption = 'Action'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 822
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarBaru'
        end
        item
          Visible = True
          ItemName = 'dxBarUpdate'
        end
        item
          Visible = True
          ItemName = 'dxbarRefresh'
        end
        item
          Visible = True
          ItemName = 'dxBarDelete'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton1'
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
    object dxBarManager1Bar2: TdxBar
      Caption = 'Laporan'
      CaptionButtons = <>
      DockedLeft = 219
      DockedTop = 0
      FloatLeft = 1118
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxRibbonGalleryItem1: TdxRibbonGalleryItem
      Caption = 'New Gallery'
      Category = 0
      Visible = ivAlways
      GalleryFilter.Categories = <>
      ItemLinks = <>
    end
    object dxSkinChooserGalleryItem1: TdxSkinChooserGalleryItem
      Caption = 'New Skin Chooser'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarUpdate: TdxBarButton
      Caption = 'Update    '
      Category = 0
      Hint = 'Update    '
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D960600000000000036000000280000001800000011000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFF6E3BBFFEEC7
        74FFEABC59FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC
        58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFEABC58FFECC2
        67FFF2D69AFFFEFDFBFFFFFFFFFFFFFFFFFFFFFFFFFFEFCA7CFFE3A41CFFECC3
        69FFF7E5BFFFF8EACCFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EA
        CAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACAFFF8EACBFFF8EACAFFF0CE
        85FFE4A621FFE4A723FFFCF6EAFFFFFFFFFFFFFFFFFFE6AD33FFEECA7AFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF8E8C7FFE4A724FFF3D89EFFFFFFFFFFFFFFFFFFE6AE36FFF1D391FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFE6AE36FFEFCA7CFFF5DE
        ADFFFAEFD9FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEEC979FFE5AC2FFFE4A8
        25FFE8B343FFF8EBCDFFF4DDABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF3E3FFE2A115FFF4DB
        A7FFF8E9C8FFE5AB2EFFE5AA2AFFEDC36BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE3A51FFFF4DAA3FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECD1FFECC2
        67FFE5AB2DFFE7B240FFE8B341FFE6AE36FFE7B03AFFFCF7EBFFFFFFFFFFFFFF
        FFFFFFFEFFFFE19C09FFF2D699FFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3D9
        A1FFE4A826FFE7B13DFFE8B341FFE8B341FFE7B13DFFE4A827FFF4DDACFFFFFF
        FFFFFFFFFFFFFEFEFDFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D28EFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF6E8FFE7AF38FFE6AF37FFE8B341FFE8B341FFE7B240FFE5AB2DFFECC2
        67FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6AE36FFF1D38FFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFECC267FFE5AB2DFFE7B240FFE8B341FFE8B341FFE6AF
        37FFE6AF38FFFCF6E8FFFFFFFFFFFFFFFFFFFFFFFFFFE6AD34FFF1D290FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5DDABFFE4A827FFE7B13DFFE8B341FFE8B3
        41FFE7B13DFFE4A825FFF2D699FFFFFFFFFFFFFFFFFFEBBE5CFFE6AE35FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF7EBFFE7B03AFFE6AE36FFE8B3
        41FFE7B03AFFE6AC31FFF8EACAFFF3D89DFFFFFFFFFFFDF9F0FFE5AB2DFFE3A5
        1EFFEBBE5DFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBE5EFFEBBF5FFFEBBF
        5FFFEBBF5FFFE9B950FFFFFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFECC36BFFE4A7
        23FFECC164FFFEFCF8FFEABA53FFE5AA2AFFE6AE36FFFFFFFFFFFFFFFFFFF9EB
        CFFFF7E4BCFFF6E4BCFFF6E3BAFFF6E3B9FFF6E2B8FFF6E2B6FFF6E1B5FFF5E0
        B3FFF5E0B2FFF4DCA8FFFFFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EC
        D0FFF6E1B5FFE4A724FFE5AC2FFFE7B03BFFFCF6E9FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFCF7ECFFEDC36AFFF1D08BFFFFFFFFFFFFFFFFFF}
      OnClick = dxBarUpdateClick
    end
    object dxBarBaru: TdxBarLargeButton
      Caption = 'Baru'
      Category = 0
      Hint = 'Baru'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D660700000000000036000000280000001700000014000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA
        7CFFD09E6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A1
        6FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD09E6BFFD6AA
        7CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A97BFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE
        81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7AD80FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A777FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D8FFC27A32FFD0985CFFD099
        5DFFD5A169FFBF7527FFE1C19FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E5D6FFEBCCABFFFFFFFFFFFFFFFFFFF0D4
        B6FFDEBA94FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD8AE81FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1E4D7FFE7C4A0FFFFFCF0FFDBAB7AFFDCB996FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD5A9
        7BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFBFAF7FFE3BA90FFD4A16CFFE8D2BAFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD6AA7CFFD09E
        6BFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A16FFFD2A2
        70FFCE9963FFC68746FFF4E9DEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF}
      OnClick = dxBarBaruClick
    end
    object dxbarRefresh: TdxBarButton
      Caption = 'Refresh    '
      Category = 0
      Hint = 'Refresh    '
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D960600000000000036000000280000001800000011000000010020000000
        000000000000C40E0000C40E00000000000000000000F3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F4FFF4F6
        F9FFF5F7FDFFF4F6FCFFF3F4F6FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F4FFF6F9FFFFF0F6FFFFE5DE
        CBFFE0D1A6FFE3D6AFFFEEEDECFFF7FCFFFFF4F5FAFFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF4F4F5FFF2F8FFFFD4BF7FFFC69100FFC68E
        00FFC68E00FFC68E00FFC48C00FFCCA11EFFECE6D3FFF6FAFFFFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF4F4F4FFF0F5FFFFC9A128FFC79000FFC79000FFC690
        00FFCFA523FFCC9E14FFC58D00FFC79200FFC38A00FFE4D4A2FFF6F9FFFFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF5F9FFFFCEB056FFC89100FFC58D00FFDFC780FFF7FD
        FFFFF7FCFFFFF8FEFFFFF1F1F3FFCDA325FFC89300FFC28700FFECE5CFFFF4F5
        F9FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F5F7FFE6E7EAFFC58D00FFC79100FFDFC882FFF7FEFFFFF3F3
        F4FFF3F3F3FFF3F3F3FFF4F5F8FFF5FDFFFFC79705FFCC9D0FFFE0C985FFF5F7
        FEFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF6F8FFFFD8C68FFFC79100FFC69000FFF7FEFFFFF3F3F4FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F4FFF6FBFFFFF7FCFFFFF5F7FEFFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF6F9FFFFD4BB73FFC79100FFCDA018FFF7FDFFFFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF4F5F7FFF5F7FCFFF6F9FFFFF6FAFFFFF5FAFFFFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF5F8FFFFDAC68DFFC79100FFC79100FFF8FEFFFFF3F3F3FFF3F3
        F3FFF2F2F2FFEFF3FDFFE9E9E6FFE1D4B0FFD7C07BFFCEAC44FFC8990EFFF7FC
        FFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF4F5F7FFEAE9E8FFC58C00FFC69000FFE2CE93FFF7FCFFFFF3F3
        F3FFF4F7FFFFD5B75EFFC28300FFC79000FFC89200FFC89300FFC89200FFF7FD
        FFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF7FBFFFFD0AF4DFFC79100FFC58E00FFE3D19EFFF7FF
        FFFFF7FBFFFFFBFFFFFFDED4B9FFC79200FFCA9700FFC99700FFC89400FFF7FD
        FFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F4FFF4F9FFFFCB9E17FFC69000FFC68F00FFC897
        01FFCFAC42FFCBA532FFC89300FFC99600FFC69000FFC79200FFC89400FFF7FD
        FFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F4F5FFF6FBFFFFD9BD69FFC48D00FFC58E
        00FFC68E00FFC68E00FFC58D00FFCA9801FFEAE0C5FFD9BE6DFFC38800FFF7FD
        FFFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F4FFF6FAFFFFF5F8FFFFE7D9
        AFFFE0CA88FFE2CD91FFECE3CCFFF7FDFFFFF4F6FDFFF7FCFFFFE5D8B2FFF4F6
        FAFFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F4FFF4F6
        FCFFF5F8FFFFF5F7FFFFF4F5F9FFF3F3F3FFF3F3F3FFF3F3F3FFF4F6FAFFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3
        F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FFF3F3F3FF}
      OnClick = dxbarRefreshClick
    end
    object dxBarDelete: TdxBarButton
      Caption = 'Delete     '
      Category = 0
      Hint = 'Delete     '
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424DD60500000000000036000000280000001400000012000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFF9A9A
        FFFF0000FFFFBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBFFFF0000FFFF9D9DFFFFFFFF
        FFFFFFFFFFFFFEFEFFFF7474FFFF0000FFFF0000FFFF0000FFFF9999FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9696
        FFFF0000FFFF0000FFFF0000FFFF7676FFFFFFFFFFFF7070FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF7E7EFFFFF7F7FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF6F6FFFF7C7CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7171FFFF4343FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF6060FFFFE3E3FFFFFFFFFFFFFFFFFFFFE3E3FFFF5E5EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF4545FFFFFFFFFFFF4F4FFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3F3FFFFFDEDEFFFFDDDD
        FFFF3E3EFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5050
        FFFFFFFFFFFFFFFFFFFFFBFBFFFF5757FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF3333FFFF3232FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF5757FFFFFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFB
        FFFF6161FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF6262FFFFFBFBFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7676FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF7878FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFBCBCFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFFBEBEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA3A3FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFFA8A8
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF6868FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6C6CFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFFFF5858FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF5A5AFFFFFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7FFFF5555
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF3636FFFF3636
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF5555FFFFF9F9
        FFFFFFFFFFFFFCFCFFFF4A4AFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF0000FFFF4A4AFFFFE2E2FFFFE1E1FFFF4A4AFFFF0000FFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF4D4DFFFFFCFCFFFF3E3EFFFF0000FFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF6D6DFFFFE8E8FFFFFFFFFFFFFFFF
        FFFFE8E8FFFF6C6CFFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
        FFFF3E3EFFFF7575FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF8A8A
        FFFFFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFFFF8A8AFFFF0000
        FFFF0000FFFF0000FFFF0000FFFF0000FFFF7777FFFFFFFFFFFF7D7DFFFF0000
        FFFF0000FFFF0000FFFFA2A2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA1A1FFFF0000FFFF0000FFFF0000FFFF7E7E
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFA7A7FFFF0B0BFFFFC0C0FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBFBFFFFF0C0CFFFFABABFFFFFFFFFFFFFFFFFFFF}
      OnClick = dxBarDeleteClick
    end
    object dxBarButton1: TdxBarButton
      Caption = 'SPK Timbang Tepung   '
      Category = 0
      Hint = 'SPK Timbang Tepung   '
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E00000000000000000000FDFDFDFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFFFBFBFBFF000000FF1C1C1CFF1B1B1BFF1B1B1BFF1B1B
        1BFF1B1B1BFF1B1B1BFF1B1B1BFF1B1B1BFF1B1B1BFF1A1A1AFF141414FFFFFF
        FFFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF8D8D8DFF979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FFD1D1
        D1FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF959595FFFFFFFFFF595959FF666666FF6666
        66FF666666FF666666FF666666FF666666FF575757FFFFFFFFFF525252FFD3D3
        D3FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFF9C9C9CFF939393FFFFFFFFFFC9C9C9FFD0D0D0FFD0D0
        D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFC9C9C9FFFFFFFFFF515252FFE0E0
        E0FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFCFCFCFFFCFCFCFFFFFFFFFF6E6E
        6EFF737373FF7A7A7AFF3A3A3AFF9F9F9FFFFFFFFFFF323232FF434343FF4343
        43FF434343FF434343FF434343FF434343FF303030FFFFFFFFFF5F5F5FFF5A5A
        5AFF777777FF686868FF7E7E7EFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF000000FF000000FFB5B5B5FFFFFFFFFFFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFF757575FF0000
        00FF000000FF525252FF000000FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF010101FF000000FF202020FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF343434FF141414FF0000
        00FF000000FF505050FF0B0B0BFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF606060FFA0A0A0FF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
        9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFFA2A2
        A2FF4F4F4FFF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB9B9B9FF000000FF040404FF040404FF040404FF040404FF0404
        04FF040404FF040404FF040404FF040404FF040404FF040404FF040404FF0000
        00FFB8B9B9FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB1B1B1FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFB1B1B1FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB1B1B1FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFB1B1B1FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFAAAAAAFF000000FF262626FF3D3D3DFF393939FF393939FF3939
        39FF393939FF393939FF393939FF393939FF393939FF3E3E3EFF181818FF0000
        00FFA9A9A9FF000000FF040404FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFFD6D6
        D6FF9A9A9AFFE3E3E3FF121212FFADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF2929
        29FFEAEAEAFF9A9A9AFFD4D4D4FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9FFF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFF515151FFE4E4
        E4FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFFFFFFFFFFFFFFFF5A5A5AFFD1D1
        D1FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFDFDFDFFFFFFFFFF363636FF3E3E3EFF000000FFEFEF
        EFFFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF919191FF939393FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFFFFFFFFDDDDDDFF000000FF000000FF757575FFFFFF
        FFFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF919191FF8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF000000FF646464FFFFFFFFFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFDFDFDFFFFFFFFFF141414FF0F0F0FFF101010FF101010FF1010
        10FF101010FF101010FF131313FF000000FF636363FFFFFFFFFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFDFDFDFFFCFCFCFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFDFDFDFF}
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'SPK Timbang Kimia    '
      Category = 0
      Hint = 'SPK Timbang Kimia    '
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E00000000000000000000FDFDFDFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFFFBFBFBFF000000FF1C1C1CFF1B1B1BFF1B1B1BFF1B1B
        1BFF1B1B1BFF1B1B1BFF1B1B1BFF1B1B1BFF1B1B1BFF1A1A1AFF141414FFFFFF
        FFFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF8D8D8DFF979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FFD1D1
        D1FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF959595FFFFFFFFFF595959FF666666FF6666
        66FF666666FF666666FF666666FF666666FF575757FFFFFFFFFF525252FFD3D3
        D3FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFF9C9C9CFF939393FFFFFFFFFFC9C9C9FFD0D0D0FFD0D0
        D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFC9C9C9FFFFFFFFFF515252FFE0E0
        E0FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFCFCFCFFFCFCFCFFFFFFFFFF6E6E
        6EFF737373FF7A7A7AFF3A3A3AFF9F9F9FFFFFFFFFFF323232FF434343FF4343
        43FF434343FF434343FF434343FF434343FF303030FFFFFFFFFF5F5F5FFF5A5A
        5AFF777777FF686868FF7E7E7EFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF000000FF000000FFB5B5B5FFFFFFFFFFFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFF757575FF0000
        00FF000000FF525252FF000000FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF010101FF000000FF202020FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF343434FF141414FF0000
        00FF000000FF505050FF0B0B0BFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF606060FFA0A0A0FF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
        9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFFA2A2
        A2FF4F4F4FFF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB9B9B9FF000000FF040404FF040404FF040404FF040404FF0404
        04FF040404FF040404FF040404FF040404FF040404FF040404FF040404FF0000
        00FFB8B9B9FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB1B1B1FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFB1B1B1FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB1B1B1FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFB1B1B1FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFAAAAAAFF000000FF262626FF3D3D3DFF393939FF393939FF3939
        39FF393939FF393939FF393939FF393939FF393939FF3E3E3EFF181818FF0000
        00FFA9A9A9FF000000FF040404FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFFD6D6
        D6FF9A9A9AFFE3E3E3FF121212FFADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF2929
        29FFEAEAEAFF9A9A9AFFD4D4D4FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9FFF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFF515151FFE4E4
        E4FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFFFFFFFFFFFFFFFF5A5A5AFFD1D1
        D1FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFDFDFDFFFFFFFFFF363636FF3E3E3EFF000000FFEFEF
        EFFFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF919191FF939393FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFFFFFFFFDDDDDDFF000000FF000000FF757575FFFFFF
        FFFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF919191FF8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF000000FF646464FFFFFFFFFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFDFDFDFFFFFFFFFF141414FF0F0F0FFF101010FF101010FF1010
        10FF101010FF101010FF131313FF000000FF636363FFFFFFFFFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFDFDFDFFFCFCFCFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFDFDFDFF}
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = 'SPK Timbang Kemasan '
      Category = 0
      Hint = 'SPK Timbang Kemasan '
      Visible = ivNever
      Glyph.SourceDPI = 96
      Glyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E00000000000000000000FDFDFDFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFC
        FCFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFFFBFBFBFF000000FF1C1C1CFF1B1B1BFF1B1B1BFF1B1B
        1BFF1B1B1BFF1B1B1BFF1B1B1BFF1B1B1BFF1B1B1BFF1A1A1AFF141414FFFFFF
        FFFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF8D8D8DFF979797FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF505050FFD1D1
        D1FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF959595FFFFFFFFFF595959FF666666FF6666
        66FF666666FF666666FF666666FF666666FF575757FFFFFFFFFF525252FFD3D3
        D3FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFF9C9C9CFF939393FFFFFFFFFFC9C9C9FFD0D0D0FFD0D0
        D0FFD0D0D0FFD0D0D0FFD0D0D0FFD0D0D0FFC9C9C9FFFFFFFFFF515252FFE0E0
        E0FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFCFCFCFFFCFCFCFFFFFFFFFF6E6E
        6EFF737373FF7A7A7AFF3A3A3AFF9F9F9FFFFFFFFFFF323232FF434343FF4343
        43FF434343FF434343FF434343FF434343FF303030FFFFFFFFFF5F5F5FFF5A5A
        5AFF777777FF686868FF7E7E7EFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF000000FF000000FFB5B5B5FFFFFFFFFFFCFCFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFFFFFFFF757575FF0000
        00FF000000FF525252FF000000FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF010101FF000000FF202020FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF343434FF141414FF0000
        00FF000000FF505050FF0B0B0BFFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FF606060FFA0A0A0FF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B
        9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFF9B9B9BFFA2A2
        A2FF4F4F4FFF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB9B9B9FF000000FF040404FF040404FF040404FF040404FF0404
        04FF040404FF040404FF040404FF040404FF040404FF040404FF040404FF0000
        00FFB8B9B9FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB1B1B1FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFB1B1B1FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFB1B1B1FF000000FF000000FF000000FF000000FF000000FF0000
        00FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF0000
        00FFB1B1B1FF000000FF121212FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFF0000
        00FF000000FFAAAAAAFF000000FF262626FF3D3D3DFF393939FF393939FF3939
        39FF393939FF393939FF393939FF393939FF393939FF3E3E3EFF181818FF0000
        00FFA9A9A9FF000000FF040404FFFFFFFFFFFCFCFCFFFCFCFCFFFFFFFFFFD6D6
        D6FF9A9A9AFFE3E3E3FF121212FFADADADFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6C6C6CFF2929
        29FFEAEAEAFF9A9A9AFFD4D4D4FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFFFF
        FFFFFFFFFFFFFFFFFFFF9F9F9FFF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFFFFFFFF515151FFE4E4
        E4FFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFFFFFFFFFFFFFFFF5A5A5AFFD1D1
        D1FFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF929292FF929292FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFDFDFDFFFFFFFFFF363636FF3E3E3EFF000000FFEFEF
        EFFFFFFFFFFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF919191FF939393FFFFFFFFFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFFFFFFFFDDDDDDFF000000FF000000FF757575FFFFFF
        FFFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFFFFFFFF919191FF8B8B8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFECECECFF000000FF646464FFFFFFFFFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFCFC
        FCFFFCFCFCFFFDFDFDFFFFFFFFFF141414FF0F0F0FFF101010FF101010FF1010
        10FF101010FF101010FF131313FF000000FF636363FFFFFFFFFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFFBFBFBFFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFCFCFCFFFDFDFDFFFCFCFCFFFDFD
        FDFFFDFDFDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFCFCFCFFFCFCFCFFFCFCFCFFFCFCFCFFFDFDFDFFFDFDFDFFFDFDFDFFFDFD
        FDFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFDFDFDFF}
      OnClick = dxBarButton3Click
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivNever
      OnClick = dxBarButton4Click
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'Open'
      Category = 0
      Hint = 'Open'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424DD60800000000000036000000280000001800000017000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD7F4ECFF90E0CAFF62D4
        B5FF4BCEAAFF48CDA9FF5BD2B1FF82DDC4FFC2EEE2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFABE8D7FF1DC295FF0ABC8BFF15BF91FF1AC0
        93FF1DC194FF1DC194FF1BC193FF16BF91FF0EBD8DFF0CBD8DFF83DDC5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF37C8A1FF0BBC8CFF1EC295FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF22C397FF20C296FF12BE8FFF16BF
        91FFE1F6F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFBFDFDFF13BF90FF19C092FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF1EC2
        95FF02BA88FFC9F0E5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF19C093FF1BC194FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF20C296FF03BA88FFE5F8F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF57D1
        B0FF15BF91FF22C397FF22C397FF22C397FF22C397FF22C397FF21C296FF14BF
        90FF20C296FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF1DC195FF1BC194FFFFFFFFFFFFFFFFFFFFFFFFFFDBF5EEFF04BA
        89FF21C296FF22C397FF22C397FF22C397FF22C397FF20C296FF09BC8BFFA6E7
        D5FF0EBD8DFF1FC295FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF10BE8EFF93E1CCFFFFFFFFFFFFFFFFFF58D1B0FF19C0
        92FF22C397FF22C397FF22C397FF22C397FF20C296FF04BB89FFD3F3EAFFFFFF
        FFFFE3F7F1FF08BC8BFF1FC295FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF1FC295FF16BF91FFFFFFFFFFFFFFFFFF08BC8BFF21C2
        96FF22C397FF22C397FF22C397FF20C296FF05BB89FFD6F4ECFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6F8F3FF09BC8BFF1EC295FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF0BBC8CFFD9F4EDFFDAF5EEFF0CBD8CFF22C3
        97FF22C397FF22C397FF1FC295FF06BB89FFDAF4EDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE9F9F4FF0ABC8BFF1EC295FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF13BF90FF9DE4D1FFB7EBDDFF11BE8FFF22C3
        97FF22C397FF20C296FF0EBD8DFFDDF6EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFECF9F6FF0BBD8CFF1EC195FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF17C092FF7BDBC1FFACE8D8FF12BE8FFF22C3
        97FF22C397FF14BF90FFA1E5D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF37C8
        A1FFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFEFFAF7FF0CBD8DFF1DC195FF22C3
        97FF22C397FF22C397FF22C397FF19C092FF6FD7BCFFB6EBDCFF11BE8FFF22C3
        97FF22C397FF21C296FF08BC8BFFC5EFE3FFFFFFFFFFFFFFFFFF21C296FF12BE
        8FFF17C092FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2FBF9FF0EBD8DFF1DC1
        94FF22C397FF22C397FF22C397FF17C092FF79DBC0FFD7F4ECFF0DBD8DFF22C3
        97FF22C397FF22C397FF21C296FF06BB89FFB6EBDCFF28C499FF1AC093FF22C3
        97FF1CC194FF15BF91FFFDFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFF5FCFAFF13BF
        90FF1FC295FF22C397FF22C397FF14BF90FF9AE3CFFFFFFFFFFF06BB8AFF21C2
        96FF22C397FF22C397FF22C397FF21C296FF13BE8FFF1EC195FF22C397FF22C3
        97FF22C397FF1CC194FF13BF90FFFAFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFE6F8
        F3FF0EBD8DFF22C397FF22C397FF0CBD8CFFD3F3EAFFFFFFFFFF4FCFACFF1AC0
        93FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF1CC194FF12BE8FFFF8FDFBFFFFFFFFFFFFFFFFFF22C3
        97FF1EC295FF22C397FF20C296FF11BE8FFFFFFFFFFFFFFFFFFFCFF2E8FF06BB
        8AFF21C396FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF1DC194FF14BF90FFDDF5EFFF1DC194FF1BC1
        93FF22C397FF22C397FF12BE8FFF87DEC6FFFFFFFFFFFFFFFFFFFFFFFFFF48CD
        A9FF18C092FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF1FC295FF0FBE8EFF1EC295FF22C3
        97FF22C397FF1FC295FF13BE90FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF10BE8EFF1DC194FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF21C296FF01BA87FFD6F4EBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFEDFAF6FF0BBC8CFF1BC194FF22C397FF22C397FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF22C397FF1FC2
        96FF01BA87FFB4EADBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF9FDFCFF25C498FF0FBD8EFF20C296FF22C397FF22C397FF22C3
        97FF22C397FF22C397FF22C397FF22C397FF22C397FF21C296FF15BF91FF0CBD
        8CFFCDF1E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF93E1CCFF0FBE8EFF0EBD8DFF17C092FF1CC1
        94FF1FC295FF1FC295FF1DC194FF19C092FF11BE8FFF05BB89FF6BD6B9FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2EEE2FF7CDBC1FF4FCF
        ACFF37C8A0FF34C89FFF47CDA8FF6FD8BBFFADE8D8FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = dxBarLargeButton1Click
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'Close'
      Category = 0
      Hint = 'Close'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        424D360900000000000036000000280000001800000018000000010020000000
        000000000000C40E0000C40E00000000000000000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAFEBFF7777DEFF5253
        D5FF4041D1FF3F40D1FF5152D5FF7575DEFFACADEBFFFEFEFEFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7575DEFF2526CAFF3233CDFF3839CFFF3C3D
        D0FF3E3FD0FF3E3FD0FF3C3DD0FF3839CFFF3233CDFF2425CAFF7172DDFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC7C8F1FF282ACBFF3536CEFF3E3FD0FF3E3FD0FF3E3FD0FF3E3F
        D0FF3E3FD0FF3F40D1FF3F40D1FF3F40D1FF3F40D1FF3E3FD0FF3537CEFF2728
        CBFFC5C5F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFACACEAFF2223C8FF3C3DCEFF4041D2FF4142D5FF4243D5FF4142D4FF3F40
        D1FF3D3ECEFF3E3FCFFF3E3FD0FF3F40D1FF3F40D1FF3F40D1FF3F40D1FF3D3E
        D0FF2324CAFFABACEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C6
        EFFF2627CEFF4849DEFF4C4DE3FF4C4DE3FF4C4DE3FF4C4DE3FF4C4DE3FF4C4D
        E4FF4B4CE2FF4647DBFF3F40D1FF3D3ECFFF3E3FD0FF3F40D1FF3F40D1FF3F40
        D1FF3E3FD0FF2324CAFFC7C7F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3334
        DBFF4B4CE3FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4B4CE2FF4B4CE2FF4C4DE4FF4647DBFF3D3ECFFF3E3FD0FF3F40D1FF3F40
        D1FF3F40D1FF3D3ED0FF2829CBFFFFFFFFFFFFFFFFFFFFFFFFFF7C7DEAFF4243
        E0FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE3FF4B4CE2FF3F40D1FF3E3FD0FF3F40
        D1FF3F40D1FF3F40D1FF3536CEFF7475DDFFFFFFFFFFFFFFFFFF3233DEFF4A4B
        E1FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4C4DE3FF3F40D1FF3E3F
        D0FF3F40D1FF3F40D1FF3E3FD0FF2426CAFFFFFFFFFFB2B3F2FF3F40E0FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF3D3E
        CFFF3E3FD0FF3F40D1FF3F40D1FF3233CDFFAEAFEBFF7E7FEAFF4546E1FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4344E0FF3C3DDFFF3C3DDFFF3C3DDFFF3C3D
        DFFF3C3DDFFF3C3DDFFF3C3DDFFF3C3DDFFF3C3DDFFF3C3DDFFF4445E1FF4647
        DCFF3D3ECFFF3F40D1FF3F40D1FF3839CFFF7677DEFF5C5DE4FF4849E1FF4B4C
        E2FF4B4CE2FF4B4CE2FF4142E0FF7B7CE9FFCDCDF6FFC8C9F6FFC8C8F6FFC8C8
        F6FFC8C8F6FFC8C8F6FFC8C8F6FFC8C8F6FFC8C9F6FFCDCDF7FF7E7FEAFF4243
        E2FF3F40D1FF3E3FD0FF3F40D1FF3C3DD0FF5253D5FF4C4DE2FF4A4BE1FF4B4C
        E2FF4B4CE2FF4849E1FF5051E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5455
        E4FF4344DAFF3E3FCFFF3F40D1FF3E3FD0FF4041D1FF4C4DE2FF4A4BE1FF4B4C
        E2FF4B4CE2FF4849E1FF4F50E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5253
        E3FF4849E1FF3D3ECEFF3F40D1FF3E3FD0FF4141D1FF5E5FE5FF4849E1FF4B4C
        E2FF4B4CE2FF4B4CE2FF4142E0FF7778E9FFC8C9F6FFC4C4F5FFC4C4F5FFC4C4
        F5FFC4C4F5FFC4C4F5FFC4C4F5FFC4C4F5FFC4C4F5FFC8C8F6FF7778E9FF4142
        E0FF4C4DE4FF3F40D1FF3E3FD0FF3C3DD0FF5354D5FF8182EAFF4445E0FF4B4C
        E2FF4B4CE2FF4849E1FF4748E1FF4243E0FF3C3DDFFF3C3DDFFF3C3DDFFF3C3D
        DFFF3C3DDFFF3C3DDFFF3C3DDFFF3C3DDFFF3C3DDFFF3C3EDFFF4445E0FF4B4C
        E2FF4C4DE3FF4142D4FF3E3FD0FF3839CFFF7778DEFFB7B7F3FF3E3FDFFF4B4C
        E2FF4849E1FF6263E5FF6E6FE7FF5C5DE4FF4647E1FF4A4BE1FF4B4CE2FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4C4DE3FF4243D5FF3E3FD0FF3133CDFFAFB0ECFFFFFFFFFF3334DEFF4A4B
        E1FF4647E1FF7273E8FF7071E8FF7273E8FF6A6BE7FF4748E1FF4A4BE1FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4C4DE3FF4243D5FF3E3FD0FF2426CAFFFFFFFFFFFFFFFFFF8384EBFF4142
        E0FF4849E1FF6263E5FF7172E8FF6F70E8FF7273E8FF5F60E5FF4849E1FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4C4DE3FF4041D2FF3536CEFF7576DEFFFFFFFFFFFFFFFFFFFFFFFFFF3839
        DFFF494AE1FF4849E1FF6F70E8FF7172E8FF6F70E8FF7374E8FF4748E1FF4A4B
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4C4DE3FF3C3DCEFF2829CBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD4D4
        F8FF3031DDFF494BE1FF4849E1FF6566E6FF7475E8FF7273E8FF4748E1FF4A4B
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E2FF4849DDFF2223C8FFC8C8F1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFBCBCF4FF3031DDFF494AE1FF4748E1FF4849E1FF4849E1FF4A4BE1FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4C
        E3FF2627CEFFACACEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD2D2F7FF3738DEFF4142E0FF4A4BE1FF4A4BE1FF4B4CE2FF4B4C
        E2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4B4CE2FF4A4BE1FF4243E0FF3334
        DBFFC5C5EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF7F80EAFF3233DEFF3E3FE0FF4445E1FF4849
        E1FF4A4BE1FF4A4BE1FF4849E1FF4446E1FF3E3FE0FF3233DEFF7D7EEAFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB5B5F3FF7F80EAFF5D5E
        E4FF4C4DE2FF4C4DE2FF5D5EE4FF7F7FEAFFB3B4F2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      OnClick = dxBarLargeButton2Click
    end
  end
  object QSPKProd: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT start_date,end_date,amount_carton,spk_prod_no,formula_no,' +
        'order_no,notes,trans_year,trans_month,trans_day,status1,'
      
        'cast((case when status1='#39'0'#39' then '#39'Close'#39' else '#39'Open'#39' end)as varc' +
        'har) sts '
      'from t_spk_prod'
      
        'group by  start_date,end_date,amount_carton,spk_prod_no,formula_' +
        'no,order_no,notes,trans_year,trans_month,trans_day,status1 '
      'order by spk_prod_no Desc')
    Left = 336
    Top = 56
  end
  object DsSPKProd: TDataSource
    DataSet = MemSPKProd
    Left = 336
    Top = 8
  end
  object MemSPKProd: TMemTableEh
    FetchAllOnOpen = True
    Params = <>
    DataDriver = DsdSPKProd
    Left = 384
  end
  object DsdSPKProd: TDataSetDriverEh
    ProviderDataSet = QSPKProd
    Left = 344
    Top = 104
  end
  object QSpkProddet: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT shift,weigh_amount,spk_prod_no, product_code,notes from t' +
        '_spk_prod '
      'order by spk_prod_no Desc')
    MasterSource = DsSPKProd
    MasterFields = 'spk_prod_no'
    DetailFields = 'spk_prod_no'
    Left = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spk_prod_no'
        Value = nil
      end>
  end
  object DsSpkProddet: TDataSource
    DataSet = MemSpkProddet
    Left = 504
    Top = 48
  end
  object QSpkFormuladet2: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'select A.*,C.item_name, D.supplier_name from t_spk_formula_det A' +
        ' '
      'left join t_item_stock B on A.item_stock_code=B.item_stock_code'
      
        'left join t_item C on B.item_code=C.item_code left join t_suppli' +
        'er D on '
      'B.supplier_code=D.supplier_code'
      'order by id desc')
    MasterSource = DsSPKProd
    DetailFields = 'no_formula'
    Left = 704
    Top = 8
  end
  object MemSpkProddet: TMemTableEh
    DetailFields = 'no_spk_prod'
    FieldDefs = <
      item
        Name = 'shift'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'jumlah_timbang'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'no_spk_prod'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'nm_produk'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'notes'
        DataType = ftString
        Size = 100
      end>
    IndexDefs = <>
    MasterDetailSide = mdsOnProviderEh
    MasterFields = 'no_spk_prod'
    MasterSource = DsSPKProd
    Params = <>
    DataDriver = DsdSpkProddet
    StoreDefs = True
    Left = 440
    Top = 16
  end
  object DsdSpkProddet: TDataSetDriverEh
    ProviderDataSet = QSpkProddet
    Left = 440
    Top = 64
  end
  object UniQuery1: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_spk_formula_det')
    Left = 582
    Top = 65529
  end
  object DataSource1: TDataSource
    DataSet = QSpkProddet
    Left = 712
    Top = 64
  end
  object DsdSPKTimbang: TDataSetDriverEh
    ProviderDataSet = QSPKTimbang
    Left = 576
    Top = 112
  end
  object DsSPKTimbang: TDataSource
    DataSet = MemSPKTimbang
    Left = 640
    Top = 96
  end
  object QSPKTimbang: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT mc,weigh_amount,spk_prod_no,product_code,notes,weight_no ' +
        'from t_spk_prod_tmbng'
      'order by spk_prod_no Desc')
    MasterSource = DsSPKProd
    MasterFields = 'spk_prod_no'
    DetailFields = 'spk_prod_no'
    Left = 640
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spk_prod_no'
        Value = nil
      end>
  end
  object MemSPKTimbang: TMemTableEh
    DetailFields = 'no_spk_prod'
    FieldDefs = <
      item
        Name = 'mc'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'weigh_amount'
        DataType = ftFloat
        Precision = 15
      end
      item
        Name = 'spk_prod_no'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'product_code'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'notes'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'weight_no'
        DataType = ftInteger
        Precision = 15
      end>
    IndexDefs = <>
    MasterDetailSide = mdsOnProviderEh
    MasterFields = 'no_spk_prod'
    MasterSource = DsSPKProd
    Params = <>
    DataDriver = DsdSPKTimbang
    StoreDefs = True
    Left = 576
    Top = 64
  end
  object DsBaku: TDataSource
    DataSet = QBaku
    Left = 343
    Top = 264
  end
  object QBaku: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select A.*,B.item_name--, C.category'
      ',D.supplier_name'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_item_stock B on A.item_stock_code=B.item_stock_code' +
        ' '
      'inner join t_item C on B.item_code=C.item_code '
      'inner join t_supplier D on A.supplier_code=D.supplier_code'
      '-- where C.Category='#39'BAHAN BAKU'#39' order by a.kd_material_stok asc')
    MasterSource = DsSPKTimbang
    MasterFields = 'weight_no'
    DetailFields = 'weght_no'
    Left = 343
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'weight_no'
        Value = nil
      end>
  end
  object DsKimia: TDataSource
    DataSet = QKimia
    Left = 423
    Top = 264
  end
  object QKemasan: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select A.*,B.item_name --, C.category'
      ',D.supplier_name'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_item_stock B on A.item_stock_code=B.item_stock_code' +
        ' '
      'inner join t_item C on B.item_code=C.item_code '
      'inner join t_supplier D on A.supplier_code=D.supplier_code'
      
        '-- where C.Category='#39'BAHAN KEMASAN'#39' order by a.kd_material_stok ' +
        'asc')
    MasterSource = DsSPKTimbang
    MasterFields = 'weight_no'
    DetailFields = 'weght_no'
    Left = 495
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'weight_no'
        Value = nil
      end>
  end
  object DsKemasan: TDataSource
    DataSet = QKemasan
    Left = 495
    Top = 264
  end
  object QKimia: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select A.*,B.item_name-- , C.category '
      ',D.supplier_name'
      'from t_spk_prod_tmbng_det A'
      
        'inner join t_item_stock B on A.item_stock_code=B.item_stock_code' +
        ' '
      'inner join t_item C on B.item_code=C.item_code '
      'inner join t_supplier D on A.supplier_code=D.supplier_code'
      '-- where C.Category='#39'KIMIA'#39' order by a.kd_material_stok asc')
    MasterSource = DsSPKTimbang
    MasterFields = 'weight_no'
    DetailFields = 'weght_no'
    Left = 423
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'weight_no'
        Value = nil
      end>
  end
  object QRptSPK: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      'select * from t_spk_prod_tmbng')
    Left = 582
    Top = 170
  end
  object DbRptSPK: TfrxDBDataset
    UserName = 'DbRptSPK'
    CloseDataSource = False
    DataSet = QRptSPK
    BCDToCurrency = False
    DataSetOptions = []
    Left = 582
    Top = 218
  end
  object Rpt: TfrxReport
    Version = '2022.2.7'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44795.564456828700000000
    ReportOptions.LastChange = 44795.564456828700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 590
    Top = 266
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 83.149660000000000000
        Width = 718.110700000000000000
        RowCount = 0
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object QRptSPKDetail: TUniQuery
    Connection = dm.Koneksi
    SQL.Strings = (
      
        'SELECT'#9'c.nm_material,d.nm_supplier,a.kd_material_stok,a.kd_stok,' +
        'a."index",a.satuan,a.ttlberat,a.iddetail,a.qtyperkemasan,a.jmlhk' +
        'emasan,a.no_timbang,a.index2,a.satuankemasan,c.category,C.btl * ' +
        'e.jmlh_timbang AS jmlh,e.mc,e.jmlh_timbang,e.tgl_mulai,e.tgl_sel' +
        'esai,e.nm_produk,e.no_spk_prod,e.no_formula, '
      #9'e.notes,e.kd_sbu,e.tgl_input'
      'FROM'
      #9't_spk_prod_tmbng_det AS "a"'
      #9'LEFT JOIN'
      #9't_material_stok AS b'
      #9'ON '
      #9#9'a.kd_material_stok = b.kd_material_stok'
      #9'LEFT JOIN'
      #9't_material AS "c"'
      #9'ON '
      #9#9'b.kd_material = c.kd_material'
      #9'LEFT JOIN'
      #9't_supplier AS d'
      #9'ON '
      #9#9'b.kd_supplier = d.kd_supplier'
      #9'INNER JOIN'
      #9't_spk_prod_tmbng AS e'
      #9'ON '
      #9#9'a.no_timbang = e.no_timbang'
      'GROUP BY'
      #9'c.nm_material, '
      #9'd.nm_supplier, '
      #9'a.kd_material_stok, '
      #9'a.kd_stok, '
      #9'a."index", '
      #9'a.satuan, '
      #9'a.ttlberat, '
      #9'a.iddetail, '
      #9'a.qtyperkemasan, '
      #9'a.jmlhkemasan, '
      #9'a.no_timbang, '
      #9'a.index2, '
      #9'a.satuankemasan, '
      #9'c.category, '
      #9'c.btl, e.mc, '
      #9'e.jmlh_timbang, '
      #9'e.tgl_mulai, '
      #9'e.tgl_selesai, '
      #9'e.nm_produk, '
      #9'e.no_spk_prod, '
      #9'e.no_formula, '
      #9'e.notes, '
      #9'e.kd_sbu, '
      #9'e.tgl_input'
      'ORDER BY'
      #9'iddetail ASC')
    DetailFields = 'no_timbang'
    Left = 654
    Top = 170
  end
  object DsRptSPK: TDataSource
    DataSet = QRptSPK
    Left = 582
    Top = 317
  end
  object DbRptSPKDet: TfrxDBDataset
    UserName = 'DbRptSPKDet'
    CloseDataSource = False
    DataSet = QRptSPKDetail
    BCDToCurrency = False
    DataSetOptions = []
    Left = 654
    Top = 218
  end
end
