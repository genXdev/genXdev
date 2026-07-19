# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> Обновляет все профили распознавания лиц из файлов изображений в директории faces.

## Description

Эта функция обновляет базу данных распознавания лиц всеми изображениями, найденными в указанной директории лиц. Процесс включает:
1. Проверку работы сервиса распознавания лиц
2. Обработку всех изображений в папке каждого человека, регистрацию всех лиц для этого человека с единым идентификатором (именем папки) в пакетной операции
3. Поддержку логики повторных попыток для неудачных регистраций

Папка каждого человека может содержать несколько изображений, и все изображения будут зарегистрированы под одним идентификатором (именем человека) в одном вызове API, что исключает необходимость суффиксов _1, _2 и т.д.

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

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
