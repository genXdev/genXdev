# Register-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-Face -Identifier <String> -ImagePath <String[]> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | — | 0 | — | Уникальный идентификатор лица (например, имя человека) |
| `-ImagePath` | String[] | ✅ | — | 1 | — | Массив локальных путей к файлам изображений (png, jpg, jpeg или gif) |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | Named | — | Имя пользовательского образа Docker для использования |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |

## Related Links

- [Register-Face on GitHub](https://github.com/genXdev/genXdev)
