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
| `-Length` | Int32 | — | — | 0 | `32` | 토큰의 길이(바이트 단위) (기본값: 32, 최소: 16) |
| `-SetEnvironmentVariable` | SwitchParameter | — | — | Named | — | Store the token in GENXDEV_MCP_TOKEN user environment variable |
| `-Force` | SwitchParameter | — | — | Named | — | 기존 환경 변수를 묻지 않고 덮어쓰기 |

## Related Links

- [New-GenXdevMCPToken on GitHub](https://github.com/genXdev/genXdev)
