# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Mengambil data dari kolom tertentu dalam tabel database SQL.

## Description

Fungsi ini menyediakan cara yang mudah untuk mengekstrak data dari satu kolom dalam tabel database SQL. Ini mendukung dua metode koneksi: jalur file database langsung atau string koneksi. Fungsi ini mencakup opsi untuk membatasi jumlah record yang dikembalikan dan menggunakan konstruksi kueri SQL yang tepat untuk kinerja optimal.

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | String koneksi ke database SQL Server *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Nama database SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | Nama instans SQL Server *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | Nama tabel yang akan dikueri |
| `-ColumnName` | String | ✅ | — | 3 | — | Nama kolom yang akan diambil |
| `-Count` | Int32 | — | — | 4 | `100` | Jumlah catatan yang akan dikembalikan. Default 100. Gunakan -1 untuk semua |

## Examples

### Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `     -TableName "Employees" `     -ColumnName "Email" `     -Count 10

```powershell
Get-SQLServerTableColumnData -DatabaseFilePath "C:\MyDb.sqlite" `
    -TableName "Employees" `
    -ColumnName "Email" `
    -Count 10
```

### Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"

```powershell
Get-SQLServerTableColumnData "C:\MyDb.sqlite" "Employees" "Email"
```

## Parameter Details

### `-ConnectionString <String>`

> String koneksi ke database SQL Server

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
### `-DatabaseName <String>`

> Nama database SQL Server

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-Server <String>`

> Nama instans SQL Server

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'localhost'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | DatabaseName |

<hr/>
### `-TableName <String>`

> Nama tabel yang akan dikueri

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ColumnName <String>`

> Nama kolom yang akan diambil

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Count <Int32>`

> Jumlah catatan yang akan dikembalikan. Default 100. Gunakan -1 untuk semua

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `100` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerSchema.md)
- [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTableData.md)
- [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTables.md)
- [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTableSchema.md)
- [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTransaction.md)
- [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViewColumnData.md)
- [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViewData.md)
- [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViews.md)
- [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViewSchema.md)
- [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SQLServerQuery.md)
- [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SSMS.md)
- [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-SQLServerDatabase.md)
