# Get-SQLiteTables

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLite 데이터베이스에서 테이블 이름 목록을 검색합니다.

## Description

sqlite_master 시스템 테이블을 쿼리하여 SQLite 데이터베이스에서 사용자 정의 테이블 이름을 모두 검색합니다. 직접 연결 문자열 또는 데이터베이스 파일 경로를 통해 연결을 지원합니다. 테이블 이름을 문자열 컬렉션으로 반환합니다.

## Syntax

```powershell
Get-SQLiteTables -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTables -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스의 연결 문자열입니다. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite 데이터베이스 파일의 경로입니다. *(Parameter set: )* |

## Examples

### Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite" Returns all table names from the specified database file

```powershell
Get-SQLiteTables -DatabaseFilePath "C:\Databases\Inventory.sqlite"
Returns all table names from the specified database file
```

### Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;" Returns all table names using a custom connection string ##############################################################################

```powershell
Get-SQLiteTables -ConnectionString "Data Source=C:\DB\Users.sqlite;Version=3;"
Returns all table names using a custom connection string
##############################################################################
```

## Related Links

- [Get-SQLiteTables on GitHub](https://github.com/genXdev/genXdev)
