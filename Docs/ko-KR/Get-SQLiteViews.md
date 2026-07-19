# Get-SQLiteViews

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLite 데이터베이스에서 뷰 목록을 검색합니다.

## Description

지정된 SQLite 데이터베이스 파일 또는 연결 문자열에서 모든 뷰 이름을 가져옵니다.
추가 데이터베이스 작업에 사용할 수 있는 뷰 이름 배열을 반환합니다.
이 함수는 유연성을 위해 두 가지 매개변수 집합을 지원합니다: 연결 문자열 또는 데이터베이스 파일의 직접 경로를 제공할 수 있습니다.

## Syntax

```powershell
Get-SQLiteViews -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViews -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |

## Examples

### Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"

```powershell
Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"
```

### s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"

```powershell
s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"
```

## Related Links

- [Get-SQLiteViews on GitHub](https://github.com/genXdev/genXdev)
