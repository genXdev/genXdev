# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> 在IDE中打开包含剪贴板文本的文件

## Description

剪贴板中的文本用于在所有GenXdev脚本中搜索，找到后会在Code或Visual Studio中打开该文件

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Search for clipboard text in all GenXdev scripts |
| `-Copilot` | SwitchParameter | — | — | Named | — | 将源文件添加到 Copilot 编辑会话 |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
