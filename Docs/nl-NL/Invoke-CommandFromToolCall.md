# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Voert een gereedschapsaanroep uit met validatie en parameterfiltering.

## Description

Deze functie verwerkt toolaanroepen door argumenten te valideren, parameters te filteren en callbacks uit te voeren met de juiste bevestigingsafhandeling. Het ondersteunt zowel scriptblok- als command-info-callbacks.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Tool call object containing function details and args |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array van functiedefinities |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Array van PowerShell-commando definities om als hulpmiddelen te gebruiken |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Krachtuitvoer als tekst |

## Examples

### Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `     -ExposedCmdLets $exposedCmdlets

```powershell
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets
```

### $result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText

```powershell
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
```

## Related Links

- [Invoke-CommandFromToolCall on GitHub](https://github.com/genXdev/genXdev)
