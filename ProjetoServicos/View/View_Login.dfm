object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'FrmLogin'
  ClientHeight = 502
  ClientWidth = 918
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 266
    Height = 502
    Align = alLeft
    Color = clActiveBorder
    ParentBackground = False
    TabOrder = 0
    ExplicitHeight = 622
    object Label4: TLabel
      Left = 24
      Top = 127
      Width = 219
      Height = 18
      Caption = 'AGENDADOR DE SERVI'#199'OS'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Swis721 Blk BT'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 328
    Top = 82
    Width = 529
    Height = 337
    Color = clNavy
    ParentBackground = False
    TabOrder = 1
    object Panel3: TPanel
      Left = 5
      Top = 5
      Width = 520
      Height = 328
      Color = clMoneyGreen
      ParentBackground = False
      TabOrder = 0
      object Panel4: TPanel
        Left = 32
        Top = 40
        Width = 457
        Height = 233
        Color = clBtnHighlight
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 56
          Top = 30
          Width = 62
          Height = 19
          Caption = 'Usu'#225'rio'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 56
          Top = 94
          Width = 50
          Height = 19
          Caption = 'Senha'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SpeedButton1: TSpeedButton
          Left = 56
          Top = 160
          Width = 73
          Height = 25
          Cursor = crHandPoint
          Caption = 'Acessar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton1Click
        end
        object SpeedButton2: TSpeedButton
          Left = 328
          Top = 160
          Width = 73
          Height = 25
          Cursor = crHandPoint
          Caption = 'Sair'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = SpeedButton2Click
        end
        object Label3: TLabel
          Left = 56
          Top = 200
          Width = 140
          Height = 16
          Cursor = crHandPoint
          Caption = 'Esqueceu a Senha?'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Verdana'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 56
          Top = 52
          Width = 345
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object Edit2: TEdit
          Left = 56
          Top = 116
          Width = 345
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
      end
    end
  end
end
