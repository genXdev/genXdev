# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> Génère un rapport détaillé des opérations de refactorisation et de leur état.

## Description

Analyse et signale la progression des opérations de refactorisation en examinant leur état actuel, leur état d'achèvement et les fonctions affectées. Fournit une sortie sous forme de tableau structuré ou de colonnes de texte alignées lisibles par l'homme. Le rapport inclut le nom de la refactorisation, la clé d'invite, la priorité, l'état, le nombre de fonctions et le pourcentage d'achèvement.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Le nom de la refactorisation, accepte les caractères génériques 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Spécifie le chemin d'accès au fichier de base de données des préférences. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Si défini, utilise uniquement le cache de session pour les données de refactorisation. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Si défini, vide le cache de session avant l'exécution. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Si défini, ignorer le chargement du cache de session. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Générer le rapport au format texte au lieu d'une table de hachage |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Génère un rapport textuel pour les refactorisations correspondant à "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Génère un rapport de table de hachage pour tous les refactorisations utilisant un alias.

## Parameter Details

### `-Name <String[]>`

> Le nom de la refactorisation, accepte les caractères génériques

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> Spécifie le chemin d'accès au fichier de base de données des préférences.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Si défini, utilise uniquement le cache de session pour les données de refactorisation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Si défini, vide le cache de session avant l'exécution.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Si défini, ignorer le chargement du cache de session.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> Générer le rapport au format texte au lieu d'une table de hachage

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

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRAdd-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRNew-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FROpen-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPublish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRRemove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRStart-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRUpdate-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRVSCode.md)
