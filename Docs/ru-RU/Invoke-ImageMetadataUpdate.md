# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> Обновляет метаданные EXIF для изображений в каталоге.

## Description

Эта функция извлекает и обновляет метаданные EXIF для изображений в указанных каталогах. Она обрабатывает каждое изображение, извлекая подробные метаданные EXIF, включая данные о камере, координаты GPS, настройки экспозиции и другую техническую информацию. Метаданные сохраняются в альтернативных потоках NTFS как :EXIF.json для последующего использования функциями индексации и поиска.

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Массив путей к каталогам для обработки обновления метаданных изображений |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Повторная попытка обновления метаданных изображения, которые ранее завершились неудачей |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Обрабатывать только изображения, у которых еще нет файлов метаданных |
| `-Recurse` | SwitchParameter | — | — | Named | — | Если указано, обрабатывает изображения в подкаталогах рекурсивно |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная перестройка метаданных, даже если они уже существуют |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return structured objects instead of outputting to console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |

## Examples

### Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

```powershell
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force
```

### Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv

```powershell
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
```

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
