# Save-FoundImageFaces

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `saveimagefaces`

## Synopsis

> Сохраняет обрезанные изображения лиц из результатов индексированного поиска изображений.

## Description

Эта функция принимает результаты поиска изображений и извлекает/сохраняет отдельные области лиц в виде отдельных файлов изображений. Она может искать лица по различным критериям и сохранять их в указанную выходную папку. Функция поддерживает поиск по описанию, ключевым словам, людям, объектам, сценам, типу изображения, стилю и общему настроению. Также можно фильтровать по содержанию наготы и откровенного контента.

## Syntax

```powershell
Save-FoundImageFaces [[-Any] <String[]>] [-ClearSession] [-DatabaseFilePath <String>] [-DescriptionSearch <String[]>] [-ForceIndexRebuild] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-InputObject <Object[]>] [-Keywords <String[]>] [-Language <String>] [-NoExplicitContent] [-NoNudity] [-Objects <String[]>] [-OutputDirectory <String>] [-OverallMood <String[]>] [-PathLike <String[]>] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-SaveUnknownPersons] [-Scenes <String[]>] [-SessionOnly] [-SkipSession] [-StyleType <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Соответствует любому из всех возможных типов метаданных. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | Искомый текст описания, допускаются подстановочные знаки. |
| `-Keywords` | String[] | — | — | Named | `@()` | Ключевые слова для поиска, допускаются подстановочные знаки. |
| `-People` | String[] | — | — | Named | `@()` | Люди для поиска, разрешены подстановочные знаки. |
| `-Objects` | String[] | — | — | Named | `@()` | Объекты для поиска, разрешены подстановочные знаки. |
| `-Scenes` | String[] | — | — | Named | `@()` | Сцены для поиска, допускаются подстановочные знаки. |
| `-PictureType` | String[] | — | — | Named | `@()` | Типы изображений для фильтрации, разрешены подстановочные знаки. |
| `-StyleType` | String[] | — | — | Named | `@()` | Типы стилей для фильтрации, допускаются подстановочные знаки. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Общие фильтры настроений, разрешены подстановочные знаки. |
| `-DatabaseFilePath` | String | — | — | Named | — | Путь к файлу базы данных SQLite. |
| `-Language` | String | — | — | Named | — | Язык для описаний и ключевых слов. |
| `-PathLike` | String[] | — | — | Named | `@()` | Массив строк для поиска по пути к каталогу для фильтрации изображений по пути (шаблоны SQL LIKE, например, '%\2024\%') |
| `-InputObject` | Object[] | — | ✅ (ByValue) | Named | — | Принимает результаты поиска от предыдущего вызова -PassThru для повторного создания представления. |
| `-OutputDirectory` | String | — | — | Named | `'.\'` | Каталог для сохранения обрезанных изображений лиц. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Фильтровать изображения, содержащие наготу. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Фильтровать изображения, которые НЕ содержат наготы. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Фильтровать изображения, содержащие откровенный контент. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Отфильтровать изображения, не содержащие контент для взрослых. |
| `-ForceIndexRebuild` | SwitchParameter | — | — | Named | — | Принудительная перестройка базы данных индекса изображений. |
| `-GeoLocation` | Double[] | — | — | Named | — | Географические координаты [широта, долгота] для поиска поблизости. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Максимальное расстояние в метрах от географического местоположения для поиска изображений. |
| `-SaveUnknownPersons` | SwitchParameter | — | — | Named | — | Также сохранять неизвестных людей, обнаруженных как объекты. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Examples

### Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"

```powershell
Save-FoundImageFaces -People "John*" -OutputDirectory "C:\Faces"
```

### saveimagefaces -Any "vacation" -SaveUnknownPersons

```powershell
saveimagefaces -Any "vacation" -SaveUnknownPersons
```

## Parameter Details

### `-Any <String[]>`

> Соответствует любому из всех возможных типов метаданных.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DescriptionSearch <String[]>`

> Искомый текст описания, допускаются подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Keywords <String[]>`

> Ключевые слова для поиска, допускаются подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-People <String[]>`

> Люди для поиска, разрешены подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Objects <String[]>`

> Объекты для поиска, разрешены подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Scenes <String[]>`

> Сцены для поиска, допускаются подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PictureType <String[]>`

> Типы изображений для фильтрации, разрешены подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-StyleType <String[]>`

> Типы стилей для фильтрации, допускаются подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OverallMood <String[]>`

> Общие фильтры настроений, разрешены подстановочные знаки.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DatabaseFilePath <String>`

> Путь к файлу базы данных SQLite.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Язык для описаний и ключевых слов.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PathLike <String[]>`

> Массив строк для поиска по пути к каталогу для фильтрации изображений по пути (шаблоны SQL LIKE, например, '%\2024\%')

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-InputObject <Object[]>`

> Принимает результаты поиска от предыдущего вызова -PassThru для повторного создания представления.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OutputDirectory <String>`

> Каталог для сохранения обрезанных изображений лиц.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'.\'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Путь к базе данных для файлов данных предпочтений

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasNudity`

> Фильтровать изображения, содержащие наготу.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoNudity`

> Фильтровать изображения, которые НЕ содержат наготы.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HasExplicitContent`

> Фильтровать изображения, содержащие откровенный контент.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoExplicitContent`

> Отфильтровать изображения, не содержащие контент для взрослых.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceIndexRebuild`

> Принудительная перестройка базы данных индекса изображений.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoLocation <Double[]>`

> Географические координаты [широта, долгота] для поиска поблизости.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-GeoDistanceInMeters <Double>`

> Максимальное расстояние в метрах от географического местоположения для поиска изображений.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SaveUnknownPersons`

> Также сохранять неизвестных людей, обнаруженных как объекты.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Используйте альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т. д.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Очистить альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т. д.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Не используйте альтернативные настройки, сохраненные в сеансе, для предпочтений ИИ, таких как язык, коллекции изображений и т.д.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Object[]`
- `List`1[[System.Object, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]`
- `String`

## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Remove-ImageMetaData.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/Update-AllImageMetaData.md)
