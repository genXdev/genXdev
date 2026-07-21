# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Crea e invia un nuovo commit git con tutte le modifiche.

## Description

Esegue lo stage di tutte le modifiche nel repository git corrente, crea un commit con il titolo specificato e invia le modifiche al remote origin. Imposta automaticamente il monitoraggio upstream se necessario.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Il titolo del messaggio di commit da utilizzare |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Crea un commit con un messaggio personalizzato "Aggiunta nuova funzionalità di autenticazione".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Esegui un commit usando l'alias 'commit' con messaggio predefinito.

## Parameter Details

### `-Title <String>`

> Il titolo del messaggio di commit da utilizzare

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/PermanentlyDeleteGitFolders.md)
