unit UntDLL;

interface

uses nb30, TypInfo, UntTest, windows, SysUtils, Forms;

type ArrayChar = array[0..79] of char;
const DllName = 'fkc60.dll';
//------------------------------------------------------------------------------
{取得DLL版本号}
function GetDllVersion: integer; stdcall; external DllName;
{打开串口}
function USB_DevInit(port: integer): boolean; stdcall; external DllName;
{寻卡}
function USB_Request(style: integer): integer; stdcall; external DllName;
{防冲撞}
function USB_Anticoll(out arr: ArrayChar): boolean; stdcall; external DllName;
{选定卡片}
function USB_Select(arr: ArrayChar): boolean; stdcall; external DllName;
{验证密钥}
function USB_Authentication(mode, secnr: integer; keysnr: ArrayChar): boolean; stdcall; external DllName;
{写整块}
function USB_Write(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{读整块}
function USB_Read(secnr, Blonr: integer; out arr: ArrayChar): boolean; stdcall; stdcall; external DllName;
{控制读写器发声，鸣叫后关闭串口}
function USB_BeepEx(port, stype: integer): boolean; stdcall; external DllName;
{鸣叫后不关闭串口}
function USB_BeepExA(ms: integer): boolean; stdcall; external DllName;
{命令卡选定的卡进入休眠}
function USB_Halt: boolean; stdcall; stdcall; external DllName;
{加值减值函数}
function USB_Value(secnr, Blonr, stype: integer; data: ArrayChar): boolean; stdcall; external DllName;
{初始化钱包}
function USB_ValueInit(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{初始化钱包扩展}
function USB_ValueInitEx(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{备份钱包}
function USB_BackUp(secnr, source, destination: integer): boolean; stdcall; external DllName;
{关闭串口}
function USB_DevClose: boolean; stdcall; external DllName;
{寻卡扩展函数}
function USB_RequestEx(DataArr: ArrayChar): integer; stdcall; external DllName;
{写编号}
function WriteWorkNo(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{读编号}
function ReadWorkNo(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{写姓名}
function WriteName(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{读姓名}
function ReadName(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{写经销商id、客户id、用户id}
function WriteParameter(ptype, secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读经销商id、客户id、用户id}
function ReadParameter(ptype, secnr, Blonr: integer): integer; stdcall; external DllName;
{写卡号}
function WriteCardNo(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读卡号}
function ReadCardNo(secnr, Blonr: integer): integer; stdcall; external DllName;
{写卡应用标示}
function WriteCardRemark(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读卡应用表示}
function ReadCardRemark(secnr, Blonr: integer): integer; stdcall; external DllName;
{写级别}
function WriteGrade(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读级别}
function ReadGrade(secnr, Blonr: integer): integer; stdcall; external DllName;
{写用户消费密码}
function WriteUserPass(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{读用户消费密码}
function ReadUserPass(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{写使用有效期限}
function WriteUseDate(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{读使用有效期限}
function ReadUseDate(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{写充值日期时间}
function WriteValueDateTime(secnr, Blonr: integer; data: ArrayChar): boolean; stdcall; external DllName;
{读充值日期时间}
function ReadValueDateTime(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{读当前、备份、充前、充后余额}
function ReadCardBalance(secnr, Blonr, stype: integer): integer; stdcall; external DllName;
{充前、减值}
function USB_ValueEx(secnr, Blonr, stype, data: integer): boolean; stdcall; external DllName;
{备份当前、备份、充前、充后金额}
function USB_BackUpEx(secnr, source, destination, stype: integer): boolean; stdcall; external DllName;
{读最后刷卡日期时间}
function ReadBrushDate(secnr, Blonr: integer; out data: ArrayChar): boolean; stdcall; external DllName;
{写刷卡次数 }
function WriteBrushCount(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读刷卡次数}
function ReadBrushCount(secnr, Blonr: integer): integer; stdcall; external DllName;
{写日消费次数}
function WriteDayCount(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读日消费次数}
function ReadDayCount(secnr, Blonr: integer): integer; stdcall; external DllName;
{设定公共数据扇区和钱包扇区}
function WriteMasteID(secnr, Blonr, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer): boolean; stdcall; external DllName;
{读设置卡上的公共数据扇区和钱包扇区}
function ReadMasteID(secnr, Blonr: integer; out Msecnr, Ssecnr, Wsecnr, Qsecnr: integer): boolean; stdcall; external DllName;
{写日累计消费额}
function WriteDayMoney(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读日累计消费额}
function ReadDayMoney(secnr, Blonr: integer): integer; stdcall; external DllName;
{加减值函数，防止各种M1芯片的不兼容，特封装此函数}
function USB_ValueExA(secnr, Blonr, stype, data: integer): integer; stdcall; external DllName;
{方卡专用加减值函数,封装了备份钱包函数}
function USB_ValueExAx(secnr, Blonr, stype, data: integer): integer; stdcall; external DllName;
{写算法标示}
function WriteKeyFlag(secnr, Blonr, data: integer): boolean; stdcall; external DllName;
{读算法标示}
function ReadKeyFlag(secnr, Blonr: integer): integer; stdcall; external DllName;
{判断钱包格式是否正确}
function QueryValueInit(secnr, Blonr: integer): boolean; stdcall; external DllName;
{函数功能：读系统卡
 传入 经销商id(a_id) ,客户id(b_id)已备校验
 返回 aId经销商id ,bId客户id ,cId用户id ,Pwd随机密码,
 des密码算法标志 ,falg卡标志 ,Msecnr公共区 ,Ssecnr钱包区1 ,Wsecnr钱包区2 ,Qsecnr钱包区3 ,cPwd用户卡初始密码}
function ReadSysCardInfo(a_id, b_id: integer; out aId, bId, cId, Pwd, des, flag, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer; cPwd: ArrayChar): boolean; stdcall; external DllName;



//———————————————————————————————————————
{握手机器}
function InitMach(port, mach: integer): boolean; stdcall; external DllName;
{复位机器}
function RestoreMachEx(port: integer): boolean; stdcall; external DllName;
{读取AT24C256 固定读16个字节}
function GetAT24C256(addr: ArrayChar; out data: ArrayChar): boolean; stdcall; external DllName;
function GetReader(addr: ArrayChar; out data: ArrayChar): boolean; stdcall; external DllName;
{读EEPROM}
function GetEEPROM(addr: ArrayChar; out data: ArrayChar): boolean; stdcall; external DllName;
//function GetEEPROMEx(style: integer; var addr, lt: ArrayChar): boolean; stdcall; external DllName;

{写AT24C256 固定读16个字节}
function SetAT24C256(addr, data: ArrayChar): boolean; stdcall; external DllName;
function SetReader(addr, data: ArrayChar): boolean; stdcall; external DllName;
{消户（开户型机器） or 解挂（挂失型机器）}
function SetCardEx(card: integer): boolean; stdcall; external DllName;
{开户（开户型机器） or 挂失（挂失型机器）}
function DelCardEx(card: integer): boolean; stdcall; external DllName;
{函数功能：设置级别
 传入参数：GGnr级别编号，Maxcons表示限额3个字节, MinBalance最小余额
           MaxCount限次1个字节,agio是否打折10为不打折,TSnr时段序号1-5;
           stime时间从几点到几点4个字节;consOne第一次刷卡扣的钱,consTwo第二次刷卡扣的钱,
           consThree第3次刷卡扣的钱,consFour第3次以后刷卡扣的钱
 返回值：成功返回True 否则返回false
 备注：级别编号的取值范围分4组，必须在16-31,32-47,48-63,64-79之间}
function SetGrade(GGnr, Maxcons, MinBalance, MaxCount, agio, TSnr: integer;
  stime: ArrayChar; consOne, consTwo, consThree, consFour: integer): boolean; stdcall; external DllName;
{设置部类名称}
function SetClassMenuName(ClassMen: char; data: ArrayChar): boolean; stdcall; external DllName;
{设置按键金额，02的机器部类固定为A}
function SetClassKey(ClassMen: char; skey, balance: integer; data: ArrayChar): boolean; stdcall; external DllName;
{下载数据}
function GetRecord(addre: integer; var data: ArrayChar): boolean; stdcall; external DllName;
{设置机器参数}
function SetMachParamter(port, mach, Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer): boolean; stdcall; external DllName;
{读取机器参数}
function GetMachParamter(port, mach: integer; out Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer): boolean; stdcall; external DllName;
{设置转帐参数}
function SetATMParamter(port, mach, OutSecnr, InSecnr: integer): boolean; stdcall; external DllName;
{读取转帐参数}
function GetATMParamter(port, mach: integer; out OutSecnr, InSecnr: integer): boolean; stdcall; external DllName;




//———————————————————————————————————————


{读取机器时间}
function GetTimeExA(port, mach: integer; out ArrTime: ArrayChar): boolean; stdcall; external DllName;
{设置时间}
function SetTimeExA(port, mach: integer; ArrTime: ArrayChar): boolean; stdcall; external DllName;
{清除机内数据}
function ClearData(port, mach: integer): boolean; stdcall; external DllName;
{写入机器编号}
function SetMachNo(port, oldmach, newmach: integer): boolean; stdcall; external DllName;
{设置消费类别}
function SetSaleStyle(port, mach, style: integer): boolean; stdcall; external DllName;
{读取消费类别}
function GetSaleStyle(port, mach: integer): integer; stdcall; external DllName;
{设置机器类型}
function SetMachStyle(port, mach, style: integer): boolean; stdcall; external DllName;
{读取机器类型}
function GetMachStyle(port, mach: integer): integer; stdcall; external DllName;
{设置管理卡号}
function SetManagerCard(port, mach, macard: integer): boolean; stdcall; external DllName;
{读取管理卡号}
function GetManagerCard(port, mach: integer): integer; stdcall; external DllName;
{设置一次消费最大金额}
function SetMaxConsume(port, mach, MaxConsume: integer): boolean; stdcall; external DllName;
{读取一次消费最大限额}
function GetMaxConsume(port, mach: integer): integer; stdcall; external DllName;
{设置机器最大消费总额}
function SetMaxSumConsume(port, mach, MaxSumConsume: Cardinal): boolean; stdcall; external DllName;
{读取机器最大消费总额}
function GetMaxSumConsume(port, mach: integer): Cardinal; stdcall; external DllName;
{读取机器消费总额}
function GetSumConsume(port, mach: integer): integer; stdcall; external DllName;
{读取机器消费记录总数}
function GetRecordCount(port, mach: integer): integer; stdcall; external DllName;
{设置机器屏幕信息}
function SetScreenText(row: integer; data: ArrayChar): boolean; stdcall; stdcall; external DllName;
{设置机器打铃信息}
function SetBell(Id, Len: integer; HMtime: ArrayChar): boolean; stdcall; stdcall; external DllName;

//功能卡函数
{复位机器卡}
function InitMachCard(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall; external DllName;
{级别时段卡first}
function InitGradeCardFirst(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar;
  GGnr, Maxcons, MinBalance, MaxCount, agio, TSnr: integer;
  stime: ArrayChar; consOne, consTwo, consThree, consFour: integer): boolean; stdcall; external DllName;
{级别时段卡next}
function InitGradeCardNext(Msecnr, Ssecnr: integer;
  GGnr, TSnr: integer;
  stimeF: ArrayChar; consOneF, consTwoF, consThreeF, consFourF: integer;
  stimeK: ArrayChar; consOneK, consTwoK, consThreeK, consFourK: integer): boolean; stdcall; external DllName;
{机器参数卡}
function InitParameterCard(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar;
  Machno, ConStyle, MachStyle, ManCard, Cyc, TimeOrMeter, UnitCount, UnitMeter, UnitOpen, UnitEqual: integer): boolean; stdcall; external DllName;
{时间卡}
function InitTimeCard(Msecnr, Ssecnr, ReadOrWirte: integer; Mkeysnr, Skeysnr, ArrTime: ArrayChar): boolean; stdcall; external DllName;
{初始化24C256}
function Init24C256Card(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr, data: ArrayChar): boolean; stdcall; external DllName;
{写采集卡}
function InitSetRecCard(Msecnr, Ssecnr: integer; Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall; external DllName;
{读采集卡}
function InitGetRecCard(Ssecnr: integer; Skeysnr: ArrayChar; out Machno, RecCount, SumConsume: int64): boolean; stdcall; external DllName;
{初始化记录总数和消费总额}
function InitRecSumConsumeCard(Msecnr, Ssecnr, RecCount, SumConsume: int64; Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall; external DllName;

//———————————————————————————————————————
//客户调用函数
function UpdateCardPwd(mode, port, remark, Msecnr, Ssecnr, Wsecnr, Qsecnr: integer; OldPwd: ArrayChar): boolean; stdcall; external DllName;

//Tcp/ip----------------------------------------------------------------------------
//vProto 0:tcp 1:udp 2:rs232/485
procedure SetConnect(vProto, vPort: integer; ipaddress: ArrayChar); stdcall external DllName;
function SetNetCard(Msecnr, Ssecnr: integer; Mach_ip, Pc_ip, Pc_Mac, Mkeysnr, Skeysnr: ArrayChar): boolean; stdcall external DllName;




function GbToBig5(Value: string; bFull: boolean = true): string;
function GbToBig5Ex(Value: string): string;
function MsgBoxAAA(sText, sCaption: string; Flags: Longint): integer;

implementation

{此函数来自大富翁}

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

