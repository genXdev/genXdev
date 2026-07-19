# Remove-KeyFromStore

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** `removekey

## Synopsis

> Удаляет ключ из хранилища ключ-значение.

## Description

Эта функция удаляет указанный ключ из именованного хранилища ключ-значение. Для локальных хранилищ ключ удаляется безвозвратно. Для синхронизируемых хранилищ ключ отмечается как удаленный, чтобы обеспечить синхронизацию.

## Syntax

```powershell
Remove-KeyFromStore [-StoreName] <string> [-KeyName] <string> [[-SynchronizationKey] <string>] [-DatabasePath <string>] [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-StoreName` | String | ✅ | — | 0 | — | Название магазина |
| `-KeyName` | String | ✅ | — | 1 | — | Key to be deleted |
| `-SynchronizationKey` | String | — | — | 2 | — | Ключ для идентификации области синхронизации |
| `-DatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Remove-KeyFromStore -StoreName "MyStore" -KeyName "MyKey"
```

Удалите ключ "MyKey" из хранилища "MyStore".

### Example 2

```powershell
removekey "MyStore" "MyKey"
```

Удалить ключ с помощью псевдонима.

## Related Links

- [Remove-KeyFromStore on GitHub](https://github.com/genXdev/genXdev)
