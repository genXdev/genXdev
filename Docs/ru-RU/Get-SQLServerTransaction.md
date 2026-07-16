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
| `-ConnectionString` | String | ✅ | — | 0 | — | Строка подключения к базе данных SQL Server. *(Parameter set: )* |
| `-DatabaseName` | String | ✅ | — | 0 | — | Имя базы данных SQL Server. *(Parameter set: )* |
| `-Server` | String | — | — | 1 | `'.'` | Имя экземпляра SQL Server. *(Parameter set: )* |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Уровень изоляции транзакций. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительное отображение запроса согласия, даже если параметры установлены для установки пакета SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего ПО и устанавливать постоянный флаг для пакета SQL Server. |

## Related Links

- [Get-SQLServerTransaction on GitHub](https://github.com/genXdev/genXdev)
