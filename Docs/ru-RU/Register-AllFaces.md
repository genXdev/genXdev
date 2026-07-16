# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Каталог, содержащий изображения лиц, сгруппированные по папкам людей. Если не указан, используется настроенное предпочтение каталога лиц. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Максимальное количество повторных попыток для неудачных регистраций |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 7 | — | Имя пользовательского образа Docker для использования |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker Desktop (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная повторная регистрация всех лиц |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Переименование неудачных файлов изображений, которые не удалось обработать из-за отсутствия найденного лица. |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Если указано, используйте только сеанс (не сохраняйте изменения в базу данных настроек). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Если указано, очистите текущие настройки сеанса перед использованием. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Путь к базе данных предпочтений для корневого пути известных лиц. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Если указано, пропускать логику сеанса при получении корневого пути известных лиц. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
