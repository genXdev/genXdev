# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Converte nomes de tipo .NET para nomes de tipo LLM (Language Model).

## Description

Recebe um nome de tipo .NET como entrada e retorna o nome de tipo simplificado correspondente usado em Modelos de Linguagem. Ele lida com tipos .NET comuns e fornece mapeamentos de tipo apropriados.

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | O nome do tipo .NET para converter em um nome de tipo LLM |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

Converte um tipo System.String para seu equivalente LLM.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
