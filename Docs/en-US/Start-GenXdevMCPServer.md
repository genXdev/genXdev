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
| `-Port` | Int32 | — | — | 0 | `2175` | The port on which the MCP server will listen (default: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | Array of PowerShell command definitions to expose as MCP tools |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | Array of command names that can execute without user confirmation |
| `-StopExisting` | SwitchParameter | — | — | Named | — | Stop any existing MCP server running on the specified port before starting a new one |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | Maximum length of tool output in characters before trimming (default: 75000) |
| `-Token` | String | — | — | 4 | `$null` | Authentication token required for clients to connect to the MCP server |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
