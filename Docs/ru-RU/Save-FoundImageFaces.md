# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Будет соответствовать любому из всех возможных типов метаданных. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Искомый текст описания, разрешены подстановочные знаки. |
| `-Keywords` | String[] | — | — | Named | `@()` | Ключевые слова для поиска, подстановочные знаки разрешены. |
| `-People` | String[] | — | — | Named | `@()` | Люди для поиска, разрешены подстановочные знаки. |
| `-Objects` | String[] | — | — | Named | `@()` | Объекты для поиска, допускаются подстановочные символы. |
| `-Scenes` | String[] | — | — | Named | `@()` | Сцены для поиска, разрешены подстановочные знаки. |
| `-PictureType` | String[] | — | — | Named | `@()` | Типы изображений для фильтрации, допускаются подстановочные знаки. |
| `-StyleType` | String[] | — | — | Named | `@()` | Стили для фильтрации, допускаются подстановочные знаки. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Общие настроения для фильтрации, разрешены подстановочные знаки. |
| `-DatabaseFilePath` | String | — | — | Named | — | Путь к файлу базы данных SQLite. |
| `-Language` | String | — | — | Named | — | Язык для описаний и ключевых слов. |
| `-PathLike` | String[] | — | — | Named | `@()` | Массив строк, похожих на пути к каталогам, для фильтрации изображений по пути (шаблоны SQL LIKE, например, '%\\2024\\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Принимает результаты поиска от предыдущего вызова -PassThru для регенерации представления. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Директория для сохранения обрезанных изображений лиц. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Принудительное перестроение базы данных индекса изображений. |
| `-GeoLocation` | Double[] | — | — | Named | — | Географические координаты [широта, долгота] для поиска рядом. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Максимальное расстояние в метрах от GeoLocation для поиска изображений. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Также сохранять обнаруженных неизвестных лиц как объекты. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Save-FoundImageFaces on GitHub](https://github.com/genXdev/genXdev)
