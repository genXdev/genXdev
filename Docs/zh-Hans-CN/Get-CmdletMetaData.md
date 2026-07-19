# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 检索指定 GenXdev cmdlet 的元数据，并可选择将帮助文本翻译为另一种语言。

## Description

提取并返回GenXdev cmdlet的全面元数据，包括其摘要、说明、参数、示例和其他帮助信息。当通过-Language参数指定目标语言时，可以使用基于AI的翻译服务翻译帮助文本。可以提供自定义翻译指令以微调翻译输出。

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

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

检索默认语言下 Find-Item cmdlet 的元数据。

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

检索 Find-Item cmdlet 的元数据并附带荷兰语翻译。

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
