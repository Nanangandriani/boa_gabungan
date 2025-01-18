object FDashboard2: TFDashboard2
  Left = 0
  Top = 0
  Caption = 'Dashboard'
  ClientHeight = 568
  ClientWidth = 965
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object BitBtn1: TBitBtn
    Left = 760
    Top = 528
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 872
    Top = 528
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object PanelParent: TPanel
    Left = 32
    Top = 32
    Width = 841
    Height = 457
    TabOrder = 2
    OnResize = PanelParentResize
    object Panel1: TPanel
      Left = 184
      Top = 256
      Width = 185
      Height = 41
      Caption = 'Panel1'
      TabOrder = 0
    end
  end
  object TabSet1: TTabSet
    Left = 512
    Top = 208
    Width = 185
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
  end
end
