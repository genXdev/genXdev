# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-SQLServerDatabase -DatabaseName <String> [[-Server] <String>] [-DataFilePath <String>] [-DetachAfterCreation] [-LogFilePath <String>] [<CommonParameters>]

New-SQLServerDatabase -ConnectionString <String> [<CommonParameters>]

New-SQLServerDatabase [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseName` | String | ✅ | — | 0 | — | El nombre de la base de datos SQL Server a crear *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | El nombre de la instancia de SQL Server *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | Cadena de conexión para conectarse a SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forzar un aviso de consentimiento incluso si se ha establecido una preferencia para la instalación del paquete de SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente a la instalación de software de terceros y establecer el indicador persistente para el paquete de SQL Server. |
| `-DataFilePath` | String | — | — | Named | — | Ruta opcional de archivo de datos (.mdf) para la creación de bases de datos basadas en archivos. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Ruta opcional del archivo de registro (.ldf) para la creación de la base de datos basada en archivos. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Desconectar la base de datos después de su creación (para bases de datos basadas en archivos). *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
