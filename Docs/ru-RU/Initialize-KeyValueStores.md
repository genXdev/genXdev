# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Инициализирует структуру каталогов KeyValueStore для локального хранения и хранения в OneDrive.

## Description

Создает структуру каталогов для хранилищ ключ-значение на основе JSON в двух местах: на локальной машине для немедленного доступа и в папке OneDrive для облачной синхронизации. Командлет гарантирует, что оба каталога существуют и правильно настроены.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Путь к базе данных для файлов данных хранилища ключ-значение |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Создает стандартные локальные каталоги и каталоги OneDrive для хранилищ ключей и значений.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Создает каталоги хранилища ключ-значение по указанному пользовательскому пути.

## Related Links

- [Initialize-KeyValueStores on GitHub](https://github.com/genXdev/genXdev)
