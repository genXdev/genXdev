# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged

## Synopsis

> Obtenir la liste des fichiers modifiés dans un dépôt Git.

## Description

Cette fonction récupère la liste des fichiers qui ont été modifiés dans le référentiel Git actuel. Elle peut être utilisée pour identifier les fichiers qui ont été modifiés, ajoutés ou supprimés. Par défaut, elle renvoie les chemins relatifs avec le préfixe .\ . Utilisez -PassThru pour obtenir des objets FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Renvoie des objets FileInfo (comme Get-ChildItem) au lieu de chaînes de chemin. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Retourne des chemins relatifs comme ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Renvoie les objets FileInfo pour chaque fichier modifié.

## Outputs


## Related Links

- [Get-GitChangedFiles on GitHub](https://github.com/genXdev/genXdev)
