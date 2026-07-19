# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> Performs an infinite auto opening google search.

## Description

Führt eine Google-Suche durch.
Öffnet jedes Mal 10 Tabs, pausiert, bis der ursprüngliche Tab erneut besucht wird.
Schließen Sie den ersten Tab, um zu stoppen.

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | Die durchzuführende Abfrage |
| `-Language` | String | — | — | Named | — | Die Sprache der zurückgegebenen Suchergebnisse |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
