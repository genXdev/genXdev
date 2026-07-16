# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Las consultas a ejecutar. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | El nombre de la base de datos de SQL Server. |
| `-Server` | String | — | — | 2 | `'.'` | El nombre de la instancia de SQL Server. |
| `-Transaction` | Object | — | — | 3 | — | Una transacción de SQL Server existente para usar en las consultas. |
| `-ConnectionString` | String | — | — | 4 | — | La cadena de conexión a la base de datos SQL. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Parámetros de consulta como tablas hash. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | El nivel de aislamiento a utilizar. El valor predeterminado es ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar un aviso de consentimiento incluso si se ha establecido una preferencia para la instalación del paquete de SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer el indicador persistente para el paquete de SQL Server. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
