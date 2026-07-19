# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Führt eine oder mehrere SQL-Abfragen gegen eine SQL Server-Datenbank mit Transaktionsunterstützung aus.

## Description

Führt SQL-Abfragen gegen eine SQL Server-Datenbank mit Parameterunterstützung und konfigurierbarer Transaktionsisolation aus. Kann eine externe Transaktion für Batch-Operationen verwenden oder eine eigene interne Transaktion erstellen. Bei Verwendung einer externen Transaktion ist der Aufrufer für das Commit/Rollback verantwortlich. Verbindungspriorität: Transaktion > ConnectionString > DatabaseName (erfordert Server).

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Die auszuführende(n) Abfrage(n). |
| `-DatabaseName` | String | — | — | 1 | `'master'` | Der Name der SQL Server-Datenbank. |
| `-Server` | String | — | — | 2 | `'.'` | Der Name der SQL Server-Instanz. |
| `-Transaction` | Object | — | — | 3 | — | Eine vorhandene SQL Server-Transaktion, die für die Abfragen verwendet werden soll. |
| `-ConnectionString` | String | — | — | 4 | — | Die Verbindungszeichenfolge zur SQL-Datenbank. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Abfrageparameter als Hashtabellen. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Der zu verwendende Isolationsgrad. Standard ist ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwingen einer Zustimmungsaufforderung, auch wenn für die SQL Server-Paketinstallation eine Einstellung festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Drittanbieter-Softwareinstallation automatisch zustimmen und persistentes Flag für SQL Server-Paket setzen. |

## Examples

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}

```powershell
"SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB" try {     Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB"
try {
    Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
