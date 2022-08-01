unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.BitBtn1Click(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var
  C, F : double;
begin
  C := StrToFloat(Egraus.Text);
  F := 1.8*C+32;
  EgrausF.Text := FloatToStr(F);

end;

procedure TForm1.Button2Click(Sender: TObject);
var
  F, C : double;
begin
  F := StrtoFloat(EgrausF.Text);
  C := 5/9*(F-32);
  EgrausC.Text := FloatToStr(C);

end;

end.

