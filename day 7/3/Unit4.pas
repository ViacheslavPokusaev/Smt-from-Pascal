unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs;

type
  TForm4 = class(TForm)
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit5;

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
Form4.Width:=300;
Form4.Height:=300;
Form4.Color:=clred;
ShowHint:=True;
Hint:='Это окно №4';
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Showmessage('Закрывается четвертое окно');
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
Form5.Caption:='Неактивно';
end;

procedure TForm4.FormDblClick(Sender: TObject);
begin
Form4.Width:=Width-40;
 Form4.Height:=Height-40;
 Form4.Left:=Left+200;
end;

end.
