# Get-SQLiteTableSchema

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Mengambil informasi skema untuk tabel SQLite yang ditentukan.

## Description

Fungsi ini melakukan kueri ke database SQLite untuk mendapatkan informasi skema yang mendetail untuk tabel yang ditentukan. Fungsi ini menggunakan perintah PRAGMA table_info SQLite untuk mengembalikan definisi kolom termasuk nama, tipe, status nullable, dan nilai default.

## Syntax

```powershell
Get-SQLiteTableSchema -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTableSchema -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTableSchema -TableName <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | String koneksi ke database SQLite *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Jalur ke file database SQLite *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 1 | — | Nama tabel |

## Examples

### Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `     -TableName "Users"

```powershell
Get-SQLiteTableSchema -DatabaseFilePath "C:\Databases\mydb.sqlite" `
    -TableName "Users"
```

### Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `     -TableName "Products"

```powershell
Get-SQLiteTableSchema -ConnectionString "Data Source=C:\Databases\mydb.sqlite" `
    -TableName "Products"
```

## Parameter Details

### `-ConnectionString <String>`

> String koneksi ke database SQLite

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

> Jalur ke file database SQLite

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `dbpath`, `indexpath` |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseFilePath |

<hr/>
### `-TableName <String>`

> Nama tabel

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTables.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-SQLiteDatabase.md)
