unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormDblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.FormDblClick(Sender: TObject);
begin
form2.Left:=left+60;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
form1.close;
form2.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form1.visible:=false;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
form2.WindowState:=wsmaximized;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
Left:=0;
Top:=0;
end;

end.
