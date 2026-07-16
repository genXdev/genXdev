# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Reguliere expressie om cmdlet-definities te matchen |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Zoeken in lokale modulepaden overslaan |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Alleen zoeken in gepubliceerde modulepaden |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Zoeken in scriptbestanden in plaats van modules |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Bevat de scripts-directory naast reguliere modules *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Voer exacte matching uit in plaats van wildcard-matching |
| `-Online` | SwitchParameter | — | — | Named | — | Open GitHub documentation instead of console output |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Wanneer opgegeven, worden alleen aliassen van cmdlets weergegeven |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Toon resultaten in tabelformaat |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
