# PermanentlyDeleteGitFolders

> **Module:** GenXdev.Coding.Git | **Type:** Function | **Aliases:** —

## Synopsis

> Tar bort angivna mappar permanent från alla grenar i en Git-databas.

## Description

Rensar ett Git-förråd genom att ta bort angivna mappar från hela commit-historiken över alla grenar. Detta görs genom att klona förrådet, använda git filter-branch för att ta bort mapparna, och tvinga fram ändringarna tillbaka. Denna åtgärd är destruktiv och skriver permanent om Git-historiken.

## Syntax

```powershell
PermanentlyDeleteGitFolders -RepoUri <String> -Folders <String[]> [-tempPath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RepoUri` | String | ✅ | — | 0 | — | URI:en för Git-databasen som ska rengöras |
| `-Folders` | String[] | ✅ | — | 1 | — | Matris med mappsökvägar att permanent ta bort |
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

> URI:en för Git-databasen som ska rengöras

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

> Matris med mappsökvägar att permanent ta bort

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GitChangedFiles.md)
- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-GitCommit.md)
