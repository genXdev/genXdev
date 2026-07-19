# Test-RefactorLLMSelection

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> LLM 분석을 사용하여 리팩토링 적합성을 평가하는 소스 파일입니다.

## Description

언어 학습 모델(LLM) 분석을 사용하여 소스 코드 파일이 지정된 기준에 따라 리팩토링을 위해 선택되어야 하는지 결정합니다. 이 함수는 LLM 쿼리를 통해 파일 내용을 처리하고 부울 응답을 반환합니다.

## Syntax

```powershell
Test-RefactorLLMSelection -RefactorDefinition <GenXdev.Helpers.RefactorDefinition> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-RefactorDefinition` | GenXdev.Helpers.RefactorDefinition | ✅ | — | 0 | — | 리팩터 정의를 포함한 LLM 설정 |
| `-Path` | String | ✅ | — | 1 | — | 평가할 소스 파일의 경로 |

## Examples

### Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"

```powershell
Test-RefactorLLMSelection -RefactorDefinition $refDef -Path "C:\source.ps1"
```

### $def | Test-RefactorLLMSelection -Path source.ps1

```powershell
$def | Test-RefactorLLMSelection -Path source.ps1
```

## Related Links

- [Test-RefactorLLMSelection on GitHub](https://github.com/genXdev/genXdev)
