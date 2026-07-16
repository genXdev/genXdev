# New-GenXdevXmlHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevXmlHelp -ModuleName <String> [-Force] [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | 도움말을 생성할 PowerShell 모듈의 이름 |
| `-Language` | String | — | — | Named | `'en-US'` | ko-KR |
| `-Force` | SwitchParameter | — | — | Named | — | 프롬프트 없이 기존 도움말 XML 파일 덮어쓰기 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-TranslationInstructions` | String | — | — | Named | — | 사용자 정의 지침 제공 완료 |

## Outputs

- `IO.FileInfo[]`

## Related Links

- [New-GenXdevXmlHelp on GitHub](https://github.com/genXdev/genXdev)
