# Get-SQLServerTransaction

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> Crea y devuelve un objeto de transacción de SQL Server para operaciones por lotes.

## Description

Crea un objeto de conexión y transacción de base de datos SQL Server que se puede utilizar para operaciones por lotes. El llamante es responsable de confirmar o revertir la transacción. Requiere una base de datos y conexión SQL Server existentes.

## Syntax

```powershell
Get-SQLServerTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLServerTransaction -DatabaseName <String> [[-Server] <String>] [<CommonParameters>]

Get-SQLServerTransaction [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos de SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | El nombre de la base de datos de SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | El nombre de la instancia de SQL Server. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Nivel de aislamiento de transacciones. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar un aviso de consentimiento incluso si se ha establecido una preferencia para la instalación del paquete de SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer el indicador persistente para el paquete de SQL Server. |

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
