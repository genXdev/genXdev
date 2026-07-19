# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> Открывает исходный файл в предпочтительной IDE (Visual Studio Code или Visual Studio).

## Description

Эта функция открывает указанный исходный файл либо в Visual Studio Code, либо в Visual Studio. Она может перейти непосредственно к конкретной строке и, при необходимости, отправить ввод с клавиатуры в IDE после открытия файла. Функция пытается определить, какую IDE использовать, основываясь на текущем хост-процессе, запущенных приложениях или выборе пользователя.

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Путь к исходному файлу для открытия |
| `-LineNo` | Int32 | — | — | 1 | `0` | Номер строки для перехода |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Массив вводимых с клавиатуры данных для отправки в приложение |
| `-Code` | SwitchParameter | — | — | Named | — | Иде, чтобы открыть файл в |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Открыть в Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Удержание фокуса клавиатуры на целевом окне |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Используйте Shift+Enter вместо Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Задержка между различными входными строками в миллисекундах |

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
