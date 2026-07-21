# Start-NextRefactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `nextrefactor`

## Synopsis

> Kontynuuje lub wznawia sesję refaktoryzacji kodu.

## Description

Zarządza operacjami refaktoryzacji kodu poprzez przetwarzanie definicji refaktoryzacji w kolejności priorytetów. Obsługuje wybór plików, śledzenie postępu, obsługę błędów oraz zapewnia interaktywną kontrolę użytkownika nad procesem refaktoryzacji.

## Syntax

```powershell
Start-NextRefactor [[-Name] <String[]>] [[-FilesToAdd] <IO.FileInfo[]>] [[-FilesToRemove] <IO.FileInfo[]>] [-CleanUpDeletedFiles] [-MarkAllCompleted] [-RedoLast] [-Reset] [-ResetLMSelections] [-Speak] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@('*')` | Nazwa refaktoryzacji akceptuje symbole wieloznaczne 🌐 *Supports wildcards* |
| `-FilesToAdd` | IO.FileInfo[] | — | — | 1 | `@()` | Nazwy plików do dodania |
| `-FilesToRemove` | IO.FileInfo[] | — | — | 2 | `@()` | Nazwy plików do usunięcia |
| `-CleanUpDeletedFiles` | SwitchParameter | — | — | Named | — | Wyczyść usunięte pliki |
| `-Reset` | SwitchParameter | — | — | Named | — | Zacznij od początku zestawu refaktoryzacji |
| `-ResetLMSelections` | SwitchParameter | — | — | Named | — | Uruchom ponownie wszystkie wybory LLM |
| `-MarkAllCompleted` | SwitchParameter | — | — | Named | — | Oznacz wszystkie pliki jako refaktorowane |
| `-RedoLast` | SwitchParameter | — | — | Named | — | Wykonaj ponownie ostatnią refaktoryzację |
| `-Speak` | SwitchParameter | — | — | Named | — | Wypowiedz szczegóły następnej refaktoryzacji |

## Examples

### Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles Restarts refactoring for "RefactorProject" and removes deleted files.

```powershell
Start-NextRefactor -Name "RefactorProject" -Reset -CleanUpDeletedFiles
Restarts refactoring for "RefactorProject" and removes deleted files.
```

### nextrefactor -Name "*Test*" -Speak Processes all refactor sets matching "*Test*" pattern with speech enabled.

```powershell
nextrefactor -Name "*Test*" -Speak
Processes all refactor sets matching "*Test*" pattern with speech enabled.
```

## Parameter Details

### `-Name <String[]>`

> Nazwa refaktoryzacji akceptuje symbole wieloznaczne

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('*')` |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> Nazwy plików do dodania

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToRemove <IO.FileInfo[]>`

> Nazwy plików do usunięcia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CleanUpDeletedFiles`

> Wyczyść usunięte pliki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reset`

> Zacznij od początku zestawu refaktoryzacji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetLMSelections`

> Uruchom ponownie wszystkie wybory LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkAllCompleted`

> Oznacz wszystkie pliki jako refaktorowane

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RedoLast`

> Wykonaj ponownie ostatnią refaktoryzację

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> Wypowiedz szczegóły następnej refaktoryzacji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-Refactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/VSCode.md)
