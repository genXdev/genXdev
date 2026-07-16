# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로 |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | SQLite 패키지 설치를 위한 기본 설정이 지정된 경우에도 동의 프롬프트를 강제합니다. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatically consent to third-party software installation and set persistent flag for SQLite package. |

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)
