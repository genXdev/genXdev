# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | Локальный путь к первому файлу изображения для сравнения |
| `-ImagePath2` | String | ✅ | — | 1 | — | Локальный путь ко второму файлу изображения для сравнения |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | 7 | — | Имя пользовательского образа Docker для использования |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)
