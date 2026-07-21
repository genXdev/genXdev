# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Maakt een nieuwe git commit aan met alle wijzigingen en pusht deze.

## Description

Staging van alle wijzigingen in de huidige git-repository, maakt een commit met de opgegeven titel en pusht de wijzigingen naar de externe origin. Stelt automatisch upstream tracking in indien nodig.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | De te gebruiken titel van het commit-bericht |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Maak een commit aan met een aangepast bericht "Nieuwe authenticatiefunctie toegevoegd".

### Example 2

```powershell
commit "Hotfix for login issue"
```

Maak een commit met behulp van het 'commit'-alias met standaardbericht.

## Parameter Details

### `-Title <String>`

> De te gebruiken titel van het commit-bericht

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/PermanentlyDeleteGitFolders.md)
