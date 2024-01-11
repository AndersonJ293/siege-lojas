object FrmVendedores: TFrmVendedores
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Vendedores'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 442
    Align = alClient
    BevelOuter = bvNone
    Color = 12227725
    Padding.Left = 10
    Padding.Top = 10
    Padding.Right = 10
    Padding.Bottom = 10
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    object Panel2: TPanel
      Left = 10
      Top = 10
      Width = 608
      Height = 337
      Align = alTop
      BevelOuter = bvNone
      Caption = 'Panel2'
      ParentBackground = False
      TabOrder = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 628
    end
    object Panel3: TPanel
      Left = 10
      Top = 353
      Width = 608
      Height = 79
      Align = alBottom
      BevelOuter = bvNone
      Padding.Left = 10
      Padding.Top = 15
      Padding.Right = 10
      Padding.Bottom = 15
      ParentBackground = False
      TabOrder = 1
      StyleName = 'Windows'
      ExplicitLeft = 98
      ExplicitTop = 363
      object SpeedButton1: TSpeedButton
        Left = 10
        Top = 15
        Width = 95
        Height = 49
        Align = alLeft
      end
    end
  end
end
