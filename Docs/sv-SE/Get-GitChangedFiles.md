# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Hämta listan över ändrade filer i en Git-databas.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Returnerar FileInfo-objekt (som Get-ChildItem) istället för sökvägssträngar. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Returnerar relativa sökvägar som ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Returnerar FileInfo-objekt för varje ändrad fil.

## Parameter Details

### `-PassThru`

> Returnerar FileInfo-objekt (som Get-ChildItem) istället för sökvägssträngar.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/PermanentlyDeleteGitFolders.md)
