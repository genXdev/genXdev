# Invoke-ImageScenesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagescenedetection

## Synopsis

> Обновляет метаданные классификации сцен для файлов изображений в указанном каталоге.

## Description

Эта функция обрабатывает изображения в указанной директории для классификации сцен с помощью искусственного интеллекта. Она создаёт JSON-файлы метаданных, содержащие классификации сцен, оценки уверенности и метки. Функция поддерживает пакетную обработку с настраиваемыми порогами уверенности и может опционально пропускать существующие файлы метаданных или повторять попытки для ранее неудачных классификаций.

## Syntax

```powershell
Invoke-ImageScenesUpdate [[-ImageDirectories] <String[]>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Пути к каталогам, содержащим изображения для обработки |
| `-Recurse` | SwitchParameter | — | — | Named | — | Обработать изображения в указанной директории и всех поддиректориях |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Only process images that don't already have face metadata files |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Will retry previously failed image keyword updates |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | Named | — | Имя пользовательского образа Docker для использования |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Минимальный порог уверенности (0.0-1.0) для обнаружения объектов |
| `-Language` | String | — | — | Named | — | Язык для генерируемых описаний и ключевых слов |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Имя или частичный путь модели для инициализации 🌐 *Supports wildcards* |
| `-ApiKey` | String | — | — | Named | `$null` | API-ключ для выполнения запроса |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Время ожидания запроса в секундах, по умолчанию 24 часа |
| `-FacesDirectory` | String | — | — | Named | — | Каталог, содержащий изображения лиц, сгруппированные по папкам людей. Если не указан, используется настроенное предпочтение каталога лиц. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных для файлов данных предпочтений |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker во время инициализации |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru для возврата структурированных объектов вместо вывода в консоль |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Обнаруживает изменения в каталоге лиц и повторно регистрирует лица при необходимости |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Используйте альтернативные настройки, хранящиеся в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т. д. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Удалить альтернативные настройки, сохраненные в сессии, для AI-предпочтений, таких как язык, коллекции изображений и т.д. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не используйте альтернативные настройки, сохраненные в сессии, для предпочтений ИИ, таких как язык, коллекции изображений и т.д. |

## Examples

### Invoke-ImageScenesUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageScenesUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

Обрабатывает все изображения в C:\Photos и D:\Pictures и подкаталогах для классификации сцен.

### scenerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
scenerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Использует псевдоним для повторной классификации неудачных попыток и обрабатывает только новые изображения в нескольких каталогах.

### Invoke-ImageScenesUpdate -ImageDirectories ".\MyImages" -Force -UseGPU

```powershell
Invoke-ImageScenesUpdate -ImageDirectories ".\MyImages" -Force -UseGPU
```

Принудительная пересборка контейнера и использование ускорения GPU для более быстрой обработки.

### Invoke-ImageScenesUpdate -ImageDirectories "C:\Photos" -ConfidenceThreshold 0.6 -Recurse

```powershell
Invoke-ImageScenesUpdate -ImageDirectories "C:\Photos" -ConfidenceThreshold 0.6 -Recurse
```

Processes all images recursively and only stores scene classifications with confidence >= 60%.

## Related Links

- [Invoke-ImageScenesUpdate on GitHub](https://github.com/genXdev/genXdev)
