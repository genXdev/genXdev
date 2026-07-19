# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> Formatiert PowerShell-Skriptdateien unter Verwendung der PSScriptAnalyzer-Formatierungsregeln.

## Description

Diese Funktion wendet PowerShell-Formatierungsregeln auf Skriptdateien an, indem sie das Cmdlet Invoke-Formatter von PSScriptAnalyzer verwendet. Sie kann einzelne Dateien oder rekursiv mehrere Dateien in Verzeichnissen formatieren. Die Funktion nutzt anpassbare Formatierungseinstellungen und bietet eine detaillierte Protokollierung des Formatierungsprozesses.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Gibt den Pfad zur zu formatierenden Skriptdatei an. |
| `-Settings` | Object | — | — | Named | — | Eine Einstellungshashtabelle oder ein Pfad zu einer PowerShell-Datendatei (.psd1), die die Formatierungseinstellungen enthält. |
| `-Range` | Int32[] | — | — | Named | — | Der Bereich, in dem die Formatierung erfolgen soll, als Array von vier Ganzzahlen: Startzeilennummer, Startspaltennummer, Endzeilennummer, Endspaltennummer. |
| `-Recurse` | SwitchParameter | — | — | Named | — | Dateien in Unterverzeichnissen rekursiv verarbeiten. |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
