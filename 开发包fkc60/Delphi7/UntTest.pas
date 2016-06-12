{********************************************************************************
|文件名：UntTest.pas， Delphi调用演示代码                                        |
| 说明：此单元简单演示了fk_dll.dll中的所有函数的调用方法，适合我等菜鸟观摩，由于 |
|       时间关系，没有完善的地方大家可以一起研究,如果您有更新这个版本，别忘了给我|
|       一份,俺的email:273663493@QQ.com                                          |
| 编译环境：简体中文win2K pro + Delphi7                                          |
 *******************************************************************************}
unit UntTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, StdCtrls, OleCtrls, Menus,
  ShellApi, Mask, Registry, Buttons, DateUtils;

type
  TFrmTest = class(TForm)
    Panel1: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    edtPort: TLabeledEdit;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    Button7: TButton;
    Button6: TButton;
    Button2: TButton;
    Button3: TButton;
    edtRead: TEdit;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Label4: TLabel;
    RadioGroup1: TRadioGroup;
    Edit1: TEdit;
    Edit2: TEdit;
    Label6: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button8: TButton;
    Button14: TButton;
    Button15: TButton;
    Button11: TButton;
    Edit3: TEdit;
    Label5: TLabel;
    Button13: TButton;
    Button17: TButton;
    ComboBox4: TComboBox;
    Label10: TLabel;
    Button18: TButton;
    Button19: TButton;
    Edit5: TEdit;
    RadioGroup3: TRadioGroup;
    Button20: TButton;
    Edit6: TEdit;
    snrEdt: TLabeledEdit;
    bnrEdt: TLabeledEdit;
    GroupBox4: TGroupBox;
    Button38: TButton;
    Button36: TButton;
    Button34: TButton;
    Button32: TButton;
    Button30: TButton;
    Button28: TButton;
    Button26: TButton;
    Button24: TButton;
    Button22: TButton;
    Button21: TButton;
    Button23: TButton;
    Button25: TButton;
    Button27: TButton;
    Button29: TButton;
    Button31: TButton;
    Button33: TButton;
    Button35: TButton;
    Button37: TButton;
    Edit14: TEdit;
    Edit13: TEdit;
    Edit12: TEdit;
    Edit11: TEdit;
    Edit10: TEdit;
    Edit9: TEdit;
    Edit8: TEdit;
    Edit7: TEdit;
    Label8: TLabel;
    Label11: TLabel;
    GroupBox5: TGroupBox;
    Button39: TButton;
    Button40: TButton;
    Button41: TButton;
    Edit15: TEdit;
    Button42: TButton;
    Button43: TButton;
    Button44: TButton;
    Button45: TButton;
    Edit16: TEdit;
    Edit17: TEdit;
    Button46: TButton;
    Button47: TButton;
    Button48: TButton;
    MaskEdit1: TMaskEdit;
    Button49: TButton;
    Edit18: TEdit;
    Label12: TLabel;
    Button50: TButton;
    Edit19: TEdit;
    Edit20: TEdit;
    Button51: TButton;
    Button52: TButton;
    Button53: TButton;
    Button54: TButton;
    Edit21: TEdit;
    Button55: TButton;
    Button56: TButton;
    Button57: TButton;
    Button58: TButton;
    Button59: TButton;
    Bevel1: TBevel;
    Button60: TButton;
    Button61: TButton;
    Edit22: TEdit;
    Edit23: TEdit;
    Label13: TLabel;
    Label14: TLabel;
    Button62: TButton;
    Button63: TButton;
    MaskEdit2: TMaskEdit;
    Button64: TButton;
    Button65: TButton;
    Button66: TButton;
    Button67: TButton;
    Button68: TButton;
    TabSheet3: TTabSheet;
    LabMach: TLabeledEdit;
    Button69: TButton;
    Bevel2: TBevel;
    Edit24: TEdit;
    Button70: TButton;
    TabSheet4: TTabSheet;
    LabMach2: TLabeledEdit;
    Button71: TButton;
    Button72: TButton;
    Button75: TButton;
    Button76: TButton;
    Edit32: TEdit;
    Button78: TButton;
    Button79: TButton;
    Button80: TButton;
    Button81: TButton;
    Button82: TButton;
    Edit35: TEdit;
    Button83: TButton;
    Button84: TButton;
    Button85: TButton;
    MaskEdit3: TMaskEdit;
    Button88: TButton;
    Button89: TButton;
    Edit36: TEdit;
    Button90: TButton;
    Button91: TButton;
    MaskEdit4: TMaskEdit;
    Button92: TButton;
    Edit38: TEdit;
    Button93: TButton;
    Button86: TButton;
    Edit39: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    MaskEdit5: TMaskEdit;
    Edit40: TEdit;
    Label24: TLabel;
    Edit41: TEdit;
    Label25: TLabel;
    MaskEdit6: TMaskEdit;
    Label26: TLabel;
    Bevel5: TBevel;
    Edit42: TEdit;
    Label27: TLabel;
    Edit43: TEdit;
    Edit44: TEdit;
    Label28: TLabel;
    MaskEdit7: TMaskEdit;
    Label29: TLabel;
    MaskEdit8: TMaskEdit;
    Label30: TLabel;
    MaskEdit9: TMaskEdit;
    Label31: TLabel;
    MaskEdit10: TMaskEdit;
    Label32: TLabel;
    Button87: TButton;
    Edit37: TEdit;
    Label21: TLabel;
    Edit45: TEdit;
    Label33: TLabel;
    Button94: TButton;
    Label34: TLabel;
    Edit46: TEdit;
    Label35: TLabel;
    Edit47: TEdit;
    MaskEdit11: TMaskEdit;
    Label36: TLabel;
    Edit48: TEdit;
    Label37: TLabel;
    Label38: TLabel;
    Button96: TButton;
    Button97: TButton;
    Edit51: TEdit;
    Button98: TButton;
    Button99: TButton;
    Button100: TButton;
    Edit53: TEdit;
    Button101: TButton;
    Label40: TLabel;
    Label41: TLabel;
    Button102: TButton;
    Button103: TButton;
    Label45: TLabel;
    Label46: TLabel;
    Edit54: TEdit;
    Label47: TLabel;
    Edit55: TEdit;
    Label48: TLabel;
    ComboBox10: TComboBox;
    ComboBox11: TComboBox;
    ComboBox12: TComboBox;
    Label20: TLabel;
    ComboBox13: TComboBox;
    Label39: TLabel;
    Edit33: TEdit;
    Label50: TLabel;
    Label51: TLabel;
    Edit34: TEdit;
    Button110: TButton;
    Button111: TButton;
    Button112: TButton;
    Edit58: TEdit;
    Edit59: TEdit;
    Label74: TLabel;
    Label75: TLabel;
    Button113: TButton;
    Edit90: TEdit;
    Label78: TLabel;
    Label79: TLabel;
    Edit91: TEdit;
    Edit95: TEdit;
    Button117: TButton;
    Edit96: TEdit;
    ComboBox14: TComboBox;
    Label83: TLabel;
    ComboBox15: TComboBox;
    Edit97: TEdit;
    Button118: TButton;
    Label84: TLabel;
    Edit99: TEdit;
    Label88: TLabel;
    GroupBox3: TGroupBox;
    Label7: TLabel;
    ComboBox3: TComboBox;
    RadioGroup2: TRadioGroup;
    Edit4: TEdit;
    L0: TLabeledEdit;
    L1: TLabeledEdit;
    L2: TLabeledEdit;
    L3: TLabeledEdit;
    Button9: TButton;
    Button10: TButton;
    Button16: TButton;
    Button1: TButton;
    Button12: TButton;
    TabSheet5: TTabSheet;
    GroupBox6: TGroupBox;
    Label9: TLabel;
    Label49: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label87: TLabel;
    Edit56: TEdit;
    Edit57: TEdit;
    Button104: TButton;
    MaskEdit12: TMaskEdit;
    MaskEdit13: TMaskEdit;
    MaskEdit14: TMaskEdit;
    MaskEdit15: TMaskEdit;
    Edit63: TEdit;
    Edit64: TEdit;
    Edit65: TEdit;
    Edit66: TEdit;
    MaskEdit16: TMaskEdit;
    Edit67: TEdit;
    Edit68: TEdit;
    MaskEdit17: TMaskEdit;
    Edit69: TEdit;
    Edit70: TEdit;
    Edit71: TEdit;
    MaskEdit18: TMaskEdit;
    MaskEdit19: TMaskEdit;
    MaskEdit20: TMaskEdit;
    MaskEdit21: TMaskEdit;
    Edit72: TEdit;
    Edit73: TEdit;
    Edit74: TEdit;
    MaskEdit22: TMaskEdit;
    MaskEdit23: TMaskEdit;
    MaskEdit24: TMaskEdit;
    MaskEdit25: TMaskEdit;
    Edit75: TEdit;
    Edit76: TEdit;
    Edit77: TEdit;
    MaskEdit26: TMaskEdit;
    MaskEdit27: TMaskEdit;
    MaskEdit28: TMaskEdit;
    MaskEdit29: TMaskEdit;
    Edit78: TEdit;
    Edit79: TEdit;
    Edit80: TEdit;
    MaskEdit30: TMaskEdit;
    MaskEdit31: TMaskEdit;
    MaskEdit32: TMaskEdit;
    MaskEdit33: TMaskEdit;
    Button105: TButton;
    Edit81: TEdit;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    Edit82: TEdit;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Edit83: TEdit;
    Edit84: TEdit;
    Button106: TButton;
    Button107: TButton;
    ComboBox9: TComboBox;
    Edit85: TEdit;
    Edit86: TEdit;
    Edit87: TEdit;
    Button108: TButton;
    Button109: TButton;
    Edit88: TEdit;
    Edit89: TEdit;
    Button114: TButton;
    Button115: TButton;
    Edit92: TEdit;
    Edit93: TEdit;
    Edit94: TEdit;
    Button116: TButton;
    Bevel8: TBevel;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    Edit61: TEdit;
    Edit60: TEdit;
    Edit62: TEdit;
    Bevel7: TBevel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Bevel14: TBevel;
    Bevel15: TBevel;
    Label85: TLabel;
    Label86: TLabel;
    Label89: TLabel;
    Bevel16: TBevel;
    TabSheet6: TTabSheet;
    GroupBox7: TGroupBox;
    Label42: TLabel;
    Edit49: TEdit;
    Edit50: TEdit;
    Label43: TLabel;
    Button95: TButton;
    Label44: TLabel;
    Edit25: TEdit;
    Label15: TLabel;
    Label16: TLabel;
    Edit29: TEdit;
    Edit28: TEdit;
    Edit26: TEdit;
    Label17: TLabel;
    Button73: TButton;
    Button77: TButton;
    Edit27: TEdit;
    Bevel3: TBevel;
    Edit52: TEdit;
    Edit31: TEdit;
    Label18: TLabel;
    Label19: TLabel;
    Edit30: TEdit;
    Button74: TButton;
    Memo2: TMemo;
    Bevel17: TBevel;
    LabeledEdit1: TLabeledEdit;
    Button119: TButton;
    Button120: TButton;
    TabSheet7: TTabSheet;
    GroupBox8: TGroupBox;
    Button121: TButton;
    Edit101: TEdit;
    Label92: TLabel;
    Label91: TLabel;
    Edit100: TEdit;
    Edit98: TEdit;
    Label90: TLabel;
    Label93: TLabel;
    Label96: TLabel;
    Edit104: TEdit;
    Button122: TButton;
    Memo1: TMemo;
    TabSheet8: TTabSheet;
    Edit102: TEdit;
    Button123: TButton;
    RadioGroup5: TRadioGroup;
    Edit103: TEdit;
    Button124: TButton;
    ComboBox16: TComboBox;
    Label1: TLabel;
    Button125: TButton;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    L4: TLabeledEdit;
    L5: TLabeledEdit;
    L6: TLabeledEdit;
    L7: TLabeledEdit;
    L8: TLabeledEdit;
    L9: TLabeledEdit;
    L10: TLabeledEdit;
    L11: TLabeledEdit;
    L12: TLabeledEdit;
    L13: TLabeledEdit;
    L14: TLabeledEdit;
    L15: TLabeledEdit;
    CheckBox1: TCheckBox;
    Timer1: TTimer;
    Button126: TButton;
    Button127: TButton;
    ComboBox17: TComboBox;
    TabSheet9: TTabSheet;
    Button128: TButton;
    Edit105: TEdit;
    Label94: TLabel;
    Edit106: TEdit;
    Label95: TLabel;
    Edit107: TEdit;
    Label97: TLabel;
    Edit108: TEdit;
    Label98: TLabel;
    Label99: TLabel;
    Edit109: TEdit;
    Label100: TLabel;
    Edit110: TEdit;
    Label101: TLabel;
    Edit111: TEdit;
    Edit112: TEdit;
    Label102: TLabel;
    Button129: TButton;
    Edit113: TEdit;
    Edit114: TEdit;
    Label103: TLabel;
    Label104: TLabel;
    Button130: TButton;
    ComboBox18: TComboBox;
    Label105: TLabel;
    Label106: TLabel;
    Edit115: TEdit;
    Label107: TLabel;
    Edit116: TEdit;
    Label108: TLabel;
    ComboBox19: TComboBox;
    Label109: TLabel;
    Button131: TButton;
    Label110: TLabel;
    Edit117: TEdit;
    Edit118: TEdit;
    Label111: TLabel;
    Label112: TLabel;
    ComboBox20: TComboBox;
    Button132: TButton;
    Label113: TLabel;
    Edit119: TEdit;
    Label114: TLabel;
    Edit120: TEdit;
    Label115: TLabel;
    Edit121: TEdit;
    Button133: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Edit2Exit(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure Button26Click(Sender: TObject);
    procedure Button27Click(Sender: TObject);
    procedure Button28Click(Sender: TObject);
    procedure Button29Click(Sender: TObject);
    procedure Button30Click(Sender: TObject);
    procedure Button31Click(Sender: TObject);
    procedure Button32Click(Sender: TObject);
    procedure Button33Click(Sender: TObject);
    procedure Button34Click(Sender: TObject);
    procedure Button35Click(Sender: TObject);
    procedure Button36Click(Sender: TObject);
    procedure Button37Click(Sender: TObject);
    procedure Button38Click(Sender: TObject);
    procedure Button39Click(Sender: TObject);
    procedure Button40Click(Sender: TObject);
    procedure Button41Click(Sender: TObject);
    procedure Button42Click(Sender: TObject);
    procedure Button43Click(Sender: TObject);
    procedure Button44Click(Sender: TObject);
    procedure Button45Click(Sender: TObject);
    procedure Button49Click(Sender: TObject);
    procedure Button50Click(Sender: TObject);
    procedure Button51Click(Sender: TObject);
    procedure Button52Click(Sender: TObject);
    procedure Button53Click(Sender: TObject);
    procedure Button54Click(Sender: TObject);
    procedure Button48Click(Sender: TObject);
    procedure Button55Click(Sender: TObject);
    procedure Button56Click(Sender: TObject);
    procedure Button57Click(Sender: TObject);
    procedure Button46Click(Sender: TObject);
    procedure Button47Click(Sender: TObject);
    procedure Button58Click(Sender: TObject);
    procedure Button59Click(Sender: TObject);
    procedure Button60Click(Sender: TObject);
    procedure Button61Click(Sender: TObject);
    procedure Button62Click(Sender: TObject);
    procedure Button63Click(Sender: TObject);
    procedure Button64Click(Sender: TObject);
    procedure Button65Click(Sender: TObject);
    procedure Button66Click(Sender: TObject);
    procedure Button67Click(Sender: TObject);
    procedure Button68Click(Sender: TObject);
    procedure Button69Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure Button70Click(Sender: TObject);
    procedure Button71Click(Sender: TObject);
    procedure Button72Click(Sender: TObject);
    procedure Button73Click(Sender: TObject);
    procedure Button74Click(Sender: TObject);
    procedure Button77Click(Sender: TObject);
    procedure Button75Click(Sender: TObject);
    procedure Button76Click(Sender: TObject);
    procedure Button78Click(Sender: TObject);
    procedure Button79Click(Sender: TObject);
    procedure Button80Click(Sender: TObject);
    procedure Button81Click(Sender: TObject);
    procedure Button82Click(Sender: TObject);
    procedure Button83Click(Sender: TObject);
    procedure Button84Click(Sender: TObject);
    procedure Button85Click(Sender: TObject);
    procedure Button88Click(Sender: TObject);
    procedure Button89Click(Sender: TObject);
    procedure Button90Click(Sender: TObject);
    procedure Button91Click(Sender: TObject);
    procedure Button92Click(Sender: TObject);
    procedure Button93Click(Sender: TObject);
    procedure Button86Click(Sender: TObject);
    procedure Button87Click(Sender: TObject);
    procedure Memo2DblClick(Sender: TObject);
    procedure Button94Click(Sender: TObject);
    procedure Button95Click(Sender: TObject);
    procedure Button96Click(Sender: TObject);
    procedure Button97Click(Sender: TObject);
    procedure Button98Click(Sender: TObject);
    procedure Button99Click(Sender: TObject);
    procedure Button100Click(Sender: TObject);
    procedure Button101Click(Sender: TObject);
    procedure Button102Click(Sender: TObject);
    procedure Button103Click(Sender: TObject);
    procedure Button104Click(Sender: TObject);
    procedure Button105Click(Sender: TObject);
    procedure Button106Click(Sender: TObject);
    procedure Button107Click(Sender: TObject);
    procedure Edit85DblClick(Sender: TObject);
    procedure Button108Click(Sender: TObject);
    procedure Button109Click(Sender: TObject);
    procedure Button110Click(Sender: TObject);
    procedure Button111Click(Sender: TObject);
    procedure Button112Click(Sender: TObject);
    procedure Button113Click(Sender: TObject);
    procedure Button114Click(Sender: TObject);
    procedure Button115Click(Sender: TObject);
    procedure Button116Click(Sender: TObject);
    procedure Button117Click(Sender: TObject);
    procedure Button118Click(Sender: TObject);
    procedure Button122Click(Sender: TObject);
    procedure Button121Click(Sender: TObject);
    procedure Button119Click(Sender: TObject);
    procedure Button123Click(Sender: TObject);
    procedure Button124Click(Sender: TObject);
    procedure Button125Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure Button126Click(Sender: TObject);
    procedure Button127Click(Sender: TObject);
    procedure Button128Click(Sender: TObject);
    procedure Button129Click(Sender: TObject);
    procedure Button130Click(Sender: TObject);
    procedure Button131Click(Sender: TObject);
    procedure Button132Click(Sender: TObject);
    procedure Button133Click(Sender: TObject);
  private
    procedure Request(stype: integer);
    procedure Request1(stype: integer);
    procedure USB_Value_AS(stype: integer);
    procedure showInfo(rb: boolean; ri: integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmTest: TFrmTest;

implementation

uses UntDLL, UntAbout;
{$R *.dfm}

procedure TFrmTest.Request(stype: integer);
var i: integer;
begin
  case USB_Request(stype) of
    -1:
      MsgBoxAAA('通讯错误', '', 16);
    0:
      MsgBoxAAA('无卡或数据错误', '', 16);
    1:
      MsgBoxAAA('Mifare_UltraLight', '', 32);
    2: begin
        Label3.Caption := 'Mifare_One(S50)';
        ComboBox1.Clear;
        ComboBox3.Clear;
        for i := 0 to 15 do
        begin
          ComboBox1.Items.Add(inttostr(i));
          ComboBox3.Items.Add(inttostr(i));
          next;
        end;
        ComboBox1.ItemIndex := 0;
        ComboBox3.ItemIndex := 0;
      end;
    3: begin
        Label3.Caption := 'Mifare_One(S70)';
        ComboBox1.Clear;
        ComboBox3.Clear;
        for i := 0 to 39 do
        begin
          if ComboBox1.Items.Count < 32 then
            ComboBox1.Items.Add(inttostr(i));
          ComboBox3.Items.Add(inttostr(i));
          next;
        end;
        ComboBox1.ItemIndex := 0;
        ComboBox3.ItemIndex := 0;
      end;
    4: Label3.Caption := 'Mifare_Pro(X)';
    5: Label3.Caption := 'Mifare_DESFire';
    6: Label3.Caption := 'Mifare_L';
  end;
end;

procedure TFrmTest.Request1(stype: integer);
var i: integer;
begin
  case USB_Request(stype) of
    -1:
      Label3.Caption := '通讯错误';
    0:
      Label3.Caption := '无卡或数据错误';
    1:
      Label3.Caption := 'Mifare_UltraLight';
    2: begin
        Label3.Caption := 'Mifare_One(S50)';
        ComboBox16.Clear;
        for i := 0 to 15 do
        begin
          ComboBox16.Items.Add(inttostr(i));
          next;
        end;
        ComboBox16.ItemIndex := 0;
        if USB_BeepExA(5) then

      end;
    3: begin
        Label3.Caption := 'Mifare_One(S70)';
        ComboBox16.Clear;
        for i := 0 to 39 do
        begin
          ComboBox16.Items.Add(inttostr(i));
          next;
        end;
        ComboBox16.ItemIndex := 0;
        if USB_BeepExA(5) then
      end;
    4: Label3.Caption := 'Mifare_Pro(X)';
    5: Label3.Caption := 'Mifare_DESFire';
    6: Label3.Caption := 'Mifare_L';
  end;
end;

procedure TFrmTest.Button2Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if USB_anticoll(arr) then edtRead.Text := arr else MsgBoxAAA('防冲撞失败', '', 16);
end;

procedure TFrmTest.Button3Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(edtRead.Text));
  if USB_Select(arr) then
    MsgBoxAAA('选定卡片成功', '', 32) else MsgBoxAAA('选定卡片失败', '', 16);
end;

procedure TFrmTest.Button6Click(Sender: TObject);
begin
  Request(0);
end;

procedure TFrmTest.Button7Click(Sender: TObject);
begin
  Request(1);
end;

procedure TFrmTest.ComboBox1Change(Sender: TObject);
begin
  ComboBox2.Clear; ComboBox4.Clear;
  if strtoint(ComboBox1.Text) = 0 then
  begin
    ComboBox2.Items.Add('1');
    ComboBox2.Items.Add('2');
    ComboBox4.Items.Add('1');
    ComboBox4.Items.Add('2');
  end
  else begin
    ComboBox2.Items.Add('0');
    ComboBox2.Items.Add('1');
    ComboBox2.Items.Add('2');
    ComboBox4.Items.Add('0');
    ComboBox4.Items.Add('1');
    ComboBox4.Items.Add('2');
  end;
end;

procedure TFrmTest.Button14Click(Sender: TObject);
begin
  if USB_BeepEx(strtoint(edtPort.Text), 0) then
    Button18.Caption := GbToBig5Ex('打开串口');
end;

procedure TFrmTest.Button11Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit1.Text + edtRead.Text));
  if USB_Authentication(RadioGroup1.ItemIndex, strtoint(ComboBox1.Text), arr) then
    MsgBoxAAA('验证密钥成功', '', 32) else MsgBoxAAA('验证密钥失败', '', 16);
end;

procedure TFrmTest.Button13Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox1.Text), strtoint(ComboBox2.Text), arr) then Edit3.Text := copy(arr, 1, 8);
end;

procedure TFrmTest.Button15Click(Sender: TObject);
begin
  if USB_Halt then showmessage('ok');
end;

procedure TFrmTest.Button8Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit3.Text));
  if USB_ValueInit(strtoint(ComboBox1.Text), strtoint(ComboBox2.Text), arr) then
    MsgBoxAAA('初始化钱包成功', '', 48) else MsgBoxAAA('初始化钱包失败', '', 16);
end;

procedure TFrmTest.Edit2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var sHex: string;
begin
  if Edit2.Text <> '' then
  begin
    sHex := inttohex(strtoint64(Edit2.Text), 8);
    Edit3.Text := copy(sHex, 7, 2) + copy(sHex, 5, 2) + copy(sHex, 3, 2) + copy(sHex, 1, 2);
  end;
end;

procedure TFrmTest.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not (((Key >= '0') and (Key <= '9')) or (Key = #8)) then Key := Char(0);
end;

procedure TFrmTest.USB_Value_AS(stype: integer);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit3.Text));
  if USB_Value(strtoint(ComboBox1.Text), strtoint(ComboBox2.Text), stype, arr) then
    MsgBoxAAA('值操作成功', '', 32) else MsgBoxAAA('值操作失败', '', 16);
end;

procedure TFrmTest.Button4Click(Sender: TObject);
begin
  USB_Value_AS(1);
end;

procedure TFrmTest.Button5Click(Sender: TObject);
begin
  USB_Value_AS(0);
end;

procedure TFrmTest.Button16Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit4.Text + edtRead.Text));
  if USB_Authentication(RadioGroup2.ItemIndex, strtoint(ComboBox3.Text), arr) then
    MsgBoxAAA('验证密钥成功', '', 32) else MsgBoxAAA('验证密钥失败', '', 16);
end;

procedure TFrmTest.Button9Click(Sender: TObject);
var arr: ArrayChar;
begin
  L0.Clear;
  L1.Clear;
  L2.Clear;
  L3.Clear;

  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox3.Text), 0, arr) then L0.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox3.Text), 1, arr) then L1.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox3.Text), 2, arr) then L2.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox3.Text), 3, arr) then L3.Text := arr;
  fillchar(arr, sizeof(arr), 0);
end;

procedure TFrmTest.ComboBox3Change(Sender: TObject);
begin
  if strtoint(ComboBox3.Text) < 32 then
  begin

  end
  else
  begin

  end;
end;

procedure TFrmTest.Button1Click(Sender: TObject);
var i: integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TLabeledEdit) then
      TLabeledEdit(Components[i]).Text := '';
  end;
end;

procedure TFrmTest.showInfo(rb: boolean; ri: integer);
begin
  if rb then
    MsgBoxAAA(pchar(inttostr(ri) + ' 块写成功'), '', 32)
  else
    MsgBoxAAA(pchar(inttostr(ri) + ' 块写失败'), '', 16);
end;

procedure TFrmTest.Button10Click(Sender: TObject);
var arr: ArrayChar;
  reBool: boolean;
begin
  if strtoint(ComboBox3.Text) <> 0 then
  begin
    fillchar(arr, sizeof(arr), 0);
    StrCopy(arr, pchar(L0.Text));
    reBool := USB_Write(strtoint(ComboBox3.Text), 0, arr);
    showInfo(reBool, 0);
  end;

  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(L1.Text));
  reBool := USB_Write(strtoint(ComboBox3.Text), 1, arr);
  showInfo(reBool, 1);

  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(L2.Text));
  reBool := USB_Write(strtoint(ComboBox3.Text), 2, arr);
  showInfo(reBool, 2);
  if strtoint(ComboBox3.Text) >= 32 then
  begin

  end;
end;

procedure TFrmTest.Button12Click(Sender: TObject);
var arr: ArrayChar;
  reBool: boolean;
begin
  if MsgBoxAAA('您真的要改写密钥吗？密钥的格式为:A密钥+8位控制位+B密钥' + #13
    + '例：000000000000FF078069000000000000', '请一定要确认输入正确的密钥', mb_yesno) <> mryes then exit;

  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(L3.Text));
  reBool := USB_Write(strtoint(ComboBox3.Text), 3, arr);
  showInfo(reBool, 3);
end;

procedure TFrmTest.Edit2Exit(Sender: TObject);
begin
  if Edit2.Text = '' then Edit3.Text := '';
end;

procedure TFrmTest.Button17Click(Sender: TObject);
begin
  if strtoint(ComboBox2.Text) = strtoint(ComboBox4.Text) then exit;
  if USB_BackUp(strtoint(ComboBox1.Text), strtoint(ComboBox2.Text), strtoint(ComboBox4.Text)) then
    MsgBoxAAA('备份钱包成功', '', 32) else MsgBoxAAA('备份钱包失败', '', 16);
end;

procedure TFrmTest.Button18Click(Sender: TObject);
begin
  if Button18.Caption = GbToBig5Ex('打开串口') then
  begin
    if USB_DevInit(strtoint(edtPort.Text)) then
    begin
      Button18.Caption := GbToBig5Ex('关闭串口');
     // Button14.Enabled := false;
    end else
      MsgBoxAAA('打开串口失败', '', 16);
    exit;
  end;
  if Button18.Caption = GbToBig5Ex('关闭串口') then
  begin
    if USB_DevClose then
    begin
      Button18.Caption := GbToBig5Ex('打开串口');
     // Button14.Enabled := true;
    end else
      MsgBoxAAA('关闭串口失败', '', 16);
  end;
end;

procedure TFrmTest.FormCreate(Sender: TObject);
begin
  with Font do
  begin
    Name := 'Arial';
    Charset := DEFAULT_CHARSET;
  //  color := clBlue;
    Size := 9;
  end;
  tabsheet9.TabVisible := false;
  Combobox18.ItemIndex := 2;
  Combobox19.ItemIndex := 2;
  Combobox20.ItemIndex := 2;
end;

procedure TFrmTest.Button19Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if USB_RequestEx(arr) = 1 then
  begin
    Edit5.Text := arr;
  end;
end;

procedure TFrmTest.Button20Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit6.Text + Edit5.Text));
  if USB_Authentication(RadioGroup3.ItemIndex, strtoint(snrEdt.Text), arr) then
    MsgBoxAAA('验证密钥成功', '', 32) else MsgBoxAAA('验证密钥失败', '', 16);
end;

procedure TFrmTest.Button21Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit7.Text));
  if WriteWorkNo(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then MsgBoxAAA('写编号成功', '', 32) else MsgBoxAAA('写编号失败', '', 16);
end;

procedure TFrmTest.Button22Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if ReadWorkNo(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then Edit7.Text := arr else MsgBoxAAA('读编号失败', '', 16);
end;

procedure TFrmTest.Button23Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit8.Text));
  if WriteName(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then MsgBoxAAA('写姓名成功', '', 32) else MsgBoxAAA('写姓名失败', '', 16);
end;

procedure TFrmTest.Button24Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if ReadName(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then Edit8.Text := arr else MsgBoxAAA('读姓名失败', '', 16);
end;

procedure TFrmTest.Button25Click(Sender: TObject);
begin
  if WriteParameter(1, strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit9.Text)) then
    MsgBoxAAA('写经销商id成功', '', 32) else MsgBoxAAA('写经销商id失败', '', 16);
end;

procedure TFrmTest.Button26Click(Sender: TObject);
begin
  Edit9.Text := inttostr(ReadParameter(1, strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button27Click(Sender: TObject);
begin
  if WriteParameter(2, strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit10.Text)) then
    MsgBoxAAA('写客户id成功', '', 32) else MsgBoxAAA('写客户id失败', '', 16);
end;

procedure TFrmTest.Button28Click(Sender: TObject);
begin
  Edit10.Text := inttostr(ReadParameter(2, strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button29Click(Sender: TObject);
begin
  if WriteParameter(3, strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit11.Text)) then
    MsgBoxAAA('写用户id成功', '', 32) else MsgBoxAAA('写用户id失败', '', 16);
end;

procedure TFrmTest.Button30Click(Sender: TObject);
begin
  Edit11.Text := inttostr(ReadParameter(3, strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button31Click(Sender: TObject);
begin
  if WriteParameter(4, strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit12.Text)) then
    MsgBoxAAA('写随机密码成功', '', 32) else MsgBoxAAA('写随机密码失败', '', 16);
end;

procedure TFrmTest.Button32Click(Sender: TObject);
begin
  Edit12.Text := inttostr(ReadParameter(4, strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button33Click(Sender: TObject);
begin
  if WriteCardNo(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit13.Text)) then
    MsgBoxAAA('写卡号成功', '', 32) else MsgBoxAAA('写卡号失败', '', 16);
end;

procedure TFrmTest.Button34Click(Sender: TObject);
begin
  Edit13.Text := inttostr(ReadCardNo(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button35Click(Sender: TObject);
begin
  if WriteCardRemark(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), ComboBox17.ItemIndex) then
    MsgBoxAAA('写卡应用标示成功', '', 32) else MsgBoxAAA('写卡应用标示失败', '', 16);
end;

procedure TFrmTest.Button36Click(Sender: TObject);
begin
  ComboBox17.ItemIndex := ReadCardRemark(strtoint(snrEdt.Text), strtoint(bnrEdt.Text));
end;

procedure TFrmTest.Button37Click(Sender: TObject);
begin
  if WriteGrade(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit14.Text)) then
    MsgBoxAAA('写级别成功', '', 32) else MsgBoxAAA('写级别失败', '', 16);
end;

procedure TFrmTest.Button38Click(Sender: TObject);
begin
  Edit14.Text := inttostr(ReadGrade(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button39Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar('00000000'));  //13232222715
  if USB_ValueInit(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    MsgBoxAAA('初始化钱包成功', '', 32) else MsgBoxAAA('初始化钱包失败', '', 16);
end;

procedure TFrmTest.Button40Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit15.Text));
  if WriteUserPass(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    MsgBoxAAA('写消费密码成功', '', 32) else MsgBoxAAA('写消费密码失败', '', 16);
end;

procedure TFrmTest.Button41Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if ReadUserPass(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    Edit15.Text := arr else MsgBoxAAA('读消费密码失败', '', 16);
end;

procedure TFrmTest.Button42Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit16.Text));
  if WriteUseDate(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    MsgBoxAAA('写有效期限成功', '', 32) else MsgBoxAAA('写有效期限失败', '', 16);
end;

procedure TFrmTest.Button43Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if ReadUseDate(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    Edit16.Text := arr else MsgBoxAAA('写有效期限失败', '', 16);
end;

procedure TFrmTest.Button44Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit17.Text));
  if WriteValueDateTime(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    MsgBoxAAA('写卡充值时间成功', '', 32) else MsgBoxAAA('写卡充值时间失败', '', 16);
end;

procedure TFrmTest.Button45Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if ReadValueDateTime(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    Edit17.Text := arr else MsgBoxAAA('写卡充值时间失败', '', 16);
end;

procedure TFrmTest.Button49Click(Sender: TObject);
begin
  if USB_BackUpEx(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit18.Text), 1) then
    MsgBoxAAA('备份钱包成功', '', 32) else MsgBoxAAA('备份钱包失败', '', 16);
end;

procedure TFrmTest.Button50Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(arr, sizeof(arr), 0);
  if ReadBrushDate(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    Edit19.Text := arr else MsgBoxAAA('读卡最后刷卡时间失败', '', 16);
end;

procedure TFrmTest.Button51Click(Sender: TObject);
begin
  if WriteBrushCount(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit20.Text)) then
    MsgBoxAAA('写卡交易计次成功', '', 32) else MsgBoxAAA('写卡交易计次失败', '', 16);
end;

procedure TFrmTest.Button52Click(Sender: TObject);
begin
  Edit20.Text := inttostr(ReadBrushCount(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button53Click(Sender: TObject);
begin
  if WriteDayCount(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit21.Text)) then
    MsgBoxAAA('写日交易计次成功', '', 32) else MsgBoxAAA('写日交易计次失败', '', 16);
end;

procedure TFrmTest.Button54Click(Sender: TObject);
begin
  Edit21.Text := inttostr(ReadDayCount(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button48Click(Sender: TObject);
begin
  MaskEdit1.Text := format('%09.2f', [ReadCardBalance(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 1) / 100]);
end;

procedure TFrmTest.Button55Click(Sender: TObject);
begin
  MaskEdit1.Text := format('%09.2f', [ReadCardBalance(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 2) / 100]);
end;

procedure TFrmTest.Button56Click(Sender: TObject);
begin
  MaskEdit1.Text := format('%09.2f', [ReadCardBalance(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 3) / 100]);
end;

procedure TFrmTest.Button57Click(Sender: TObject);
begin
  MaskEdit1.Text := format('%09.2f', [ReadCardBalance(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 4) / 100]);
end;

procedure TFrmTest.Button46Click(Sender: TObject);
{函数由USB_ValueEx 改为 USB_ValueExA}
var i: integer;
begin
  i := USB_ValueExAx(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 1, strtoint(floattostr(strtofloat(MaskEdit1.Text) * 100)));
  case i of
    -1: MsgBoxAAA('钱包格式错误', '', 16);
    0: MsgBoxAAA('金额超出0--167772.15的范围', '', 16);
    1: MsgBoxAAA('加值成功', '', 32);
    2: MsgBoxAAA('读卡失败', '', 16);
    3: MsgBoxAAA('写卡失败', '', 16);
    4: MsgBoxAAA('备份钱包失败', '', 16);
    5: MsgBoxAAA('写使用次数失败', '', 16);
  end;
end;

procedure TFrmTest.Button47Click(Sender: TObject);
{函数由USB_ValueEx 改为 USB_ValueExA}
var i: integer;
begin
  i := USB_ValueExAx(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 0, strtoint(floattostr(strtofloat(MaskEdit1.Text) * 100)));
  case i of
    -1: MsgBoxAAA('钱包格式错误', '', 16);
    0: MsgBoxAAA('金额超出0--167772.15的范围', '', 16);
    1: MsgBoxAAA('减值成功', '', 32);
    2: MsgBoxAAA('读卡失败', '', 16);
    3: MsgBoxAAA('写卡失败', '', 16);
    4: MsgBoxAAA('备份钱包失败', '', 16);
    5: MsgBoxAAA('写使用次数失败', '', 16);
  end;
end;

procedure TFrmTest.Button58Click(Sender: TObject);
begin
  if USB_BackUpEx(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit18.Text), 2) then
    MsgBoxAAA('备份充前钱包成功', '', 32) else MsgBoxAAA('备份充前钱包失败', '', 16);
end;

procedure TFrmTest.Button59Click(Sender: TObject);
begin
  if USB_BackUpEx(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit18.Text), 3) then
    MsgBoxAAA('备份充后钱包成功', '', 32) else MsgBoxAAA('备份充后钱包失败', '', 16);
end;

procedure TFrmTest.Button60Click(Sender: TObject);
begin
  if WriteMasteID(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit22.Text), strtoint(Edit23.Text), strtoint(Edit54.Text), strtoint(Edit55.Text)) then
    MsgBoxAAA('写设定扇区成功', '', 32) else MsgBoxAAA('写设定扇区失败', '', 16);
end;

procedure TFrmTest.Button61Click(Sender: TObject);
var Msecnr, Ssecnr, Wsecnr, Qsecnr: integer;
begin
  Msecnr := -1; Ssecnr := -1; Wsecnr := -1; Qsecnr := -1;
  if ReadMasteID(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), Msecnr, Ssecnr, Wsecnr, Qsecnr) then
  begin
    Edit22.Text := inttostr(Msecnr);
    Edit23.Text := inttostr(Ssecnr);
    Edit54.Text := inttostr(Wsecnr);
    Edit55.Text := inttostr(Qsecnr);
  end
  else MsgBoxAAA('读取设定扇区失败', '', 16);
end;

procedure TFrmTest.Button62Click(Sender: TObject);
begin
  if WriteDayMoney(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(floattostr(strtofloat(MaskEdit2.Text) * 100))) then
    MsgBoxAAA('写日累计消费额成功', '', 32) else MsgBoxAAA('写日累计消费额失败', '', 16);
end;

procedure TFrmTest.Button63Click(Sender: TObject);
begin
  MaskEdit2.Text := format('%09.2f', [ReadDayMoney(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)) / 100]);
end;

procedure TFrmTest.Button64Click(Sender: TObject);
begin
  GetDllVersion;
end;

procedure TFrmTest.Button65Click(Sender: TObject);
begin
  ShellExecute(handle, 'open', pchar(extractfilepath(application.ExeName) + 'help.chm'), nil, nil, SW_SHOWNORMAL)
end;

procedure TFrmTest.Button66Click(Sender: TObject);
begin
  FrmAbout := TFrmAbout.Create(self);
  FrmAbout.ShowModal;
  FrmAbout.Free;
  FrmAbout := nil;
end;

procedure TFrmTest.Button67Click(Sender: TObject);
var strPass: string;
  arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  strPass := inputbox(GbToBig5Ex('将密码写入到系统卡中，例：FFFFFFFFFFFF'), GbToBig5Ex('请输入新卡密码：            '), '');
  if (strPass = '') or (length(strPass) <> 12) then exit;

  StrCopy(arr, pchar(strPass + '00000000000000000000'));
  if USB_Write(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    MsgBoxAAA('将密码写入到系统卡成功', '', 32) else MsgBoxAAA('将密码写入到系统卡失败', '', 16);
end;

procedure TFrmTest.Button68Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), arr) then
    MsgBoxAAA(copy(arr, 1, 12), '', 32) else MsgBoxAAA('读失败', '', 16);
end;

procedure TFrmTest.Button69Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if GetTimeExA(strtoint(edtPort.Text), strtoint(LabMach.Text), arr) then
    Edit24.Text := arr else MsgBoxAAA('读失败', '', 16);
end;

procedure TFrmTest.PageControl1Change(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 0) or
    (PageControl1.ActivePageIndex = 1) or
    (PageControl1.ActivePageIndex = 6) or
    (PageControl1.ActivePageIndex = 7) then Button18.Enabled := true else Button18.Enabled := false;
end;

procedure TFrmTest.Button70Click(Sender: TObject);
var arr: ArrayChar;
  sWeek: string;
begin
  if DayOfWeek(now) - 1 = 0 then
    sWeek := '07'
  else
    sWeek := Format('%.2d', [DayOfWeek(now) - 1]);

  Edit24.Text := formatdatetime('yyMMddHHnnss', now) + sWeek;
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit24.Text));
  if SetTimeExA(strtoint(edtPort.Text), strtoint(LabMach.Text), arr) then
    MsgBoxAAA('设置成功', '', 32) else MsgBoxAAA('设置失败', '', 16);
end;

procedure TFrmTest.Button71Click(Sender: TObject);
var ret: boolean;
begin
  ret := InitMach(strtoint(edtPort.Text), strtoint(LabMach2.Text));
  if ret then
    MsgBoxAAA('握手成功', '', 32) else MsgBoxAAA('握手失败', '', 16);
end;

procedure TFrmTest.Button72Click(Sender: TObject);
var ret: boolean;
begin
  ret := RestoreMachEx(strtoint(edtPort.Text));
  if ret then
    MsgBoxAAA('复位成功', '', 32) else MsgBoxAAA('复位失败', '', 16);
end;

procedure TFrmTest.Button73Click(Sender: TObject);
var arr: ArrayChar;
  brr: ArrayChar;
  i: integer; k: integer;
begin
  k := strtoint('$' + Edit25.Text);
  for i := 1 to strtoint(Edit29.Text) do
  begin
    fillchar(arr, sizeof(arr), 0);
    fillchar(brr, sizeof(brr), 0);
    StrCopy(brr, pchar(inttohex(k, 4)));
    if GetAT24C256(brr, arr) then
      Memo2.Lines.Add(arr) else
    begin
      MsgBoxAAA('读失败', '', 16);
      break;
    end;
    k := k + 16;
  end;
  Edit26.Text := inttohex(k - 16, 4);
end;

procedure TFrmTest.Button74Click(Sender: TObject);
var arr: ArrayChar;
  brr: ArrayChar;
  j, k: integer;
begin
  fillchar(brr, sizeof(brr), 0);
  StrCopy(brr, pchar(Edit30.Text));

  k := strtoint('$' + Edit31.Text);
  for j := 1 to strtoint(Edit52.Text) do
  begin
    fillchar(arr, sizeof(arr), 0);
    StrCopy(arr, pchar(inttohex(k, 4)));
    if SetAT24C256(arr, brr) then
      Memo2.Lines.Add(inttohex(k, 4))
    else
    begin
      MsgBoxAAA('写失败', '', 16);
      break;
    end;
    k := k + 16;
  end;
end;

procedure TFrmTest.Button77Click(Sender: TObject);
var arr: ArrayChar;
  brr: ArrayChar;
  i: integer; k: integer;
begin
  k := strtoint('$' + Edit27.Text);
  for i := 1 to strtoint(Edit29.Text) do
  begin
    fillchar(arr, sizeof(arr), 0);
    fillchar(arr, sizeof(brr), 0);
    StrCopy(brr, pchar(inttohex(k, 6)));
    if GetEEPROM(brr, arr) then
   // if GetEEPROMEx(1, brr, arr) then
      Memo2.Lines.Add(arr + ',' + inttostr(i - 1))
    else
    begin
      MsgBoxAAA('读失败', '', 16);
      break;
    end;
    k := k + 16;
  end;
  Edit28.Text := inttohex(k - 16, 6);
end;

procedure TFrmTest.Button75Click(Sender: TObject);
begin
  if ClearData(strtoint(edtPort.Text), strtoint(LabMach.Text)) then
    MsgBoxAAA('清除成功', '', 32) else MsgBoxAAA('清除失败', '', 16);
end;

procedure TFrmTest.Button76Click(Sender: TObject);
begin
  if SetMachNo(strtoint(edtPort.Text), strtoint(LabMach.Text), strtoint(Edit32.Text)) then
    MsgBoxAAA('写入成功', '', 32) else MsgBoxAAA('写入失败', '', 16);
end;

procedure TFrmTest.Button78Click(Sender: TObject);
begin
  if SetSaleStyle(strtoint(edtPort.Text), strtoint(LabMach.Text), ComboBox10.ItemIndex) then
    MsgBoxAAA('写入成功', '', 32) else MsgBoxAAA('写入失败', '', 16);
end;

procedure TFrmTest.Button79Click(Sender: TObject);
begin
  ComboBox10.ItemIndex := GetSaleStyle(strtoint(edtPort.Text), strtoint(LabMach.Text));
end;

procedure TFrmTest.Button80Click(Sender: TObject);
begin
  if SetMachStyle(strtoint(edtPort.Text), strtoint(LabMach.Text), ComboBox11.ItemIndex) then
    MsgBoxAAA('写入成功', '', 32) else MsgBoxAAA('写入失败', '', 16);
end;

procedure TFrmTest.Button81Click(Sender: TObject);
begin
  ComboBox11.ItemIndex := GetMachStyle(strtoint(edtPort.Text), strtoint(LabMach.Text));
end;

procedure TFrmTest.Button82Click(Sender: TObject);
begin
  if SetManagerCard(strtoint(edtPort.Text), strtoint(LabMach.Text), strtoint(Edit35.Text)) then
    MsgBoxAAA('写入成功', '', 32) else MsgBoxAAA('写入失败', '', 16);
end;

procedure TFrmTest.Button83Click(Sender: TObject);
begin
  Edit35.Text := inttostr(GetManagerCard(strtoint(edtPort.Text), strtoint(LabMach.Text)));
end;

procedure TFrmTest.Button84Click(Sender: TObject);
begin
  if SetMaxConsume(strtoint(edtPort.Text), strtoint(LabMach.Text), strtoint(floattostr(strtofloat(MaskEdit3.Text) * 100)))
    then MsgBoxAAA('写入成功', '', 32) else MsgBoxAAA('写入失败', '', 16);
end;

procedure TFrmTest.Button85Click(Sender: TObject);
begin
  MaskEdit3.Text := format('%09.2f', [GetMaxConsume(strtoint(edtPort.Text), strtoint(LabMach.Text)) / 100]);
end;

procedure TFrmTest.Button88Click(Sender: TObject);
begin
  Edit36.Text := floattostr(GetSumConsume(strtoint(edtPort.Text), strtoint(LabMach.Text)) / 100);
end;

procedure TFrmTest.Button89Click(Sender: TObject);
begin
  Edit36.Text := inttostr(GetRecordCount(strtoint(edtPort.Text), strtoint(LabMach.Text)));
end;

procedure TFrmTest.Button90Click(Sender: TObject);
begin
  if SetMaxSumConsume(strtoint(edtPort.Text), strtoint(LabMach.Text), strtoint64(floattostr(strtofloat(MaskEdit4.Text) * 100)))
    then MsgBoxAAA('写入成功', '', 32) else MsgBoxAAA('写入失败', '', 16);
end;

procedure TFrmTest.Button91Click(Sender: TObject);
begin
  MaskEdit4.Text := format('%11.2f', [GetMaxSumConsume(strtoint(edtPort.Text), strtoint(LabMach.Text)) / 100]);
end;

procedure TFrmTest.Button92Click(Sender: TObject);
var iii: integer;
begin
  for iii := strtoint(Edit38.Text) to strtoint(Edit95.Text) do
  begin
    if SetCardEx(iii) then
    begin
      Label3.Caption := inttostr(iii);
      Label3.Refresh;
    end;
  end;
  showmessage('Over');
end;

procedure TFrmTest.Button93Click(Sender: TObject);
var iii: integer;
begin
  for iii := strtoint(Edit38.Text) to strtoint(Edit95.Text) do
  begin
    if DelCardEx(iii) then
    begin
      Label3.Caption := inttostr(iii);
      Label3.Refresh;
    end;
  end;
  showmessage('Over');
end;

procedure TFrmTest.Button86Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit43.Text + Edit44.Text));

  if SetGrade(strtoint(Edit39.Text),
    strtoint(floattostr(strtofloat(MaskEdit5.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit6.Text) * 100)),
    strtoint(Edit40.Text), strtoint(Edit41.Text),
    strtoint(Edit42.Text), arr,
    strtoint(floattostr(strtofloat(MaskEdit7.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit8.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit9.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit10.Text) * 100)))
    then MsgBoxAAA('下发成功', '', 32) else MsgBoxAAA('下发失败', '', 16);
end;

procedure TFrmTest.Button87Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit45.Text));
  if SetClassMenuName(Edit37.Text[1], arr) then MsgBoxAAA('下发成功', '', 32) else MsgBoxAAA('下发失败', '', 16);
end;

procedure TFrmTest.Memo2DblClick(Sender: TObject);
begin
  Memo2.Lines.Clear;
  Memo1.Lines.Clear;
end;

procedure TFrmTest.Button94Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit48.Text));
  if SetClassKey(Edit46.Text[1], strtoint(Edit47.Text),
    strtoint(floattostr(strtofloat(MaskEdit11.Text) * 100)), arr) then
    MsgBoxAAA('下发成功', '', 32) else MsgBoxAAA('下发失败', '', 16);
end;

procedure TFrmTest.Button95Click(Sender: TObject);
var arr: ArrayChar;
  i, n: integer;
  tnTime: DWord;
begin
  tnTime := GetTickCount();
  for i := strtoint(Edit49.Text) to strtoint(Edit50.Text) do
  begin
    fillchar(arr, sizeof(arr), 0);
    if GetRecord(i, arr) then
      Memo2.Lines.Add(string(arr) + ',' + inttostr(i))
    else
    begin
      MsgBoxAAA('下载失败', '', 16);
      break;
    end;
  end;
  tnTime := GetTickCount() - tnTime;
  tnTime := tnTime div 1000;
  n := tnTime div 60;
  tnTime := tnTime mod 60;
  MsgBoxAAA(format('下载完成! 共计用时%d分%d秒.', [n, tnTime]), '', 32);
end;

procedure TFrmTest.Button96Click(Sender: TObject);
begin
  if WriteKeyFlag(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), strtoint(Edit51.Text)) then
    MsgBoxAAA('写成功', '', 32) else MsgBoxAAA('写失败', '', 16);
end;

procedure TFrmTest.Button97Click(Sender: TObject);
begin
  Edit51.Text := inttostr(ReadKeyFlag(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)));
end;

procedure TFrmTest.Button98Click(Sender: TObject);
begin
  if QueryValueInit(strtoint(snrEdt.Text), strtoint(bnrEdt.Text)) then
    MsgBoxAAA('钱包格式正确', '', 32) else MsgBoxAAA('钱包格式错误', '', 16);
end;

procedure TFrmTest.Button99Click(Sender: TObject);
begin
{0表示int型金额，如要将金额写成1元，需传入100}
  if USB_ValueInitEx(strtoint(snrEdt.Text), strtoint(bnrEdt.Text), 0) then
    MsgBoxAAA('初始化钱包值成功', '', 32) else MsgBoxAAA('初始化钱包值失败', '', 16);
end;

procedure TFrmTest.Button100Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  if USB_RequestEx(arr) = 1 then
  begin
    Edit5.Text := arr;

  end;
end;

procedure TFrmTest.Button101Click(Sender: TObject);
begin
  if USB_BeepExA(strtoint(Edit53.Text)) then
end;

procedure TFrmTest.Button102Click(Sender: TObject);
var arr: ArrayChar;
begin
  edtRead.Clear;
  Request(0);
  fillchar(arr, sizeof(arr), 0);
  if USB_RequestEx(arr) = 1 then
    edtRead.Text := arr;
end;

procedure TFrmTest.Button103Click(Sender: TObject);
var SReg: TRegistry;
  KeyStr: string;
begin
  SReg := TRegistry.Create;
  try
    SReg.RootKey := HKEY_LOCAL_MACHINE;
    if SReg.OpenKey('\HARDWARE\DEVICEMAP\SERIALCOMM', false) then
    begin
      KeyStr := SReg.ReadString('\Device\slabser0');
      edtPort.Text := copy(KeyStr, pos('COM', KeyStr) + 3, length(KeyStr) - 3);
    end;
  finally
    SReg.CloseKey;
    SReg.Destroy;
  end;
end;

procedure TFrmTest.Button104Click(Sender: TObject);
var arr, brr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));

  if InitMachCard(strtoint(Edit56.Text), strtoint(Edit57.Text), arr, brr) then
    MsgBoxAAA('制作机器复位卡成功', '', 32) else MsgBoxAAA('制作机器复位卡失败', '', 16);
end;

procedure TFrmTest.Button105Click(Sender: TObject);
var arr, brr: ArrayChar;
  arrTime, arrTimeF, arrTimeK: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  fillchar(arrTime, sizeof(arrTime), 0);
  fillchar(arrTimeF, sizeof(arrTimeF), 0);
  fillchar(arrTimeK, sizeof(arrTimeK), 0);


  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));
  StrCopy(arrTime, pchar(Edit64.Text + Edit65.Text));
  StrCopy(arrTimeF, pchar(Edit70.Text + Edit71.Text));
  StrCopy(arrTimeK, pchar(Edit73.Text + Edit74.Text));

  if not (InitGradeCardFirst(strtoint(Edit56.Text), strtoint(Edit57.Text), arr, brr,
    strtoint(Edit66.Text),
    strtoint(floattostr(strtofloat(MaskEdit16.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit17.Text) * 100)),
    strtoint(Edit67.Text), strtoint(Edit68.Text), strtoint(Edit63.Text), arrTime,
    strtoint(floattostr(strtofloat(MaskEdit15.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit14.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit13.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit12.Text) * 100)))) then
  begin
    MsgBoxAAA('制作级别时段卡失败', '', 16);
    exit;
  end;
  MsgBoxAAA('第一张卡制作完成，请放好第二张卡', '', 32);
  if not (InitGradeCardNext(strtoint(Edit56.Text), strtoint(Edit57.Text),
    strtoint(Edit66.Text), strtoint(Edit69.Text),
    arrTimeF,
    strtoint(floattostr(strtofloat(MaskEdit18.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit19.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit20.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit21.Text) * 100)),
    arrTimeK,
    strtoint(floattostr(strtofloat(MaskEdit22.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit23.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit24.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit25.Text) * 100)))) then
  begin
    MsgBoxAAA('制作级别时段卡失败', '', 16);
    exit;
  end;
  MsgBoxAAA('第二张卡制作完成，请放好第三张卡', '', 32);
  fillchar(arrTimeF, sizeof(arrTimeF), 0);
  fillchar(arrTimeK, sizeof(arrTimeK), 0);
  StrCopy(arrTimeF, pchar(Edit76.Text + Edit77.Text));
  StrCopy(arrTimeK, pchar(Edit79.Text + Edit80.Text));

  if not (InitGradeCardNext(strtoint(Edit56.Text), strtoint(Edit57.Text),
    strtoint(Edit66.Text), strtoint(Edit75.Text),
    arrTimeF,
    strtoint(floattostr(strtofloat(MaskEdit26.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit27.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit28.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit29.Text) * 100)),
    arrTimeK,
    strtoint(floattostr(strtofloat(MaskEdit30.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit31.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit32.Text) * 100)),
    strtoint(floattostr(strtofloat(MaskEdit33.Text) * 100)))) then
  begin
    MsgBoxAAA('制作级别时段卡失败', '', 16);
    exit;
  end;
  MsgBoxAAA('制作级别时段卡成功', '', 48);
end;

procedure TFrmTest.Button106Click(Sender: TObject);
var arr, brr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));

  if InitParameterCard(strtoint(Edit56.Text), strtoint(Edit57.Text), arr, brr,
    strtoint(Edit81.Text), ComboBox5.ItemIndex, ComboBox6.ItemIndex, strtoint(Edit82.Text),
    ComboBox7.ItemIndex, ComboBox8.ItemIndex, strtoint(Edit83.Text), strtoint(Edit84.Text),
    strtoint(Edit88.Text), strtoint(Edit89.Text)) then
    MsgBoxAAA('制作机器参数卡成功', '', 32) else MsgBoxAAA('制作机器参数卡失败', '', 16);
end;

procedure TFrmTest.Button107Click(Sender: TObject);
var arr, brr: ArrayChar;
  arrTime: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  fillchar(arrTime, sizeof(arrTime), 0);

  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));
  StrCopy(arrTime, pchar(Edit85.Text + Edit86.Text));

  if InitTimeCard(strtoint(Edit56.Text), strtoint(Edit57.Text), ComboBox9.ItemIndex, arr, brr, arrTime) then
    MsgBoxAAA('制作时间卡成功', '', 32) else MsgBoxAAA('制作时间卡失败', '', 16);
end;

procedure TFrmTest.Edit85DblClick(Sender: TObject);
begin
  Edit85.Text := formatdatetime('yyMMddHHmmss', now);
end;

procedure TFrmTest.Button108Click(Sender: TObject);
var arr, brr: ArrayChar;
  Data: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  fillchar(Data, sizeof(Data), 0);

  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));
  StrCopy(Data, pchar(Edit87.Text));

  if Init24C256Card(strtoint(Edit56.Text), strtoint(Edit57.Text), arr, brr, Data) then
    MsgBoxAAA('制作初始化24C256卡成功', '', 32) else MsgBoxAAA('制作初始化24C256卡失败', '', 16);
end;

procedure TFrmTest.Button109Click(Sender: TObject);
begin
  if WriteCardRemark(strtoint(Edit56.Text), 2, 98) then
    MsgBoxAAA('制作初始化卡成功', '', 32) else MsgBoxAAA('制作初始化卡失败', '', 16);
end;

procedure TFrmTest.Button110Click(Sender: TObject);
begin
  if SetMachParamter(strtoint(edtPort.Text), strtoint(LabMach.Text), ComboBox12.ItemIndex, ComboBox13.ItemIndex,
    strtoint(Edit33.Text), strtoint(Edit34.Text), strtoint(Edit90.Text), strtoint(Edit91.Text)) then
    MsgBoxAAA('下传机器参数成功', '', 32) else MsgBoxAAA('下传机器参数失败', '', 16);
end;

procedure TFrmTest.Button111Click(Sender: TObject);
var Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer;
begin
  Cyc := -1; TimeOrMeter := -1; UnitCount := -1; UnitMeter := -1;
  if GetMachParamter(strtoint(edtPort.Text), strtoint(LabMach.Text), Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual) then
  begin
    ComboBox12.ItemIndex := Cyc;
    ComboBox13.ItemIndex := TimeOrMeter;
    Edit33.Text := inttostr(UnitCount);
    Edit34.Text := inttostr(UnitMeter);
    Edit90.Text := inttostr(UnitOpen);
    Edit91.Text := inttostr(UnitEqual);
  end
  else
    MsgBoxAAA('读取机器参数失败', '', 16);
end;

procedure TFrmTest.Button112Click(Sender: TObject);
begin
  if SetATMParamter(strtoint(edtPort.Text), strtoint(LabMach.Text), strtoint(Edit58.Text), strtoint(Edit59.Text)) then
    MsgBoxAAA('下传转帐机参数成功', '', 32) else MsgBoxAAA('下传转帐机参数失败', '', 16);
end;

procedure TFrmTest.Button113Click(Sender: TObject);
var OutSecnr, InSecnr: integer;
begin
  OutSecnr := -1; InSecnr := -1;
  if GetATMParamter(strtoint(edtPort.Text), strtoint(LabMach.Text), OutSecnr, InSecnr) then
  begin
    Edit58.Text := inttostr(OutSecnr);
    Edit59.Text := inttostr(InSecnr);
  end
  else MsgBoxAAA('读取转帐机参数失败', '', 16);

end;

procedure TFrmTest.Button114Click(Sender: TObject);
var arr, brr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));

  if InitSetRecCard(strtoint(Edit56.Text), strtoint(Edit57.Text), arr, brr) then
    MsgBoxAAA('写采集卡成功', '', 32) else MsgBoxAAA('写采集卡失败', '', 16);
end;

procedure TFrmTest.Button115Click(Sender: TObject);
var Machno, RecCount, SumConsume: int64;
  brr: ArrayChar;
begin
  fillchar(brr, sizeof(brr), 0);
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));
  if InitGetRecCard(strtoint(Edit57.Text), brr, Machno, RecCount, SumConsume) then
  begin
    Edit92.Text := inttostr(Machno);
    Edit93.Text := inttostr(RecCount);
    Edit94.Text := floattostr(SumConsume / 100);
  end
  else MsgBoxAAA('读采集卡失败', '', 16);
end;

procedure TFrmTest.Button116Click(Sender: TObject);
var arr, brr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));

  if InitRecSumConsumeCard(strtoint(Edit56.Text), strtoint(Edit57.Text), strtoint(Edit93.Text),
    strtoint64(floattostr(strtofloat(Edit94.Text) * 100)),
    arr, brr) then
    MsgBoxAAA('写初始化记录总数和消费总额卡成功', '', 32) else MsgBoxAAA('写初始化记录总数和消费总额卡失败', '', 16);
end;

procedure TFrmTest.Button117Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(ArrayChar), 0);
  StrCopy(arr, pchar(Edit96.Text));
  if SetScreenText(ComboBox14.ItemIndex + 1, arr) then
    MsgBoxAAA('设置屏幕信息成功', '', 32) else MsgBoxAAA('设置屏幕信息失败', '', 16);
end;

procedure TFrmTest.Button118Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(ArrayChar), 0);
  StrCopy(arr, pchar(Edit97.Text));
  if SetBell(ComboBox15.ItemIndex, strtoint(Edit99.Text), arr) then
    MsgBoxAAA('设置打铃信息成功', '', 32) else MsgBoxAAA('设置打铃信息失败', '', 16);
end;

procedure TFrmTest.Button122Click(Sender: TObject);
var arr: ArrayChar;
  brr: ArrayChar;
  j, k: integer;
begin
  fillchar(brr, sizeof(brr), 0);
  StrCopy(brr, pchar(Edit104.Text));

  k := strtoint('$' + Edit98.Text);
  for j := 1 to strtoint(Edit100.Text) do
  begin
    fillchar(arr, sizeof(arr), 0);
    StrCopy(arr, pchar(inttohex(k, 4)));
    if SetReader(arr, brr) then
      Memo1.Lines.Add(inttohex(k, 4))
    else
    begin
      MsgBoxAAA('写失败', '', 16);
      break;
    end;
    k := k + 16;
  end;

end;

procedure TFrmTest.Button121Click(Sender: TObject);
var arr: ArrayChar;
  brr: ArrayChar;
  i: integer; k: integer;
begin
  k := strtoint('$' + Edit98.Text);
  for i := 1 to strtoint(Edit100.Text) do
  begin
    fillchar(arr, sizeof(arr), 0);
    fillchar(brr, sizeof(brr), 0);
    StrCopy(brr, pchar(inttohex(k, 4)));
    if GetReader(brr, arr) then
      Memo1.Lines.Add(arr) else
    begin
      MsgBoxAAA('读失败', '', 16);
      break;
    end;
    k := k + 16;
  end;
  Edit101.Text := inttohex(k - 16, 4);
end;

procedure TFrmTest.Button119Click(Sender: TObject);
var ret: boolean;
begin
  ret := InitMach(strtoint(edtPort.Text), strtoint(LabeledEdit1.Text));
  if ret then
    MsgBoxAAA('握手成功', '', 32) else MsgBoxAAA('握手失败', '', 16);
end;

procedure TFrmTest.Button123Click(Sender: TObject);
var arr: ArrayChar;
begin
  Edit102.Clear;
  Request1(0);
  fillchar(arr, sizeof(arr), 0);
  if USB_RequestEx(arr) = 1 then
    Edit102.Text := arr;
end;

procedure TFrmTest.Button124Click(Sender: TObject);
var arr: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  StrCopy(arr, pchar(Edit103.Text + Edit102.Text));
  if USB_Authentication(RadioGroup5.ItemIndex, strtoint(ComboBox16.Text), arr) then
    MsgBoxAAA('验证密钥成功', '', 32) else MsgBoxAAA('验证密钥失败', '', 16);
end;

procedure TFrmTest.Button125Click(Sender: TObject);
var arr: ArrayChar;
begin
  screen.Cursor := crSQLWait;
  LabeledEdit2.Clear;
  LabeledEdit3.Clear;
  LabeledEdit4.Clear;
  LabeledEdit5.Clear;
  L4.Clear;
  L5.Clear;
  L6.Clear;
  L7.Clear;
  L8.Clear;
  L9.Clear;
  L10.Clear;
  L11.Clear;
  L12.Clear;
  L13.Clear;
  L14.Clear;
  L15.Clear;

  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox16.Text), 0, arr) then LabeledEdit2.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox16.Text), 1, arr) then LabeledEdit3.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox16.Text), 2, arr) then LabeledEdit4.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if USB_Read(strtoint(ComboBox16.Text), 3, arr) then LabeledEdit5.Text := arr;
  fillchar(arr, sizeof(arr), 0);
  if strtoint(ComboBox16.Text) >= 32 then
  begin
    if USB_Read(strtoint(ComboBox16.Text), 4, arr) then L4.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 5, arr) then L5.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 6, arr) then L6.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 7, arr) then L7.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 8, arr) then L8.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 9, arr) then L9.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 10, arr) then L10.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 11, arr) then L11.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 12, arr) then L12.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 13, arr) then L13.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 14, arr) then L14.Text := arr;
    fillchar(arr, sizeof(arr), 0);
    if USB_Read(strtoint(ComboBox16.Text), 15, arr) then L15.Text := arr;
  end;
  screen.Cursor := crDefault;
end;

procedure TFrmTest.CheckBox1Click(Sender: TObject);
begin
  Timer1.Enabled := CheckBox1.Checked;
end;

procedure TFrmTest.Button126Click(Sender: TObject);
var i: integer;
  arr: ArrayChar;
begin
  for i := 1 to 3 do
  begin
    if not InitMach(ComboBox1.ItemIndex + 1, i) then break;
    fillchar(arr, sizeof(arr), 0);
    StrCopy(arr, pchar('好啊好奥阿'));
    if not SetScreenText(1, arr) then break;
    if not SetScreenText(2, arr) then break;
    if not SetScreenText(3, arr) then break;
    if RestoreMachEx(strtoint(edtPort.Text)) then
  end;
end;

procedure TFrmTest.Button127Click(Sender: TObject);
var aId, bId, cId, Pwd, des, flag, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer;
  cPwd: ArrayChar;
begin
  if trim(edit9.Text) = '' then
  begin
    ShowMessage('请输入经销商id');
    edit9.SetFocus;
    exit;
  end;
  if trim(edit10.Text) = '' then
  begin
    ShowMessage('请输入客户id');
    edit10.SetFocus;
    exit;
  end;
  {
  if not USB_DevInit(strtoint(edtport.Text)) then
  begin
    ShowMessage('打开串口失败');
    exit;
  end;
  }
  try
    fillchar(cPwd, sizeof(cPwd), 0);
    if ReadSysCardInfo(strtoint(edit9.Text), strtoint(edit10.Text),
      aId, bId, cId, Pwd, des, flag, Msecnr, Ssecnr, Wsecnr, Qsecnr, cPwd) then
    begin
      edit9.Text := IntToStr(aId);
      edit10.Text := IntToStr(bId);
      edit11.Text := IntToStr(cId);
      edit12.Text := IntToStr(Pwd);
      edit51.Text := IntToStr(des);
      ComboBox17.ItemIndex := flag;
      edit22.Text := inttostr(Msecnr);
      edit23.Text := inttostr(Ssecnr);
      edit54.Text := inttostr(Wsecnr);
      edit55.Text := inttostr(Qsecnr);
      showmessage(copy(string(cPwd), 1, 12));
   //   USB_BeepExA(5);
    end;
  finally
   // if not USB_DevClose then
   //   ShowMessage('关闭串口失败');
  end;
end;

procedure TFrmTest.Button128Click(Sender: TObject);
var arr: arraychar;
begin
  fillchar(arr, sizeof(arr), 0);
  strcopy(arr, pchar(edit112.Text));
  if UpdateCardPwd(0, Strtoint(edtport.Text),
    strtoint(edit105.Text),
    Strtoint(edit108.Text),
    strtoint(edit109.Text),
    strtoint(edit110.Text),
    strtoint(edit111.Text),
    arr) then
    showmessage('更改用户卡密码成功') else showmessage('更改用户卡密码失败！');
end;

procedure TFrmTest.Button129Click(Sender: TObject);
var arr: arraychar;
begin
  fillchar(arr, sizeof(arr), 0);
  strcopy(arr, pchar(edit112.Text));
  if UpdateCardPwd(1, Strtoint(edtport.Text),
    strtoint(edit105.Text),
    Strtoint(edit108.Text),
    strtoint(edit109.Text),
    strtoint(edit110.Text),
    strtoint(edit111.Text),
    arr) then
    showmessage('回收用户卡密码成功') else showmessage('回收用户卡密码失败！');
end;

procedure TFrmTest.Button130Click(Sender: TObject);
var arr: arraychar;
begin
  fillchar(arr, sizeof(arr), 0);
  strcopy(arr, pchar(edit113.Text));
  SetConnect(ComboBox18.ItemIndex, StrToInt(edit114.Text), arr);
end;

procedure TFrmTest.Button131Click(Sender: TObject);
var arr: arraychar;
begin
  fillchar(arr, sizeof(arr), 0);
  strcopy(arr, pchar(edit115.Text));
  SetConnect(ComboBox19.ItemIndex, StrToInt(edit116.Text), arr);
end;

procedure TFrmTest.Button132Click(Sender: TObject);
var arr: arraychar;
begin
  fillchar(arr, sizeof(arr), 0);
  strcopy(arr, pchar(edit117.Text));
  SetConnect(ComboBox20.ItemIndex, StrToInt(edit118.Text), arr);
end;

procedure TFrmTest.Button133Click(Sender: TObject);
var arr, brr, Mach_ip, Pc_ip, Pc_Mac: ArrayChar;
begin
  fillchar(arr, sizeof(arr), 0);
  fillchar(brr, sizeof(brr), 0);
  StrCopy(arr, pchar(Edit60.Text + Edit62.Text));
  StrCopy(brr, pchar(Edit61.Text + Edit62.Text));
  StrCopy(Mach_ip, pchar(Edit119.Text));
  StrCopy(Pc_ip, pchar(Edit120.Text));
  StrCopy(Pc_Mac, pchar(Edit121.Text));

  if SetNetCard(StrToInt(edit56.Text), StrToInt(edit57.Text),
    Mach_ip, Pc_ip, Pc_Mac, arr, brr) then
    MsgBoxAAA('制作IP卡成功', '', 32) else MsgBoxAAA('制作IP卡失败', '', 16);

end;

end.

