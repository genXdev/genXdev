# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
