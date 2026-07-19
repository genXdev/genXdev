# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> Maakt en retourneert een SQLite-transactieobject voor batchverwerking.

## Description

Maakt een SQLite-databaseverbinding en transactieobject aan dat kan worden gebruikt voor batchbewerkingen. De aanroeper is verantwoordelijk voor het committen of terugdraaien van de transactie. De verbinding wordt automatisch aangemaakt als het databasebestand nog niet bestaat.

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | De verbindingsreeks naar de SQLite-database. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Het pad naar het SQLite-databasebestand. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaction isolation level. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Of het databasebestand moet worden aangemaakt als het nog niet bestaat. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forceer een toestemmingsprompt, zelfs als voorkeur is ingesteld voor SQLite-pakketinstallatie. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch instemmen met installatie van software van derden en persistente vlag instellen voor SQLite-pakket. |

## Examples

### $transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" try {     Invoke-SQLiteQuery -Transaction $transaction -Queries "INSERT INTO Users..."     Invoke-SQLiteQuery -Transaction $transaction -Queries "UPDATE Users..."     $transaction.Commit() } catch {     $transaction.Rollback()     throw } finally {     $transaction.Connection.Close() }

```powershell
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLiteQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}
```

### $transaction = Get-SQLiteTransaction -ConnectionString "Data Source=C:\data.db"

```powershell
$transaction = Get-SQLiteTransaction -ConnectionString "Data Source=C:\data.db"
```

### $transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" -ConsentToThirdPartySoftwareInstallation

```powershell
$transaction = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)
