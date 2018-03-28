unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Memo1: TMemo;
    Button2: TButton;
    ColorDialog1: TColorDialog;
    ScrollBar1: TScrollBar;
    ScrollBar2: TScrollBar;
    ScrollBar3: TScrollBar;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DoScrllChange(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
procedure GetColor (const col : TColor; var r,v,b : byte);
begin
    asm
    // bleu
    mov eax,col
    and eax, $00FF0000
    shr eax,16
    mov ebx,b
    mov [ebx],al
    // vert
    mov eax,col
    and eax, $0000FF00
    shr eax,8
    mov ebx,v
    mov [ebx],al
    // rouge
    mov eax,col
    and eax, $000000FF
    mov ebx,r
    mov [ebx],al
  end;
end;

function SetColor (r,v,b : byte): TColor;
begin
  Result := 0;
  asm
    xor eax,eax
    mov al,r
    xor ebx,ebx
    mov bl,v
    shl ebx,8
    add eax,ebx
    xor ebx,ebx
    mov bl,b
    shl ebx,16
    add eax,ebx
    mov Result,eax
  end;
end;

procedure DoUpdateMemo(r,v,b : byte);
begin
  with Form1 do
  begin
  memo1.Clear;
  memo1.Lines.Add('Rouge : ' +IntToStr(r))  ;
  memo1.Lines.Add('Vert : ' +IntToStr(v))  ;
  memo1.Lines.Add('Bleu : ' +IntToStr(b))  ;
  end;

end;
procedure TForm1.Button1Click(Sender: TObject);
var
  col : TColor;
  r,v,b : byte;
begin
  col := Panel1.Color;
  GetColor(col,r,v,b);
  DoUpdateMemo(r,v,b);
end;


procedure TForm1.Button2Click(Sender: TObject);
begin
  if ColorDialog1.Execute then
  Panel1.Color :=  ColorDialog1.Color;
end;

procedure TForm1.DoScrllChange(Sender: TObject);
begin
  Panel1.Color := SetColor(ScrollBar1.Position,ScrollBar2.Position,ScrollBar3.Position);
  DoUpdateMemo(ScrollBar1.Position,ScrollBar2.Position,ScrollBar3.Position);
end;

end.
