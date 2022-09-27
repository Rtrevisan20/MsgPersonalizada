object Mensagem: TMensagem
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 222
  ClientWidth = 608
  Color = 7769240
  Font.Charset = DEFAULT_CHARSET
  Font.Color = 5728885
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object pn_Fundo: TPanel
    Left = 0
    Top = 0
    Width = 608
    Height = 222
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pn_Topo: TPanel
      Left = 0
      Top = 0
      Width = 608
      Height = 46
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object lbl_Titulo: TLabel
        Left = 15
        Top = 6
        Width = 89
        Height = 30
        Caption = 'Pergunta'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object pn_Linha: TPanel
        Left = 0
        Top = 43
        Width = 608
        Height = 3
        Align = alBottom
        BevelOuter = bvNone
        Color = 5202026
        ParentBackground = False
        TabOrder = 0
      end
    end
    object pn_FundoMensagem: TPanel
      Left = 0
      Top = 46
      Width = 608
      Height = 176
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object pn_Imagem: TPanel
        Left = 0
        Top = 0
        Width = 176
        Height = 176
        Align = alLeft
        BevelOuter = bvNone
        TabOrder = 0
        object imgMensagem: TImage
          Left = 0
          Top = 0
          Width = 176
          Height = 176
          Align = alClient
          Center = True
          ExplicitTop = -4
          ExplicitWidth = 201
        end
      end
      object pn_Mensagem: TPanel
        Left = 176
        Top = 0
        Width = 432
        Height = 176
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object pn_Pergunta: TPanel
          Left = 0
          Top = 0
          Width = 432
          Height = 34
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lbl_Pergunta: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 164
            Height = 25
            Align = alClient
            Caption = 'Pergunta de teste?'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -19
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentFont = False
            Layout = tlCenter
            WordWrap = True
          end
        end
        object Panel1: TPanel
          Left = 0
          Top = 34
          Width = 432
          Height = 74
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object lbl_Mensagem: TLabel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 86
            Height = 21
            Align = alClient
            Caption = 'lbl_Pergunta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 137
          Width = 432
          Height = 39
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 2
          object pn_Nao: TPanel
            AlignWithMargins = True
            Left = 103
            Top = 3
            Width = 160
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            Color = 5202026
            ParentBackground = False
            TabOrder = 0
            object btn_Nao: TSpeedButton
              Left = 0
              Top = 0
              Width = 160
              Height = 33
              Cursor = crHandPoint
              Align = alClient
              Caption = 'N'#195'O (ESC)'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_NaoClick
              ExplicitLeft = -24
              ExplicitTop = -16
            end
          end
          object pn_Sim: TPanel
            AlignWithMargins = True
            Left = 269
            Top = 3
            Width = 160
            Height = 33
            Align = alRight
            BevelOuter = bvNone
            Color = clBlue
            ParentBackground = False
            TabOrder = 1
            object btn_Sim: TSpeedButton
              Left = 0
              Top = 0
              Width = 160
              Height = 33
              Cursor = crHandPoint
              Align = alClient
              Caption = 'SIM (ENTER)'
              Flat = True
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -16
              Font.Name = 'Segoe UI'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_SimClick
              ExplicitLeft = 32
              ExplicitTop = 8
              ExplicitWidth = 113
            end
          end
        end
      end
    end
  end
end
