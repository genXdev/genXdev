# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
