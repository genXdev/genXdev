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
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The path to the sourcefile to open |
| `-LineNo` | Int32 | — | — | 1 | `0` | The line number to navigate to |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array of keyboard inputs to send to the application |
| `-Code` | SwitchParameter | — | — | Named | — | The ide to open the file in |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Hold keyboard focus on target window |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between different input strings in milliseconds |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
