object frmHold: TfrmHold
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '.::  HOLD / RECALL TRANSAKSI  ::.'
  ClientHeight = 474
  ClientWidth = 701
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 701
    Height = 131
    Align = alTop
    Enabled = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 32
      Top = 16
      Width = 89
      Height = 13
      Caption = 'No Nota Penjualan'
    end
    object lbl2: TLabel
      Left = 32
      Top = 45
      Width = 63
      Height = 13
      Caption = 'ID Konsumen'
    end
    object lbl3: TLabel
      Left = 32
      Top = 75
      Width = 79
      Height = 13
      Caption = 'Nama Konsumen'
    end
    object lbl4: TLabel
      Left = 32
      Top = 104
      Width = 37
      Height = 13
      Caption = 'ID Kasir'
    end
    object lbl5: TLabel
      Left = 379
      Top = 16
      Width = 79
      Height = 13
      Caption = 'Waktu Transaksi'
    end
    object lbl6: TLabel
      Left = 379
      Top = 45
      Width = 67
      Height = 13
      Caption = 'Nilai Transaksi'
    end
    object lbl7: TLabel
      Left = 379
      Top = 75
      Width = 59
      Height = 13
      Caption = 'Item Barang'
    end
    object lbl8: TLabel
      Left = 379
      Top = 102
      Width = 41
      Height = 13
      Caption = 'Mesin ID'
    end
    object edtNo_Nota: TEdit
      Left = 136
      Top = 13
      Width = 180
      Height = 21
      ReadOnly = True
      TabOrder = 0
    end
    object edtID_Konsumen: TEdit
      Left = 136
      Top = 42
      Width = 180
      Height = 21
      ReadOnly = True
      TabOrder = 1
    end
    object edtNm_Konsumen: TEdit
      Left = 136
      Top = 72
      Width = 180
      Height = 21
      ReadOnly = True
      TabOrder = 2
    end
    object edtID_Kasir: TEdit
      Left = 136
      Top = 101
      Width = 180
      Height = 21
      ReadOnly = True
      TabOrder = 3
    end
    object edtWkt_Transaksi: TEdit
      Left = 469
      Top = 13
      Width = 180
      Height = 21
      ReadOnly = True
      TabOrder = 4
    end
    object edtNilai_Transaksi: TEdit
      Left = 469
      Top = 43
      Width = 180
      Height = 21
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 5
    end
    object edtItem_Brg: TEdit
      Left = 469
      Top = 72
      Width = 180
      Height = 21
      Alignment = taRightJustify
      ReadOnly = True
      TabOrder = 6
    end
    object edtMesin_ID: TEdit
      Left = 469
      Top = 99
      Width = 180
      Height = 21
      ReadOnly = True
      TabOrder = 7
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 395
    Width = 701
    Height = 79
    Align = alBottom
    TabOrder = 1
    object btnBack: TBitBtn
      Left = 25
      Top = 24
      Width = 169
      Height = 41
      Action = actBack
      Caption = 'F8 - Kembali ke Layar'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object btnBack1: TBitBtn
      Left = 256
      Top = 24
      Width = 169
      Height = 41
      Action = actHold
      Caption = 'F10 - Hold Transaksi'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object btnCall: TBitBtn
      Left = 496
      Top = 24
      Width = 169
      Height = 41
      Action = actCall
      Caption = 'F12 - ReCall Transaksi'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 131
    Width = 701
    Height = 264
    Align = alClient
    TabOrder = 2
    DesignSize = (
      701
      264)
    object grid1: TNextGrid
      Left = 25
      Top = 24
      Width = 649
      Height = 217
      Anchors = [akLeft, akTop, akRight, akBottom]
      Options = [goHeader, goSelectFullRow]
      TabOrder = 0
      TabStop = True
      object NxTextColumn1: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'No Nota'
        Header.Alignment = taCenter
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
      end
      object NxTextColumn2: TNxTextColumn
        DefaultWidth = 120
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Konsumen'
        Header.Alignment = taCenter
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
        Width = 120
      end
      object NxTextColumn3: TNxTextColumn
        DefaultWidth = 140
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Waktu Transaksi'
        Header.Alignment = taCenter
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
        Width = 140
      end
      object NxNumberColumn1: TNxNumberColumn
        DefaultValue = '0'
        DefaultWidth = 140
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Nilai Transaksi'
        Header.Alignment = taCenter
        ParentFont = False
        Position = 3
        SortType = stNumeric
        Width = 140
        FormatMask = '#,#.##'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxNumberColumn2: TNxNumberColumn
        DefaultValue = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'Item Barang'
        Header.Alignment = taCenter
        ParentFont = False
        Position = 4
        SortType = stNumeric
        FormatMask = '#,#.##'
        Increment = 1.000000000000000000
        Precision = 0
      end
      object NxTextColumn6: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Header.Caption = 'ID Kasir'
        Header.Alignment = taCenter
        ParentFont = False
        Position = 5
        SortType = stAlphabetic
      end
    end
  end
  object actlst1: TActionList
    Left = 216
    Top = 240
    object actBack: TAction
      Caption = 'F8 - Kembali ke Layar'
      ShortCut = 119
      OnExecute = actBackExecute
    end
    object actHold: TAction
      Caption = 'F10 - Hold Transaksi'
      ShortCut = 121
      OnExecute = actHoldExecute
    end
    object actCall: TAction
      Caption = 'F12 - ReCall Transaksi'
      ShortCut = 123
      OnExecute = actCallExecute
    end
  end
end
