# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> 창이나 프로세스에 시뮬레이션된 키 입력을 전송합니다.

## Description

이 함수는 Windows Script Host Shell 개체를 사용하여 대상 창이나 프로세스에 키보드 입력을 보냅니다. 프로세스 이름, 프로세스 ID 또는 창 핸들로 창을 지정할 수 있습니다. 이 함수는 특수 키 시퀀스, 이스케이프 문자 및 안정적인 키 전달을 위한 다양한 타이밍 옵션을 지원합니다.

## Syntax

```powershell
Send-Key -KeysToSend <String[]> [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [<CommonParameters>]

Send-Key [-ProcessName <String>] [<CommonParameters>]

Send-Key [-ProcessId <Int32>] [<CommonParameters>]

Send-Key [-WindowHandle <Int64>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KeysToSend` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | ["The keyboard input to send as an array of strings"] |
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | 키를 보낼 프로세스의 이름 (와일드카드 지원) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | 키를 보낼 프로세스의 ID *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | 키를 전송할 창 핸들 *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 키 전송 후 포커스를 대상 창에 유지 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Shift+Enter를 사용하여 새 줄을 입력하세요. Enter 대신 Shift+Enter를 사용하십시오. |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | 다른 입력 문자열 사이의 지연 시간(밀리초) |

## Examples

### Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad" Sends text to Notepad followed by Enter key using process name targeting.

```powershell
Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad"
Sends text to Notepad followed by Enter key using process name targeting.
```

### Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234 Sends literal "{F11}" text rather than F11 key using process ID targeting.

```powershell
Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234
Sends literal "{F11}" text rather than F11 key using process ID targeting.
```

### sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50 Sends multi-line text with custom delay using window handle targeting.

```powershell
sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50
Sends multi-line text with custom delay using window handle targeting.
```

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
