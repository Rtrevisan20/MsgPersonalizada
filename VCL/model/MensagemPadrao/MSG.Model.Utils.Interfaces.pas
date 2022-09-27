unit MSG.Model.Utils.Interfaces;

interface
uses
  MSG.Utils.Enumerados, Data.DB;
type
  iModelMensagemPadraoParams = interface;
  iModelMensagemPadrao = interface
    ['{67E8CFA6-3AC5-4900-98C9-178775531C4B}']
    function ExibirMensagem: iModelMensagemPadrao;
    function Pergunta: Boolean;
    function Params: iModelMensagemPadraoParams;
  end;

  iModelMensagemPadraoParams = interface
    ['{ADA34AF2-3924-41F2-994F-5B715147FC37}']
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

end.
