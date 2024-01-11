object FrmVendedores: TFrmVendedores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 562
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 828
    Height = 562
    Align = alClient
    BevelOuter = bvNone
    Color = 12314043
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 822
    ExplicitHeight = 553
    object Panel2: TPanel
      Left = 10
      Top = 10
      Width = 808
      Height = 464
      Align = alTop
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
      StyleName = 'Windows'
      ExplicitWidth = 802
      object Panel4: TPanel
        Left = 10
        Top = 24
        Width = 119
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 0
        object Label1: TLabel
          Left = 3
          Top = 3
          Width = 113
          Height = 23
          Align = alTop
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 58
        end
        object Panel5: TPanel
          Left = 3
          Top = 30
          Width = 113
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape1: TShape
            Left = 0
            Top = 0
            Width = 113
            Height = 32
            Align = alClient
            Pen.Color = clWhite
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtCod: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 99
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            Enabled = False
            TabOrder = 0
          end
        end
      end
      object Panel6: TPanel
        Left = 132
        Top = 24
        Width = 185
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 1
        object Label2: TLabel
          Left = 3
          Top = 3
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Data'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 38
        end
        object Panel7: TPanel
          Left = 3
          Top = 30
          Width = 179
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape2: TShape
            Left = 0
            Top = 0
            Width = 179
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitHeight = 29
          end
          object EdtData: TDateTimePicker
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 165
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            CalColors.BackColor = clNavy
            CalColors.TextColor = clNavy
            CalColors.TitleBackColor = clNavy
            CalColors.TitleTextColor = clNavy
            CalColors.MonthBackColor = clNavy
            CalColors.TrailingTextColor = clNavy
            Date = 45302.000000000000000000
            Time = 45302.000000000000000000
            Color = clNavy
            Enabled = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 0
            StyleElements = [seFont, seClient]
          end
        end
      end
      object Panel8: TPanel
        Left = 320
        Top = 24
        Width = 478
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 2
        object Label3: TLabel
          Left = 3
          Top = 3
          Width = 472
          Height = 23
          Align = alTop
          Caption = 'Nome *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 61
        end
        object Panel9: TPanel
          Left = 3
          Top = 30
          Width = 472
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape3: TShape
            Left = 0
            Top = 0
            Width = 472
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtNome: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 458
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel10: TPanel
        Left = 10
        Top = 104
        Width = 247
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 3
        object Label4: TLabel
          Left = 3
          Top = 3
          Width = 241
          Height = 23
          Align = alTop
          Caption = 'CPF *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 43
        end
        object Panel11: TPanel
          Left = 3
          Top = 30
          Width = 241
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape4: TShape
            Left = 0
            Top = 0
            Width = 241
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtCpf: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 227
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel12: TPanel
        Left = 260
        Top = 104
        Width = 185
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 4
        object Label5: TLabel
          Left = 3
          Top = 3
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Telefone'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 67
        end
        object Panel13: TPanel
          Left = 3
          Top = 30
          Width = 179
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape5: TShape
            Left = 0
            Top = 0
            Width = 179
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitHeight = 29
          end
          object EdtTelefone: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 165
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel14: TPanel
        Left = 448
        Top = 104
        Width = 185
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 5
        object Label6: TLabel
          Left = 3
          Top = 3
          Width = 179
          Height = 23
          Align = alTop
          Caption = 'Celular *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 69
        end
        object Panel15: TPanel
          Left = 3
          Top = 30
          Width = 179
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape6: TShape
            Left = 0
            Top = 0
            Width = 179
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitHeight = 29
          end
          object EdtCelular: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 165
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel16: TPanel
        Left = 633
        Top = 104
        Width = 165
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 6
        object Label7: TLabel
          Left = 3
          Top = 3
          Width = 159
          Height = 23
          Align = alTop
          Caption = 'Cep *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 44
        end
        object Panel17: TPanel
          Left = 3
          Top = 30
          Width = 159
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape7: TShape
            Left = 0
            Top = 0
            Width = 159
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtCep: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 145
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel18: TPanel
        Left = 10
        Top = 183
        Width = 623
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 7
        object Label8: TLabel
          Left = 3
          Top = 3
          Width = 617
          Height = 23
          Align = alTop
          Caption = 'Endere'#231'o *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 86
        end
        object Panel19: TPanel
          Left = 3
          Top = 30
          Width = 617
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape8: TShape
            Left = 0
            Top = 0
            Width = 617
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = 2
            ExplicitWidth = 429
          end
          object EdtEndereco: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 603
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel20: TPanel
        Left = 636
        Top = 183
        Width = 162
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 8
        object Label9: TLabel
          Left = 3
          Top = 3
          Width = 156
          Height = 23
          Align = alTop
          Caption = 'N'#250'mero'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 65
        end
        object Panel21: TPanel
          Left = 3
          Top = 30
          Width = 156
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape9: TShape
            Left = 0
            Top = 0
            Width = 156
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtNumero: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 142
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel22: TPanel
        Left = 10
        Top = 264
        Width = 351
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 9
        object Label10: TLabel
          Left = 3
          Top = 3
          Width = 345
          Height = 23
          Align = alTop
          Caption = 'Bairro *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 62
        end
        object Panel23: TPanel
          Left = 3
          Top = 30
          Width = 345
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape10: TShape
            Left = 0
            Top = 0
            Width = 345
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtBairro: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 331
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel24: TPanel
        Left = 364
        Top = 264
        Width = 206
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 10
        object Label11: TLabel
          Left = 3
          Top = 3
          Width = 200
          Height = 23
          Align = alTop
          Caption = 'Cidade *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 69
        end
        object Panel25: TPanel
          Left = 3
          Top = 30
          Width = 200
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape11: TShape
            Left = 0
            Top = 0
            Width = 200
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = 24
            ExplicitTop = 2
            ExplicitWidth = 179
          end
          object EdtCidade: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 186
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel26: TPanel
        Left = 573
        Top = 264
        Width = 89
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 11
        object Label12: TLabel
          Left = 3
          Top = 3
          Width = 83
          Height = 23
          Align = alTop
          Caption = 'Estado *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 66
        end
        object Panel27: TPanel
          Left = 3
          Top = 30
          Width = 83
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape12: TShape
            Left = 0
            Top = 0
            Width = 83
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtEstado: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 69
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            MaxLength = 2
            TabOrder = 0
          end
        end
      end
      object Panel28: TPanel
        Left = 10
        Top = 345
        Width = 395
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 12
        object Label13: TLabel
          Left = 3
          Top = 3
          Width = 389
          Height = 23
          Align = alTop
          Caption = 'Email'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 44
        end
        object Panel29: TPanel
          Left = 3
          Top = 30
          Width = 389
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape13: TShape
            Left = 0
            Top = 0
            Width = 389
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = 2
            ExplicitWidth = 179
          end
          object EdtEmail: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 375
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel30: TPanel
        Left = 665
        Top = 264
        Width = 133
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 13
        object Label14: TLabel
          Left = 3
          Top = 3
          Width = 127
          Height = 23
          Align = alTop
          Caption = 'Comiss'#227'o *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 88
        end
        object Panel31: TPanel
          Left = 3
          Top = 30
          Width = 127
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape14: TShape
            Left = 0
            Top = 0
            Width = 127
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitLeft = -3
            ExplicitTop = -2
            ExplicitWidth = 179
            ExplicitHeight = 29
          end
          object EdtComissao: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 113
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            TabOrder = 0
          end
        end
      end
      object Panel32: TPanel
        Left = 405
        Top = 345
        Width = 393
        Height = 65
        BevelOuter = bvNone
        Padding.Left = 3
        Padding.Top = 3
        Padding.Right = 3
        Padding.Bottom = 3
        TabOrder = 14
        object Label15: TLabel
          Left = 3
          Top = 3
          Width = 387
          Height = 23
          Align = alTop
          Caption = 'Operador'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitWidth = 77
        end
        object Panel33: TPanel
          Left = 3
          Top = 30
          Width = 387
          Height = 32
          Align = alBottom
          BevelOuter = bvNone
          Caption = 'Panel5'
          ParentBackground = False
          TabOrder = 0
          object Shape15: TShape
            Left = 0
            Top = 0
            Width = 387
            Height = 32
            Align = alClient
            Pen.Style = psClear
            Shape = stRoundRect
            ExplicitTop = 2
            ExplicitWidth = 179
          end
          object EdtOperador: TEdit
            AlignWithMargins = True
            Left = 7
            Top = 3
            Width = 373
            Height = 26
            Margins.Left = 7
            Margins.Right = 7
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            BorderStyle = bsNone
            Color = clWhite
            Enabled = False
            TabOrder = 0
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 10
      Top = 480
      Width = 808
      Height = 72
      Align = alBottom
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Padding.Left = 10
      Padding.Top = 15
      Padding.Right = 10
      Padding.Bottom = 15
      ParentBackground = False
      ParentFont = False
      TabOrder = 1
      StyleName = 'Windows'
      ExplicitTop = 471
      ExplicitWidth = 802
      object BtnFechar: TSpeedButton
        Left = 703
        Top = 15
        Width = 95
        Height = 42
        Align = alRight
        Caption = 'Fechar'
        OnClick = BtnFecharClick
        ExplicitLeft = 10
        ExplicitHeight = 49
      end
      object BtnExcluir: TSpeedButton
        AlignWithMargins = True
        Left = 410
        Top = 15
        Width = 95
        Height = 42
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Excluir'
        ExplicitLeft = 394
      end
      object BtnCancelar: TSpeedButton
        AlignWithMargins = True
        Left = 210
        Top = 15
        Width = 95
        Height = 42
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Cancelar'
        ExplicitLeft = 198
        ExplicitTop = 31
      end
      object BtnEditar: TSpeedButton
        AlignWithMargins = True
        Left = 310
        Top = 15
        Width = 95
        Height = 42
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Editar'
        ExplicitLeft = 202
      end
      object BtnSalvar: TSpeedButton
        AlignWithMargins = True
        Left = 110
        Top = 15
        Width = 95
        Height = 42
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Salvar'
        ExplicitLeft = 106
      end
      object BtnAdicionar: TSpeedButton
        AlignWithMargins = True
        Left = 10
        Top = 15
        Width = 95
        Height = 42
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Adicionar'
        ExplicitHeight = 49
      end
      object BtnPesquisar: TSpeedButton
        AlignWithMargins = True
        Left = 510
        Top = 15
        Width = 95
        Height = 42
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 5
        Margins.Bottom = 0
        Align = alLeft
        Caption = 'Pesquisar'
        ExplicitLeft = 546
        ExplicitTop = 7
      end
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 302
    Top = 432
    Width = 224
    Height = 25
    DataSource = DataSource1
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    Flat = True
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 264
    Top = 240
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Id_Vendedor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cpf'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Telefone'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cep'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Endereco'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Numero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Bairro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Cidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Operador'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DmVendedores.CdsVendedores
    OnDataChange = DataSource1DataChange
    Left = 696
    Top = 440
  end
end
