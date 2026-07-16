# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
