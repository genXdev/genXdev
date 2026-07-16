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
| `-Length` | Int32 | — | — | 0 | `32` | トークンの長さ（バイト単位、デフォルト: 32、最小: 16） |
| `-SetEnvironmentVariable` | SwitchParameter | — | — | Named | — | トークンをユーザー環境変数 GENXDEV_MCP_TOKEN に保存します |
| `-Force` | SwitchParameter | — | — | Named | — | 既存の環境変数を確認せず上書きする |

## Related Links

- [New-GenXdevMCPToken on GitHub](https://github.com/genXdev/genXdev)
