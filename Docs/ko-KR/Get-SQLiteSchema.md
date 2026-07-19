# Get-SQLiteSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Retrieves the complete schema information from a SQLite database.

## Description

이 함수는 sqlite_master 테이블을 조회하여 SQLite 데이터베이스의 완전한 스키마 정의(테이블, 뷰, 인덱스, 트리거 포함)를 가져옵니다. 연결 문자열 또는 데이터베이스 파일의 직접 경로를 인자로 받습니다.

## Syntax

```powershell
Get-SQLiteSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteSchema -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |

## Examples

### Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"

```powershell
Get-SQLiteSchema -DatabaseFilePath "C:\Databases\inventory.db"
```

### Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"

```powershell
Get-SQLiteSchema -ConnectionString "Data Source=C:\Databases\inventory.db;Version=3;"
```

## Related Links

- [Get-SQLiteSchema on GitHub](https://github.com/genXdev/genXdev)
