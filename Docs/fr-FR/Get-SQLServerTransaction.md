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
| `-ConnectionString` | String | ✅ | — | 0 | — | La chaîne de connexion à la base de données SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Le nom de la base de données SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Le nom de l'instance SQL Server. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Niveau d'isolation des transactions. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forcer une invite de consentement même si la préférence est définie pour l'installation du package SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automatiquement à l'installation de logiciels tiers et définir l'indicateur persistant pour le package SQL Server. |

## Related Links

- [Get-SQLServerTransaction on GitHub](https://github.com/genXdev/genXdev)
