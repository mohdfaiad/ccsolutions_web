unit ufrm_main;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Vcl.Controls,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompExtCtrls,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, IWCompButton,
  IWCompLabel, IWCompEdit, cxGraphics, Vcl.Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  Tfrm_main = class(TIWAppForm)
    IWRegion1: TIWRegion;
    edtNome: TIWEdit;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    edtEmail: TIWEdit;
    IWLabel3: TIWLabel;
    edtTel1: TIWEdit;
    IWLabel4: TIWLabel;
    edtUsuario: TIWEdit;
    IWLabel5: TIWLabel;
    edtSenha: TIWEdit;
    IWLabel6: TIWLabel;
    edtDtNasc: TIWEdit;
    IWLabel7: TIWLabel;
    btnRegistrar: TIWButton;
    btnCancelar: TIWButton;
    edtSobrenome: TIWEdit;
    strproc_register: TFDStoredProc;
    procedure btnRegistrarClick(Sender: TObject);
  public
  end;

implementation

{$R *.dfm}

uses UserSessionUnit;

procedure Tfrm_main.btnRegistrarClick(Sender: TObject);
var
  clear: integer;
begin
  try
    strproc_register.Prepare;
    strproc_register.Params[0].Value := edtNome.Text;
    strproc_register.Params[1].Value := edtSobrenome.Text;
    strproc_register.Params[2].Value := edtEmail.Text;
    strproc_register.Params[3].Value := edtTel1.Text;
    strproc_register.Params[4].Value := edtUsuario.Text;
    strproc_register.Params[5].Value := edtSenha.Text;
    strproc_register.Params[6].Value := StrToDate(edtDtNasc.Text);
    strproc_register.ExecProc;
    WebApplication.ShowMessage('Cadastro realizado com sucesso!');

    edtNome.Text := '';
    edtSobrenome.Text := '';
    edtEmail.Text := '';
    edtTel1.Text := '';
    edtUsuario.Text := '';
    edtSenha.Text := '';
    edtDtNasc.Text := 'DD/MM/YYYY';
  except
    on E: Exception do
      WebApplication.ShowMessage('Erro: ' + E.Message);
  end;
end;

initialization

Tfrm_main.SetAsMainForm;

end.
