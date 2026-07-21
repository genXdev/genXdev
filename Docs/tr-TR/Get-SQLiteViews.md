# Get-SQLiteViews

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Bir SQLite veritabanındaki görünümlerin listesini alır.

## Description

Belirtilen SQLite veritabanı dosyasından veya bağlantı dizesinden tüm görünüm adlarını alır.
Daha fazla veritabanı işlemi için kullanılabilecek bir görünüm adları dizisi döndürür.
Fonksiyon, esneklik sağlamak için iki parametre kümesini destekler: bir bağlantı dizesi veya veritabanı dosyasına doğrudan bir yol sağlama.

## Syntax

```powershell
Get-SQLiteViews -ConnectionString <String> [<CommonParameters>]

Get-SQLiteViews -DatabaseFilePath <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite veritabanına bağlantı dizesi. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite veritabanı dosyasının yolu. *(Parameter set: )* |

## Examples

### Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"

```powershell
Get-SQLiteViews -DatabaseFilePath "C:\Databases\MyDatabase.sqlite"
```

### s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"

```powershell
s -ConnectionString "Data Source=C:\Databases\MyDatabase.sqlite;Version=3;"
```

## Parameter Details

### `-ConnectionString <String>`

> SQLite veritabanına bağlantı dizesi.

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

> SQLite veritabanı dosyasının yolu.

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

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViewData.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-SQLiteQuery.md)
- [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-SQLiteStudio.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-SQLiteDatabase.md)
