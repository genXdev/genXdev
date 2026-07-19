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
| `-Port` | Int32 | — | — | 0 | `2175` | MCP 서버가 수신할 포트 (기본값: 2175) |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | 1 | `@()` | MCP 도구로 노출할 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | 2 | `@()` | 사용자 확인 없이 실행할 수 있는 명령 이름 배열 |
| `-StopExisting` | SwitchParameter | — | — | Named | — | 새 MCP 서버를 시작하기 전에 지정된 포트에서 실행 중인 기존 MCP 서버를 중지하세요. |
| `-MaxOutputLength` | Int32 | — | — | 3 | `75000` | 도구 출력의 최대 문자 길이(기본값: 75000) |
| `-Token` | String | — | — | 4 | `$null` | 클라이언트가 MCP 서버에 연결하는 데 필요한 인증 토큰 |

## Related Links

- [Start-GenXdevMCPServer on GitHub](https://github.com/genXdev/genXdev)
