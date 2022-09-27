unit MSG.Model.Utils.Mensagem;

interface

uses
  System.SysUtils,
  MSG.Model.Utils.Interfaces,
  MSG.Model.Utils.Mensagem.Params,
  RVM.View.Mensagem;

type
  TModelMensagemPadrao = class(TInterfacedObject, iModelMensagemPadrao)
  private
    FParams: iModelMensagemPadraoParams;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelMensagemPadrao;

    function ExibirMensagem: iModelMensagemPadrao;
    function Pergunta: Boolean;
    function Params: iModelMensagemPadraoParams;
  end;

implementation

{ TModelMensagemPadrao }

constructor TModelMensagemPadrao.Create;
begin
  FParams:= TModelMensagemPadraoParams.New(Self);
end;

destructor TModelMensagemPadrao.Destroy;
begin

  inherited;
end;

function TModelMensagemPadrao.ExibirMensagem: iModelMensagemPadrao;
begin
  Result := Self;
  Mensagem          := TMensagem.Create(nil);
    try
     Mensagem.Titulo   := FParams.TituloMsg;
     Mensagem.Pergunta := FParams.Pergunta;
     Mensagem.Mensagem := FParams.Mensagem;
     Mensagem.Icone    := FParams.Icone;
     Mensagem.Tipo     := FParams.Tipo;
     Mensagem.ShowModal;
    finally
     FreeAndNil(Mensagem);
    end;
end;

class function TModelMensagemPadrao.New: iModelMensagemPadrao;
begin
  Result := Self.Create;
end;

function TModelMensagemPadrao.Params: iModelMensagemPadraoParams;
begin
  Result := FParams;
end;

function TModelMensagemPadrao.Pergunta: Boolean;
begin
 Mensagem          := TMensagem.Create(nil);
  try
   Mensagem.Titulo   := FParams.TituloMsg;
   Mensagem.Pergunta := FParams.Pergunta;
   Mensagem.Mensagem := FParams.Mensagem;
   Mensagem.Icone    := FParams.Icone;
   Mensagem.Tipo     := FParams.Tipo;
   Mensagem.ShowModal;
   Result := Mensagem.RespostaMSG;
  finally
   FreeAndNil(Mensagem);
  end;
end;

end.
