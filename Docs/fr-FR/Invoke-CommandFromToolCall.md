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
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Objet d'appel d'outil contenant les détails de la fonction et les arguments |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Tableau des définitions de fonctions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Définition de commandes PowerShell à utiliser comme outils |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Array of command names that don't require confirmation |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Force output as text |

## Related Links

- [Invoke-CommandFromToolCall on GitHub](https://github.com/genXdev/genXdev)
