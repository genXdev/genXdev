# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Ruft Metadaten für alle Cmdlets in einem PowerShell-Modul ab.

## Description

Ruft vollständige Cmdlet-Metadaten (Zusammenfassung, Beschreibung, Parameter, Beispiele, Ausgaben und Aliase) für jedes Cmdlet im angegebenen Modul ab und fügt jedem Ergebnis die Eigenschaften SubModuleName und CmdletType hinzu.

Die Zuordnung von Untermodulen erfolgt über zwei unabhängige Pfade:

- Skript-Cmdlets (.ps1): Quelldatei wird mit .psm1-Punktquellen-Verzeichniszuordnungen abgeglichen (Functions\<SubModuleName>\FileName.ps1).
- Kompilierte Cmdlets (.dll): Namespace aus ImplementationType.Namespace (z. B. GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | Der Name des PowerShell-Moduls, für das Cmdlet-Metadaten abgerufen werden sollen |
| `-Language` | String | — | — | Named | — | de-DE |
| `-TranslationInstructions` | String | — | — | Named | — | Brauchst du Hilfe? |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

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

Retourneert Nederlands-vertaalde metadata voor alle GenXdev-cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
