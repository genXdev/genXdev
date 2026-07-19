# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Convertit les noms de types .NET en noms de types LLM (Language Model).

## Description

Prend un nom de type .NET en entrée et renvoie le nom de type simplifié correspondant utilisé dans les modèles de langage. Il gère les types .NET courants et fournit les mappages de types appropriés.

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | le nom de type .NET à convertir en nom de type LLM |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

Convertit un type System.String en son équivalent LLM.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
