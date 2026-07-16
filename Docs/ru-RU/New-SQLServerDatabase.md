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
| `-DatabaseName` | String | ✅ | — | 0 | — | Имя создаваемой базы данных SQL Server *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Имя экземпляра SQL Server *(Parameter set: )* |
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения для подключения к SQL Server *(Parameter set: )* |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительное отображение запроса согласия, даже если параметры установлены для установки пакета SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего ПО и устанавливать постоянный флаг для пакета SQL Server. |
| `-DataFilePath` | String | — | — | Named | — | Необязательный путь к файлу данных (.mdf) для создания базы данных на основе файлов. *(Parameter set: )* |
| `-LogFilePath` | String | — | — | Named | — | Необязательный путь к файлу журнала (.ldf) для создания базы данных на основе файлов. *(Parameter set: )* |
| `-DetachAfterCreation` | SwitchParameter | — | — | Named | — | Отключение базы данных после создания (для файловых баз данных). *(Parameter set: )* |

## Related Links

- [New-SQLServerDatabase on GitHub](https://github.com/genXdev/genXdev)
