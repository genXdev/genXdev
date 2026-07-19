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
| `-Port` | Int32 | — | — | 0 | `2175` | Порт, на котором будет слушать MCP-сервер (по умолчанию: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Массив определений команд PowerShell для предоставления в качестве инструментов MCP |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Массив имён команд, которые могут выполняться без подтверждения пользователя |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Остановите любой существующий MCP-сервер, работающий на указанном порту, перед запуском нового. |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Максимальная длина вывода инструмента в символах перед обрезкой (по умолчанию: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Требуется токен аутентификации для подключения клиентов к серверу MCP. |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
