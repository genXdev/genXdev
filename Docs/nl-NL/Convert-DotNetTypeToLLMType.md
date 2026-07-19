# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Converteert .NET-typenamen naar LLM (Language Model) typenamen.

## Description

Neemt een .NET-type naam als invoer en retourneert de overeenkomstige vereenvoudigde type naam die wordt gebruikt in Taalmodellen. Het verwerkt veelvoorkomende .NET-types en biedt geschikte type mappings.

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

Converteert een System.String-type naar het equivalente LLM-type.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
