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
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | Path to directory containing bookmarklet snippet files |
| `-TargetFolder` | String | — | — | 1 | `""` | Target bookmark folder in browser bookmark structure |
| `-Edge` | SwitchParameter | — | — | Named | — | Import bookmarklets into Microsoft Edge browser |
| `-Chrome` | SwitchParameter | — | — | Named | — | Import bookmarklets into Google Chrome browser |
| `-Firefox` | SwitchParameter | — | — | Named | — | Import bookmarklets into Mozilla Firefox browser |

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
