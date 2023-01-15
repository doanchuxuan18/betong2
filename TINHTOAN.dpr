program TINHTOAN;

uses
  Vcl.Forms,
  U_MAIN in 'U_MAIN.pas' {Form1} ,
  U_BIEN in 'U_BIEN.pas',
  U_TINHTOAN in 'U_TINHTOAN.pas',
  U_TINHTAI in 'U_TINHTAI.pas' {Form2} ,
  U_HOATTAI in 'U_HOATTAI.pas' {Form3} ,
  U_TINHTAI1 in 'U_TINHTAI1.pas' {Form4} ,
  U_HOATTAI1 in 'U_HOATTAI1.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;

end.
