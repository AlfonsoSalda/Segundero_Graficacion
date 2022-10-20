object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 238
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 200
    Height = 200
  end
  object Panel1: TPanel
    Left = 224
    Top = 8
    Width = 265
    Height = 200
    Color = clActiveCaption
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 120
      Top = 21
      Width = 24
      Height = 13
      Caption = 'TIME'
    end
    object Label2: TLabel
      Left = 120
      Top = 125
      Width = 26
      Height = 13
      Caption = 'DATE'
    end
    object Edit1: TEdit
      Left = 16
      Top = 40
      Width = 233
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 16
      Top = 144
      Width = 233
      Height = 21
      TabOrder = 1
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 8
    Top = 208
  end
end
