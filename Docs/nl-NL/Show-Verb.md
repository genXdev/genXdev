# Show-Verb

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `showverbs

## Synopsis

> Toont een korte alfabetische lijst van alle PowerShell-werkwoorden.

## Description

Geeft door PowerShell goedgekeurde werkwoorden weer in een door komma's gescheiden lijst. Als specifieke werkwoorden als invoer worden opgegeven, worden alleen overeenkomende werkwoorden getoond. Ondersteunt jokertekens.

## Syntax

```powershell
Show-Verb [[-Verb] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Verb` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Een of meer werkwoordspatronen om te filteren (ondersteunt jokertekens) 🌐 *Supports wildcards* |

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
