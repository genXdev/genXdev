# Assert-GenXdevCmdlet

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `improvecmdlet`

## Synopsis

> AI 지원을 통해 GenXdev cmdlet 설명서 및 구현을 개선합니다.

## Description

이 함수는 AI 프롬프트를 통해 GenXdev cmdlet의 코드를 분석하고 개선하여 기능을 향상시킵니다. cmdlet을 모듈에 통합하고, 문서를 업데이트하고, 적절한 구현을 확인할 수 있습니다. 사용자 지정 프롬프트 템플릿을 지원하며 Visual Studio Code 또는 Visual Studio에서 파일을 열 수 있습니다.

## Syntax

```powershell
Assert-GenXdevCmdlet [[-CmdletName] <String>] [[-PromptKey] <String>] [[-Prompt] <String>] [-Code] [-FromScripts] [-Integrate] [-ModuleName <String[]>] [-NoLocal] [-OnlyPublished] [-VisualStudio] [<CommonParameters>]

Assert-GenXdevCmdlet [-EditPrompt] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | — | 0 | — | cmdlet을 필터링하는 검색 패턴 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | Named | — | 검색할 GenXdev 모듈 이름 🌐 *Supports wildcards* |
| `-PromptKey` | String | — | — | 1 | `'CheckAllRequirements'` | 템플릿 선택에 사용할 AI 프롬프트 키 |
| `-Prompt` | String | — | — | 2 | `''` | 사용자 정의 AI 프롬프트 텍스트 |
| `-NoLocal` | SwitchParameter | — | — | Named | — | 로컬 모듈 버전 건너뛰기 |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | 게시된 버전만 포함 |
| `-FromScripts` | SwitchParameter | — | — | Named | — | 스크립트 파일 검색 |
| `-Code` | SwitchParameter | — | — | Named | — | Visual Studio Code에서 열기 |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Visual Studio에서 열기 |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력을 변경하지 않고 그대로 반환하지 마세요. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하세요.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술 요소를 유지하세요.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역하세요.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지하세요.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 번역하지 마세요.
추가 사용자 지침:
번역할 내용이 PowerShell cmdlet 도움말 텍스트로 구성되어 있다는 점을 지침과 혼동하지 마세요.
이미지나 다른 것을 삽입하지 마세요. 콘텐츠를 가능한 한 직역하여 한국어(대한민국)로 번역하세요.

JSON 출력을 제공하도록 설계된 유용한 도우미입니다.
## 응답 형식

JSON 객체로만 응답하세요. 다른 텍스트는 허용되지 않습니다. *(Parameter set: )* |
| `-Integrate` | SwitchParameter | — | — | Named | — | 모듈에 cmdlet 통합 |

## Examples

### Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code

```powershell
Assert-GenXdevCmdlet -CmdletName "Get-Something" -PromptKey "CheckDocs" -Code
```

### improvecmdlet Get-Something CheckDocs -c

```powershell
improvecmdlet Get-Something CheckDocs -c
```

## Parameter Details

### `-CmdletName <String>`

> cmdlet을 필터링하는 검색 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ModuleName <String[]>`

> 검색할 GenXdev 모듈 이름

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PromptKey <String>`

> 템플릿 선택에 사용할 AI 프롬프트 키

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'CheckAllRequirements'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> 사용자 정의 AI 프롬프트 텍스트

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoLocal`

> 로컬 모듈 버전 건너뛰기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> 게시된 버전만 포함

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> 스크립트 파일 검색

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> Visual Studio Code에서 열기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `c` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VisualStudio`

> Visual Studio에서 열기

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `vs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-EditPrompt`

> 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력을 변경하지 않고 그대로 반환하지 마세요. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하세요.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술 요소를 유지하세요.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역하세요.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지하세요.
4. 식별자, 함수 이름, 변수 또는 기술 키워드를 번역하지 마세요.
추가 사용자 지침:
번역할 내용이 PowerShell cmdlet 도움말 텍스트로 구성되어 있다는 점을 지침과 혼동하지 마세요.
이미지나 다른 것을 삽입하지 마세요. 콘텐츠를 가능한 한 직역하여 한국어(대한민국)로 번역하세요.

JSON 출력을 제공하도록 설계된 유용한 도우미입니다.
## 응답 형식

JSON 객체로만 응답하세요. 다른 텍스트는 허용되지 않습니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | PromptKey |

<hr/>
### `-Integrate`

> 모듈에 cmdlet 통합

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureDefaultGenXdevRefactors.md)
- [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-CmdletMetaData.md)
- [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevModule.md)
- [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevModuleInfo.md)
- [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-GenXDevNewModulesInOrderOfDependency.md)
- [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ModuleCmdletMetaData.md)
- [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-GenXdevPSFormatter.md)
- [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-GenXdevScriptAnalyzer.md)
- [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-ModuleMarkdownHelp.md)
- [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-ModuleXmlHelp.md)
- [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Search-GenXdevCmdlet.md)
- [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-GenXdevCmdLetInIde.md)
