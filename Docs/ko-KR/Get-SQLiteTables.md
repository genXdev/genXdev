# Get-SQLiteTables

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> SQLite 데이터베이스에서 테이블 이름 목록을 검색합니다.

## Description

SQLite 데이터베이스에서 sqlite_master 시스템 테이블을 쿼리하여 모든 사용자 정의 테이블 이름을 검색합니다. 직접 연결 문자열이나 데이터베이스 파일 경로를 통해 연결할 수 있습니다. 테이블 이름을 문자열 컬렉션으로 반환합니다.

## Syntax

```powershell
Get-SQLiteTables -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTables -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite 데이터베이스에 대한 연결 문자열입니다. *(Parameter set: )* |
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

## Parameter Details

### `-ConnectionString <String>`

> SQLite 데이터베이스에 대한 연결 문자열입니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ConnectionString |

<hr/>
### `-DatabaseFilePath <String>`

> SQLite 데이터베이스 파일의 경로입니다.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseFilePath |

<hr/>
## Related Links

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTableData.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/New-SQLiteDatabase.md)
