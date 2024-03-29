unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Unit2, Data.DB, Unit3;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    edtcodigo: TEdit;
    edtnome: TEdit;
    edtdocumento: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    btngravar: TButton;
    btrexcluir: TButton;
    btnconsultar: TButton;
    btnsair: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure btnsairClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure btrexcluirClick(Sender: TObject);
    procedure btnconsultarClick(Sender: TObject);
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
procedure TForm1.btnconsultarClick(Sender: TObject);
begin
  Form3.showmodal;
end;

procedure TForm1.btngravarClick(Sender: TObject);
begin
  if trim(edtcodigo.text) = '' then
  begin
    {Insere um novo registro}
    dm.FDQuery1.close;
    dm.FDQuery1.sql.clear;
    dm.FDQuery1.sql.add('insert into clientes (nome, documento) values (:nome,:documento) ');
    dm.FDQuery1.ParamByName('nome').asstring      := edtnome.text;
    dm.FDQuery1.ParamByName('documento').asstring := edtdocumento.text;
    dm.FDQuery1.execute;
  end
  else
  begin
    {Grava um registro ja existente}
    dm.FDQuery1.close;
    dm.FDQuery1.sql.clear;
    dm.FDQuery1.sql.add('update clientes set nome=:nome, documento=:documento where id=:id ');
    dm.FDQuery1.ParamByName('nome').asstring      := edtnome.text;
    dm.FDQuery1.ParamByName('documento').asstring := edtdocumento.text;
    dm.FDQuery1.ParamByName('id').asstring        := edtcodigo.text;
    dm.FDQuery1.execute;

  end;

  edtcodigo.clear;
  edtnome.clear;
  edtdocumento.clear;
end;

procedure TForm1.btnsairClick(Sender: TObject);
begin
close;
end;

procedure TForm1.btrexcluirClick(Sender: TObject);
begin
if trim(edtcodigo.text) <> '' then
  begin
    {Insere um novo registro}
    dm.FDQuery1.close;
    dm.FDQuery1.sql.clear;
    dm.FDQuery1.sql.add('delete from clientes where id = :id ');
    dm.FDQuery1.ParamByName('id').asstring        := edtcodigo.text;
    dm.FDQuery1.execute;
  end;

  edtcodigo.clear;
  edtnome.clear;
  edtdocumento.clear;
end;

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
  ShowMessage('Ol� eu sou o '+sNome);
end;

Function Tform1.OlaMundo(sNome : string) : String;
begin
   result := 'Ol� eu sou o '+sNome;
end;
end.
