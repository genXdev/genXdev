# Assert-GenXdevCmdletTests

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlettests

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Assert-GenXdevCmdletTests on GitHub](https://github.com/genXdev/genXdev)
