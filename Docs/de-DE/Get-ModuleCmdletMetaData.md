# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Metadaten für alle Cmdlets in einem PowerShell-Modul ab.

## Description

Ruft vollständige Cmdlet-Metadaten (Zusammenfassung, Beschreibung, Parameter, Beispiele, Ausgaben und Aliase) für jedes Cmdlet im angegebenen Modul ab und fügt jedem Ergebnis die Eigenschaften SubModuleName und CmdletType hinzu.

Die Untermodulzuweisung verwendet zwei unabhängige Pfade:

- Skript-Cmdlets (.ps1): Quelldatei, die mit den Dot-Source-Verzeichniszuordnungen der .psm1-Datei abgeglichen wird (Functions\<SubModuleName>\FileName.ps1).
- Kompilierte Cmdlets (.dll): Namespace aus ImplementationType.Namespace (z. B. GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-ApiEndpoint <String>] [-ApiKey <String>] [-Language <String>] [-Model <String>] [-NoSupportForJsonSchema <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Cmdlet-Metadaten abgerufen werden sollen |
| `-Language` | String | — | — | Named | — | de-DE |
| `-Model` | String | — | — | Named | — | Das Modellkennzeichen oder -muster, das für KI-Übersetzungen verwendet werden soll |
| `-ApiEndpoint` | String | — | — | Named | — | Die API-Endpunkt-URL für KI-Übersetzungen |
| `-ApiKey` | String | — | — | Named | — | Der API-Schlüssel für authentifizierte KI-Übersetzungen |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Gibt an, dass das LLM keine Unterstützung für JSON-Schemas hat |
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
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-basierte Übersetzung |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

Gibt Metadaten für alle Cmdlets im GenXdev-Modul zurück.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Gibt holländisch übersetzte Metadaten für alle GenXdev-Cmdlets zurück.

## Parameter Details

### `-ModuleName <String>`

> Der Name des PowerShell-Moduls, für das Cmdlet-Metadaten abgerufen werden sollen

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

> de-DE

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
### `-SkipTranslation`

> Skip LLM-basierte Übersetzung

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

- `Collections.Hashtable[]`

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
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/de-DE/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/de-DE/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/de-DE/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Show-GenXdevCmdLetInIde.md)
