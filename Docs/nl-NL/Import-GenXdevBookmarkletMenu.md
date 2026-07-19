# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> Importeert GenXdev JavaScript-bladwijzers in browserbladwijzercollecties.

## Description

Deze functie scant een directory naar GenXdev-bladwijzerbestanden met de

## Syntax

```powershell
Import-GenXdevBookmarkletMenu [[-SnippetsPath] <String>] [[-TargetFolder] <String>] [-Chrome] [-Edge] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Pad naar de map met bookmarklet-snippetbestanden |
| `-TargetFolder` | String | — | — | 1 | `""` | Doelbladwijzermap in de bladwijzerstructuur van de browser |
| `-Edge` | SwitchParameter | — | — | Named | — | Importeer bookmarklets in Microsoft Edge-browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Importeer bookmarklets in de Google Chrome-browser |
| `-Firefox` | SwitchParameter | — | — | Named | — | Importeer bookmarklets in de Mozilla Firefox-browser |

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

Importeert alle bookmarklet-bestanden uit de standaard snippets-directory naar de bookmarkbalk-map van Microsoft Edge.

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

Toont welke bookmarklets vanuit het opgegeven pad in Google Chrome zouden worden geïmporteerd zonder de importbewerking daadwerkelijk uit te voeren.

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
