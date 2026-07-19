# Show-Verb

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `showverbs

## Synopsis

> Muestra una breve lista alfabética de todos los verbos de PowerShell.

## Description

Muestra los verbos aprobados de PowerShell en una lista separada por comas. Si se proporcionan verbos específicos como entrada, solo se mostrarán los que coincidan. Compatible con comodines.

## Syntax

```powershell
Show-Verb [[-Verb] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Verb` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Uno o más patrones de verbo para filtrar (admite comodines) 🌐 *Supports wildcards* |

## Examples

### Show-Verb Shows all approved PowerShell verbs

```powershell
Show-Verb
Shows all approved PowerShell verbs
```

### Show-Verb -Verb "Get*" Shows all approved verbs starting with "Get"

```powershell
Show-Verb -Verb "Get*"
Shows all approved verbs starting with "Get"
```

### showverbs "Set*", "Get*" Shows all approved verbs starting with "Set" or "Get" using the alias

```powershell
showverbs "Set*", "Get*"
Shows all approved verbs starting with "Set" or "Get" using the alias
```

## Related Links

- [Show-Verb on GitHub](https://github.com/genXdev/genXdev)
