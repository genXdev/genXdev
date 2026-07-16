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
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | コマンドレットをフィルタリングする検索パターン 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | コマンドレット定義と一致する正規表現 |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | 検索するGenXdevモジュール名 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ローカルモジュールパスの検索をスキップ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 公開されたモジュールパス内のみを検索 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | モジュールの代わりにスクリプトファイル内を検索 |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | 通常のモジュールに加えて、scriptsディレクトリも含まれています。 *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Only return unique module names |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | ワイルドカードマッチングではなく完全一致を実行 |
| `-Online` | SwitchParameter | — | — | Named | — | コンソール出力の代わりにGitHubのドキュメントを開く |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | 指定時は、コマンドレットのエイリアスのみを表示します |
| `-ShowTable` | SwitchParameter | — | — | Named | — | 結果を表形式で表示 |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
