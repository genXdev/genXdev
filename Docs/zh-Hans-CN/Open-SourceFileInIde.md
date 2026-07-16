# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 要打开的源文件的路径 |
| `-LineNo` | Int32 | — | — | 1 | `0` | 要导航到的行号 |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array of keyboard inputs to send to the application |
| `-Code` | SwitchParameter | — | — | Named | — | 用于打开文件的IDE |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 在 Visual Studio 中打开 |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | 将键盘焦点保持在目标窗口上 |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | 不同输入字符串之间的延迟（毫秒） |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
