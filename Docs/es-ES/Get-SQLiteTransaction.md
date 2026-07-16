# Get-SQLiteTransaction

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Get-SQLiteTransaction -ConnectionString <String> [<CommonParameters>]

Get-SQLiteTransaction -DatabaseFilePath <String> [<CommonParameters>]

Get-SQLiteTransaction [-ConsentToThirdPartySoftwareInstallation] [-CreateDatabaseIfNotExists <Boolean>] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | ✅ | — | 0 | — | La cadena de conexión a la base de datos SQLite. *(Parameter set: )* |
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | La ruta al archivo de base de datos SQLite. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Nivel de aislamiento de transacciones. |
| `-CreateDatabaseIfNotExists` | Boolean | — | — | Named | `$true` | Si crear el archivo de base de datos en caso de que no exista. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Fuerza una solicitud de consentimiento incluso si se ha establecido una preferencia para la instalación del paquete SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automáticamente la instalación de software de terceros y establecer el indicador persistente para el paquete SQLite. |

## Related Links

- [Get-SQLiteTransaction on GitHub](https://github.com/genXdev/genXdev)
