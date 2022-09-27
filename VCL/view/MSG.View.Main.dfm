object MSGMain: TMSGMain
  Left = 0
  Top = 0
  Caption = 'Mensagem personalizada'
  ClientHeight = 253
  ClientWidth = 293
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object Button1: TButton
    Left = 56
    Top = 8
    Width = 161
    Height = 33
    Caption = 'Pergunta'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 56
    Top = 47
    Width = 161
    Height = 34
    Caption = 'Alerta'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 56
    Top = 207
    Width = 161
    Height = 34
    Caption = 'Mensagem'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 56
    Top = 127
    Width = 161
    Height = 34
    Caption = 'Erro'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 56
    Top = 87
    Width = 161
    Height = 34
    Caption = 'Aten'#231#227'o'
    TabOrder = 4
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 56
    Top = 167
    Width = 161
    Height = 34
    Caption = 'Joia'
    TabOrder = 5
    OnClick = Button6Click
  end
end
