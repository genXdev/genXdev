# Get-SQLServerTableData

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Haalt gegevens op uit een SQL-databasetabel met optionele recordbeperking.

## Description

Deze functie vraagt gegevens op uit een SQL-databasetabel met behulp van een verbindingsreeks of databasebestandspad. Het biedt flexibiliteit bij het verbinden met de database en het beheren van de hoeveelheid opgehaalde gegevens via de Count-parameter.

## Syntax

```powershell
Get-SQLServerTableData -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTableData -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTableData -TableName <String> [[-Count] <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQL Server-database. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | De naam van de SQL Server-database. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'localhost'` | De naam van de SQL Server-instantie. *(Parameter set: )* |
| `-TableName` | String | ✅ | — | 2 | — | De naam van de tabel waaruit gegevens worden opgevraagd. |
| `-Count` | Int32 | — | — | 3 | `100` | Het maximale aantal records dat moet worden teruggegeven. -1 voor alle. |

## Examples

### Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50

```powershell
Get-SQLServerTableData -DatabaseFilePath "C:\data\users.db" -TableName "Employees" -Count 50
```

### Get-SQLServerTableData "C:\data\users.db" "Employees"

```powershell
Get-SQLServerTableData "C:\data\users.db" "Employees"
```

## Related Links

- [Get-SQLServerTableData on GitHub](https://github.com/genXdev/genXdev)
