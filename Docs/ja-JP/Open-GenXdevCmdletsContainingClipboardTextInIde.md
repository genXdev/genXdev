# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> クリップボードテキストを含むファイルをIDEで開く

## Description

クリップボード内のテキストは、すべてのGenXdevスクリプトを検索するために使用され、見つかった場合はCodeまたはVisual Studioでそのファイルを開きます。

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | すべてのGenXdevスクリプトでクリップボードテキストを検索 |
| `-Copilot` | SwitchParameter | — | — | Named | — | ソースファイルをCopilot編集セッションに追加する |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
