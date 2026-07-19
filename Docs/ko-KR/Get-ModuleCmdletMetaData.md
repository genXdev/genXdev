# Get-ModuleCmdletMetaData

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** —

## Synopsis

> PowerShell 모듈에 있는 모든 cmdlet에 대한 메타데이터를 검색합니다.

## Description

지정된 모듈에 있는 모든 cmdlet에 대해 전체 cmdlet 메타데이터(시놉시스, 설명, 매개변수, 예제, 출력 및 별칭)를 검색하고 각 결과에 SubModuleName 및 CmdletType 속성을 추가합니다.

하위 모듈 할당은 두 가지 독립적인 경로를 사용합니다.

- 스크립트 cmdlet(.ps1): .psm1 dot-source 디렉터리 매핑(Functions\<SubModuleName>\FileName.ps1)과 일치하는 소스 파일.
- 컴파일된 cmdlet(.dll): ImplementationType.Namespace의 네임스페이스(예: GenXdev.FileSystem).

## Syntax

```powershell
Get-ModuleCmdletMetaData -ModuleName <String> [-Language <String>] [-SkipTranslation] [-TranslationInstructions <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ModuleName` | String | ✅ | — | 0 | — | cmdlet 메타데이터를 검색할 PowerShell 모듈의 이름 |
| `-Language` | String | — | — | Named | — | ko-KR |
| `-TranslationInstructions` | String | — | — | Named | — | 사용자 맞춤형 AI 번역 지침 |
| `-SkipTranslation` | SwitchParameter | — | — | Named | — | Skip LLM-based translation |

## Examples

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev'
```

GenXdev 모듈의 모든 cmdlet에 대한 메타데이터를 반환합니다.

### Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'

```powershell
Get-ModuleCmdletMetaData -ModuleName 'GenXdev' -Language 'nl-NL'
```

Retourneert Nederlands-vertaalde metadata voor alle GenXdev cmdlets.

## Outputs

- `Collections.Hashtable[]`

## Related Links

- [Get-ModuleCmdletMetaData on GitHub](https://github.com/genXdev/genXdev)
