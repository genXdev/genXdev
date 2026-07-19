# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Создает новый файл базы данных SQLite.

## Description

Создает новый файл базы данных SQLite по указанному пути, если он еще не существует. Функция гарантирует, что целевая директория существует, и создает корректную базу данных SQLite путем установления и закрытия соединения.

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | Путь к файлу базы данных SQLite |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force a consent prompt even if preference is set for SQLite package installation. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Автоматически согласиться на установку стороннего программного обеспечения и установить постоянный флаг для пакета SQLite. |

## Examples

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"
```

### nsqldb "C:\Databases\MyNewDb.sqlite"

```powershell
nsqldb "C:\Databases\MyNewDb.sqlite"
```

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)
