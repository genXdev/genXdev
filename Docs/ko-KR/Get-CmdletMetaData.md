# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 GenXdev cmdlet에 대한 메타데이터를 검색하고, 선택적으로 도움말 텍스트를 다른 언어로 번역합니다.

## Description

GenXdev cmdlet에 대한 포괄적인 메타데이터를 추출하고 반환합니다. 여기에는 cmdlet의 개요, 설명, 매개변수, 예제 및 기타 도움말 정보가 포함됩니다. -Language 매개변수를 통해 대상 언어가 지정되면 AI 기반 번역 서비스를 사용하여 도움말 텍스트를 번역할 수 있습니다. 사용자 정의 번역 지침을 제공하여 번역 출력을 세부 조정할 수 있습니다.

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

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

기본 언어로 Find-Item cmdlet에 대한 메타데이터를 검색합니다.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Haalt metagegevens op voor de Find-Item-cmdlet met Nederlandse vertalingen.

## Related Links

- [Get-CmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
