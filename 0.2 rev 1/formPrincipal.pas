unit formPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Mask, DBCtrls, Grids, DBGrids, ZAbstractTable, formPainelControle;

type
  TfmPrincipal = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPrincipal: TfmPrincipal;

implementation

{$R *.dfm}

procedure TfmPrincipal.Button1Click(Sender: TObject);
begin
  if (Edit1.Text = '') then
  begin
    showMessage('Favor, informe o nome de usu�rio!');
    Edit1.SetFocus;
    Exit;
  end;

  if (Edit2.Text = '') then
  begin
    showMessage('Favor, informe sua senha!');
    Edit2.SetFocus;
    Exit;
  end;

  ZQuery1.Close;
  ZQuery1.SQL.Clear;
  ZQuery1.SQL.Add('select login, senha from tb_usuarios where login = "' + Edit1.Text + '" and senha = "' + Edit2.Text + '"');
  ZQuery1.Open;

  if (ZQuery1.RecordCount) <> 0 then
  begin
    fmPainelControle.Show;
    fmPrincipal.Hide;
  end else
  begin
    showMessage('Acesso negado! Verifique seu usu�rio e senha!');
    Edit1.SetFocus;
  end;
end;

procedure TfmPrincipal.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Button1.Click;
end;

procedure TfmPrincipal.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    Button1.Click;
end;

end.
