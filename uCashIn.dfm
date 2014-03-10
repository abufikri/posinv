object frmCashIn: TfrmCashIn
  Left = 0
  Top = 0
  Caption = 'frmCashIn'
  ClientHeight = 481
  ClientWidth = 735
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 735
    Height = 81
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 648
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
      Width = 61
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
  object Panel3: TPanel
    Left = 0
    Top = 81
    Width = 735
    Height = 400
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 648
    ExplicitHeight = 268
    object NxPageControl1: TNxPageControl
      Left = 1
      Top = 1
      Width = 733
      Height = 398
      ActivePage = NxTabSheet1
      ActivePageIndex = 0
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
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        ExplicitTop = 0
        ExplicitWidth = 646
        ExplicitHeight = 264
        DesignSize = (
          733
          377)
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 86
          Height = 13
          Caption = 'Tanggal Transaksi'
        end
        object lbl8: TLabel
          Left = 295
          Top = 32
          Width = 33
          Height = 13
          Caption = 'sampai'
        end
        object lbl7: TLabel
          Left = 119
          Top = 32
          Width = 60
          Height = 13
          Caption = 'Dari Tanggal'
        end
        object gridList: TNextGrid
          Left = 24
          Top = 58
          Width = 681
          Height = 247
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          TabStop = True
        end
        object btnRefresh: TBitBtn
          Left = 544
          Top = 27
          Width = 161
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Refresh Data'
          DoubleBuffered = True
          ParentDoubleBuffered = False
          TabOrder = 1
          OnClick = btnRefreshClick
        end
        object Panel2: TPanel
          Left = 0
          Top = 327
          Width = 733
          Height = 50
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 2
          DesignSize = (
            733
            50)
          object BitBtn2: TBitBtn
            Left = 24
            Top = 9
            Width = 161
            Height = 33
            Caption = 'Tambah Data'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
          object BitBtn1: TBitBtn
            Left = 584
            Top = 9
            Width = 121
            Height = 33
            Anchors = [akTop, akRight]
            DoubleBuffered = True
            Kind = bkClose
            NumGlyphs = 2
            ParentDoubleBuffered = False
            TabOrder = 1
          end
        end
        object dtp2: TDateTimePicker
          Left = 345
          Top = 30
          Width = 95
          Height = 21
          Date = 40653.008174768520000000
          Time = 40653.008174768520000000
          TabOrder = 3
        end
        object dtp1: TDateTimePicker
          Left = 185
          Top = 30
          Width = 95
          Height = 21
          Date = 40653.008174768520000000
          Time = 40653.008174768520000000
          TabOrder = 4
        end
      end
      object NxTabSheet2: TNxTabSheet
        Caption = 'Form Data'
        PageIndex = 1
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
        ExplicitTop = 0
        ExplicitWidth = 646
        ExplicitHeight = 264
      end
    end
  end
end
