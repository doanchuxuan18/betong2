unit U_TINHTAI;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    ted_g1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ted_g2: TEdit;
    Label3: TLabel;
    ted_Ga: TEdit;
    Label4: TLabel;
    ted_Gb: TEdit;
    Label5: TLabel;
    ted_Gc: TEdit;
    Label6: TLabel;
    ted_g1m: TEdit;
    ted_g2m: TEdit;
    ted_Gam: TEdit;
    ted_Gbm: TEdit;
    ted_Gcm: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    btn_thoat: TButton;
    procedure btn_thoatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses U_BIEN, U_MAIN, U_TINHTOAN, U_HOATTAI, U_HOATTAI1, U_TINHTAI1;

procedure TForm2.btn_thoatClick(Sender: TObject);
begin
  Form2.Close;
end;

end.
