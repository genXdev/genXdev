# New-GenXdevMarkdownHelp

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 모든 PowerShell 모듈에 대한 풍부한 Markdown 도움말 파일을 생성합니다.

## Description

모든 PowerShell 모듈을 위한 포괄적인 Markdown 도움말 사이트를 생성합니다:
각 cmdlet당 하나의 .md 파일(모든 메타데이터 섹션 포함)과 각 cmdlet 파일에 연결된 하위 모듈별 테이블이 포함된 README.md 인덱스.

하위 모듈 검색은 이식 가능합니다: 스크립트 cmdlet의 경우 .psm1 도트 소스 디렉토리, 컴파일된 cmdlet의 경우 .NET 네임스페이스, 하위 모듈 구조가 없는 모듈을 위한 계층적 대체 체인.

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

## Examples

### New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'Pester' -SkipTranslation
```

Docs\ 폴더를 생성하고, Pester cmdlet당 하나의 .md 파일과 README.md 인덱스를 포함합니다.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -Language 'nl-NL' -Force
```

네덜란드어로 번역된 마크다운 도움말을 생성하여 기존 파일을 덮어씁니다.

### New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `     'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation

```powershell
New-GenXdevMarkdownHelp -ModuleName 'GenXdev' -LinkPrefix `
    'https://github.com/genXdev/genXdev/Docs/' -SkipTranslation
```

README 인덱스에서 절대 GitHub 링크를 사용한 도움말을 생성합니다.

## Outputs

- `String[]`

## Related Links

- [New-GenXdevMarkdownHelp on GitHub](https://github.com/genXdev/genXdev)
