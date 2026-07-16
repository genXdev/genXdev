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
| `-Name` | String | ✅ | — | 0 | — | 用于检索元数据的 cmdlet 名称 |
| `-Language` | String | — | — | 1 | — | 用于翻译帮助文本的 BCP 47 语言标签（例如，nl-NL、de-DE）。省略以跳过翻译。 |
| `-TranslationInstructions` | String | — | — | 2 | — | 自定义AI翻译模型的指令。覆盖默认的cmdlet元数据感知翻译指令。 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
