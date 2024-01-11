object FrmMensagemFlutuante: TFrmMensagemFlutuante
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsNone
  Caption = 'FrmMensagemFlutuante'
  ClientHeight = 110
  ClientWidth = 280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object PnlFundo: TPanel
    Left = 0
    Top = 0
    Width = 280
    Height = 110
    Align = alClient
    AutoSize = True
    BevelOuter = bvNone
    Color = 2568482
    Padding.Left = 5
    Padding.Top = 5
    Padding.Right = 5
    Padding.Bottom = 5
    ParentBackground = False
    TabOrder = 0
    StyleName = 'Windows'
    ExplicitWidth = 400
    ExplicitHeight = 150
    object PnlMensagem: TPanel
      Left = 5
      Top = 5
      Width = 270
      Height = 100
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      Color = 146445453
      Padding.Left = 5
      Padding.Top = 5
      Padding.Right = 5
      Padding.Bottom = 5
      ParentBackground = False
      TabOrder = 0
      StyleName = 'Windows'
      ExplicitWidth = 390
      ExplicitHeight = 140
      object LblTitulo: TLabel
        Left = 5
        Top = 5
        Width = 260
        Height = 28
        Align = alTop
        Caption = 'LblTitulo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 84
      end
      object LblMensagem: TLabel
        Left = 5
        Top = 33
        Width = 260
        Height = 62
        Align = alClient
        Alignment = taCenter
        Caption = 'LblMensagem'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        Layout = tlCenter
        WordWrap = True
        ExplicitWidth = 93
        ExplicitHeight = 20
      end
    end
  end
  object Timer1: TTimer
    Interval = 2000
    OnTimer = Timer1Timer
    Left = 368
    Top = 32
  end
end
