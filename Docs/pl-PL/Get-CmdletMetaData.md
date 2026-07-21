# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Pobiera metadane dla określonego polecenia cmdlet GenXdev, opcjonalnie tłumacząc tekst pomocy na inny język.

## Description

Wyodrębnia i zwraca szczegółowe metadane dotyczące polecenia cmdlet GenXdev, w tym jego streszczenie, opis, parametry, przykłady i inne informacje pomocy. Po określeniu języka docelowego za pomocą parametru -Language, tekst pomocy może być tłumaczony przy użyciu usług tłumaczenia opartych na sztucznej inteligencji. Można podać niestandardowe instrukcje tłumaczenia, aby dostroić wynik tłumaczenia.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Nazwa polecenia cmdlet, dla którego pobrać metadane |
| `-Language` | String | — | — | 1 | — | Znacznik języka BCP 47 do tłumaczenia tekstu pomocy (np. nl-NL, de-DE). Pomiń, aby pominąć tłumaczenie. |
| `-TranslationInstructions` | String | — | — | 2 | — | Niestandardowe instrukcje dla modelu tłumaczenia AI. Zastępują domyślne instrukcje tłumaczenia uwzględniające metadane poleceń cmdlet. |
| `-Model` | String | — | — | 3 | — | Identyfikator lub wzorzec modelu do tłumaczeń AI |
| `-ApiEndpoint` | String | — | — | 4 | — | Adres URL punktu końcowego API dla tłumaczeń AI |
| `-ApiKey` | String | — | — | 5 | — | Klucz API do uwierzytelnionych tłumaczeń AI |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | Wskazuje, że LLM nie obsługuje schematów JSON |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Pomiń tłumaczenie LLM; zachowaj tekst pomocy w języku źródłowym nawet jeśli określono -Language. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Pobiera metadane dla polecenia cmdlet Find-Item w języku domyślnym.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Pobiera metadane dla polecenia cmdlet Find-Item z tłumaczeniami na język niderlandzki.

## Parameter Details

### `-Name <String>`

> Nazwa polecenia cmdlet, dla którego pobrać metadane

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

> Znacznik języka BCP 47 do tłumaczenia tekstu pomocy (np. nl-NL, de-DE). Pomiń, aby pominąć tłumaczenie.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> Niestandardowe instrukcje dla modelu tłumaczenia AI. Zastępują domyślne instrukcje tłumaczenia uwzględniające metadane poleceń cmdlet.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> Pomiń tłumaczenie LLM; zachowaj tekst pomocy w języku źródłowym nawet jeśli określono -Language.

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/EnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/Show-GenXdevCmdLetInIde.md)
