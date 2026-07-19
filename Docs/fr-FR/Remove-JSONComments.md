# Remove-JSONComments

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Supprime les commentaires du contenu JSON.

## Description

* Traite le contenu JSON et supprime les commentaires sur une seule ligne et
  sur plusieurs lignes tout en préservant la structure JSON.
* Utile pour nettoyer les fichiers JSON qui contiennent des commentaires de documentation
  avant l'analyse.
* Prend en charge les commentaires sur une seule ligne (//) et sur plusieurs lignes (/* */).

## Syntax

```powershell
Remove-JSONComments [-Json] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Json` | String | ✅ | — | 0 | — | [
  "Ceci est un exemple de tableau de chaînes de caractères.",
  "Chaque élément doit être traduit.",
  "Conservez la structure JSON."
] |

## Examples

### Example 1

```powershell
$jsonContent = @'
{
    // This is a comment
    "name": "test", /* inline comment */
    "value": 123
}
'@ -split "`n"
Remove-JSONComments -Json $jsonContent
```

Supprime les commentaires du contenu JSON stocké dans une variable.

### Example 2

```powershell
$jsonContent | Remove-JSONComments
```

Traite le contenu JSON provenant du pipeline.

## Related Links

- [Remove-JSONComments on GitHub](https://github.com/genXdev/genXdev)
