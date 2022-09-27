unit MSG.View.Main;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  MSG.Controller.Interfaces,
  MSG.Controller,
  MSG.Utils.Enumerados;

type
  TMSGMain = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    FController : iController;
  public
  end;

var
  MSGMain: TMSGMain;

implementation

{$R *.dfm}

procedure TMSGMain.Button1Click(Sender: TObject);
begin
 if FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Esta é uma mensagem personalizada?')
      .Mensagem('Você pode escolher uma opção')
      .Icone(iPergunta)
      .Tipo(tPergunta)
    .&End
   .Pergunta
 then
   FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Você selecionou qual opção?')
      .Mensagem('SIM')
      .Icone(iMensagem)
      .Tipo(tOK)
    .&End
   .ExibirMensagem else

   FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Você selecionou qual opção?')
      .Mensagem('NÃO')
      .Icone(iAtencao)
      .Tipo(tOK)
    .&End
   .ExibirMensagem;
end;

procedure TMSGMain.Button2Click(Sender: TObject);
begin
  FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Essa é uma mensagem de alerta!')
      .Mensagem('')
      .Icone(iAlerta)
      .Tipo(tOK)
    .&End
   .ExibirMensagem;
end;

procedure TMSGMain.Button3Click(Sender: TObject);
begin
  FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Essa é uma mensagem!')
      .Mensagem('')
      .Icone(iMensagem)
      .Tipo(tOK)
    .&End
   .ExibirMensagem;
end;

procedure TMSGMain.Button4Click(Sender: TObject);
begin
  FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Essa é uma mensagem de erro!')
      .Mensagem('')
      .Icone(iErro)
      .Tipo(tOK)
    .&End
   .ExibirMensagem;
end;

procedure TMSGMain.Button5Click(Sender: TObject);
begin
  FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Essa é uma mensagem de atenção!')
      .Mensagem('')
      .Icone(iAtencao)
      .Tipo(tOK)
    .&End
   .ExibirMensagem;
end;

procedure TMSGMain.Button6Click(Sender: TObject);
begin
  FController
   .MensagemPadrao
    .Params
      .TituloMsg('Mensagem padrão')
      .Pergunta('Essa é uma mensagem de joia!')
      .Mensagem('')
      .Icone(iJoia)
      .Tipo(tOK)
    .&End
   .ExibirMensagem;
end;

procedure TMSGMain.FormCreate(Sender: TObject);
begin
  FController := TController.New;
end;

end.
