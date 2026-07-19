# EnsureHuggingFace

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Hugging Face CLI가 설치되어 있고 정상 작동하는지 확인합니다.

## Description

EnsurePython 및 EnsurePip를 호출하여 Python, pip 및 Hugging Face CLI의 설치를 조정한 다음 huggingface_hub 패키지를 설치합니다. CLI 경로를 JSON 파일에 저장하고 모든 구성 요소가 시스템 PATH에 있는지 확인합니다. 성공하면 $true를 반환하고, 실패하면 Write-Error를 throw합니다.

## Syntax

```powershell
EnsureHuggingFace [[-PythonVersion] <String>] [-Force] [-Timeout <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PythonVersion` | String | — | — | 0 | `"3.12"` | Python 버전 확인 |
| `-Timeout` | Int32 | — | — | Named | `600` | 설치 프로세스의 제한 시간(초) |
| `-Force` | SwitchParameter | — | — | Named | — | 모든 구성 요소 재설치 강제 |

## Examples

### EnsureHuggingFace

```powershell
EnsureHuggingFace
```

Python 3.12, pip 및 HuggingFace CLI가 설치되어 있는지 확인합니다.

### EnsureHuggingFace -PythonVersion "3.11" -Force

```powershell
EnsureHuggingFace -PythonVersion "3.11" -Force
```

Python 3.11을 사용한 강제 재설치.

### EnsureHuggingFace -Timeout 1200

```powershell
EnsureHuggingFace -Timeout 1200
```

20분 제한 시간으로 설치를 보장합니다.

## Related Links

- [EnsureHuggingFace on GitHub](https://github.com/genXdev/genXdev)
