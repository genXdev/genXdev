# Get-ImageDetectedFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Распознает лица на загруженном изображении путем сравнения с известными лицами с помощью DeepStack.

## Description

Эта функция анализирует файл изображения для идентификации лиц, сравнивая их с известными лицами в базе данных. Она использует локальный API распознавания лиц DeepStack, работающий на настраиваемом порту, и возвращает совпадения лиц с оценками уверенности. Функция поддерживает ускорение GPU, пользовательские пороги уверенности и управление контейнерами Docker.

## Syntax

```powershell
Get-ImageDetectedFaces -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Локальный путь к файлу изображения для анализа |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Минимальный порог уверенности (0.0-1.0). По умолчанию 0.5 |
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

## Examples

### Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `                        -ConfidenceThreshold 0.5 `                        -ContainerName "deepstack_face_recognition" `                        -VolumeName "deepstack_face_data" `                        -ServicePort 5000 `                        -HealthCheckTimeout 60 `                        -HealthCheckInterval 3 Recognizes faces in the specified image using full parameter names.

```powershell
Get-ImageDetectedFaces -ImagePath "C:\Users\YourName\test.jpg" `
                       -ConfidenceThreshold 0.5 `
                       -ContainerName "deepstack_face_recognition" `
                       -VolumeName "deepstack_face_data" `
                       -ServicePort 5000 `
                       -HealthCheckTimeout 60 `
                       -HealthCheckInterval 3
Recognizes faces in the specified image using full parameter names.
```

### Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU Recognizes faces using positional parameter and aliases.

```powershell
Get-ImageDetectedFaces "C:\photos\family.jpg" -Force -UseGPU
Recognizes faces using positional parameter and aliases.
```

### "C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces Recognizes faces using pipeline input.

```powershell
"C:\Users\YourName\test.jpg" | Get-ImageDetectedFaces
Recognizes faces using pipeline input.
```

## Related Links

- [Get-ImageDetectedFaces on GitHub](https://github.com/genXdev/genXdev)
