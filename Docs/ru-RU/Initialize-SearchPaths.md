# Initialize-SearchPaths

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Инициализирует и настраивает пути поиска системы для управления пакетами.

## Description

* Создает полный список путей поиска, объединяя системные расположения по умолчанию, пути Chocolatey, пути инструментов разработки и пути пользовательских пакетов.
* Обновляет системную переменную PATH этими объединенными путями.

## Syntax

```powershell
Initialize-SearchPaths [[-WorkspaceFolder] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-WorkspaceFolder` | String | — | — | 0 | — | Путь к папке рабочей области для использования с модулями node и путями PowerShell. |

## Examples

### Example 1

```powershell
Initialize-SearchPaths
```

Инициализирует пути поиска, используя папку рабочей области по умолчанию.

### Example 2

```powershell
Initialize-SearchPaths -WorkspaceFolder "C:\workspace"
```

Инициализирует пути поиска, используя определенную рабочую папку.

## Related Links

- [Initialize-SearchPaths on GitHub](https://github.com/genXdev/genXdev)
