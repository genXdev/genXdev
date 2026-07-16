# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 메타데이터를 검색할 cmdlet의 이름 |
| `-Language` | String | — | — | 1 | — | 도움말 텍스트 번역을 위한 BCP 47 언어 태그 (예: ko-KR). 생략하면 번역을 건너뜁니다. |
| `-TranslationInstructions` | String | — | — | 2 | — | 언어 모델을 위한 사용자 지정 지침입니다. 기본 cmdlet 메타데이터 인식 번역 지침을 재정의합니다. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation; keep help text in the source language even when -Language is specified. |

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
