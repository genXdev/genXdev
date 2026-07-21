# Add-FeatureLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `feature`

## Synopsis

> Ajoute une ligne de fonctionnalité au fichier README avec un horodatage.

## Description

Ajoute une ligne de fonctionnalité au fichier README spécifié, précédée de la date actuelle au format aaaaMMjj. La ligne peut être formatée en tant que code et éventuellement affichée.

## Syntax

```powershell
Add-FeatureLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Le texte de description de la fonctionnalité à ajouter |
| `-Code` | SwitchParameter | — | — | Named | — | ```powershell
# This is a PowerShell cmdlet help text
``` |
| `-Show` | SwitchParameter | — | — | Named | — | Affichez le README après avoir ajouté la ligne |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | Utiliser le README dans le répertoire personnel |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Utiliser le fichier README dans le répertoire OneDrive |
| `-Priority` | Int32 | — | — | Named | `1` | Priorité pour le tri (plus élevé = affiché en premier, défaut 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Trier les lignes par date (préfixe aaaammjj) au lieu de la priorité |
| `-Ascending` | SwitchParameter | — | — | Named | — | Inverse l'ordre de tri (croissant au lieu de décroissant) |
| `-First` | Int32 | — | — | Named | `0` | Limite - Afficher la sortie aux N premières lignes |

## Examples

### Add-FeatureLineToREADME -Line "Added new Git feature"

```powershell
Add-FeatureLineToREADME -Line "Added new Git feature"
```

### feature "Added new Git feature" -Code -Show

```powershell
feature "Added new Git feature" -Code -Show
```

## Parameter Details

### `-Line <String>`

> Le texte de description de la fonctionnalité à ajouter

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> ```powershell
# This is a PowerShell cmdlet help text
```

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> Affichez le README après avoir ajouté la ligne

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> Utiliser le README dans le répertoire personnel

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> Utiliser le fichier README dans le répertoire OneDrive

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> Priorité pour le tri (plus élevé = affiché en premier, défaut 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SortByDate`

> Trier les lignes par date (préfixe aaaammjj) au lieu de la priorité

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> Inverse l'ordre de tri (croissant au lieu de décroissant)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> Limite - Afficher la sortie aux N premières lignes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPublish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUpdate-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRVSCode.md)
