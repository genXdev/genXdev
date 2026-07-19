# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Создает запланированные задачи, которые запускают сценарии PowerShell через заданные интервалы.

## Description

Создает и настраивает запланированные задачи, выполняющие сценарии PowerShell с различными интервалами, включая:
- Запуск системы
- Вход пользователя в систему
- Каждый час в определенные дни (например, понедельник в 13:00)
- Ежедневно в определенное время (например, каждый день в 15:00)
Каждая задача выполняется с повышенными привилегиями в контексте текущего пользователя.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | Путь к каталогу, где будут создаваться скрипты задач |
| `-Prefix` | String | — | — | 1 | `'PS'` | Префикс для имен запланированных задач |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)
