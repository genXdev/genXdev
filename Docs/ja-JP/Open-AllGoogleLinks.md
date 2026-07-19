# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> 無限に自動でGoogle検索を開く動作を行います。

## Description

Google検索を実行します。
毎回10個のタブを開き、最初のタブに戻るまで一時停止します。
最初のタブを閉じて停止します。

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | 実行するクエリ |
| `-Language` | String | — | — | Named | — | 検索結果の表示言語 |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
