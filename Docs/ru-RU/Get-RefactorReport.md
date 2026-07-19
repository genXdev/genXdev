# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> Генерирует подробный отчет о рефакторинговых операциях и их статусе.

## Description

Анализирует и сообщает о прогрессе операций рефакторинга, проверяя их текущее состояние, статус завершения и затронутые функции. Предоставляет вывод в структурированном формате хеш-таблицы или удобочитаемых выровненных текстовых столбцов. Отчет включает имя рефакторинга, ключ подсказки, приоритет, статус, количество функций и процент завершения.

## Syntax

```powershell
Get-RefactorReport [[-Name] <string[]>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [-AsText] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | Название рефакторинга, принимает подстановочные знаки 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Указывает путь к файлу базы данных настроек. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Если установлено, использовать только кеш сессии для данных рефакторинга. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Если установлено, очистить кеш сеанса перед запуском. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Если установлено, пропустить загрузку кэша сессии. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Output report in text format instead of Hashtable |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Генерирует текстовый отчет для рефакторов, соответствующих "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Генерирует отчет хэш-таблицы для всех рефакторов с использованием псевдонима.

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
