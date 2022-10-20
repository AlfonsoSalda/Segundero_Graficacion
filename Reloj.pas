unit Reloj;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  angulo: integer;

implementation

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
var
seg:array[1..4] of Tpoint;
i:integer;
xaux,yaux,alpha:real;
begin
Edit1.Text:=TimeToStr(time);
Edit2.Text:=DateToStr(Date);

seg[1]:=Point(-1,0);
seg[2].X:=0;
seg[2].Y:=1;
seg[3]:=Point(1,0);
seg[4]:=Point(0,-10);

for i := 1 to 4 do
  begin
    seg[i].X:=seg[i].X*8;
    seg[i].Y:=seg[i].Y*8;
  end;

  alpha:=(angulo*PI)/180.0;

  for I := 1 to 4 do
    begin
      xaux:=seg[i].X*cos(-alpha)+seg[i].Y*sin(-alpha);
      yaux:=seg[i].X*sin(-alpha)+seg[i].Y*cos(-alpha);
      seg[i].X:=round(xaux);
      seg[i].Y:=round(yaux);
    end;

    for I := 1 to 4 do
      begin
        seg[i].X:=seg[i].X+125;
        seg[i].Y:=seg[i].Y+125;
      end;

      image1.Canvas.Rectangle(-1,-1,251,251);
      Image1.Canvas.Brush.color:=clred;
      image1.Canvas.Polygon(seg);
      Image1.Canvas.Brush.Color:=clWhite;



      angulo:=angulo+6;

end;

end.
