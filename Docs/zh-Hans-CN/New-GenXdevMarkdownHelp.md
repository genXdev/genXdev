# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 为任何 PowerShell 模块生成丰富的 Markdown 帮助文件。

## Description

为任何 PowerShell 模块生成全面的 Markdown 帮助站点：
每个 cmdlet 一个 .md 文件，包含所有元数据部分，外加一个 README.md 索引，按子模块列出表格，链接到各个 cmdlet 文件。

子模块发现具有可移植性：对于脚本 cmdlet，通过 .psm1 点源目录；对于编译的 cmdlet，通过 .NET 命名空间；对于没有子模块结构的模块，采用分层回退链。

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

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

生成 Docs\ 文件夹，每个 Pester cmdlet 对应一个 .md 文件，并包含 README.md 索引。

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

生成荷兰语翻译的Markdown帮助文件，覆盖现有文件。

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

在 README 索引中生成带有绝对 GitHub 链接的帮助。

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
