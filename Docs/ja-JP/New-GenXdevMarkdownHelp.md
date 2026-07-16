# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | ヘルプを生成するPowerShellモジュールの名前 |
| `-OutputPath` | String | — | — | Named | — | .md ファイルのカスタム出力ディレクトリ。デフォルトは <moduleRoot>\Docs\<language> です。 |
| `-Language` | String | — | — | Named | `'en-US'` | ja-JP |
| `-Force` | SwitchParameter | — | — | Named | — | 確認なしで既存の.mdファイルを上書きします |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | README インデックスリンク用の URL プレフィックス（例: https://github.com/org/repo/Docs/） |
| `-TranslationInstructions` | String | — | — | Named | — | カスタムAI翻訳指示 |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
