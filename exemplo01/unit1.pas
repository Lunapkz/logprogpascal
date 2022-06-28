unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    EditAltura: TEdit;
    EditBase: TEdit;
    EditArea: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure EditAlturaChange(Sender: TObject);
    procedure EditAreaChange(Sender: TObject);
    procedure EditBaseChange(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.EditBaseChange(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var

  altura : Real ;
  base   : Real ;
  area   : Real ;

begin
  //recuperação de entradas
  altura :=  StrToFloat ( EditAltura.text );
  base   :=  StrToFloat (EditBase.text) ;
  area   :=  (base * altura)/2;
  //processamento
EditArea.text := FloatToStr(area);
  //saida
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  close ;
end;

procedure TForm1.EditAlturaChange(Sender: TObject);
begin

end;

procedure TForm1.EditAreaChange(Sender: TObject);
begin

end;

end.

