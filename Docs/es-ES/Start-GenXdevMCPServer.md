# Start-GenXdevMCPServer

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Start-GenXdevMCPServer [[-Port] <Int32>] [[-ExposedCmdLets] <GenXdev.Helpers.ExposedCmdletDefinition[]>] [[-NoConfirmationToolFunctionNames] <String[]>] [[-MaxOutputLength] <Int32>] [[-Token] <String>] [-StopExisting] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Port` | Int32 | — | — | 0 | `2175` | El puerto en el que escuchará el servidor MCP (por defecto: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Array de definiciones de comandos de PowerShell para exponer como herramientas MCP |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Lista de comandos que pueden ejecutarse sin confirmación del usuario |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Detener cualquier servidor MCP existente que se esté ejecutando en el puerto especificado antes de iniciar uno nuevo |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Longitud máxima de la salida de la herramienta en caracteres antes de truncar (por defecto: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Token de autenticación requerido para que los clientes se conecten al servidor MCP |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
