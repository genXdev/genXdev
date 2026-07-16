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
| `-Length` | Int32 | — | — | 0 | `32` | Длина токена в байтах (по умолчанию: 32, минимум: 16) |
| `-SetEnvironmentVariable` | SwitchParameter | — | — | Named | — | Store the token in GENXDEV_MCP_TOKEN user environment variable |
| `-Force` | SwitchParameter | — | — | Named | — | Перезаписать существующую переменную окружения без запроса |

## Related Links

- [New-GenXdevMCPToken on GitHub](https://github.com/genXdev/genXdev)
