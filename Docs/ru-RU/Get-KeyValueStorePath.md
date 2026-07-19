# Get-KeyValueStorePath

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Возвращает путь к файлу для хранилища ключ-значение.

## Description

Формирует путь к файлу для хранилища ключ-значение на основе ключа синхронизации, имени хранилища и базовой директории.

## Syntax

```powershell
Get-KeyValueStorePath [-SynchronizationKey] <string> [-StoreName] <string> [-BasePath <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SynchronizationKey` | String | ✅ | — | 0 | — | Ключ синхронизации, используемый для идентификации магазина |
| `-StoreName` | String | ✅ | — | 1 | — | The name of the key-value store |
| `-BasePath` | String | — | — | Named | — | Базовый путь к каталогу для хранения файлов |

## Examples

### Example 1

```powershell
Get-KeyValueStorePath -SynchronizationKey "Local" -StoreName "MyStore"
```

Получение пути для локального хранилища ключ-значение.

## Related Links

- [Get-KeyValueStorePath on GitHub](https://github.com/genXdev/genXdev)
