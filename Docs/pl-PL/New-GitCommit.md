# New-GitCommit

> **Module:** GenXdev.Coding.Git | **Type:** Cmdlet | **Aliases:** `commit`

## Synopsis

> Tworzy i wypycha nowe zatwierdzenie git ze wszystkimi zmianami.

## Description

Przygotowuje wszystkie zmiany w bieżącym repozytorium git, tworzy zatwierdzenie z określonym tytułem i wypycha zmiany do zdalnego źródła. Automatycznie konfiguruje śledzenie gałęzi nadrzędnej, jeśli jest to konieczne.

## Syntax

```powershell
New-GitCommit [[-Title] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Title` | String | — | — | 0 | — | Tytuł wiadomości zatwierdzenia do użycia |

## Examples

### Example 1

```powershell
New-GitCommit -Title "Added new authentication feature"
```

Utwórz zatwierdzenie z niestandardową wiadomością „Dodano nową funkcję uwierzytelniania”.

### Example 2

```powershell
commit "Hotfix for login issue"
```

Utwórz zatwierdzenie za pomocą aliasu 'commit' z domyślną wiadomością.

## Parameter Details

### `-Title <String>`

> Tytuł wiadomości zatwierdzenia do użycia

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

- [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GitChangedFiles.md)
- [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/PermanentlyDeleteGitFolders.md)
