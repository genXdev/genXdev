# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> Отправляет имитируемые нажатия клавиш в окно или процесс.

## Description

Эта функция отправляет ввод с клавиатуры в целевое окно или процесс, используя объект оболочки Windows Script Host. Она может адресовать окна по имени процесса, идентификатору процесса или дескриптору окна. Функция поддерживает специальные последовательности клавиш, escape-символы и различные параметры синхронизации для надежной доставки нажатий.

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
| `-KeysToSend` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The keyboard input to send as an array of strings |
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | Имя процесса для отправки ключей (поддерживает символы подстановки) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | ID процесса для отправки клавиш *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | Дескриптор окна для отправки нажатий клавиш *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Удерживать фокус клавиатуры на целевом окне после отправки нажатий |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter for newlines |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | Задержка между различными входными строками в миллисекундах |

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
