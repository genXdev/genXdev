# Get-SQLServerTransaction

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** `getsqltx, `newsqltx

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-SQLServerTransaction on GitHub](https://github.com/genXdev/genXdev)
