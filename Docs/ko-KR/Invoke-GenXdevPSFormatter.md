# Invoke-GenXdevPSFormatter

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PSScriptAnalyzer 서식 규칙을 사용하여 PowerShell 스크립트 파일의 서식을 지정합니다.

## Description

이 함수는 PSScriptAnalyzer의 Invoke-Formatter cmdlet을 사용하여 PowerShell 서식 규칙을 스크립트 파일에 적용합니다. 개별 파일을 처리하거나 디렉터리 내 여러 파일을 재귀적으로 서식 지정할 수 있습니다. 사용자 정의 가능한 서식 설정을 사용하며 서식 지정 프로세스에 대한 상세 로깅을 제공합니다.

## Syntax

```powershell
Invoke-GenXdevPSFormatter -Path <String> [-Range <Int32[]>] [-Recurse] [-Settings <Object>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 서식 지정할 스크립트 파일의 경로를 지정합니다. |
| `-Settings` | Object | — | — | Named | — | 서식 설정이 포함된 해시 테이블 또는 PowerShell 데이터 파일(.psd1)의 경로입니다. |
| `-Range` | Int32[] | — | — | Named | — | 서식이 적용되어야 하는 범위를 네 개의 정수 배열로 표현: 시작 줄 번호, 시작 열 번호, 끝 줄 번호, 끝 열 번호. |
| `-Recurse` | SwitchParameter | — | — | Named | — | 하위 디렉터리의 파일을 재귀적으로 처리합니다. |

## Examples

### Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse

```powershell
Invoke-GenXdevPSFormatter -Path "C:\Scripts" -Recurse
```

### "MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}

```powershell
"MyScript.ps1" | Invoke-GenXdevPSFormatter -Settings @{IncludeRules=@('PSUseCorrectCasing')}
```

## Related Links

- [Invoke-GenXdevPSFormatter on GitHub](https://github.com/genXdev/genXdev)
