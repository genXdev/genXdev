# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> Voert een oneindige automatische Google-zoekopdracht uit.

## Description

Voert een Google-zoekopdracht uit.
Opent elke keer 10 tabbladen, pauzeert tot het eerste tabblad opnieuw wordt bezocht.
Sluit het eerste tabblad om te stoppen.

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | De uit te voeren query |
| `-Language` | String | — | — | Named | — | De taal van de geretourneerde zoekresultaten |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
