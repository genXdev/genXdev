# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> Performs an infinite auto opening google search .

## Description

Realiza una búsqueda en Google.
Abre 10 pestañas cada vez, se detiene hasta que se vuelve a visitar la pestaña inicial.
Cierra la pestaña inicial para detenerlo.

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | La consulta a realizar |
| `-Language` | String | — | — | Named | — | El idioma de los resultados de búsqueda devueltos |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
