object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 238
  ClientWidth = 621
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 67
    Height = 23
    Caption = 'C'#243'digo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
  end
  object edtcodigo: TDBEdit
    Left = 89
    Top = 8
    Width = 160
    Height = 31
    DataField = 'Id'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object edtnome: TDBEdit
    Left = 8
    Top = 56
    Width = 605
    Height = 31
    DataField = 'nome'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtdocumento: TDBEdit
    Left = 8
    Top = 107
    Width = 313
    Height = 31
    DataField = 'documento'
    DataSource = DataSource1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 160
    Width = 600
    Height = 46
    DataSource = DataSource1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 416
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Processos'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 529
    Top = 113
    Width = 75
    Height = 25
    Caption = 'Fun'#231#245'es'
    TabOrder = 5
    OnClick = Button2Click
  end
  object DataSource1: TDataSource
    DataSet = DataModule2.FDQuery1
    Left = 552
    Top = 8
  end
end
