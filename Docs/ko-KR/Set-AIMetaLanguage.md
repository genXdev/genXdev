# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> GenXdev.AI 이미지 메타데이터 작업의 기본 언어와 선택적으로 이미지 디렉토리를 설정합니다.

## Description

이 함수는 GenXdev.AI 모듈의 이미지 메타데이터 작업에 대한 전역 기본 언어를 설정합니다. 선택적으로 전역 이미지 디렉토리도 설정할 수 있습니다. 두 설정 모두 모듈의 기본 설정 저장소에 저장되어 세션 간에 사용됩니다.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | 이미지 메타데이터 작업의 기본 언어 |
| `-PreferencesDatabasePath` | String | — | — | Named | — | 환경 설정 데이터 파일의 데이터베이스 경로 |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(예: 언어, 이미지 컬렉션 등)을 세션에 저장된 대체 설정으로 사용합니다. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 세션에 저장된 AI 환경설정(언어, 이미지 컬렉션 등)의 대체 설정을 사용하지 마세요 |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

설정에서 언어 및 이미지 디렉토리를 영구적으로 설정합니다.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

환경 설정에 언어를 영구적으로 저장합니다.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

현재 세션에 대해서만 언어를 설정합니다 (전역 변수).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

영구 설정에 영향을 주지 않고 세션 언어 설정(전역 변수)을 초기화합니다.

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
