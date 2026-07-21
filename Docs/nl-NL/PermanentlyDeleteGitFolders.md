# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Verwijdert definitief opgegeven mappen uit alle branches in een Git-opslagplaats.

## Description

Reinigt een Git-repository door opgegeven mappen uit de volledige commitgeschiedenis van alle branches te verwijderen. Dit wordt gedaan door de repository te klonen, git filter-branch te gebruiken om de mappen te verwijderen en de wijzigingen geforceerd terug te pushen. Deze bewerking is destructief en herschrijft permanent de Git-geschiedenis.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | De URI van de Git-opslagplaats die moet worden opgeschoond |
| `-Folders` | String[] | ✅ | — | 1 | — | Matrix van mappaden om permanent te verwijderen |
| `-tempPath` | String | — | — | Named | `"~\convert.tmp\"` | The `-tempPath` parameter. |

## Examples

### PermanentlyDeleteGitFolders `     -RepoUri "https://github.com/user/repo.git" `     -Folders "bin", "obj"

```powershell
PermanentlyDeleteGitFolders `
    -RepoUri "https://github.com/user/repo.git" `
    -Folders "bin", "obj"
```

## Parameter Details

### `-RepoUri <String>`

> De URI van de Git-opslagplaats die moet worden opgeschoond

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Folders <String[]>`

> Matrix van mappaden om permanent te verwijderen

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-tempPath <String>`

> The `-tempPath` parameter.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"~\convert.tmp\"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GitChangedFiles.md)
- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-GitCommit.md)
