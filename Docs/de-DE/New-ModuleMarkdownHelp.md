# New-ModuleMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Generiert umfangreiche Markdown-Hilfedateien für jedes PowerShell-Modul.

## Description

Generiert eine umfassende Markdown-Hilfeseite für jedes PowerShell-Modul:
eine .md-Datei pro Cmdlet mit allen Metadatenabschnitten, plus eine README.md
Index mit Tabellen pro Untermodul, die auf jede Cmdlet-Datei verweisen.

Die Erkennung von Untermodulen ist portabel: .psm1-Dot-Source-Verzeichnisse für
Skript-Cmdlets, .NET-Namespaces für kompilierte Cmdlets, mit einer abgestuften
Fallback-Kette für Module ohne Untermodulstruktur.

## Syntax

```powershell
New-ModuleMarkdownHelp -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Force] [-Language <String>] [-LinkPrefix <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Hilfe generiert werden soll |
| `-OutputPath` | String | — | — | Named | — | Benutzerdefiniertes Ausgabeverzeichnis für .md-Dateien. Standardmäßig <ModulStamm>\Docs\<Sprache>. |
| `-Language` | String | — | — | Named | `'en-US'` | de-DE |
| `-Force` | SwitchParameter | — | — | Named | — | Vorhandene .md-Dateien ohne Rückfrage überschreiben |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | @{response=Skip LLM translation; keep help in source language} |
| `-Model` | String | — | — | Named | — | Das Modellkennzeichen oder -muster, das für KI-Übersetzungen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Übersetzungen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Übersetzungen |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
| `-LinkPrefix` | String | — | — | Named | — | URL-Präfix für README-Indexlinks (z. B. https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | .SYNOPSIS
Fragt die Verfügbarkeit von Windows-Builds (z. B. Insider) ab

.DESCRIPTION
Ruft die aktuell verfügbaren Windows-Insider-Versionen von der Microsoft-API ab und zeigt Releases seit dem angegebenen Datum an, filtert nach Ring und/oder Branch.

.PARAMETER Since
Nur Builds anzeigen, deren Veröffentlichungsdatum nach diesem Wert liegt. Akzeptiert DateTime-Objekte oder -Zeichenfolgen.

.PARAMETER Ring
Nach Build-Ring filtern (z. B. 'Canary', 'Dev', 'Beta', 'Release Preview'). Standardmäßig werden alle Ringe angezeigt.

.PARAMETER Branch
Nach Build-Branch filtern (z. B. 'rs_prerelease', 'vb_release'). Standardmäßig werden alle Branches angezeigt.

.PARAMETER Flight
Nach Flight-Namen filtern. Akzeptiert Platzhalterzeichen. Wenn angegeben, werden alle Builds aus den gefilterten Flights angezeigt.

.EXAMPLE
Get-WindowsBuild -Since '2025-01-01' -Ring 'Canary'

 Zeigt alle Canary-Builds an, die seit dem 1. Januar 2025 veröffentlicht wurden.

.EXAMPLE
Get-WindowsBuild -Branch 'vb_release' -Flight 'Release*'

 Zeigt alle Builds im Branch vb_release mit Flights, die mit 'Release' beginnen.

.NOTES
Autor: Dateisystemfunktion
Projekt: https://github.com/Dateisystemfunktion/Windows-Insider-Build-Check |

## Examples

### New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Generiert einen Ordner Docs\ mit einer .md-Datei pro Pester-Cmdlet + README.md-Index.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force -Model 'deepseek-v4-pro' -ApiKey 'your-api-key' -ApiEndpoint 'https://api.deepseek.com/chat/completions'
```

Generiert niederländisch übersetzte Markdown-Hilfe und überschreibt vorhandene Dateien.

### New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-ModuleMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

Generiert Hilfe mit absoluten GitHub-Links im README-Index.

## Parameter Details

### `-ModuleName <String>`

> Der Name des PowerShell-Moduls, für das Hilfe generiert werden soll

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

> Benutzerdefiniertes Ausgabeverzeichnis für .md-Dateien. Standardmäßig <ModulStamm>\Docs\<Sprache>.

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

> de-DE

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

> Vorhandene .md-Dateien ohne Rückfrage überschreiben

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

> @{response=Skip LLM translation; keep help in source language}

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

> Das Modellkennzeichen oder -muster, das für KI-Übersetzungen verwendet werden soll

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

> Die API-Endpunkt-URL für KI-Übersetzungen

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

> Der API-Schlüssel für authentifizierte KI-Übersetzungen

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

> Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat

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

> URL-Präfix für README-Indexlinks (z. B. https://github.com/org/repo/Docs/)

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

> .SYNOPSIS
Fragt die Verfügbarkeit von Windows-Builds (z. B. Insider) ab

.DESCRIPTION
Ruft die aktuell verfügbaren Windows-Insider-Versionen von der Microsoft-API ab und zeigt Releases seit dem angegebenen Datum an, filtert nach Ring und/oder Branch.

.PARAMETER Since
Nur Builds anzeigen, deren Veröffentlichungsdatum nach diesem Wert liegt. Akzeptiert DateTime-Objekte oder -Zeichenfolgen.

.PARAMETER Ring
Nach Build-Ring filtern (z. B. 'Canary', 'Dev', 'Beta', 'Release Preview'). Standardmäßig werden alle Ringe angezeigt.

.PARAMETER Branch
Nach Build-Branch filtern (z. B. 'rs_prerelease', 'vb_release'). Standardmäßig werden alle Branches angezeigt.

.PARAMETER Flight
Nach Flight-Namen filtern. Akzeptiert Platzhalterzeichen. Wenn angegeben, werden alle Builds aus den gefilterten Flights angezeigt.

.EXAMPLE
Get-WindowsBuild -Since '2025-01-01' -Ring 'Canary'

 Zeigt alle Canary-Builds an, die seit dem 1. Januar 2025 veröffentlicht wurden.

.EXAMPLE
Get-WindowsBuild -Branch 'vb_release' -Flight 'Release*'

 Zeigt alle Builds im Branch vb_release mit Flights, die mit 'Release' beginnen.

.NOTES
Autor: Dateisystemfunktion
Projekt: https://github.com/Dateisystemfunktion/Windows-Insider-Build-Check

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/de-DE/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/de-DE/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-GenXdevCmdLetInIde.md)
