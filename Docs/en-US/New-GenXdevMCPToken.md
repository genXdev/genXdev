# New-GenXdevMCPToken

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevMCPToken [[-Length] <Int32>] [-Force] [-SetEnvironmentVariable] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Length` | Int32 | — | — | 0 | `32` | The length of the token in bytes (default: 32, minimum: 16) |
| `-SetEnvironmentVariable` | SwitchParameter | — | — | Named | — | Store the token in GENXDEV_MCP_TOKEN user environment variable |
| `-Force` | SwitchParameter | — | — | Named | — | Overwrite existing environment variable without prompting |

## Related Links

- [New-GenXdevMCPToken on GitHub](https://github.com/genXdev/genXdev)
