# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Преобразует имена типов .NET в имена типов LLM (языковой модели).

## Description

Принимает имя типа .NET в качестве входных данных и возвращает соответствующее упрощенное имя типа, используемое в языковых моделях. Обрабатывает общие типы .NET и предоставляет соответствующие сопоставления типов.

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | Имя типа .NET для преобразования в имя типа LLM |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

Преобразует тип System.String в его эквивалент LLM.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
