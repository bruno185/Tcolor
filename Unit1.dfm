object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'TColor'
  ClientHeight = 257
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 34
    Top = 32
    Width = 200
    Height = 137
    Color = clInfoBk
    ParentBackground = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 34
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 240
    Top = 32
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 159
    Top = 175
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 3
    OnClick = Button2Click
  end
  object ScrollBar1: TScrollBar
    Left = 240
    Top = 141
    Width = 185
    Height = 17
    Ctl3D = True
    Max = 255
    PageSize = 0
    ParentCtl3D = False
    Position = 1
    TabOrder = 4
    OnChange = DoScrllChange
  end
  object ScrollBar2: TScrollBar
    Left = 240
    Top = 164
    Width = 185
    Height = 17
    Ctl3D = True
    Max = 255
    PageSize = 0
    ParentCtl3D = False
    Position = 1
    TabOrder = 5
    OnChange = DoScrllChange
  end
  object ScrollBar3: TScrollBar
    Left = 240
    Top = 187
    Width = 185
    Height = 17
    Ctl3D = True
    Max = 255
    PageSize = 0
    ParentCtl3D = False
    Position = 1
    TabOrder = 6
    OnChange = DoScrllChange
  end
  object ColorDialog1: TColorDialog
    Top = 232
  end
end
