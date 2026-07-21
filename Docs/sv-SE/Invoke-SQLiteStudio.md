# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Utför SQLite-databasfrågor med stöd för parametrar och transaktioner.

## Description

Tillhandahåller ett PowerShell-gränssnitt för att köra SQLite-frågor med stöd för:
- Anslutning via anslutningssträng eller sökväg till databasfil
- Parametriserade frågor för att förhindra SQL-injektion
- Kontroll av transaktionsisoleringsnivå
- Körning av flera frågor i en enda transaktion
- Pipeline-indata för frågor och parametrar

## Syntax

```powershell
Invoke-SQLiteStudio -ConnectionString <String> [<CommonParameters>]

Invoke-SQLiteStudio -DatabaseFilePath <String> [<CommonParameters>]

Invoke-SQLiteStudio -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Anslutningssträngen till SQLite-databasen. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Sökvägen till SQLite-databasfilen. *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | Frågan att utföra. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Valfria parametrar för frågan. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Isoleringsnivån som ska användas. Standard är ReadCommitted. |

## Examples

### Invoke-SQLiteStudio `     -DatabaseFilePath "C:\data\users.sqlite" `     -Queries "SELECT * FROM Users WHERE active = @status" `     -SqlParameters @{"status" = 1}

```powershell
Invoke-SQLiteStudio `
    -DatabaseFilePath "C:\data\users.sqlite" `
    -Queries "SELECT * FROM Users WHERE active = @status" `
    -SqlParameters @{"status" = 1}
```

### "SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"

```powershell
"SELECT * FROM Users" | isql -DatabaseFilePath "C:\data\users.sqlite"
```

## Parameter Details

### `-ConnectionString <String>`

> Anslutningssträngen till SQLite-databasen.

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

> Sökvägen till SQLite-databasfilen.

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
### `-Queries <String[]>`

> Frågan att utföra.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `q`, `Name`, `Text`, `Query` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SqlParameters <Collections.Hashtable[]>`

> Valfria parametrar för frågan.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `parameters` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IsolationLevel <String>`

> Isoleringsnivån som ska användas. Standard är ReadCommitted.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"ReadCommitted"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteSchema.md)
- [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTableColumnData.md)
- [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTableData.md)
- [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTables.md)
- [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTableSchema.md)
- [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteTransaction.md)
- [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViewColumnData.md)
- [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViewData.md)
- [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViews.md)
- [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-SQLiteViewSchema.md)
- [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-SQLiteQuery.md)
- [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-SQLiteDatabase.md)
