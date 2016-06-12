unit UntDLL;

interface

uses nb30, TypInfo, UntTest, windows, SysUtils, Forms;

type ArrayChar = array[0..79] of char;
const DllName = 'fkc60.dll';
//------------------------------------------------------------------------------
{ȡ��DLL�汾��}
function GetDllVersion: integer; stdcall; external DllName;
{�򿪴���}
function USB_DevInit(port: integer): boolean; stdcall; external DllName;
{Ѱ��}
function USB_Request(style: integer): integer; stdcall; external DllName;
{����ײ}
function USB_Anticoll(out arr: ArrayChar): boolean; stdcall; external DllName;
{ѡ����Ƭ}
function USB_Select(arr: ArrayChar): boolean; stdcall; external DllName;
{��֤��Կ}
function USB_Authentication(mode, secnr: integer; keysnr: ArrayChar): boolean; stdcall; external DllName;
{д����}
function USB_Write(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{������}
function USB_Read(secnr, Blonr: integer; out arr: ArrayChar): boolean; stdcall; stdcall; external DllName;
{���ƶ�д�����������к�رմ���}
function USB_BeepEx(port, stype: integer): boolean; stdcall; external DllName;
{���к󲻹رմ���}
function USB_BeepExA(ms: integer): boolean; stdcall; external DllName;
{���ѡ���Ŀ���������}
function USB_Halt: boolean; stdcall; stdcall; external DllName;
{��ֵ��ֵ����}
function USB_Value(secnr, Blonr, stype: integer; data: ArrayChar): boolean; stdcall; external DllName;
{��ʼ��Ǯ��}
function USB_ValueInit(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{��ʼ��Ǯ����չ}
function USB_ValueInitEx(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{����Ǯ��}
function USB_BackUp(secnr, source, destination: integer): boolean; stdcall; external DllName;
{�رմ���}
function USB_DevClose: boolean; stdcall; external DllName;
{Ѱ����չ����}
function USB_RequestEx(DataArr: ArrayChar): integer; stdcall; external DllName;
{д���}
function WriteWorkNo(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{�����}
function ReadWorkNo(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{д����}
function WriteName(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{������}
function ReadName(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{д������id���ͻ�id���û�id}
function WriteParameter(ptype, secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{��������id���ͻ�id���û�id}
function ReadParameter(ptype, secnr, Blonr: integer): integer; stdcall; external DllName;
{д����}
function WriteCardNo(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{������}
function ReadCardNo(secnr, Blonr: integer): integer; stdcall; external DllName;
{д��Ӧ�ñ�ʾ}
function WriteCardRemark(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{����Ӧ�ñ�ʾ}
function ReadCardRemark(secnr, Blonr: integer): integer; stdcall; external DllName;
{д����}
function WriteGrade(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{������}
function ReadGrade(secnr, Blonr: integer): integer; stdcall; external DllName;
{д�û���������}
function WriteUserPass(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{���û���������}
function ReadUserPass(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{дʹ����Ч����}
function WriteUseDate(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{��ʹ����Ч����}
function ReadUseDate(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{д��ֵ����ʱ��}
function WriteValueDateTime(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{����ֵ����ʱ��}
function ReadValueDateTime(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{����ǰ�����ݡ���ǰ��������}
function ReadCardBalance(secnr, Blonr, stype: integer): integer; stdcall; external DllName;
{��ǰ����ֵ}
function USB_ValueEx(secnr, Blonr, stype, data: integer): boolean; stdcall; external DllName;
{���ݵ�ǰ�����ݡ���ǰ�������}
function USB_BackUpEx(secnr, source, destination, stype: integer): boolean; stdcall; external DllName;
{�����ˢ������ʱ��}
function ReadBrushDate(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{дˢ������ }
function WriteBrushCount(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{��ˢ������}
function ReadBrushCount(secnr, Blonr: integer): integer; stdcall; external DllName;
{д�����Ѵ���}
function WriteDayCount(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{�������Ѵ���}
function ReadDayCount(secnr, Blonr: integer): integer; stdcall; external DllName;
{�趨��������������Ǯ������}
function WriteMasteID(secnr, Blonr, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer): boolean; stdcall; external DllName;
{�����ÿ��ϵĹ�������������Ǯ������}
function ReadMasteID(secnr, Blonr: integer; out Msecnr, Ssecnr, Wsecnr, Qsecnr: integer): boolean; stdcall; external DllName;
{д���ۼ����Ѷ�}
function WriteDayMoney(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{�����ۼ����Ѷ�}
function ReadDayMoney(secnr, Blonr: integer): integer; stdcall; external DllName;
{�Ӽ�ֵ��������ֹ����M1оƬ�Ĳ����ݣ��ط�װ�˺���}
function USB_ValueExA(secnr, Blonr, stype, data: integer): integer; stdcall; external DllName;
{����ר�üӼ�ֵ����,��װ�˱���Ǯ������}
function USB_ValueExAx(secnr, Blonr, stype, data: integer): integer; stdcall; external DllName;
{д�㷨��ʾ}
function WriteKeyFlag(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{���㷨��ʾ}
function ReadKeyFlag(secnr, Blonr: integer): integer; stdcall; external DllName;
{�ж�Ǯ����ʽ�Ƿ���ȷ}
function QueryValueInit(secnr, Blonr: integer): boolean; stdcall; external DllName;
{�������ܣ���ϵͳ��
 ���� ������id(a_id) ,�ͻ�id(b_id)�ѱ�У��
 ���� aId������id ,bId�ͻ�id ,cId�û�id ,Pwd�������,
 des�����㷨��־ ,falg����־ ,Msecnr������ ,SsecnrǮ����1 ,WsecnrǮ����2 ,QsecnrǮ����3 ,cPwd�û�����ʼ����}
function ReadSysCardInfo(a_id, b_id: integer; out aId, bId, cId, Pwd, des, flag, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer; cPwd: ArrayChar): boolean; stdcall; external DllName;



//������������������������������������������������������������������������������
{���ֻ���}
function InitMach(port, mach: integer): boolean; stdcall; external DllName;
{��λ����}
function RestoreMachEx(port: integer): boolean; stdcall; external DllName;
{��ȡAT24C256 �̶���16���ֽ�}
function GetAT24C256(addr: ArrayChar; out data: ArrayChar): boolean; stdcall; external DllName;
function GetReader(addr: ArrayChar; out data: ArrayChar): boolean; stdcall; external DllName;
{��EEPROM}
function GetEEPROM(addr: ArrayChar; out data: ArrayChar): boolean; stdcall; external DllName;
//function GetEEPROMEx(style: integer; var addr, lt: ArrayChar): boolean; stdcall; external DllName;

{дAT24C256 �̶���16���ֽ�}
function SetAT24C256(addr, data: ArrayChar): boolean; stdcall; external DllName;
function SetReader(addr, data: ArrayChar): boolean; stdcall; external DllName;
{�����������ͻ����� or ��ң���ʧ�ͻ�����}
function SetCardEx(card: integer): boolean; stdcall; external DllName;
{�����������ͻ����� or ��ʧ����ʧ�ͻ�����}
function DelCardEx(card: integer): boolean; stdcall; external DllName;
{�������ܣ����ü���
 ���������GGnr�����ţ�Maxcons��ʾ�޶�3���ֽ�, MinBalance��С���
           MaxCount�޴�1���ֽ�,agio�Ƿ����10Ϊ������,TSnrʱ�����1-5;
           stimeʱ��Ӽ��㵽����4���ֽ�;consOne��һ��ˢ���۵�Ǯ,consTwo�ڶ���ˢ���۵�Ǯ,
           consThree��3��ˢ���۵�Ǯ,consFour��3���Ժ�ˢ���۵�Ǯ
 ����ֵ���ɹ�����True ���򷵻�false
 ��ע�������ŵ�ȡֵ��Χ��4�飬������16-31,32-47,48-63,64-79֮��}
function SetGrade(GGnr, Maxcons, MinBalance, MaxCount, agio, TSnr: integer;
  stime: ArrayChar; consOne, consTwo, consThree, consFour: integer): boolean; stdcall; external DllName;
{���ò�������}
function SetClassMenuName(ClassMen: char; data: ArrayChar): boolean; stdcall; external DllName;
{���ð�����02�Ļ�������̶�ΪA}
function SetClassKey(ClassMen: char; skey, balance: integer; data: ArrayChar): boolean; stdcall; external DllName;
{��������}
function GetRecord(addre: integer; var data: ArrayChar): boolean; stdcall; external DllName;
{���û�������}
function SetMachParamter(port, mach, Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer): boolean; stdcall; external DllName;
{��ȡ��������}
function GetMachParamter(port, mach: integer; out Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer): boolean; stdcall; external DllName;
{����ת�ʲ���}
function SetATMParamter(port, mach, OutSecnr, InSecnr: integer): boolean; stdcall; external DllName;
{��ȡת�ʲ���}
function GetATMParamter(port, mach: integer; out OutSecnr, InSecnr: integer): boolean; stdcall; external DllName;




//������������������������������������������������������������������������������


{��ȡ����ʱ��}
function GetTimeExA(port, mach: integer; out ArrTime: ArrayChar): boolean; stdcall; external DllName;
{����ʱ��}
function SetTimeExA(port, mach: integer; ArrTime: ArrayChar): boolean; stdcall; external DllName;
{�����������}
function ClearData(port, mach: integer): boolean; stdcall; external DllName;
{д��������}
function SetMachNo(port, oldmach, newmach: integer): boolean; stdcall; external DllName;
{�����������}
function SetSaleStyle(port, mach, style: integer): boolean; stdcall; external DllName;
{��ȡ�������}
function GetSaleStyle(port, mach: integer): integer; stdcall; external DllName;
{���û�������}
function SetMachStyle(port, mach, style: integer): boolean; stdcall; external DllName;
{��ȡ��������}
function GetMachStyle(port, mach: integer): integer; stdcall; external DllName;
{���ù�����}
function SetManagerCard(port, mach, macard: integer): boolean; stdcall; external DllName;
{��ȡ������}
function GetManagerCard(port, mach: integer): integer; stdcall; external DllName;
{����һ�����������}
function SetMaxConsume(port, mach, MaxConsume: integer): boolean; stdcall; external DllName;
{��ȡһ����������޶�}
function GetMaxConsume(port, mach: integer): integer; stdcall; external DllName;
{���û�����������ܶ�}
function SetMaxSumConsume(port, mach, MaxSumConsume: Cardinal): boolean; stdcall; external DllName;
{��ȡ������������ܶ�}
function GetMaxSumConsume(port, mach: integer): Cardinal; stdcall; external DllName;
{��ȡ���������ܶ�}
function GetSumConsume(port, mach: integer): integer; stdcall; external DllName;
{��ȡ�������Ѽ�¼����}
function GetRecordCount(port, mach: integer): integer; stdcall; external DllName;
{���û�����Ļ��Ϣ}
function SetScreenText(row: integer; data: ArrayChar): boolean; stdcall; stdcall; external DllName;
{���û���������Ϣ}
function SetBell(Id, Len: integer; HMtime: ArrayChar): boolean; stdcall; stdcall; external DllName;

//���ܿ�����
{��λ������}
function InitMachCard(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall; external DllName;
{����ʱ�ο�first}
function InitGradeCardFirst(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar;
  GGnr, Maxcons, MinBalance, MaxCount, agio, TSnr: integer;
  stime: ArrayChar; consOne, consTwo, consThree, consFour: integer): boolean; stdcall; external DllName;
{����ʱ�ο�next}
function InitGradeCardNext(Msecnr, Ssecnr: integer;
  GGnr, TSnr: integer;
  stimeF: ArrayChar; consOneF, consTwoF, consThreeF, consFourF: integer;
  stimeK: ArrayChar; consOneK, consTwoK, consThreeK, consFourK: integer): boolean; stdcall; external DllName;
{����������}
function InitParameterCard(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar;
  Machno, ConStyle, MachStyle, ManCard, Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer): boolean; stdcall; external DllName;
{ʱ�俨}
function InitTimeCard(Msecnr, Ssecnr, ReadOrWirte: integer; Mkeysnr, Skeysnr, ArrTime: ArrayChar): boolean; stdcall; external DllName;
{��ʼ��24C256}
function Init24C256Card(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr, data: ArrayChar): boolean; stdcall; external DllName;
{д�ɼ���}
function InitSetRecCard(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall; external DllName;
{���ɼ���}
function InitGetRecCard(Ssecnr: integer; Skeysnr: ArrayChar; out Machno, RecCount, SumConsume: int64): boolean; stdcall; external DllName;
{��ʼ����¼�����������ܶ�}
function InitRecSumConsumeCard(Msecnr, Ssecnr, RecCount, SumConsume: int64; Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall; external DllName;

//������������������������������������������������������������������������������
//�ͻ����ú���
function UpdateCardPwd(mode, port, remark, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer; OldPwd: ArrayChar): boolean; stdcall; external DllName;

//Tcp/ip----------------------------------------------------------------------------
//vProto 0:tcp 1:udp 2:rs232/485
procedure SetConnect(vProto, vPort: integer; ipaddress: ArrayChar); stdcall external DllName;
function SetNetCard(Msecnr, Ssecnr: integer; Mach_ip, Pc_ip, Pc_Mac, Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall external DllName;




function GbToBig5(Value: string; bFull: boolean = true): string;
function GbToBig5Ex(Value: string): string;
function MsgBoxAAA(sText, sCaption: string; Flags: Longint): integer;

implementation

{�˺������Դ���}

function GbToBig5(Value: string; bFull: boolean = true): string;
var
  Len: integer;
  s1, s2: string;
  ws: WideString;
begin
  Result := '';
  Len := MultiByteToWideChar(936, 0, PChar(Value), -1, nil, 0);
  SetLength(s1, Len * 2 + 1);
  Len := LCMapString($0804, LCMAP_TRADITIONAL_CHINESE, PChar(Value), -1,
    PChar(s1), Len * 2);
  if bFull then
  begin
    SetLength(ws, Len);
    MultiByteToWideChar(936, 0, PChar(s1), -1, PWideChar(ws), Len);
    Len := WideCharToMultiByte(950, 0, PWideChar(ws), -1, nil, 0, nil, nil);
    SetLength(s2, Len);
    Len := WideCharToMultiByte(950, 0, PWideChar(ws), -1, PChar(s2),
      Len, nil, nil);
    Result := Copy(s2, 1, Len);
  end
  else
    Result := Copy(s1, 1, Len);
  Result := Trim(Result);
end;

function MsgBoxAAA(sText, sCaption: string; Flags: Longint): integer;
begin
  if SysLocale.DefaultLCID = 1028 then
  begin
    sText := GbToBig5(sText);
    sCaption := GbToBig5(sCaption);
  end;
  Result := application.MessageBox(PChar(sText), PChar(sCaption), Flags);
end;

function GbToBig5Ex(Value: string): string;
begin
  Result := Value;
  if SysLocale.DefaultLCID = 1028 then
    Result := GbToBig5(Value);
end;

end.

