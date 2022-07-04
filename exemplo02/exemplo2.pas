unit exemplo2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Button2: TButton;
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

procedure TForm1.Button1Click(Sender: TObject);


begin

end;

procedure TForm1.BitBtn1Click(Sender: TObject);
var
  s_altura , s_base , s_area:string;
  area, base, altura : double;

begin
  //recuperação de vareizaveis
  s_altura := inputBox('Digite a altura ','valor: ', '');
 s_base := inputBox('Digite a base ','valor: ', '');

 //processamento
 base:= StrToFloat(s_base);
 altura:= StrToFloat(s_altura);

 area := base* altura /2;

 s_area := FloatToStr(area);

 // saida
 ShowMessage ( 'A área do triângulo é ' +s_area);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close;
end;

end.

