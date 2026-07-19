# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata

## Synopsis

> Удаляет файлы метаданных изображений из каталогов с изображениями.

## Description

Функция Remove-ImageMetaData удаляет сопутствующие JSON-файлы метаданных, связанные с изображениями. Она может выборочно удалять только ключевые слова (description.json), данные о людях (people.json), данные об объектах (objects.json) или данные о сценах (scenes.json), либо удалять все файлы метаданных, если не указан конкретный переключатель. Файлы метаданных для конкретного языка можно удалить, указав параметр Language, а все языковые варианты можно удалить с помощью переключателя AllLanguages.

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

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

Удаляет все файлы метаданных для изображений в нескольких каталогах и всех подкаталогах.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

Удаляет только файлы description.json из системных каталогов по умолчанию и подкаталогов.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

Удаляет только файлы people.json из каталога MyPhotos.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

Удаляет рекурсивно файлы описаний на английском и испанском языках из каталогов по умолчанию.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

Использует псевдоним для удаления файлов ключевых слов для всех поддерживаемых языков.

## Related Links

- [Remove-ImageMetaData on GitHub](https://github.com/genXdev/genXdev)
