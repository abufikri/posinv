object frmCashOut: TfrmCashOut
  Left = 0
  Top = 0
  Caption = 'frmCashOut'
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
    object lbHeader: TLabel
      Left = 16
      Top = 8
      Width = 157
      Height = 19
      Caption = 'Transaksi Cash Out'
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
      Width = 459
      Height = 16
      Caption = 
        'Transaksi Cash OUT terdiri dari : SETORAN KASIR dan Transaksi Ke' +
        'luar Lainnya'
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
      object NxTabSheet1: TNxTabSheet
        Caption = 'List Data'
        PageIndex = 0
        ParentTabFont = False
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'Tahoma'
        TabFont.Style = []
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
          Top = 57
          Width = 681
          Height = 247
          Anchors = [akLeft, akTop, akRight, akBottom]
          TabOrder = 0
          TabStop = True
          object NxTextColumn1: TNxTextColumn
            DefaultWidth = 100
            Header.Caption = 'No Nota'
            Header.Alignment = taCenter
            Position = 0
            SortType = stAlphabetic
            Width = 100
          end
          object NxTextColumn2: TNxTextColumn
            Alignment = taCenter
            DefaultWidth = 60
            Header.Caption = 'Mesin ID'
            Header.Alignment = taCenter
            Position = 1
            SortType = stAlphabetic
            Width = 60
          end
          object NxTextColumn3: TNxTextColumn
            Header.Caption = 'K Transaksi'
            Header.Alignment = taCenter
            Position = 2
            SortType = stAlphabetic
          end
          object NxNumberColumn1: TNxNumberColumn
            DefaultValue = '0'
            DefaultWidth = 120
            Header.Caption = 'Debet'
            Header.Alignment = taCenter
            Position = 3
            SortType = stNumeric
            Width = 120
            FormatMask = '#,#.#'
            Increment = 1.000000000000000000
            Precision = 0
          end
          object NxTextColumn4: TNxTextColumn
            DefaultWidth = 150
            Header.Caption = 'Keterangan'
            Header.Alignment = taCenter
            Position = 4
            SortType = stAlphabetic
            Width = 150
          end
          object NxTextColumn5: TNxTextColumn
            Header.Caption = 'Kasir ID'
            Header.Alignment = taCenter
            Position = 5
            SortType = stAlphabetic
          end
          object NxTextColumn6: TNxTextColumn
            DefaultWidth = 40
            Header.Caption = 'Shift'
            Header.Alignment = taCenter
            Position = 6
            SortType = stAlphabetic
            Width = 40
          end
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
            Action = actTambah
            Caption = 'F3 - Tambah Data'
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
        object Label2: TLabel
          Left = 24
          Top = 48
          Width = 37
          Height = 13
          Caption = 'Kasir ID'
        end
        object Label3: TLabel
          Left = 24
          Top = 74
          Width = 41
          Height = 13
          Caption = 'Mesin ID'
        end
        object Label4: TLabel
          Left = 238
          Top = 74
          Width = 22
          Height = 13
          Caption = 'Shift'
        end
        object Label5: TLabel
          Left = 24
          Top = 101
          Width = 64
          Height = 13
          Caption = 'Nominal Cash'
        end
        object Label6: TLabel
          Left = 24
          Top = 231
          Width = 56
          Height = 13
          Caption = 'Keterangan'
        end
        object Panel4: TPanel
          Left = 0
          Top = 327
          Width = 733
          Height = 50
          Align = alBottom
          BevelOuter = bvLowered
          TabOrder = 0
          DesignSize = (
            733
            50)
          object BitBtn3: TBitBtn
            Left = 24
            Top = 9
            Width = 161
            Height = 33
            Action = actSave
            Caption = 'F10 - Simpan'
            DoubleBuffered = True
            ParentDoubleBuffered = False
            TabOrder = 0
          end
          object BitBtn4: TBitBtn
            Left = 584
            Top = 9
            Width = 121
            Height = 33
            Action = actCancel
            Anchors = [akTop, akRight]
            Caption = 'F12 - Batal'
            DoubleBuffered = True
            NumGlyphs = 2
            ParentDoubleBuffered = False
            TabOrder = 1
          end
        end
        object edtKasirID: TEdit
          Left = 112
          Top = 44
          Width = 249
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 2
        end
        object edtMesinID: TEdit
          Left = 112
          Top = 71
          Width = 73
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 3
        end
        object edtShift: TEdit
          Left = 276
          Top = 71
          Width = 85
          Height = 21
          Enabled = False
          ReadOnly = True
          TabOrder = 4
        end
        object edtNominal: TNxNumberEdit
          Left = 112
          Top = 98
          Width = 249
          Height = 21
          TabOrder = 1
          Text = '0.00'
        end
        object rgJenisTransaksi: TRadioGroup
          Left = 24
          Top = 135
          Width = 337
          Height = 66
          Caption = ' Jenis Transaksi CASH IN'
          Columns = 2
          ItemIndex = 0
          Items.Strings = (
            'SETORAN KASIR'
            'KAS KELUAR LAIN-LAIN')
          TabOrder = 5
        end
        object edtKeterangan: TEdit
          Left = 112
          Top = 228
          Width = 249
          Height = 21
          TabOrder = 6
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 592
    Top = 200
    object actTambah: TAction
      Caption = 'F3 - Tambah Data'
      ShortCut = 114
      OnExecute = actTambahExecute
    end
    object actQuit: TAction
      Caption = 'Ctrl + Q - Quit'
      ShortCut = 16465
    end
    object actSave: TAction
      Caption = 'F10 - Simpan'
      ShortCut = 121
      OnExecute = actSaveExecute
    end
    object actCancel: TAction
      Caption = 'F12 - Batal'
      ShortCut = 123
      OnExecute = actCancelExecute
    end
  end
end
