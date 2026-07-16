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
| `-CmdletName` | String[] | — | ✅ (ByPropertyName) | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Reguliere expressie om cmdlet-definities te matchen |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Zoeken in lokale modulepaden overslaan |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Alleen zoeken in gepubliceerde modulepaden |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Zoeken in scriptbestanden in plaats van modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Bevat de scripts-directory naast reguliere modules *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Voer exacte matching uit in plaats van wildcard-matching |

## Outputs

- `GenXdev.Helpers.GenXdevCmdletInfo`
- `String`

## Related Links

- [Get-GenXDevCmdlet on GitHub](https://github.com/genXdev/genXdev)
