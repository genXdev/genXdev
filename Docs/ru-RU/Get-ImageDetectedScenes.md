# Get-ImageDetectedScenes

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Классифицирует изображение по одной из 365 категорий сцен с помощью DeepStack.

## Description

Эта функция анализирует файл изображения, чтобы классифицировать его по одной из 365
различных категорий сцен. Она использует локальный API распознавания сцен DeepStack, работающий на
настраиваемом порту, и возвращает классификацию сцены с оценкой уверенности.
Функция поддерживает ускорение GPU и управление контейнерами Docker.

## Syntax

```powershell
Get-ImageDetectedScenes -ImagePath <String> [[-ConfidenceThreshold] <Double>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [-Force] [-ImageName <String>] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Локальный путь к файлу изображения для анализа |
| `-ConfidenceThreshold` | Double | — | — | 1 | `0.0` | Минимальный порог уверенности (0.0-1.0). По умолчанию 0.0 |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Имя контейнера Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Название Docker-тома для постоянного хранения |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Порт для сервиса DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Максимальное время ожидания проверки здоровья службы в секундах |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Интервал в секундах между проверками состояния |
| `-ImageName` | String | — | — | Named | — | Имя пользовательского образа Docker для использования |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустить инициализацию Docker (используется, когда уже вызвана родительской функцией) |
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная пересборка Docker контейнера и удаление существующих данных |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Используйте версию с GPU-ускорением (требуется NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показать окно Docker Desktop во время инициализации |

## Examples

### Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg" Classifies the scene in the specified image using default settings.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\Users\YourName\landscape.jpg"
Classifies the scene in the specified image using default settings.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -ConfidenceThreshold 0.6 -UseGPU
Classifies the scene using GPU acceleration and only accepts results with confidence >= 60%.
```

### Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU Classifies the scene using GPU acceleration for faster processing.

```powershell
Get-ImageDetectedScenes -ImagePath "C:\photos\vacation.jpg" -UseGPU
Classifies the scene using GPU acceleration for faster processing.
```

### "C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes Pipeline support for processing multiple images.

```powershell
"C:\Users\YourName\beach.jpg" | Get-ImageDetectedScenes
Pipeline support for processing multiple images.
```

## Related Links

- [Get-ImageDetectedScenes on GitHub](https://github.com/genXdev/genXdev)
