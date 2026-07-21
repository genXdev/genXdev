# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Skapar och trycker en ny git-commit med alla ändringar.

## Description

Scener alla ändringar i det aktuella git-förrådet, skapar en commit med den angivna titeln och skickar ändringarna till fjärrursprunget. Automatiskt ställer in uppströmmande spårning om det behövs.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Kommentarsmeddelandets titel att använda |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Skapa en commit med ett anpassat meddelande "Added new authentication feature".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Skapa en commit med hjälp av 'commit'-aliaset med standardmeddelande.

## Parameter Details

### `-Title <String>`

> Kommentarsmeddelandets titel att använda

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/PermanentlyDeleteGitFolders.md)
