# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
