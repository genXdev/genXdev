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
| `-CmdletName` | String | — | — | 0 | — | コマンドレットをフィルタリングする検索パターン 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | 検索するGenXdevモジュール名 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ローカルモジュールパスの検索をスキップ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 公開済みモジュールパスのみに検索を制限する |
| `-FromScripts` | SwitchParameter | — | — | Named | — | モジュールファイルではなくスクリプトファイルで検索 |
| `-Code` | SwitchParameter | — | — | Named | — | 見つかったコマンドレットをVisual Studio Codeで開く |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | 見つかったコマンドレットをVisual Studioで開く |
| `-EditCmdlet` | SwitchParameter | — | — | Named | — | Also opens the file in the editor after finding |

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
