# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | cmdlet 메타데이터를 검색할 PowerShell 모듈의 이름 |
| `-Language` | String | — | — | Named | — | ko-KR |
| `-TranslationInstructions` | String | — | — | Named | — | 사용자 맞춤형 AI 번역 지침 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
