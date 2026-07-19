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
| `-Port` | Int32 | — | — | 0 | `2175` | MCP服务器将监听的端口（默认：2175） |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | 要作为 MCP 工具公开的 PowerShell 命令定义数组 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | 无需用户确认即可执行的命令名称数组 |
| `-StopExisting` | SwitchParameter | — | — | Named | — | 在启动新的MCP服务器之前，请停止在指定端口上运行的任何现有MCP服务器。 |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | 截断前工具输出的最大字符长度（默认：75000） |
| `-Token` | String | — | — | 4 | `$null` | 客户端连接 MCP 服务器时需要提供认证令牌 |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
