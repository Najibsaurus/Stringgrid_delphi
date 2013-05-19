unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  n:integer;
implementation

{$R *.dfm}



procedure TForm1.FormCreate(Sender: TObject);

begin
  n:=1;
  Stringgrid1.Cells[0,0]:='No';
  Stringgrid1.Cells[1,0]:='Nama';
  Stringgrid1.Cells[2,0]:='Asal';
  Stringgrid1.Cells[3,0]:='Prodi';
  Stringgrid1.Cells[4,0]:='Hobi';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Stringgrid1.Cells[1,n]:=Edit1.Text;
  Stringgrid1.Cells[2,n]:=Edit2.Text;
  Stringgrid1.Cells[3,n]:=Edit3.Text;
  Stringgrid1.Cells[4,n]:=Edit4.Text;
  Stringgrid1.Cells[0,n]:=IntToStr(n);
  n:=n+1;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit1.SetFocus;
  end;

end.


