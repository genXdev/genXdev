# Get-RefactorReport

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Cmdlet | **Aliases:** `refactorreport

## Synopsis

> *(No synopsis provided)*

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

## Outputs


## Related Links

- [Get-RefactorReport on GitHub](https://github.com/genXdev/genXdev)
