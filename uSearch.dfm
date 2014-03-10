object frmSearch: TfrmSearch
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Search'
  ClientHeight = 489
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 472
    Height = 73
    Align = alTop
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lbl1: TLabel
      Left = 24
      Top = 8
      Width = 55
      Height = 19
      Caption = 'Search'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl2: TLabel
      Left = 40
      Top = 33
      Width = 60
      Height = 13
      Caption = 'Form Search'
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 73
    Width = 472
    Height = 367
    Align = alClient
    TabOrder = 1
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 82
      Height = 13
      Caption = 'Cari Berdasarkan'
    end
    object cbbFilter: TComboBox
      Left = 104
      Top = 21
      Width = 185
      Height = 21
      Style = csDropDownList
      ItemIndex = 1
      TabOrder = 0
      Text = 'Nama'
      Items.Strings = (
        'Kode'
        'Nama')
    end
    object edFilter: TEdit
      Left = 16
      Top = 48
      Width = 273
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 295
      Top = 19
      Width = 170
      Height = 50
      Caption = 'Cari'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Grid1: TNextGrid
      Left = 16
      Top = 96
      Width = 437
      Height = 257
      Options = [goHeader, goSelectFullRow]
      TabOrder = 3
      TabStop = True
      OnKeyPress = Grid1KeyPress
      object NxTextColumn1: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 0
        SortType = stAlphabetic
      end
      object NxTextColumn2: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 1
        SortType = stAlphabetic
      end
      object NxTextColumn3: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 2
        SortType = stAlphabetic
      end
      object nxCol1: TNxTextColumn
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = 3
        SortType = stAlphabetic
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 440
    Width = 472
    Height = 49
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 24
      Top = 6
      Width = 265
      Height = 35
      Caption = 'OK'
      DoubleBuffered = True
      ModalResult = 1
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 295
      Top = 6
      Width = 147
      Height = 35
      Caption = 'Cancel'
      DoubleBuffered = True
      ModalResult = 2
      ParentDoubleBuffered = False
      TabOrder = 1
    end
  end
end
