# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-GenXdevMarkdownHelp -ModuleName <String> [-Force] [-Language <String>] [-LinkPrefix <String>] [-OutputPath <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | 도움말을 생성할 PowerShell 모듈의 이름 |
| `-OutputPath` | String | — | — | Named | — | .md 파일의 사용자 지정 출력 디렉터리입니다. 기본값은 <moduleRoot>\Docs\<language>입니다. |
| `-Language` | String | — | — | Named | `'en-US'` | ko-KR |
| `-Force` | SwitchParameter | — | — | Named | — | 기존 .md 파일을 자동으로 덮어씁니다 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM translation; keep help in source language |
| `-LinkPrefix` | String | — | — | Named | — | README 인덱스 링크의 URL 접두사 (예: https://github.com/org/repo/Docs/) |
| `-TranslationInstructions` | String | — | — | Named | — | 사용자 맞춤형 AI 번역 지침 |

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
