# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Assert-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
