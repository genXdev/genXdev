# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> Effectue une ouverture automatique infinie de recherche Google.

## Description

Effectue une recherche Google.
Ouvre 10 onglets à chaque fois, fait une pause jusqu'à ce que l'onglet initial soit revisité.
Ferme l'onglet initial pour arrêter.

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | La requête à exécuter |
| `-Language` | String | — | — | Named | — | La langue des résultats de recherche retournés |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
