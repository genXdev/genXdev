# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Crée et pousse un nouveau commit git avec toutes les modifications.

## Description

Ajoute toutes les modifications dans le dépôt git actuel, crée un commit avec le titre spécifié et pousse les changements vers l'origine distante. Configure automatiquement le suivi upstream si nécessaire.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Le titre du message de validation à utiliser |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Créez un commit avec un message personnalisé "Ajout d'une nouvelle fonctionnalité d'authentification".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Utilisez l'alias 'commit' pour créer un commit avec le message par défaut.

## Parameter Details

### `-Title <String>`

> Le titre du message de validation à utiliser

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRGet-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FRPermanentlyDeleteGitFolders.md)
