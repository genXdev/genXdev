# Get-GitChangedFiles

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `gitchanged`

## Synopsis

> Pobierz listę zmienionych plików w repozytorium Git.

## Description

Ta funkcja pobiera listę plików, które zostały zmienione w bieżącym repozytorium Git. Można jej użyć do identyfikacji plików, które zostały zmodyfikowane, dodane lub usunięte. Domyślnie zwraca ścieżki względne z prefiksem .\. Użyj parametru -PassThru, aby uzyskać obiekty FileInfo.

## Syntax

```powershell
Get-GitChangedFiles [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PassThru` | SwitchParameter | — | — | Named | `False` | Zwraca obiekty FileInfo (jak Get-ChildItem) zamiast ścieżek w postaci ciągów znaków. |

## Examples

### Example 1

```powershell
Get-GitChangedFiles
```

Zwraca ścieżki względne, takie jak ".\Modules\GenXdev.AI\3.26.2026\README.md".

### Example 2

```powershell
Get-GitChangedFiles -PassThru
```

Zwraca obiekty FileInfo dla każdego zmienionego pliku.

## Parameter Details

### `-PassThru`

> Zwraca obiekty FileInfo (jak Get-ChildItem) zamiast ścieżek w postaci ciągów znaków.

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

- [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-GitCommit.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/PermanentlyDeleteGitFolders.md)
