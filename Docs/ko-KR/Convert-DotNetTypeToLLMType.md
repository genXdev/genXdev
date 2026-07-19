# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> .NET 형식 이름을 LLM(언어 모델) 형식 이름으로 변환합니다.

## Description

.NET 형식 이름을 입력으로 받아 언어 모델에서 사용되는 해당 단순화된 형식 이름을 반환합니다. 일반적인 .NET 형식을 처리하고 적절한 형식 매핑을 제공합니다.

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | LLM 유형 이름으로 변환할 .NET 유형 이름 |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

System.String 유형을 해당 LLM에 해당하는 유형으로 변환합니다.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
