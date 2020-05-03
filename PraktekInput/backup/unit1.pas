unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxKTP: TCheckBox;
    cbxIjazah: TCheckBox;
    rgJenisKelamin: TRadioGroup;
    Simpan: TButton;
    btnReset: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    procedure fromshow(Sender: TObject);
    procedure SimpanClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.SimpanClick(Sender: TObject);
begin
 Memo1.lines.Add(Edit1.text);
 if(rgJenisKelamin.ItemIndex=0)then
 begin
 memo1.lines.add('Laki-Laki');
 end
 else  if(rgJenisKelamin.ItemIndex=1)then
 begin
   memo1.lines.add('Perempuan')
 end;

 Memo1.Lines.add(cbKota.text);

 if(cbxFoto.Checked) then
   memo1.Lines.add('Foto ada');

 if(cbxKTP.Checked) then
   memo1.Lines.add('KTP ada');

 if(cbxIjazah.Checked) then
   memo1.Lines.add('Ijazah ada');
end;

procedure TForm1.fromshow(Sender: TObject);
begin
  //btnReset.Click;
  btnResetClick(Sender);
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  Edit1.text:='';
  Memo1.Clear;
  rgJenisKelamin.ItemIndex:=-1;
  cbKota.itemIndex:=-1;
  cbKota.Text:='';
  cbxFoto.Checked:=false;
  cbxKTP.Checked:=false;
  cbxIjazah.Checked:=false;
end;

end.

