# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> 지정된 GenXdev cmdlet의 단위 테스트를 검증하고 개선합니다.

## Description

이 함수는 GenXDev cmdlet에 대한 단위 테스트를 유지 관리하고 개선하는 데 도움을 줍니다:
1. 테스트 파일이 없으면 생성합니다.
2. VS Code에서 cmdlet을 엽니다.
3. 테스트 생성/개선을 위한 AI 프롬프트를 준비하고 적용합니다.
4. 테스트 실행 워크플로를 관리합니다.

## Syntax

```powershell
Assert-GenXdevCmdletTests -CmdletName <String> [[-Prompt] <String>] [[-PromptKey] <String>] [-AssertFailedTest] [-ContinuationHandled] [-EditPrompt] [-FromScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | 단위 테스트 개선을 위한 cmdlet 이름 |
| `-Prompt` | String | — | — | 1 | `''` | 사용자 정의 AI 프롬프트 텍스트 |
| `-PromptKey` | String | — | — | 2 | — | 템플릿 선택에 사용할 AI 프롬프트 키 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | AI 프롬프트만 편집하도록 전환 |
| `-AssertFailedTest` | SwitchParameter | — | — | Named | — | 실패한 테스트를 표시합니다 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 (모듈 대신) |
| `-ContinuationHandled` | SwitchParameter | — | — | Named | — | The `-ContinuationHandled` parameter. |

## Examples

### Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt

```powershell
Assert-GenXdevCmdletTests -CmdletName "Get-GenXDevModuleInfo" -EditPrompt
```

### improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest ##############################################################################

```powershell
improvecmdlettests Get-GenXDevModuleInfo -AssertFailedTest
##############################################################################
```

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
