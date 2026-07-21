# Remove-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Usuwa zestawy refaktoryzacji z systemu preferencji GenXdev.

## Description

Zarządza zestawami refaktoryzacji w systemie preferencji GenXdev poprzez usuwanie określonych wpisów. Działa zarówno z niestandardowymi, jak i domyślnymi zestawami refaktoryzacji. Domyślne zestawy są chronione, chyba że wyraźnie zezwolono na ich usunięcie. Wszystkie zestawy refaktoryzacji są identyfikowane przez prefiks "refactor_set_" w systemie preferencji.

## Syntax

```powershell
Remove-Refactor -Name <String[]> [-ClearSession] [-DefaultValue <String>] [-PreferencesDatabasePath <String>] [-RemoveDefault] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Nazwa refaktoryzacji akceptuje symbole wieloznaczne 🌐 *Supports wildcards* |
| `-RemoveDefault` | SwitchParameter | — | — | Named | — | Przełącz, aby również usunąć standardowy zestaw refaktoryzacji |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-DefaultValue` | String | — | ✅ (ByPropertyName) | Named | — | Wartość domyślna, jeśli preferencja nie zostanie znaleziona |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp. |

## Examples

### Remove-Refactor -Name "CustomRefactor" -RemoveDefault Removes a specific refactor set named "CustomRefactor" and allows removal of default sets if matched

```powershell
Remove-Refactor -Name "CustomRefactor" -RemoveDefault
Removes a specific refactor set named "CustomRefactor" and allows removal
of default sets if matched
```

## Parameter Details

### `-Name <String[]>`

> Nazwa refaktoryzacji akceptuje symbole wieloznaczne

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `PreferenceName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-RemoveDefault`

> Przełącz, aby również usunąć standardowy zestaw refaktoryzacji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Ścieżka do bazy danych plików preferencji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-DefaultValue <String>`

> Wartość domyślna, jeśli preferencja nie zostanie znaleziona

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `DefaultPreference` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Użyj alternatywnych ustawień zapisanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Wyczyść ustawienia sesji (zmienną globalną) przed pobraniem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Nie używaj alternatywnych ustawień przechowywanych w sesji dla preferencji danych, takich jak język, ścieżki baz danych itp.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/VSCode.md)
