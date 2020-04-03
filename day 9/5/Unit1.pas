unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Edit1: TEdit;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
edit1.Text:=datetimetostr(now);
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
edit1.clear;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
form1.visible:=false;
form2.visible:=true;
Timer2.Interval:=0;
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key=32 then begin
form1.visible:=false;
form2.visible:=true;
timer2.interval:=0 end;
end;

end.
