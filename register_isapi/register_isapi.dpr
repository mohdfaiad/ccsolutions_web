library register_isapi;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  IWInitISAPI,
  ServerController in '..\register\ServerController.pas' {IWServerController: TIWServerControllerBase},
  ufrm_main in '..\register\ufrm_main.pas' {frm_main: TIWAppForm},
  UserSessionUnit in '..\register\UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  ufrm_dm in '..\ufrm_dm.pas' {dm: TDataModule};

{$R *.RES}

exports
  GetExtensionVersion,
  HttpExtensionProc,
  TerminateExtension;

begin
  IWRun;
end.
