# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
