# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> Ejecuta una o más consultas SQL contra una base de datos SQLite con soporte de transacciones.

## Description

Ejecuta consultas SQL contra una base de datos SQLite con soporte de parámetros y aislamiento de transacción configurable. Puede usar una transacción externa para operaciones por lotes o crear su propia transacción interna. Al usar una transacción externa, el llamante es responsable de confirmar/revertir. Prioridad de conexión: Transacción > ConnectionString > DatabaseFilePath.

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | La cadena de conexión a la base de datos SQLite. |
| `-DatabaseFilePath` | String | — | — | 1 | — | La ruta al archivo de base de datos SQLite. |
| `-Transaction` | Object | — | — | 2 | — | Una transacción SQLite existente para usar en las consultas. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | Las consultas a ejecutar. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | Parámetros de consulta como tablas hash. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | El nivel de aislamiento a utilizar. El valor predeterminado es ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Fuerza una solicitud de consentimiento incluso si se ha establecido una preferencia para la instalación del paquete SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente la instalación de software de terceros y establecer el indicador persistente para el paquete SQLite. |

## Examples

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}

```powershell
"SELECT * FROM Users" | isql "C:\data.db" @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db" try {     Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLiteTransaction -DatabaseFilePath "C:\data.db"
try {
    Invoke-SQLiteQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLiteQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLiteQuery -DatabaseFilePath "C:\data.db" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
