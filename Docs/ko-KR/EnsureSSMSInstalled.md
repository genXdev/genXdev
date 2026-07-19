# EnsureSSMSInstalled

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> SSMS가 설치되어 있고 명령줄에서 액세스 가능한지 확인합니다.

## Description

SSMS가 시스템 PATH에 설치되어 있고 사용 가능한지 확인합니다. 설치되어 있지 않은 경우 먼저 PATH 환경 변수를 업데이트해야 하는지 확인합니다. 그래도 문제가 해결되지 않으면 WinGet을 사용하여 SSMS를 설치하고 PATH 환경 변수를 구성합니다.

## Syntax

```powershell
EnsureSSMSInstalled [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | The `-Force` parameter. |

## Examples

### EnsureSSMSInstalled Checks and ensures SSMS is installed and accessible.

```powershell
EnsureSSMSInstalled
Checks and ensures SSMS is installed and accessible.
```

## Related Links

- [EnsureSSMSInstalled on GitHub](https://github.com/genXdev/genXdev)
