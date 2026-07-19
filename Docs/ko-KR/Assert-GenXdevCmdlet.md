# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> AI 지원을 통해 GenXdev cmdlet 문서화 및 구현을 개선합니다.

## Description

이 함수는 AI 프롬프트를 통해 GenXdev cmdlet을 분석하고 코드를 개선하여 기능을 향상시킵니다. 함수는 cmdlet을 모듈에 통합하고, 문서를 업데이트하며, 올바른 구현을 확인할 수 있습니다. 또한 사용자 정의 프롬프트 템플릿을 지원하며, Visual Studio Code 또는 Visual Studio에서 파일을 열 수 있습니다.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | cmdlet을 필터링하는 검색 패턴 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | GenXdev 모듈 검색 이름 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | 템플릿 선택에 사용할 AI 프롬프트 키 |
| `-Prompt` | String | — | — | 2 | `''` | 사용자 정의 AI 프롬프트 텍스트 |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 로컬 모듈 버전 건너뛰기 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 게시된 버전만 포함 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일에서 검색 |
| `-Code` | SwitchParameter | — | — | Named | — | Visual Studio Code에서 열기 |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Open in Visual Studio |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | 명령어를 모듈에 통합하기 |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
