program MSG;

uses
  Vcl.Forms,
  MSG.View.Main in 'view\MSG.View.Main.pas' {MSGMain},
  MSG.Model.Utils.Mensagem.Params in 'model\MensagemPadrao\MSG.Model.Utils.Mensagem.Params.pas',
  MSG.Model.Utils.Mensagem in 'model\MensagemPadrao\MSG.Model.Utils.Mensagem.pas',
  RVM.View.Mensagem in 'view\MensagemPadrao\RVM.View.Mensagem.pas' {Mensagem},
  MSG.Utils.Enumerados in 'model\MSG.Utils.Enumerados.pas',
  MSG.Model.Utils.Interfaces in 'model\MensagemPadrao\MSG.Model.Utils.Interfaces.pas',
  MSG.Controller.Interfaces in 'controller\MSG.Controller.Interfaces.pas',
  MSG.Controller in 'controller\MSG.Controller.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMSGMain, MSGMain);
  Application.Run;
end.
