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
| `-SnippetsPath` | String | — | — | 0 | `"$($MyInvocation.MyCommand.Module.ModuleBase)\Bookmarklets"` | ブックマークレットスニペットファイルを含むディレクトリへのパス |
| `-TargetFolder` | String | — | — | 1 | `""` | ブラウザのブックマーク構造でターゲットのブックマークフォルダ |
| `-Edge` | SwitchParameter | — | — | Named | — | ブックマークレットをMicrosoft Edgeブラウザにインポートする |
| `-Chrome` | SwitchParameter | — | — | Named | — | ブックマークレットをGoogle Chromeブラウザにインポートする |
| `-Firefox` | SwitchParameter | — | — | Named | — | ブックマークレットをMozilla Firefoxブラウザにインポートする |

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
