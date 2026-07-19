# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 检索 PowerShell 模块中所有 cmdlet 的元数据。

## Description

获取指定模块中每个 cmdlet 的完整元数据（概要、描述、参数、示例、输出和别名），并为每个结果添加 SubModuleName 和 CmdletType 属性。

子模块分配使用两条独立路径：

- 脚本 cmdlet (.ps1)：将源文件与 .psm1 点源目录映射（Functions\<SubModuleName>\FileName.ps1）进行匹配。
- 编译型 cmdlet (.dll)：来自 ImplementationType.Namespace 的命名空间（例如 GenXdev.FileSystem）。

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | 用于检索 cmdlet 元数据的 PowerShell 模块名称 |
| `-Language` | String | — | — | Named | — | zh-Hans-CN |
| `-TranslationInstructions` | String | — | — | Named | — | 自定义AI翻译指令 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

返回 GenXdev 模块中所有 cmdlet 的元数据。

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert de naar het Nederlands vertaalde metadata voor alle GenXdev cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
