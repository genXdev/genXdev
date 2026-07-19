# Search-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `searchcmdlet

## Synopsis

> GenXdevコマンドレットを検索し、必要に応じてIDEで開いて編集できるようにします。

## Description

この関数は、パターンを使用してGenXdevコマンドレットを検索し、見つかったコマンドレットのソースファイルをVisual Studio CodeまたはVisual Studioで編集用にオプションで開きます。コマンドレット情報を取得し、関数定義にすばやく移動するためのキーボードショートカットを提供します。

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

## Examples

### Search-GenXdevCmdlet -CmdletName "Get-*" -Code Opens first matching cmdlet starting with "Get-" in Visual Studio Code.

```powershell
Search-GenXdevCmdlet -CmdletName "Get-*" -Code
Opens first matching cmdlet starting with "Get-" in Visual Studio Code.
```

### searchcmdlet "Set-GitConfig" -EditCmdlet Searches for Set-GitConfig cmdlet and opens it for editing.

```powershell
searchcmdlet "Set-GitConfig" -EditCmdlet
Searches for Set-GitConfig cmdlet and opens it for editing.
```

## Related Links

- [Search-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
