# New-Refactor

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `newrefactor`

## Synopsis

> Tworzy nowy zestaw refaktoryzacji dla zadań transformacji kodu.

## Description

Tworzy i konfiguruje nową definicję refaktoryzacji z określonymi ustawieniami dla transformacji kodu opartych na LLM. Funkcja obsługuje:
- Konfigurację ustawień refaktoryzacji
- Konfigurację kryteriów wyboru i monitów
- Zarządzanie ustawieniami modelu LLM
- Integrację ze środowiskami programistycznymi
- Trwałe przechowywanie definicji refaktoryzacji

## Syntax

```powershell
New-Refactor -Name <String> -PromptKey <String> [[-Prompt] <String>] [[-SelectionScript] <String>] [[-SelectionPrompt] <String>] [[-LLMQueryType] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoAddModifiedFiles] [-ClearSession] [-Code] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-FilesToAdd <IO.FileInfo[]>] [-KeysToSend <String[]>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-PreferencesDatabasePath <String>] [-Priority <Int32>] [-SelectByFreeGpuRam] [-SelectByFreeRam] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nazwa tego nowego zestawu refaktoryzacji |
| `-PromptKey` | String | ✅ | — | 1 | — | Klucz prompt wskazuje, którego skryptu promptu użyć |
| `-Prompt` | String | — | — | 2 | `''` | Niestandardowy tekst monitu do zastąpienia szablonu |
| `-SelectionScript` | String | — | — | 3 | — | Skrypt PowerShell do wybierania elementów do refaktoryzacji |
| `-SelectionPrompt` | String | — | — | 4 | — | Wskazówki dotyczące wyboru modelu LLM |
| `-LLMQueryType` | String | — | — | 5 | `'Coding'` | Typ zapytania LLM |
| `-Model` | String | — | — | Named | — | Identyfikator modelu lub wzorzec używany do operacji AI |
| `-SelectByFreeRam` | SwitchParameter | — | — | Named | — | Wybierz konfigurację na podstawie dostępnej pamięci RAM systemu |
| `-SelectByFreeGpuRam` | SwitchParameter | — | — | Named | — | Wybierz konfigurację według dostępnej pamięci GPU RAM |
| `-Temperature` | Double | — | — | Named | `-1` | Temperatura losowości odpowiedzi (0.0-1.0) |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla operacji AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych operacji AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Limit czasu w sekundach na operacje AI |
| `-Priority` | Int32 | — | — | Named | `0` | Priorytet dla tego refaktoringu zestawu |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Tablica definicji poleceń PowerShell dla narzędzi LLM |
| `-FilesToAdd` | IO.FileInfo[] | — | — | Named | `@()` | Tablica plików do przetworzenia |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Ścieżka do bazy danych plików preferencji |
| `-AutoAddModifiedFiles` | SwitchParameter | — | — | Named | — | Automatycznie dodaje zmodyfikowane pliki do kolejki |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję |
| `-Code` | SwitchParameter | — | — | Named | — | Otwórz pliki w Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Otwórz w programie Visual Studio |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Klawisze do wysłania po otwarciu plików |

## Examples

### New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `     -SelectionScript "Get-LoggingMethods" -Priority 1 `     -Code

```powershell
New-Refactor -Name "UpdateLogging" -PromptKey "LoggingRefactor" `
    -SelectionScript "Get-LoggingMethods" -Priority 1 `
    -Code
```

### newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c

```powershell
newrefactor UpdateLogging LoggingRefactor -p "Get-LoggingMethods" -c
```

## Parameter Details

### `-Name <String>`

> Nazwa tego nowego zestawu refaktoryzacji

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PromptKey <String>`

> Klucz prompt wskazuje, którego skryptu promptu użyć

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Niestandardowy tekst monitu do zastąpienia szablonu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionScript <String>`

> Skrypt PowerShell do wybierania elementów do refaktoryzacji

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectionPrompt <String>`

> Wskazówki dotyczące wyboru modelu LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Typ zapytania LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'Coding'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Identyfikator modelu lub wzorzec używany do operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeRam`

> Wybierz konfigurację na podstawie dostępnej pamięci RAM systemu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SelectByFreeGpuRam`

> Wybierz konfigurację według dostępnej pamięci GPU RAM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Temperatura losowości odpowiedzi (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Adres URL punktu końcowego API dla operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Klucz API do uwierzytelnionych operacji AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Wskazuje, że LLM nie obsługuje schematów JSON

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Limit czasu w sekundach na operacje AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> Priorytet dla tego refaktoringu zestawu

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Tablica definicji poleceń PowerShell dla narzędzi LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FilesToAdd <IO.FileInfo[]>`

> Tablica plików do przetworzenia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
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
### `-AutoAddModifiedFiles`

> Automatycznie dodaje zmodyfikowane pliki do kolejki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Użyj alternatywnych ustawień przechowywanych w sesji dla preferencji AI

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

> Wyczyść alternatywne ustawienia przechowywane w sesji dla preferencji SI

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

> Przechowuj ustawienia tylko w trwałych preferencjach, nie wpływając na sesję

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Otwórz pliki w Visual Studio Code

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Otwórz w programie Visual Studio

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-KeysToSend <String[]>`

> Klawisze do wysłania po otwarciu plików

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `keys` |
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
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/VSCode.md)
