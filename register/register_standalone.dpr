program register_standalone;

uses
  IWRtlFix,
  IWJclStackTrace,
  IWJclDebug,
  Forms,
  IWStart,
  ufrm_main in 'ufrm_main.pas' {frm_main: TIWAppForm},
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  ufrm_dm in '..\ufrm_dm.pas' {dm: TDataModule};

{$R *.res}

begin
  TIWStart.Execute(True);
end.
