# Get-GenXDevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `gcmds

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-GenXDevCmdlet [[-CmdletName] <String[]>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [<CommonParameters>]

Get-GenXDevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | Suchmuster zum Filtern von Cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Regular expression to match cmdlet definitions |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev-Modulnamen zum Suchen 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Überspringen der Suche in lokalen Modulpfaden |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Nur in veröffentlichten Modulpfaden suchen |
| `-FromScripts` | SwitchParameter | — | — | Named | — | In Skriptdateien statt in Modulen suchen |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Enthält zusätzlich zu den regulären Modulen das Scripts-Verzeichnis *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | ['module1', 'module2'] |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Führen Sie eine exakte Übereinstimmung anstelle einer Platzhalterübereinstimmung durch. |

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
