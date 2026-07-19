# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Exécute une ou plusieurs requêtes SQL contre une base de données SQL Server avec prise en charge des transactions.

## Description

Exécute des requêtes SQL sur une base de données SQL Server avec prise en charge des paramètres et un niveau d'isolation des transactions configurable. Peut utiliser une transaction externe pour les opérations par lots ou créer sa propre transaction interne. Lors de l'utilisation d'une transaction externe, l'appelant est responsable de la validation/annulation. Priorité de connexion : Transaction > ConnectionString > DatabaseName (nécessite Server).

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | La ou les requêtes à exécuter. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | Le nom de la base de données SQL Server. |
| `-Server` | String | — | — | 2 | `'.'` | Le nom de l'instance SQL Server. |
| `-Transaction` | Object | — | — | 3 | — | Une transaction SQL Server existante à utiliser pour les requêtes. |
| `-ConnectionString` | String | — | — | 4 | — | La chaîne de connexion à la base de données SQL. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Les paramètres de requête sous forme de tables de hachage. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Le niveau d'isolation à utiliser. La valeur par défaut est ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir l'indicateur persistant pour le package SQL Server. |

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
