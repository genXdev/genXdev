# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Voert een of meer SQL-query's uit tegen een SQL Server-database met transactieondersteuning.

## Description

Voert SQL-query's uit tegen een SQL Server-database met parameterondersteuning en configureerbare transactie-isolatie. Kan een externe transactie gebruiken voor batchbewerkingen of een eigen interne transactie aanmaken. Bij gebruik van een externe transactie is de aanroeper verantwoordelijk voor het committen/terugdraaien. Connectieprioriteit: Transactie > ConnectionString > DatabaseName (vereist Server).

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | De query('s) die moeten worden uitgevoerd. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | De naam van de SQL Server-database. |
| `-Server` | String | — | — | 2 | `'.'` | De naam van de SQL Server-instantie. |
| `-Transaction` | Object | — | — | 3 | — | Een bestaande SQL Server-transactie die moet worden gebruikt voor de query's. |
| `-ConnectionString` | String | — | — | 4 | — | De verbindingsreeks naar de SQL-database. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Queryparametersalshashtabellen. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Het te gebruiken isolatieniveau. Standaard is ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als de voorkeur is ingesteld voor de installatie van SQL Server-pakketten. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch toestemming geven voor installatie van software van derden en persistente vlag instellen voor SQL Server-pakket. |

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
