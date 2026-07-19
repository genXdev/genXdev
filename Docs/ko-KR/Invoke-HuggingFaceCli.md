# Invoke-HuggingFaceCli

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 인수로 Hugging Face CLI를 호출합니다.

## Description

EnsureHuggingFace를 호출하여 CLI가 설치되었는지 확인한 후, 제공된 인수로 Hugging Face CLI를 실행합니다. CLI 경로는 $ENV:LOCALAPPDATA\GenXdev.PowerShell\hfclilocation.json에서 읽어옵니다. 명령 출력을 문자열로 반환하며, 실패 시 Write-Error를 throw합니다.

## Syntax

```powershell
Invoke-HuggingFaceCli -Arguments <String[]> [[-Timeout] <Int32>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Arguments` | String[] | ✅ | — | 0 | — | Hugging Face CLI에 전달할 인수 |
| `-Timeout` | Int32 | — | — | 1 | `36000` | CLI 실행 및 종속성 설치를 위한 타임아웃(초) |
| `-Force` | SwitchParameter | — | — | Named | — | Hugging Face CLI를 강제로 재설치합니다 |

## Examples

### Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force

```powershell
Invoke-HuggingFaceCli -Arguments @("login") -Timeout 600 -Force
```

CLI를 "login" 명령어로 호출하여 재설치를 강제합니다.

### Invoke-HuggingFaceCli @("whoami") 300

```powershell
Invoke-HuggingFaceCli @("whoami") 300
```

300초 타임아웃으로 "whoami" 명령어를 사용하여 CLI를 호출합니다.

## Related Links

- [Invoke-HuggingFaceCli on GitHub](https://github.com/genXdev/genXdev)
