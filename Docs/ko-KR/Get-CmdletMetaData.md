# Get-CmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> 지정된 GenXdev cmdlet에 대한 메타데이터를 검색하고, 선택적으로 도움말 텍스트를 다른 언어로 번역합니다.

## Description

GenXdev cmdlet의 종합 메타데이터를 추출하여 반환합니다. 여기에는 cmdlet의 개요, 설명, 매개변수, 예제 및 기타 도움말 정보가 포함됩니다. -Language 매개변수를 통해 대상 언어가 지정되면 AI 기반 번역 서비스를 사용하여 도움말 텍스트를 번역할 수 있습니다. 사용자 지정 번역 지침을 제공하여 번역 출력을 세밀하게 조정할 수 있습니다.

## Syntax

```powershell
Get-CmdletMetaData -Name <String> [[-Language] <String>] [[-TranslationInstructions] <String>] [[-Model] <String>] [[-ApiEndpoint] <String>] [[-ApiKey] <String>] [[-NoSupportForJsonSchema] <String>] [-SkipTranslation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | — | 0 | — | 메타데이터를 검색할 cmdlet의 이름 |
| `-Language` | String | — | — | 1 | — | 도움말 텍스트를 번역하기 위한 BCP 47 언어 태그 (예: nl-NL, de-DE). 번역을 건너뛰려면 생략하세요. |
| `-TranslationInstructions` | String | — | — | 2 | — | AI 번역 모델을 위한 사용자 정의 지침입니다. 기본 cmdlet 메타데이터 인식 번역 지침을 재정의합니다. |
| `-Model` | String | — | — | 3 | — | AI 번역에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | 4 | — | AI 번역을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | 5 | — | 인증된 AI 번역을 위한 API 키 |
| `-NoSupportForJsonSchema` | String | — | — | 6 | — | LLM이 JSON 스키마를 지원하지 않음을 나타냅니다. |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | LLM 기반 번역을 건너뛰고 -Language가 지정된 경우에도 도움말 텍스트를 원래 언어로 유지합니다. |

## Examples

### Get-CmdletMetaData -Name "Find-Item"

```powershell
Get-CmdletMetaData -Name "Find-Item"
```

Find-Item cmdlet의 메타데이터를 기본 언어로 검색합니다.

### Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"

```powershell
Get-CmdletMetaData -Name "Find-Item" -Language "nl-NL"
```

Find-Item cmdlet에 대한 네덜란드어 번역이 포함된 메타데이터를 검색합니다.

## Parameter Details

### `-Name <String>`

> 메타데이터를 검색할 cmdlet의 이름

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> 도움말 텍스트를 번역하기 위한 BCP 47 언어 태그 (예: nl-NL, de-DE). 번역을 건너뛰려면 생략하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TranslationInstructions <String>`

> AI 번역 모델을 위한 사용자 정의 지침입니다. 기본 cmdlet 메타데이터 인식 번역 지침을 재정의합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI 번역에 사용할 모델 식별자 또는 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI 번역을 위한 API 엔드포인트 URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 인증된 AI 번역을 위한 API 키

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> LLM이 JSON 스키마를 지원하지 않음을 나타냅니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipTranslation`

> LLM 기반 번역을 건너뛰고 -Language가 지정된 경우에도 도움말 텍스트를 원래 언어로 유지합니다.

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

- [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevCmdlet.md)
- [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevCmdletTests.md)
- [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevDependencyUsage.md)
- [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-GenXdevTest.md)
- [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-ModuleDefinition.md)
- [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureCopilotKeyboardShortCut.md)
- [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureDefaultGenXdevRefactors.md)
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
