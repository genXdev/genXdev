# ConvertTo-Uris

> **Module:** GenXdev.Queries | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Analyse les chaînes de caractères pour toute URI valide.

## Description

* Extrait toutes les URI valides du texte saisi, en prenant en charge les schémas d'URI standard et personnalisés comme http:, https:, ftp:, magnet:, about:, etc.
* Renvoie des objets Uri pour chaque URI valide trouvée.

## Syntax

```powershell
ConvertTo-Uris [[-Text] <string[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String[] | — | ✅ (ByValue) | 0 | — | Text input that may contain URIs |

## Examples

### Example 1

```powershell
ConvertTo-Uris -Text "Check out https://github.com and about:config"
```

Analyse la chaîne de texte fournie pour y trouver des URI et retourne des objets Uri.

### Example 2

```powershell
"Visit http://example.com" | ConvertTo-Uris
```

Achemine une chaîne de texte vers la cmdlet pour l'analyse d'URI.

## Related Links

- [ConvertTo-Uris on GitHub](https://github.com/genXdev/genXdev)
