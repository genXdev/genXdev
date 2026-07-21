# Invoke-LLMTextTransformation

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `spellcheck`

## Synopsis

> AI 기반 처리를 사용하여 텍스트를 변환합니다.

## Description

이 함수는 AI 모델을 사용하여 입력 텍스트를 처리하고 맞춤법 검사, 이모티콘 추가 또는 지침을 통해 지정된 기타 텍스트 향상과 같은 다양한 변환을 수행합니다. 매개변수를 통해 직접 입력을 받거나, 파이프라인에서, 또는 시스템 클립보드에서 입력을 받을 수 있습니다.

## Syntax

```powershell
Invoke-LLMTextTransformation [[-Text] <String>] [[-Instructions] <String>] [[-Attachments] <String[]>] [-AllowDefaultTools] [-ApiEndpoint <String>] [-ApiKey <String>] [-AudioContextSize <Int32>] [-AudioTemperature <Double>] [-ClearSession] [-ContinueLast] [-CpuThreads <Int32>] [-DontAddThoughtsToHistory] [-DontSpeak] [-DontSpeakThoughts] [-EntropyThreshold <Double>] [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-Functions <Collections.Hashtable[]>] [-ImageDetail <String>] [-Language <String>] [-LengthPenalty <Double>] [-LLMQueryType <String>] [-LogProbThreshold <Double>] [-MarkupBlocksTypeFilter <String[]>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSessionCaching] [-NoSpeechThreshold <Double>] [-NoSupportForJsonSchema <String>] [-NoVOX] [-OnlyResponses] [-OutputMarkdownBlocksOnly] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SetClipboard] [-SilenceThreshold <Double>] [-SkipSession] [-Speak] [-SpeakThoughts] [-SuppressRegex <String>] [-Temperature <Double>] [-TemperatureResponse <Double>] [-TimeoutSeconds <Int32>] [-UseDesktopAudioCapture] [-WithBeamSearchSamplingStrategy] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Text` | String | — | ✅ (ByValue) | 0 | — | .PARAMETER Name
탐색할 리소스의 이름을 지정합니다. |
| `-Instructions` | String | — | — | 1 | `('Check and correct any spelling or grammar ' +
            'errors in the text. Return the corrected text without any ' +
            'additional comments or explanations.')` | PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지시사항과 혼동하지 마십시오!
이미지를 삽입하지 마십시오. 그냥 내용을 가능한 직역하여 한국어(대한민국)로 번역하세요.

제공된 텍스트를 변환하는 방법에 대한 AI 모델 지침 |
| `-Attachments` | String[] | — | — | 2 | `@()` | 첨부할 파일 경로 배열 |
| `-Temperature` | Double | — | — | Named | `-1` | 응답 임의성에 대한 온도 (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'low'` | 이미지 세부 수준 |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | 함수 정의 배열 |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | 도구로 사용할 PowerShell 명령 정의 배열 |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | 확인이 필요하지 않은 명령 이름 배열 |
| `-LLMQueryType` | String | — | — | Named | `'SimpleIntelligence'` | LLM 쿼리의 유형 |
| `-Model` | String | — | — | Named | — | AI 작업에 사용할 모델 식별자 또는 패턴 |
| `-ApiEndpoint` | String | — | — | Named | — | AI 작업을 위한 API 엔드포인트 URL |
| `-ApiKey` | String | — | — | Named | — | 인증된 AI 작업을 위한 API 키 |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | LLM이 JSON 스키마를 지원하지 않음을 나타냅니다. |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | AI 작업의 제한 시간(초) |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-SetClipboard` | SwitchParameter | — | — | Named | — | 향상된 텍스트를 클립보드에 복사 |
| `-DontAddThoughtsToHistory` | SwitchParameter | — | — | Named | — | 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 번역된 텍스트만 반환하고 설명, JSON 래퍼, 시스템 프롬프트는 포함하지 마십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지합니다.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역합니다.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지합니다.
4. 식별자, 함수 이름, 변수 또는 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침으로 착각하지 마십시오!
이미지나 다른 것을 삽입하지 마십시오. 내용을 가능한 한 직역하여 한국어(대한민국)로 번역하십시오. |
| `-ContinueLast` | SwitchParameter | — | — | Named | — | 이전 대화에서 계속 |
| `-Speak` | SwitchParameter | — | — | Named | — | AI 응답에 대해 텍스트 음성 변환 활성화 |
| `-SpeakThoughts` | SwitchParameter | — | — | Named | — | AI 사고 응답에 대한 텍스트 음성 변환 활성화 |
| `-NoSessionCaching` | SwitchParameter | — | — | Named | — | 세션 캐시에 세션을 저장하지 않음 |
| `-AllowDefaultTools` | SwitchParameter | — | — | Named | — | 처리 중에 기본 AI 도구 사용 허용 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | 세션에 저장된 대체 설정을 AI 기본 설정에 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 기본 설정에 대해 세션에 저장된 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 영향을 주지 않고 영구 설정에만 저장 |
| `-AudioTemperature` | Double | — | — | Named | — | 오디오 응답 무작위성에 대한 온도 (LLMQuery에 전달됨) |
| `-TemperatureResponse` | Double | — | — | Named | — | 응답 생성을 위한 온도 (LLMQuery에 전달됨) |
| `-Language` | String | — | — | Named | — | 처리할 언어 코드 또는 이름(LLMQuery에 전달됨) |
| `-CpuThreads` | Int32 | — | — | Named | — | LLMQuery에 전달할 CPU 스레드 수 |
| `-SuppressRegex` | String | — | — | Named | — | 출력(LLMQuery에 전달)을 표시하지 않는 정규 표현식 |
| `-AudioContextSize` | Int32 | — | — | Named | — | 오디오 컨텍스트 크기 (LLMQuery에 전달됨) |
| `-SilenceThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 침묵 임계값(LLMQuery에 전달됨) |
| `-LengthPenalty` | Double | — | — | Named | — | 시퀀스 생성에 대한 길이 페널티(LLMQuery에 전달됨) |
| `-EntropyThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 엔트로피 임계값(LLMQuery에 전달됨) |
| `-LogProbThreshold` | Double | — | — | Named | — | 출력 필터링을 위한 로그 확률 임계값 (LLMQuery에 전달됨) |
| `-NoSpeechThreshold` | Double | — | — | Named | — | 오디오 감지를 위한 음성 임계값 없음 (LLMQuery에 전달됨) |
| `-DontSpeak` | SwitchParameter | — | — | Named | — | 음성 출력 비활성화 (LLMQuery로 전달됨) |
| `-DontSpeakThoughts` | SwitchParameter | — | — | Named | — | LLMQuery로 전달되는 생각에 대한 음성 출력 비활성화 |
| `-NoVOX` | SwitchParameter | — | — | Named | — | VOX(음성 활성화) 비활성화(LLMQuery에 전달됨) |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | 데스크톱 오디오 캡처 사용(LLMQuery로 전송됨) |
| `-NoContext` | SwitchParameter | — | — | Named | — | 컨텍스트 사용 비활성화 (LLMQuery에 전달됨) |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | 빔 서치 샘플링 전략 사용 (LLMQuery에 전달됨) |
| `-OnlyResponses` | SwitchParameter | — | — | Named | — | 아래는 번역된 PowerShell cmdlet 도움말 텍스트입니다.

## SYNOPSIS
지정된 폴더에서 파일을 삭제합니다.

## SYNTAX
```powershell
Remove-Item [-Path] <String[]> [-Filter <String>] [-Include <String[]>] [-Exclude <String[]>] [-Recurse] [-Force] [-Credential <PSCredential>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
`Remove-Item` cmdlet은 하나 이상의 항목을 삭제합니다. 많은 파일 시스템 공급자(FileSystem, Registry, Certificate 등)에서 지원되므로 다양한 유형의 항목을 삭제할 수 있습니다.

## PARAMETERS
### -Path
삭제할 항목의 경로를 지정합니다. 와일드카드 문자를 사용할 수 있습니다.

### -Filter
항목을 필터링하는 데 사용되는 필터 문자열을 지정합니다. 공급자에 따라 다릅니다. `-Path` 매개 변수에서 와일드카드를 사용하는 것보다 효율적입니다.

### -Include
이 매개 변수는 항목을 포함하는 문자열 배열을 지정합니다. `-Path` 값이 와일드카드를 포함하는 경우에만 유효합니다.

### -Exclude
이 매개 변수는 항목을 제외하는 문자열 배열을 지정합니다. `-Path` 값이 와일드카드를 포함하는 경우에만 유효합니다.

### -Recurse
이 매개 변수는 지정된 위치의 하위 컨테이너에서 항목을 재귀적으로 삭제합니다.

### -Force
이 매개 변수는 읽기 전용 항목이나 숨겨진 항목과 같은 항목을 강제로 삭제합니다.

### -Credential
이 작업을 수행할 권한이 있는 사용자 계정을 지정합니다.

### -WhatIf
cmdlet을 실행하지 않고 작업 결과를 보여줍니다.

### -Confirm
cmdlet을 실행하기 전에 확인 메시지를 표시합니다.

## EXAMPLES
### 예제 1: 파일 삭제
```powershell
Remove-Item -Path C:\Test\example.txt
```
이 명령은 `C:\Test\example.txt` 파일을 삭제합니다.

### 예제 2: 폴더 및 모든 내용 삭제
```powershell
Remove-Item -Path C:\Test\* -Recurse
```
이 명령은 `C:\Test` 폴더에 있는 모든 파일과 하위 폴더를 삭제합니다.

## NOTES
삭제된 파일은 휴지통으로 이동되지 않고 영구적으로 삭제됩니다. 휴지통으로 이동하려면 `$RecycleBin` 공급자를 사용하거나 다른 방법을 사용하세요.

## RELATED LINKS
[Clear-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/clear-item)
[Get-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/get-item)
[Move-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/move-item)
[Set-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/set-item) |
| `-OutputMarkdownBlocksOnly` | SwitchParameter | — | — | Named | — | 다음은 PowerShell cmdlet 도움말 텍스트를 한국어로 번역한 결과입니다.

---

## Set-Acl

### 간단한 설명
파일이나 레지스트리 키와 같은 리소스의 보안 설명자를 변경합니다.

### 구문
```powershell
Set-Acl [-Path] <String[]> [-AclObject] <Object> [[-CentralAccessPolicy] <String>] [-ExcludeCentralAccessPolicy] [-Passthru] [-Filter <String>] [-Include <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Set-Acl -LiteralPath <String[]> [-AclObject] <Object> [[-CentralAccessPolicy] <String>] [-ExcludeCentralAccessPolicy] [-Passthru] [-Filter <String>] [-Include <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Set-Acl -InputObject <PSObject> [-AclObject] <Object> [[-CentralAccessPolicy] <String>] [-ExcludeCentralAccessPolicy] [-Passthru] [-Filter <String>] [-Include <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### 설명
`Set-Acl` cmdlet은 지정된 항목의 보안 설명자를 변경하여 현재 사용자나 그룹이 해당 리소스에 액세스하는 방법을 수정합니다. 보안 설명자는 ACL(액세스 제어 목록)과 SACL(시스템 액세스 제어 목록)을 포함합니다.

이 cmdlet은 `Get-Acl` cmdlet의 출력을 사용하여 ACL 객체를 제공하는 데 가장 적합합니다. 경로를 지정할 때는 와일드카드 문자를 사용할 수 있습니다.

### 매개변수

| 매개변수 | 유형 | 설명 |
|---------|------|------|
| `-AclObject` | Object (필수) | 적용할 ACL 객체를 지정합니다. `Get-Acl`에서 반환된 객체를 사용할 수 있습니다. |
| `-CentralAccessPolicy` | String | 중앙 액세스 정책의 이름을 지정합니다. |
| `-ExcludeCentralAccessPolicy` | SwitchParameter | 중앙 액세스 정책을 제외한다는 것을 나타냅니다. |
| `-Filter` | String | 공급자 형식이나 언어에 필터를 지정합니다. |
| `-Include` | String | 작업에 포함할 항목을 지정합니다. |
| `-InputObject` | PSObject | 파이프라인을 통해 ACL 객체를 전달할 때 사용합니다. |
| `-LiteralPath` | String[] | 리터럴 경로를 지정합니다. 와일드카드 문자를 사용하지 않습니다. |
| `-Passthru` | SwitchParameter | 변경된 보안 설명자를 반환합니다. |
| `-Path` | String[] | 항목의 경로를 지정합니다. 와일드카드가 허용됩니다. |
| `-WhatIf` | SwitchParameter | cmdlet을 실행하지 않고 작업 결과를 표시합니다. |
| `-Confirm` | SwitchParameter | 실행 전 확인을 요청합니다. |

### 입력
`System.Management.Automation.PSObject`
보안 설명자 객체를 이 cmdlet에 파이프할 수 있습니다.

### 출력
`System.Security.AccessControl.FileSecurity`, `System.Security.AccessControl.DirectorySecurity` 또는 다른 보안 설명자 형식
기본적으로 이 cmdlet은 출력을 생성하지 않습니다. `-Passthru` 매개변수를 사용하면 보안 설명자 객체를 반환합니다.

### 예제

#### 예제 1: 파일의 ACL 복사
```powershell
$ACL = Get-Acl C:\temp\test.txt
Set-Acl -Path C:\temp\test2.txt -AclObject $ACL
```
이 예제는 `test.txt`의 ACL을 `test2.txt`에 복사합니다.

#### 예제 2: 폴더의 ACL 설정
```powershell
$ACL = Get-Acl C:\temp
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("DOMAIN\User","Read","Allow")
$ACL.SetAccessRule($AccessRule)
Set-Acl -Path C:\temp -AclObject $ACL
```
이 예제는 폴더의 ACL에 읽기 권한을 추가합니다.

### 관련 링크
- [Get-Acl]()
- [about_ACLs]() |
| `-MarkupBlocksTypeFilter` | String[] | — | — | Named | — | 마크업 블록 유형 필터 (LLMQuery에 전달됨) |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | 최대 도구 콜백 길이 (LLMQuery에 전달됨) |

## Examples

### Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `     -Instructions "Fix spelling errors" -SetClipboard

```powershell
Invoke-LLMTextTransformation -Text "Hello, hwo are you todey?" `
    -Instructions "Fix spelling errors" -SetClipboard
```

### "Time to celerbate!" | Invoke-LLMTextTransformation `     -Instructions "Add celebratory emoticons"

```powershell
"Time to celerbate!" | Invoke-LLMTextTransformation `
    -Instructions "Add celebratory emoticons"
```

### spellcheck "This is a sentance with erors"

```powershell
spellcheck "This is a sentance with erors"
```

## Parameter Details

### `-Text <String>`

> .PARAMETER Name
탐색할 리소스의 이름을 지정합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지시사항과 혼동하지 마십시오!
이미지를 삽입하지 마십시오. 그냥 내용을 가능한 직역하여 한국어(대한민국)로 번역하세요.

제공된 텍스트를 변환하는 방법에 대한 AI 모델 지침

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `('Check and correct any spelling or grammar ' +
            'errors in the text. Return the corrected text without any ' +
            'additional comments or explanations.')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Attachments <String[]>`

> 첨부할 파일 경로 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> 응답 임의성에 대한 온도 (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> 이미지 세부 수준

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'low'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> 함수 정의 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> 도구로 사용할 PowerShell 명령 정의 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> 확인이 필요하지 않은 명령 이름 배열

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> LLM 쿼리의 유형

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'SimpleIntelligence'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> AI 작업에 사용할 모델 식별자 또는 패턴

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> AI 작업을 위한 API 엔드포인트 URL

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> 인증된 AI 작업을 위한 API 키

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> AI 작업의 제한 시간(초)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터 파일의 데이터베이스 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetClipboard`

> 향상된 텍스트를 클립보드에 복사

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontAddThoughtsToHistory`

> 다음 텍스트를 한국어(대한민국)로 번역하세요. 모든 사람이 읽을 수 있는 텍스트를 반드시 번역해야 합니다. 입력 내용을 변경하지 않고 그대로 반환하지 마십시오. 번역된 텍스트만 반환하고 설명, JSON 래퍼, 시스템 프롬프트는 포함하지 마십시오.

중요 번역 규칙:
1. 입력에 코드, 마크업 또는 구조화된 데이터가 포함된 경우 모든 구문, 구조 및 프로그래밍 키워드, 태그 또는 데이터 형식별 요소와 같은 기술적 요소를 유지합니다.
2. 주석, 문자열 값, 문서 또는 자연어 콘텐츠와 같은 사람이 읽을 수 있는 텍스트 부분만 번역합니다.
3. 정확한 서식, 들여쓰기 및 줄 바꿈을 유지합니다.
4. 식별자, 함수 이름, 변수 또는 기술 키워드는 절대 번역하지 마십시오.
추가 사용자 지침:
PowerShell cmdlet 도움말 텍스트로 구성된 번역할 내용을 지침으로 착각하지 마십시오!
이미지나 다른 것을 삽입하지 마십시오. 내용을 가능한 한 직역하여 한국어(대한민국)로 번역하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContinueLast`

> 이전 대화에서 계속

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speak`

> AI 응답에 대해 텍스트 음성 변환 활성화

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SpeakThoughts`

> AI 사고 응답에 대한 텍스트 음성 변환 활성화

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSessionCaching`

> 세션 캐시에 세션을 저장하지 않음

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllowDefaultTools`

> 처리 중에 기본 AI 도구 사용 허용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> 세션에 저장된 대체 설정을 AI 기본 설정에 사용

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> AI 기본 설정에 대해 세션에 저장된 대체 설정을 지웁니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> 세션에 영향을 주지 않고 영구 설정에만 저장

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioTemperature <Double>`

> 오디오 응답 무작위성에 대한 온도 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureResponse <Double>`

> 응답 생성을 위한 온도 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> 처리할 언어 코드 또는 이름(LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> LLMQuery에 전달할 CPU 스레드 수

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> 출력(LLMQuery에 전달)을 표시하지 않는 정규 표현식

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> 오디오 컨텍스트 크기 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Double>`

> 오디오 감지를 위한 침묵 임계값(LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Double>`

> 시퀀스 생성에 대한 길이 페널티(LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Double>`

> 출력 필터링을 위한 엔트로피 임계값(LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Double>`

> 출력 필터링을 위한 로그 확률 임계값 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Double>`

> 오디오 감지를 위한 음성 임계값 없음 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeak`

> 음성 출력 비활성화 (LLMQuery로 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSpeakThoughts`

> LLMQuery로 전달되는 생각에 대한 음성 출력 비활성화

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoVOX`

> VOX(음성 활성화) 비활성화(LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> 데스크톱 오디오 캡처 사용(LLMQuery로 전송됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> 컨텍스트 사용 비활성화 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> 빔 서치 샘플링 전략 사용 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyResponses`

> 아래는 번역된 PowerShell cmdlet 도움말 텍스트입니다.

## SYNOPSIS
지정된 폴더에서 파일을 삭제합니다.

## SYNTAX
```powershell
Remove-Item [-Path] <String[]> [-Filter <String>] [-Include <String[]>] [-Exclude <String[]>] [-Recurse] [-Force] [-Credential <PSCredential>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## DESCRIPTION
`Remove-Item` cmdlet은 하나 이상의 항목을 삭제합니다. 많은 파일 시스템 공급자(FileSystem, Registry, Certificate 등)에서 지원되므로 다양한 유형의 항목을 삭제할 수 있습니다.

## PARAMETERS
### -Path
삭제할 항목의 경로를 지정합니다. 와일드카드 문자를 사용할 수 있습니다.

### -Filter
항목을 필터링하는 데 사용되는 필터 문자열을 지정합니다. 공급자에 따라 다릅니다. `-Path` 매개 변수에서 와일드카드를 사용하는 것보다 효율적입니다.

### -Include
이 매개 변수는 항목을 포함하는 문자열 배열을 지정합니다. `-Path` 값이 와일드카드를 포함하는 경우에만 유효합니다.

### -Exclude
이 매개 변수는 항목을 제외하는 문자열 배열을 지정합니다. `-Path` 값이 와일드카드를 포함하는 경우에만 유효합니다.

### -Recurse
이 매개 변수는 지정된 위치의 하위 컨테이너에서 항목을 재귀적으로 삭제합니다.

### -Force
이 매개 변수는 읽기 전용 항목이나 숨겨진 항목과 같은 항목을 강제로 삭제합니다.

### -Credential
이 작업을 수행할 권한이 있는 사용자 계정을 지정합니다.

### -WhatIf
cmdlet을 실행하지 않고 작업 결과를 보여줍니다.

### -Confirm
cmdlet을 실행하기 전에 확인 메시지를 표시합니다.

## EXAMPLES
### 예제 1: 파일 삭제
```powershell
Remove-Item -Path C:\Test\example.txt
```
이 명령은 `C:\Test\example.txt` 파일을 삭제합니다.

### 예제 2: 폴더 및 모든 내용 삭제
```powershell
Remove-Item -Path C:\Test\* -Recurse
```
이 명령은 `C:\Test` 폴더에 있는 모든 파일과 하위 폴더를 삭제합니다.

## NOTES
삭제된 파일은 휴지통으로 이동되지 않고 영구적으로 삭제됩니다. 휴지통으로 이동하려면 `$RecycleBin` 공급자를 사용하거나 다른 방법을 사용하세요.

## RELATED LINKS
[Clear-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/clear-item)
[Get-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/get-item)
[Move-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/move-item)
[Set-Item](https://docs.microsoft.com/powershell/module/microsoft.powershell.management/set-item)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputMarkdownBlocksOnly`

> 다음은 PowerShell cmdlet 도움말 텍스트를 한국어로 번역한 결과입니다.

---

## Set-Acl

### 간단한 설명
파일이나 레지스트리 키와 같은 리소스의 보안 설명자를 변경합니다.

### 구문
```powershell
Set-Acl [-Path] <String[]> [-AclObject] <Object> [[-CentralAccessPolicy] <String>] [-ExcludeCentralAccessPolicy] [-Passthru] [-Filter <String>] [-Include <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Set-Acl -LiteralPath <String[]> [-AclObject] <Object> [[-CentralAccessPolicy] <String>] [-ExcludeCentralAccessPolicy] [-Passthru] [-Filter <String>] [-Include <String>] [-WhatIf] [-Confirm] [<CommonParameters>]

Set-Acl -InputObject <PSObject> [-AclObject] <Object> [[-CentralAccessPolicy] <String>] [-ExcludeCentralAccessPolicy] [-Passthru] [-Filter <String>] [-Include <String>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

### 설명
`Set-Acl` cmdlet은 지정된 항목의 보안 설명자를 변경하여 현재 사용자나 그룹이 해당 리소스에 액세스하는 방법을 수정합니다. 보안 설명자는 ACL(액세스 제어 목록)과 SACL(시스템 액세스 제어 목록)을 포함합니다.

이 cmdlet은 `Get-Acl` cmdlet의 출력을 사용하여 ACL 객체를 제공하는 데 가장 적합합니다. 경로를 지정할 때는 와일드카드 문자를 사용할 수 있습니다.

### 매개변수

| 매개변수 | 유형 | 설명 |
|---------|------|------|
| `-AclObject` | Object (필수) | 적용할 ACL 객체를 지정합니다. `Get-Acl`에서 반환된 객체를 사용할 수 있습니다. |
| `-CentralAccessPolicy` | String | 중앙 액세스 정책의 이름을 지정합니다. |
| `-ExcludeCentralAccessPolicy` | SwitchParameter | 중앙 액세스 정책을 제외한다는 것을 나타냅니다. |
| `-Filter` | String | 공급자 형식이나 언어에 필터를 지정합니다. |
| `-Include` | String | 작업에 포함할 항목을 지정합니다. |
| `-InputObject` | PSObject | 파이프라인을 통해 ACL 객체를 전달할 때 사용합니다. |
| `-LiteralPath` | String[] | 리터럴 경로를 지정합니다. 와일드카드 문자를 사용하지 않습니다. |
| `-Passthru` | SwitchParameter | 변경된 보안 설명자를 반환합니다. |
| `-Path` | String[] | 항목의 경로를 지정합니다. 와일드카드가 허용됩니다. |
| `-WhatIf` | SwitchParameter | cmdlet을 실행하지 않고 작업 결과를 표시합니다. |
| `-Confirm` | SwitchParameter | 실행 전 확인을 요청합니다. |

### 입력
`System.Management.Automation.PSObject`
보안 설명자 객체를 이 cmdlet에 파이프할 수 있습니다.

### 출력
`System.Security.AccessControl.FileSecurity`, `System.Security.AccessControl.DirectorySecurity` 또는 다른 보안 설명자 형식
기본적으로 이 cmdlet은 출력을 생성하지 않습니다. `-Passthru` 매개변수를 사용하면 보안 설명자 객체를 반환합니다.

### 예제

#### 예제 1: 파일의 ACL 복사
```powershell
$ACL = Get-Acl C:\temp\test.txt
Set-Acl -Path C:\temp\test2.txt -AclObject $ACL
```
이 예제는 `test.txt`의 ACL을 `test2.txt`에 복사합니다.

#### 예제 2: 폴더의 ACL 설정
```powershell
$ACL = Get-Acl C:\temp
$AccessRule = New-Object System.Security.AccessControl.FileSystemAccessRule("DOMAIN\User","Read","Allow")
$ACL.SetAccessRule($AccessRule)
Set-Acl -Path C:\temp -AclObject $ACL
```
이 예제는 폴더의 ACL에 읽기 권한을 추가합니다.

### 관련 링크
- [Get-Acl]()
- [about_ACLs]()

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MarkupBlocksTypeFilter <String[]>`

> 마크업 블록 유형 필터 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> 최대 도구 콜백 길이 (LLMQuery에 전달됨)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMStringListEvaluation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-AllImageMetaData.md)
