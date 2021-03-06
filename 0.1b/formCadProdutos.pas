unit formCadProdutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cadProdutos, StdCtrls;

type
  TfCadProduto = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadProduto: TfCadProduto;

implementation

{$R *.dfm}

procedure TfCadProduto.Button1Click(Sender: TObject);
var
  dadosProduto : TProduto;

begin
  dadosProduto := TProduto.create(StrToInt(Edit1.Text), Edit2.Text,
                                  Edit3.Text, StrToFloat(Edit4.Text));
  showMessage('Produto cadastrado!');
end;

procedure TfCadProduto.Button2Click(Sender: TObject);
begin
  fCadProduto.Close;
end;

end.
