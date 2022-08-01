unit exemplo5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Btriangulo: TButton;
    Bsair: TButton;
    Blimpar: TButton;
    EladoA: TEdit;
    EladoB: TEdit;
    EladoC: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    MResultado: TMemo;
    procedure BtrianguloClick(Sender: TObject);
    procedure BsairClick(Sender: TObject);
    procedure BlimparClick(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.BsairClick(Sender: TObject);
begin
  close;
end;

procedure TForm1.BtrianguloClick(Sender: TObject);
Var
  a : double;
  b : double;
  c : double;
  begin
       a := StrToFloat(EladoA.text);
       b := StrToFloat(EladoB.text);
       c := StrToFloat(EladoC.text);
       if ((A<(B+C)) and (B<(A+C)) and (C<(A+B)))
        then
         if ((A=B) and (B=C))
          then MResultado.Lines.Add('Triângulo Equilátero')
          else
            if ((A=B) and (B=C)) or (C=A)
                 then MResultado.Lines.Add('Triângulo Isóceles')
                 else MResultado.Lines.Add('Triângulo Escaleno')
         else MResultado.Lines.Add('As medidasa não formam Triângulo');
end;

procedure TForm1.BlimparClick(Sender: TObject);
begin
     EladoA.Text:='';
     EladoB.Text:='';
     EladoC.Text:='';
     MResultado.Lines.Clear;

end;

end.

