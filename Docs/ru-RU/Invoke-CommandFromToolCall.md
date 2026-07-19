# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Executes a tool call function with validation and parameter filtering.

## Description

Эта функция обрабатывает вызовы инструментов путем валидации аргументов, фильтрации параметров и выполнения обратных вызовов с корректной обработкой подтверждения. Она поддерживает как скриптовые блоки, так и обратные вызовы с информацией о командах.

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
