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
| `-CmdletName` | String | — | — | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Zoeken in lokale modulepaden overslaan |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Beperk zoeken tot gepubliceerde modulepaden |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Doorzoek scriptbestanden in plaats van modulebestanden |
| `-Code` | SwitchParameter | — | — | Named | — | Open de gevonden cmdlet in Visual Studio Code |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open de gevonden cmdlet in Visual Studio |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Opent ook het bestand in de editor na het vinden |

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
