# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Удаляет все зарегистрированные лица из системы распознавания лиц DeepStack.

## Description

Эта функция удаляет все зарегистрированные лица из базы данных распознавания лиц DeepStack, удаляя все файлы лиц из каталога хранилища данных и перезапуская сервис для загрузки пустого реестра лиц. Это разрушительная операция, которую нельзя отменить, и она навсегда удалит все данные зарегистрированных лиц.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Bypass confirmation prompts when removing all registered faces |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker Desktop (используется, когда уже вызвана родительской функцией) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 5 | — | Имя пользовательского образа Docker для использования |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Удаляет все зарегистрированные лица с запросом подтверждения.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Удаляет все зарегистрированные лица без подтверждения.

### unregall -Force

```powershell
unregall -Force
```

Uses alias to remove all faces without confirmation.

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
