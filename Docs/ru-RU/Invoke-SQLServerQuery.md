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
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Запрос или запросы для выполнения. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | Имя базы данных SQL Server. |
| `-Server` | String | — | — | 2 | `'.'` | Имя экземпляра SQL Server. |
| `-Transaction` | Object | — | — | 3 | — | An existing SQL Server transaction to use for the queries. |
| `-ConnectionString` | String | — | — | 4 | — | Строка подключения к базе данных SQL. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Параметры запроса в виде хэш-таблиц. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | Используемый уровень изоляции. По умолчанию — ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Принудительное отображение запроса согласия, даже если параметры установлены для установки пакета SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически соглашаться на установку стороннего ПО и устанавливать постоянный флаг для пакета SQL Server. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
