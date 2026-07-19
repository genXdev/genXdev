# Invoke-GenXdevScriptAnalyzer

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PowerShell 스크립트 분석기를 호출하여 PowerShell 스크립트의 규정 준수와 모범 사례를 분석합니다.

## Description

이 함수는 PSScriptAnalyzer를 래핑하여 PowerShell 스크립트의 규정 준수 문제, 모범 사례 위반 및 잠재적 버그를 분석합니다. 파일 기반 분석과 문자열 기반 스크립트 분석을 모두 지원하며 사용자 정의 규칙 및 설정을 제공합니다.

## Syntax

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptFilePath <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer -ScriptDefinition <String> [<CommonParameters>]

Invoke-GenXdevScriptAnalyzer [-EnableExit] [-Fix] [-Recurse] [-ReportSummary] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ScriptFilePath` | String | ✅ | — | 0 | — | 스크립트 파일의 경로를 지정합니다. *(Parameter set: )* |
| `-ScriptDefinition` | String | ✅ | — | Named | — | 스크립트 정의를 문자열로 지정합니다. *(Parameter set: )* |
| `-EnableExit` | SwitchParameter | — | — | Named | — | 도구가 오류 발생 시 종료하도록 지정합니다. |
| `-Fix` | SwitchParameter | — | — | Named | — | 위반 사항을 자동으로 수정할 수 있습니다. |
| `-Recurse` | SwitchParameter | — | — | Named | — | 파일을 재귀적으로 처리합니다. |
| `-ReportSummary` | SwitchParameter | — | — | Named | — | 분석 후 요약을 보고합니다. |

## Examples

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\MyScript.ps1"
```

### Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"

```powershell
Invoke-GenXdevScriptAnalyzer -ScriptDefinition "Get-Process | Where-Object {$_.Name -eq 'notepad'}"
```

### Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix

```powershell
Invoke-GenXdevScriptAnalyzer -Path "C:\Scripts\" -Recurse -Fix
```

## Related Links

- [Invoke-GenXdevScriptAnalyzer on GitHub](https://github.com/genXdev/genXdev)
