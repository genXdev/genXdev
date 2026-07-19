# Invoke-CommandFromToolCall

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Ejecuta una llamada a una herramienta con validación y filtrado de parámetros.

## Description

Esta función procesa las llamadas a herramientas validando argumentos, filtrando parámetros y ejecutando callbacks con el manejo adecuado de confirmación. Soporta tanto callbacks de bloque de script como de información de comando.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Objeto de llamada a herramienta que contiene detalles y argumentos de la función |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Array of function definitions |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | [{"command":"Get-Process","description":"Obtiene los procesos que se ejecutan en el equipo."},{"command":"Get-Service","description":"Obtiene los servicios del equipo."},{"command":"Get-ChildItem","description":"Obtiene los elementos y elementos secundarios en una o varias ubicaciones."}] |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | [Array of command names that don't require confirmation] |
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
