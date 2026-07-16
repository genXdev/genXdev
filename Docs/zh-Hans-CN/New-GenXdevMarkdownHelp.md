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
| `-ModuleName` | String | ✅ | — | 0 | — | 要为其生成帮助的 PowerShell 模块名称 |
| `-OutputPath` | String | — | — | Named | — | .md 文件的自定义输出目录。默认为 <moduleRoot>\Docs\<language>。 |
| `-Language` | String | — | — | Named | `'en-US'` | zh-CN |
| `-Force` | SwitchParameter | — | — | Named | — | 覆盖现有的 .md 文件，无需提示 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | README 索引链接的 URL 前缀（例如：https://github.com/org/repo/Docs/） |
| `-TranslationInstructions` | String | — | — | Named | — | 自定义AI翻译指令 |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
