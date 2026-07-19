# Import-GenXdevBookmarkletMenu

> **Module:** GenXdev.Webbrowser | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev JavaScriptブックマークレットをブラウザのブックマークコレクションにインポートします。

## Description

この関数は、GenXdevブックマークレットファイルをディレクトリからスキャンします。

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

## Examples

### Import-GenXdevBookmarkletMenu -Edge

```powershell
Import-GenXdevBookmarkletMenu -Edge
```

デフォルトのスニペットディレクトリからすべてのブックマークレットファイルをMicrosoft Edgeのブックマークバーフォルダにインポートします。

### Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf

```powershell
Import-GenXdevBookmarkletMenu -SnippetsPath "C:\MyBookmarklets" -Chrome -WhatIf
```

指定されたパスからGoogle Chromeにどのブックマークレットがインポートされるかを表示しますが、実際にインポート操作は実行しません。

## Related Links

- [Import-GenXdevBookmarkletMenu on GitHub](https://github.com/genXdev/genXdev)
