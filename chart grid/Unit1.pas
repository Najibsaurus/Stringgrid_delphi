unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  Buttons;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    ComboBox1: TComboBox;
    StringGrid1: TStringGrid;
    Edit1: TEdit;
    BitBtn1: TBitBtn;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
StringGrid1.Cells[0,0]:='Fakultas';
StringGrid1.Cells[1,0]:='Jumlah';
StringGrid1.Cells[0,1]:='Teknik Informatika';
StringGrid1.Cells[0,2]:='Biologi';
StringGrid1.Cells[0,3]:='Kimia';
StringGrid1.Cells[0,4]:='Fisika';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
stringgrid1.Cells[1,combobox1.ItemIndex+1]:=Edit1.Text;
Edit1.Clear;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var i: integer;
begin
for i:=1 to stringgrid1.rowcount-1 do
chart1.Series[0].Add(strtofloat(stringgrid1.cells[1,i]),stringgrid1.cells[0,i]);
end;

end.
