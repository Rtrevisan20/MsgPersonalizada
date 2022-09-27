unit MSG.Controller;

interface

uses
  MSG.Controller.Interfaces, MSG.Model.Utils.Interfaces,
  MSG.Model.Utils.Mensagem;

type
  TController = class(TInterfacedObject, iController)
  private
    FMensagemPadrao : iModelMensagemPadrao;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iController;
    function MensagemPadrao : iModelMensagemPadrao;
  end;

implementation

{ TController }

constructor TController.Create;
begin

end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.MensagemPadrao: iModelMensagemPadrao;
begin
  if not Assigned(FMensagemPadrao) then
    FMensagemPadrao := TModelMensagemPadrao.New;
  Result := FMensagemPadrao;
end;

class function TController.New: iController;
begin
  Result := Self.Create;
end;

end.
