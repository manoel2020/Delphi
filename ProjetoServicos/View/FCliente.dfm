object FCCliente: TFCCliente
  Left = 0
  Top = 0
  Caption = 'Cadastro de Cliente'
  ClientHeight = 584
  ClientWidth = 728
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
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 728
    Height = 196
    Align = alClient
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Cod.Cliente'
    end
    object Label3: TLabel
      Left = 104
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Nome'
    end
    object Label4: TLabel
      Left = 16
      Top = 88
      Width = 24
      Height = 13
      Caption = 'Sexo'
    end
    object Label5: TLabel
      Left = 145
      Top = 88
      Width = 81
      Height = 13
      Caption = 'Data Nascimento'
    end
    object Label6: TLabel
      Left = 254
      Top = 88
      Width = 28
      Height = 13
      Caption = 'Idade'
    end
    object Label7: TLabel
      Left = 342
      Top = 88
      Width = 19
      Height = 13
      Caption = 'CPF'
    end
    object cbSexo: TComboBox
      Left = 16
      Top = 107
      Width = 115
      Height = 21
      TabOrder = 0
      Text = 'Selecione'
      Items.Strings = (
        'Selecione'
        'Masculino'
        'Feminino'
        'N'#227'o Interessa!')
    end
    object Panel4: TPanel
      Left = 1
      Top = 152
      Width = 726
      Height = 43
      Align = alBottom
      Color = clMenu
      ParentBackground = False
      TabOrder = 1
      DesignSize = (
        726
        43)
      object SpeedButton1: TSpeedButton
        Left = 646
        Top = 5
        Width = 65
        Height = 33
        Anchors = []
        Caption = 'Voltar'
        OnClick = SpeedButton1Click
        ExplicitLeft = 931
      end
      object btnExcluir: TSpeedButton
        Left = 533
        Top = 5
        Width = 65
        Height = 33
        Anchors = []
        Caption = 'Excluir'
        OnClick = btnExcluirClick
        ExplicitLeft = 771
      end
      object btnSalvar: TSpeedButton
        Left = 416
        Top = 6
        Width = 65
        Height = 33
        Anchors = []
        Caption = 'Gravar'
        OnClick = btnSalvarClick
        ExplicitLeft = 217
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 728
    Height = 41
    Align = alTop
    Color = clMenu
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 726
      Height = 39
      Align = alClient
      Alignment = taCenter
      Caption = 'Cadastro de Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 264
      ExplicitHeight = 33
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 237
    Width = 728
    Height = 347
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 640
    Top = 528
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 592
    Top = 360
  end
end
