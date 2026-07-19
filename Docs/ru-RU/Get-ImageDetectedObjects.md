# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Detects and classifies objects in an uploaded image using DeepStack.

## Description

Эта функция анализирует файл изображения для обнаружения и классификации до 80 различных типов объектов. Она использует локальный API обнаружения объектов DeepStack, работающий на настраиваемом порту, и возвращает классификации объектов с координатами ограничивающих рамок и оценками уверенности. Функция поддерживает ускорение GPU, пользовательские пороги уверенности и управление контейнерами Docker.

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
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

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

Detects objects in the specified image with full parameter names.

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

обнаруживает объекты с использованием позиционного параметра и настроек по умолчанию.

## Related Links

- [Get-ImageDetectedObjects on GitHub](https://github.com/genXdev/genXdev)
