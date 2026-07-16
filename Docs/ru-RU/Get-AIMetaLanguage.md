# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
