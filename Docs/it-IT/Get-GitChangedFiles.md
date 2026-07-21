# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Ottieni l'elenco dei file modificati in un repository Git.

## Description

Questa funzione recupera l'elenco dei file che sono stati modificati nel repository Git corrente. Può essere utilizzata per identificare quali file sono stati modificati, aggiunti o eliminati. Per impostazione predefinita, restituisce percorsi relativi con il prefisso .\ . Utilizzare -PassThru per ottenere oggetti FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Restituisce oggetti FileInfo (come Get-ChildItem) anziché stringhe di percorso. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Restituisce percorsi relativi come ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Restituisce oggetti FileInfo per ogni file modificato.

## Parameter Details

### `-PassThru`

> Restituisce oggetti FileInfo (come Get-ChildItem) anziché stringhe di percorso.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/PermanentlyDeleteGitFolders.md)
