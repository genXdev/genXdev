# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 将.NET类型名称转换为LLM（语言模型）类型名称。

## Description

输入一个.NET类型名称，返回对应的简化类型名称（用于语言模型）。它处理常见的.NET类型并提供适当的类型映射。

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | The .NET type name to convert to an LLM type name |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

将 System.String 类型转换为其 LLM 等效类型。

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
