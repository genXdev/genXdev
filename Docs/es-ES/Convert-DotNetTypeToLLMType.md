# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convierte nombres de tipos .NET a nombres de tipos LLM (Modelo de Lenguaje).

## Description

Toma un nombre de tipo .NET como entrada y devuelve el nombre de tipo simplificado correspondiente utilizado en los modelos de lenguaje. Maneja tipos comunes de .NET y proporciona asignaciones de tipos adecuadas.

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | El nombre del tipo .NET para convertir a un nombre de tipo LLM |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

Convierte un tipo System.String a su equivalente LLM.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
