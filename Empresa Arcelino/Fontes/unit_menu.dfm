object frm_menu: Tfrm_menu
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Menu Principal'
  ClientHeight = 551
  ClientWidth = 954
  Color = clGradientActiveCaption
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 17
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 954
    Height = 551
    Align = alClient
    BevelOuter = bvNone
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 296
    ExplicitTop = 232
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Panel2: TPanel
      Left = 665
      Top = 0
      Width = 289
      Height = 551
      Align = alRight
      BevelOuter = bvNone
      Color = clBtnShadow
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 664
      ExplicitTop = 1
      ExplicitHeight = 549
    end
  end
  object MainMenu1: TMainMenu
    BiDiMode = bdLeftToRight
    Images = ImageList1
    ParentBiDiMode = False
    Left = 576
    Top = 24
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      ImageIndex = 4
      object Usurios1: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = Usurios1Click
      end
      object Cargos3: TMenuItem
        Caption = 'Cargos'
        OnClick = Cargos3Click
      end
      object Funcionrio1: TMenuItem
        Caption = 'Funcion'#225'rio'
        OnClick = Funcionrio1Click
      end
      object Cadastros2: TMenuItem
        Caption = 'Cliente'
        OnClick = Cadastros2Click
      end
      object Fornecedores1: TMenuItem
        Caption = 'Ve'#237'culo'
      end
      object Funcionrios1: TMenuItem
        Caption = 'Fornecedor'
      end
      object Cargos1: TMenuItem
        Caption = 'Produto'
      end
    end
    object Manuteno1: TMenuItem
      Caption = 'Manuten'#231#227'o'
      ImageIndex = 3
    end
    object Estoque1: TMenuItem
      Caption = 'Estoque'
      ImageIndex = 0
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      ImageIndex = 5
    end
    object Relatrios1: TMenuItem
      Caption = 'Relat'#243'rios'
      ImageIndex = 1
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
      ImageIndex = 2
      OnClick = Sair1Click
    end
  end
  object ImageList1: TImageList
    ColorDepth = cd32Bit
    Left = 480
    Top = 24
    Bitmap = {
      494C010106000800040010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      00000000000000000000000000000000000002020222181818632727277E3333
      338F3B3B3B9A414141A2454545A6474747A9474747A9454545A7414141A23C3C
      3C9B3333338F2828287F19191964030303250000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000A61502CC77C8465FA7C86
      6AFC7D886AFD7D886AFD7D896AFD7E896CFE7E896CFE7D896AFD7D886AFD6994
      5AFD6A925AFC7A8467FA776538E0000000130000000000000000000000000000
      000000000000000000000000000000000000000000000623178341AE8EFB0523
      1683000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000957226F7C3DFEDFFC5E4
      F7FFC5E4F7FFC5E4F7FFC5E4F7FFC5E4F7FFC5E4F7FFC5E4F7FFA9D9E1FF34B0
      68FF35B069FFABDAE3FFA58D4BFF0101001F0000000000000000000000000000
      000000000000000000000000000000000000051E147943BFA4F965E8D5FF5BC8
      B2F9051E13790000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000997529F7FAF8F5FFE8E2
      DDFFE0D8D2FFE0D8D2FFE0D8D2FFE0D8D2FFE0D8D2FFDDD7CFFF55B778FF32B3
      65FF32B365FF63C68BFFB1944EFF0101001F0000000000000000000000000000
      00000000000300000006000000060419126E30B697F33AD5B6FF51E3CCFF5EE7
      D3FF47BDA6F30418106D00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009D792DF7FAF9F5FFE8E2
      DDFFE0D8D2FFE0D8D2FFE0D8D2FFE0D8D2FFE0D8D2FF8CCDA5FF2EBA6DFF2EBA
      6DFF2EBA6DFF2EBA6DFF6E9C4CFF0101001F0000000000000000000000000000
      000000030321040E1042040F1143166151C218775BD42CD3B4FD3BDBC0FD4FE4
      CEFE247A61D4114732B100000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A27E31F7FBF9F5FFF1EE
      EBFFEDE9E5FFEDE9E5FFEDE9E5FFEDE9E5FFC9E6D4FF2DC176FF2AC074FF2AC0
      74FF2AC074FF2AC074FF2DBE72FF0208043A0000000000000000000000000000
      000006171E5F207288BE21758AC006181E60020C0A492BDAB9FE32DBBCFE4AE8
      D0FF020D094A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A48235F7FAF7F2FFF6F3
      F1FFF3EFEDFFF3EFEDFFF3EFEDFFF1EFECFF43C989FF26C67AFF26C67AFF26C6
      7AFF26C67AFF26C67AFF26C67AFF198250CF0000000000000000000000000000
      00000B2D429233ACE6FB33B1E8FB0B2E42920108073C26DAB8FF2ADAB9FF41E2
      C8FE0108053B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A88638F7C4A564FFCCB1
      79FFCCB179FFCCB179FFCCB179FFCCB179FFCCB179FFCCB179FF25CB81FF23CB
      81FF23CB81FF23CB81FFA09645FF0101011F0000000000000000000000000000
      00000D3651A133A7EBFE33B1EEFE0D3851A10004042D20D6B2FE22D6B2FF36DD
      BFFD0004032D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000AD883CF7B99140FFB991
      40FFB99140FFB99140FFB99140FFB99140FFB99140FFB99140FF22CE85FF20D0
      86FF20D086FF20D086FFA39A4AFF0101001F0000000000000000000000000000
      00000F405FAF2DA0E6FD2DAFEDFE0F4261AF000202201AD3AEFE19D1ABFE2CDD
      BDFF000201200000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B18B40F7BD9544FFBD95
      44FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FFBD9544FF20D289FF1DD3
      8BFF1DD38BFF1DD38BFFA79E4EFF0101001F0000000000000000000000000000
      0000104A72BF259CE9FF26B1F0FF104F73BF0000001317C49EF814B995F423D2
      AFFD000000130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000B68F44F7C7A255FFC6A2
      55FFC6A255FFC6A255FFC6A255FFC6A255FFC6A255FFC6A255FF1ED58DFF1BD6
      8EFF1BD68EFF1BD68EFFAAA252FF0101001F0000000000000000000000000000
      00000F5683CE1D97E8FF1EB3F1FF105C86CE0000000716967AD9128167CC1DB0
      8FEA000000090000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD964BF7A68433FFA07C
      2BFFA27E2EFFA27E2EFFA27E2EFFA27E2EFFA27E2EFFA27E2EFF1CD78FFF1AD8
      91FF1AD891FF1AD891FFAFA555FF0101001F000000000000000001090F4A0E64
      94D91176B8EC158EE5FF16B1F0FF118ABEEC0F6B96D9105155B0092C25721355
      489D000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C09A50F7A8873AFFFBF9
      F6FFE4DBC4FFE9E1CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6EDFA8FF5DCF
      87FF64D38CFF63D28BFFAE974EF40000000800000000000000000001021E0B43
      73CA0C8DE4FF0A79DDFF0BA9EDFF0DB5F1FF0B4874CA0005052D0000000D0001
      0119000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C49E53F7AF8F47FFFFFF
      FFFFA58231FFB69A59FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD2B6FFB793
      43FFD0A554FFD0A554FF3026137C000000000000000000000000000000000002
      03210A4B82D80381DFFF04B1F0FF0B5185D80002032100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C8A157F7BA9950FFFFFF
      FFFFB18C3CFFC0A262FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3D6BAFFC09A
      4CFFD4A858FF544223A100000000000000000000000000000000000000000000
      0000000203240A5491E30B5B93E3000203240000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000005A4727A4967C45DFC2C1
      C0DFA89879DFADA087DFC2C2C2DFC3C3C3DFC3C3C3DFC3C3C3DFB0A791DF9376
      3BDB41331B8C0000000500000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000150303023E06060551070706520303033E000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000001000000010000000100000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000030E0E
      0C6A5B5A52D1959486FE9B9A8BFF9D9C8DFFBBB8AFFFB8B6ABFFB1AFA3FE6D6D
      63D210100F6A0000000300000000000000000000000000000000000000000000
      0001000000050000000F010000230303033A04030335010101190000000B0000
      0007000000040000000200000000000000000000000000000000000000000000
      006A000019CE0000001D000000000000000000000000000000000000001D0000
      19CE0000006A0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000033332EA79F9E
      8FFFA5A494FFA6A595FFA6A595FFA6A595FFC7C3BDFFC7C3BDFFC7C3BDFFC6C2
      BCFFBEBAB2FF3E3D38A800000000000000000000000100000006000000100101
      00270403024F0B080587110F0BBF252019E439362EDC201F1A9F1515125D0B0B
      0B3B040403210000000C00000002000000000000000000000000000001800101
      A6FE0404F3FF000031DE00000022000000000000000000000022000031DE0404
      F3FF0101A6FE0000018000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A09F8FFDA6A5
      95FFABA99BFFB3B1A5FFB9B6ACFFBBB8AFFFE2E0DBFFDFDCD8FFD8D5D0FFCDCA
      C4FFC7C3BDFFBEBBB4FD00000000000000000000001A0A0907560E0C09891B18
      13C1302A22EA443A2DFB4D4130FE635A4EFF8D8470FF7C7661FC4D493EE36765
      5EB92F2E2B760606062B000000080000000000000000000002800303B9FF0C0C
      FEFF0D0DFEFF0909F5FF000039E4000000280000002800003AE40909F5FF0D0D
      FEFF0C0CFEFF0303B9FF00000281000000000000000000000000000000000000
      0000000000000000000026252F7A615EAFE40606063500000000000000000000
      0000000000000000000000000000000000000000000000000000AAA99AFFB8B5
      ACFFAAA89EFF9D9B90FF989689FF959486FFB1AFA2FFB4B3A6FFBBBAAEFFCCCB
      C1FFDDDCD6FFCDC9C3FF00000000000000000303036E353026E8534837FB5447
      31FF40341DFF3B2F1AFF463A28FF483B2AFF887D6AFF9C9579FFBEB99BFEC5C0
      B2FD6C685ED71E1C1A730202012300000001000000000000028E0101DCFF1212
      F9FF1414F9FF1414F9FF0F0FF3FF000042E9000042E90F0FF3FF1414F9FF1414
      F9FF1212F9FF0101DDFF0000028E000000000000000000000000000000000000
      000000000000000000004D4C71B63C36CAFF514F7BBE00000005494949956A6A
      6AAF0000000A0000000000000000000000000000000000000000ACAAA0FF9897
      89FFA1A090FFA5A494FFA6A595FFA6A595FFC7C3BDFFC7C3BDFFC6C2BCFFC1BD
      B6FFB6B3A8FFCFCDC5FF000000000000000013110F7F6F6352FF4E422DFF4E41
      29FF4B3D25FF534630FF5A4E3DFF7B7161FEA9A291FF867D65FFB4AD93FFD6D2
      BBFFADA89AFD343129E00F0E0B8700000008000000000000000D000013C40303
      CFFF1A1AF3FF1D1DF4FF1D1DF4FF1717F0FF1717F0FF1D1DF4FF1D1DF4FF1A1A
      F3FF0303CFFF000013C40000000D000000000000000000000000000000000000
      000000000000000000000707083C4B45CBFE4B45CBFE8D8D91CBCDCDCDF5D5D5
      D5FF1212125700000000000000000000000000000000000000009A998BFBA6A5
      95FFA6A595FFA8A798FFAEAC9EFFB0AEA1FFD4D1CBFFD1CDC8FFCAC6C1FFC7C3
      BDFFC7C3BDFFBAB7AEFC00000000000000001A181573665945FF615541FF6B60
      4DFD928977FD97907FFE8D8877FE756F5BFF6E6853FF888474FF857D66FF9991
      76FFC4BFABFF756E57FE2A251CEA0000002F00000000000000000000000D0000
      0FC30404C2FF2323EFFF2828EFFF2828EFFF2828EFFF2828EFFF2323EFFF0404
      C3FF00000FC30000000D00000000000000000000000000000000000000000000
      0000292929764646469300000017535082C38582CCFFD7D7D7FFDFDFDFFFB0B0
      B0E2000000170000000000000000000000000000000000000000A6A595FFB3B1
      A5FFB8B5ACFFAEACA3FFA5A399FFA19F94FFBFBEB3FFC5C4B9FFD1D0C7FFDDDC
      D5FFD8D5D0FFC7C3BDFF00000000000000001E1D1A67C6BFB1FEB6B2A3FDABA7
      97FE837E6DFF524E40FF423E34FF4C473FFF645E58FF756F6AFF777269FF8681
      6FFFC1BCA2FF554F3BFF2E2A1EE5000000180000000000000000000000000000
      000C00000FCE0A0ACAFF3434EBFF3434EBFF3434EBFF3434EBFF0A0ACBFF0000
      0FCE0000000C0000000000000000000000000000000000000000000000000000
      0000121212553636368523232365969598D3D6D6D6FFE4E4E4FFABABABDB0202
      0224000000000000000000000000000000000000000000000000B3B0A6FF9E9C
      90FF989789FF9F9E8FFFA3A292FFA5A494FFC6C2BCFFC4C0B9FFBEBBB3FFB6B3
      A8FFBCBBAFFFD7D5CFFF0000000000000000000000071A1A186C6B6861F45F5A
      53FF666058FF8E877BFFABA699FFBBB7ABFFA09EC7FFCDCBD0FFC7C2BAFF857E
      73FF98958CFF757061FF2D2820E40000000C0000000000000000000000000000
      004A060661F63737E6FF4141E8FF4141E8FF4141E8FF4141E8FF3737E6FF0606
      61F60000004A0000000000000000000000000000000000000000000000000000
      00001010105223232371B2B2B2E4D8D8D8FFE6E6E6FFCACACAF6000000160000
      000000000000000000000000000000000000000000000000000099988BFCA5A4
      94FFA6A595FFA6A595FFA6A595FFA6A595FFC7C3BDFFC7C3BDFFC7C3BDFFC7C3
      BDFFC6C2BBFFB8B6ABFC000000000000000000000000000000195A544AF75E5A
      4BFF898573FFC7C4BCFFBBB7ACFFE7E5E1FFB2B0D0FF8784B0FFCCC8BAFFF1EF
      EAFFE3DDCCFF484339FE595855D80000000E0000000000000000000000530909
      6AF94545E4FF4F4FE6FF4F4FE6FF4444E4FF4444E4FF4F4FE6FF4F4FE6FF4545
      E4FF09096AF90000005300000000000000000000000000000000000000001212
      1258D4D4D4FFD5D5D5FFD8D8D8FFE1E1E1FF747474B67A7A7AC5090909400000
      0000000000000000000000000000000000000000000000000000A3A292FEA9A8
      99FFB6B3A8FFBEBBB3FFC4C0B9FFC6C2BCFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3
      BDFFC7C3BDFFC3C0B9FE00000000000000000000000000000001030303574442
      39F3A5A298FFC4C1B5FFBCB8ACFFCBC8BCFFC7C4B9FFBAB5A5FFA9A59AFFB6B5
      AEFFFBFBFAFFB1ACA4FE0D0B0AEC0000000D000000000000005C0E0E71FB5353
      E2FF5D5DE4FF5D5DE4FF5050E1FF0909A7FF0909A7FF5050E1FF5D5DE4FF5D5D
      E4FF5353E2FF0E0E71FB0000005C000000000000000000000000000000002828
      287B878787C5BDBDBDEBDBDBDBFF5D5D5DA700000003121212588C8C8CD80000
      0008000000000000000000000000000000000000000000000000B2B0A4FFC6C2
      BBFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3
      BDFFC7C3BDFFC7C3BDFF00000000000000000000000000000000000000000101
      0137464436DA8C8873FF8D8978FF505544FF436B38FF2B2F33FF38342CFF4842
      36FF766F62FF7D7364FF100E0BFF0000004300000008000042F85454DEFF6D6D
      E3FF6D6DE3FF5D5DE0FF0A0AA4FF000009BC000009BC0A0AA9FF5D5DE0FF6D6D
      E3FF6D6DE3FF5454DEFF000042F8000000080000000000000000000000000000
      001301010117A0A0A0D7DEDEDEFF0F0F0F4F000000000000000F565656A10000
      0009000000000000000000000000000000000000000000000000C1BDB8FDC7C3
      BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3
      BDFFC7C3BDFFC3BFBAFD00000000000000000000000000000000000000000000
      000000000019454238C7958C7BFF999692FF8A8480FF4F4740FF1E1A14FF0C34
      08FF054502FF202C16FF070605FE0000004600000000000000780F0F8DFE6F6F
      E0FF6A6ADFFF0B0BA7FF000009BB000000090000000900000ABB0B0BB1FF6A6A
      DFFF6F6FE0FF0F0F8CFE00000078000000000000000000000000000000000000
      0000010101213636368713131355000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000474643A7C7C3
      BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC7C3
      BDFFC7C3BDFF484744A700000000000000000000000000000000000000000000
      000000000000000000142F2C28C686827EFFB6B5B5FF292524FF1C1915FD1816
      12F6221F18FD1D1B15F3050504B8000000050000000000000000000001861313
      9AFF0C0CB4FF00000AB90000000900000000000000000000000900000DBA0C0C
      BEFF131397FF0000018600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000031414
      136A807E7AD2C5C1BBFEC7C3BDFFC7C3BDFFC7C3BDFFC7C3BDFFC5C1BBFE807F
      7BD21514136A0000000300000000000000000000000000000000000000000000
      00000000000000000000000000130B0B0A7D0A0A0A6C0000003A0000001A201F
      1BAE5A7E4BFF5C824DFF21241CC5000000000000000000000000000000000000
      038D00000BB20000000800000000000000000000000000000000000000080000
      0DB20000038D0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000160404043E09080851090808510404043E000000160000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000302
      02390A0A08600808065E02020243000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end