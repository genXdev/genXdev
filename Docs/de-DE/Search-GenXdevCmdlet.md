# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> Sucht nach einem GenXdev-Cmdlet und öffnet es optional in einer IDE zur Bearbeitung.

## Description

Diese Funktion sucht nach GenXdev-Cmdlets mithilfe eines Musters und öffnet optional die Quelldatei des gefundenen Cmdlets in Visual Studio Code oder Visual Studio zur Bearbeitung. Sie ruft Cmdlet-Informationen ab und bietet Tastaturkürzel, um schnell zur Funktionsdefinition zu navigieren.

## Syntax

```powershell
Search-GenXdevCmdlet [[-CmdletName] <String>] [[-ModuleName] <String[]>] [-Code] [-EditCmdlet] [-FromScripts] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | Suchmuster zum Filtern von Cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev-Modulnamen zum Suchen 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Überspringen der Suche in lokalen Modulpfaden |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Suche auf veröffentlichte Modulpfade beschränken |
| `-FromScripts` | SwitchParameter | — | — | Named | — | In Skriptdateien statt in Moduldateien suchen |
| `-Code` | SwitchParameter | — | — | Named | — | Öffnen Sie das gefundene Cmdlet in Visual Studio Code. |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Öffnen Sie das gefundene Cmdlet in Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Öffnet die Datei auch im Editor, nachdem sie gefunden wurde |

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
