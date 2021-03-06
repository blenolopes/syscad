unit formCadCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cadCliente;

type
  TfCadCliente = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadCliente: TfCadCliente;

implementation

{$R *.dfm}

procedure TfCadCliente.Button2Click(Sender: TObject);
var
  dadosCliente : TCliente;

begin
  dadosCliente := TCliente.create(Edit1.Text, Edit2.Text, Edit3.Text,
                                  Edit4.Text, Edit5.Text);
  showMessage('Cliente cadastrado');
end;

procedure TfCadCliente.Button1Click(Sender: TObject);
begin
  fCadCliente.Close;
end;

end.
