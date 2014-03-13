object frmAturHeaderFooter: TfrmAturHeaderFooter
  Left = 0
  Top = 0
  Caption = 'Pengaturan Header dan Footer'
  ClientHeight = 413
  ClientWidth = 745
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 81
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lbHeader: TLabel
      Left = 16
      Top = 8
      Width = 252
      Height = 19
      Caption = 'Pengaturan Header dan Footer'
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
      Width = 351
      Height = 16
      Caption = 'Digunakan untuk mengatur tampilan cetak Header dan Footer'
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
    Top = 365
    Width = 745
    Height = 48
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 576
      Top = 6
      Width = 145
      Height = 33
      DoubleBuffered = True
      Kind = bkClose
      NumGlyphs = 2
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 16
      Top = 6
      Width = 169
      Height = 33
      Caption = 'Simpan Data'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
      OnClick = BitBtn2Click
    end
  end
  object NxPageControl1: TNxPageControl
    Left = 0
    Top = 81
    Width = 745
    Height = 284
    ActivePage = NxTabSheet2
    ActivePageIndex = 1
    Align = alClient
    TabOrder = 2
    Margin = 0
    Options = [pgBoldActiveTab, pgTopBorder]
    Spacing = 0
    TabHeight = 17
    object NxTabSheet1: TNxTabSheet
      Caption = 'Header && Footer'
      PageIndex = 0
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 44
        Height = 13
        Caption = 'Header 1'
      end
      object Label2: TLabel
        Left = 16
        Top = 43
        Width = 44
        Height = 13
        Caption = 'Header 2'
      end
      object Label3: TLabel
        Left = 16
        Top = 70
        Width = 44
        Height = 13
        Caption = 'Header 3'
      end
      object Label4: TLabel
        Left = 16
        Top = 128
        Width = 41
        Height = 13
        Caption = 'Footer 1'
      end
      object Label5: TLabel
        Left = 16
        Top = 155
        Width = 41
        Height = 13
        Caption = 'Footer 2'
      end
      object Label6: TLabel
        Left = 16
        Top = 182
        Width = 41
        Height = 13
        Caption = 'Footer 3'
      end
      object edtHeader1: TEdit
        Left = 88
        Top = 13
        Width = 377
        Height = 21
        MaxLength = 80
        TabOrder = 0
      end
      object edtHeader2: TEdit
        Left = 88
        Top = 40
        Width = 377
        Height = 21
        MaxLength = 80
        TabOrder = 1
      end
      object edtHeader3: TEdit
        Left = 88
        Top = 67
        Width = 377
        Height = 21
        MaxLength = 80
        TabOrder = 2
      end
      object edtFooter1: TEdit
        Left = 88
        Top = 125
        Width = 377
        Height = 21
        MaxLength = 80
        TabOrder = 3
      end
      object edtFooter2: TEdit
        Left = 88
        Top = 152
        Width = 377
        Height = 21
        MaxLength = 80
        TabOrder = 4
      end
      object edtFooter3: TEdit
        Left = 88
        Top = 179
        Width = 377
        Height = 21
        MaxLength = 80
        TabOrder = 5
      end
    end
    object NxTabSheet2: TNxTabSheet
      Caption = 'Layar && Cetak'
      PageIndex = 1
      ParentTabFont = False
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 34
      object Label7: TLabel
        Left = 24
        Top = 24
        Width = 64
        Height = 13
        Caption = 'Ukuran Layar'
      end
      object Label8: TLabel
        Left = 40
        Top = 48
        Width = 27
        Height = 13
        Caption = 'Lebar'
      end
      object Label9: TLabel
        Left = 40
        Top = 72
        Width = 28
        Height = 13
        Caption = 'Tinggi'
      end
      object Label10: TLabel
        Left = 24
        Top = 124
        Width = 59
        Height = 13
        Caption = 'Jenis Printer'
      end
      object Label11: TLabel
        Left = 24
        Top = 168
        Width = 41
        Height = 13
        Caption = 'Mesin ID'
      end
      object rgStatusPrinter: TRadioGroup
        Left = 335
        Top = 28
        Width = 194
        Height = 38
        Caption = ' Status Printer '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'OFF'
          'ON')
        TabOrder = 3
      end
      object edtLebar: TSpinEdit
        Left = 103
        Top = 44
        Width = 121
        Height = 22
        MaxValue = 2048
        MinValue = 800
        TabOrder = 0
        Value = 0
      end
      object edtTinggi: TSpinEdit
        Left = 103
        Top = 69
        Width = 121
        Height = 22
        MaxValue = 1024
        MinValue = 600
        TabOrder = 1
        Value = 0
      end
      object cbJenisPrinter: TComboBox
        Left = 103
        Top = 121
        Width = 194
        Height = 21
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'EPSON LX Series'
          'EPSON TM Series'
          'Cetak ke File')
      end
      object rgStatusDrawer: TRadioGroup
        Left = 335
        Top = 72
        Width = 194
        Height = 38
        Caption = ' Status Drawer'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'OFF'
          'ON')
        TabOrder = 4
      end
      object rgStatusPole: TRadioGroup
        Left = 335
        Top = 116
        Width = 194
        Height = 38
        Caption = ' Status Pole / Customer Display  '
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          'OFF'
          'ON')
        TabOrder = 5
      end
      object edtMesinID: TEdit
        Left = 103
        Top = 165
        Width = 121
        Height = 21
        Enabled = False
        TabOrder = 6
      end
    end
  end
end
