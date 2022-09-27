unit RVM.View.Mensagem;

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
  Vcl.ExtCtrls,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,
  Vcl.Buttons,
  System.ImageList,
  Vcl.ImgList,
  MSG.Model.Utils.Interfaces,
  MSG.Utils.Enumerados;

type
  TMensagem = class(TForm)
    pn_Fundo: TPanel;
    pn_Topo: TPanel;
    pn_Linha: TPanel;
    lbl_Titulo: TLabel;
    pn_FundoMensagem: TPanel;
    pn_Imagem: TPanel;
    imgMensagem: TImage;
    pn_Mensagem: TPanel;
    pn_Pergunta: TPanel;
    lbl_Pergunta: TLabel;
    Panel1: TPanel;
    lbl_Mensagem: TLabel;
    Panel2: TPanel;
    pn_Nao: TPanel;
    btn_Nao: TSpeedButton;
    pn_Sim: TPanel;
    btn_Sim: TSpeedButton;
    procedure btn_SimClick(Sender: TObject);
    procedure btn_NaoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    FTitulo: string;
    FPergunta: string;
    FMensagem: string;
    FIcone: string;
    FTipo: TTipo;
    procedure SetTitulo(const Value: string);
    procedure SetMensagem(const Value: string);
    procedure SetPergunta(const Value: string);
    procedure SetIcone(const Value: string);
    procedure SetTipo(const Value: TTipo);
    procedure TipoOK;
    procedure TipoPergunta;
  public
    RespostaMSG : Boolean;
  published
    property Titulo : string read FTitulo write SetTitulo;
    property Pergunta : string read FPergunta write SetPergunta;
    property Mensagem : string read FMensagem write SetMensagem;
    property Icone : string read FIcone write SetIcone;
    property Tipo : TTipo read FTipo write SetTipo;
  end;

var
  Mensagem: TMensagem;

implementation

{$R *.dfm}

procedure TMensagem.btn_NaoClick(Sender: TObject);
begin
 RespostaMSG := False;
 Close;
end;

procedure TMensagem.btn_SimClick(Sender: TObject);
begin
 RespostaMSG := True;
 Close;
end;

procedure TMensagem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := TCloseAction.caFree;
end;

procedure TMensagem.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if pn_Sim.Visible then
   if key = VK_RETURN then
    btn_SimClick(Self);

 if pn_Nao.Visible then
   if key = VK_ESCAPE then
    btn_NaoClick(Self);
end;

procedure TMensagem.FormShow(Sender: TObject);
begin
 RespostaMSG := False;
 lbl_Titulo.Caption := FTitulo;
 lbl_Pergunta.Caption := FPergunta;
 lbl_Mensagem.Caption := FMensagem;
 imgMensagem.Picture.LoadFromFile(FIcone);

 case FTipo of
   tOK: TipoOK;
   tPergunta: TipoPergunta;
 end;

end;

procedure TMensagem.SetIcone(const Value: string);
begin
  FIcone := Value;
end;

procedure TMensagem.SetMensagem(const Value: string);
begin
  FMensagem := Value;
end;

procedure TMensagem.SetPergunta(const Value: string);
begin
  FPergunta := Value;
end;

procedure TMensagem.SetTipo(const Value: TTipo);
begin
  FTipo := Value;
end;

procedure TMensagem.SetTitulo(const Value: string);
begin
  FTitulo := Value;
end;

procedure TMensagem.TipoOK;
begin
 pn_Nao.Visible := False;
 btn_Sim.Caption := 'OK (ENTER)';
end;

procedure TMensagem.TipoPergunta;
begin
  pn_Nao.Visible := True;
  btn_Sim.Caption := 'SIM (ENTER)';
end;

end.
