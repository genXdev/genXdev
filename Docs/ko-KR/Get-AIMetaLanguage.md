# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> 이미지 메타데이터 작업에 대해 구성된 기본 언어를 가져옵니다.

## Description

* 이 cmdlet은 GenXdev.AI 모듈이 이미지 메타데이터 작업에 사용하는 기본 언어를 검색합니다.
* 먼저 전역 변수를 확인하고(SkipSession이 지정되지 않은 경우), 그 다음 영구 기본 설정으로 대체되며, 마지막으로 시스템 기본값을 사용합니다.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 이미지 메타데이터 작업의 기본 언어 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | 세션 설정(전역 변수)을 검색 전에 초기화합니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

전역 변수나 환경 설정에서 현재 구성된 언어를 가져옵니다.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

세션을 무시하고 지속적인 환경설정에서 구성된 언어를 가져옵니다.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

세션 설정을 지우고 영구 설정에서 언어를 가져옵니다.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
