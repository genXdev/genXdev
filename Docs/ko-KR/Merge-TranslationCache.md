# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> 언어별로 디스크에 일괄 쓰기 작업을 수행하는 영구 번역 캐시를 관리합니다.

## Description

Get-TextTranslation을 위한 모듈 범위의 메모리 내 변환 캐시를 유지 관리합니다.
캐시는 $env:LOCALAPPDATA\GenXdev.PowerShell\ 아래에 언어별 JSON 파일로 분할됩니다. 항목 추가 호출은 일괄 처리됩니다. 디스크 쓰기는 언어당 100회 변형마다 또는 -PersistNow가 호출될 때만 발생합니다. -PersistNow는 또한 처리 배치 전체에서 무제한 증가를 방지하기 위해 메모리 내 캐시를 지웁니다.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | 메모리 내 캐시 해시테이블 반환 *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | 캐시 항목의 BCP 47 언어 코드 *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | 캐시할 원본 텍스트 *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | .SYNOPSIS
지정된 가상 머신의 보안을 활성화합니다.

.DESCRIPTION
Set-VmSecurity cmdlet은 가상 머신의 보안 설정을 구성합니다. 이를 통해 보안 부팅, 암호화, 키 보호기 및 기타 보안 관련 기능을 활성화할 수 있습니다.

.PARAMETER VMName
보안을 구성할 가상 머신의 이름을 지정합니다.

.PARAMETER CimSession
원격 세션에서 cmdlet을 실행합니다. CimSession 개체를 입력합니다.

.PARAMETER ComputerName
Hyper-V 호스트의 이름을 지정합니다.

.PARAMETER Passthru
작업 중인 개체를 파이프라인으로 전달해야 함을 나타냅니다.

.PARAMETER SecurityPolicy
VM에 대한 보안 정책을 지정합니다.

.PARAMETER SecureBoot
VM에서 보안 부팅을 활성화 또는 비활성화합니다.

.PARAMETER Template
VM 구성을 위한 템플릿을 지정합니다.

.PARAMETER ShieldingRequest
차폐 요청을 나타냅니다.

.PARAMETER KeyProtector
VM에 대한 키 보호기를 지정합니다.

.PARAMETER KeyStorageDrive
키 저장 드라이브입니다.

.EXAMPLE
PS C:\> Set-VmSecurity -VMName TestVM -SecureBoot $true
이 명령은 TestVM이라는 가상 머신에서 보안 부팅을 활성화합니다. *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | 더티 캐시를 모두 디스크에 기록하고 메모리를 비웁니다 *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | 메모리 내 캐시를 지우고 모든 디스크 파일을 삭제합니다 *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | 디스크의 모든 언어 캐시에서 번역되지 않은 항목 제거 *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> 메모리 내 캐시 해시테이블 반환

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> 캐시 항목의 BCP 47 언어 코드

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> 캐시할 원본 텍스트

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> .SYNOPSIS
지정된 가상 머신의 보안을 활성화합니다.

.DESCRIPTION
Set-VmSecurity cmdlet은 가상 머신의 보안 설정을 구성합니다. 이를 통해 보안 부팅, 암호화, 키 보호기 및 기타 보안 관련 기능을 활성화할 수 있습니다.

.PARAMETER VMName
보안을 구성할 가상 머신의 이름을 지정합니다.

.PARAMETER CimSession
원격 세션에서 cmdlet을 실행합니다. CimSession 개체를 입력합니다.

.PARAMETER ComputerName
Hyper-V 호스트의 이름을 지정합니다.

.PARAMETER Passthru
작업 중인 개체를 파이프라인으로 전달해야 함을 나타냅니다.

.PARAMETER SecurityPolicy
VM에 대한 보안 정책을 지정합니다.

.PARAMETER SecureBoot
VM에서 보안 부팅을 활성화 또는 비활성화합니다.

.PARAMETER Template
VM 구성을 위한 템플릿을 지정합니다.

.PARAMETER ShieldingRequest
차폐 요청을 나타냅니다.

.PARAMETER KeyProtector
VM에 대한 키 보호기를 지정합니다.

.PARAMETER KeyStorageDrive
키 저장 드라이브입니다.

.EXAMPLE
PS C:\> Set-VmSecurity -VMName TestVM -SecureBoot $true
이 명령은 TestVM이라는 가상 머신에서 보안 부팅을 활성화합니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> 더티 캐시를 모두 디스크에 기록하고 메모리를 비웁니다

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> 메모리 내 캐시를 지우고 모든 디스크 파일을 삭제합니다

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> 디스크의 모든 언어 캐시에서 번역되지 않은 항목 제거

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Test-DeepLinkImageFile.md)
