object frmKasir: TfrmKasir
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = '.: Kasir Eceran :.'
  ClientHeight = 740
  ClientWidth = 1132
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnPaint = FormPaint
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object panelHelp: TNxExpandPanel
    Left = 0
    Top = 595
    Width = 1132
    Height = 145
    Align = alBottom
    CollapsedText = 'F1 - HELP'
    Color = 15790320
    ExpandedText = 'DAFTAR SHORTCUT'
    ParentColor = False
    TabOrder = 0
    FullHeight = 145
    object BitBtn1: TBitBtn
      Left = 8
      Top = 64
      Width = 140
      Height = 33
      Action = actHelp
      Caption = 'F1 - Help'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
    object BitBtn2: TBitBtn
      Left = 161
      Top = 64
      Width = 140
      Height = 33
      Action = actCariPLU
      Caption = 'F3 - Cari PLU'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 1
    end
    object BitBtn3: TBitBtn
      Left = 313
      Top = 64
      Width = 140
      Height = 33
      Action = actKonsumen
      Caption = 'F5 - Input Konsumen'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 2
    end
    object BitBtn4: TBitBtn
      Left = 465
      Top = 64
      Width = 140
      Height = 33
      Action = actBatal
      Caption = 'F7 - Input Batal / VOID'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 3
    end
    object BitBtn5: TBitBtn
      Left = 618
      Top = 64
      Width = 140
      Height = 33
      Action = actPembayaran
      Caption = 'F10 - Pembayaran'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 4
    end
    object BitBtn6: TBitBtn
      Left = 8
      Top = 103
      Width = 140
      Height = 33
      Action = actHold
      Caption = 'Ctrl + H - HOLD'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 5
    end
    object BitBtn7: TBitBtn
      Left = 313
      Top = 103
      Width = 140
      Height = 33
      Action = actQuit
      Caption = 'Ctrl + Alt + Q  Quit'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 6
    end
    object BitBtn8: TBitBtn
      Left = 764
      Top = 103
      Width = 140
      Height = 33
      Action = actBatalAll
      Caption = 'Ctrl + F12 - Batalkan Trx'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 7
    end
    object BitBtn9: TBitBtn
      Left = 764
      Top = 64
      Width = 140
      Height = 33
      Action = actTrxBaru
      Caption = 'F12 - Transaksi Baru'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 8
    end
    object BitBtn10: TBitBtn
      Left = 465
      Top = 103
      Width = 140
      Height = 33
      Action = actDiskItem
      Caption = 'Ctrl + D - Diskon Item'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 9
    end
    object btnDiskItem: TBitBtn
      Left = 618
      Top = 103
      Width = 140
      Height = 33
      Action = actCalculator
      Caption = 'Ctrl + F1 - Calculator'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 10
    end
    object btnRecall: TBitBtn
      Left = 161
      Top = 103
      Width = 140
      Height = 33
      Action = actRecall
      Caption = 'Ctrl + R - RECALL'
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 11
    end
  end
  object NxPanel1: TNxPanel
    Left = 0
    Top = 0
    Width = 1132
    Height = 113
    Align = alTop
    BackgroundStyle = pbHorzGradient
    UseDockManager = False
    TabOrder = 1
    DesignSize = (
      1132
      113)
    object Image1: TImage
      Left = 8
      Top = 9
      Width = 353
      Height = 89
      Picture.Data = {
        0A544A504547496D616765F1100000FFD8FFE000104A46494600010100000100
        010000FFDB0084000906071413121514121416161517172018191815191E1F1A
        1B1C1F1A231C1C1C20191B1E2A201E24251C1C1F243126252C2C2E2E2E1E2035
        38332C37282D2E2C010A0A0A0505050E05050E2B1913192B2B2B2B2B2B2B2B2B
        2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B
        2B2B2B2B2B2B2B2B2BFFC0001108005000F003012200021101031101FFC4001C
        0000020301010101000000000000000000000604050703020108FFC4004F1000
        01030204030207080E0709000000000102030400110506122107314113511422
        32617391B35271727481A1B1B215172324253334353642546393D362A2A3B4C1
        C3D216264355828594E1F0FFC400140101000000000000000000000000000000
        00FFC40014110100000000000000000000000000000000FFDA000C0301000211
        0311003F00ADCD5067231392C2274B427F1CD00FAEDA1677005FF54EDEF5AA76
        47C564C29E912E4BEEB4E30E901E714A014D80ADB51B0DBE9A6EE2AC60CBD0F1
        0FD56DCEC1E3FBB7080093FD157D3549C5CCB0E3915B54742D4E25D02CDA493A
        560A4F93BDB95E81330F6B129080F19D2D3DADD6129796120137000BEC29B386
        589BB1A34EC4264990FB2D7DCDA4B8EA941453E510146D72AD2907DFABBCDACA
        6061CA291E325B0D363992B234A6D6E7BD70CE78088B803313F78C2167FA45C0
        546DD77A056C51DC527FDD1F90E32856E96182529483C82883751B5B9D2B40C2
        D0B7D4D3525CED517BD94A06E39D8DF7B57E8456123572EBFE3594E4E8E14EE1
        89F3CDF6A2824E079A27E18A4994EAE4C32A095973771AB9B6AD5CD43BEF575C
        6A90F97B0E6E348799ED7B7B965C5275583645F4917B5CDAFDE6A7F10B0B030D
        966DC9A27D55133023B4958083BEA65E27F82D5067389C6C41A69C73C3E67889
        2AFC7B9D3FEAA9B893935F94B4B73252021960D90F2C0BA9A1736D5D48BD6899
        EF0A09C3A59B726547E6AA6C8B0C392E5DFA3117D91A058C1C4E626C2ED26CA5
        A1C909414ADE59491CEC41363CAAE7893E16EE2AEB6C4A90D210C36AD2D3AB4A
        6E6E2F606D5799C6086E46184759C91FD43535710398E4CBF488CFD634197CD6
        26B29D6EE252D09BDAEA7DCB5FD752B0E189001C631290A046C54E17127E4512
        29CF89D15B66332E380684CA68AEE2FE285DD5B75DAFB576E1B61617114E0414
        A1C7DD5B60A6DF732B25040E82D4177C35CDAECB0F312D213263E9D453E4AD2A
        BE9581D391047BDDF4EF59BE4F6D3F66E6F66414A233685D8F259513636EB615
        A450633C5654A5E2686A3C97D94F830590D3AA48275917B24DA92B196F1061A2
        E19F308040DDF73A9B7BAAD5F168C1CC76C7F61BFF0069559C55C38230D7556E
        4A47D7141AB13B6F5886399A67626A5188EAE34304A505BD9C76C7756AE691B6
        C056BF98565312411CC32B23E441A4AC81850386C436E6CA4FAE831EC430B436
        F25A7A4B9DAAED6BA944DCF2B9BEDBD34E16F62903EE8C3EE3C84EEA61F25495
        24730924DD26D7E55DB384709918827CF0BE778D6A8DE12350DBAD07CFF6CD9F
        B1BF644025BECB5E9FD6BF2D17EFD5B564D8A3B8A4FF001E43EB650ADD2C304A
        52907905106EA36B73A90F234E585A07212CA7E4F09B56A4BC213A8D875A0FCF
        7070B6D6F969A92E76C9BF92A50371CEC6FD29DF07CD18861842A4B8A9512E02
        FB4DDD6C136D415CD56BF23F3557E1A8710982FA634890843F33588ED959054E
        240BF41C8F3EEAB8CC58C2DF8AFB28C2F120A71B2949546D813C89B1268342CF
        79AFC062875B4F6AEBAA0DB28E8A52B96E3A01BD6418C41C424EA5CC98E11624
        A10A286923AF8A0D8DBBE9CF3230A2E65F6D608363A92A162149613CC1DC106F
        5719AF0C098524DB930B3FD53418BE0186878A951253C9522D7285AD2A17E5D7
        CC6B4AC939B664792D44C417DB36F9D2CBE45941637D0AE86E391E7EFD47C991
        02E6016DBEC6C63F4D59E7EC3C36986E5BC8C4239F7BC7B7F8D03CE69C1D32E2
        3D1D5FF1105209E8AB78A7E436AA8E1B62664E1CC2D6087120B4E5F9EB6CE83F
        4536524708BF2273E34FFB53411730B5E178C448B6FB9454198E8E8577D2D7A8
        DCEDDF52B8BDF9123E34C7B515E207E9149F8837ED2BB717E32D785BC5B17536
        A43BE7B216146DF20340E1A37F96B15C823EF9C33DF9DED456C785622DC8690F
        32A0A6D69D4923FF00B9D65391307948C4186DC8CE2110CC9D4EA859B703CE6A
        4683D761F2503B712D1F82A6FA057D14BD347DF997FD0BDEC5AAB7E2EE2296F0
        D75ABDDD903B16903CA5A9440B01D79D566714889230579DF15960AD97167920
        B8DA12927B85D077A0BFE22B7F82E6FA05FD14B5C2D4DE5CDF4113D91A75CE10
        152204969BDD4E32A4A6DD494EC3BB7A50E11C37F5CA7DE61C602D0C3694BA34
        A8969052A36E76BDAC7AD04BE2426CF617F1F4FD45576C305F1D9BF1467EB2AB
        867E7D2ECFC2E320DDD123B7501B94A10822E7BAE4D48C27F3F4DF8A33F59541
        2B8818BBD123A171820BAB7DB68072FA7C7569DEDCAA061C838D61CA449D4C2F
        B5536E783ABF59B5D8D8A81D8DB91AEDC55FC9E37C763FB51470A7F2691F1D91
        ED4D055F0BE09C3E4CAC315A15A1297D0F253A54B4AC91658DF716DB7AD2691F
        0FFD2093F126BEB9A78A04723FDE03F10FF32B9719916C29EF848FAE2BB8FD20
        3F11FF0036AC388D813B360391D8D21C51491ACD86CA079FC9416799BF2393E8
        1CFA86AA386A8BE150BD02697711C5F154BAC46988881B9856C5DA2B2A176C9E
        A6D56FC22C492E61CD357B3B18762EA0F94852491623A72A048CFC3EFC9FEFC1
        F6C6B670DEF59267AC224AF11750DC67569926314BA9176D0197352F5ABA6C7E
        5AD5715C41B8ED2DE754128424A944F9A831897FA36E7C78FF007AADB4B7BD63
        8AC2DE395CA8A7C72BF0AB75D3DB769F56B5EC2F106E434879A50521C485248E
        E341F9C32360B11F9EEB53E3BCB121E5223B89D496F524A8B975022FB69E57B7
        9AB41CDFC2BC3588325E699505B6D294925D59B1036D89B540CBD84C94CE8ED3
        91DC69A85265485BEE001A2DB9E4695DEC4DAE4F76D5A167C792BC2A52D0414A
        A3A9492391053707D540AB387DDB2E7C057F764D3867347DE12FE2EE7D534999
        89D0C3381CC5ECD30509715D12975909D47CC0814FD98A317E1BE86ECA2E32A0
        9B1D89524DB7F3D020F0E5379DFF006C8DFE3573C544FDEF1C753363803BCF68
        2AAF8530E417DD79F8EEB0111598C03A9D254A6F56A205F71CB7EB7A9FC48921
        C9187436ECA79531B7CA7DCB4D1D4A51B72EE17E7BD03F56750F87D398D698F8
        BADA6D4E29C081190402B5151DCAEE79D68B45027654C9CF4696E4B9135529C7
        1A0D78CD0458056A1E4A883EAEB4E045F635F68A0427F874A656A5E1731C83AC
        EA5B4121C649F33648D2790B83C872AF4701C695B1C4D8483D531F71EF5D56A7
        BA2813F2EE426D87BC2A4BCE4C976D9D7B923D1B63647CF4CD89E1EDC8694D3C
        80B6D62CA4AB91A9545067ECE4197176C3B1275A6872664203A81DC12A241481
        DD5ED7977195F8AAC55B6C7BA6A302AFEB2AD4C99B731370232E4BC95A908290
        43601578CA091E510399EFA46FB78C3FD966FF000D1FCCA06ECA793588256B49
        5BAFB9F8C7DE56A715E6BF41E61DC2AB71DC9525D9AE4B8B882A2971B4B6A4A5
        94AEE137B6EA579FBAAB1EE32C44B2D3DD84A21D53894A4251A816F4EAB8ED3F
        A63D46A2AB8E50C6E62CC03E023F994160FF000FE6BAA6BC27165BCDB6EA1DD0
        63A00250A0A1BA5771CABE47E1FCD64B9E0F8B2D96D6EADDD023208056A2A3BA
        9773CEADB3267F621C58F25C69E52245B425B092A174EADC1501CBB89A5BFB78
        C3FD966FF0D1FCCA062CA9939E8D29D95266AA538E341ABA9A08B04AAE3C9510
        7D54E15962B8E70C0B98B300F808FE655FE68E24478488CB71A7D7E12DF6880D
        A52481649B2AEB1BF8E395FAD07ACCB935F7E58971A72A2AC35D91D2CA5771A8
        AB9A943E8A89FEC7629FF3C73FF15BFF0055557DBC61FECB37F868FE657B6B8D
        D089F1989681DEA6D36F996682CA2E449664C77E5626A9098EE171285474A6E4
        A4A7CA4AF6E7DC6A7662C84DBEF19519E721CBB6EF33C97E91B3B2C72EEE42AE
        32DE658D39B2E45743806CA1C9492790524EE295330716E2C492EC65B1256B68
        D945B4A0A7717DAEB07AF5141D86038D2458626CA80E4A547B13EFD956AF8CF0
        E54F389731498E4DD06E868A436C83E76C13A8F4B9E9555F6F187FB2CDFE1A3F
        995699638AB1A6C94466D89285AEE41752809D85CF2593F3503E6816D3616B5A
        D6DADDD6A447787AE47714BC2A62E2051D4A6149ED1827CC92468F92FD29F68A
        0CFA46499F2C76788623AA3FEBB51DAECFB41DCA5DC903CC06F51070D2688FE0
        A31873C1F47661BF064791EE6FAEFCAB4CA282B98C1D1E0A88AE80EA03496941
        436504A427C9DED7B527B59024C536C37117196B9861F476A81E64A890523CDB
        D6834502139973197069562ADB63DD35186AF9D56AB9CA793188256E254E3CFB
        9F8C7DE56A715E6BF41E61DC29928A028A28A028A28A028A28A028A28A040E3A
        7E677FE137ED13552E6514EA3E2F53F4D5B71D3F33BFF09BF6A9A707228249F3
        D060786E1A16F456ADB095387A8B74C19A32C2510E42ADE4B4A3F35386199022
        B32FC250E385CD6E2F41701482E1BAEC9B6DFF00A15373DC6030D987F70BFA28
        1433847ED21E0683FACB40FEC2BE4CCB09436B5E9074A4ABD42F53B154DDACBE
        3F7ADFB034F3330D0B6D68BDB524A6FDD716BD06290F29E233A2071A8D1836FB
        774ABB521401EB6EFA65CEB8493270661C035263B89501B8BA50D83F38A8D8DE
        0B3F0CC3D4B63185290C200434186C6D7B5B56A51EBE7A67CCC3562F855FAB4F
        FD54502BE3F9783319E75205DB6D4A171D40AABCA985ADE5BAD3E1B2B436D3A1
        4D8B029752540107A8B56B39930A4BB11F6D6B0D256D2925C50B84023CA22E2F
        6F7C52DE4CC0511189121124E20B28482A6C2478AD24843694A54ADEC7A9DF6A
        0A2C1E078063108B62C25A5D69C036074252B048F96B91C1C3F8A62648BE975B
        1EB6EA5652C5CE298B216EB5E0DE02859430E13DB294E581514948B0000DBDEA
        BCCA0CEAC4B18F33CD7B2A04FCC783AD95476D8690B71F74B690E1B0BE9BF315
        6D94B254F6F108F21F6586DB682C1ECDCB93A8586C479BE7A6ACE3959528305B
        93E0AE30E9712E680BDF4E9B594A03E9AA8C0D7363E2AC467F1054B6DC61C708
        2DA100149007924DF9F7D0693451450145145014514501451450145145014514
        50145145014514502071D3F33BFF0009BF6A9A7EB521F1C504E0EF80093A9BD8
        7A44D7BFB6CE1BEEDEFE03BFE9A046CA30509C65B7427C75CC9E147BC2149D3E
        AD47D75A8F1047E0C99E817F4564783E3AD332A34B735864CB9CB0436A26CB53
        65274817DC1A6DCDFC4B80FC292CB4A74ADC6949482CB82E48DB729B0A0F7897
        E2F2FF00A547B034FF008E0FBD9FF44BFA86B37CCD3531E2E06F3BA821B5A14B
        D292481D81FD51BD5DBBC55C31492952DD2082082C3BB83B11E4D02AE49CA782
        3B023AE4963B65360AF53E12AD5D6E356D4D38EBA8562F84A9B525482D48D2A4
        90411647223634A788E29974B2E06E280B285047DECE795A4E9DF4F7D72878A3
        711380BCFEB0DA233C14528528827401B245E834CE208FC1933D02FE8A4FE114
        44352A5A1B484A551A22C81CB516D773F2DEBEE70E25C07E14965B53A56E34A4
        A4165C17246DB94D8555E57CD11F0F96F1945690E448A13A5B5AAE52D9BF920D
        BCA140CB9CC69C6B06527652FC210A239A921B49009EA0127D75DB230FC258CF
        A76BD952FE219A63E218C6126297141A53FACA9B5A6DA9B4E9F280F726BDE1B9
        B6340C4F15128B89ED5E6CA34B6B50203763BA41EFA0B2E2DC465D730D6E4E9E
        C552885EA3A45BB33CD5D2A7E5AC03078CFA5C88A603C4148D2F05137E600D46
        F5558D67DC165A5299295BA949BA42E3BA4036B5FC9EEA5C725E14E4DC3861AC
        68704A056432B4789A4F550039DA836EA28A280A28A280A28A280A28A283FFD9}
    end
    object lbl2: TLabel
      Left = 701
      Top = 54
      Width = 97
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Nota Penjualan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl3: TLabel
      Left = 701
      Top = 85
      Width = 133
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'ID Mesin/Kasir/Shift'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl4: TLabel
      Left = 701
      Top = 22
      Width = 91
      Height = 16
      Anchors = [akTop, akRight]
      Caption = 'Tanggal / Jam'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNotaPenjualan: TNxEdit
      Left = 840
      Top = 48
      Width = 254
      Height = 27
      Anchors = [akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtIDMesin: TNxEdit
      Left = 840
      Top = 79
      Width = 45
      Height = 27
      Anchors = [akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtIDKasir: TNxEdit
      Left = 891
      Top = 79
      Width = 152
      Height = 27
      Anchors = [akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object edtShiftKasir: TNxEdit
      Left = 1045
      Top = 79
      Width = 49
      Height = 27
      Anchors = [akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtTglTrx: TNxEdit
      Left = 840
      Top = 16
      Width = 159
      Height = 27
      Anchors = [akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object edtJamTrx: TNxEdit
      Left = 1005
      Top = 15
      Width = 89
      Height = 27
      Anchors = [akTop, akRight]
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 536
    Width = 1132
    Height = 59
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 2
    DesignSize = (
      1132
      59)
    object Label5: TLabel
      Left = 11
      Top = 5
      Width = 160
      Height = 18
      Caption = 'F2 - Scan / Ketik PLU'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl1: TLabel
      Left = 618
      Top = 8
      Width = 152
      Height = 45
      AutoSize = False
      Caption = 'Total Rp.'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object lblLEDTotal: TLabel
      Left = 770
      Top = 8
      Width = 345
      Height = 45
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight, akBottom]
      AutoSize = False
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clYellow
      Font.Height = -35
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object Label8: TLabel
      Left = 399
      Top = 26
      Width = 155
      Height = 26
      Caption = 'Format: Qty*PLU-disc'#13#10'Search By Name : <spasi>Nama'
    end
    object edtPLU: TEdit
      Left = 8
      Top = 26
      Width = 385
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnEnter = edtPLUEnter
      OnExit = edtPLUExit
      OnKeyPress = edtPLUKeyPress
    end
  end
  object NxPanel2: TNxPanel
    Left = 0
    Top = 113
    Width = 1132
    Height = 56
    Align = alTop
    UseDockManager = False
    TabOrder = 3
    DesignSize = (
      1132
      56)
    object lblNamaBrg: TLabel
      Left = 8
      Top = 8
      Width = 846
      Height = 42
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Nama Barang - Qty @ Hrg Satuan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 489
    end
    object lblHargaTotal: TLabel
      Left = 503
      Top = 8
      Width = 619
      Height = 42
      Alignment = taRightJustify
      Anchors = [akLeft, akTop, akRight]
      AutoSize = False
      Caption = 'Rp. 0.00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 262
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 169
    Width = 1132
    Height = 367
    Align = alClient
    BevelOuter = bvNone
    ParentBackground = False
    TabOrder = 4
    object Panel3: TPanel
      Left = 0
      Top = 250
      Width = 1132
      Height = 117
      Align = alBottom
      TabOrder = 0
      DesignSize = (
        1132
        117)
      object NxPanel3: TNxPanel
        Left = 770
        Top = 1
        Width = 361
        Height = 115
        Align = alRight
        UseDockManager = False
        TabOrder = 0
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 48
          Height = 13
          Caption = 'Sub Total '
        end
        object Label2: TLabel
          Left = 16
          Top = 40
          Width = 41
          Height = 13
          Caption = 'Discount'
        end
        object Label3: TLabel
          Left = 16
          Top = 63
          Width = 19
          Height = 13
          Caption = 'PPN'
        end
        object Label4: TLabel
          Left = 16
          Top = 87
          Width = 29
          Height = 13
          Caption = 'Total'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 149
          Top = 40
          Width = 22
          Height = 13
          Caption = '% ='
        end
        object edtSubTotal: TNxNumberEdit
          Left = 184
          Top = 13
          Width = 161
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 0
          Text = '0.00'
        end
        object edtDiscSubTotal: TNxNumberEdit
          Left = 184
          Top = 37
          Width = 161
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 1
          Text = '0.00'
        end
        object edtPPN: TNxNumberEdit
          Left = 184
          Top = 60
          Width = 161
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 2
          Text = '0.00'
        end
        object edtTotal: TNxNumberEdit
          Left = 184
          Top = 84
          Width = 161
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = '0.00'
        end
        object edtDiskonAkhir: TNxNumberEdit
          Left = 69
          Top = 37
          Width = 74
          Height = 21
          Alignment = taRightJustify
          Enabled = False
          TabOrder = 4
          Text = '0.00'
        end
      end
      object panelKonsumen: TNxPanel
        Left = 11
        Top = 1
        Width = 753
        Height = 115
        Anchors = [akLeft, akTop, akRight, akBottom]
        UseDockManager = False
        Enabled = False
        TabOrder = 1
        object Label6: TLabel
          Left = 16
          Top = 12
          Width = 63
          Height = 13
          Caption = 'ID Konsumen'
        end
        object Label7: TLabel
          Left = 16
          Top = 36
          Width = 79
          Height = 13
          Caption = 'Nama Konsumen'
        end
        object lbLayar: TLabel
          Left = 16
          Top = 88
          Width = 71
          Height = 13
          Caption = 'Ukuran Layar :'
        end
        object edtIDKonsumen: TNxEdit
          Left = 120
          Top = 9
          Width = 230
          Height = 21
          TabOrder = 0
          OnExit = edtIDKonsumenExit
          OnKeyPress = edtIDKonsumenKeyPress
        end
        object edtNamaKonsumen: TNxEdit
          Left = 120
          Top = 33
          Width = 230
          Height = 21
          Enabled = False
          TabOrder = 1
        end
      end
    end
    object Panel4: TPanel
      Left = 0
      Top = 0
      Width = 1132
      Height = 250
      Align = alClient
      TabOrder = 1
      DesignSize = (
        1132
        250)
      object gridTransaksi: TNextGrid
        Left = 8
        Top = 6
        Width = 1118
        Height = 240
        Anchors = [akLeft, akTop, akRight, akBottom]
        Options = [goHeader, goSelectFullRow]
        TabOrder = 0
        TabStop = True
        object NxIncrementColumn1: TNxIncrementColumn
          DefaultWidth = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'No'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 0
          SortType = stAlphabetic
          Width = 60
        end
        object NxTextColumn1: TNxTextColumn
          DefaultWidth = 160
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'No PLU'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 1
          SortType = stAlphabetic
          Width = 160
        end
        object NxTextColumn2: TNxTextColumn
          DefaultWidth = 250
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Nama Barang'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 2
          SortType = stAlphabetic
          Width = 250
        end
        object NxNumberColumn1: TNxNumberColumn
          DefaultValue = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Qty'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 3
          SortType = stNumeric
          FormatMask = '#,#.#'
          Increment = 1.000000000000000000
          Precision = 2
        end
        object NxNumberColumn2: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 150
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Harga Satuan'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 4
          SortType = stNumeric
          Width = 150
          FormatMask = '#,#.#'
          Increment = 1.000000000000000000
          Precision = 2
        end
        object NxNumberColumn3: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Diskon'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 5
          SortType = stNumeric
          Width = 120
          FormatMask = '#,#.#'
          Increment = 1.000000000000000000
          Precision = 2
        end
        object NxNumberColumn4: TNxNumberColumn
          DefaultValue = '0'
          DefaultWidth = 200
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Harga Total'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 6
          SortType = stNumeric
          Width = 200
          FormatMask = '#,#.#'
          Increment = 1.000000000000000000
          Precision = 2
        end
        object NxTextColumn3: TNxTextColumn
          DefaultWidth = 120
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Header.Caption = 'Keterangan'
          Header.Alignment = taCenter
          ParentFont = False
          Position = 7
          SortType = stAlphabetic
          Width = 120
        end
      end
    end
  end
  object ActionList1: TActionList
    Left = 520
    Top = 576
    object actCariPLU: TAction
      Caption = 'F3 - Cari PLU'
      ShortCut = 114
      OnExecute = actCariPLUExecute
    end
    object actHelp: TAction
      Caption = 'F1 - Help'
      ShortCut = 112
      OnExecute = actHelpExecute
    end
    object actQuit: TAction
      Caption = 'Ctrl + Alt + Q  Quit'
      ShortCut = 49233
      OnExecute = actQuitExecute
    end
    object actKonsumen: TAction
      Caption = 'F5 - Input Konsumen'
      ShortCut = 116
      OnExecute = actKonsumenExecute
    end
    object actBatal: TAction
      Caption = 'F7 - Input Batal / VOID'
      ShortCut = 118
    end
    object actPembayaran: TAction
      Caption = 'F10 - Pembayaran'
      ShortCut = 121
      OnExecute = actPembayaranExecute
    end
    object actHold: TAction
      Caption = 'Ctrl + H - HOLD'
      ShortCut = 16456
      OnExecute = actHoldExecute
    end
    object actTrxBaru: TAction
      Caption = 'F12 - Transaksi Baru'
      ShortCut = 123
    end
    object actBatalAll: TAction
      Caption = 'Ctrl + F12 - Batalkan Trx'
      ShortCut = 16507
      OnExecute = actBatalAllExecute
    end
    object actDiskItem: TAction
      Caption = 'Ctrl + D - Diskon Item'
      ShortCut = 16452
    end
    object actPLU: TAction
      Caption = 'Scan / Ketik PLU'
      ShortCut = 113
      OnExecute = actPLUExecute
    end
    object actCalculator: TAction
      Caption = 'Ctrl + F1 - Calculator'
      ShortCut = 16496
      OnExecute = actCalculatorExecute
    end
    object actRecall: TAction
      Caption = 'Ctrl + R - RECALL'
      ShortCut = 16466
      OnExecute = actRecallExecute
    end
  end
  object tmr1: TTimer
    OnTimer = tmr1Timer
    Left = 880
    Top = 192
  end
end
