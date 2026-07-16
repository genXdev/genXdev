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
| `-DatabaseName` | String | ✅ | — | 0 | — | O nome do banco de dados SQL Server a ser criado *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | O nome da instância do SQL Server *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | A string de conexão para conectar ao SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar um prompt de consentimento mesmo que a preferência esteja definida para instalação do pacote do SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para o pacote do SQL Server. |
| `-DataFilePath` | String | — | — | Named | — | Caminho opcional para arquivo de dados (.mdf) para criação de banco de dados baseado em arquivo. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Caminho opcional do arquivo de log (.ldf) para criação de banco de dados baseado em arquivo. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Desanexar banco de dados após a criação (para bancos de dados baseados em arquivos). *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
