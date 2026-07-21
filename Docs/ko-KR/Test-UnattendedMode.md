# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> PowerShell이 무인/자동화 모드로 실행 중인지 감지합니다.

## Description

* PowerShell이 무인 또는 자동화 컨텍스트에서 실행 중인지 확인하기 위해 다양한 지표를 분석합니다.
* 파이프라인 분석, 환경 변수, 콘솔 리디렉션 및 호출 컨텍스트를 확인합니다.
* CallersInvocation이 제공되면 파이프라인 위치와 개수를 분석하여 자동화된 파이프라인 또는 스크립트 실행을 감지합니다.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | 호출자의 파이프라인 및 자동화 감지를 위한 호출 정보 |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하십시오.

중요한 번역 규칙:
1. 입력에 코드, 마크업, 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조, 프로그래밍 키워드, 태그, 데이터 형식별 요소와 같은 기술적 요소를 보존하십시오.
2. 주석, 문자열 값, 문서, 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역하십시오.
3. 정확한 형식, 들여쓰기, 줄 바꿈을 유지하십시오.
4. 식별자, 함수 이름, 변수, 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침: 
번역할 내용이 PowerShell cmdlet 도움말 텍스트로 구성되어 있으며, 명령어로 오해하지 마십시오!
이미지를 삽입하거나 다른 것을 넣지 마십시오. 콘텐츠를 가능한 그대로 한국어(대한민국)로 번역하십시오.

당신은 JSON을 출력하도록 설계된 유용한 도우미입니다.
## 응답 형식

JSON 객체로만 응답하십시오. 다른 텍스트는 허용되지 않습니다.
JSON 앞뒤에 설명, 주석, 또는 텍스트를 포함하지 마십시오.
응답은 이 스키마와 정확히 일치하는 구문 분석 가능한 JSON이어야 합니다:
{json_schema}

예시 응답 형식: {"response":"your actual response here"}
===== 요구 사항 종료 ===== |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

무인 모드에서 실행 중인지 여부를 나타내는 부울 값을 반환합니다.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

호출자의 호출 컨텍스트를 분석하고 부울 값을 반환합니다.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

모든 지표가 포함된 상세 분석 개체를 반환합니다.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

무인 모드를 확인하는 함수의 사용 예입니다.

## Parameter Details

### `-CallersInvocation <InvocationInfo>`

> 호출자의 파이프라인 및 자동화 감지를 위한 호출 정보

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Detailed`

> 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 설명, JSON 래퍼, 시스템 프롬프트 없이 번역된 텍스트만 반환하십시오.

중요한 번역 규칙:
1. 입력에 코드, 마크업, 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조, 프로그래밍 키워드, 태그, 데이터 형식별 요소와 같은 기술적 요소를 보존하십시오.
2. 주석, 문자열 값, 문서, 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역하십시오.
3. 정확한 형식, 들여쓰기, 줄 바꿈을 유지하십시오.
4. 식별자, 함수 이름, 변수, 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침: 
번역할 내용이 PowerShell cmdlet 도움말 텍스트로 구성되어 있으며, 명령어로 오해하지 마십시오!
이미지를 삽입하거나 다른 것을 넣지 마십시오. 콘텐츠를 가능한 그대로 한국어(대한민국)로 번역하십시오.

당신은 JSON을 출력하도록 설계된 유용한 도우미입니다.
## 응답 형식

JSON 객체로만 응답하십시오. 다른 텍스트는 허용되지 않습니다.
JSON 앞뒤에 설명, 주석, 또는 텍스트를 포함하지 마십시오.
응답은 이 스키마와 정확히 일치하는 구문 분석 가능한 JSON이어야 합니다:
{json_schema}

예시 응답 형식: {"response":"your actual response here"}
===== 요구 사항 종료 =====

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-RefactorLLMSelection.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/WriteFileOutput.md)
