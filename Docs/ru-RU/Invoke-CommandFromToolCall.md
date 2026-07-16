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
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Объект вызова инструмента, содержащий детали функции и аргументы |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Массив определений функций |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Массив определений команд PowerShell для использования в качестве инструментов |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Массив имен команд, не требующих подтверждения |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Force output as text |

## Related Links

- [Invoke-CommandFromToolCall on GitHub](https://github.com/genXdev/genXdev)
