# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generuje bogate pliki pomocy Markdown dla dowolnego modułu PowerShell.

## Description

Generuje kompleksową witrynę pomocy w formacie Markdown dla dowolnego modułu PowerShell:
jeden plik .md na polecenie cmdlet ze wszystkimi sekcjami metadanych, plus plik README.md
z indeksem zawierającym tabele dla każdego podmodułu z linkami do poszczególnych plików poleceń cmdlet.

Wykrywanie podmodułów jest przenośne: katalogi źródłowe .psm1 dla
poleceń cmdlet typu skrypt, przestrzenie nazw .NET dla skompilowanych poleceń cmdlet, z warstwowym
łańcuchem zastępczym dla modułów bez struktury podmodułów.

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Nazwa modułu PowerShell, dla którego wygenerować pomoc |
| `-OutputPath` | String | — | — | Named | — | Niestandardowy katalog wyjściowy dla plików .md. Domyślnie <moduleRoot>\Docs\<language>. |
| `-Language` | String | — | — | Named | `'en-US'` | Znacznik języka BCP 47 dla wygenerowanej pomocy (np. pl-PL) |
| `-Force` | SwitchParameter | — | — | Named | — | Nadpisz istniejące pliki .md bez pytania |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Pomiń tłumaczenie LLM; pozostaw pomoc w oryginalnym języku |
| `-Model` | String | — | — | Named | — | Identyfikator lub wzorzec modelu do tłumaczeń AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla tłumaczeń AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych tłumaczeń AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-LinkPrefix` | String | — | — | Named | — | Prefiks URL dla linków indeksu README (np. https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | Twój niestandardowy tekst do przetłumaczenia |

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Generuje folder Docs\ z jednym plikiem .md na polecenie cmdlet Pester oraz plik README.md indeksujący.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Generuje przetłumaczone na niderlandzki pliki pomocy w formacie markdown, zastępując istniejące pliki.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Generuje pomoc z bezwzględnymi linkami GitHub w indeksie README.

## Parameter Details

### `-ModuleName <String>`

> Nazwa modułu PowerShell, dla którego wygenerować pomoc

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputPath <String>`

> Niestandardowy katalog wyjściowy dla plików .md. Domyślnie <moduleRoot>\Docs\<language>.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Znacznik języka BCP 47 dla wygenerowanej pomocy (np. pl-PL)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'en-US'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Nadpisz istniejące pliki .md bez pytania

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> Pomiń tłumaczenie LLM; pozostaw pomoc w oryginalnym języku

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Identyfikator lub wzorzec modelu do tłumaczeń AI

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> Adres URL punktu końcowego API dla tłumaczeń AI

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

> Klucz API do uwierzytelnionych tłumaczeń AI

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
### `-LinkPrefix <String>`

> Prefiks URL dla linków indeksu README (np. https://github.com/org/repo/Docs/)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> Twój niestandardowy tekst do przetłumaczenia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String[]`

## Related Links

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-GenXdevCmdLetInIde.md)
