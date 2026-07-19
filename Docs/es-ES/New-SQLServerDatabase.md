# New-SQLServerDatabase

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Crea una nueva base de datos SQL Server.

## Description

Crea una nueva base de datos SQL Server con el nombre especificado en el servidor especificado. Requiere permisos adecuados para crear bases de datos en la instancia de SQL Server de destino. Si la base de datos ya existe, la operación se omitirá. Admite la creación de bases de datos basadas en archivos con rutas explícitas .mdf/.ldf.

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

## Examples

### New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"

```powershell
New-SQLServerDatabase -DatabaseName "MyNewDatabase" -Server "localhost"
```

### New-SQLServerDatabase "MyNewDatabase"

```powershell
New-SQLServerDatabase "MyNewDatabase"
```

### New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -ConnectionString "Server=.;..."
```

### New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation

```powershell
New-SQLServerDatabase -DatabaseName "ImageIndex" -DataFilePath "C:\Data\ImageIndex.mdf" -DetachAfterCreation
```

### New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLServerDatabase -DatabaseName "MyDB" -Server "." -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
