# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo de banco de dados SQLite |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force um aviso de consentimento mesmo se a preferência estiver definida para instalação do pacote SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para o pacote SQLite. |

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)
