# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | メタデータを取得するためのコマンドレットの名前 |
| `-Language` | String | — | — | 1 | — | ヘルプテキストの翻訳用BCP 47言語タグ（例：nl-NL、de-DE）。翻訳を省略するには省略します。 |
| `-TranslationInstructions` | String | — | — | 2 | — | これはテストです。 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
