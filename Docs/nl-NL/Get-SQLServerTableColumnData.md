# Get-SQLServerTableColumnData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt gegevens op uit een specifieke kolom in een SQL-databasetabel.

## Description

Deze functie biedt een handige manier om gegevens uit een enkele kolom in een SQL-databasetabel te extraheren. Het ondersteunt twee verbindingsmethoden: direct databasebestandspad of verbindingsreeks. De functie bevat opties om het aantal geretourneerde records te beperken en gebruikt een correcte SQL-queryconstructie voor optimale prestaties.

## Syntax

```powershell
Get-SQLServerTableColumnData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableColumnData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableColumnData -TableName <String> -ColumnName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQL Server-database *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | De SQL Server-instantienaam *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | The name of the table to query |
| `-ColumnName` | String | ✅ | — | 3 | — | De naam van de kolom om op te halen |
| `-Count` | Int32 | — | — | 4 | `100` | Aantal terug te geven records. Standaard 100. Gebruik -1 voor alle |

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

## Related Links

- [Get-SQLServerTableColumnData on GitHub](https://github.com/genXdev/genXdev)
