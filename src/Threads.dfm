object fThreads: TfThreads
  Left = 0
  Top = 0
  Caption = 'fThreads'
  ClientHeight = 320
  ClientWidth = 345
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    345
    320)
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 8
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    TextHint = 'N'#186' Threads'
  end
  object Edit2: TEdit
    Left = 135
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 1
    TextHint = 'Max Millissegundos'
  end
  object Button1: TButton
    Left = 262
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Iniciar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 8
    Top = 51
    Width = 329
    Height = 240
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 3
    ExplicitWidth = 326
    ExplicitHeight = 230
  end
  object ProgressBar1: TProgressBar
    Left = 8
    Top = 298
    Width = 329
    Height = 17
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 4
    ExplicitTop = 288
    ExplicitWidth = 326
  end
end
