unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Unit2, Data.DB;

type
  TForm1 = class(TForm)
    edtcodigo: TDBEdit;
    edtnome: TDBEdit;
    edtdocumento: TDBEdit;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    procedure Ola(sNome: string);
    function OlaMundo(sNome: string): String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure TForm1.Button1Click(Sender: TObject);
begin
 Ola('Clebson');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    ShowMessage(OlaMundo('Samuel'));
end;

Procedure TForm1.Ola(sNome : string);
begin
  ShowMessage('Olá eu sou o '+sNome);
end;

Function Tform1.OlaMundo(sNome : string) : String;
begin
   result := 'Olá eu sou o '+sNome;
end;
end.
