unit ufrm_dm;

interface

uses
  System.SysUtils,
  System.Classes,

  Data.DB,

  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  FireDAC.Comp.UI;

type
  Tfrm_dm = class(TDataModule)
    conn_ccs: TFDConnection;
    driver_mysql: TFDPhysMySQLDriverLink;
    cursor_ccs: TFDGUIxWaitCursor;
    qry_user: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dm: Tfrm_dm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
