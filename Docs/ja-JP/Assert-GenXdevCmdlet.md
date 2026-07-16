# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | コマンドレットをフィルタリングする検索パターン 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 検索するGenXdevモジュール名 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | テンプレート選択に使用するAIプロンプトキー |
| `-Prompt` | String | — | — | 2 | `''` | 使用するカスタムAIプロンプトテキスト |
| `-NoLocal` | SwitchParameter | — | — | Named | — | ローカルモジュールのバージョンをスキップ |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 公開バージョンのみを含める |
| `-FromScripts` | SwitchParameter | — | — | Named | — | スクリプトファイル内を検索 |
| `-Code` | SwitchParameter | — | — | Named | — | Visual Studio Code で開く |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio で開く |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | 以下の条件でJSONのみを出力すること：
1. 無効なJSONや説明文は絶対に返さない
2. 応答は常にパース可能なJSONオブジェクトであること
3. 厳密なJSON出力ルールに従うこと *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | コマンドレットをモジュールに統合する |

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
