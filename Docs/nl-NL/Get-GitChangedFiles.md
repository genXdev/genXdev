# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> De lijst met gewijzigde bestanden in een Git-repository ophalen.

## Description

Deze functie haalt de lijst op van bestanden die zijn gewijzigd in de huidige Git-repository. Het kan worden gebruikt om te identificeren welke bestanden zijn gewijzigd, toegevoegd of verwijderd. Standaard geeft het relatieve paden terug met het voorvoegsel .\ Gebruik -PassThru om FileInfo-objecten te krijgen.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Retourneert FileInfo-objecten (zoals Get-ChildItem) in plaats van padreeksen. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Retourneert relatieve paden zoals ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Retourneert FileInfo-objecten voor elk gewijzigd bestand.

## Parameter Details

### `-PassThru`

> Retourneert FileInfo-objecten (zoals Get-ChildItem) in plaats van padreeksen.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/PermanentlyDeleteGitFolders.md)
