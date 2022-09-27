unit MSG.Model.Utils.Mensagem.Params;

interface

uses
  System.SysUtils,
  MSG.Utils.Enumerados,
  MSG.Model.Utils.Interfaces;

type
  TModelMensagemPadraoParams = class(TInterfacedObject, iModelMensagemPadraoParams)
  private
    [weak]
    FParent : iModelMensagemPadrao;
    FTituloMsg: String;
    FPergunta: String;
    FMensagem: String;
    FIcone: string;
    FTipo: TTipo;
    FCaminho: string;
  public
    constructor Create(Parent : iModelMensagemPadrao);
    destructor Destroy; override;
    class function New(Parent : iModelMensagemPadrao): iModelMensagemPadraoParams;

    function TituloMsg: String; overload;
    function TituloMsg( aValue: String ): iModelMensagemPadraoParams; overload;
    function Pergunta: String; overload;
    function Pergunta( aValue: String ): iModelMensagemPadraoParams; overload;
    function Mensagem: String; overload;
    function Mensagem( aValue: String ): iModelMensagemPadraoParams; overload;
    function Icone: string; overload;
    function Icone( aValue: TIcone ): iModelMensagemPadraoParams; overload;
    function Tipo: TTipo; overload;
    function Tipo( aValue: TTipo ): iModelMensagemPadraoParams; overload;
    function &End: iModelMensagemPadrao;
  end;

implementation

{ TModelMensagemPadraoParams }

function TModelMensagemPadraoParams.&End: iModelMensagemPadrao;
begin
  Result := FParent;
end;

constructor TModelMensagemPadraoParams.Create(Parent : iModelMensagemPadrao);
begin
  FParent := Parent;
  FCaminho := ExtractFilePath(ParamStr(0));
end;

destructor TModelMensagemPadraoParams.Destroy;
begin

  inherited;
end;

function TModelMensagemPadraoParams.Icone(
  aValue: TIcone): iModelMensagemPadraoParams;
begin
  Result := Self;

  case aValue of
    iAlerta:   FIcone := FCaminho + '..\Icons\Alerta.png';
    iAtencao:  FIcone := FCaminho + '..\Icons\Atencao.png';
    iErro:     FIcone := FCaminho + '..\Icons\Erro.png';
    iJoia:     FIcone := FCaminho + '..\Icons\Joia.png';
    iMensagem: FIcone := FCaminho + '..\Icons\Mensagem.png';
    iPergunta: FIcone := FCaminho + '..\Icons\Pergunta.png';
  end;
end;

function TModelMensagemPadraoParams.Icone: string;
begin
  Result := FIcone;
end;

function TModelMensagemPadraoParams.Mensagem: String;
begin
  Result := FMensagem;
end;

function TModelMensagemPadraoParams.Mensagem(
  aValue: String): iModelMensagemPadraoParams;
begin
  Result := Self;
  FMensagem := aValue;
end;

class function TModelMensagemPadraoParams.New(Parent : iModelMensagemPadrao): iModelMensagemPadraoParams;
begin
  Result := Self.Create(Parent);
end;

function TModelMensagemPadraoParams.Pergunta: String;
begin
  Result := FPergunta;
end;

function TModelMensagemPadraoParams.Pergunta(
  aValue: String): iModelMensagemPadraoParams;
begin
  Result := Self;
  FPergunta := aValue;
end;

function TModelMensagemPadraoParams.Tipo: TTipo;
begin
  Result := FTipo;
end;

function TModelMensagemPadraoParams.Tipo(
  aValue: TTipo): iModelMensagemPadraoParams;
begin
  Result := Self;
  FTipo := aValue;
end;

function TModelMensagemPadraoParams.TituloMsg(
  aValue: String): iModelMensagemPadraoParams;
begin
  Result := Self;
  FTituloMsg := aValue;
end;

function TModelMensagemPadraoParams.TituloMsg: String;
begin
  Result := FTituloMsg;
end;

end.
