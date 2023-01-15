﻿unit U_MAIN;

interface

uses
	Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
	System.Classes, Vcl.Graphics,
	Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus, ClipBrd,
	System.Actions, Vcl.ActnList, Vcl.AxCtrls, Vcl.OleCtrls, TTF160_TLB;

type
	TForm1 = class(TForm)
		t: TLabel;
		Label1: TLabel;
		Label2: TLabel;
		Label3: TLabel;
		Label4: TLabel;
		Label5: TLabel;
		Label7: TLabel;
		Label8: TLabel;
		Label9: TLabel;
		Label6: TLabel;
		Label13: TLabel;
		Label10: TLabel;
		Label11: TLabel;
		Label12: TLabel;
		Label14: TLabel;
		Label15: TLabel;
		Label16: TLabel;
		Label17: TLabel;
		Label18: TLabel;
		Label19: TLabel;
		Label20: TLabel;
		Label21: TLabel;
		Label22: TLabel;
		Label23: TLabel;
		ted_l1: TEdit;
		ted_l2: TEdit;
		ted_b: TEdit;
		ted_h: TEdit;
		ted_san1: TEdit;
		ted_h1: TEdit;
		ted_h2: TEdit;
		ted_h3: TEdit;
		ted_b1: TEdit;
		ted_b2: TEdit;
		ted_b3: TEdit;
		ted_san2: TEdit;
		ted_san3: TEdit;
		btn_tinh: TButton;
		btn_hoattai: TButton;
		cbb_sodo: TComboBox;
		Label24: TLabel;
		MainMenu1: TMainMenu;
		File1: TMenuItem;
		File2: TMenuItem;
		N1: TMenuItem;
		Exit1: TMenuItem;
		ted_made: TEdit;
		Label25: TLabel;
		cb_made: TCheckBox;
		btn_made: TButton;
    rdb_auto: TRadioButton;
    rdb_nhap: TRadioButton;
    Label26: TLabel;
		procedure btn_tinhClick(Sender: TObject);
		procedure btn_hoattaiClick(Sender: TObject);
		procedure File2Click(Sender: TObject);
		procedure Exit1Click(Sender: TObject);
		procedure cb_madeClick(Sender: TObject);
		procedure btn_madeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rdb_nhapClick(Sender: TObject);
    procedure rdb_autoClick(Sender: TObject);
	private
		{ Private declarations }
     l1_made:TArray<String>;
  l1_solieu:TArray<String>;
  l2_made:TArray<String>;
  l2_solieu:TArray<String>;
  b_made:TArray<String>;
  b_solieu:TArray<String>;

	public
		{ Public declarations }
	end;

var
	Form1: TForm1;

implementation

{$R *.dfm}

uses U_BIEN, U_TINHTOAN, U_TINHTAI, U_HOATTAI, U_HOATTAI1, U_TINHTAI1;

procedure TForm1.btn_hoattaiClick(Sender: TObject);
begin
	if (cbb_sodo.Text = 'Sơ đồ 1') then
	begin
		dulieuvao;
		hoattai(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, ghl, gm, gtx1, gtx2,
			ps, phl, pm);
		Form3.ted_P1.Text := ht1_P1.ToString;
		Form3.ted_P2.Text := ht1_P2.ToString;
		Form3.ted_Pa.Text := ht1_Pa.ToString;
		Form3.ted_Pc.Text := ht1_Pc.ToString;
		Form3.ted_P1m.Text := ht2_P1m.ToString;
		Form3.ted_P2m.Text := ht1_P2m.ToString;
		Form3.ted_Pam.Text := ht1_Pam.ToString;
		Form3.ted_Pcm.Text := ht1_Pcm.ToString;
		Form3.ted_P12.Text := ht2_P1.ToString;
		Form3.ted_P22.Text := ht2_P2.ToString;
		Form3.ted_Pa2.Text := ht2_Pa.ToString;
		Form3.ted_Pc2.Text := ht2_Pc.ToString;
		Form3.ted_Pam2.Text := ht2_Pam.ToString;
		Form3.ted_Pcm2.Text := ht2_Pcm.ToString;
		Form3.Show;
	end
	else
	begin
		dulieuvao;
		hoattai(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, gs, gm, gtx1, gtx2,
			ps, phl, pm);
		Form5.ted_P1.Text := ht1_P1.ToString;
		Form5.ted_P2.Text := ht1_P2.ToString;
		Form5.ted_Pa.Text := ht1_Pa.ToString;
		Form5.ted_Pc.Text := ht1_Pc.ToString;
		Form5.ted_P1m.Text := ht2_P1m.ToString;
		Form5.ted_P2m.Text := ht1_P2m.ToString;
		Form5.ted_Pam.Text := ht1_Pam.ToString;
		// Form3.ted_Pcm.Text :=ht1_Pcm.ToString ;
		Form5.ted_P12.Text := ht2_P1.ToString;
		Form5.ted_P22.Text := ht2_P2.ToString;
		Form5.ted_Pa2.Text := ht2_Pa.ToString;
		Form5.ted_Pc2.Text := ht2_Pc.ToString;
		// Form3.ted_Pam2.Text :=ht2_Pam.ToString ;
		Form5.ted_Pcm2.Text := ht2_Pcm.ToString;
		Form5.Show;
	end;
end;

procedure TForm1.btn_madeClick(Sender: TObject);
var
i:integer;

begin
	if ted_made.Text = ''  then
	begin
		Application.MessageBox('Vui lòng nhập mã đề', 0, 0)
	end
//  else  if length(ted_made.Text) <> 6 then
//    begin
//         	Application.MessageBox('Vui lòng nhập lại mã đề', 0, 0) ;
//          ted_made.Text := '';
//    end
	else
	begin
      //Tách mã đề

      //Sơ đồ
        if Copy(ted_made.Text	,1,2) = 'II'  then
        begin
          cbb_sodo.ItemIndex :=1;
          ted_h.Text :='3.6'   ;
        end
        else if Copy(ted_made.Text	,1,1) = 'I' then
        begin
          cbb_sodo.ItemIndex :=0;
           ted_h.Text :='3.9'   ;
        end;

      //Nhịp L1
      for i := 0 to length(l1_made)-1	 do
       begin
        if Copy(ted_made.Text	,length(ted_made.Text)-4,1) = l1_made[i] then
        begin
                ted_l1.Text := l1_solieu[i];
                break;
        end
       end;

//               ShowMessage(Copy(ted_made.Text	,length(ted_made.Text)-3,1));
        //Nhịp L2
        for i := 0 to length(l2_made)-1	 do
       begin
        if Copy(ted_made.Text	,length(ted_made.Text)-3,1) = l2_made[i] then
        begin
                ted_l2.Text := l2_solieu[i];
                break;
        end
       end;

       //Bước khung B
       for i := 0 to length(b_made)-1	 do
       begin
        if Copy(ted_made.Text	,length(ted_made.Text)-2,1) = b_made[i] then
        begin
                ted_b.Text := b_solieu[i];
                break;
        end
       end;



	end;
end;

procedure TForm1.btn_tinhClick(Sender: TObject);
begin
	if (cbb_sodo.Text = 'Sơ đồ 1') then
	begin
		dulieuvao;
		tinh(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, ghl, gm, gtx1, gtx2, ps, phl,
			pm, htab, htbc);
		Form2.ted_g1.Text := g1.ToString;
		Form2.ted_g2.Text := g2.ToString;
		Form2.ted_Ga.Text := Ga.ToString;
		Form2.ted_Gb.Text := Gb.ToString;
		Form2.ted_Gc.Text := Gc.ToString;
		Form2.ted_g1m.Text := g1m.ToString;
		Form2.ted_g2m.Text := g2m.ToString;
		Form2.ted_Gam.Text := Gam.ToString;
		Form2.ted_Gbm.Text := Gbm.ToString;
		Form2.ted_Gcm.Text := Gcm.ToString;
		Form2.Show;
	end
	else
	begin
		dulieuvao;
		tinh(l1, l2, b, h, b1, h1, b2, h2, b3, h3, gs, gs, gm, gtx1, gtx2, ps,
			phl, pm, 0, 0);
		Form4.ted_g1.Text := g1.ToString;
		Form4.ted_g2.Text := g2.ToString;
		Form4.ted_Ga.Text := Ga.ToString;
		Form4.ted_Gb.Text := Gb.ToString;
		Form4.ted_g1m.Text := g1m.ToString;
		Form4.ted_g2m.Text := g2m.ToString;
		Form4.ted_Gam.Text := Gam.ToString;
		Form4.ted_Gbm.Text := Gbm.ToString;
		Form4.Show;
	end;
end;

procedure TForm1.cb_madeClick(Sender: TObject);
begin
	if cb_made.Checked = True then
	begin
		ted_made.Enabled := True;
		btn_made.Enabled := True;

		ted_l1.Enabled := false;
		ted_l2.Enabled := false;
		ted_b.Enabled := false;
		ted_h.Enabled := false;

		cbb_sodo.Enabled := false;
	end
	else
	begin
  ted_made.Text := '';
		ted_made.Enabled := false;
		btn_made.Enabled := false;

		ted_l1.Enabled := True;
		ted_l2.Enabled := True;
		ted_b.Enabled := True;
		ted_h.Enabled := True;

		cbb_sodo.Enabled := True;
	end;
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
	Form1.Close;
end;

procedure TForm1.File2Click(Sender: TObject);
var
	ClipBrdData: TStrings;
	i: Integer;
	SplittedData: TArray<String>;
	bhdl: TArray<String>;
	bhdn: TArray<String>;
	bhdp: TArray<String>;
begin

	try
		ClipBrdData := TStringList.Create;
		ClipBrdData.Text := Clipboard.AsText;
		for i := 0 to Pred(ClipBrdData.Count) do
		begin
			SplittedData := ClipBrdData.Strings[i].Split([Chr(9)]);
			if Length(SplittedData) = 11 then
			begin
				try
					ted_l1.Text := SplittedData[0];
					ted_l2.Text := SplittedData[1];
					ted_b.Text := SplittedData[2];
					ted_san1.Text := (SplittedData[6].ToInteger() / 100).ToString;
					ted_san2.Text := (SplittedData[7].ToInteger() / 100).ToString;
					bhdl := SplittedData[8].Split(['x']);
					bhdn := SplittedData[9].Split(['x']);
					bhdp := SplittedData[10].Split(['x']);
					ted_h1.Text := (bhdl[0].ToInteger() / 1000).ToString;
					ted_b1.Text := (bhdl[1].ToInteger() / 1000).ToString;
					ted_h2.Text := (bhdn[0].ToInteger() / 1000).ToString;
					ted_b2.Text := (bhdn[1].ToInteger() / 1000).ToString;
					ted_h3.Text := (bhdp[0].ToInteger() / 1000).ToString;
					ted_b3.Text := (bhdp[1].ToInteger() / 1000).ToString;
				except
					raise;
				end;
			end
			else
			begin
				Application.MessageBox('Chon lai du lieu dau vao', 0, 0);
			end;

		end;

	finally
		ClipBrdData.Free;
	end;

end;

procedure TForm1.FormShow(Sender: TObject);

var
  Txt: TextFile;
  s: string;
  text: string;
  i:integer;
  solieu:TArray<String>;

begin

  text := '';
  AssignFile(Txt,ExtractFilePath(ParamStr(0)) + '\dulieumade.txt');
  Reset(Txt);
  while not Eof(Txt) do
  begin
    Readln(Txt, s);
    text:='';
    text := text + s;
        if   text = 'L1' then
        begin
                Readln(Txt, s);
                text:='';
                text := text + s;
               l1_made:= text.Split(['|']);
                Readln(Txt, s);
                text:='';
                text := text + s;
               l1_solieu:= text.Split(['|']);
        end
        else  if   text = 'L2' then
        begin
                    Readln(Txt, s);
                text:='';
                text := text + s;
               l2_made:= text.Split(['|']);
                Readln(Txt, s);
                text:='';
                text := text + s;
               l2_solieu:= text.Split(['|']);
        end
         else  if   text = 'B' then
        begin
                    Readln(Txt, s);
                text:='';
                text := text + s;
               b_made:= text.Split(['|']);
                Readln(Txt, s);
                text:='';
                text := text + s;
               b_solieu:= text.Split(['|']);
        end;


  end;
  CloseFile(Txt);

//      for i := 0 to length(l1_made)-1	 do
//       begin
//                    ShowMessage(l1_made[i]) ;
//       end;
//         for i := 0 to length(l1_solieu)-1	 do
//       begin
//                    ShowMessage(l1_solieu[i]) ;
//       end;
//
//           for i := 0 to length(l2_made)-1	 do
//       begin
//                    ShowMessage(l2_made[i]) ;
//       end;
//           for i := 0 to length(l2_solieu)-1	 do
//       begin
//                    ShowMessage(l2_solieu[i]) ;
//       end;
//         for i := 0 to length(b_made)-1	 do
//       begin
//                    ShowMessage(b_made[i]) ;
//       end;
//           for i := 0 to length(b_solieu)-1	 do
//       begin
//                    ShowMessage(b_solieu[i]) ;
//       end;



end;

procedure TForm1.rdb_autoClick(Sender: TObject);
begin
rdb_nhap.Checked :=false;
ted_san1.Enabled := false;
		ted_h1.Enabled := false;
		ted_h2.Enabled := false;
		ted_h3.Enabled := false;
		ted_b1.Enabled := false;
		ted_b2.Enabled := false;
		ted_b3.Enabled := false;
		ted_san2.Enabled := false;
		ted_san3.Enabled := false;

end;

procedure TForm1.rdb_nhapClick(Sender: TObject);
begin
     rdb_auto.Checked :=false;
     ted_san1.Enabled := True;
		ted_h1.Enabled := True;
		ted_h2.Enabled := True;
		ted_h3.Enabled := True;
		ted_b1.Enabled := True;
		ted_b2.Enabled := True;
		ted_b3.Enabled := True;
		ted_san2.Enabled := True;
		ted_san3.Enabled := True;
end;

end.
