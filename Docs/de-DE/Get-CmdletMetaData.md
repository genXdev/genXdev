# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Metadaten für ein angegebenes GenXdev-Cmdlet ab und übersetzt optional die Hilfetexte in eine andere Sprache.

## Description

Extrahiert und gibt umfassende Metadaten zu einem GenXdev-Cmdlet zurück, einschließlich
seiner Zusammenfassung, Beschreibung, Parameter, Beispiele und anderer Hilfeinformationen.
Wenn über den Parameter -Language eine Zielsprache angegeben wird, kann der Hilfetext
mithilfe von KI-basierten Übersetzungsdiensten übersetzt werden. Benutzerdefinierte Übersetzungsanweisungen
können bereitgestellt werden, um die Übersetzungsausgabe zu verfeinern.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | Der Name des Cmdlets zum Abrufen von Metadaten |
| `-Language` | String | — | — | 1 | — | BCP 47-Sprachtag für die Übersetzung des Hilfetexts (z. B. nl-NL, de-DE). Lassen Sie ihn aus, um die Übersetzung zu überspringen. |
| `-TranslationInstructions` | String | — | — | 2 | — | Benutzerdefinierte Anweisungen für das KI-Übersetzungsmodell. Überschreibt die standardmäßigen cmdlet-metadatenbewussten Übersetzungsanweisungen. |
| `-Model` | String | — | — | 3 | — | Das Modellkennzeichen oder -muster, das für KI-Übersetzungen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | 4 | — | Die API-Endpunkt-URL für KI-Übersetzungen |
| `-ApiKey` | String | — | — | 5 | — | Der API-Schlüssel für authentifizierte KI-Übersetzungen |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-basierte Übersetzung; Hilfe-Text in der Ausgangssprache behalten, auch wenn -Language angegeben ist. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Ruft Metadaten für das Find-Item-Cmdlet in der Standardsprache ab.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Ruft Metadaten für das Find-Item-Cmdlet mit niederländischen Übersetzungen ab.

## Parameter Details

### `-Name <String>`

> Der Name des Cmdlets zum Abrufen von Metadaten

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

> BCP 47-Sprachtag für die Übersetzung des Hilfetexts (z. B. nl-NL, de-DE). Lassen Sie ihn aus, um die Übersetzung zu überspringen.

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

> Benutzerdefinierte Anweisungen für das KI-Übersetzungsmodell. Überschreibt die standardmäßigen cmdlet-metadatenbewussten Übersetzungsanweisungen.

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

> Das Modellkennzeichen oder -muster, das für KI-Übersetzungen verwendet werden soll

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

> Die API-Endpunkt-URL für KI-Übersetzungen

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

> Der API-Schlüssel für authentifizierte KI-Übersetzungen

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

> Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat

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

> Skip LLM-basierte Übersetzung; Hilfe-Text in der Ausgangssprache behalten, auch wenn -Language angegeben ist.

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureDefaultGenXdevRefactors.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-GenXdevCmdLetInIde.md)
