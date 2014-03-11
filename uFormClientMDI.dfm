object frmClientMDI: TfrmClientMDI
  Left = 0
  Top = 0
  ClientHeight = 416
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 648
    Height = 81
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lbHeader: TLabel
      Left = 16
      Top = 8
      Width = 74
      Height = 19
      Caption = 'lbHeader'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDeskripsi: TLabel
      Left = 16
      Top = 40
      Width = 89
      Height = 16
      Caption = 'lbDeskripsi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 368
    Width = 648
    Height = 48
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 488
      Top = 8
      Width = 145
      Height = 33
      DoubleBuffered = True
      Kind = bkClose
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 648
    Height = 287
    Align = alClient
    TabOrder = 2
    ExplicitHeight = 268
    object NxPageControl1: TNxPageControl
      Left = 1
      Top = 1
      Width = 646
      Height = 285
      ActivePage = NxTabSheet2
      ActivePageIndex = 1
      Align = alClient
      TabOrder = 0
      Margin = 0
      Options = [pgBoldActiveTab, pgTopBorder]
      Spacing = 0
      TabHeight = 17
      ExplicitLeft = 40
      ExplicitTop = 48
      ExplicitWidth = 300
      ExplicitHeight = 250
      object NxTabSheet1: TNxTabSheet
        Caption = 'List Data'
        PageIndex = 0
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        ExplicitTop = 0
        ExplicitWidth = 100
        ExplicitHeight = 100
      end
      object NxTabSheet2: TNxTabSheet
        Caption = 'Form Data'
        PageIndex = 1
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        ExplicitTop = 0
        ExplicitWidth = 100
        ExplicitHeight = 100
      end
    end
  end
end
