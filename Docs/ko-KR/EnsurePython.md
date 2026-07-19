# EnsurePython

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Python이 설치되어 시스템 PATH에서 사용 가능한지 확인합니다.

## Description

Python이 시스템 PATH를 통해 설치 및 액세스 가능한지 확인합니다. Python이 발견되지 않으면 winget(Windows 패키지 관리자)을 사용하여 설치를 시도합니다. 특정 버전 요구 사항을 지원하며 설치 중 진행 상황 피드백을 제공합니다. 성공 시 Python 실행 파일의 경로를 반환하고, 실패 시 Write-Error를 throw합니다.

이 함수는 기존 Python 설치를 우선시하지만 필요 시 재설치를 강제할 수 있습니다. 버전 출력을 확인하여 Python 기능을 검증하고 설치가 적절히 액세스 가능한지 확인합니다.

## Syntax

```powershell
EnsurePython [[-Version] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Version` | String | — | — | 0 | `"3.12"` | 설치되어 있는지 확인해야 할 Python 버전 |
| `-Timeout` | Int32 | — | — | Named | `600` | 파이썬 설치 시간 초과(초) |
| `-Force` | SwitchParameter | — | — | Named | — | Python 강제 재설치 |

## Examples

### EnsurePython

```powershell
EnsurePython
```

기본 설정을 사용하여 Python 3.12가 설치되었는지 확인합니다.

### $pythonPath = EnsurePython -Version "3.11" -Timeout 900

```powershell
$pythonPath = EnsurePython -Version "3.11" -Timeout 900
```

확장된 타임아웃으로 Python 3.11을 설치하고 실행 파일 경로를 반환합니다.

### EnsurePython -Force -Verbose

```powershell
EnsurePython -Force -Verbose
```

세부 진행 정보와 함께 Python 3.12를 강제로 재설치합니다.

### EnsurePython -Version "3.10" -Force

```powershell
EnsurePython -Version "3.10" -Force
```

다른 버전이 존재하더라도 Python 3.10을 강제로 설치합니다.

## Related Links

- [EnsurePython on GitHub](https://github.com/genXdev/genXdev)
