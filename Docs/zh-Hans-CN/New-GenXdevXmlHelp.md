# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 为任何PowerShell模块生成MAML XML帮助文件。

## Description

通过使用 Get-CmdletMetaData 从模块中的所有 cmdlet 提取元数据，为任何 PowerShell 模块生成 MAML XML 帮助文件，并生成 ModuleName.dll-Help.xml（适用于 C# cmdlet）和 ModuleName-help.xml（适用于

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | 要为其生成帮助的 PowerShell 模块名称 |
| `-Language` | String | — | — | Named | `'en-US'` | zh-CN |
| `-Force` | SwitchParameter | — | — | Named | — | 覆盖现有的帮助 XML 文件而不提示 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | 自定义指令用于LLM翻译（传递给Get-TextTranslation） |

## Examples

### New-GenXdevXmlHelp -ModuleName 'Pester'

```powershell
New-GenXdevXmlHelp -ModuleName 'Pester'
```

You are a helpful assistant designed to output JSON.

### New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevXmlHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

为GenXdev生成荷兰语帮助XML，覆盖现有文件。

### New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf

```powershell
New-GenXdevXmlHelp -ModuleName 'PSReadLine' -WhatIf
```

显示将会创建哪些文件，而不会实际写入它们。

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
