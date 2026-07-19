# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Удаляет зарегистрированное лицо по его идентификатору из DeepStack.

## Description

Эта функция удаляет лицо из системы распознавания лиц DeepStack, используя его уникальный идентификатор. Она обращается к конечной точке API, чтобы навсегда удалить зарегистрированные данные лица из системы.

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Уникальный идентификатор лица для удаления из системы DeepStack |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 6 | — | Имя пользовательского образа Docker для использования |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |

## Examples

### Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `     -ContainerName "deepstack_face_recognition" -ServicePort 5000

```powershell
Unregister-Face -Identifier "JohnDoe" -NoDockerInitialize $false `
    -ContainerName "deepstack_face_recognition" -ServicePort 5000
```

### rface "JohnDoe"

```powershell
rface "JohnDoe"
```

## Outputs

- `Boolean`

## Related Links

- [Unregister-Face on GitHub](https://github.com/genXdev/genXdev)
