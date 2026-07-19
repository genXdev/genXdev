# Invoke-SQLiteStudio

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> 执行支持参数和事务的SQLite数据库查询。

## Description

<details>
<summary><b>Expand description</b></summary>

```powershell
function Invoke-SQLiteQuery {
    param(
        [Parameter(Mandatory = $true, ParameterSetName = 'ConnectionString')]
        [string]$ConnectionString,
        [Parameter(Mandatory = $true, ParameterSetName = 'FilePath')]
        [string]$DatabasePath,
        [Parameter(ValueFromPipeline = $true)]
        [string]$Query,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Data.CommandType]$CommandType = [System.Data.CommandType]::Text,
        [Parameter(ValueFromPipelineByPropertyName = $true)]
        [System.Collections.IDictionary]$Parameters = @{},
        [System.Transactions.IsolationLevel]$IsolationLevel = [System.Transactions.IsolationLevel]::Serializable
    )

begin {
        if ($PSCmdlet.ParameterSetName -eq 'FilePath') {
            $ConnectionString = "Data Source=$DatabasePath;Version=3;"
        }
        $connection = New-Object System.Data.SQLite.SQLiteConnection($ConnectionString)
        $connection.Open()
        $transaction = $connection.BeginTransaction([System.Data.IsolationLevel]$IsolationLevel)
    }

process {
        if ($Query) {
            $command = $connection.CreateCommand()
            $command.CommandText = $Query
            $command.CommandType = $CommandType
            foreach ($param in $Parameters.GetEnumerator()) {
                $command.Parameters.AddWithValue($param.Key, $param.Value) | Out-Null
            }
            $command.Transaction = $transaction
            $reader = $command.ExecuteReader()
            while ($reader.Read()) {
                $row = @{}
                for ($i = 0; $i -lt $reader.FieldCount; $i++) {
                    $row[$reader.GetName($i)] = $reader.GetValue($i)
                }
                [PSCustomObject]$row
            }
            $reader.Close()
        }
    }

end {
        $transaction.Commit()
        $connection.Close()
    }
}
```

This PowerShell module provides functions to execute SQLite queries. Usage example:

```powershell
# Load the module
Import-Module .\SQLiteModule.psm1

# Execute queries with pipeline input
@("SELECT * FROM Users", "SELECT COUNT(*) FROM Orders") | Invoke-SQLiteQuery -DatabasePath "C:\data.db"

# Parameterized query
Invoke-SQLiteQuery -DatabasePath "C:\data.db" -Query "SELECT * FROM Users WHERE Id = @id" -Parameters @{id = 1}
```

</details>
## Syntax

```powershell
Invoke-SQLiteStudio -ConnectionString <String> [<CommonParameters>]

Invoke-SQLiteStudio -DatabaseFilePath <String> [<CommonParameters>]

Invoke-SQLiteStudio -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | SQLite数据库的连接字符串。 *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | SQLite数据库文件的路径。 *(Parameter set: )* |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 1 | — | 要执行的查询。 |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | 查询的可选参数。 |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | 要使用的隔离级别，默认为 ReadCommitted。 |

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

## Related Links

- [Invoke-SQLiteStudio on GitHub](https://github.com/genXdev/genXdev)
