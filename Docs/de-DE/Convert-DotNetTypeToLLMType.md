# Convert-DotNetTypeToLLMType

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Konvertiert .NET-Typnamen in LLM (Language Model) -Typnamen.

## Description

Nimmt einen .NET-Typnamen als Eingabe und gibt den entsprechenden vereinfachten Typnamen zurück, der in Sprachmodellen verwendet wird. Es behandelt gängige .NET-Typen und stellt geeignete Typzuordnungen bereit.

## Syntax

```powershell
Convert-DotNetTypeToLLMType [-DotNetType] <string> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DotNetType` | String | ✅ | — | 0 | — | Der .NET-Typname, der in einen LLM-Typnamen konvertiert werden soll |

## Examples

### Example 1

```powershell
Convert-DotNetTypeToLLMType -DotNetType "System.String"
```

Konvertiert einen System.String-Typ in sein LLM-Äquivalent.

## Related Links

- [Convert-DotNetTypeToLLMType on GitHub](https://github.com/genXdev/genXdev)
