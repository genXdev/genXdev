# Get-SQLServerTransaction

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> Erstellt und gibt ein SQL Server-Transaktionsobjekt für Batchoperationen zurück.

## Description

Erstellt ein SQL Server-Datenbankverbindungs- und Transaktionsobjekt, das für Batch-Operationen verwendet werden kann. Der Aufrufer ist für das Commit oder Rollback der Transaktion verantwortlich. Erfordert eine vorhandene SQL Server-Datenbank und -Verbindung.

## Syntax

```powershell
Get-SQLServerTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTransaction -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTransaction [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | Die Verbindungszeichenfolge zur SQL Server-Datenbank. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Der Name der SQL Server-Datenbank. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Der Name der SQL Server-Instanz. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Transaktionsisolationsstufe. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Erzwingen einer Zustimmungsaufforderung, auch wenn für die SQL Server-Paketinstallation eine Einstellung festgelegt ist. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Drittanbieter-Softwareinstallation automatisch zustimmen und persistentes Flag für SQL Server-Paket setzen. |

## Examples

### $transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" try {     Invoke-SQLServerQuery -Transaction $transaction -Queries "INSERT INTO Users..."     Invoke-SQLServerQuery -Transaction $transaction -Queries "UPDATE Users..."     $transaction.Commit() } catch {     $transaction.Rollback()     throw } finally {     $transaction.Connection.Close() }

```powershell
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase"
try {
    Invoke-SQLServerQuery -Transaction $transaction -Queries "INSERT INTO Users..."
    Invoke-SQLServerQuery -Transaction $transaction -Queries "UPDATE Users..."
    $transaction.Commit()
} catch {
    $transaction.Rollback()
    throw
} finally {
    $transaction.Connection.Close()
}
```

### $transaction = Get-SQLServerTransaction -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true"

```powershell
$transaction = Get-SQLServerTransaction -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true"
```

### $transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" -ConsentToThirdPartySoftwareInstallation

```powershell
$transaction = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDatabase" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Get-SQLServerTransaction on GitHub](https://github.com/genXdev/genXdev)
