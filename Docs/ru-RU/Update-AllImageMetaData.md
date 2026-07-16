# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Массив путей к каталогам для обработки обновлений изображений |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | Named | — | Имя пользовательского образа Docker для использования |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Минимальный порог уверенности (0.0-1.0) для обнаружения объектов |
| `-Language` | String | — | — | Named | — | Язык для генерируемых описаний и ключевых слов |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Имя или частичный путь модели для инициализации 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | URL конечной точки API, по умолчанию http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | API-ключ для выполнения запроса |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Время ожидания запроса в секундах, по умолчанию 24 часа |
| `-FacesDirectory` | String | — | — | Named | — | Каталог, содержащий изображения лиц, сгруппированные по папкам людей. Если не указан, используется настроенное предпочтение каталога лиц. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Не рекурсивно обрабатывать подкаталоги при обработке изображений. |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Переделать все изображения независимо от предыдущей обработки |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru для возврата структурированных объектов вместо вывода в консоль |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Обнаруживает изменения в каталоге лиц и повторно регистрирует лица при необходимости |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)
