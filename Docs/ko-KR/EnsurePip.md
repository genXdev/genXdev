# EnsurePip

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 Python 설치에 대해 pip가 설치되어 있고 정상 작동하는지 확인합니다.

## Description

주어진 Python 실행 파일에 대해 pip를 사용할 수 있고 정상 작동하는지 확인합니다.
pip를 사용할 수 없는 경우 ensurepip를 사용하여 설치를 시도합니다. 버전 및 기본 작업을 확인하여 pip 기능의 유효성을 검증합니다. pip가 준비된 경우 $true를 반환하고, 실패 시 Write-Error를 throw합니다.

## Syntax

```powershell
EnsurePip [[-PythonPath] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonPath` | String | — | — | 0 | — | Python 실행 파일 경로 |
| `-Timeout` | Int32 | — | — | Named | `300` | pip 설치 시간 제한(초) |
| `-Force` | SwitchParameter | — | — | Named | — | pip 재설치/업그레이드를 강제로 수행합니다 |

## Examples

### EnsurePip

```powershell
EnsurePip
```

기본 Python 설치에서 pip를 사용할 수 있도록 보장합니다.

### EnsurePip -PythonPath "C:\Python39\python.exe" -Force

```powershell
EnsurePip -PythonPath "C:\Python39\python.exe" -Force
```

특정 Python 실행 파일에 대해 pip 설치를 강제합니다.

### $pythonPath = EnsurePython EnsurePip -PythonPath $pythonPath

```powershell
$pythonPath = EnsurePython
EnsurePip -PythonPath $pythonPath
```

EnsurePython 함수가 반환한 특정 Python 설치에 대해 pip를 보장합니다.

## Related Links

- [EnsurePip on GitHub](https://github.com/genXdev/genXdev)
