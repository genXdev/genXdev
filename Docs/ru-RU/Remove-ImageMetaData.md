# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | — | Массив путей к каталогам для удаления метаданных изображений. Если не указано, используются системные каталоги по умолчанию. |
| `-Language` | String | — | — | 1 | — | Язык для удаления языковых метаданных файлов. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | Путь к базе данных для файлов данных предпочтений |
| `-Recurse` | SwitchParameter | — | — | Named | — | Рекурсивно обходить каталоги. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | Only remove description.json files (keywords/descriptions). |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | Only remove people.json files (face recognition data). |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | Only remove objects.json files (object detection data). |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | Only remove scenes.json files (scene classification data). |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | Remove metadata files for all supported languages. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
