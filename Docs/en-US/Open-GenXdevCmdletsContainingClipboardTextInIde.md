# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> Opens files in IDE that contain clipboard text

## Description

The text in the clipboard is used to search in all GenXdev scripts and when found opens that file in Code or Visual Studio
##############################################################################

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Search for clipboard text in all GenXdev scripts |
| `-Copilot` | SwitchParameter | — | — | Named | — | Add sourcefile to Copilot edit-session |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
