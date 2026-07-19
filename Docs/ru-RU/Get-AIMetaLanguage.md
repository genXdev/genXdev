# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Возвращает настроенный язык по умолчанию для операций с метаданными изображений.

## Description

* Этот командлет возвращает язык, используемый по умолчанию модулем GenXdev.AI для операций с метаданными изображений.
* Он сначала проверяет глобальные переменные (если не указан SkipSession), затем обращается к постоянным настройкам и, наконец, использует системные значения по умолчанию.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | Язык по умолчанию для операций с метаданными изображений |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Очистите настройки сессии (глобальные переменные) перед получением |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Получить текущий настроенный язык из глобальных переменных или настроек.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Получить настроенный язык из постоянных настроек, игнорируя сессию.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Очистить настройки сессии и получить язык из постоянных настроек.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
