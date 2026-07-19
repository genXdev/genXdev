# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> Erstellt und gibt ein SQLite-Transaktionsobjekt für Batch-Operationen zurück.

## Description

Erstellt eine SQLite-Datenbankverbindung und ein Transaktionsobjekt, das für Batch-Operationen verwendet werden kann. Der Aufrufer ist für das Commit oder Rollback der Transaktion verantwortlich. Die Verbindung wird automatisch erstellt, wenn die Datenbankdatei nicht existiert.

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQLite-Datenbank. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Der Pfad zur SQLite-Datenbankdatei. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaktionsisolationsstufe. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Ob die Datenbankdatei erstellt werden soll, falls sie nicht existiert. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwinge eine Zustimmungsaufforderung, auch wenn eine Präferenz für die SQLite-Paketinstallation festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Automatisch der Installation von Drittanbieter-Software zustimmen und persistentes Flag für SQLite-Paket setzen. |

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
