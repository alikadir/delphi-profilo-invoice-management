unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, Grids, DBGrids, DB, ADODB,
  ExtCtrls, ComCtrls, QuickRpt, QRCtrls;

type
  TForm1 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    yenipanel: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    onay: TBitBtn;
    iptal: TBitBtn;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Edit6: TEdit;
    yaz: TBitBtn;
    yeni: TBitBtn;
    sil: TBitBtn;
    DateTimePicker1: TDateTimePicker;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    tarihara: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit7: TEdit;
    Panel1: TPanel;
    Memo1: TMemo;
    duzenle: TBitBtn;
    duzenonay: TBitBtn;
    QuickRep1: TQuickRep;
    DateTimePicker4: TDateTimePicker;
    TitleBand1: TQRBand;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    PageFooterBand1: TQRBand;
    procedure FormCreate(Sender: TObject);
    procedure yeniClick(Sender: TObject);
    procedure silClick(Sender: TObject);
    procedure onayClick(Sender: TObject);
    procedure iptalClick(Sender: TObject);
    procedure duzenleClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6Change(Sender: TObject);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7Change(Sender: TObject);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure duzenonayClick(Sender: TObject);
    procedure tariharaClick(Sender: TObject);
    procedure yazClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  btus,btus2:boolean;
implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
yenipanel.Visible:=false;
end;

procedure TForm1.yeniClick(Sender: TObject);
begin
edit6.Enabled:=false;
edit7.Enabled:=false;
datetimepicker2.Enabled:=false;
datetimepicker3.Enabled:=false;
tarihara.Enabled:=false;
dbgrid1.Enabled:=false;

edit1.Text:='';
edit2.Text:='';
edit3.text:='';
edit4.text:='';
edit5.text:='';
memo1.text:='';
datetimepicker1.DateTime:=now;

duzenonay.Visible:=false;
onay.Visible:=true;

yenipanel.Visible:=true;
end;

procedure TForm1.silClick(Sender: TObject);
begin
if
messagedlg('Silmek İstediğinizden Eminmisiniz ?',mtconfirmation,[mbyes,mbno],0) = mryes
then
begin
adoquery1.Delete;
adoquery1.Refresh;
end;
end;

procedure TForm1.onayClick(Sender: TObject);
begin
if not(edit1.Text = '') then
begin
adoquery1.Insert;
dbedit1.Text:=edit1.text;
dbedit2.Text:=edit2.text;
dbedit3.text:=edit3.text;
dbedit4.text:=edit4.text;
dbedit5.text:=edit5.text;
dbedit6.text:=memo1.text;
dbedit7.text:=datetostr(datetimepicker1.DateTime);
adoquery1.Post;
adoquery1.Refresh;

edit6.Enabled:=true;
edit7.Enabled:=true;
datetimepicker2.Enabled:=true;
datetimepicker3.Enabled:=true;
tarihara.Enabled:=true;
dbgrid1.Enabled:=true;

yenipanel.Visible:=false;

end
else
showmessage ('Malzeme Kodunu Giriniz !! ');
end;

procedure TForm1.iptalClick(Sender: TObject);
begin
edit1.Text:='';
edit2.Text:='';
edit3.text:='';
edit4.text:='';
edit5.text:='';
memo1.text:='';

edit6.Enabled:=true;
edit7.Enabled:=true;
datetimepicker2.Enabled:=true;
datetimepicker3.Enabled:=true;
tarihara.Enabled:=true;
dbgrid1.Enabled:=true;

yenipanel.Visible:=false;
end;

procedure TForm1.duzenleClick(Sender: TObject);
begin
edit1.Text:=dbedit1.text;
edit2.Text:=dbedit2.text;
edit3.text:=dbedit3.text;
edit4.text:=dbedit4.text;
edit5.text:=dbedit5.text;
memo1.text:=dbedit6.text;
datetimepicker1.DateTime:=strtodate(dbedit7.text);
yenipanel.Visible:=true;
onay.Visible:=false;
duzenonay.Visible:=true;

edit6.Enabled:=false;
edit7.Enabled:=false;
datetimepicker2.Enabled:=false;
datetimepicker3.Enabled:=false;
tarihara.Enabled:=false;
dbgrid1.Enabled:=false;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key>='0') and (key<='9') or (key=#8) or (key=#13)
then
begin
key:=key;
end
else
key:=chr(0);

end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
if (key>='0') and (key<='9') or (key=#8) or (key=#13)
then
begin
key:=key;
end
else
key:=chr(0);

end;

procedure TForm1.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if (key>='0') and (key<='9') or (key=#8) or (key=#13)
then
begin
key:=key;
end
else
key:=chr(0);

end;

procedure TForm1.Edit6Change(Sender: TObject);
var
smetin,sbulunan:string;
secimuz:integer;
begin
if not (dbedit1.text='') then
begin
if btus=true then
begin
btus:=false;
exit;
end;
adoquery1.Locate('mazemeadı',edit6.Text,[lopartialkey,locaseinsensitive]);
smetin:=edit6.text;
sbulunan:=adoquery1.fieldvalues['mazemeadı'];
secimuz:=length(sbulunan) - length(smetin);
if secimuz > 0 then
begin
edit6.text:=sbulunan;
edit6.selstart:=length(smetin);
edit6.sellength:=secimuz;
end;
end
else
showmessage('Veritabanında Kayıtlı Ürün Yok !!');
end;

procedure TForm1.Edit6KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key = VK_DELETE) or (key = VK_BACK) then
btus:=true;
end;

procedure TForm1.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
begin
if (key>='0') and (key<='9') or (key=#8) or (key=#13)
then
begin
key:=key;
end
else
key:=chr(0);

end;
end;

procedure TForm1.Edit7Change(Sender: TObject);
var
smetin,sbulunan:string;
secimuz:integer;
begin
if not (dbedit1.text='') then
begin
if btus2=true then
begin
btus2:=false;
exit;
end;
adoquery1.Locate('mazemekodu',edit7.Text,[lopartialkey,locaseinsensitive]);
smetin:=edit7.text;
sbulunan:=adoquery1.fieldvalues['mazemekodu'];
secimuz:=length(sbulunan) - length(smetin);
if secimuz > 0 then
begin
edit7.text:=sbulunan;
edit7.selstart:=length(smetin);
edit7.sellength:=secimuz;
end;
end
else
showmessage('Veritabanında Kayıtlı Ürün Yok !!');
end;

procedure TForm1.Edit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

if (key = VK_DELETE) or (key = VK_BACK) then
btus2:=true;
end;


procedure TForm1.duzenonayClick(Sender: TObject);

begin
if not(edit1.Text = '') then
begin
adoquery1.edit;
dbedit1.Text:=edit1.text;
dbedit2.Text:=edit2.text;
dbedit3.text:=edit3.text;
dbedit4.text:=edit4.text;
dbedit5.text:=edit5.text;
dbedit6.text:=memo1.text;
dbedit7.text:=datetostr(datetimepicker1.DateTime);
adoquery1.Post;
adoquery1.Refresh;

edit6.Enabled:=true;
edit7.Enabled:=true;
datetimepicker2.Enabled:=true;
datetimepicker3.Enabled:=true;
tarihara.Enabled:=true;
dbgrid1.Enabled:=true;

yenipanel.Visible:=false;

end
else
showmessage ('Malzeme Kodunu Giriniz !! ');
end;


procedure TForm1.tariharaClick(Sender: TObject);
begin
adoquery1.SQL.Clear;
adoquery1.SQL.add('select * from borduro');
adoquery1.SQL.Add('where tarih >= tr1 and tarih <= tr2');
adoquery1.Parameters.ParamByName('tr1').Value:=datetostr(datetimepicker2.DateTime);
adoquery1.Parameters.ParamByName('tr2').Value:=datetostr(datetimepicker2.DateTime);
adoquery1.Open;
end;

procedure TForm1.yazClick(Sender: TObject);
begin
qrlabel3.Caption:=datetostr(datetimepicker4.DateTime);







quickrep1.Preview;
end;

end.
