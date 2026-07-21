# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analyse les chaînes pour toute URI valide.

## Description

* Extrait tous les URI valides du texte d'entrée, en prenant en charge les schémas d'URI standard et personnalisés comme http:, https:, ftp:, magnet:, about:, etc.
* Renvoie des objets Uri pour chaque URI valide trouvé.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Entrée de texte pouvant contenir des URI |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analyse la chaîne de texte fournie pour y rechercher des URI et retourne des objets Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Redirige une chaîne de texte vers l'applet de commande pour l'analyse d'URI.

## Parameter Details

### `-Text <String[]>`

> Entrée de texte pouvant contenir des URI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-AllPossibleQueries.md)
