unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Unit2;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit1;

procedure TForm3.DBGrid1DblClick(Sender: TObject);
begin
  if not dm.FDQuery1.IsEmpty then
  begin
    Form1.edtcodigo.text         :=  dm.FDQuery1.fieldbyname('id').asstring;
    Form1.edtnome.text           :=  dm.FDQuery1.fieldbyname('nome').asstring;
    Form1.edtdocumento.text      :=  dm.FDQuery1.fieldbyname('documento').asstring;
    close;
  end;

end;

procedure TForm3.FormShow(Sender: TObject);
begin
  {Insere um novo registro}
  dm.FDQuery1.close;
  dm.FDQuery1.sql.clear;
  dm.FDQuery1.sql.add('select * from clientes ');

  dm.FDQuery1.open;
end;

end.
