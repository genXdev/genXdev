# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> Performs an infinite auto opening google search .

## Description

Performs a google search .
Opens 10 tabs each times, pauses until initial tab is revisited
Close initial tab to stop

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | The query to perform |
| `-Language` | String | — | — | Named | — | The language of the returned search results |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
