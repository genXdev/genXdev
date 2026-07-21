# New-ModuleXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generuje pliki pomocy MAML XML dla dowolnego modułu PowerShell.

## Description

Generuje pliki pomocy XML MAML dla dowolnego modułu PowerShell poprzez wyodrębnienie metadanych ze wszystkich poleceń cmdlet w module za pomocą Get-CmdletMetaData i tworzenie zarówno plików ModuleName.dll-Help.xml (dla poleceń cmdlet w C#), jak i ModuleName-help.xml (dla

## Syntax

```powershell
New-ModuleXmlHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Nazwa modułu PowerShell, dla którego wygenerować pomoc |
| `-Language` | String | — | — | Named | `'en-US'` | Znacznik języka BCP 47 dla wygenerowanej pomocy (np. pl-PL) |
| `-Force` | SwitchParameter | — | — | Named | — | Zastąp istniejące pliki pomocy XML bez monitowania |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Pomiń tłumaczenie LLM; pozostaw pomoc w oryginalnym języku |
| `-Model` | String | — | — | Named | — | Identyfikator lub wzorzec modelu do tłumaczeń AI |
| `-ApiEndpoint` | String | — | — | Named | — | Adres URL punktu końcowego API dla tłumaczeń AI |
| `-ApiKey` | String | — | — | Named | — | Klucz API do uwierzytelnionych tłumaczeń AI |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-LinkPrefix` | String | — | — | Named | — | Prefiks URL dla linku Wersja Online w każdym poleceniu powiązanych linków (np. https://github.com/genXdev/genXdev/blob/main/Docs/en-US/) |
| `-TranslationInstructions` | String | — | — | Named | — | W tym dokumencie opisano sposób użycia polecenia cmdlet `Get-TextTranslation`, aby przetłumaczyć tekst z jednego języka na inny za pomocą interfejsu API tłumaczenia tekstu usługi Translator. |

## Examples

### New-ModuleXmlHelp -ModuleName 'Pester'

```powershell
New-ModuleXmlHelp -ModuleName 'Pester'
```

Generuje angielski plik XML pomocy dla modułu Pester w języku en-US.

### New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force  -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Generuje holenderski plik pomocy XML dla GenXdev, nadpisując istniejące pliki.

### New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-ModuleXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

Pokazuje, które pliki zostałyby utworzone bez faktycznego ich zapisywania.

### New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force

```powershell
New-ModuleXmlHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/blob/main/Docs/en-US/' -Force
```

Generuje angielski plik pomocy XML z adresami URL wersji online dla każdego polecenia cmdlet wskazującymi na dokumenty Markdown w GitHub. Get-Help <cmdlet> -Online otwiera przeglądarkę.

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

> Zastąp istniejące pliki pomocy XML bez monitowania

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

> Prefiks URL dla linku Wersja Online w każdym poleceniu powiązanych linków (np. https://github.com/genXdev/genXdev/blob/main/Docs/en-US/)

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

> W tym dokumencie opisano sposób użycia polecenia cmdlet `Get-TextTranslation`, aby przetłumaczyć tekst z jednego języka na inny za pomocą interfejsu API tłumaczenia tekstu usługi Translator.

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

- `IO.FileInfo[]`

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
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleMarkdownHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-GenXdevCmdLetInIde.md)
