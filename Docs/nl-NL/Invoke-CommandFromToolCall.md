# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-CommandFromToolCall on GitHub](https://github.com/genXdev/genXdev)
