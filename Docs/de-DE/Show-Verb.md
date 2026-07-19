# Show-Verb

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `showverbs

## Synopsis

> Zeigt eine kurze alphabetische Liste aller PowerShell-Verben.

## Description

Zeigt PowerShell-zugelassene Verben in einer durch Kommas getrennten Liste an. Wenn bestimmte Verben als Eingabe angegeben werden, werden nur übereinstimmende Verben angezeigt. Unterstützt Platzhalter.

## Syntax

```powershell
Show-Verb [[-Verb] <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Verb` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | `@()` | Ein oder mehrere Verbmuster zum Filtern (unterstützt Platzhalter) 🌐 *Supports wildcards* |

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
