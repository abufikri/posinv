object frmAturSistem: TfrmAturSistem
  Left = 0
  Top = 0
  Caption = 'Pengaturan Sistem'
  ClientHeight = 416
  ClientWidth = 643
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
    Width = 643
    Height = 81
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = -237
    ExplicitWidth = 745
    object lbHeader: TLabel
      Left = 16
      Top = 8
      Width = 177
      Height = 19
      Caption = 'Pengaturan Database'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbDeskripsi: TLabel
      Left = 16
      Top = 33
      Width = 537
      Height = 16
      Caption = 
        'Peringatan : Jangan dilakukan perubahan - kecuali memang terjadi' +
        ' perubahan database !!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 88
      Top = 49
      Width = 545
      Height = 16
      Caption = 
        'kesalahan setting database dapat mengakibatkan sistem tidak berf' +
        'ungsi, atau database rusak'
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
    Width = 643
    Height = 48
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = -237
    ExplicitTop = 234
    ExplicitWidth = 745
    object BitBtn1: TBitBtn
      Left = 472
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
    Width = 643
    Height = 287
    ActivePage = NxTabSheet1
    ActivePageIndex = 0
    Align = alClient
    TabOrder = 2
    Margin = 0
    Options = [pgBoldActiveTab, pgScrollButtons, pgTopBorder]
    Spacing = 0
    TabHeight = 17
    ExplicitLeft = 208
    ExplicitTop = 216
    ExplicitWidth = 300
    ExplicitHeight = 250
    object NxTabSheet1: TNxTabSheet
      Caption = 'Sistem Database'
      PageIndex = 0
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clWindowText
      TabFont.Height = -11
      TabFont.Name = 'Tahoma'
      TabFont.Style = []
      ExplicitTop = 0
      ExplicitWidth = 100
      ExplicitHeight = 100
      object Label1: TLabel
        Left = 32
        Top = 24
        Width = 38
        Height = 13
        Caption = 'DB Host'
      end
      object Label2: TLabel
        Left = 32
        Top = 89
        Width = 43
        Height = 13
        Caption = 'DB Name'
      end
      object Label3: TLabel
        Left = 32
        Top = 114
        Width = 64
        Height = 13
        Caption = 'DB Username'
      end
      object Label4: TLabel
        Left = 32
        Top = 141
        Width = 62
        Height = 13
        Caption = 'DB Password'
      end
      object Label5: TLabel
        Left = 32
        Top = 51
        Width = 36
        Height = 13
        Caption = 'DB Port'
      end
      object SpeedButton1: TSpeedButton
        Left = 447
        Top = 86
        Width = 23
        Height = 22
        Caption = '...'
        OnClick = SpeedButton1Click
      end
      object edtHost: TEdit
        Left = 104
        Top = 21
        Width = 177
        Height = 21
        TabOrder = 0
      end
      object edtName: TEdit
        Left = 104
        Top = 86
        Width = 337
        Height = 21
        ReadOnly = True
        TabOrder = 1
      end
      object edtUsername: TEdit
        Left = 104
        Top = 111
        Width = 177
        Height = 21
        TabOrder = 2
      end
      object edtPasswd: TEdit
        Left = 104
        Top = 138
        Width = 177
        Height = 21
        TabOrder = 3
      end
      object edtPort: TEdit
        Left = 104
        Top = 48
        Width = 177
        Height = 21
        TabOrder = 4
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 120
  end
end
