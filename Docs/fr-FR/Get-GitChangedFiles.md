# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Obtenez la liste des fichiers modifiés dans un dépôt Git.

## Description

Cette fonction récupère la liste des fichiers qui ont été modifiés dans le dépôt Git actuel. Elle peut être utilisée pour identifier les fichiers qui ont été modifiés, ajoutés ou supprimés. Par défaut, renvoie des chemins relatifs avec le préfixe .\ . Utilisez -PassThru pour obtenir des objets FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Retourne des objets FileInfo (comme Get-ChildItem) au lieu de chaînes de chemin. |

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

Retourne des objets FileInfo pour chaque fichier modifié.

## Parameter Details

### `-PassThru`

> Retourne des objets FileInfo (comme Get-ChildItem) au lieu de chaînes de chemin.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPermanentlyDeleteGitFolders.md)
